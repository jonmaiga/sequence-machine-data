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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A025500: Number of terms in Zeckendorf representation of 8^n.

The programs for A025500, there is no canonical definition to state claims against.
-/

/-! ## A025500.P10006145449016306065

`A020908(3*n)`
-/

namespace A025500.P10006145449016306065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020908 (3 * n)

end

end A025500.P10006145449016306065

/-! ## A025500.P17621478801061863509

`A020908(A008486(n))%A125169(n)`
-/

namespace A025500.P17621478801061863509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020908 (A008486 n).toNat) (A125169 n)

end

end A025500.P17621478801061863509

/-! ## A025500.P13463937179738222330

`A020908(A008585(n))%A167499(n)`
-/

namespace A025500.P13463937179738222330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020908 (A008585 n).toNat) (A167499 n)

end

end A025500.P13463937179738222330

/-! ## A025500.P10050010832973517083

`or((A048995(n+1)+1)%2, A020908(A008585(n)))`
-/

namespace A025500.P10050010832973517083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A048995 (n + 1) + 1) 2) (A020908 (A008585 n).toNat)

end

end A025500.P10050010832973517083

/-! ## A025500.P9191578320593228122

`or((1-A051953(n+1)+n)%2, A020908(A008585(n)))`
-/

namespace A025500.P9191578320593228122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (1 - A051953 (n + 1) + (n : ℤ)) 2) (A020908 (A008585 n).toNat)

end

end A025500.P9191578320593228122

/-! ## A025500.P5059922483523580203

`A020908(A008585(n))^A097807(n)²^A340647(n)`
-/

namespace A025500.P5059922483523580203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020908 (A008585 n).toNat : ℝ) ^ ((A097807 n ^ 2 : ℚ) ^ (A340647 n : ℤ) : ℝ)

end

end A025500.P5059922483523580203

/-! ## A025500.P6685039642369030720

`A020908(A008585(n))^A062745(A038722(n+1)+n)`
-/

namespace A025500.P6685039642369030720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020908 (A008585 n).toNat : ℚ) ^ (A062745 (A038722 (n + 1) + (n : ℤ)).toNat : ℤ)

end

end A025500.P6685039642369030720

/-!
# A025501: Number of terms in Zeckendorf representation of 9^n.

The programs for A025501, there is no canonical definition to state claims against.
-/

/-! ## A025501.P227172143667934645

`A020910(2*n)`
-/

namespace A025501.P227172143667934645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020910 (2 * n)

end

end A025501.P227172143667934645

/-! ## A025501.P11894117682338545315

`xor(1, xor(1, A020910(n+n)))`
-/

namespace A025501.P11894117682338545315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A020910 (n + n)))

end

end A025501.P11894117682338545315

/-! ## A025501.P14745077202268747808

`A020910(A028310(n)+n)+A000007(n+1)`
-/

namespace A025501.P14745077202268747808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020910 (A028310 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A025501.P14745077202268747808

/-! ## A025501.P1122421991177852175

`A020910(n+n)/A046951(A006530(n+1))`
-/

namespace A025501.P1122421991177852175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020910 (n + n) : ℚ) / (A046951 (A006530 (n + 1)).toNat : ℚ)

end

end A025501.P1122421991177852175

/-! ## A025501.P15271321764162683077

`A020910(n+n)+A002448(A000040(n+1))`
-/

namespace A025501.P15271321764162683077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020910 (n + n) + A002448 (A000040 (n + 1)).toNat

end

end A025501.P15271321764162683077

/-! ## A025501.P17839910727402097412

`A020910(n+n)/A010170(A056809(n+1))`
-/

namespace A025501.P17839910727402097412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020910 (n + n) : ℚ) / (A010170 (A056809 (n + 1)).toNat : ℚ)

end

end A025501.P17839910727402097412

/-!
# A025503: Least k such that the first k terms of the Kolakoski sequence (A000002) contain n more 2's than 1's.

The programs for A025503, there is no canonical definition to state claims against.
-/

/-! ## A025503.P9386675940527372213

`A025507(n)-(1-4/2)%a(n-1)` with `a(0)=3`
-/

namespace A025503.P9386675940527372213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A025507 n - Int.tmod (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (a (n - 1))

end

end A025503.P9386675940527372213

/-! ## A025503.P9583420933164059394

`A025518(n+1)-A132003(A281227(n+1))`
-/

namespace A025503.P9583420933164059394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025518 (n + 1) - A132003 (A281227 (n + 1)).toNat

end

end A025503.P9583420933164059394

/-! ## A025503.P2656261382560999581

`A052410(A025518(n+1)+4)`
-/

namespace A025503.P2656261382560999581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A025518 (n + 1) + 4).toNat

end

end A025503.P2656261382560999581

/-! ## A025503.P15052946959533565282

`(A025518(n+1)+4)%A058534(3*(n+1))`
-/

namespace A025503.P15052946959533565282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025518 (n + 1) + 4) (A058534 (3 * (n + 1)))

end

end A025503.P15052946959533565282

/-! ## A025503.P14402366085410221222

`A025507(n)+A001221(A000961(a(n-1)+1))` with `a(0)=3`
-/

namespace A025503.P14402366085410221222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A025507 n + A001221 (A000961 (a (n - 1) + 1).toNat).toNat

end

end A025503.P14402366085410221222

/-!
# A025505: Index of n-th 2 in A006928.

The programs for A025505, the canonical program `A025505.P1645131615138266658` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025505 has offset 1).

The definition of A025505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025505.P10315010373786890767

`eq[0, A249507(n+3)]+2`
-/

namespace A025505.P10315010373786890767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249507 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A025505.P10315010373786890767

namespace A025505

/-- `eq[0, A249507(n+3)]+2` -/
def P10315010373786890767.Spec : Prop :=
  ∀ n, (P10315010373786890767.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P17043805617166117785

`lt[A249093(n+3), 1]+2`
-/

namespace A025505.P17043805617166117785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A025505.P17043805617166117785

namespace A025505

/-- `lt[A249093(n+3), 1]+2` -/
def P17043805617166117785.Spec : Prop :=
  ∀ n, (P17043805617166117785.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P5146181879319753812

`lt[A249094(n+3), 1]+2`
-/

namespace A025505.P5146181879319753812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A025505.P5146181879319753812

namespace A025505

/-- `lt[A249094(n+3), 1]+2` -/
def P5146181879319753812.Spec : Prop :=
  ∀ n, (P5146181879319753812.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P17448063333669470418

`comp[A022297(n+1)-1]+1`
-/

namespace A025505.P17448063333669470418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A025505.P17448063333669470418

namespace A025505

/-- `comp[A022297(n+1)-1]+1` -/
def P17448063333669470418.Spec : Prop :=
  ∀ n, (P17448063333669470418.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P1645131615138266658

`record[2*A022303(n+1)+n]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025505

/-- `record[2*A022303(n+1)+n]` -/
def P1645131615138266658.Spec : Prop :=
  ∀ n, P1645131615138266658.a n = A025505 (n + 1)

theorem P1645131615138266658.correct : P1645131615138266658.Spec := by
  intro n
  simp only [A025505, Nat.add_sub_cancel]

end A025505

/-! ## A025505.P5505822225180915877

`eq[A135534(2*n+1), A249093(n+2)]+1`
-/

namespace A025505.P5505822225180915877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A025505.P5505822225180915877

namespace A025505

/-- `eq[A135534(2*n+1), A249093(n+2)]+1` -/
def P5505822225180915877.Spec : Prop :=
  ∀ n, (P5505822225180915877.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P14849210157805940174

`A013948(n+2)-1`
-/

namespace A025505.P14849210157805940174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 2) - 1

end

end A025505.P14849210157805940174

namespace A025505

/-- `A013948(n+2)-1` -/
def P14849210157805940174.Spec : Prop :=
  ∀ n, P14849210157805940174.a n = A025505 (n + 1)

end A025505

/-! ## A025505.P11645616360250940485

`A078649(n+2)-(n+2)`
-/

namespace A025505.P11645616360250940485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 2) - (n + 2 : ℤ)

end

end A025505.P11645616360250940485

namespace A025505

/-- `A078649(n+2)-(n+2)` -/
def P11645616360250940485.Spec : Prop :=
  ∀ n, P11645616360250940485.a n = A025505 (n + 1)

end A025505

/-! ## A025505.P8245537863964019692

`record[A078649(A028310(n))-n]`
-/

namespace A025505.P8245537863964019692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (A028310 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025505.P8245537863964019692

namespace A025505

/-- `record[A078649(A028310(n))-n]` -/
def P8245537863964019692.Spec : Prop :=
  ∀ n, P8245537863964019692.a n = A025505 (n + 1)

end A025505

/-! ## A025505.P8055939744771770407

`eq[2, A000002(n+3)]+2`
-/

namespace A025505.P8055939744771770407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A025505.P8055939744771770407

namespace A025505

/-- `eq[2, A000002(n+3)]+2` -/
def P8055939744771770407.Spec : Prop :=
  ∀ n, (P8055939744771770407.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P15702771297197662181

`filter[n+2, A157686(#)]`
-/

namespace A025505.P15702771297197662181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A157686 (f1 j) = 1) n)

end

end A025505.P15702771297197662181

namespace A025505

/-- `filter[n+2, A157686(#)]` -/
def P15702771297197662181.Spec : Prop :=
  ∀ n, (P15702771297197662181.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P13230565361917051953

`eq[1, A049710(n+1)]+1`
-/

namespace A025505.P13230565361917051953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A025505.P13230565361917051953

namespace A025505

/-- `eq[1, A049710(n+1)]+1` -/
def P13230565361917051953.Spec : Prop :=
  ∀ n, (P13230565361917051953.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P15480369123928252978

`lt[1, A006928(n+1)]+1`
-/

namespace A025505.P15480369123928252978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A025505.P15480369123928252978

namespace A025505

/-- `lt[1, A006928(n+1)]+1` -/
def P15480369123928252978.Spec : Prop :=
  ∀ n, (P15480369123928252978.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P10133128864760641533

`eq[1, A088569(n+2)]+2`
-/

namespace A025505.P10133128864760641533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A025505.P10133128864760641533

namespace A025505

/-- `eq[1, A088569(n+2)]+2` -/
def P10133128864760641533.Spec : Prop :=
  ∀ n, (P10133128864760641533.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P14769720460739789002

`eq[1, A157686(n+2)]+2`
-/

namespace A025505.P14769720460739789002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A025505.P14769720460739789002

namespace A025505

/-- `eq[1, A157686(n+2)]+2` -/
def P14769720460739789002.Spec : Prop :=
  ∀ n, (P14769720460739789002.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P15841834123224200131

`eq[2, A006928(n+2)]+2`
-/

namespace A025505.P15841834123224200131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A025505.P15841834123224200131

namespace A025505

/-- `eq[2, A006928(n+2)]+2` -/
def P15841834123224200131.Spec : Prop :=
  ∀ n, (P15841834123224200131.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P2124980386371041268

`lt[1, A078880(n+2)]+2`
-/

namespace A025505.P2124980386371041268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A025505.P2124980386371041268

namespace A025505

/-- `lt[1, A078880(n+2)]+2` -/
def P2124980386371041268.Spec : Prop :=
  ∀ n, (P2124980386371041268.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P17351744995453177230

`eq[1, A049710(A028310(n))]`
-/

namespace A025505.P17351744995453177230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025505.P17351744995453177230

namespace A025505

/-- `eq[1, A049710(A028310(n))]` -/
def P17351744995453177230.Spec : Prop :=
  ∀ n, (P17351744995453177230.a n : ℤ) = A025505 (n + 1)

end A025505

/-! ## A025505.P16661840912031810218

`A023443(A013948(n+2))`
-/

namespace A025505.P16661840912031810218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A013948 (n + 2)).toNat

end

end A025505.P16661840912031810218

namespace A025505

/-- `A023443(A013948(n+2))` -/
def P16661840912031810218.Spec : Prop :=
  ∀ n, P16661840912031810218.a n = A025505 (n + 1)

end A025505

/-!
# A025506: Least k such that first k terms of A006928 contain n more 1's than 2's.

The programs for A025506, there is no canonical definition to state claims against.
-/

/-! ## A025506.P2118046066662657664

`A264569(∑[(4-2/n)*a(n-1)])` with `a(0)=5, a(1)=1`
-/

namespace A025506.P2118046066662657664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A025506.P2118046066662657664

/-!
# A025507: Least k such that the first k terms of A006928 contain n more 2's than 1's.

The programs for A025507, there is no canonical definition to state claims against.
-/

/-! ## A025507.P17300684960382186556

`A025503(n+2)-1`
-/

namespace A025507.P17300684960382186556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025503 (n + 2) - 1

end

end A025507.P17300684960382186556

/-! ## A025507.P4966800355435301494

`A025518(n+2)+3`
-/

namespace A025507.P4966800355435301494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025518 (n + 2) + 3

end

end A025507.P4966800355435301494

/-! ## A025507.P1660156808873476612

`A057428(n+1)+A025503(n+2)`
-/

namespace A025507.P1660156808873476612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A025503 (n + 2)

end

end A025507.P1660156808873476612

/-! ## A025507.P5493428592796454833

`A153881(n+2)+A025503(n+2)`
-/

namespace A025507.P5493428592796454833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A025503 (n + 2)

end

end A025507.P5493428592796454833

/-! ## A025507.P816617222329736690

`A033999(2*n+1)+A025503(n+2)`
-/

namespace A025507.P816617222329736690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A025503 (n + 2)

end

end A025507.P816617222329736690

/-! ## A025507.P7501525872876026699

`A165326(2*(n+1))+A025503(n+2)`
-/

namespace A025507.P7501525872876026699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A025503 (n + 2)

end

end A025507.P7501525872876026699

/-! ## A025507.P63007267135470414

`A110514(A133707(n+1))+A025503(n+2)`
-/

namespace A025507.P63007267135470414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A133707 (n + 1)).toNat + A025503 (n + 2)

end

end A025507.P63007267135470414

/-! ## A025507.P16000617401378209087

`A105812(2*A088766(n+1))+A025503(n+2)`
-/

namespace A025507.P16000617401378209087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * A088766 (n + 1)).toNat + A025503 (n + 2)

end

end A025507.P16000617401378209087

/-! ## A025507.P14660814824918297623

`A335578(A007318(∑[n]))+A025503(n+2)`
-/

namespace A025507.P14660814824918297623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335578 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A025503 (n + 2)

end

end A025507.P14660814824918297623

/-! ## A025507.P7032993089906354816

`record[A025503(A344888(n))-1]`
-/

namespace A025507.P7032993089906354816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025503 (A344888 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025507.P7032993089906354816

/-!
# A025510: Least k>1 such that complement of first n terms of A006928 repeats beginning at k-th term.

The programs for A025510, there is no canonical definition to state claims against.
-/

/-! ## A025510.P4149634723713482704

`A200997(∑[char[n!]]!²)`
-/

namespace A025510.P4149634723713482704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A025510.P4149634723713482704

/-! ## A025510.P8086826108015135202

`p?[A007504(∑[char[n!]]!)]`
-/

namespace A025510.P8086826108015135202
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025510.P8086826108015135202

/-! ## A025510.P1903776965827497173

`p?[A275131(A133233(n))]`
-/

namespace A025510.P1903776965827497173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275131 (A133233 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025510.P1903776965827497173

/-! ## A025510.P17306291932574664677

`A091226(A000215(∑[char[n!]]))`
-/

namespace A025510.P17306291932574664677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A000215 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A025510.P17306291932574664677

/-! ## A025510.P11570382780734010155

`A358404(A358397(∑[char[n!]]))`
-/

namespace A025510.P11570382780734010155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358404 (A358397 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A025510.P11570382780734010155

/-!
# A025512: Index of n-th 2 in A022300.

The programs for A025512, there is no canonical definition to state claims against.
-/

/-! ## A025512.P266298915300731896

`lt[1, A022300(n+1)]+1`
-/

namespace A025512.P266298915300731896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A025512.P266298915300731896

/-! ## A025512.P3939715128267547914

`eq[2, A008619(a(A022300(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A025512.P3939715128267547914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  A008619 (f2 (A022300 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025512.P3939715128267547914

/-! ## A025512.P10212052888972318782

`eq[2, A001462(a(A022300(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A025512.P10212052888972318782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A001462 (f2 (A022300 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025512.P10212052888972318782

/-! ## A025512.P5519765758476140089

`eq[2, A005041(a(A022300(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A025512.P5519765758476140089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A005041 (f2 (A022300 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025512.P5519765758476140089

/-! ## A025512.P5782245771104001068

`lt[1, A022300(A028310(n))]`
-/

namespace A025512.P5782245771104001068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025512.P5782245771104001068

/-! ## A025512.P11773882707198996008

`A065475(lt[1, A022300(n+1)])`
-/

namespace A025512.P11773882707198996008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A025512.P11773882707198996008

/-! ## A025512.P9665398964340680843

`A065475(eq[2, A022300(n+1)])`
-/

namespace A025512.P9665398964340680843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025512.P9665398964340680843

/-! ## A025512.P3114785696174367910

`eq[2, A022300(A233583(n+1))]`
-/

namespace A025512.P3114785696174367910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025512.P3114785696174367910

/-!
# A025513: Exactly half of first a(n) terms of A022300 are 1's (not known to be infinite).

The programs for A025513, there is no canonical definition to state claims against.
-/

/-! ## A025513.P615382278349795287

`2*A025514(n+1)`
-/

namespace A025513.P615382278349795287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025514 (n + 1)

end

end A025513.P615382278349795287

/-! ## A025513.P13412213817895116753

`A025514(A000027(n+1))+A025514(n+1)`
-/

namespace A025513.P13412213817895116753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025514 (A000027 (n + 1)).toNat + A025514 (n + 1)

end

end A025513.P13412213817895116753

/-! ## A025513.P16757922496525392938

`A025514(n+1)+A025514(A023443(n+2))`
-/

namespace A025513.P16757922496525392938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025514 (n + 1) + A025514 (A023443 (n + 2)).toNat

end

end A025513.P16757922496525392938

/-! ## A025513.P5840541606842791827

`A004277(A025514(n+1))`
-/

namespace A025513.P5840541606842791827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025514 (n + 1)).toNat

end

end A025513.P5840541606842791827

/-! ## A025513.P5210598650288740473

`A004275(A025514(n+1)+1)`
-/

namespace A025513.P5210598650288740473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A025514 (n + 1) + 1).toNat

end

end A025513.P5210598650288740473

/-! ## A025513.P18236466735275697302

`A103517(A025514(n+1)-1)`
-/

namespace A025513.P18236466735275697302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A025514 (n + 1) - 1).toNat

end

end A025513.P18236466735275697302

/-! ## A025513.P3394059897564129902

`A005408(A025514(n+1)-1)+1`
-/

namespace A025513.P3394059897564129902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A025514 (n + 1) - 1).toNat + 1

end

end A025513.P3394059897564129902

/-! ## A025513.P1600368703638437530

`A267872(A025514(n+1)-1)+1`
-/

namespace A025513.P1600368703638437530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A025514 (n + 1) - 1).toNat + 1

end

end A025513.P1600368703638437530

/-! ## A025513.P4205246897690181003

`A005843(A025514(n+1)+1)-2`
-/

namespace A025513.P4205246897690181003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A025514 (n + 1) + 1).toNat - 2

end

end A025513.P4205246897690181003

/-! ## A025513.P10219120034661460750

`A331171(A025514(n+1)+A025514(n+1))`
-/

namespace A025513.P10219120034661460750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331171 (A025514 (n + 1) + A025514 (n + 1)).toNat

end

end A025513.P10219120034661460750

/-! ## A025513.P9678739059859316241

`A005408(A025514(n+1))+A008683(A151800(n))`
-/

namespace A025513.P9678739059859316241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A025514 (n + 1)).toNat + A008683 (A151800 n).toNat

end

end A025513.P9678739059859316241

/-!
# A025514: Sequence A025513 divided by 2.

The programs for A025514, there is no canonical definition to state claims against.
-/

/-! ## A025514.P15731947007574846830

`A025513(n+1)/2`
-/

namespace A025514.P15731947007574846830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025513 (n + 1) : ℚ) / 2

end

end A025514.P15731947007574846830

/-! ## A025514.P14423145962001383361

`A001281(A025513(n+1))`
-/

namespace A025514.P14423145962001383361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A025513 (n + 1)).toNat

end

end A025514.P14423145962001383361

/-! ## A025514.P11673624622921384967

`A004524(A025513(n+1)+1)`
-/

namespace A025514.P11673624622921384967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A025513 (n + 1) + 1).toNat

end

end A025514.P11673624622921384967

/-! ## A025514.P1215341774354100980

`A004526(A025513(n+1)+1)`
-/

namespace A025514.P1215341774354100980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A025513 (n + 1) + 1).toNat

end

end A025514.P1215341774354100980

/-! ## A025514.P2305312621301134583

`A028242(A025513(n+1)+1)`
-/

namespace A025514.P2305312621301134583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A025513 (n + 1) + 1).toNat

end

end A025514.P2305312621301134583

/-! ## A025514.P1744431719513780882

`A001057(A025513(n+1)-1)`
-/

namespace A025514.P1744431719513780882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A025513 (n + 1) - 1).toNat

end

end A025514.P1744431719513780882

/-! ## A025514.P11703358664927454183

`A003602(A025513(n+1)-1)`
-/

namespace A025514.P11703358664927454183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A025513 (n + 1) - 1).toNat

end

end A025514.P11703358664927454183

/-! ## A025514.P4220362087010692024

`A008619(A025513(n+1)-1)`
-/

namespace A025514.P4220362087010692024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025513 (n + 1) - 1).toNat

end

end A025514.P4220362087010692024

/-!
# A025516: Index of n-th 2 in A022303.

The programs for A025516, the canonical program `A025516.P3323921667527838167` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025516 has offset 1).

The definition of A025516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025516.P8846559248310118752

`eq[0, A249093(n+4)]`
-/

namespace A025516.P8846559248310118752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025516.P8846559248310118752

namespace A025516

/-- `eq[0, A249093(n+4)]` -/
def P8846559248310118752.Spec : Prop :=
  ∀ n, (P8846559248310118752.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P13586603667763355640

`eq[0, A249094(n+4)]`
-/

namespace A025516.P13586603667763355640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025516.P13586603667763355640

namespace A025516

/-- `eq[0, A249094(n+4)]` -/
def P13586603667763355640.Spec : Prop :=
  ∀ n, (P13586603667763355640.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P15814318974813134126

`comp[A022304(n)-1]+1`
-/

namespace A025516.P15814318974813134126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022304 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A025516.P15814318974813134126

namespace A025516

/-- `comp[A022304(n)-1]+1` -/
def P15814318974813134126.Spec : Prop :=
  ∀ n, (P15814318974813134126.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P13009080812254068605

`comp[A022297(n+1)-3]`
-/

namespace A025516.P13009080812254068605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A025516.P13009080812254068605

namespace A025516

/-- `comp[A022297(n+1)-3]` -/
def P13009080812254068605.Spec : Prop :=
  ∀ n, (P13009080812254068605.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P88397413805472578

`comp[A013947(n+1)-4]`
-/

namespace A025516.P88397413805472578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A025516.P88397413805472578

namespace A025516

/-- `comp[A013947(n+1)-4]` -/
def P88397413805472578.Spec : Prop :=
  ∀ n, (P88397413805472578.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P3323921667527838167

`lt[1, A022303(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025516

/-- `lt[1, A022303(n+1)]+1` -/
def P3323921667527838167.Spec : Prop :=
  ∀ n, (P3323921667527838167.a n : ℤ) = A025516 (n + 1)

theorem P3323921667527838167.correct : P3323921667527838167.Spec := by
  intro n
  simp only [A025516, Nat.add_sub_cancel]

end A025516

/-! ## A025516.P15604233537862102828

`eq[A022303(n+1), A071187(3*n+5)]+1`
-/

namespace A025516.P15604233537862102828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A025516.P15604233537862102828

namespace A025516

/-- `eq[A022303(n+1), A071187(3*n+5)]+1` -/
def P15604233537862102828.Spec : Prop :=
  ∀ n, (P15604233537862102828.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P13287243577998610799

`A025505(n+2)-3`
-/

namespace A025516.P13287243577998610799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025505 (n + 2) - 3

end

end A025516.P13287243577998610799

namespace A025516

/-- `A025505(n+2)-3` -/
def P13287243577998610799.Spec : Prop :=
  ∀ n, P13287243577998610799.a n = A025516 (n + 1)

end A025516

/-! ## A025516.P16104557137856977491

`A013948(n+3)-4`
-/

namespace A025516.P16104557137856977491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 3) - 4

end

end A025516.P16104557137856977491

namespace A025516

/-- `A013948(n+3)-4` -/
def P16104557137856977491.Spec : Prop :=
  ∀ n, P16104557137856977491.a n = A025516 (n + 1)

end A025516

/-! ## A025516.P10247574019144953140

`A078649(n+3)-(n+6)`
-/

namespace A025516.P10247574019144953140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 3) - (n + 6 : ℤ)

end

end A025516.P10247574019144953140

namespace A025516

/-- `A078649(n+3)-(n+6)` -/
def P10247574019144953140.Spec : Prop :=
  ∀ n, P10247574019144953140.a n = A025516 (n + 1)

end A025516

/-! ## A025516.P300854263633312605

`lt[1, A000002(n+4)]`
-/

namespace A025516.P300854263633312605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025516.P300854263633312605

namespace A025516

/-- `lt[1, A000002(n+4)]` -/
def P300854263633312605.Spec : Prop :=
  ∀ n, (P300854263633312605.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P3481757796642053232

`record[lcm(2-n, log2(A000002(n+2)))]`
-/

namespace A025516.P3481757796642053232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (n : ℤ)) (SequenceMachineLib.roundAway (Real.logb 2 (A000002 (n + 2) : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025516.P3481757796642053232

namespace A025516

/-- `record[lcm(2-n, log2(A000002(n+2)))]` -/
def P3481757796642053232.Spec : Prop :=
  ∀ n, (P3481757796642053232.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P4346548909879933634

`eq[1, A049710(n+3)]`
-/

namespace A025516.P4346548909879933634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025516.P4346548909879933634

namespace A025516

/-- `eq[1, A049710(n+3)]` -/
def P4346548909879933634.Spec : Prop :=
  ∀ n, (P4346548909879933634.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P17755104326569628589

`eq[1, A088569(n+3)]`
-/

namespace A025516.P17755104326569628589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025516.P17755104326569628589

namespace A025516

/-- `eq[1, A088569(n+3)]` -/
def P17755104326569628589.Spec : Prop :=
  ∀ n, (P17755104326569628589.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P11644425559212037681

`lt[0, A157686(n+3)]`
-/

namespace A025516.P11644425559212037681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025516.P11644425559212037681

namespace A025516

/-- `lt[0, A157686(n+3)]` -/
def P11644425559212037681.Spec : Prop :=
  ∀ n, (P11644425559212037681.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P124004898165716937

`eq[2, A006928(n+3)]`
-/

namespace A025516.P124004898165716937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025516.P124004898165716937

namespace A025516

/-- `eq[2, A006928(n+3)]` -/
def P124004898165716937.Spec : Prop :=
  ∀ n, (P124004898165716937.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P2804904702522614541

`eq[2, A078880(n+3)]`
-/

namespace A025516.P2804904702522614541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025516.P2804904702522614541

namespace A025516

/-- `eq[2, A078880(n+3)]` -/
def P2804904702522614541.Spec : Prop :=
  ∀ n, (P2804904702522614541.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P1364831711753352188

`eq[0, ∑[A054354(n+3)]]`
-/

namespace A025516.P1364831711753352188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025516.P1364831711753352188

namespace A025516

/-- `eq[0, ∑[A054354(n+3)]]` -/
def P1364831711753352188.Spec : Prop :=
  ∀ n, (P1364831711753352188.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P17302185839927115001

`lt[Δ[A249093(n+3)], 1]`
-/

namespace A025516.P17302185839927115001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A025516.P17302185839927115001

namespace A025516

/-- `lt[Δ[A249093(n+3)], 1]` -/
def P17302185839927115001.Spec : Prop :=
  ∀ n, (P17302185839927115001.a n : ℤ) = A025516 (n + 1)

end A025516

/-! ## A025516.P9570618386791799344

`eq[n%2, A074290(n+4)]`
-/

namespace A025516.P9570618386791799344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025516.P9570618386791799344

namespace A025516

/-- `eq[n%2, A074290(n+4)]` -/
def P9570618386791799344.Spec : Prop :=
  ∀ n, (P9570618386791799344.a n : ℤ) = A025516 (n + 1)

end A025516

/-!
# A025517: Least k such that first k terms of A022303 contain n more 1's than 2's.

The programs for A025517, there is no canonical definition to state claims against.
-/

/-! ## A025517.P12828233327581625119

`A025506(n+2)-3`
-/

namespace A025517.P12828233327581625119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025506 (n + 2) - 3

end

end A025517.P12828233327581625119

/-! ## A025517.P4290519954838383087

`A022327(n+1)+4*A057428(n)`
-/

namespace A025517.P4290519954838383087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022327 (n + 1) + 4 * A057428 n

end

end A025517.P4290519954838383087

/-! ## A025517.P1235554905436828200

`A022327(n+1)-4%A020705(n)`
-/

namespace A025517.P1235554905436828200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022327 (n + 1) - Int.tmod 4 (A020705 n)

end

end A025517.P1235554905436828200

/-! ## A025517.P12500806713046502467

`A022327(n+1)-A107286(4*n)²`
-/

namespace A025517.P12500806713046502467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022327 (n + 1) - A107286 (4 * n) ^ 2

end

end A025517.P12500806713046502467

/-! ## A025517.P13854410865840797608

`A022327(n+1)-(2%A000466(n))²`
-/

namespace A025517.P13854410865840797608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022327 (n + 1) - Int.tmod 2 (A000466 n) ^ 2

end

end A025517.P13854410865840797608

/-! ## A025517.P9074409560208706971

`A022327(n+1)-A022309(A121857(n)-A121856(n))`
-/

namespace A025517.P9074409560208706971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022327 (n + 1) - A022309 (A121857 n - A121856 n).toNat

end

end A025517.P9074409560208706971

/-! ## A025517.P10940383350677629166

`A022327(n+1)-A002262(A055999(n)+10)`
-/

namespace A025517.P10940383350677629166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022327 (n + 1) - A002262 (A055999 n + 10).toNat

end

end A025517.P10940383350677629166

/-!
# A025518: Least k such that first k terms of A022303 contain n more 2's than 1's.

The programs for A025518, there is no canonical definition to state claims against.
-/

/-! ## A025518.P7549436317326671864

`abs(6-A025503(n+1))+2`
-/

namespace A025518.P7549436317326671864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A025503 (n + 1)| + 2

end

end A025518.P7549436317326671864

/-! ## A025518.P6316350157924982495

`A025507(n)-(1-4/2)%a(n-1)-4` with `a(0)=5`
-/

namespace A025518.P6316350157924982495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A025507 n - Int.tmod (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (a (n - 1)) - 4

end

end A025518.P6316350157924982495

/-! ## A025518.P15216616435722396555

`A132003(A281227(n+1))+A025503(n+1)`
-/

namespace A025518.P15216616435722396555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132003 (A281227 (n + 1)).toNat + A025503 (n + 1)

end

end A025518.P15216616435722396555

/-! ## A025518.P5808199956991967026

`A025507(n)+A001221(A000961(a(n-1)+1))-4` with `a(0)=5`
-/

namespace A025518.P5808199956991967026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A025507 n + A001221 (A000961 (a (n - 1) + 1).toNat).toNat - 4

end

end A025518.P5808199956991967026

/-!
# A025521: Least k>1 such that complement of first n terms of A022303 repeats beginning at k-th term.

The programs for A025521, there is no canonical definition to state claims against.
-/

/-! ## A025521.P10270199606264356043

`A092875(A007306(A053187(n))²)`
-/

namespace A025521.P10270199606264356043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092875 (A007306 (A053187 n).toNat ^ 2).toNat

end

end A025521.P10270199606264356043

/-! ## A025521.P16022023224995185308

`A038722(p?[A321118(A164884(n))])`
-/

namespace A025521.P16022023224995185308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321118 (A164884 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A025521.P16022023224995185308

/-! ## A025521.P8984283421510295112

`A336659(A071577(n+1)+2)`
-/

namespace A025521.P8984283421510295112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336659 (A071577 (n + 1) + 2).toNat

end

end A025521.P8984283421510295112

/-! ## A025521.P11195597236098555689

`A224609(3^A092323(n+1))`
-/

namespace A025521.P11195597236098555689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224609 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A092323 (n + 1) : ℤ))).toNat

end

end A025521.P11195597236098555689

/-! ## A025521.P9099364893390535333

`A112798(A220897(floor(log2(n+1))))`
-/

namespace A025521.P9099364893390535333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A220897 (Nat.log 2 (n + 1))).toNat

end

end A025521.P9099364893390535333

/-!
# A025523: a(n) = 1 + Sum_{ k < n and k | n} a(k).

The programs for A025523, there is no canonical definition to state claims against.
-/

/-! ## A025523.P3008616759963206677

`∑[A002033(n)]`
-/

namespace A025523.P3008616759963206677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025523.P3008616759963206677

/-! ## A025523.P5678990822330251432

`A173382(n+1)`
-/

namespace A025523.P5678990822330251432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 (n + 1)

end

end A025523.P5678990822330251432

/-! ## A025523.P1465128724575578500

`∑[A074206(n+1)]`
-/

namespace A025523.P1465128724575578500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025523.P1465128724575578500

/-! ## A025523.P18258988593798403533

`∑[abs(Δ[A173382(n)])]`
-/

namespace A025523.P18258988593798403533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025523.P18258988593798403533

/-! ## A025523.P16407445578434667675

`record[A173382(abs(1-n))]`
-/

namespace A025523.P16407445578434667675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025523.P16407445578434667675

/-! ## A025523.P2019425681845040057

`round(A329110(n+1)/2)`
-/

namespace A025523.P2019425681845040057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A329110 (n + 1) : ℚ) / 2)

end

end A025523.P2019425681845040057

/-! ## A025523.P13514830590146132374

`(∑[A067824(n+1)]+1)/2`
-/

namespace A025523.P13514830590146132374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A025523.P13514830590146132374

/-! ## A025523.P1076512335605760147

`∑[A050369(n+1)/(n+1)]`
-/

namespace A025523.P1076512335605760147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050369 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025523.P1076512335605760147

/-! ## A025523.P16800206239027414000

`A174788(n+1)+A174787(n+1)`
-/

namespace A025523.P16800206239027414000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174788 (n + 1) + A174787 (n + 1)

end

end A025523.P16800206239027414000

/-! ## A025523.P3879169968677018974

`∑[A174726(n+1)+A174725(n+1)]`
-/

namespace A025523.P3879169968677018974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (n + 1) + A174725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025523.P3879169968677018974

/-! ## A025523.P6097131306791627802

`∑[A104725(n+1)-A160086(n+1)]`
-/

namespace A025523.P6097131306791627802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (n + 1) - A160086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025523.P6097131306791627802

/-! ## A025523.P4344843221068152110

`A002321(n+1)+2*A174788(n+1)`
-/

namespace A025523.P4344843221068152110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + 2 * A174788 (n + 1)

end

end A025523.P4344843221068152110

/-! ## A025523.P14723652587680870295

`2*A174787(n+1)-A002321(n+1)`
-/

namespace A025523.P14723652587680870295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174787 (n + 1) - A002321 (n + 1)

end

end A025523.P14723652587680870295

/-! ## A025523.P16065756679694741837

`∑[2*A174725(n+1)-A008683(n+1)]`
-/

namespace A025523.P16065756679694741837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174725 (n + 1) - A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025523.P16065756679694741837

/-! ## A025523.P2896575298614938337

`∑[A078898(A067824(n+1))]`
-/

namespace A025523.P2896575298614938337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A067824 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025523.P2896575298614938337

/-! ## A025523.P14775339348951823922

`∑[A004526(A067824(n+1)+1)]`
-/

namespace A025523.P14775339348951823922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A067824 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025523.P14775339348951823922

/-! ## A025523.P10375873750323643779

`∑[A160413(lcm(2, A067824(n+1)))]`
-/

namespace A025523.P10375873750323643779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (Int.lcm 2 (A067824 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025523.P10375873750323643779

/-! ## A025523.P4674072404364133237

`∩[A173382(n), A337843(n)]`
-/

namespace A025523.P4674072404364133237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025523.P4674072404364133237

/-! ## A025523.P17335412384608753713

`A000463(A329110(n+1))`
-/

namespace A025523.P17335412384608753713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A329110 (n + 1)).toNat

end

end A025523.P17335412384608753713

/-! ## A025523.P11238770274758766104

`A160413(∑[A067824(n+1)]+1)`
-/

namespace A025523.P11238770274758766104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A025523.P11238770274758766104

/-!
# A025524: Number of positive integers that are not the sum of distinct n-th-order polygonal numbers.

The programs for A025524, there is no canonical definition to state claims against.
-/

/-! ## A025524.P7223070003170441525

`A347693(A270413(n+1)+10*n)`
-/

namespace A025524.P7223070003170441525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347693 (A270413 (n + 1) + (10 * n : ℤ)).toNat

end

end A025524.P7223070003170441525

/-!
# A025527: a(n) = n!/lcm{1,2,...,n} = (n-1)!/lcm{C(n-1,0), C(n-1,1), ..., C(n-1,n-1)}.

The programs for A025527, the canonical program `A025527.P11877014776041909703` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025527 has offset 1).

The definition of A025527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025527.P11877014776041909703

`A000142(n+1)/A003418(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025527

/-- `A000142(n+1)/A003418(n+1)` -/
def P11877014776041909703.Spec : Prop :=
  ∀ n, P11877014776041909703.a n = (A025527 (n + 1) : ℚ)

end A025527

/-! ## A025527.P2095391561198470979

`A000254(n+1)/A025529(n+1)`
-/

namespace A025527.P2095391561198470979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (n + 1) : ℚ) / (A025529 (n + 1) : ℚ)

end

end A025527.P2095391561198470979

namespace A025527

/-- `A000254(n+1)/A025529(n+1)` -/
def P2095391561198470979.Spec : Prop :=
  ∀ n, P2095391561198470979.a n = (A025527 (n + 1) : ℚ)

end A025527

/-! ## A025527.P12459254685807977141

`∏[gcd(n+1, ∏{p}[n+1, (n+1)/#])]`
-/

namespace A025527.P12459254685807977141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025527.P12459254685807977141

namespace A025527

/-- `∏[gcd(n+1, ∏{p}[n+1, (n+1)/#])]` -/
def P12459254685807977141.Spec : Prop :=
  ∀ n, (P12459254685807977141.a n : ℤ) = A025527 (n + 1)

end A025527

/-! ## A025527.P1055309136731550695

`∏[(n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A025527.P1055309136731550695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025527.P1055309136731550695

namespace A025527

/-- `∏[(n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#])]` -/
def P1055309136731550695.Spec : Prop :=
  ∀ n, P1055309136731550695.a n = (A025527 (n + 1) : ℚ)

end A025527

/-! ## A025527.P17591338214429457000

`∏[A048671(n+1)]`
-/

namespace A025527.P17591338214429457000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025527.P17591338214429457000

namespace A025527

/-- `∏[A048671(n+1)]` -/
def P17591338214429457000.Spec : Prop :=
  ∀ n, P17591338214429457000.a n = A025527 (n + 1)

end A025527

/-! ## A025527.P1601044252567465343

`∏[gcd(n+1, A003418(n))]`
-/

namespace A025527.P1601044252567465343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003418 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025527.P1601044252567465343

namespace A025527

/-- `∏[gcd(n+1, A003418(n))]` -/
def P1601044252567465343.Spec : Prop :=
  ∀ n, (P1601044252567465343.a n : ℤ) = A025527 (n + 1)

end A025527

/-! ## A025527.P13857187458205613967

`∏[(n+1)/A014963(n+1)]`
-/

namespace A025527.P13857187458205613967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014963 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025527.P13857187458205613967

namespace A025527

/-- `∏[(n+1)/A014963(n+1)]` -/
def P13857187458205613967.Spec : Prop :=
  ∀ n, P13857187458205613967.a n = (A025527 (n + 1) : ℚ)

end A025527

/-! ## A025527.P4222499709565530284

`∏[gcd(abs(1-n)+2, A263673(n))]`
-/

namespace A025527.P4222499709565530284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|1 - (n : ℤ)| + 2) (A263673 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025527.P4222499709565530284

namespace A025527

/-- `∏[gcd(abs(1-n)+2, A263673(n))]` -/
def P4222499709565530284.Spec : Prop :=
  ∀ n, (P4222499709565530284.a n : ℤ) = A025527 (n + 1)

end A025527

/-! ## A025527.P15488092104773308303

`(n+1)/A014963(∑[2*n+1])*a(n-1)` with `a(0)=1`
-/

namespace A025527.P15488092104773308303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) * a (n - 1)

end

end A025527.P15488092104773308303

namespace A025527

/-- `(n+1)/A014963(∑[2*n+1])*a(n-1)` -/
def P15488092104773308303.Spec : Prop :=
  ∀ n, P15488092104773308303.a n = (A025527 (n + 1) : ℚ)

end A025527

/-! ## A025527.P5865985139577555331

`A056612(n+1)/A110566(n+1)`
-/

namespace A025527.P5865985139577555331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056612 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A025527.P5865985139577555331

namespace A025527

/-- `A056612(n+1)/A110566(n+1)` -/
def P5865985139577555331.Spec : Prop :=
  ∀ n, P5865985139577555331.a n = (A025527 (n + 1) : ℚ)

end A025527

/-!
# A025528: Number of prime powers <= n with exponents > 0 (A246655).

The programs for A025528, the canonical program `A025528.P16007803137134117632` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025528 has offset 1).

The definition of A025528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025528.P6674477304636267486

`A069637(n+1)+A000720(n+1)`
-/

namespace A025528.P6674477304636267486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069637 (n + 1) + A000720 (n + 1)

end

end A025528.P6674477304636267486

namespace A025528

/-- `A069637(n+1)+A000720(n+1)` -/
def P6674477304636267486.Spec : Prop :=
  ∀ n, P6674477304636267486.a n = A025528 (n + 1)

theorem P6674477304636267486.correct : P6674477304636267486.Spec := by
  intro n
  simp only [A025528, Nat.add_sub_cancel, A025528.P6674477304636267486.a, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A069637, A069637.P6505014191313825967.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A025528

/-! ## A025528.P16007803137134117632

`∑[A069513(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025528

/-- `∑[A069513(n+1)]` -/
def P16007803137134117632.Spec : Prop :=
  ∀ n, P16007803137134117632.a n = A025528 (n + 1)

theorem P16007803137134117632.correct : P16007803137134117632.Spec := by
  intro n
  simp only [A025528, Nat.add_sub_cancel]

end A025528

/-! ## A025528.P6308717692755645044

`A065515(n+1)-1`
-/

namespace A025528.P6308717692755645044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - 1

end

end A025528.P6308717692755645044

namespace A025528

/-- `A065515(n+1)-1` -/
def P6308717692755645044.Spec : Prop :=
  ∀ n, P6308717692755645044.a n = A025528 (n + 1)

theorem P6308717692755645044.correct : P6308717692755645044.Spec := by
  intro n
  simp only [A025528, Nat.add_sub_cancel, A025528.P6308717692755645044.a, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A065515, A065515.P15129427044826637405.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025528

/-! ## A025528.P8259960918921386239

`n-A085970(n+1)`
-/

namespace A025528.P8259960918921386239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A085970 (n + 1)

end

end A025528.P8259960918921386239

namespace A025528

/-- `n-A085970(n+1)` -/
def P8259960918921386239.Spec : Prop :=
  ∀ n, P8259960918921386239.a n = A025528 (n + 1)

end A025528

/-! ## A025528.P2520625126327122979

`∑[char[A181062(n+2)]]`
-/

namespace A025528.P2520625126327122979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P2520625126327122979

namespace A025528

/-- `∑[char[A181062(n+2)]]` -/
def P2520625126327122979.Spec : Prop :=
  ∀ n, (P2520625126327122979.a n : ℤ) = A025528 (n + 1)

end A025528

/-! ## A025528.P4922930462562048575

`∑[A010055(n+1)]-1`
-/

namespace A025528.P4922930462562048575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025528.P4922930462562048575

namespace A025528

/-- `∑[A010055(n+1)]-1` -/
def P4922930462562048575.Spec : Prop :=
  ∀ n, P4922930462562048575.a n = A025528 (n + 1)

end A025528

/-! ## A025528.P6106935850017746564

`∑[A353678(4*(n+1))]`
-/

namespace A025528.P6106935850017746564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353678 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P6106935850017746564

namespace A025528

/-- `∑[A353678(4*(n+1))]` -/
def P6106935850017746564.Spec : Prop :=
  ∀ n, P6106935850017746564.a n = A025528 (n + 1)

end A025528

/-! ## A025528.P13940660176374862540

`∑[val(A105561(n+1), 2)]`
-/

namespace A025528.P13940660176374862540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105561 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P13940660176374862540

namespace A025528

/-- `∑[val(A105561(n+1), 2)]` -/
def P13940660176374862540.Spec : Prop :=
  ∀ n, (P13940660176374862540.a n : ℤ) = A025528 (n + 1)

end A025528

/-! ## A025528.P8123460465504692573

`n-∑[A143731(n+1)]`
-/

namespace A025528.P8123460465504692573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P8123460465504692573

namespace A025528

/-- `n-∑[A143731(n+1)]` -/
def P8123460465504692573.Spec : Prop :=
  ∀ n, P8123460465504692573.a n = A025528 (n + 1)

end A025528

/-! ## A025528.P4388863210147831246

`∑[∑{e}[A014963(n+1), #]]`
-/

namespace A025528.P4388863210147831246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P4388863210147831246

namespace A025528

/-- `∑[∑{e}[A014963(n+1), #]]` -/
def P4388863210147831246.Spec : Prop :=
  ∀ n, (P4388863210147831246.a n : ℤ) = A025528 (n + 1)

end A025528

/-! ## A025528.P14222580371626008041

`1-A356068(n+1)+n`
-/

namespace A025528.P14222580371626008041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A356068 (n + 1) + (n : ℤ)

end

end A025528.P14222580371626008041

namespace A025528

/-- `1-A356068(n+1)+n` -/
def P14222580371626008041.Spec : Prop :=
  ∀ n, P14222580371626008041.a n = A025528 (n + 1)

end A025528

/-! ## A025528.P2917638479313718228

`∑[char[A000961(n+2)-1]]`
-/

namespace A025528.P2917638479313718228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P2917638479313718228

namespace A025528

/-- `∑[char[A000961(n+2)-1]]` -/
def P2917638479313718228.Spec : Prop :=
  ∀ n, (P2917638479313718228.a n : ℤ) = A025528 (n + 1)

end A025528

/-! ## A025528.P9524903788849672819

`∑[char[eq[1, A001221(n+1)]]]`
-/

namespace A025528.P9524903788849672819
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P9524903788849672819

namespace A025528

/-- `∑[char[eq[1, A001221(n+1)]]]` -/
def P9524903788849672819.Spec : Prop :=
  ∀ n, (P9524903788849672819.a n : ℤ) = A025528 (n + 1)

end A025528

/-! ## A025528.P3336899923056075862

`n-∑[A079872(n+1)²]`
-/

namespace A025528.P3336899923056075862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079872 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P3336899923056075862

namespace A025528

/-- `n-∑[A079872(n+1)²]` -/
def P3336899923056075862.Spec : Prop :=
  ∀ n, P3336899923056075862.a n = A025528 (n + 1)

end A025528

/-! ## A025528.P4638414217312447972

`n-∑[char[A080765(n+1)]]`
-/

namespace A025528.P4638414217312447972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025528.P4638414217312447972

namespace A025528

/-- `n-∑[char[A080765(n+1)]]` -/
def P4638414217312447972.Spec : Prop :=
  ∀ n, P4638414217312447972.a n = A025528 (n + 1)

end A025528

/-! ## A025528.P17317639468476165131

`∑[A354924(2*(n+1))]-1`
-/

namespace A025528.P17317639468476165131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025528.P17317639468476165131

namespace A025528

/-- `∑[A354924(2*(n+1))]-1` -/
def P17317639468476165131.Spec : Prop :=
  ∀ n, P17317639468476165131.a n = A025528 (n + 1)

end A025528

/-! ## A025528.P494062912093592131

`∑[char[lt[A001221(n+2), 2]+1]]`
-/

namespace A025528.P494062912093592131
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P494062912093592131

namespace A025528

/-- `∑[char[lt[A001221(n+2), 2]+1]]` -/
def P494062912093592131.Spec : Prop :=
  ∀ n, (P494062912093592131.a n : ℤ) = A025528 (n + 1)

end A025528

/-! ## A025528.P9415912261503861996

`A141128(A031218(n+1))`
-/

namespace A025528.P9415912261503861996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141128 (A031218 (n + 1)).toNat

end

end A025528.P9415912261503861996

namespace A025528

/-- `A141128(A031218(n+1))` -/
def P9415912261503861996.Spec : Prop :=
  ∀ n, P9415912261503861996.a n = A025528 (n + 1)

end A025528

/-! ## A025528.P11623904446849069662

`∑[A001221(A014963(n+1))]`
-/

namespace A025528.P11623904446849069662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P11623904446849069662

namespace A025528

/-- `∑[A001221(A014963(n+1))]` -/
def P11623904446849069662.Spec : Prop :=
  ∀ n, P11623904446849069662.a n = A025528 (n + 1)

end A025528

/-! ## A025528.P7609745431421245805

`∑[A001221(A100994(n+1))]`
-/

namespace A025528.P7609745431421245805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P7609745431421245805

namespace A025528

/-- `∑[A001221(A100994(n+1))]` -/
def P7609745431421245805.Spec : Prop :=
  ∀ n, P7609745431421245805.a n = A025528 (n + 1)

end A025528

/-!
# A025529: a(n) = (1/1 + 1/2 + ... + 1/n)*lcm{1,2,...,n}.

The programs for A025529, the canonical program `A025529.P10152674282350827364` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025529 has offset 1).

The definition of A025529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025529.P831805861109850614

`A027457(n+1)+A003418(n+1)`
-/

namespace A025529.P831805861109850614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027457 (n + 1) + A003418 (n + 1)

end

end A025529.P831805861109850614

namespace A025529

/-- `A027457(n+1)+A003418(n+1)` -/
def P831805861109850614.Spec : Prop :=
  ∀ n, P831805861109850614.a n = A025529 (n + 1)

end A025529

/-! ## A025529.P506781626872594642

`A001008(n+1)*A110566(n+1)`
-/

namespace A025529.P506781626872594642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A110566 (n + 1)

end

end A025529.P506781626872594642

namespace A025529

/-- `A001008(n+1)*A110566(n+1)` -/
def P506781626872594642.Spec : Prop :=
  ∀ n, P506781626872594642.a n = A025529 (n + 1)

end A025529

/-! ## A025529.P10152674282350827364

`∑[1/(n+1)]*∏[A014963(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025529

/-- `∑[1/(n+1)]*∏[A014963(n+1)]` -/
def P10152674282350827364.Spec : Prop :=
  ∀ n, P10152674282350827364.a n = (A025529 (n + 1) : ℚ)

end A025529

/-! ## A025529.P11962927925084381597

`A027457(n+1)+Δ[A173185(n)]`
-/

namespace A025529.P11962927925084381597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027457 (n + 1) + (f1 (n + 1) - f1 n)

end

end A025529.P11962927925084381597

namespace A025529

/-- `A027457(n+1)+Δ[A173185(n)]` -/
def P11962927925084381597.Spec : Prop :=
  ∀ n, P11962927925084381597.a n = A025529 (n + 1)

end A025529

/-! ## A025529.P1962125887239939086

`A027457(n+1)+Δ[A236856(n)]`
-/

namespace A025529.P1962125887239939086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027457 (n + 1) + (f1 (n + 1) - f1 n)

end

end A025529.P1962125887239939086

namespace A025529

/-- `A027457(n+1)+Δ[A236856(n)]` -/
def P1962125887239939086.Spec : Prop :=
  ∀ n, P1962125887239939086.a n = A025529 (n + 1)

end A025529

/-! ## A025529.P14252423768355469285

`A051451(A065515(n+1))+A027457(n+1)`
-/

namespace A025529.P14252423768355469285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (A065515 (n + 1)).toNat + A027457 (n + 1)

end

end A025529.P14252423768355469285

namespace A025529

/-- `A051451(A065515(n+1))+A027457(n+1)` -/
def P14252423768355469285.Spec : Prop :=
  ∀ n, P14252423768355469285.a n = A025529 (n + 1)

end A025529

/-! ## A025529.P13189856701129777036

`A027457(n+1)+A002805(n+1)*A110566(n+1)`
-/

namespace A025529.P13189856701129777036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027457 (n + 1) + A002805 (n + 1) * A110566 (n + 1)

end

end A025529.P13189856701129777036

namespace A025529

/-- `A027457(n+1)+A002805(n+1)*A110566(n+1)` -/
def P13189856701129777036.Spec : Prop :=
  ∀ n, P13189856701129777036.a n = A025529 (n + 1)

end A025529

/-! ## A025529.P8045139861101977863

`A001008(n+1)/A002805(n+1)*A003418(n+1)`
-/

namespace A025529.P8045139861101977863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ) * (A003418 (n + 1) : ℚ)

end

end A025529.P8045139861101977863

namespace A025529

/-- `A001008(n+1)/A002805(n+1)*A003418(n+1)` -/
def P8045139861101977863.Spec : Prop :=
  ∀ n, P8045139861101977863.a n = (A025529 (n + 1) : ℚ)

end A025529

/-! ## A025529.P3286823730707124501

`A096617(n+1)*A110566(n+1)/A120263(n+1)`
-/

namespace A025529.P3286823730707124501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (n + 1) * A110566 (n + 1) : ℚ) / (A120263 (n + 1) : ℚ)

end

end A025529.P3286823730707124501

namespace A025529

/-- `A096617(n+1)*A110566(n+1)/A120263(n+1)` -/
def P3286823730707124501.Spec : Prop :=
  ∀ n, P3286823730707124501.a n = (A025529 (n + 1) : ℚ)

end A025529

/-! ## A025529.P9393602678888884419

`A027446(∑[n]+1)`
-/

namespace A025529.P9393602678888884419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A025529.P9393602678888884419

namespace A025529

/-- `A027446(∑[n]+1)` -/
def P9393602678888884419.Spec : Prop :=
  ∀ n, P9393602678888884419.a n = A025529 (n + 1)

end A025529

/-! ## A025529.P4425892917055205379

`record[A027446(n+1)]`
-/

namespace A025529.P4425892917055205379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025529.P4425892917055205379

namespace A025529

/-- `record[A027446(n+1)]` -/
def P4425892917055205379.Spec : Prop :=
  ∀ n, P4425892917055205379.a n = A025529 (n + 1)

end A025529

/-! ## A025529.P16096524287165834611

`A175455(n+1)/A003418(n+1)`
-/

namespace A025529.P16096524287165834611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175455 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ)

end

end A025529.P16096524287165834611

namespace A025529

/-- `A175455(n+1)/A003418(n+1)` -/
def P16096524287165834611.Spec : Prop :=
  ∀ n, P16096524287165834611.a n = (A025529 (n + 1) : ℚ)

end A025529

/-! ## A025529.P174670371628105370

`A175455(n+1)/(A002805(n+1)*A110566(n+1))`
-/

namespace A025529.P174670371628105370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175455 (n + 1) : ℚ) / (A002805 (n + 1) * A110566 (n + 1) : ℚ)

end

end A025529.P174670371628105370

namespace A025529

/-- `A175455(n+1)/(A002805(n+1)*A110566(n+1))` -/
def P174670371628105370.Spec : Prop :=
  ∀ n, P174670371628105370.a n = (A025529 (n + 1) : ℚ)

end A025529

/-!
# A025530: a(n) = (1/1 - 1/2 + ... + (-1)^(n-1)/n)*lcm{1..n}.

The programs for A025530, there is no canonical definition to state claims against.
-/

/-! ## A025530.P6594479850915508574

`A058313(n+1)*A269626(n+1)`
-/

namespace A025530.P6594479850915508574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (n + 1) * A269626 (n + 1)

end

end A025530.P6594479850915508574

/-! ## A025530.P952716363217266502

`A075830(n+2)*A269626(n+1)`
-/

namespace A025530.P952716363217266502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075830 (n + 2) * A269626 (n + 1)

end

end A025530.P952716363217266502

/-! ## A025530.P6090975314512881717

`A003418(n+1)/A058312(n+1)*A058313(n+1)`
-/

namespace A025530.P6090975314512881717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A058312 (n + 1) : ℚ) * (A058313 (n + 1) : ℚ)

end

end A025530.P6090975314512881717

/-! ## A025530.P2691833718443699058

`A027446(A080827(n+1))`
-/

namespace A025530.P2691833718443699058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (A080827 (n + 1)).toNat

end

end A025530.P2691833718443699058

/-! ## A025530.P1303412721162087477

`A027446(A099392(n+2))`
-/

namespace A025530.P1303412721162087477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (A099392 (n + 2)).toNat

end

end A025530.P1303412721162087477

/-! ## A025530.P9198199285533879026

`A058313(n+1)/A025527(n+1)*A334958(n+1)`
-/

namespace A025530.P9198199285533879026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058313 (n + 1) : ℚ) / (A025527 (n + 1) : ℚ) * (A334958 (n + 1) : ℚ)

end

end A025530.P9198199285533879026

/-! ## A025530.P2878005885672712689

`A024167(n+1)/A025527(n+1)`
-/

namespace A025530.P2878005885672712689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (n + 1) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025530.P2878005885672712689

/-! ## A025530.P16427678720537853158

`A054651(A034856(n+1))/A025527(n+1)`
-/

namespace A025530.P16427678720537853158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054651 (A034856 (n + 1)).toNat : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025530.P16427678720537853158

/-! ## A025530.P16332724418113048475

`A190782(A000124(n+1))/A025527(n+1)`
-/

namespace A025530.P16332724418113048475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190782 (A000124 (n + 1)).toNat : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025530.P16332724418113048475

/-!
# A025532: a(n) is the sum of exponents in the prime factorization of lcm{C(n,0), C(n,1), ..., C(n,n)}.

The programs for A025532, the canonical program `A025532.P16291911250862818187` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025532 has offset 0).

The definition of A025532 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A025528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025532.P16291911250862818187

`A025528(n+1)-A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A025532

/-- `A025528(n+1)-A001222(n+1)` -/
def P16291911250862818187.Spec : Prop :=
  ∀ n, P16291911250862818187.a n = A025532 n

theorem P16291911250862818187.correct : P16291911250862818187.Spec := by
  intro n
  simp only [A025532]

end A025532

/-! ## A025532.P14652851412655909859

`A001222(A002944(n+1))`
-/

namespace A025532.P14652851412655909859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002944 (n + 1)).toNat

end

end A025532.P14652851412655909859

namespace A025532

/-- `A001222(A002944(n+1))` -/
def P14652851412655909859.Spec : Prop :=
  ∀ n, P14652851412655909859.a n = A025532 n

end A025532

/-! ## A025532.P12340819268360429332

`A339893(n+1)+A327247(n+1)`
-/

namespace A025532.P12340819268360429332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339893 (n + 1) + A327247 (n + 1)

end

end A025532.P12340819268360429332

namespace A025532

/-- `A339893(n+1)+A327247(n+1)` -/
def P12340819268360429332.Spec : Prop :=
  ∀ n, P12340819268360429332.a n = A025532 n

theorem P12340819268360429332.correct : P12340819268360429332.Spec := by
  intro n
  simp only [A025532, Nat.add_sub_cancel, A025532.P12340819268360429332.a, A025532.P16291911250862818187.a, A001222, A001222.P11318177267732088261.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A327247, A327247.P2442435851943604029.a, A339893, A339893.P4828235221648378328.a, A000523, A000523.P3314682526375882520.a, A061395, A061395.P8431317036300486107.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025532

/-! ## A025532.P2449717065509001606

`A065515(n+1)-A073093(n+1)`
-/

namespace A025532.P2449717065509001606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A073093 (n + 1)

end

end A025532.P2449717065509001606

namespace A025532

/-- `A065515(n+1)-A073093(n+1)` -/
def P2449717065509001606.Spec : Prop :=
  ∀ n, P2449717065509001606.a n = A025532 n

theorem P2449717065509001606.correct : P2449717065509001606.Spec := by
  intro n
  simp only [A025532, Nat.add_sub_cancel, A025532.P2449717065509001606.a, A025532.P16291911250862818187.a, A001222, A001222.P11318177267732088261.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A065515, A065515.P15129427044826637405.a, A073093, A073093.P258081957281391684.a, A061395, A061395.P8431317036300486107.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025532

/-! ## A025532.P11207880662741640383

`A075795(n+1)-A085970(n+1)`
-/

namespace A025532.P11207880662741640383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075795 (n + 1) - A085970 (n + 1)

end

end A025532.P11207880662741640383

namespace A025532

/-- `A075795(n+1)-A085970(n+1)` -/
def P11207880662741640383.Spec : Prop :=
  ∀ n, P11207880662741640383.a n = A025532 n

end A025532

/-! ## A025532.P9628235520597487971

`A069345(n+1)-A356068(n+1)`
-/

namespace A025532.P9628235520597487971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) - A356068 (n + 1)

end

end A025532.P9628235520597487971

namespace A025532

/-- `A069345(n+1)-A356068(n+1)` -/
def P9628235520597487971.Spec : Prop :=
  ∀ n, P9628235520597487971.a n = A025532 n

end A025532

/-! ## A025532.P5982481304724019794

`∑[A069513(n+1)]-A001222(n+1)`
-/

namespace A025532.P5982481304724019794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (n + 1)

end

end A025532.P5982481304724019794

namespace A025532

/-- `∑[A069513(n+1)]-A001222(n+1)` -/
def P5982481304724019794.Spec : Prop :=
  ∀ n, P5982481304724019794.a n = A025532 n

end A025532

/-! ## A025532.P4335331539944919422

`A065515(n+1)-(A001222(n+1)+1)`
-/

namespace A025532.P4335331539944919422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - (A001222 (n + 1) + 1)

end

end A025532.P4335331539944919422

namespace A025532

/-- `A065515(n+1)-(A001222(n+1)+1)` -/
def P4335331539944919422.Spec : Prop :=
  ∀ n, P4335331539944919422.a n = A025532 n

theorem P4335331539944919422.correct : P4335331539944919422.Spec := by
  intro n
  simp only [A025532, Nat.add_sub_cancel, A025532.P4335331539944919422.a, A025532.P16291911250862818187.a, A001222, A001222.P11318177267732088261.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A065515, A065515.P15129427044826637405.a, A061395, A061395.P8431317036300486107.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025532

/-! ## A025532.P9923473436048065893

`∑[A010055(n+1)]-(A001222(n+1)+1)`
-/

namespace A025532.P9923473436048065893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A001222 (n + 1) + 1)

end

end A025532.P9923473436048065893

namespace A025532

/-- `∑[A010055(n+1)]-(A001222(n+1)+1)` -/
def P9923473436048065893.Spec : Prop :=
  ∀ n, P9923473436048065893.a n = A025532 n

end A025532

/-! ## A025532.P18392189011110709346

`∑[A001222(A014963(n+1))]-A001222(n+1)`
-/

namespace A025532.P18392189011110709346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (n + 1)

end

end A025532.P18392189011110709346

namespace A025532

/-- `∑[A001222(A014963(n+1))]-A001222(n+1)` -/
def P18392189011110709346.Spec : Prop :=
  ∀ n, P18392189011110709346.a n = A025532 n

end A025532

/-! ## A025532.P16748426390159101403

`A025528(n+1)+A022559(n)-A022559(n+1)`
-/

namespace A025532.P16748426390159101403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1) + (A022559 n - A022559 (n + 1))

end

end A025532.P16748426390159101403

namespace A025532

/-- `A025528(n+1)+A022559(n)-A022559(n+1)` -/
def P16748426390159101403.Spec : Prop :=
  ∀ n, P16748426390159101403.a n = A025532 n

end A025532

/-!
# A025533: a(n) = (1/C(n,0) + 1/C(n,1) + ... + 1/C(n,n))*L, where L = LCM{C(n,0), C(n,1),..., C(n,n)}.

The programs for A025533, there is no canonical definition to state claims against.
-/

/-! ## A025533.P847534105343960258

`A003149(n)/∏[gcd(n+1, ∏{p}[n+1, (n+1)/#])]`
-/

namespace A025533.P847534105343960258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003149 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A025533.P847534105343960258

/-! ## A025533.P16863276161360864638

`A003149(n)/A025527(n+1)`
-/

namespace A025533.P16863276161360864638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003149 n : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025533.P16863276161360864638

/-! ## A025533.P13744900088365783506

`A003149(n)/∏[A048671(n+1)]`
-/

namespace A025533.P13744900088365783506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003149 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A025533.P13744900088365783506

/-! ## A025533.P14353024248105509116

`∑[A186374(n+1)]/A025527(n+1)`
-/

namespace A025533.P14353024248105509116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025533.P14353024248105509116

/-! ## A025533.P4666462964706365878

`A084938(A340266(n+1))/A025527(n+1)`
-/

namespace A025533.P4666462964706365878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (A340266 (n + 1)).toNat : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025533.P4666462964706365878

/-! ## A025533.P15598864454147235757

`A084938(A152948(n+4))/A025527(n+1)`
-/

namespace A025533.P15598864454147235757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (A152948 (n + 4)).toNat : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025533.P15598864454147235757

/-! ## A025533.P334702244622015142

`A084938(A055998(n)+5)/A025527(n+1)`
-/

namespace A025533.P334702244622015142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (A055998 n + 5).toNat : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025533.P334702244622015142

/-! ## A025533.P14081584246516107374

`record[A084938(A000217(n)+2)]/A025527(n+1)`
-/

namespace A025533.P14081584246516107374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000217 n + 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025533.P14081584246516107374

/-!
# A025534: a(n) = (1/C(n,0) + 1/C(n,1) + ... + 1/C(n,k))*L, where k = [ n/2 ], L = LCM{C(n,0), C(n,1),..., C(n,n)}.

The programs for A025534, there is no canonical definition to state claims against.
-/

/-! ## A025534.P251032511950035339

`A002944(n+1)/A100561(n)*A100560(n)`
-/

namespace A025534.P251032511950035339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A100561 n : ℚ) * (A100560 n : ℚ)

end

end A025534.P251032511950035339

/-! ## A025534.P4877172303781691306

`A024419(n)/∏[gcd(n+1, ∏{p}[n+1, (n+1)/#])]`
-/

namespace A025534.P4877172303781691306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024419 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A025534.P4877172303781691306

/-! ## A025534.P9643193112714115536

`A024419(n)/A025527(n+1)`
-/

namespace A025534.P9643193112714115536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024419 n : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025534.P9643193112714115536

/-! ## A025534.P13245358740495703629

`A024419(n)/∏[A048671(n+1)]`
-/

namespace A025534.P13245358740495703629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024419 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A025534.P13245358740495703629

/-! ## A025534.P2302758260279426642

`A024419(n)/A024420(n)*A025536(n)`
-/

namespace A025534.P2302758260279426642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024419 n : ℚ) / (A024420 n : ℚ) * (A025536 n : ℚ)

end

end A025534.P2302758260279426642

/-! ## A025534.P3173793658702609168

`A024419(n)/(A034386(n+1)/A003418(n+1)*A049614(n+1))`
-/

namespace A025534.P3173793658702609168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024419 n : ℚ) / ((A034386 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) * (A049614 (n + 1) : ℚ))

end

end A025534.P3173793658702609168

/-!
# A025535: a(n) = (1/C(2n,0) - 1/C(2n,1) + ... + d/C(2n,2n))*L, where d = (-1)^2n, L = LCM{C(2n,0), C(2n,1),..., C(2n,2n)}.

The programs for A025535, the canonical program `A025535.P13577828374207711061` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025535 has offset 0).

The definition of A025535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025535.P1888871210331036604

`(2*n+1)*A081538(2*n+1)`
-/

namespace A025535.P1888871210331036604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A081538 (2 * n + 1)

end

end A025535.P1888871210331036604

namespace A025535

/-- `(2*n+1)*A081538(2*n+1)` -/
def P1888871210331036604.Spec : Prop :=
  ∀ n, P1888871210331036604.a n = A025535 n

end A025535

/-! ## A025535.P13577828374207711061

`A001700(n)*A180000(2*n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025535

/-- `A001700(n)*A180000(2*n+1)` -/
def P13577828374207711061.Spec : Prop :=
  ∀ n, P13577828374207711061.a n = A025535 n

theorem P13577828374207711061.correct : P13577828374207711061.Spec := by
  intro n
  simp only [A025535]

end A025535

/-! ## A025535.P11149620714768182957

`A088218(n+1)*A180000(2*n+1)`
-/

namespace A025535.P11149620714768182957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) * A180000 (2 * n + 1)

end

end A025535.P11149620714768182957

namespace A025535

/-- `A088218(n+1)*A180000(2*n+1)` -/
def P11149620714768182957.Spec : Prop :=
  ∀ n, P11149620714768182957.a n = A025535 n

end A025535

/-! ## A025535.P7859124080184605016

`A001405(2*n+1)*A048619(2*n)`
-/

namespace A025535.P7859124080184605016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) * A048619 (2 * n)

end

end A025535.P7859124080184605016

namespace A025535

/-- `A001405(2*n+1)*A048619(2*n)` -/
def P7859124080184605016.Spec : Prop :=
  ∀ n, P7859124080184605016.a n = A025535 n

end A025535

/-! ## A025535.P12886847963515649575

`A048619(2*n)*A057977(2*n+1)`
-/

namespace A025535.P12886847963515649575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048619 (2 * n) * A057977 (2 * n + 1)

end

end A025535.P12886847963515649575

namespace A025535

/-- `A048619(2*n)*A057977(2*n+1)` -/
def P12886847963515649575.Spec : Prop :=
  ∀ n, P12886847963515649575.a n = A025535 n

end A025535

/-! ## A025535.P5635885583868089727

`A048619(2*n)/2*A000984(n+1)`
-/

namespace A025535.P5635885583868089727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048619 (2 * n) : ℚ) / 2 * (A000984 (n + 1) : ℚ)

end

end A025535.P5635885583868089727

namespace A025535

/-- `A048619(2*n)/2*A000984(n+1)` -/
def P5635885583868089727.Spec : Prop :=
  ∀ n, P5635885583868089727.a n = (A025535 n : ℚ)

end A025535

/-! ## A025535.P14845670482185203963

`A001405(2*n+1)*A180000(2*n+1)`
-/

namespace A025535.P14845670482185203963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) * A180000 (2 * n + 1)

end

end A025535.P14845670482185203963

namespace A025535

/-- `A001405(2*n+1)*A180000(2*n+1)` -/
def P14845670482185203963.Spec : Prop :=
  ∀ n, P14845670482185203963.a n = A025535 n

end A025535

/-! ## A025535.P5122950322933212010

`A057977(2*n+1)*A180000(2*n+1)`
-/

namespace A025535.P5122950322933212010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n + 1) * A180000 (2 * n + 1)

end

end A025535.P5122950322933212010

namespace A025535

/-- `A057977(2*n+1)*A180000(2*n+1)` -/
def P5122950322933212010.Spec : Prop :=
  ∀ n, P5122950322933212010.a n = A025535 n

end A025535

/-! ## A025535.P12833442545388256517

`A063549(2*n+1)*A180000(2*n+1)`
-/

namespace A025535.P12833442545388256517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (2 * n + 1) * A180000 (2 * n + 1)

end

end A025535.P12833442545388256517

namespace A025535

/-- `A063549(2*n+1)*A180000(2*n+1)` -/
def P12833442545388256517.Spec : Prop :=
  ∀ n, P12833442545388256517.a n = A025535 n

end A025535

/-! ## A025535.P304121779656497458

`A138364(2*n+1)*A180000(2*n+1)`
-/

namespace A025535.P304121779656497458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (2 * n + 1) * A180000 (2 * n + 1)

end

end A025535.P304121779656497458

namespace A025535

/-- `A138364(2*n+1)*A180000(2*n+1)` -/
def P304121779656497458.Spec : Prop :=
  ∀ n, P304121779656497458.a n = A025535 n

end A025535

/-! ## A025535.P13356376516629308399

`A180000(2*n+1)*A212303(2*n+1)`
-/

namespace A025535.P13356376516629308399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 (2 * n + 1) * A212303 (2 * n + 1)

end

end A025535.P13356376516629308399

namespace A025535

/-- `A180000(2*n+1)*A212303(2*n+1)` -/
def P13356376516629308399.Spec : Prop :=
  ∀ n, P13356376516629308399.a n = A025535 n

end A025535

/-! ## A025535.P7695092427290898422

`A180000(2*n+1)/2*A000984(n+1)`
-/

namespace A025535.P7695092427290898422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (2 * n + 1) : ℚ) / 2 * (A000984 (n + 1) : ℚ)

end

end A025535.P7695092427290898422

namespace A025535

/-- `A180000(2*n+1)/2*A000984(n+1)` -/
def P7695092427290898422.Spec : Prop :=
  ∀ n, P7695092427290898422.a n = (A025535 n : ℚ)

end A025535

/-! ## A025535.P3962093598882150073

`(2-A010055(2*(n+1)))*A002944(2*(n+1))`
-/

namespace A025535.P3962093598882150073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010055 (2 * (n + 1))) * A002944 (2 * (n + 1))

end

end A025535.P3962093598882150073

namespace A025535

/-- `(2-A010055(2*(n+1)))*A002944(2*(n+1))` -/
def P3962093598882150073.Spec : Prop :=
  ∀ n, P3962093598882150073.a n = A025535 n

end A025535

/-! ## A025535.P12299648067944458840

`2*A002944(2*(n+1))/A014963(2*(n+1))`
-/

namespace A025535.P12299648067944458840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A002944 (2 * (n + 1)) : ℚ) / (A014963 (2 * (n + 1)) : ℚ))

end

end A025535.P12299648067944458840

namespace A025535

/-- `2*A002944(2*(n+1))/A014963(2*(n+1))` -/
def P12299648067944458840.Spec : Prop :=
  ∀ n, P12299648067944458840.a n = (A025535 n : ℚ)

end A025535

/-! ## A025535.P6114398301193580410

`A002944(2*n+1)/A008458(n+1)*(12*n+6)`
-/

namespace A025535.P6114398301193580410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (2 * n + 1) : ℚ) / (A008458 (n + 1) : ℚ) * (12 * n + 6 : ℚ)

end

end A025535.P6114398301193580410

namespace A025535

/-- `A002944(2*n+1)/A008458(n+1)*(12*n+6)` -/
def P6114398301193580410.Spec : Prop :=
  ∀ n, P6114398301193580410.a n = (A025535 n : ℚ)

end A025535

/-! ## A025535.P14529078381428751277

`A001405(2*n+1)/A001405(2*n)*A002944(2*n+1)`
-/

namespace A025535.P14529078381428751277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n + 1) : ℚ) / (A001405 (2 * n) : ℚ) * (A002944 (2 * n + 1) : ℚ)

end

end A025535.P14529078381428751277

namespace A025535

/-- `A001405(2*n+1)/A001405(2*n)*A002944(2*n+1)` -/
def P14529078381428751277.Spec : Prop :=
  ∀ n, P14529078381428751277.a n = (A025535 n : ℚ)

end A025535

/-! ## A025535.P7668992589802054822

`A002944(2*(n+1))/A048619(2*n+1)*A048619(2*n)`
-/

namespace A025535.P7668992589802054822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (2 * (n + 1)) : ℚ) / (A048619 (2 * n + 1) : ℚ) * (A048619 (2 * n) : ℚ)

end

end A025535.P7668992589802054822

namespace A025535

/-- `A002944(2*(n+1))/A048619(2*n+1)*A048619(2*n)` -/
def P7668992589802054822.Spec : Prop :=
  ∀ n, P7668992589802054822.a n = (A025535 n : ℚ)

end A025535

/-! ## A025535.P4457410985937545382

`A076100(n+1)/(n+1)`
-/

namespace A025535.P4457410985937545382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076100 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A025535.P4457410985937545382

namespace A025535

/-- `A076100(n+1)/(n+1)` -/
def P4457410985937545382.Spec : Prop :=
  ∀ n, P4457410985937545382.a n = (A025535 n : ℚ)

end A025535

/-! ## A025535.P7745154562242232809

`A003418(Δ[n²])/(n+1)`
-/

namespace A025535.P7745154562242232809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A025535.P7745154562242232809

namespace A025535

/-- `A003418(Δ[n²])/(n+1)` -/
def P7745154562242232809.Spec : Prop :=
  ∀ n, P7745154562242232809.a n = (A025535 n : ℚ)

end A025535

/-! ## A025535.P262612770895847678

`A081537(Δ[n²])/(n+1)`
-/

namespace A025535.P262612770895847678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081537 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A025535.P262612770895847678

namespace A025535

/-- `A081537(Δ[n²])/(n+1)` -/
def P262612770895847678.Spec : Prop :=
  ∀ n, P262612770895847678.a n = (A025535 n : ℚ)

end A025535

/-!
# A025536: a(n) = (1/C(n,0) - 1/C(n,1) + ... + d/C(n,k))*L, where d = (-1)^k,k = [ n/2 ], L = LCM{C(n,0), C(n,1),..., C(n,n)}.

The programs for A025536, there is no canonical definition to state claims against.
-/

/-! ## A025536.P4382445400107951973

`A024420(n)/A025527(n+1)`
-/

namespace A025536.P4382445400107951973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024420 n : ℚ) / (A025527 (n + 1) : ℚ)

end

end A025536.P4382445400107951973

/-! ## A025536.P11497291880153830648

`A024420(n)/∏[A048671(n+1)]`
-/

namespace A025536.P11497291880153830648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024420 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A025536.P11497291880153830648

/-! ## A025536.P16332557266613714828

`A024420(n)/A024419(n)*A025534(n)`
-/

namespace A025536.P16332557266613714828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024420 n : ℚ) / (A024419 n : ℚ) * (A025534 n : ℚ)

end

end A025536.P16332557266613714828

/-!
# A025537: a(n) = (1/s(1) + 1/s(2) + ... + 1/s(n+1)) * LCM{1, 2, ..., n}, where s(k) = LCM{1,2,...,k}/k = A002944(k).

The programs for A025537, the canonical program `A025537.P9038839557550078877` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025537 has offset 0).

The definition of A025537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025537.P4753939496082341554

`∑[1/A002944(n+1)]*A003418(n)`
-/

namespace A025537.P4753939496082341554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A002944 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A003418 n : ℚ)

end

end A025537.P4753939496082341554

namespace A025537

/-- `∑[1/A002944(n+1)]*A003418(n)` -/
def P4753939496082341554.Spec : Prop :=
  ∀ n, P4753939496082341554.a n = (A025537 n : ℚ)

end A025537

/-! ## A025537.P9038839557550078877

`A048671(n+1)+a(n-1)*A014963(n)` with `a(0)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025537

/-- `A048671(n+1)+a(n-1)*A014963(n)` -/
def P9038839557550078877.Spec : Prop :=
  ∀ n, P9038839557550078877.a n = A025537 n

theorem P9038839557550078877.correct : P9038839557550078877.Spec := by
  intro n
  simp only [A025537]

end A025537

/-! ## A025537.P13132053199992624544

`A048671(n+1)+n/A048671(n)*a(n-1)` with `a(0)=1`
-/

namespace A025537.P13132053199992624544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A048671 (n + 1) : ℚ) + (n : ℚ) / (A048671 n : ℚ) * a (n - 1)

end

end A025537.P13132053199992624544

namespace A025537

/-- `A048671(n+1)+n/A048671(n)*a(n-1)` -/
def P13132053199992624544.Spec : Prop :=
  ∀ n, P13132053199992624544.a n = (A025537 n : ℚ)

end A025537

/-! ## A025537.P1871387699658321334

`∑[(n+1)/A003418(n+1)]*A003418(n)`
-/

namespace A025537.P1871387699658321334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003418 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A003418 n : ℚ)

end

end A025537.P1871387699658321334

namespace A025537

/-- `∑[(n+1)/A003418(n+1)]*A003418(n)` -/
def P1871387699658321334.Spec : Prop :=
  ∀ n, P1871387699658321334.a n = (A025537 n : ℚ)

end A025537

/-!
# A025539: a(n) = (Sum{1/C(i,j)})*LCM{C(i,j)}, 0 <= j <= i <= n.

The programs for A025539, there is no canonical definition to state claims against.
-/

/-! ## A025539.P7171330701822585518

`A096530(A130463(n+1))`
-/

namespace A025539.P7171330701822585518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096530 (A130463 (n + 1)).toNat

end

end A025539.P7171330701822585518

/-!
# A025540: Least common multiple of {C(0,0), C(2,1), ..., C(2n,n)}.

The programs for A025540, the canonical program `A025540.P13659274686485187955` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025540 has offset 0).

The definition of A025540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025540.P13659274686485187955

`lcm(C(2*n, n), a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025540

/-- `lcm(C(2*n, n), a(n-1))` -/
def P13659274686485187955.Spec : Prop :=
  ∀ n, (P13659274686485187955.a n : ℤ) = A025540 n

theorem P13659274686485187955.correct : P13659274686485187955.Spec := by
  intro n
  simp only [A025540]

end A025540

/-! ## A025540.P16997081453525491493

`A025552(2*n)`
-/

namespace A025540.P16997081453525491493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025552 (2 * n)

end

end A025540.P16997081453525491493

namespace A025540

/-- `A025552(2*n)` -/
def P16997081453525491493.Spec : Prop :=
  ∀ n, P16997081453525491493.a n = A025540 n

end A025540

/-! ## A025540.P1842674086780901977

`lcm(a(n-1), A000984(n))` with `a(0)=1`
-/

namespace A025540.P1842674086780901977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000984 n)

end

end A025540.P1842674086780901977

namespace A025540

/-- `lcm(a(n-1), A000984(n))` -/
def P1842674086780901977.Spec : Prop :=
  ∀ n, (P1842674086780901977.a n : ℤ) = A025540 n

end A025540

/-! ## A025540.P8304490697003741546

`lcm(-a(n-1), record[A126869(n)])` with `a(0)=1`
-/

namespace A025540.P8304490697003741546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A025540.P8304490697003741546

namespace A025540

/-- `lcm(-a(n-1), record[A126869(n)])` -/
def P8304490697003741546.Spec : Prop :=
  ∀ n, (P8304490697003741546.a n : ℤ) = A025540 n

end A025540

/-! ## A025540.P11553205420014018505

`lcm(n+1, a(n-1)*A014963(2*n-1))` with `a(0)=1`
-/

namespace A025540.P11553205420014018505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (n + 1 : ℤ) ((a (n - 1) : ℤ) * A014963 (2 * n - 1))

end

end A025540.P11553205420014018505

namespace A025540

/-- `lcm(n+1, a(n-1)*A014963(2*n-1))` -/
def P11553205420014018505.Spec : Prop :=
  ∀ n, (P11553205420014018505.a n : ℤ) = A025540 n

end A025540

/-! ## A025540.P14120797248740528332

`A003418(2*n)/A043529(n)`
-/

namespace A025540.P14120797248740528332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (A043529 n : ℚ)

end

end A025540.P14120797248740528332

namespace A025540

/-- `A003418(2*n)/A043529(n)` -/
def P14120797248740528332.Spec : Prop :=
  ∀ n, P14120797248740528332.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P12238203657002934208

`A003418(2*n)/(2-A036987(n))`
-/

namespace A025540.P12238203657002934208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (2 - A036987 n : ℚ)

end

end A025540.P12238203657002934208

namespace A025540

/-- `A003418(2*n)/(2-A036987(n))` -/
def P12238203657002934208.Spec : Prop :=
  ∀ n, P12238203657002934208.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P10326476278254476981

`lcm(A058312(n+1), A212397(2*n))`
-/

namespace A025540.P10326476278254476981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A058312 (n + 1)) (A212397 (2 * n))

end

end A025540.P10326476278254476981

namespace A025540

/-- `lcm(A058312(n+1), A212397(2*n))` -/
def P10326476278254476981.Spec : Prop :=
  ∀ n, (P10326476278254476981.a n : ℤ) = A025540 n

end A025540

/-! ## A025540.P7233220892913888401

`A003418(2*n)/gcd(2, A002944(n+1))`
-/

namespace A025540.P7233220892913888401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (Int.gcd 2 (A002944 (n + 1)) : ℚ)

end

end A025540.P7233220892913888401

namespace A025540

/-- `A003418(2*n)/gcd(2, A002944(n+1))` -/
def P7233220892913888401.Spec : Prop :=
  ∀ n, P7233220892913888401.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P8673532493554889704

`lcm(A003418(2*n), A004277(n+1))/2`
-/

namespace A025540.P8673532493554889704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003418 (2 * n)) (A004277 (n + 1)) : ℚ) / 2

end

end A025540.P8673532493554889704

namespace A025540

/-- `lcm(A003418(2*n), A004277(n+1))/2` -/
def P8673532493554889704.Spec : Prop :=
  ∀ n, P8673532493554889704.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P1474058415907397223

`A003418(2*n)/(2-A010055(2*(n+1)))`
-/

namespace A025540.P1474058415907397223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (2 - A010055 (2 * (n + 1)) : ℚ)

end

end A025540.P1474058415907397223

namespace A025540

/-- `A003418(2*n)/(2-A010055(2*(n+1)))` -/
def P1474058415907397223.Spec : Prop :=
  ∀ n, P1474058415907397223.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P2942629088798046598

`A003418(2*n)/(2-A069513(2*(n+1)))`
-/

namespace A025540.P2942629088798046598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (2 - A069513 (2 * (n + 1)) : ℚ)

end

end A025540.P2942629088798046598

namespace A025540

/-- `A003418(2*n)/(2-A069513(2*(n+1)))` -/
def P2942629088798046598.Spec : Prop :=
  ∀ n, P2942629088798046598.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P10341805471814702654

`A014963(2*(n+1))*A003418(2*n)/2`
-/

namespace A025540.P10341805471814702654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (2 * (n + 1)) * A003418 (2 * n) : ℚ) / 2

end

end A025540.P10341805471814702654

namespace A025540

/-- `A014963(2*(n+1))*A003418(2*n)/2` -/
def P10341805471814702654.Spec : Prop :=
  ∀ n, P10341805471814702654.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P1557510470094545528

`A020500(2*(n+1))/2*A003418(2*n)`
-/

namespace A025540.P1557510470094545528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (2 * (n + 1)) : ℚ) / 2 * (A003418 (2 * n) : ℚ)

end

end A025540.P1557510470094545528

namespace A025540

/-- `A020500(2*(n+1))/2*A003418(2*n)` -/
def P1557510470094545528.Spec : Prop :=
  ∀ n, P1557510470094545528.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P9128085038478498567

`lcm(A046523(2*(n+1)), A067391(2*n+1))/2`
-/

namespace A025540.P9128085038478498567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A046523 (2 * (n + 1))) (A067391 (2 * n + 1)) : ℚ) / 2

end

end A025540.P9128085038478498567

namespace A025540

/-- `lcm(A046523(2*(n+1)), A067391(2*n+1))/2` -/
def P9128085038478498567.Spec : Prop :=
  ∀ n, P9128085038478498567.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P4074005806547173784

`A002944(2*(n+1))/A014963(2*n+1)*(n+1)`
-/

namespace A025540.P4074005806547173784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (2 * (n + 1)) : ℚ) / (A014963 (2 * n + 1) : ℚ) * (n + 1 : ℚ)

end

end A025540.P4074005806547173784

namespace A025540

/-- `A002944(2*(n+1))/A014963(2*n+1)*(n+1)` -/
def P4074005806547173784.Spec : Prop :=
  ∀ n, P4074005806547173784.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P11990713569972619349

`A003418(2*n)/A073675(A014963(2*(n+1)))`
-/

namespace A025540.P11990713569972619349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (A073675 (A014963 (2 * (n + 1))).toNat : ℚ)

end

end A025540.P11990713569972619349

namespace A025540

/-- `A003418(2*n)/A073675(A014963(2*(n+1)))` -/
def P11990713569972619349.Spec : Prop :=
  ∀ n, P11990713569972619349.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P2341602888505112473

`A003418(2*n)/A053644(2*n+1)*A053644(n+1)`
-/

namespace A025540.P2341602888505112473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (A053644 (2 * n + 1) : ℚ) * (A053644 (n + 1) : ℚ)

end

end A025540.P2341602888505112473

namespace A025540

/-- `A003418(2*n)/A053644(2*n+1)*A053644(n+1)` -/
def P2341602888505112473.Spec : Prop :=
  ∀ n, P2341602888505112473.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P15878918007632024257

`A048619(2*n+1)/A048619(2*n)*A003418(2*n)`
-/

namespace A025540.P15878918007632024257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048619 (2 * n + 1) : ℚ) / (A048619 (2 * n) : ℚ) * (A003418 (2 * n) : ℚ)

end

end A025540.P15878918007632024257

namespace A025540

/-- `A048619(2*n+1)/A048619(2*n)*A003418(2*n)` -/
def P15878918007632024257.Spec : Prop :=
  ∀ n, P15878918007632024257.a n = (A025540 n : ℚ)

end A025540

/-! ## A025540.P3594199905984012714

`A119634(n)/A014963(2*n+1)`
-/

namespace A025540.P3594199905984012714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119634 n : ℚ) / (A014963 (2 * n + 1) : ℚ)

end

end A025540.P3594199905984012714

namespace A025540

/-- `A119634(n)/A014963(2*n+1)` -/
def P3594199905984012714.Spec : Prop :=
  ∀ n, P3594199905984012714.a n = (A025540 n : ℚ)

end A025540

/-!
# A025541: a(n) = (1/C(0,0) + 1/C(2,1) + ... + 1/C(2n,n))*L, where L = LCM{C(0,0), C(2,1),..., C(2n,n)}.

The programs for A025541, there is no canonical definition to state claims against.
-/

/-! ## A025541.P6497345153355025417

`A022838(A056604(n))`
-/

namespace A025541.P6497345153355025417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A056604 n).toNat

end

end A025541.P6497345153355025417

/-!
# A025542: (1/binomial(0,0) - 1/binomial(2,1) + ... + d/binomial(2n,n))*L, where d = (-1)^n, L = LCM{binomial(0,0), binomial(2,1),..., binomial(2n,n)}.

The programs for A025542, there is no canonical definition to state claims against.
-/

/-! ## A025542.P1954513023489337375

`A115063(n!²)%343`
-/

namespace A025542.P1954513023489337375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115063 (Nat.factorial n ^ 2)) 343

end

end A025542.P1954513023489337375

/-!
# A025543: Least common multiple of the first n composite numbers.

The programs for A025543, the canonical program `A025543.P5462002278886021902` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025543 has offset 0).

The definition of A025543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025543.P5462002278886021902

`lcm(a(n-1), A002808(n))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025543

/-- `lcm(a(n-1), A002808(n))` -/
def P5462002278886021902.Spec : Prop :=
  ∀ n, (P5462002278886021902.a n : ℤ) = A025543 n

theorem P5462002278886021902.correct : P5462002278886021902.Spec := by
  intro n
  simp only [A025543]

end A025543

/-! ## A025543.P17539979171205132744

`lcm(-a(n-1), sqrt(A062312(n+1)))` with `a(0)=1`
-/

namespace A025543.P17539979171205132744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ)))

end

end A025543.P17539979171205132744

namespace A025543

/-- `lcm(-a(n-1), sqrt(A062312(n+1)))` -/
def P17539979171205132744.Spec : Prop :=
  ∀ n, (P17539979171205132744.a n : ℤ) = A025543 n

end A025543

/-! ## A025543.P5524196491499506570

`lcm(abs(a(n-1)), comp[A014963(n+1)])` with `a(0)=1`
-/

namespace A025543.P5524196491499506570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A025543.P5524196491499506570

namespace A025543

/-- `lcm(abs(a(n-1)), comp[A014963(n+1)])` -/
def P5524196491499506570.Spec : Prop :=
  ∀ n, (P5524196491499506570.a n : ℤ) = A025543 n

end A025543

/-! ## A025543.P3237469114586290182

`lcm(ceil(a(n-1)), comp[A006530(n+1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A025543.P3237469114586290182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A025543.P3237469114586290182

namespace A025543

/-- `lcm(ceil(a(n-1)), comp[A006530(n+1)])` -/
def P3237469114586290182.Spec : Prop :=
  ∀ n, (P3237469114586290182.a n : ℤ) = A025543 n

end A025543

/-! ## A025543.P10275972972162243278

`lcm(round(a(n-1)), A073846(2*n+1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A025543.P10275972972162243278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A073846 (2 * n + 1))

end

end A025543.P10275972972162243278

namespace A025543

/-- `lcm(round(a(n-1)), A073846(2*n+1))` -/
def P10275972972162243278.Spec : Prop :=
  ∀ n, (P10275972972162243278.a n : ℤ) = A025543 n

end A025543

/-!
# A025544: a(n) = sum of the exponents in the prime factorization of the least common multiple of the first n composite numbers.

The programs for A025544, the canonical program `A025544.P11648437338997869476` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025544 has offset 1).

The definition of A025544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025544.P10213427148699842322

`∑[A001222(ratio[A025543(n)])]`
-/

namespace A025544.P10213427148699842322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025544.P10213427148699842322

namespace A025544

/-- `∑[A001222(ratio[A025543(n)])]` -/
def P10213427148699842322.Spec : Prop :=
  ∀ n, P10213427148699842322.a n = A025544 (n + 1)

end A025544

/-! ## A025544.P15434466758737607130

`∑[A018783(ratio[A025543(n)])]`
-/

namespace A025544.P15434466758737607130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025544.P15434466758737607130

namespace A025544

/-- `∑[A018783(ratio[A025543(n)])]` -/
def P15434466758737607130.Spec : Prop :=
  ∀ n, P15434466758737607130.a n = A025544 (n + 1)

end A025544

/-! ## A025544.P11648437338997869476

`∑[A032741(ratio[A025543(n)])]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A025544

/-- `∑[A032741(ratio[A025543(n)])]` -/
def P11648437338997869476.Spec : Prop :=
  ∀ n, P11648437338997869476.a n = A025544 (n + 1)

theorem P11648437338997869476.correct : P11648437338997869476.Spec := by
  intro n
  simp only [A025544, Nat.add_sub_cancel]

end A025544

/-! ## A025544.P2670030540252825274

`∑[A249810(ratio[A025543(n)])]`
-/

namespace A025544.P2670030540252825274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025544.P2670030540252825274

namespace A025544

/-- `∑[A249810(ratio[A025543(n)])]` -/
def P2670030540252825274.Spec : Prop :=
  ∀ n, P2670030540252825274.a n = A025544 (n + 1)

end A025544

/-! ## A025544.P2904452830006465777

`∑[A304793(ratio[A025543(n)])]`
-/

namespace A025544.P2904452830006465777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025544.P2904452830006465777

namespace A025544

/-- `∑[A304793(ratio[A025543(n)])]` -/
def P2904452830006465777.Spec : Prop :=
  ∀ n, P2904452830006465777.a n = A025544 (n + 1)

end A025544

/-! ## A025544.P16614293238152500736

`∑[A319162(ratio[A025543(n)])]`
-/

namespace A025544.P16614293238152500736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319162 (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025544.P16614293238152500736

namespace A025544

/-- `∑[A319162(ratio[A025543(n)])]` -/
def P16614293238152500736.Spec : Prop :=
  ∀ n, P16614293238152500736.a n = A025544 (n + 1)

end A025544

/-!
# A025545: a(n) = (1/4 + 1/6 + ... + 1/c(n))*LCM{4, 6, ..., c(n)}, where c(n) = n-th composite number.

The programs for A025545, there is no canonical definition to state claims against.
-/

/-! ## A025545.P8102515930534209634

`A184324(A058275(n))*A250133(n+1)`
-/

namespace A025545.P8102515930534209634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184324 (A058275 n).toNat * A250133 (n + 1)

end

end A025545.P8102515930534209634

/-! ## A025545.P1822793845175477743

`A250131(A006966(n))*A250133(n+1)`
-/

namespace A025545.P1822793845175477743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250131 (A006966 n).toNat * A250133 (n + 1)

end

end A025545.P1822793845175477743

/-! ## A025545.P5618430736430218436

`A241299(A061129(n))*A250133(n+1)`
-/

namespace A025545.P5618430736430218436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241299 (A061129 n).toNat * A250133 (n + 1)

end

end A025545.P5618430736430218436

/-! ## A025545.P3382858040820244180

`A250131(A136029(n))*A250133(n+1)`
-/

namespace A025545.P3382858040820244180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250131 (A136029 n).toNat * A250133 (n + 1)

end

end A025545.P3382858040820244180

/-!
# A025547: Least common multiple of {1,3,5,...,2n-1}.

The programs for A025547, the canonical program `A025547.P15181621528865327855` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025547 has offset 1).

The definition of A025547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025547.P15181621528865327855

`lcm(a(n-1), Δ[n²])` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025547

/-- `lcm(a(n-1), Δ[n²])` -/
def P15181621528865327855.Spec : Prop :=
  ∀ n, (P15181621528865327855.a n : ℤ) = A025547 (n + 1)

theorem P15181621528865327855.correct : P15181621528865327855.Spec := by
  intro n
  simp only [A025547, Nat.add_sub_cancel]

end A025547

/-! ## A025547.P12402544728724404018

`lcm(abs(a(n-1)), comp[2*n])` with `a(0)=1`
-/

namespace A025547.P12402544728724404018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A025547.P12402544728724404018

namespace A025547

/-- `lcm(abs(a(n-1)), comp[2*n])` -/
def P12402544728724404018.Spec : Prop :=
  ∀ n, (P12402544728724404018.a n : ℤ) = A025547 (n + 1)

end A025547

/-! ## A025547.P14138769762628737656

`lcm(2*n+1, a(abs(1-n)))` with `a(0)=1`
-/

namespace A025547.P14138769762628737656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (2 * n + 1) (a |1 - (n : ℤ)|.toNat)

end

end A025547.P14138769762628737656

namespace A025547

/-- `lcm(2*n+1, a(abs(1-n)))` -/
def P14138769762628737656.Spec : Prop :=
  ∀ n, (P14138769762628737656.a n : ℤ) = A025547 (n + 1)

end A025547

/-! ## A025547.P1067470022163559170

`lcm(n+1+n, -a(n-1))` with `a(0)=1`
-/

namespace A025547.P1067470022163559170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (n + 1 + n : ℤ) (-(a (n - 1) : ℤ))

end

end A025547.P1067470022163559170

namespace A025547

/-- `lcm(n+1+n, -a(n-1))` -/
def P1067470022163559170.Spec : Prop :=
  ∀ n, (P1067470022163559170.a n : ℤ) = A025547 (n + 1)

end A025547

/-! ## A025547.P225548953261324670

`lcm(1-(2*n)², floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A025547.P225548953261324670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (1 - ((2 * n) ^ 2 : ℤ)) (a (n - 1) : ℤ)

end

end A025547.P225548953261324670

namespace A025547

/-- `lcm(1-(2*n)², floor(a(n-1)))` -/
def P225548953261324670.Spec : Prop :=
  ∀ n, (P225548953261324670.a n : ℤ) = A025547 (n + 1)

end A025547

/-! ## A025547.P13040235602534350474

`(2*n+1)*a(n-1)/gcd(2*n+1, a(n-1))` with `a(0)=1`
-/

namespace A025547.P13040235602534350474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℚ) * (a (n - 1) / (Int.gcd (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A025547.P13040235602534350474

namespace A025547

/-- `(2*n+1)*a(n-1)/gcd(2*n+1, a(n-1))` -/
def P13040235602534350474.Spec : Prop :=
  ∀ n, P13040235602534350474.a n = (A025547 (n + 1) : ℚ)

end A025547

/-! ## A025547.P8055429347863041530

`A217858(Δ[n²])`
-/

namespace A025547.P8055429347863041530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217858 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A025547.P8055429347863041530

namespace A025547

/-- `A217858(Δ[n²])` -/
def P8055429347863041530.Spec : Prop :=
  ∀ n, P8055429347863041530.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P17557008825471174979

`∏[A014963(Δ[n²])]`
-/

namespace A025547.P17557008825471174979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025547.P17557008825471174979

namespace A025547

/-- `∏[A014963(Δ[n²])]` -/
def P17557008825471174979.Spec : Prop :=
  ∀ n, P17557008825471174979.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P2474953725507364887

`a(n-1)*A051417(n)` with `a(0)=1`
-/

namespace A025547.P2474953725507364887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A051417 n

end

end A025547.P2474953725507364887

namespace A025547

/-- `a(n-1)*A051417(n)` -/
def P2474953725507364887.Spec : Prop :=
  ∀ n, P2474953725507364887.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P16501643748736263257

`or(1, ∏[A014963(2*n+1)])`
-/

namespace A025547.P16501643748736263257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A025547.P16501643748736263257

namespace A025547

/-- `or(1, ∏[A014963(2*n+1)])` -/
def P16501643748736263257.Spec : Prop :=
  ∀ n, P16501643748736263257.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P13293896070825258099

`∏[A020639(A014963(comp[2*n]))]`
-/

namespace A025547.P13293896070825258099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025547.P13293896070825258099

namespace A025547

/-- `∏[A020639(A014963(comp[2*n]))]` -/
def P13293896070825258099.Spec : Prop :=
  ∀ n, P13293896070825258099.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P2091118443427363395

`∏[A006530(A014963(2*n+1))]`
-/

namespace A025547.P2091118443427363395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014963 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025547.P2091118443427363395

namespace A025547

/-- `∏[A006530(A014963(2*n+1))]` -/
def P2091118443427363395.Spec : Prop :=
  ∀ n, P2091118443427363395.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P11334820581120784491

`∏[A089026(A007947(2*n+1))]`
-/

namespace A025547.P11334820581120784491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A007947 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025547.P11334820581120784491

namespace A025547

/-- `∏[A089026(A007947(2*n+1))]` -/
def P11334820581120784491.Spec : Prop :=
  ∀ n, P11334820581120784491.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P1172721918629181062

`∏[A006530(A100994(2*n+1))]`
-/

namespace A025547.P1172721918629181062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100994 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025547.P1172721918629181062

namespace A025547

/-- `∏[A006530(A100994(2*n+1))]` -/
def P1172721918629181062.Spec : Prop :=
  ∀ n, P1172721918629181062.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P17762740059076371209

`∏[A006530(A133790(2*n+1))]`
-/

namespace A025547.P17762740059076371209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A133790 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025547.P17762740059076371209

namespace A025547

/-- `∏[A006530(A133790(2*n+1))]` -/
def P17762740059076371209.Spec : Prop :=
  ∀ n, P17762740059076371209.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P10289733430684611900

`lcm(A290344(2*n+1), A290344(n))`
-/

namespace A025547.P10289733430684611900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A290344 (2 * n + 1)) (A290344 n)

end

end A025547.P10289733430684611900

namespace A025547

/-- `lcm(A290344(2*n+1), A290344(n))` -/
def P10289733430684611900.Spec : Prop :=
  ∀ n, (P10289733430684611900.a n : ℤ) = A025547 (n + 1)

end A025547

/-! ## A025547.P2269289062220961440

`∏[∑{d}[A014963(2*n+1), A000010(#)]]`
-/

namespace A025547.P2269289062220961440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025547.P2269289062220961440

namespace A025547

/-- `∏[∑{d}[A014963(2*n+1), A000010(#)]]` -/
def P2269289062220961440.Spec : Prop :=
  ∀ n, P2269289062220961440.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P8751937745144842204

`∏[A014963(2*n+1)^A001221(2*n+1)]`
-/

namespace A025547.P8751937745144842204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (2 * n + 1) : ℚ) ^ (A001221 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025547.P8751937745144842204

namespace A025547

/-- `∏[A014963(2*n+1)^A001221(2*n+1)]` -/
def P8751937745144842204.Spec : Prop :=
  ∀ n, P8751937745144842204.a n = (A025547 (n + 1) : ℚ)

end A025547

/-! ## A025547.P14669369564821671777

`∏[A014963(2*n+1)%A000040(2*n+1)]`
-/

namespace A025547.P14669369564821671777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (2 * n + 1)) (A000040 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025547.P14669369564821671777

namespace A025547

/-- `∏[A014963(2*n+1)%A000040(2*n+1)]` -/
def P14669369564821671777.Spec : Prop :=
  ∀ n, P14669369564821671777.a n = A025547 (n + 1)

end A025547

/-! ## A025547.P4551875512627527913

`∏[gcd(A006530(2*n+1), A020639(2*n+1))]`
-/

namespace A025547.P4551875512627527913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (2 * n + 1)) (A020639 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025547.P4551875512627527913

namespace A025547

/-- `∏[gcd(A006530(2*n+1), A020639(2*n+1))]` -/
def P4551875512627527913.Spec : Prop :=
  ∀ n, (P4551875512627527913.a n : ℤ) = A025547 (n + 1)

end A025547

/-!
# A025548: a(n) = sum of the exponents in the prime factorization of the least common multiple of {1,3,5,...,2n-1}.

The programs for A025548, the canonical program `A025548.P434905137110478948` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025548 has offset 1).

The definition of A025548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025548.P434905137110478948

`∑[A069513(2*n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025548

/-- `∑[A069513(2*n+1)]` -/
def P434905137110478948.Spec : Prop :=
  ∀ n, P434905137110478948.a n = A025548 (n + 1)

theorem P434905137110478948.correct : P434905137110478948.Spec := by
  intro n
  simp only [A025548, Nat.add_sub_cancel]

end A025548

/-! ## A025548.P4102876022207594290

`∑[A211487(2*n+1)]`
-/

namespace A025548.P4102876022207594290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P4102876022207594290

namespace A025548

/-- `∑[A211487(2*n+1)]` -/
def P4102876022207594290.Spec : Prop :=
  ∀ n, P4102876022207594290.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P11558395657245763355

`∑[A340373(2*n+1)]`
-/

namespace A025548.P11558395657245763355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P11558395657245763355

namespace A025548

/-- `∑[A340373(2*n+1)]` -/
def P11558395657245763355.Spec : Prop :=
  ∀ n, P11558395657245763355.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P16252278027962427013

`∑[A340363(2*n+1)]-1`
-/

namespace A025548.P16252278027962427013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025548.P16252278027962427013

namespace A025548

/-- `∑[A340363(2*n+1)]-1` -/
def P16252278027962427013.Spec : Prop :=
  ∀ n, P16252278027962427013.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P6753123606538320874

`∑[1-A354108(2*n+1)]`
-/

namespace A025548.P6753123606538320874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A354108 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P6753123606538320874

namespace A025548

/-- `∑[1-A354108(2*n+1)]` -/
def P6753123606538320874.Spec : Prop :=
  ∀ n, P6753123606538320874.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P16187389815472497188

`∑[A354923(2*n+1)]-1`
-/

namespace A025548.P16187389815472497188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354923 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025548.P16187389815472497188

namespace A025548

/-- `∑[A354923(2*n+1)]-1` -/
def P16187389815472497188.Spec : Prop :=
  ∀ n, P16187389815472497188.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P10985030813987678697

`∑[A354924(2*n+1)]-1`
-/

namespace A025548.P10985030813987678697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025548.P10985030813987678697

namespace A025548

/-- `∑[A354924(2*n+1)]-1` -/
def P10985030813987678697.Spec : Prop :=
  ∀ n, P10985030813987678697.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P4003321691160047395

`∑[A174275(2*n+1)]`
-/

namespace A025548.P4003321691160047395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P4003321691160047395

namespace A025548

/-- `∑[A174275(2*n+1)]` -/
def P4003321691160047395.Spec : Prop :=
  ∀ n, P4003321691160047395.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P15241917130871469417

`∑[A000007(A070536(2*n+1))]`
-/

namespace A025548.P15241917130871469417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A070536 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P15241917130871469417

namespace A025548

/-- `∑[A000007(A070536(2*n+1))]` -/
def P15241917130871469417.Spec : Prop :=
  ∀ n, P15241917130871469417.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P15306263726227299453

`A327247(Δ[n²])`
-/

namespace A025548.P15306263726227299453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A025548.P15306263726227299453

namespace A025548

/-- `A327247(Δ[n²])` -/
def P15306263726227299453.Spec : Prop :=
  ∀ n, P15306263726227299453.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P13433235577672951301

`A378500(2*(n+1))`
-/

namespace A025548.P13433235577672951301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378500 (2 * (n + 1))

end

end A025548.P13433235577672951301

namespace A025548

/-- `A378500(2*(n+1))` -/
def P13433235577672951301.Spec : Prop :=
  ∀ n, P13433235577672951301.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P13087820747979751949

`A378500(Δ[n²])-2`
-/

namespace A025548.P13087820747979751949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378500 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A025548.P13087820747979751949

namespace A025548

/-- `A378500(Δ[n²])-2` -/
def P13087820747979751949.Spec : Prop :=
  ∀ n, P13087820747979751949.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P9333907582147526748

`∑[A010055(2*n+1)]-1`
-/

namespace A025548.P9333907582147526748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025548.P9333907582147526748

namespace A025548

/-- `∑[A010055(2*n+1)]-1` -/
def P9333907582147526748.Spec : Prop :=
  ∀ n, P9333907582147526748.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P14552419897261248570

`∑[val(A105561(2*n+1), 2)]`
-/

namespace A025548.P14552419897261248570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105561 (2 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P14552419897261248570

namespace A025548

/-- `∑[val(A105561(2*n+1), 2)]` -/
def P14552419897261248570.Spec : Prop :=
  ∀ n, (P14552419897261248570.a n : ℤ) = A025548 (n + 1)

end A025548

/-! ## A025548.P18411731265787305474

`n-∑[A143731(2*n+1)]`
-/

namespace A025548.P18411731265787305474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P18411731265787305474

namespace A025548

/-- `n-∑[A143731(2*n+1)]` -/
def P18411731265787305474.Spec : Prop :=
  ∀ n, P18411731265787305474.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P17706187232399387068

`∑[∑{e}[A014963(2*n+1), #]]`
-/

namespace A025548.P17706187232399387068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P17706187232399387068

namespace A025548

/-- `∑[∑{e}[A014963(2*n+1), #]]` -/
def P17706187232399387068.Spec : Prop :=
  ∀ n, (P17706187232399387068.a n : ℤ) = A025548 (n + 1)

end A025548

/-! ## A025548.P4958789259759057160

`A327247(2*(n+1))%(n+1)`
-/

namespace A025548.P4958789259759057160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327247 (2 * (n + 1))) (n + 1 : ℤ)

end

end A025548.P4958789259759057160

namespace A025548

/-- `A327247(2*(n+1))%(n+1)` -/
def P4958789259759057160.Spec : Prop :=
  ∀ n, P4958789259759057160.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P13128920998636197839

`∑[A001222(A014963(Δ[n²]))]`
-/

namespace A025548.P13128920998636197839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P13128920998636197839

namespace A025548

/-- `∑[A001222(A014963(Δ[n²]))]` -/
def P13128920998636197839.Spec : Prop :=
  ∀ n, P13128920998636197839.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P16242885077428667300

`∑[A001221(A014963(2*n+1))]`
-/

namespace A025548.P16242885077428667300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014963 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P16242885077428667300

namespace A025548

/-- `∑[A001221(A014963(2*n+1))]` -/
def P16242885077428667300.Spec : Prop :=
  ∀ n, P16242885077428667300.a n = A025548 (n + 1)

end A025548

/-! ## A025548.P4997729382054048319

`∑[A001221(A100994(2*n+1))]`
-/

namespace A025548.P4997729382054048319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100994 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P4997729382054048319

namespace A025548

/-- `∑[A001221(A100994(2*n+1))]` -/
def P4997729382054048319.Spec : Prop :=
  ∀ n, P4997729382054048319.a n = A025548 (n + 1)

end A025548

/-!
# A025549: a(n) = (2n-1)!!/lcm{1,3,5,...,2n-1}.

The programs for A025549, the canonical program `A025549.P1239006941153393355` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025549 has offset 1).

The definition of A025549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025547, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025549.P1239006941153393355

`A001147(n+1)/A025547(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025549

/-- `A001147(n+1)/A025547(n+1)` -/
def P1239006941153393355.Spec : Prop :=
  ∀ n, P1239006941153393355.a n = (A025549 (n + 1) : ℚ)

end A025549

/-! ## A025549.P16827163842131366429

`∏[A048671(2*n+1)]`
-/

namespace A025549.P16827163842131366429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025549.P16827163842131366429

namespace A025549

/-- `∏[A048671(2*n+1)]` -/
def P16827163842131366429.Spec : Prop :=
  ∀ n, P16827163842131366429.a n = A025549 (n + 1)

end A025549

/-! ## A025549.P17260680534259630983

`∏[gcd(Δ[n²], A003418(n))]`
-/

namespace A025549.P17260680534259630983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (A003418 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025549.P17260680534259630983

namespace A025549

/-- `∏[gcd(Δ[n²], A003418(n))]` -/
def P17260680534259630983.Spec : Prop :=
  ∀ n, (P17260680534259630983.a n : ℤ) = A025549 (n + 1)

end A025549

/-! ## A025549.P2936777056350421605

`∏[(2*n+1)/A014963(comp[2*n])]`
-/

namespace A025549.P2936777056350421605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025549.P2936777056350421605

namespace A025549

/-- `∏[(2*n+1)/A014963(comp[2*n])]` -/
def P2936777056350421605.Spec : Prop :=
  ∀ n, P2936777056350421605.a n = (A025549 (n + 1) : ℚ)

end A025549

/-! ## A025549.P13242196637700763727

`∏[gcd(2*n+1, ∏[A014963(n+1)])]`
-/

namespace A025549.P13242196637700763727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025549.P13242196637700763727

namespace A025549

/-- `∏[gcd(2*n+1, ∏[A014963(n+1)])]` -/
def P13242196637700763727.Spec : Prop :=
  ∀ n, (P13242196637700763727.a n : ℤ) = A025549 (n + 1)

end A025549

/-! ## A025549.P8550560916464346263

`(2*n+1)*a(n-1)/A014963(Δ[n²])` with `a(0)=1`
-/

namespace A025549.P8550560916464346263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℚ) * (a (n - 1) / (A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ))

end

end A025549.P8550560916464346263

namespace A025549

/-- `(2*n+1)*a(n-1)/A014963(Δ[n²])` -/
def P8550560916464346263.Spec : Prop :=
  ∀ n, P8550560916464346263.a n = (A025549 (n + 1) : ℚ)

end A025549

/-! ## A025549.P2520752066629463596

`(2*n+1)/A014963(2*n+1)*a(n-1)` with `a(0)=1`
-/

namespace A025549.P2520752066629463596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℚ) / (A014963 (2 * n + 1) : ℚ) * a (n - 1)

end

end A025549.P2520752066629463596

namespace A025549

/-- `(2*n+1)/A014963(2*n+1)*a(n-1)` -/
def P2520752066629463596.Spec : Prop :=
  ∀ n, P2520752066629463596.a n = (A025549 (n + 1) : ℚ)

end A025549

/-! ## A025549.P17063870714207805042

`∏[gcd(A003418(n), A005408(n))]`
-/

namespace A025549.P17063870714207805042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A005408 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025549.P17063870714207805042

namespace A025549

/-- `∏[gcd(A003418(n), A005408(n))]` -/
def P17063870714207805042.Spec : Prop :=
  ∀ n, (P17063870714207805042.a n : ℤ) = A025549 (n + 1)

end A025549

/-! ## A025549.P671994553208417093

`∏[(4*n+2)/A004277(A014963(2*n+1))]`
-/

namespace A025549.P671994553208417093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℚ) / (A004277 (A014963 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025549.P671994553208417093

namespace A025549

/-- `∏[(4*n+2)/A004277(A014963(2*n+1))]` -/
def P671994553208417093.Spec : Prop :=
  ∀ n, P671994553208417093.a n = (A025549 (n + 1) : ℚ)

end A025549

/-! ## A025549.P14399506771431979036

`∏[A008585(2*n+1)/A008585(A014963(2*n+1))]`
-/

namespace A025549.P14399506771431979036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (2 * n + 1) : ℚ) / (A008585 (A014963 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025549.P14399506771431979036

namespace A025549

/-- `∏[A008585(2*n+1)/A008585(A014963(2*n+1))]` -/
def P14399506771431979036.Spec : Prop :=
  ∀ n, P14399506771431979036.a n = (A025549 (n + 1) : ℚ)

end A025549

/-!
# A025550: a(n) = ( 1/1 + 1/3 + 1/5 + ... + 1/(2*n-1) )*LCM(1, 3, 5, ..., 2*n-1).

The programs for A025550, there is no canonical definition to state claims against.
-/

/-! ## A025550.P18101072578855569831

`A074599(n+1)/2`
-/

namespace A025550.P18101072578855569831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074599 (n + 1) : ℚ) / 2

end

end A025550.P18101072578855569831

/-! ## A025550.P9284672234089075393

`A004041(n)/A025549(n+1)`
-/

namespace A025550.P9284672234089075393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004041 n : ℚ) / (A025549 (n + 1) : ℚ)

end

end A025550.P9284672234089075393

/-! ## A025550.P3904763777604394262

`A109692(A034856(n+1))/A025549(n+1)`
-/

namespace A025550.P3904763777604394262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109692 (A034856 (n + 1)).toNat : ℚ) / (A025549 (n + 1) : ℚ)

end

end A025550.P3904763777604394262

/-! ## A025550.P11869858748910456424

`A028338(A134869(n+1))/A025549(n+1)`
-/

namespace A025550.P11869858748910456424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028338 (A134869 (n + 1)).toNat : ℚ) / (A025549 (n + 1) : ℚ)

end

end A025550.P11869858748910456424

/-! ## A025550.P7706479709799979940

`record[A035048(n+1)%A305520(n+1)]`
-/

namespace A025550.P7706479709799979940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035048 (n + 1)) (A305520 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025550.P7706479709799979940

/-!
# A025551: a(n) = 3^n*(3^n + 1)/2.

The programs for A025551, the canonical program `A025551.P139496393551194041` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025551 has offset 0).

The definition of A025551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(3^n+1)/2` (program `A025551.P17930647892363061690`, by `A025551.P17930647892363061690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025551.P11106112919452327396

`C(3^n+1, 2)`
-/

namespace A025551.P11106112919452327396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 ^ n + 1) 2

end

end A025551.P11106112919452327396

namespace A025551

/-- `C(3^n+1, 2)` -/
def P11106112919452327396.Spec : Prop :=
  ∀ n, (P11106112919452327396.a n : ℤ) = A025551 n

end A025551

/-! ## A025551.P17930647892363061690

`3^n*(3^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A025551.P17930647892363061690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * (3 ^ n + 1) : ℚ) / 2

end

end A025551.P17930647892363061690

namespace A025551

/-- `3^n*(3^n+1)/2` -/
def P17930647892363061690.Spec : Prop :=
  ∀ n, P17930647892363061690.a n = (A025551 n : ℚ)

theorem P17930647892363061690.correct : P17930647892363061690.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A025551, Nat.add_sub_cancel, A025551.P17930647892363061690.a, A025551.P139496393551194041.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A025551, Nat.add_sub_cancel, A025551.P17930647892363061690.a, A025551.P139496393551194041.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A025551

/-! ## A025551.P139496393551194041

`12*a(n-1)-27*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025551

/-- `12*a(n-1)-27*a(n-2)` -/
def P139496393551194041.Spec : Prop :=
  ∀ n, P139496393551194041.a n = A025551 n

theorem P139496393551194041.correct : P139496393551194041.Spec := by
  intro n
  simp only [A025551]

end A025551

/-! ## A025551.P4737287871126064778

`lcm(3^n, ceil(3^n/2))`
-/

namespace A025551.P4737287871126064778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) ⌈(3 ^ n : ℚ) / 2⌉

end

end A025551.P4737287871126064778

namespace A025551

/-- `lcm(3^n, ceil(3^n/2))` -/
def P4737287871126064778.Spec : Prop :=
  ∀ n, (P4737287871126064778.a n : ℤ) = A025551 n

end A025551

/-! ## A025551.P3523054962339817644

`9*a(n-1)-3^n` with `a(0)=1`
-/

namespace A025551.P3523054962339817644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - (3 ^ n : ℤ)

end

end A025551.P3523054962339817644

namespace A025551

/-- `9*a(n-1)-3^n` -/
def P3523054962339817644.Spec : Prop :=
  ∀ n, P3523054962339817644.a n = A025551 n

end A025551

/-! ## A025551.P3591437237549289839

`A001444(2*n)`
-/

namespace A025551.P3591437237549289839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 (2 * n)

end

end A025551.P3591437237549289839

namespace A025551

/-- `A001444(2*n)` -/
def P3591437237549289839.Spec : Prop :=
  ∀ n, P3591437237549289839.a n = A025551 n

end A025551

/-! ## A025551.P11266463856198748120

`A032120(2*n)`
-/

namespace A025551.P11266463856198748120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 (2 * n)

end

end A025551.P11266463856198748120

namespace A025551

/-- `A032120(2*n)` -/
def P11266463856198748120.Spec : Prop :=
  ∀ n, P11266463856198748120.a n = A025551 n

end A025551

/-! ## A025551.P4824575783053180501

`A323845(Δ[n²])`
-/

namespace A025551.P4824575783053180501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323845 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A025551.P4824575783053180501

namespace A025551

/-- `A323845(Δ[n²])` -/
def P4824575783053180501.Spec : Prop :=
  ∀ n, P4824575783053180501.a n = A025551 n

end A025551

/-! ## A025551.P7596477267778619555

`A026121(n)+3^n`
-/

namespace A025551.P7596477267778619555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026121 n + (3 ^ n : ℤ)

end

end A025551.P7596477267778619555

namespace A025551

/-- `A026121(n)+3^n` -/
def P7596477267778619555.Spec : Prop :=
  ∀ n, P7596477267778619555.a n = A025551 n

end A025551

/-! ## A025551.P2140182364683873952

`3^n*A007051(n)`
-/

namespace A025551.P2140182364683873952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A007051 n

end

end A025551.P2140182364683873952

namespace A025551

/-- `3^n*A007051(n)` -/
def P2140182364683873952.Spec : Prop :=
  ∀ n, P2140182364683873952.a n = A025551 n

end A025551

/-! ## A025551.P2990667576660864699

`3^n*A124302(n+1)`
-/

namespace A025551.P2990667576660864699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A124302 (n + 1)

end

end A025551.P2990667576660864699

namespace A025551

/-- `3^n*A124302(n+1)` -/
def P2990667576660864699.Spec : Prop :=
  ∀ n, P2990667576660864699.a n = A025551 n

end A025551

/-! ## A025551.P7488372723813674005

`A102518(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025551.P7488372723813674005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102518 n + 3 * a (n - 1)

end

end A025551.P7488372723813674005

namespace A025551

/-- `A102518(n)+3*a(n-1)` -/
def P7488372723813674005.Spec : Prop :=
  ∀ n, P7488372723813674005.a n = A025551 n

end A025551

/-! ## A025551.P3641678162662080716

`A191681(n)+A007051(n)`
-/

namespace A025551.P3641678162662080716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n + A007051 n

end

end A025551.P3641678162662080716

namespace A025551

/-- `A191681(n)+A007051(n)` -/
def P3641678162662080716.Spec : Prop :=
  ∀ n, P3641678162662080716.a n = A025551 n

end A025551

/-! ## A025551.P5149148704472531690

`∩[A001444(n), A032120(n)]`
-/

namespace A025551.P5149148704472531690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025551.P5149148704472531690

namespace A025551

/-- `∩[A001444(n), A032120(n)]` -/
def P5149148704472531690.Spec : Prop :=
  ∀ n, (P5149148704472531690.a n : ℤ) = A025551 n

end A025551

/-! ## A025551.P1198217043265926538

`A125857(n+1)+A051500(n)`
-/

namespace A025551.P1198217043265926538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125857 (n + 1) + A051500 n

end

end A025551.P1198217043265926538

namespace A025551

/-- `A125857(n+1)+A051500(n)` -/
def P1198217043265926538.Spec : Prop :=
  ∀ n, P1198217043265926538.a n = A025551 n

end A025551

/-! ## A025551.P11146174919774453045

`A003462(n)+A191681(n)+1`
-/

namespace A025551.P11146174919774453045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A191681 n + 1)

end

end A025551.P11146174919774453045

namespace A025551

/-- `A003462(n)+A191681(n)+1` -/
def P11146174919774453045.Spec : Prop :=
  ∀ n, P11146174919774453045.a n = A025551 n

end A025551

/-! ## A025551.P15840545016847517602

`A191681(n)+A124302(n+1)`
-/

namespace A025551.P15840545016847517602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n + A124302 (n + 1)

end

end A025551.P15840545016847517602

namespace A025551

/-- `A191681(n)+A124302(n+1)` -/
def P15840545016847517602.Spec : Prop :=
  ∀ n, P15840545016847517602.a n = A025551 n

end A025551

/-! ## A025551.P7351955260161337183

`A007051(n)+A083884(n)-1`
-/

namespace A025551.P7351955260161337183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (A083884 n - 1)

end

end A025551.P7351955260161337183

namespace A025551

/-- `A007051(n)+A083884(n)-1` -/
def P7351955260161337183.Spec : Prop :=
  ∀ n, P7351955260161337183.a n = A025551 n

end A025551

/-! ## A025551.P2306556286507584790

`A007051(n)*A133494(n+1)`
-/

namespace A025551.P2306556286507584790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n * A133494 (n + 1)

end

end A025551.P2306556286507584790

namespace A025551

/-- `A007051(n)*A133494(n+1)` -/
def P2306556286507584790.Spec : Prop :=
  ∀ n, P2306556286507584790.a n = A025551 n

end A025551

/-! ## A025551.P14642878304280277016

`A007051(2*n)+A003462(n)`
-/

namespace A025551.P14642878304280277016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n) + A003462 n

end

end A025551.P14642878304280277016

namespace A025551

/-- `A007051(2*n)+A003462(n)` -/
def P14642878304280277016.Spec : Prop :=
  ∀ n, P14642878304280277016.a n = A025551 n

end A025551

/-!
# A025552: LCM of {C(0,0), C(1,0), ..., C(n, floor(n/2))}.

The programs for A025552, the canonical program `A025552.P3815081426643614201` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025552 has offset 0).

The definition of A025552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025552.P3815081426643614201

`lcm(C(n, floor(n/2)), a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025552

/-- `lcm(C(n, floor(n/2)), a(n-1))` -/
def P3815081426643614201.Spec : Prop :=
  ∀ n, (P3815081426643614201.a n : ℤ) = A025552 n

theorem P3815081426643614201.correct : P3815081426643614201.Spec := by
  intro n
  simp only [A025552]

end A025552

/-! ## A025552.P2921252063859412552

`lcm(-a(n-1), C(n, round(n/2)))` with `a(0)=1`
-/

namespace A025552.P2921252063859412552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (Nat.choose n (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat : ℤ)

end

end A025552.P2921252063859412552

namespace A025552

/-- `lcm(-a(n-1), C(n, round(n/2)))` -/
def P2921252063859412552.Spec : Prop :=
  ∀ n, (P2921252063859412552.a n : ℤ) = A025552 n

end A025552

/-! ## A025552.P3193607266982096973

`lcm(a(n-1), A001405(n))` with `a(0)=1`
-/

namespace A025552.P3193607266982096973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A001405 n)

end

end A025552.P3193607266982096973

namespace A025552

/-- `lcm(a(n-1), A001405(n))` -/
def P3193607266982096973.Spec : Prop :=
  ∀ n, (P3193607266982096973.a n : ℤ) = A025552 n

end A025552

/-! ## A025552.P7094685147280513839

`a(n-1)*A014963(xor(1, n)+1)` with `a(0)=1`
-/

namespace A025552.P7094685147280513839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (Nat.xor 1 n + 1)

end

end A025552.P7094685147280513839

namespace A025552

/-- `a(n-1)*A014963(xor(1, n)+1)` -/
def P7094685147280513839.Spec : Prop :=
  ∀ n, P7094685147280513839.a n = A025552 n

end A025552

/-! ## A025552.P4685406395208235488

`a(n-1)*A014963(-xor(n, -2))` with `a(0)=1`
-/

namespace A025552.P4685406395208235488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (-Int.xor (n : ℤ) (-2)).toNat

end

end A025552.P4685406395208235488

namespace A025552

/-- `a(n-1)*A014963(-xor(n, -2))` -/
def P4685406395208235488.Spec : Prop :=
  ∀ n, P4685406395208235488.a n = A025552 n

end A025552

/-! ## A025552.P17574641825395938635

`a(n-1)*A014963(2-xor(1, 1-n))` with `a(0)=1`
-/

namespace A025552.P17574641825395938635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A025552.P17574641825395938635

namespace A025552

/-- `a(n-1)*A014963(2-xor(1, 1-n))` -/
def P17574641825395938635.Spec : Prop :=
  ∀ n, P17574641825395938635.a n = A025552 n

end A025552

/-! ## A025552.P16364251882226632437

`a(n-1)*A014963(n+2-2*and(1, n))` with `a(0)=1`
-/

namespace A025552.P16364251882226632437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (n + 2 - 2 * Nat.land 1 n)

end

end A025552.P16364251882226632437

namespace A025552

/-- `a(n-1)*A014963(n+2-2*and(1, n))` -/
def P16364251882226632437.Spec : Prop :=
  ∀ n, P16364251882226632437.a n = A025552 n

end A025552

/-! ## A025552.P4978121621709755496

`gcd(A003418(n), A025555(n+1))`
-/

namespace A025552.P4978121621709755496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A025555 (n + 1))

end

end A025552.P4978121621709755496

namespace A025552

/-- `gcd(A003418(n), A025555(n+1))` -/
def P4978121621709755496.Spec : Prop :=
  ∀ n, (P4978121621709755496.a n : ℤ) = A025552 n

end A025552

/-! ## A025552.P2429671610129747292

`A003418(n)/gcd(2, A027449(n+2))`
-/

namespace A025552.P2429671610129747292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (Int.gcd 2 (A027449 (n + 2)) : ℚ)

end

end A025552.P2429671610129747292

namespace A025552

/-- `A003418(n)/gcd(2, A027449(n+2))` -/
def P2429671610129747292.Spec : Prop :=
  ∀ n, P2429671610129747292.a n = (A025552 n : ℚ)

end A025552

/-!
# A025554: a(n) = (Sum_{i=0..n-1} (-1)^i/b(i)) * LCM{b(i): i=0..n-1}, where b(i) = C(i,floor(i/2)).

The programs for A025554, there is no canonical definition to state claims against.
-/

/-! ## A025554.P14472036088424798332

`A261096(A143619(n²))`
-/

namespace A025554.P14472036088424798332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261096 (A143619 (n ^ 2)).toNat

end

end A025554.P14472036088424798332

/-! ## A025554.P12483408714468188215

`A340320(A002494(n))-A337684(n+1)`
-/

namespace A025554.P12483408714468188215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340320 (A002494 n).toNat - A337684 (n + 1)

end

end A025554.P12483408714468188215

/-! ## A025554.P16880740398170115157

`A002487(A322389(n+1)+A054926(n+1))`
-/

namespace A025554.P16880740398170115157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A322389 (n + 1) + A054926 (n + 1)).toNat

end

end A025554.P16880740398170115157

/-!
# A025555: Least common multiple (or LCM) of first n positive triangular numbers (A000217).

The programs for A025555, the canonical program `A025555.P5835364197176450911` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025555 has offset 1).

The definition of A025555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025555.P5835364197176450911

`A003418(n+2)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025555

/-- `A003418(n+2)/2` -/
def P5835364197176450911.Spec : Prop :=
  ∀ n, P5835364197176450911.a n = (A025555 (n + 1) : ℚ)

end A025555

/-! ## A025555.P11733236471023388276

`lcm(a(n-1), ∑[n+1])` with `a(0)=1`
-/

namespace A025555.P11733236471023388276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025555.P11733236471023388276

namespace A025555

/-- `lcm(a(n-1), ∑[n+1])` -/
def P11733236471023388276.Spec : Prop :=
  ∀ n, (P11733236471023388276.a n : ℤ) = A025555 (n + 1)

end A025555

/-! ## A025555.P14958846081975644651

`lcm(C(n+2, 2), -a(n-1))` with `a(0)=1`
-/

namespace A025555.P14958846081975644651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (Nat.choose (n + 2) 2 : ℤ) (-(a (n - 1) : ℤ))

end

end A025555.P14958846081975644651

namespace A025555

/-- `lcm(C(n+2, 2), -a(n-1))` -/
def P14958846081975644651.Spec : Prop :=
  ∀ n, (P14958846081975644651.a n : ℤ) = A025555 (n + 1)

end A025555

/-! ## A025555.P16901747683720605981

`lcm(n+2, 2*a(n-1))/2` with `a(0)=1`
-/

namespace A025555.P16901747683720605981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n + 2 : ℤ) (SequenceMachineLib.roundAway (2 * a (n - 1))) : ℚ) / 2

end

end A025555.P16901747683720605981

namespace A025555

/-- `lcm(n+2, 2*a(n-1))/2` -/
def P16901747683720605981.Spec : Prop :=
  ∀ n, P16901747683720605981.a n = (A025555 (n + 1) : ℚ)

end A025555

/-! ## A025555.P16576113532787378929

`∏[A265574(n+1)]`
-/

namespace A025555.P16576113532787378929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025555.P16576113532787378929

namespace A025555

/-- `∏[A265574(n+1)]` -/
def P16576113532787378929.Spec : Prop :=
  ∀ n, P16576113532787378929.a n = A025555 (n + 1)

end A025555

/-! ## A025555.P9679181136108575242

`A051426(n+2)/4`
-/

namespace A025555.P9679181136108575242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (n + 2) : ℚ) / 4

end

end A025555.P9679181136108575242

namespace A025555

/-- `A051426(n+2)/4` -/
def P9679181136108575242.Spec : Prop :=
  ∀ n, P9679181136108575242.a n = (A025555 (n + 1) : ℚ)

end A025555

/-! ## A025555.P17147190691753109428

`ceil(A070198(n+1)/2)`
-/

namespace A025555.P17147190691753109428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070198 (n + 1) : ℚ) / 2⌉

end

end A025555.P17147190691753109428

namespace A025555

/-- `ceil(A070198(n+1)/2)` -/
def P17147190691753109428.Spec : Prop :=
  ∀ n, P17147190691753109428.a n = A025555 (n + 1)

end A025555

/-! ## A025555.P7800405769830749383

`Δ[A173185(n+1)/2]`
-/

namespace A025555.P7800405769830749383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173185 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025555.P7800405769830749383

namespace A025555

/-- `Δ[A173185(n+1)/2]` -/
def P7800405769830749383.Spec : Prop :=
  ∀ n, P7800405769830749383.a n = (A025555 (n + 1) : ℚ)

end A025555

/-! ## A025555.P7801583523912183414

`Δ[A236856(n+1)/2]`
-/

namespace A025555.P7801583523912183414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236856 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025555.P7801583523912183414

namespace A025555

/-- `Δ[A236856(n+1)/2]` -/
def P7801583523912183414.Spec : Prop :=
  ∀ n, P7801583523912183414.a n = (A025555 (n + 1) : ℚ)

end A025555

/-! ## A025555.P6212836526116081796

`∏[A014963(n+2)]/2`
-/

namespace A025555.P6212836526116081796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A025555.P6212836526116081796

namespace A025555

/-- `∏[A014963(n+2)]/2` -/
def P6212836526116081796.Spec : Prop :=
  ∀ n, P6212836526116081796.a n = (A025555 (n + 1) : ℚ)

end A025555

/-! ## A025555.P4442340418975159613

`∏[A020500(n+2)]/2`
-/

namespace A025555.P4442340418975159613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A025555.P4442340418975159613

namespace A025555

/-- `∏[A020500(n+2)]/2` -/
def P4442340418975159613.Spec : Prop :=
  ∀ n, P4442340418975159613.a n = (A025555 (n + 1) : ℚ)

end A025555

/-! ## A025555.P12251262061597817110

`A174554(n+2)/2-1`
-/

namespace A025555.P12251262061597817110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174554 (n + 2) : ℚ) / 2 - 1

end

end A025555.P12251262061597817110

namespace A025555

/-- `A174554(n+2)/2-1` -/
def P12251262061597817110.Spec : Prop :=
  ∀ n, P12251262061597817110.a n = (A025555 (n + 1) : ℚ)

end A025555

/-! ## A025555.P7702611218241731383

`a(n-1)*A051543(n)` with `a(0)=1`
-/

namespace A025555.P7702611218241731383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A051543 n

end

end A025555.P7702611218241731383

namespace A025555

/-- `a(n-1)*A051543(n)` -/
def P7702611218241731383.Spec : Prop :=
  ∀ n, P7702611218241731383.a n = A025555 (n + 1)

end A025555

/-! ## A025555.P11957279239749554643

`∏[A014963(ceil(sin(n)²)+n+1)]`
-/

namespace A025555.P11957279239749554643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (⌈Real.sin (n : ℝ) ^ 2⌉ + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025555.P11957279239749554643

namespace A025555

/-- `∏[A014963(ceil(sin(n)²)+n+1)]` -/
def P11957279239749554643.Spec : Prop :=
  ∀ n, P11957279239749554643.a n = A025555 (n + 1)

end A025555

/-! ## A025555.P1256974092557843282

`a(n-1)*A014963(4/2+n)` with `a(0)=1`
-/

namespace A025555.P1256974092557843282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ))).toNat

end

end A025555.P1256974092557843282

namespace A025555

/-- `a(n-1)*A014963(4/2+n)` -/
def P1256974092557843282.Spec : Prop :=
  ∀ n, P1256974092557843282.a n = A025555 (n + 1)

end A025555

/-! ## A025555.P9497334829356536175

`∏[A014963(∏{p}[2*n+1-abs(1-n), #])]`
-/

namespace A025555.P9497334829356536175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - |1 - (n : ℤ)|)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025555.P9497334829356536175

namespace A025555

/-- `∏[A014963(∏{p}[2*n+1-abs(1-n), #])]` -/
def P9497334829356536175.Spec : Prop :=
  ∀ n, P9497334829356536175.a n = A025555 (n + 1)

end A025555

/-! ## A025555.P13849810603709666945

`∏[A014963(2*n+1-(n-1)%(n+1))]`
-/

namespace A025555.P13849810603709666945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((2 * n + 1 : ℤ) - Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025555.P13849810603709666945

namespace A025555

/-- `∏[A014963(2*n+1-(n-1)%(n+1))]` -/
def P13849810603709666945.Spec : Prop :=
  ∀ n, P13849810603709666945.a n = A025555 (n + 1)

end A025555

/-! ## A025555.P14624088338074670235

`floor(a(n-1)*A014963(2*n-(n-2)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A025555.P14624088338074670235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

end

end A025555.P14624088338074670235

namespace A025555

/-- `floor(a(n-1)*A014963(2*n-(n-2)))` -/
def P14624088338074670235.Spec : Prop :=
  ∀ n, P14624088338074670235.a n = A025555 (n + 1)

end A025555

/-! ## A025555.P17658204590086540985

`lcm(A025552(n), A242172(n))`
-/

namespace A025555.P17658204590086540985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025552 n) (A242172 n)

end

end A025555.P17658204590086540985

namespace A025555

/-- `lcm(A025552(n), A242172(n))` -/
def P17658204590086540985.Spec : Prop :=
  ∀ n, (P17658204590086540985.a n : ℤ) = A025555 (n + 1)

end A025555

/-! ## A025555.P5042076221785097575

`A051451(A065515(n+2))/2`
-/

namespace A025555.P5042076221785097575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051451 (A065515 (n + 2)).toNat : ℚ) / 2

end

end A025555.P5042076221785097575

namespace A025555

/-- `A051451(A065515(n+2))/2` -/
def P5042076221785097575.Spec : Prop :=
  ∀ n, P5042076221785097575.a n = (A025555 (n + 1) : ℚ)

end A025555

/-!
# A025556: a(n) = sum of the exponents in the prime factorization of LCM{1,3,6,...,C(n+1,2)}.

The programs for A025556, the canonical program `A025556.P8005776244439152155` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025556 has offset 1).

The definition of A025556 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025556.P8005776244439152155

`A025528(n+2)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025556

/-- `A025528(n+2)-1` -/
def P8005776244439152155.Spec : Prop :=
  ∀ n, P8005776244439152155.a n = A025556 (n + 1)

theorem P8005776244439152155.correct : P8005776244439152155.Spec := by
  intro n
  simp only [A025556, Nat.add_sub_cancel]

end A025556

/-! ## A025556.P1257329323726685634

`A065515(n+2)-2`
-/

namespace A025556.P1257329323726685634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 2) - 2

end

end A025556.P1257329323726685634

namespace A025556

/-- `A065515(n+2)-2` -/
def P1257329323726685634.Spec : Prop :=
  ∀ n, P1257329323726685634.a n = A025556 (n + 1)

theorem P1257329323726685634.correct : P1257329323726685634.Spec := by
  intro n
  simp only [A025556, Nat.add_sub_cancel, A025556.P1257329323726685634.a, A025556.P8005776244439152155.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A065515, A065515.P15129427044826637405.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025556

/-! ## A025556.P3573293343312240178

`n-A085970(n+2)`
-/

namespace A025556.P3573293343312240178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A085970 (n + 2)

end

end A025556.P3573293343312240178

namespace A025556

/-- `n-A085970(n+2)` -/
def P3573293343312240178.Spec : Prop :=
  ∀ n, P3573293343312240178.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P9865306286947536075

`∑[A010055(n+2)]-1`
-/

namespace A025556.P9865306286947536075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025556.P9865306286947536075

namespace A025556

/-- `∑[A010055(n+2)]-1` -/
def P9865306286947536075.Spec : Prop :=
  ∀ n, P9865306286947536075.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P5021302089518475682

`∑[A069513(n+2)]-1`
-/

namespace A025556.P5021302089518475682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025556.P5021302089518475682

namespace A025556

/-- `∑[A069513(n+2)]-1` -/
def P5021302089518475682.Spec : Prop :=
  ∀ n, P5021302089518475682.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P7196472142948965984

`n-∑[A143731(n+2)]`
-/

namespace A025556.P7196472142948965984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025556.P7196472142948965984

namespace A025556

/-- `n-∑[A143731(n+2)]` -/
def P7196472142948965984.Spec : Prop :=
  ∀ n, P7196472142948965984.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P3269601098753268866

`∑[char[∑[A275120(n+2)]]]`
-/

namespace A025556.P3269601098753268866
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025556.P3269601098753268866

namespace A025556

/-- `∑[char[∑[A275120(n+2)]]]` -/
def P3269601098753268866.Spec : Prop :=
  ∀ n, (P3269601098753268866.a n : ℤ) = A025556 (n + 1)

end A025556

/-! ## A025556.P13878871651206781832

`n+1-A356068(n+2)`
-/

namespace A025556.P13878871651206781832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A356068 (n + 2)

end

end A025556.P13878871651206781832

namespace A025556

/-- `n+1-A356068(n+2)` -/
def P13878871651206781832.Spec : Prop :=
  ∀ n, P13878871651206781832.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P1688693138953395707

`∑[A010051(∏{p}[n+2, #])]-1`
-/

namespace A025556.P1688693138953395707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025556.P1688693138953395707

namespace A025556

/-- `∑[A010051(∏{p}[n+2, #])]-1` -/
def P1688693138953395707.Spec : Prop :=
  ∀ n, P1688693138953395707.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P18312089461888194415

`∑[A345064(∏{p}[n+2, #])]-1`
-/

namespace A025556.P18312089461888194415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345064 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025556.P18312089461888194415

namespace A025556

/-- `∑[A345064(∏{p}[n+2, #])]-1` -/
def P18312089461888194415.Spec : Prop :=
  ∀ n, P18312089461888194415.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P12730005857503036772

`∑[char[lt[1, A014963(n+1)]-1]]-1`
-/

namespace A025556.P12730005857503036772
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A025556.P12730005857503036772

namespace A025556

/-- `∑[char[lt[1, A014963(n+1)]-1]]-1` -/
def P12730005857503036772.Spec : Prop :=
  ∀ n, P12730005857503036772.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P7719638536152513705

`A023444(A065515(n+2))`
-/

namespace A025556.P7719638536152513705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A065515 (n + 2)).toNat

end

end A025556.P7719638536152513705

namespace A025556

/-- `A023444(A065515(n+2))` -/
def P7719638536152513705.Spec : Prop :=
  ∀ n, P7719638536152513705.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P17806102764151322162

`A334655(A031218(n+2))`
-/

namespace A025556.P17806102764151322162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334655 (A031218 (n + 2)).toNat

end

end A025556.P17806102764151322162

namespace A025556

/-- `A334655(A031218(n+2))` -/
def P17806102764151322162.Spec : Prop :=
  ∀ n, P17806102764151322162.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P12141765758358526466

`∑[A001222(A014963(n+2))]-1`
-/

namespace A025556.P12141765758358526466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025556.P12141765758358526466

namespace A025556

/-- `∑[A001222(A014963(n+2))]-1` -/
def P12141765758358526466.Spec : Prop :=
  ∀ n, P12141765758358526466.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P8547409894452093417

`∑[A001221(A100994(n+2))]-1`
-/

namespace A025556.P8547409894452093417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100994 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025556.P8547409894452093417

namespace A025556

/-- `∑[A001221(A100994(n+2))]-1` -/
def P8547409894452093417.Spec : Prop :=
  ∀ n, P8547409894452093417.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P8056740539446218784

`n-∑[A001221(A007875(n+2))]`
-/

namespace A025556.P8056740539446218784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007875 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025556.P8056740539446218784

namespace A025556

/-- `n-∑[A001221(A007875(n+2))]` -/
def P8056740539446218784.Spec : Prop :=
  ∀ n, P8056740539446218784.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P12640793286301783152

`n-∑[A001222(A076820(n+2))]`
-/

namespace A025556.P12640793286301783152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076820 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025556.P12640793286301783152

namespace A025556

/-- `n-∑[A001222(A076820(n+2))]` -/
def P12640793286301783152.Spec : Prop :=
  ∀ n, P12640793286301783152.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P2942172352795995946

`n-∑[A001222(A119288(n+2))]`
-/

namespace A025556.P2942172352795995946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A119288 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025556.P2942172352795995946

namespace A025556

/-- `n-∑[A001222(A119288(n+2))]` -/
def P2942172352795995946.Spec : Prop :=
  ∀ n, P2942172352795995946.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P9027305225883260916

`A069637(n+2)+A033270(n+2)`
-/

namespace A025556.P9027305225883260916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069637 (n + 2) + A033270 (n + 2)

end

end A025556.P9027305225883260916

namespace A025556

/-- `A069637(n+2)+A033270(n+2)` -/
def P9027305225883260916.Spec : Prop :=
  ∀ n, P9027305225883260916.a n = A025556 (n + 1)

end A025556

/-! ## A025556.P4219187069284450573

`∑[A000045(∑[n]%A014963(n+2))]`
-/

namespace A025556.P4219187069284450573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A014963 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025556.P4219187069284450573

namespace A025556

/-- `∑[A000045(∑[n]%A014963(n+2))]` -/
def P4219187069284450573.Spec : Prop :=
  ∀ n, P4219187069284450573.a n = A025556 (n + 1)

end A025556

/-!
# A025557: a(n) = (n+1)!/LCM{1,3,6,...,C(n+1,2)}.

The programs for A025557, there is no canonical definition to state claims against.
-/

/-! ## A025557.P13747603643998146352

`2*A025527(n+2)`
-/

namespace A025557.P13747603643998146352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025527 (n + 2)

end

end A025557.P13747603643998146352

/-! ## A025557.P2252641588928352305

`2*∏[A048671(n+2)]`
-/

namespace A025557.P2252641588928352305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A025557.P2252641588928352305

/-! ## A025557.P10460279377521695524

`2*∏[(n+2)/A014963(n+2)]`
-/

namespace A025557.P10460279377521695524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A014963 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A025557.P10460279377521695524

/-! ## A025557.P18145632229251205816

`2*A056612(n+2)/A110566(n+2)`
-/

namespace A025557.P18145632229251205816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A056612 (n + 2) : ℚ) / (A110566 (n + 2) : ℚ))

end

end A025557.P18145632229251205816

/-! ## A025557.P6068998484708923981

`2*gcd(A025562(n+2), A056612(n+2))`
-/

namespace A025557.P6068998484708923981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A025562 (n + 2)) (A056612 (n + 2))

end

end A025557.P6068998484708923981

/-! ## A025557.P11729305550543640321

`2*A024419(n+1)/A025534(n+1)`
-/

namespace A025557.P11729305550543640321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A024419 (n + 1) : ℚ) / (A025534 (n + 1) : ℚ))

end

end A025557.P11729305550543640321

/-! ## A025557.P11009177724391447987

`2*A024420(n+1)/A025536(n+1)`
-/

namespace A025557.P11009177724391447987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A024420 (n + 1) : ℚ) / (A025536 (n + 1) : ℚ))

end

end A025557.P11009177724391447987

/-! ## A025557.P15385074411190878222

`2*A000142(n+1)/A002944(n+2)`
-/

namespace A025557.P15385074411190878222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000142 (n + 1) : ℚ) / (A002944 (n + 2) : ℚ))

end

end A025557.P15385074411190878222

/-! ## A025557.P3353617700755401365

`gcd((n+2)*a(n-1), Δ[(n+1)*a(n-1)])` with `a(0)=2`
-/

namespace A025557.P3353617700755401365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.gcd ((n + 2) * a (n - 1) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A025557.P3353617700755401365

/-! ## A025557.P4442113034025153017

`∏[n+2]/A025555(n+1)`
-/

namespace A025557.P4442113034025153017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A025555 (n + 1) : ℚ)

end

end A025557.P4442113034025153017

/-!
# A025558: a(n) = (n/(n+1)) * lcm(1,2,...,n+1).

The programs for A025558, the canonical program `A025558.P5691983144712648619` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025558 has offset 1).

The definition of A025558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025558.P5691983144712648619

`(n+1)*A002944(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025558

/-- `(n+1)*A002944(n+2)` -/
def P5691983144712648619.Spec : Prop :=
  ∀ n, P5691983144712648619.a n = A025558 (n + 1)

theorem P5691983144712648619.correct : P5691983144712648619.Spec := by
  intro n
  simp only [A025558, Nat.add_sub_cancel]

end A025558

/-! ## A025558.P9464218921975559082

`(n+1)/(n+2)*A003418(n+2)`
-/

namespace A025558.P9464218921975559082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 2 : ℚ) * (A003418 (n + 2) : ℚ)

end

end A025558.P9464218921975559082

namespace A025558

/-- `(n+1)/(n+2)*A003418(n+2)` -/
def P9464218921975559082.Spec : Prop :=
  ∀ n, P9464218921975559082.a n = (A025558 (n + 1) : ℚ)

end A025558

/-! ## A025558.P5531755176524517425

`(n+1)²*A099946(n+2)`
-/

namespace A025558.P5531755176524517425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A099946 (n + 2)

end

end A025558.P5531755176524517425

namespace A025558

/-- `(n+1)²*A099946(n+2)` -/
def P5531755176524517425.Spec : Prop :=
  ∀ n, P5531755176524517425.a n = A025558 (n + 1)

end A025558

/-! ## A025558.P12551492798585837605

`A003418(n+2)/ratio[n+1]`
-/

namespace A025558.P12551492798585837605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 2) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A025558.P12551492798585837605

namespace A025558

/-- `A003418(n+2)/ratio[n+1]` -/
def P12551492798585837605.Spec : Prop :=
  ∀ n, P12551492798585837605.a n = (A025558 (n + 1) : ℚ)

end A025558

/-! ## A025558.P18083573774063185197

`∏[A014963(n+2)]/ratio[n+1]`
-/

namespace A025558.P18083573774063185197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A025558.P18083573774063185197

namespace A025558

/-- `∏[A014963(n+2)]/ratio[n+1]` -/
def P18083573774063185197.Spec : Prop :=
  ∀ n, P18083573774063185197.a n = (A025558 (n + 1) : ℚ)

end A025558

/-! ## A025558.P10583406215374469015

`A379561(n+1)-A027457(n+2)`
-/

namespace A025558.P10583406215374469015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379561 (n + 1) - A027457 (n + 2)

end

end A025558.P10583406215374469015

namespace A025558

/-- `A379561(n+1)-A027457(n+2)` -/
def P10583406215374469015.Spec : Prop :=
  ∀ n, P10583406215374469015.a n = A025558 (n + 1)

theorem P10583406215374469015.correct : P10583406215374469015.Spec := by
  intro n
  simp only [A025558, Nat.add_sub_cancel, A025558.P10583406215374469015.a, A025558.P5691983144712648619.a, A002944, A002944.P11615207776596987764.a, A027457, A027457.P5210784852604014020.f1, A027457.P5210784852604014020.a, A379561, A379561.P6001539951614561260.a, A003418, A003418.P6976248655893080794.a, A025529, A025529.P10152674282350827364.f1, A025529.P10152674282350827364.f2, A025529.P10152674282350827364.a, A173185, A173185.P11378797572863628532.f1, A173185.P11378797572863628532.a, A014963, A014963.P5975177236000282614.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025558

/-! ## A025558.P2710501810561157795

`A003418(n+2)-A002944(n+2)`
-/

namespace A025558.P2710501810561157795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 2) - A002944 (n + 2)

end

end A025558.P2710501810561157795

namespace A025558

/-- `A003418(n+2)-A002944(n+2)` -/
def P2710501810561157795.Spec : Prop :=
  ∀ n, P2710501810561157795.a n = A025558 (n + 1)

end A025558

/-! ## A025558.P16581445162917961374

`lcm(A099946(n+2), A133900(n+1))`
-/

namespace A025558.P16581445162917961374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099946 (n + 2)) (A133900 (n + 1))

end

end A025558.P16581445162917961374

namespace A025558

/-- `lcm(A099946(n+2), A133900(n+1))` -/
def P16581445162917961374.Spec : Prop :=
  ∀ n, (P16581445162917961374.a n : ℤ) = A025558 (n + 1)

end A025558

/-! ## A025558.P13036936553660560683

`A001405(n+1)*(n+1)*A048619(n+1)`
-/

namespace A025558.P13036936553660560683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) * (n + 1 : ℤ) * A048619 (n + 1)

end

end A025558.P13036936553660560683

namespace A025558

/-- `A001405(n+1)*(n+1)*A048619(n+1)` -/
def P13036936553660560683.Spec : Prop :=
  ∀ n, P13036936553660560683.a n = A025558 (n + 1)

end A025558

/-! ## A025558.P17548315551483502662

`A025529(n+2)-(A027457(n+2)+A002944(n+2))`
-/

namespace A025558.P17548315551483502662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 2) - (A027457 (n + 2) + A002944 (n + 2))

end

end A025558.P17548315551483502662

namespace A025558

/-- `A025529(n+2)-(A027457(n+2)+A002944(n+2))` -/
def P17548315551483502662.Spec : Prop :=
  ∀ n, P17548315551483502662.a n = A025558 (n + 1)

end A025558

/-! ## A025558.P1701318018192767845

`(A083268(n+2)-A038610(n+2))*A133910(n+2)`
-/

namespace A025558.P1701318018192767845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083268 (n + 2) - A038610 (n + 2)) * A133910 (n + 2)

end

end A025558.P1701318018192767845

namespace A025558

/-- `(A083268(n+2)-A038610(n+2))*A133910(n+2)` -/
def P1701318018192767845.Spec : Prop :=
  ∀ n, P1701318018192767845.a n = A025558 (n + 1)

end A025558

/-! ## A025558.P5276798585674124479

`lcm(A002944(n+2), A064446(n+2))-A002944(n+2)`
-/

namespace A025558.P5276798585674124479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002944 (n + 2)) (A064446 (n + 2)) : ℤ) - A002944 (n + 2)

end

end A025558.P5276798585674124479

namespace A025558

/-- `lcm(A002944(n+2), A064446(n+2))-A002944(n+2)` -/
def P5276798585674124479.Spec : Prop :=
  ∀ n, P5276798585674124479.a n = A025558 (n + 1)

end A025558

/-! ## A025558.P12957208045809818379

`A081528(n+1)/A048671(n+2)`
-/

namespace A025558.P12957208045809818379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081528 (n + 1) : ℚ) / (A048671 (n + 2) : ℚ)

end

end A025558.P12957208045809818379

namespace A025558

/-- `A081528(n+1)/A048671(n+2)` -/
def P12957208045809818379.Spec : Prop :=
  ∀ n, P12957208045809818379.a n = (A025558 (n + 1) : ℚ)

end A025558

/-! ## A025558.P8653203298290341603

`A027451(n+2)/A099946(n+2)`
-/

namespace A025558.P8653203298290341603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027451 (n + 2) : ℚ) / (A099946 (n + 2) : ℚ)

end

end A025558.P8653203298290341603

namespace A025558

/-- `A027451(n+2)/A099946(n+2)` -/
def P8653203298290341603.Spec : Prop :=
  ∀ n, P8653203298290341603.a n = (A025558 (n + 1) : ℚ)

end A025558

/-!
# A025559: a(n) = (1/1 - 1/3 + 1/6 + ... + d/C(n+1,2))*LCM{1,3,6,...,C(n+1,2)}, where d = (-1)^n.

The programs for A025559, there is no canonical definition to state claims against.
-/

/-! ## A025559.P1383770851591616830

`A142983(n+1)/A025527(n+2)`
-/

namespace A025559.P1383770851591616830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142983 (n + 1) : ℚ) / (A025527 (n + 2) : ℚ)

end

end A025559.P1383770851591616830

/-! ## A025559.P9451774284327542482

`2/A025557(n+1)*A142983(n+1)`
-/

namespace A025559.P9451774284327542482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A025557 (n + 1) : ℚ) * (A142983 (n + 1) : ℚ)

end

end A025559.P9451774284327542482

/-! ## A025559.P11092899549642456690

`(A087301(n+2)-A024168(n+2))/A025527(n+2)`
-/

namespace A025559.P11092899549642456690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087301 (n + 2) - A024168 (n + 2) : ℚ) / (A025527 (n + 2) : ℚ)

end

end A025559.P11092899549642456690

/-! ## A025559.P13252506874658803454

`2*(A087301(n+2)-A024168(n+2))/A025557(n+1)`
-/

namespace A025559.P13252506874658803454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A087301 (n + 2) - A024168 (n + 2) : ℚ) / (A025557 (n + 1) : ℚ))

end

end A025559.P13252506874658803454

/-! ## A025559.P9816230911486136633

`A142983(n+1)/A014682(A025557(n+1))`
-/

namespace A025559.P9816230911486136633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142983 (n + 1) : ℚ) / (A014682 (A025557 (n + 1)).toNat : ℚ)

end

end A025559.P9816230911486136633

/-!
# A025560: a(n) = LCM{1, C(n-1,1), C(n-2,2), ..., C(n-[ n/2 ],[ n/2 ])}.

The programs for A025560, the canonical program `A025560.P2323280330716802304` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025560 has offset 1).

The definition of A025560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025560.P2323280330716802304

`lcm(lcm(n, C(n, 2)), a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025560

/-- `lcm(lcm(n, C(n, 2)), a(n-2))` -/
def P2323280330716802304.Spec : Prop :=
  ∀ n, (P2323280330716802304.a n : ℤ) = A025560 (n + 1)

theorem P2323280330716802304.correct : P2323280330716802304.Spec := by
  intro n
  simp only [A025560, Nat.add_sub_cancel]

end A025560

/-! ## A025560.P8246656799857945819

`lcm(2*a(n-2), lcm(2*n, a(n-1)))/2` with `a(0)=1, a(1)=1`
-/

namespace A025560.P8246656799857945819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway (2 * a (n - 2))) (Int.lcm (2 * n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ) : ℚ) / 2

end

end A025560.P8246656799857945819

namespace A025560

/-- `lcm(2*a(n-2), lcm(2*n, a(n-1)))/2` -/
def P8246656799857945819.Spec : Prop :=
  ∀ n, P8246656799857945819.a n = (A025560 (n + 1) : ℚ)

end A025560

/-! ## A025560.P6289143237853697975

`A073618(n+1)`
-/

namespace A025560.P6289143237853697975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073618 (n + 1)

end

end A025560.P6289143237853697975

namespace A025560

/-- `A073618(n+1)` -/
def P6289143237853697975.Spec : Prop :=
  ∀ n, P6289143237853697975.a n = A025560 (n + 1)

end A025560

/-! ## A025560.P2185045797018208241

`ceil(A003418(n)/(n%2+1))`
-/

namespace A025560.P2185045797018208241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003418 n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌉

end

end A025560.P2185045797018208241

namespace A025560

/-- `ceil(A003418(n)/(n%2+1))` -/
def P2185045797018208241.Spec : Prop :=
  ∀ n, P2185045797018208241.a n = A025560 (n + 1)

end A025560

/-! ## A025560.P6036221979364260474

`lcm(a(n-2), A002944(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A025560.P6036221979364260474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (a (n - 2) : ℤ) (A002944 (n + 1))

end

end A025560.P6036221979364260474

namespace A025560

/-- `lcm(a(n-2), A002944(n+1))` -/
def P6036221979364260474.Spec : Prop :=
  ∀ n, (P6036221979364260474.a n : ℤ) = A025560 (n + 1)

end A025560

/-! ## A025560.P12124273954507177203

`ceil(A003418(n)/A000034(n))`
-/

namespace A025560.P12124273954507177203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003418 n : ℚ) / (A000034 n : ℚ)⌉

end

end A025560.P12124273954507177203

namespace A025560

/-- `ceil(A003418(n)/A000034(n))` -/
def P12124273954507177203.Spec : Prop :=
  ∀ n, P12124273954507177203.a n = A025560 (n + 1)

end A025560

/-! ## A025560.P11743217677107427939

`ceil((A075059(n)-1)/A000034(n))`
-/

namespace A025560.P11743217677107427939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075059 n - 1 : ℚ) / (A000034 n : ℚ)⌉

end

end A025560.P11743217677107427939

namespace A025560

/-- `ceil((A075059(n)-1)/A000034(n))` -/
def P11743217677107427939.Spec : Prop :=
  ∀ n, P11743217677107427939.a n = A025560 (n + 1)

end A025560

/-! ## A025560.P12461432223647584573

`A003418(n)/gcd(2, A048671(n+1))`
-/

namespace A025560.P12461432223647584573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (Int.gcd 2 (A048671 (n + 1)) : ℚ)

end

end A025560.P12461432223647584573

namespace A025560

/-- `A003418(n)/gcd(2, A048671(n+1))` -/
def P12461432223647584573.Spec : Prop :=
  ∀ n, P12461432223647584573.a n = (A025560 (n + 1) : ℚ)

end A025560

/-! ## A025560.P18159978116585207736

`ceil((A195507(n+1)-(n+1))/A000034(n))`
-/

namespace A025560.P18159978116585207736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195507 (n + 1) - (n + 1 : ℤ) : ℚ) / (A000034 n : ℚ)⌉

end

end A025560.P18159978116585207736

namespace A025560

/-- `ceil((A195507(n+1)-(n+1))/A000034(n))` -/
def P18159978116585207736.Spec : Prop :=
  ∀ n, P18159978116585207736.a n = A025560 (n + 1)

end A025560

/-! ## A025560.P1285108314964669251

`ceil(A003418(n)/A014963(A006519(n+1)))`
-/

namespace A025560.P1285108314964669251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003418 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)⌉

end

end A025560.P1285108314964669251

namespace A025560

/-- `ceil(A003418(n)/A014963(A006519(n+1)))` -/
def P1285108314964669251.Spec : Prop :=
  ∀ n, P1285108314964669251.a n = A025560 (n + 1)

end A025560

/-! ## A025560.P18328467816323208605

`ceil(A003418(n)/A006519(A020639(n+1)))`
-/

namespace A025560.P18328467816323208605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003418 n : ℚ) / (A006519 (A020639 (n + 1)).toNat : ℚ)⌉

end

end A025560.P18328467816323208605

namespace A025560

/-- `ceil(A003418(n)/A006519(A020639(n+1)))` -/
def P18328467816323208605.Spec : Prop :=
  ∀ n, P18328467816323208605.a n = A025560 (n + 1)

end A025560

/-! ## A025560.P11564893967303034210

`ceil(A056040(n)/A000034(n)*A180000(n))`
-/

namespace A025560.P11564893967303034210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056040 n : ℚ) / (A000034 n : ℚ) * (A180000 n : ℚ)⌉

end

end A025560.P11564893967303034210

namespace A025560

/-- `ceil(A056040(n)/A000034(n)*A180000(n))` -/
def P11564893967303034210.Spec : Prop :=
  ∀ n, P11564893967303034210.a n = A025560 (n + 1)

end A025560

/-! ## A025560.P2035224780752394901

`A003418(n)/A003989(∑[n-1]+3)`
-/

namespace A025560.P2035224780752394901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A003989 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat : ℚ)

end

end A025560.P2035224780752394901

namespace A025560

/-- `A003418(n)/A003989(∑[n-1]+3)` -/
def P2035224780752394901.Spec : Prop :=
  ∀ n, P2035224780752394901.a n = (A025560 (n + 1) : ℚ)

end A025560

/-! ## A025560.P6148276245002005315

`ceil(A003418(n)/A006519(n²+1))`
-/

namespace A025560.P6148276245002005315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003418 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)⌉

end

end A025560.P6148276245002005315

namespace A025560

/-- `ceil(A003418(n)/A006519(n²+1))` -/
def P6148276245002005315.Spec : Prop :=
  ∀ n, P6148276245002005315.a n = A025560 (n + 1)

end A025560

/-!
# A025561: a(n) = sum of the exponents in the prime factorization of LCM{1, n-1, ..., C(n-[ n/2 ],[ n/2 ])}.

The programs for A025561, the canonical program `A025561.P1153676137757357368` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025561 has offset 1).

The definition of A025561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1927 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025561.P1153676137757357368

`A025528(A028310(n))-n²%A152271(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025561

/-- `A025528(A028310(n))-n²%A152271(n)` -/
def P1153676137757357368.Spec : Prop :=
  ∀ n, P1153676137757357368.a n = A025561 (n + 1)

theorem P1153676137757357368.correct : P1153676137757357368.Spec := by
  intro n
  simp only [A025561, Nat.add_sub_cancel]

end A025561

/-! ## A025561.P15004741088455704513

`A025528(A233583(n+1))-A163805(n)²`
-/

namespace A025561.P15004741088455704513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A233583 (n + 1)).toNat - A163805 n ^ 2

end

end A025561.P15004741088455704513

namespace A025561

/-- `A025528(A233583(n+1))-A163805(n)²` -/
def P15004741088455704513.Spec : Prop :=
  ∀ n, P15004741088455704513.a n = A025561 (n + 1)

end A025561

/-! ## A025561.P6461072845022928382

`A025528(A233583(n+1))-char[A004273(n)]`
-/

namespace A025561.P6461072845022928382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A233583 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025561.P6461072845022928382

namespace A025561

/-- `A025528(A233583(n+1))-char[A004273(n)]` -/
def P6461072845022928382.Spec : Prop :=
  ∀ n, P6461072845022928382.a n = A025561 (n + 1)

end A025561

/-! ## A025561.P4763049936809628411

`A025528(A233583(n+1))-char[A030101(n)]`
-/

namespace A025561.P4763049936809628411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A233583 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025561.P4763049936809628411

namespace A025561

/-- `A025528(A233583(n+1))-char[A030101(n)]` -/
def P4763049936809628411.Spec : Prop :=
  ∀ n, P4763049936809628411.a n = A025561 (n + 1)

end A025561

/-! ## A025561.P13726182031507432319

`A025528(A233583(n+1))-A028310(n)%2`
-/

namespace A025561.P13726182031507432319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A233583 (n + 1)).toNat - Int.tmod (A028310 n) 2

end

end A025561.P13726182031507432319

namespace A025561

/-- `A025528(A233583(n+1))-A028310(n)%2` -/
def P13726182031507432319.Spec : Prop :=
  ∀ n, P13726182031507432319.a n = A025561 (n + 1)

end A025561

/-! ## A025561.P711620466302660714

`A025528(A233583(n+1))-(A315208(n)+A008585(n))%2`
-/

namespace A025561.P711620466302660714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A233583 (n + 1)).toNat - Int.tmod (A315208 n + A008585 n) 2

end

end A025561.P711620466302660714

namespace A025561

/-- `A025528(A233583(n+1))-(A315208(n)+A008585(n))%2` -/
def P711620466302660714.Spec : Prop :=
  ∀ n, P711620466302660714.a n = A025561 (n + 1)

end A025561

/-! ## A025561.P3471073809466870813

`A025528(A233583(n+1))-A277936(n)%2`
-/

namespace A025561.P3471073809466870813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A233583 (n + 1)).toNat - Int.tmod (A277936 n) 2

end

end A025561.P3471073809466870813

namespace A025561

/-- `A025528(A233583(n+1))-A277936(n)%2` -/
def P3471073809466870813.Spec : Prop :=
  ∀ n, P3471073809466870813.a n = A025561 (n + 1)

end A025561

/-! ## A025561.P2923845282354506360

`A025528(A233583(n+1))-A267355(A002620(n))`
-/

namespace A025561.P2923845282354506360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A233583 (n + 1)).toNat - A267355 (A002620 n).toNat

end

end A025561.P2923845282354506360

namespace A025561

/-- `A025528(A233583(n+1))-A267355(A002620(n))` -/
def P2923845282354506360.Spec : Prop :=
  ∀ n, P2923845282354506360.a n = A025561 (n + 1)

end A025561

/-!
# A025562: a(n) = n!/LCM{1, C(n-1,1), C(n-2,2), ..., C(n-[ n/2 ],[ n/2 ])}.

The programs for A025562, there is no canonical definition to state claims against.
-/

/-! ## A025562.P16044160717434155819

`A000142(n)/A073618(n)`
-/

namespace A025562.P16044160717434155819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A073618 n : ℚ)

end

end A025562.P16044160717434155819

/-! ## A025562.P9823529123286068690

`A358446(n)/A025563(n)`
-/

namespace A025562.P9823529123286068690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358446 n : ℚ) / (A025563 n : ℚ)

end

end A025562.P9823529123286068690

/-! ## A025562.P7743504503459647305

`A007662(n)*A177764(A006720(n))`
-/

namespace A025562.P7743504503459647305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 n * A177764 (A006720 n).toNat

end

end A025562.P7743504503459647305

/-! ## A025562.P15440095564036041894

`A007662(n)*A334948(A213427(n+1))`
-/

namespace A025562.P15440095564036041894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 n * A334948 (A213427 (n + 1)).toNat

end

end A025562.P15440095564036041894

/-!
# A025564: Triangular array, read by rows: pairwise sums of trinomial array A027907.

The programs for A025564, there is no canonical definition to state claims against.
-/

/-! ## A025564.P1108087888647749479

`2*A027907(n)-A025177(n)`
-/

namespace A025564.P1108087888647749479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027907 n - A025177 n

end

end A025564.P1108087888647749479

/-! ## A025564.P18009347465570215570

`2*A169623(A161983(n))-A025177(n)`
-/

namespace A025564.P18009347465570215570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169623 (A161983 n).toNat - A025177 n

end

end A025564.P18009347465570215570

/-! ## A025564.P11545829103535503949

`2*A169623(A316670(n+1))-A025177(n)`
-/

namespace A025564.P11545829103535503949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169623 (A316670 (n + 1)).toNat - A025177 n

end

end A025564.P11545829103535503949

/-! ## A025564.P537243491416036613

`2*A169623(A007606(n+1)-1)-A025177(n)`
-/

namespace A025564.P537243491416036613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169623 (A007606 (n + 1) - 1).toNat - A025177 n

end

end A025564.P537243491416036613

/-! ## A025564.P2422569924030035719

`A169623(A316670(n+1))+A027907(n)-A025177(n)`
-/

namespace A025564.P2422569924030035719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A316670 (n + 1)).toNat + (A027907 n - A025177 n)

end

end A025564.P2422569924030035719

/-! ## A025564.P12194334328502461234

`2*A169623(A005843(n)-A196199(n))-A025177(n)`
-/

namespace A025564.P12194334328502461234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169623 (A005843 n - A196199 n).toNat - A025177 n

end

end A025564.P12194334328502461234

/-! ## A025564.P2832002714571479052

`2*A169623(A316965(n)+1)-A025177(n)`
-/

namespace A025564.P2832002714571479052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169623 (A316965 n + 1).toNat - A025177 n

end

end A025564.P2832002714571479052

/-! ## A025564.P12335108023813895050

`A004277(A027907(n))-A025177(n)`
-/

namespace A025564.P12335108023813895050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A027907 n).toNat - A025177 n

end

end A025564.P12335108023813895050

/-!
# A025565: a(n) = T(n,n-1), where T is array defined in A025564.

The programs for A025565, the canonical program `A025565.P15020973864699713191` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025565 has offset 1).

The definition of A025565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025565.P16671330115299865348

`abs(A085455(n))`
-/

namespace A025565.P16671330115299865348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085455 n|

end

end A025565.P16671330115299865348

namespace A025565

/-- `abs(A085455(n))` -/
def P16671330115299865348.Spec : Prop :=
  ∀ n, P16671330115299865348.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P5021310968759195739

`∑[A105696(n)]`
-/

namespace A025565.P5021310968759195739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025565.P5021310968759195739

namespace A025565

/-- `∑[A105696(n)]` -/
def P5021310968759195739.Spec : Prop :=
  ∀ n, P5021310968759195739.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P6575982507682318125

`A167022(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025565.P6575982507682318125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167022 n + 3 * a (n - 1)

end

end A025565.P6575982507682318125

namespace A025565

/-- `A167022(n)+3*a(n-1)` -/
def P6575982507682318125.Spec : Prop :=
  ∀ n, P6575982507682318125.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P9815035808194790269

`A033999(n)*A085455(n)`
-/

namespace A025565.P9815035808194790269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A085455 n

end

end A025565.P9815035808194790269

namespace A025565

/-- `A033999(n)*A085455(n)` -/
def P9815035808194790269.Spec : Prop :=
  ∀ n, P9815035808194790269.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P10528956319976736274

`gcd(A000038(n), A085455(n))`
-/

namespace A025565.P10528956319976736274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A085455 n)

end

end A025565.P10528956319976736274

namespace A025565

/-- `gcd(A000038(n), A085455(n))` -/
def P10528956319976736274.Spec : Prop :=
  ∀ n, (P10528956319976736274.a n : ℤ) = A025565 (n + 1)

end A025565

/-! ## A025565.P80464174115851783

`lcm(A000034(n), A085455(n))`
-/

namespace A025565.P80464174115851783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A085455 n)

end

end A025565.P80464174115851783

namespace A025565

/-- `lcm(A000034(n), A085455(n))` -/
def P80464174115851783.Spec : Prop :=
  ∀ n, (P80464174115851783.a n : ℤ) = A025565 (n + 1)

end A025565

/-! ## A025565.P9239560508700086753

`abs(A005773(n)*A280560(n))`
-/

namespace A025565.P9239560508700086753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005773 n * A280560 n|

end

end A025565.P9239560508700086753

namespace A025565

/-- `abs(A005773(n)*A280560(n))` -/
def P9239560508700086753.Spec : Prop :=
  ∀ n, P9239560508700086753.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P925694024592705632

`ratio[A011782(n)]*A005773(n)`
-/

namespace A025565.P925694024592705632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A005773 n : ℚ)

end

end A025565.P925694024592705632

namespace A025565

/-- `ratio[A011782(n)]*A005773(n)` -/
def P925694024592705632.Spec : Prop :=
  ∀ n, P925694024592705632.a n = (A025565 (n + 1) : ℚ)

end A025565

/-! ## A025565.P4682792127343745640

`A005773(n)*A036453(n+1)`
-/

namespace A025565.P4682792127343745640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n * A036453 (n + 1)

end

end A025565.P4682792127343745640

namespace A025565

/-- `A005773(n)*A036453(n+1)` -/
def P4682792127343745640.Spec : Prop :=
  ∀ n, P4682792127343745640.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P15020973864699713191

`(A057427(n)+1)*A005773(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025565

/-- `(A057427(n)+1)*A005773(n)` -/
def P15020973864699713191.Spec : Prop :=
  ∀ n, P15020973864699713191.a n = A025565 (n + 1)

theorem P15020973864699713191.correct : P15020973864699713191.Spec := by
  intro n
  simp only [A025565, Nat.add_sub_cancel]

end A025565

/-! ## A025565.P9589106759113938390

`(1-A057428(n))*A005773(n)`
-/

namespace A025565.P9589106759113938390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A005773 n

end

end A025565.P9589106759113938390

namespace A025565

/-- `(1-A057428(n))*A005773(n)` -/
def P9589106759113938390.Spec : Prop :=
  ∀ n, P9589106759113938390.a n = A025565 (n + 1)

theorem P9589106759113938390.correct : P9589106759113938390.Spec := by
  intro n
  simp only [A025565, Nat.add_sub_cancel, A025565.P9589106759113938390.a, A025565.P15020973864699713191.a, A005773, A005773.P2300326801340372225.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025565

/-! ## A025565.P851812759000361467

`(2-A000007(n))*A005773(n)`
-/

namespace A025565.P851812759000361467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A005773 n

end

end A025565.P851812759000361467

namespace A025565

/-- `(2-A000007(n))*A005773(n)` -/
def P851812759000361467.Spec : Prop :=
  ∀ n, P851812759000361467.a n = A025565 (n + 1)

theorem P851812759000361467.correct : P851812759000361467.Spec := by
  intro n
  simp only [A025565, Nat.add_sub_cancel, A025565.P851812759000361467.a, A025565.P15020973864699713191.a, A000007, A000007.P6599383543502402472.a, A005773, A005773.P2300326801340372225.a, A057427, A057427.P3058147525557661423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A025565

/-! ## A025565.P8868630792965000244

`A005773(n)*A280560(2*n)`
-/

namespace A025565.P8868630792965000244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n * A280560 (2 * n)

end

end A025565.P8868630792965000244

namespace A025565

/-- `A005773(n)*A280560(2*n)` -/
def P8868630792965000244.Spec : Prop :=
  ∀ n, P8868630792965000244.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P2614832819046088073

`(A011630(n)²+1)*A005773(n)`
-/

namespace A025565.P2614832819046088073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011630 n ^ 2 + 1) * A005773 n

end

end A025565.P2614832819046088073

namespace A025565

/-- `(A011630(n)²+1)*A005773(n)` -/
def P2614832819046088073.Spec : Prop :=
  ∀ n, P2614832819046088073.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P1106738307460652030

`(A062157(n)²+1)*A005773(n)`
-/

namespace A025565.P1106738307460652030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062157 n ^ 2 + 1) * A005773 n

end

end A025565.P1106738307460652030

namespace A025565

/-- `(A062157(n)²+1)*A005773(n)` -/
def P1106738307460652030.Spec : Prop :=
  ∀ n, P1106738307460652030.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P11870663156370372383

`A005773(n)+∑[A025566(n)]-1`
-/

namespace A025565.P11870663156370372383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A025565.P11870663156370372383

namespace A025565

/-- `A005773(n)+∑[A025566(n)]-1` -/
def P11870663156370372383.Spec : Prop :=
  ∀ n, P11870663156370372383.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P6143558019919315118

`A025566(n+1)-A168051(n+1)`
-/

namespace A025565.P6143558019919315118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1) - A168051 (n + 1)

end

end A025565.P6143558019919315118

namespace A025565

/-- `A025566(n+1)-A168051(n+1)` -/
def P6143558019919315118.Spec : Prop :=
  ∀ n, P6143558019919315118.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P4175028337358981842

`A020639(A004277(n))*A005773(n)`
-/

namespace A025565.P4175028337358981842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A005773 n

end

end A025565.P4175028337358981842

namespace A025565

/-- `A020639(A004277(n))*A005773(n)` -/
def P4175028337358981842.Spec : Prop :=
  ∀ n, P4175028337358981842.a n = A025565 (n + 1)

end A025565

/-! ## A025565.P12070183749299128579

`A005773(n)*A020639(A008574(n))`
-/

namespace A025565.P12070183749299128579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n * A020639 (A008574 n).toNat

end

end A025565.P12070183749299128579

namespace A025565

/-- `A005773(n)*A020639(A008574(n))` -/
def P12070183749299128579.Spec : Prop :=
  ∀ n, P12070183749299128579.a n = A025565 (n + 1)

end A025565

/-!
# A025566: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = sum of numbers in row n+1 of the array T defined in A026105. Also a(n) = T(n,n), where T is the array defined in A025564.

The programs for A025566, the canonical program `A025566.P4061906558492932459` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025566 has offset 0).

The definition of A025566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025566.P4061906558492932459

`ceil(A105696(n)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025566

/-- `ceil(A105696(n)/2)` -/
def P4061906558492932459.Spec : Prop :=
  ∀ n, P4061906558492932459.a n = A025566 n

theorem P4061906558492932459.correct : P4061906558492932459.Spec := by
  intro n
  simp only [A025566]

end A025566

/-! ## A025566.P16315393857713412790

`A105696(n)/gcd(2, A016116(n))`
-/

namespace A025566.P16315393857713412790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105696 n : ℚ) / (Int.gcd 2 (A016116 n) : ℚ)

end

end A025566.P16315393857713412790

namespace A025566

/-- `A105696(n)/gcd(2, A016116(n))` -/
def P16315393857713412790.Spec : Prop :=
  ∀ n, P16315393857713412790.a n = (A025566 n : ℚ)

end A025566

/-! ## A025566.P6081595811487190085

`round(A105696(n)/A036453(n+1))`
-/

namespace A025566.P6081595811487190085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A105696 n : ℚ) / (A036453 (n + 1) : ℚ))

end

end A025566.P6081595811487190085

namespace A025566

/-- `round(A105696(n)/A036453(n+1))` -/
def P6081595811487190085.Spec : Prop :=
  ∀ n, P6081595811487190085.a n = A025566 n

end A025566

/-! ## A025566.P14965586263405041935

`A105696(n)/A036453(A008619(n))`
-/

namespace A025566.P14965586263405041935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105696 n : ℚ) / (A036453 (A008619 n).toNat : ℚ)

end

end A025566.P14965586263405041935

namespace A025566

/-- `A105696(n)/A036453(A008619(n))` -/
def P14965586263405041935.Spec : Prop :=
  ∀ n, P14965586263405041935.a n = (A025566 n : ℚ)

end A025566

/-! ## A025566.P4053022252023810063

`A105696(n)/A036453(A008748(n))`
-/

namespace A025566.P4053022252023810063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105696 n : ℚ) / (A036453 (A008748 n).toNat : ℚ)

end

end A025566.P4053022252023810063

namespace A025566

/-- `A105696(n)/A036453(A008748(n))` -/
def P4053022252023810063.Spec : Prop :=
  ∀ n, P4053022252023810063.a n = (A025566 n : ℚ)

end A025566

/-! ## A025566.P2098909973939011184

`A105696(n)/A036453(A059015(n))`
-/

namespace A025566.P2098909973939011184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105696 n : ℚ) / (A036453 (A059015 n).toNat : ℚ)

end

end A025566.P2098909973939011184

namespace A025566

/-- `A105696(n)/A036453(A059015(n))` -/
def P2098909973939011184.Spec : Prop :=
  ∀ n, P2098909973939011184.a n = (A025566 n : ℚ)

end A025566

/-! ## A025566.P7589670151424854111

`A105696(n)/A036453(A109613(n))`
-/

namespace A025566.P7589670151424854111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105696 n : ℚ) / (A036453 (A109613 n).toNat : ℚ)

end

end A025566.P7589670151424854111

namespace A025566

/-- `A105696(n)/A036453(A109613(n))` -/
def P7589670151424854111.Spec : Prop :=
  ∀ n, P7589670151424854111.a n = (A025566 n : ℚ)

end A025566

/-! ## A025566.P13868140736364175963

`A105696(n)/A040001(A110660(n))`
-/

namespace A025566.P13868140736364175963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105696 n : ℚ) / (A040001 (A110660 n).toNat : ℚ)

end

end A025566.P13868140736364175963

namespace A025566

/-- `A105696(n)/A040001(A110660(n))` -/
def P13868140736364175963.Spec : Prop :=
  ∀ n, P13868140736364175963.a n = (A025566 n : ℚ)

end A025566

/-! ## A025566.P12978788735593775166

`A105696(n)/A040001(A254337(n))`
-/

namespace A025566.P12978788735593775166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105696 n : ℚ) / (A040001 (A254337 n).toNat : ℚ)

end

end A025566.P12978788735593775166

namespace A025566

/-- `A105696(n)/A040001(A254337(n))` -/
def P12978788735593775166.Spec : Prop :=
  ∀ n, P12978788735593775166.a n = (A025566 n : ℚ)

end A025566

/-! ## A025566.P11839886311363690852

`A105696(n)/A020639(A000010(n+1))`
-/

namespace A025566.P11839886311363690852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105696 n : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ)

end

end A025566.P11839886311363690852

namespace A025566

/-- `A105696(n)/A020639(A000010(n+1))` -/
def P11839886311363690852.Spec : Prop :=
  ∀ n, P11839886311363690852.a n = (A025566 n : ℚ)

end A025566

/-! ## A025566.P4212037873381453017

`round(A105696(n)/A020639(A054785(n+1)))`
-/

namespace A025566.P4212037873381453017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A105696 n : ℚ) / (A020639 (A054785 (n + 1)).toNat : ℚ))

end

end A025566.P4212037873381453017

namespace A025566

/-- `round(A105696(n)/A020639(A054785(n+1)))` -/
def P4212037873381453017.Spec : Prop :=
  ∀ n, P4212037873381453017.a n = A025566 n

end A025566

/-! ## A025566.P11122033563263259853

`A005773(n+1)+A005773(n)-A062106(n+2)`
-/

namespace A025566.P11122033563263259853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (A005773 n - A062106 (n + 2))

end

end A025566.P11122033563263259853

namespace A025566

/-- `A005773(n+1)+A005773(n)-A062106(n+2)` -/
def P11122033563263259853.Spec : Prop :=
  ∀ n, P11122033563263259853.a n = A025566 n

end A025566

/-! ## A025566.P5327046919812697097

`A115990(A238531(n)+n)`
-/

namespace A025566.P5327046919812697097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (A238531 n + (n : ℤ)).toNat

end

end A025566.P5327046919812697097

namespace A025566

/-- `A115990(A238531(n)+n)` -/
def P5327046919812697097.Spec : Prop :=
  ∀ n, P5327046919812697097.a n = A025566 n

end A025566

/-! ## A025566.P2556910229964619766

`A115990(∑[n]+A033300(n+1)%3)`
-/

namespace A025566.P2556910229964619766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A033300 (n + 1)) 3).toNat

end

end A025566.P2556910229964619766

namespace A025566

/-- `A115990(∑[n]+A033300(n+1)%3)` -/
def P2556910229964619766.Spec : Prop :=
  ∀ n, P2556910229964619766.a n = A025566 n

end A025566

/-! ## A025566.P15913795747844867931

`A115990(A133263(n)%A155116(n))`
-/

namespace A025566.P15913795747844867931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (Int.tmod (A133263 n) (A155116 n)).toNat

end

end A025566.P15913795747844867931

namespace A025566

/-- `A115990(A133263(n)%A155116(n))` -/
def P15913795747844867931.Spec : Prop :=
  ∀ n, P15913795747844867931.a n = A025566 n

end A025566

/-! ## A025566.P3948870072595724

`A025564((1-n)²+n)`
-/

namespace A025566.P3948870072595724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A025566.P3948870072595724

namespace A025566

/-- `A025564((1-n)²+n)` -/
def P3948870072595724.Spec : Prop :=
  ∀ n, P3948870072595724.a n = A025566 n

end A025566

/-!
# A025567: a(n) = T(n,n+1), where T is the array defined in A025564.

The programs for A025567, the canonical program `A025567.P10631985129384628250` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025567 has offset 1).

The definition of A025567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025567.P3294771780941191527

`(n+1)/3*A005554(n+3)`
-/

namespace A025567.P3294771780941191527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A005554 (n + 3) : ℚ)

end

end A025567.P3294771780941191527

namespace A025567

/-- `(n+1)/3*A005554(n+3)` -/
def P3294771780941191527.Spec : Prop :=
  ∀ n, P3294771780941191527.a n = (A025567 (n + 1) : ℚ)

end A025567

/-! ## A025567.P10631985129384628250

`record[abs(A005773(n)-A005774(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025567

/-- `record[abs(A005773(n)-A005774(n))]` -/
def P10631985129384628250.Spec : Prop :=
  ∀ n, P10631985129384628250.a n = A025567 (n + 1)

theorem P10631985129384628250.correct : P10631985129384628250.Spec := by
  intro n
  simp only [A025567, Nat.add_sub_cancel]

end A025567

/-! ## A025567.P9404371372171201566

`record[A168051(n+1)+A025566(n)]`
-/

namespace A025567.P9404371372171201566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 1) + A025566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025567.P9404371372171201566

namespace A025567

/-- `record[A168051(n+1)+A025566(n)]` -/
def P9404371372171201566.Spec : Prop :=
  ∀ n, P9404371372171201566.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P7301575326825798542

`A005774(n+2)-A005773(n+2)`
-/

namespace A025567.P7301575326825798542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 2) - A005773 (n + 2)

end

end A025567.P7301575326825798542

namespace A025567

/-- `A005774(n+2)-A005773(n+2)` -/
def P7301575326825798542.Spec : Prop :=
  ∀ n, P7301575326825798542.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P15307273274369473641

`A025566(n+3)-A001006(n+2)`
-/

namespace A025567.P15307273274369473641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 3) - A001006 (n + 2)

end

end A025567.P15307273274369473641

namespace A025567

/-- `A025566(n+3)-A001006(n+2)` -/
def P15307273274369473641.Spec : Prop :=
  ∀ n, P15307273274369473641.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P2750851774753666318

`A025565(n+3)-A005554(n+3)`
-/

namespace A025567.P2750851774753666318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 3) - A005554 (n + 3)

end

end A025567.P2750851774753666318

namespace A025567

/-- `A025565(n+3)-A005554(n+3)` -/
def P2750851774753666318.Spec : Prop :=
  ∀ n, P2750851774753666318.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P11328475089883107308

`∑[A026135(n+1)-A002026(n+1)]`
-/

namespace A025567.P11328475089883107308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 (n + 1) - A002026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025567.P11328475089883107308

namespace A025567

/-- `∑[A026135(n+1)-A002026(n+1)]` -/
def P11328475089883107308.Spec : Prop :=
  ∀ n, P11328475089883107308.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P14681598667755390717

`Δ[A005774(n+1)]-A001006(n+1)`
-/

namespace A025567.P14681598667755390717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001006 (n + 1)

end

end A025567.P14681598667755390717

namespace A025567

/-- `Δ[A005774(n+1)]-A001006(n+1)` -/
def P14681598667755390717.Spec : Prop :=
  ∀ n, P14681598667755390717.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P16110889864666539871

`∑[A225034(n+1)-A001006(n+2)]`
-/

namespace A025567.P16110889864666539871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 (n + 1) - A001006 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025567.P16110889864666539871

namespace A025567

/-- `∑[A225034(n+1)-A001006(n+2)]` -/
def P16110889864666539871.Spec : Prop :=
  ∀ n, P16110889864666539871.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P3776198525266571775

`2*A005774(n+1)-A002026(n+1)`
-/

namespace A025567.P3776198525266571775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005774 (n + 1) - A002026 (n + 1)

end

end A025567.P3776198525266571775

namespace A025567

/-- `2*A005774(n+1)-A002026(n+1)` -/
def P3776198525266571775.Spec : Prop :=
  ∀ n, P3776198525266571775.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P7353578418756894874

`2*A014531(n+1)-A025180(n+2)`
-/

namespace A025567.P7353578418756894874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014531 (n + 1) - A025180 (n + 2)

end

end A025567.P7353578418756894874

namespace A025567

/-- `2*A014531(n+1)-A025180(n+2)` -/
def P7353578418756894874.Spec : Prop :=
  ∀ n, P7353578418756894874.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P845148591840284528

`∑[A026135(n+1)-Δ[A001006(n+1)]]`
-/

namespace A025567.P845148591840284528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025567.P845148591840284528

namespace A025567

/-- `∑[A026135(n+1)-Δ[A001006(n+1)]]` -/
def P845148591840284528.Spec : Prop :=
  ∀ n, P845148591840284528.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P16614164327143676675

`A002426(n+1)+A014531(n+1)-A001006(n+1)`
-/

namespace A025567.P16614164327143676675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1) + (A014531 (n + 1) - A001006 (n + 1))

end

end A025567.P16614164327143676675

namespace A025567

/-- `A002426(n+1)+A014531(n+1)-A001006(n+1)` -/
def P16614164327143676675.Spec : Prop :=
  ∀ n, P16614164327143676675.a n = A025567 (n + 1)

end A025567

/-! ## A025567.P14761064021869303918

`A026135(n+2)-A025565(n+3)`
-/

namespace A025567.P14761064021869303918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 (n + 2) - A025565 (n + 3)

end

end A025567.P14761064021869303918

namespace A025567

/-- `A026135(n+2)-A025565(n+3)` -/
def P14761064021869303918.Spec : Prop :=
  ∀ n, P14761064021869303918.a n = A025567 (n + 1)

end A025567

/-!
# A025568: a(n) = T(n,n+2) where T is the array defined in A025564.

The programs for A025568, the canonical program `A025568.P11960037931394237519` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025568 has offset 1).

The definition of A025568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025568.P11960037931394237519

`A005775(n+4)-A005774(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025568

/-- `A005775(n+4)-A005774(n+2)` -/
def P11960037931394237519.Spec : Prop :=
  ∀ n, P11960037931394237519.a n = A025568 (n + 1)

theorem P11960037931394237519.correct : P11960037931394237519.Spec := by
  intro n
  simp only [A025568, Nat.add_sub_cancel]

end A025568

/-! ## A025568.P8892017793510468716

`A304011(n+4)-A304011(n+2)`
-/

namespace A025568.P8892017793510468716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304011 (n + 4) - A304011 (n + 2)

end

end A025568.P8892017793510468716

namespace A025568

/-- `A304011(n+4)-A304011(n+2)` -/
def P8892017793510468716.Spec : Prop :=
  ∀ n, P8892017793510468716.a n = A025568 (n + 1)

end A025568

/-! ## A025568.P11771126635526875206

`2*A014532(n+1)-A025181(n+3)`
-/

namespace A025568.P11771126635526875206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014532 (n + 1) - A025181 (n + 3)

end

end A025568.P11771126635526875206

namespace A025568

/-- `2*A014532(n+1)-A025181(n+3)` -/
def P11771126635526875206.Spec : Prop :=
  ∀ n, P11771126635526875206.a n = A025568 (n + 1)

end A025568

/-! ## A025568.P2168771661874035235

`A014532(n+1)+A025180(n+3)-A005717(n+2)`
-/

namespace A025568.P2168771661874035235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014532 (n + 1) + (A025180 (n + 3) - A005717 (n + 2))

end

end A025568.P2168771661874035235

namespace A025568

/-- `A014532(n+1)+A025180(n+3)-A005717(n+2)` -/
def P2168771661874035235.Spec : Prop :=
  ∀ n, P2168771661874035235.a n = A025568 (n + 1)

end A025568

/-! ## A025568.P10435456869702502684

`A025564((n+3)²+n)`
-/

namespace A025568.P10435456869702502684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 ((n + 3) ^ 2 + n)

end

end A025568.P10435456869702502684

namespace A025568

/-- `A025564((n+3)²+n)` -/
def P10435456869702502684.Spec : Prop :=
  ∀ n, P10435456869702502684.a n = A025568 (n + 1)

end A025568

/-! ## A025568.P11536603638553978359

`Δ[A217540((n+3)²+n+1)]`
-/

namespace A025568.P11536603638553978359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217540 ((n + 3) ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025568.P11536603638553978359

namespace A025568

/-- `Δ[A217540((n+3)²+n+1)]` -/
def P11536603638553978359.Spec : Prop :=
  ∀ n, P11536603638553978359.a n = A025568 (n + 1)

end A025568

/-! ## A025568.P16369934075174296053

`A212633(record[Δ[A257171(n)]])`
-/

namespace A025568.P16369934075174296053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257171 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A025568.P16369934075174296053

namespace A025568

/-- `A212633(record[Δ[A257171(n)]])` -/
def P16369934075174296053.Spec : Prop :=
  ∀ n, P16369934075174296053.a n = A025568 (n + 1)

end A025568

/-! ## A025568.P1998708983719570674

`A212633(A016825(∑[n+1]))`
-/

namespace A025568.P1998708983719570674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A025568.P1998708983719570674

namespace A025568

/-- `A212633(A016825(∑[n+1]))` -/
def P1998708983719570674.Spec : Prop :=
  ∀ n, P1998708983719570674.a n = A025568 (n + 1)

end A025568

/-! ## A025568.P17097015227003804215

`A212633(A028872(n+3)+n²)`
-/

namespace A025568.P17097015227003804215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A028872 (n + 3) + (n ^ 2 : ℤ)).toNat

end

end A025568.P17097015227003804215

namespace A025568

/-- `A212633(A028872(n+3)+n²)` -/
def P17097015227003804215.Spec : Prop :=
  ∀ n, P17097015227003804215.a n = A025568 (n + 1)

end A025568

/-!
# A025569: T(2n-1,n), where T is the array defined in A025564.

The programs for A025569, there is no canonical definition to state claims against.
-/

/-! ## A025569.P7816499174058503274

`A025576(round(1/acot(n))+n)`
-/

namespace A025569.P7816499174058503274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025576 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A025569.P7816499174058503274

/-! ## A025569.P16856082087106765818

`A025576(comp[2*(n+1)]+1)`
-/

namespace A025569.P16856082087106765818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025576 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A025569.P16856082087106765818

/-! ## A025569.P14635464328598241499

`record[A025576(n+1)^and(1, n)]`
-/

namespace A025569.P14635464328598241499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025576 (n + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025569.P14635464328598241499

/-! ## A025569.P8416310350728390738

`record[gcd(A025576(n+1), A126120(n))]`
-/

namespace A025569.P8416310350728390738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025576 (n + 1)) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025569.P8416310350728390738

/-! ## A025569.P10494833276585796995

`record[and(A025576(n+1), A033999(n))]`
-/

namespace A025569.P10494833276585796995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025576 (n + 1)) (A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025569.P10494833276585796995

/-! ## A025569.P8961206988387493723

`record[A025576(A234300(n)+1)]`
-/

namespace A025569.P8961206988387493723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025576 (A234300 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025569.P8961206988387493723

/-! ## A025569.P15428267004962866134

`A025564((2*n)²+n+1)`
-/

namespace A025569.P15428267004962866134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 ((2 * n) ^ 2 + (n + 1))

end

end A025569.P15428267004962866134

/-!
# A025570: a(n) = T(2n,n), where T is the array defined in A025564.

The programs for A025570, there is no canonical definition to state claims against.
-/

/-! ## A025570.P5535168393180560864

`A025575(Δ[n²])`
-/

namespace A025570.P5535168393180560864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025575 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A025570.P5535168393180560864

/-! ## A025570.P1891667631898950408

`record[A025575(n+1)/(-1)^n]`
-/

namespace A025570.P1891667631898950408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025575 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025570.P1891667631898950408

/-! ## A025570.P5919625862332559926

`record[A025575(A000265(n+1))]`
-/

namespace A025570.P5919625862332559926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025575 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025570.P5919625862332559926

/-! ## A025570.P14210495283590521297

`lcm(A000034(n), A025575(A005408(n)))`
-/

namespace A025570.P14210495283590521297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A025575 (A005408 n).toNat)

end

end A025570.P14210495283590521297

/-! ## A025570.P6549540316552913185

`A000034(2*n)*A025575(A005408(n))`
-/

namespace A025570.P6549540316552913185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A025575 (A005408 n).toNat

end

end A025570.P6549540316552913185

/-! ## A025570.P12621927510668772762

`A025575(A005408(n))%A087799(n)`
-/

namespace A025570.P12621927510668772762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025575 (A005408 n).toNat) (A087799 n)

end

end A025570.P12621927510668772762

/-! ## A025570.P10247759569984688380

`A025575(A000265(2*n+1))²/A025575(2*n+1)`
-/

namespace A025570.P10247759569984688380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025575 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A025575 (2 * n + 1) : ℚ)

end

end A025570.P10247759569984688380

/-! ## A025570.P13559822807330165465

`A025564(A054552(n))`
-/

namespace A025570.P13559822807330165465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A054552 n).toNat

end

end A025570.P13559822807330165465

/-! ## A025570.P11479785696210507222

`A025564(A002061(2*n)-n)`
-/

namespace A025570.P11479785696210507222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A002061 (2 * n) - (n : ℤ)).toNat

end

end A025570.P11479785696210507222

/-! ## A025570.P11554329247270319233

`A025564(∑[record[A019427(n)]]-n)`
-/

namespace A025570.P11554329247270319233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A025570.P11554329247270319233

/-!
# A025571: a(n) = T(3n,n), where T is the array defined in A025564.

The programs for A025571, there is no canonical definition to state claims against.
-/

/-! ## A025571.P6885678555404333265

`A212633(A139273(n)+A000007(n))`
-/

namespace A025571.P6885678555404333265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A139273 n + A000007 n).toNat

end

end A025571.P6885678555404333265

/-! ## A025571.P17901243031953397348

`A212633(or(A000007(n), A139273(n)))`
-/

namespace A025571.P17901243031953397348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (Int.lor (A000007 n) (A139273 n)).toNat

end

end A025571.P17901243031953397348

/-! ## A025571.P6994015814831228722

`A212633(xor(A000007(n), A139273(n)))`
-/

namespace A025571.P6994015814831228722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (Int.xor (A000007 n) (A139273 n)).toNat

end

end A025571.P6994015814831228722

/-! ## A025571.P9501530114009497316

`A025564(A134154(n)-A139267(n))`
-/

namespace A025571.P9501530114009497316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A134154 n - A139267 n).toNat

end

end A025571.P9501530114009497316

/-!
# A025572: a(n) = T(4n,n), where T is the array defined in A025564.

The programs for A025572, there is no canonical definition to state claims against.
-/

/-! ## A025572.P1419256134421923322

`A025564(A143855(n+1))`
-/

namespace A025572.P1419256134421923322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A143855 (n + 1)).toNat

end

end A025572.P1419256134421923322

/-! ## A025572.P3069059801853309511

`A025564(A054552(2*n)-n)`
-/

namespace A025572.P3069059801853309511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A054552 (2 * n) - (n : ℤ)).toNat

end

end A025572.P3069059801853309511

/-! ## A025572.P785373822831838464

`A025564(A028310(4*n)²-(n+1))`
-/

namespace A025572.P785373822831838464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A028310 (4 * n) ^ 2 - (n + 1 : ℤ)).toNat

end

end A025572.P785373822831838464

/-! ## A025572.P3859301364595680842

`A025564(A185212(n)+A007742(n))`
-/

namespace A025572.P3859301364595680842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A185212 n + A007742 n).toNat

end

end A025572.P3859301364595680842

/-!
# A025573: a(n) = T(2n,n-1), where T is the array defined in A025564.

The programs for A025573, there is no canonical definition to state claims against.
-/

/-! ## A025573.P15543784667774228052

`A025564(∑[a(n-1)+8])` with `a(0)=1`
-/

namespace A025573.P15543784667774228052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025573.P15543784667774228052

/-! ## A025573.P6519144721729964921

`A025564((2*n+1)²+n)`
-/

namespace A025573.P6519144721729964921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 ((2 * n + 1) ^ 2 + n)

end

end A025573.P6519144721729964921

/-! ## A025573.P13521608922526079106

`record[A025564(∑[A019427(n)])]`
-/

namespace A025573.P13521608922526079106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025573.P13521608922526079106

/-! ## A025573.P12811858622971223575

`A212633(A081267(n))`
-/

namespace A025573.P12811858622971223575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A081267 n).toNat

end

end A025573.P12811858622971223575

/-! ## A025573.P6436246428041243685

`A212633(A062728(n)+1)`
-/

namespace A025573.P6436246428041243685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212633 (A062728 n + 1).toNat

end

end A025573.P6436246428041243685

/-!
# A025574: T(2n,n+1), where T is the array defined in A025564.

The programs for A025574, there is no canonical definition to state claims against.
-/

/-! ## A025574.P9191569030203040068

`A025576(Δ[n²])`
-/

namespace A025574.P9191569030203040068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025576 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A025574.P9191569030203040068

/-! ## A025574.P15443656659449204492

`record[A025576(A099375(n))]`
-/

namespace A025574.P15443656659449204492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025576 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025574.P15443656659449204492

/-! ## A025574.P17539531199230199347

`record[A025576(A204154(n+1))]`
-/

namespace A025574.P17539531199230199347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025576 (A204154 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025574.P17539531199230199347

/-! ## A025574.P10351362841023873566

`record[A025576(n+1)*A033999(n)]`
-/

namespace A025574.P10351362841023873566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025576 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025574.P10351362841023873566

/-! ## A025574.P15887432683665558188

`record[gcd(A025576(n+2), A126120(n))]`
-/

namespace A025574.P15887432683665558188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025576 (n + 2)) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025574.P15887432683665558188

/-! ## A025574.P12748298146445230369

`record[A025576(n+1)/A010684(n)²]`
-/

namespace A025574.P12748298146445230369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025576 (n + 1) : ℚ) / (A010684 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025574.P12748298146445230369

/-! ## A025574.P6517174181242506121

`A033999(n)²*A025576(2*n+1)`
-/

namespace A025574.P6517174181242506121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A025576 (2 * n + 1)

end

end A025574.P6517174181242506121

/-! ## A025574.P17754832591275283974

`A010684(2*n)*A025576(2*n+1)`
-/

namespace A025574.P17754832591275283974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) * A025576 (2 * n + 1)

end

end A025574.P17754832591275283974

/-! ## A025574.P11555832994598684273

`A025576(2*n+1)*A033999(2*n)`
-/

namespace A025574.P11555832994598684273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025576 (2 * n + 1) * A033999 (2 * n)

end

end A025574.P11555832994598684273

/-! ## A025574.P1366654410214536082

`A126120(2*n+1)+A025576(2*n+1)`
-/

namespace A025574.P1366654410214536082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n + 1) + A025576 (2 * n + 1)

end

end A025574.P1366654410214536082

/-! ## A025574.P9262782202606231035

`A025576(2*n+1)+and(2, A017450(n+1))`
-/

namespace A025574.P9262782202606231035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025576 (2 * n + 1) + Int.land 2 (A017450 (n + 1))

end

end A025574.P9262782202606231035

/-!
# A025575: a(n) = T(n,[ n/2 ]), where T is the array defined in A025564.

The programs for A025575, there is no canonical definition to state claims against.
-/

/-! ## A025575.P14357466739345852718

`A025564((1-n)²+n-ceil(n/2))`
-/

namespace A025575.P14357466739345852718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 ((1 - (n : ℤ)) ^ 2 + (n : ℤ) - ⌈(n : ℚ) / 2⌉).toNat

end

end A025575.P14357466739345852718

/-!
# A025576: a(n) = T(n,[ n/2 ]+1), where T is the array defined in A025564.

The programs for A025576, there is no canonical definition to state claims against.
-/

/-! ## A025576.P7230572119669301353

`A025564(A263511(n+1))`
-/

namespace A025576.P7230572119669301353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A263511 (n + 1)).toNat

end

end A025576.P7230572119669301353

/-! ## A025576.P15880598213996304954

`A025564(A381816(n+2))`
-/

namespace A025576.P15880598213996304954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A381816 (n + 2)).toNat

end

end A025576.P15880598213996304954

/-! ## A025576.P13357345769598375314

`A025564(A267682(n+1)+2*n)`
-/

namespace A025576.P13357345769598375314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A267682 (n + 1) + (2 * n : ℤ)).toNat

end

end A025576.P13357345769598375314

/-! ## A025576.P17783851156611486583

`A025564(∑[A163980(n+1)]+floor(n/2))`
-/

namespace A025576.P17783851156611486583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 2⌋).toNat

end

end A025576.P17783851156611486583

/-! ## A025576.P7510656208214866337

`A025564(A080827(n+1)+A055998(n))`
-/

namespace A025576.P7510656208214866337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A080827 (n + 1) + A055998 n).toNat

end

end A025576.P7510656208214866337

/-! ## A025576.P9748966756202841364

`A025564(A028872(n+2)-A004526(n))`
-/

namespace A025576.P9748966756202841364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A028872 (n + 2) - A004526 n).toNat

end

end A025576.P9748966756202841364

/-! ## A025576.P4399530946966315165

`record[A025564(A123108(∑[n+3]))]`
-/

namespace A025576.P4399530946966315165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (A123108 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025576.P4399530946966315165

/-!
# A025577: Expansion of (x/(1-x))*sqrt((1+x)/(1-3*x)).

The programs for A025577, the canonical program `A025577.P12205511382632223493` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025577 has offset 1).

The definition of A025577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025577.P4244722436886621651

`∑[abs(A085455(n))]`
-/

namespace A025577.P4244722436886621651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085455 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025577.P4244722436886621651

namespace A025577

/-- `∑[abs(A085455(n))]` -/
def P4244722436886621651.Spec : Prop :=
  ∀ n, P4244722436886621651.a n = A025577 (n + 1)

end A025577

/-! ## A025577.P14342951592847043365

`∑[∑[A105696(n)]]`
-/

namespace A025577.P14342951592847043365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025577.P14342951592847043365

namespace A025577

/-- `∑[∑[A105696(n)]]` -/
def P14342951592847043365.Spec : Prop :=
  ∀ n, P14342951592847043365.a n = A025577 (n + 1)

end A025577

/-! ## A025577.P12205511382632223493

`∑[A025565(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025577

/-- `∑[A025565(n+1)]` -/
def P12205511382632223493.Spec : Prop :=
  ∀ n, P12205511382632223493.a n = A025577 (n + 1)

theorem P12205511382632223493.correct : P12205511382632223493.Spec := by
  intro n
  simp only [A025577, Nat.add_sub_cancel]

end A025577

/-! ## A025577.P6077507387610317998

`2*A383527(n)-1`
-/

namespace A025577.P6077507387610317998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A383527 n - 1

end

end A025577.P6077507387610317998

namespace A025577

/-- `2*A383527(n)-1` -/
def P6077507387610317998.Spec : Prop :=
  ∀ n, P6077507387610317998.a n = A025577 (n + 1)

end A025577

/-! ## A025577.P8625203523840100317

`∑[2*A005773(n)]-1`
-/

namespace A025577.P8625203523840100317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025577.P8625203523840100317

namespace A025577

/-- `∑[2*A005773(n)]-1` -/
def P8625203523840100317.Spec : Prop :=
  ∀ n, P8625203523840100317.a n = A025577 (n + 1)

end A025577

/-! ## A025577.P9531815956428505781

`3*a(n-1)-∑[A126068(n)]` with `a(0)=1`
-/

namespace A025577.P9531815956428505781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126068 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025577.P9531815956428505781

namespace A025577

/-- `3*a(n-1)-∑[A126068(n)]` -/
def P9531815956428505781.Spec : Prop :=
  ∀ n, P9531815956428505781.a n = A025577 (n + 1)

end A025577

/-! ## A025577.P4153888080756643050

`A086615(n)+A005774(n)`
-/

namespace A025577.P4153888080756643050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086615 n + A005774 n

end

end A025577.P4153888080756643050

namespace A025577

/-- `A086615(n)+A005774(n)` -/
def P4153888080756643050.Spec : Prop :=
  ∀ n, P4153888080756643050.a n = A025577 (n + 1)

end A025577

/-! ## A025577.P8130367796974805229

`A005774(n)+∑[A001006(n)]`
-/

namespace A025577.P8130367796974805229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025577.P8130367796974805229

namespace A025577

/-- `A005774(n)+∑[A001006(n)]` -/
def P8130367796974805229.Spec : Prop :=
  ∀ n, P8130367796974805229.a n = A025577 (n + 1)

end A025577

/-! ## A025577.P4209381132596238626

`A097893(n)+A097893(n)-A002426(n)`
-/

namespace A025577.P4209381132596238626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n + (A097893 n - A002426 n)

end

end A025577.P4209381132596238626

namespace A025577

/-- `A097893(n)+A097893(n)-A002426(n)` -/
def P4209381132596238626.Spec : Prop :=
  ∀ n, P4209381132596238626.a n = A025577 (n + 1)

end A025577

/-! ## A025577.P4988799111313654591

`A005773(n+1)+A086615(n)-A001006(n)`
-/

namespace A025577.P4988799111313654591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (A086615 n - A001006 n)

end

end A025577.P4988799111313654591

namespace A025577

/-- `A005773(n+1)+A086615(n)-A001006(n)` -/
def P4988799111313654591.Spec : Prop :=
  ∀ n, P4988799111313654591.a n = A025577 (n + 1)

end A025577

/-! ## A025577.P14606076619470571936

`2*A097893(n)-A002426(n)`
-/

namespace A025577.P14606076619470571936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097893 n - A002426 n

end

end A025577.P14606076619470571936

namespace A025577

/-- `2*A097893(n)-A002426(n)` -/
def P14606076619470571936.Spec : Prop :=
  ∀ n, P14606076619470571936.a n = A025577 (n + 1)

end A025577

/-! ## A025577.P4302122672812073296

`∑[A025564(∑[2*n])]`
-/

namespace A025577.P4302122672812073296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025577.P4302122672812073296

namespace A025577

/-- `∑[A025564(∑[2*n])]` -/
def P4302122672812073296.Spec : Prop :=
  ∀ n, P4302122672812073296.a n = A025577 (n + 1)

end A025577

/-!
# A025578: a(n) = Sum{T(n,k-1), k = 1,2,...,n}.

The programs for A025578, the canonical program `A025578.P10412567754576835900` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025578 has offset 1).

The definition of A025578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025578.P10412567754576835900

`A005773(n)+Δ[A133494(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025578

/-- `A005773(n)+Δ[A133494(n)]` -/
def P10412567754576835900.Spec : Prop :=
  ∀ n, P10412567754576835900.a n = A025578 (n + 1)

theorem P10412567754576835900.correct : P10412567754576835900.Spec := by
  intro n
  simp only [A025578, Nat.add_sub_cancel]

end A025578

/-! ## A025578.P5835979912453190278

`A140429(n)+A036908(n+1)`
-/

namespace A025578.P5835979912453190278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A036908 (n + 1)

end

end A025578.P5835979912453190278

namespace A025578

/-- `A140429(n)+A036908(n+1)` -/
def P5835979912453190278.Spec : Prop :=
  ∀ n, P5835979912453190278.a n = A025578 (n + 1)

end A025578

/-! ## A025578.P5532191564145709469

`A005773(n)+2*A140429(n)`
-/

namespace A025578.P5532191564145709469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + 2 * A140429 n

end

end A025578.P5532191564145709469

namespace A025578

/-- `A005773(n)+2*A140429(n)` -/
def P5532191564145709469.Spec : Prop :=
  ∀ n, P5532191564145709469.a n = A025578 (n + 1)

end A025578

/-! ## A025578.P6499621317540218151

`2*A027914(n)-A025191(n)`
-/

namespace A025578.P6499621317540218151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027914 n - A025191 n

end

end A025578.P6499621317540218151

namespace A025578

/-- `2*A027914(n)-A025191(n)` -/
def P6499621317540218151.Spec : Prop :=
  ∀ n, P6499621317540218151.a n = A025578 (n + 1)

end A025578

/-! ## A025578.P12003162964230133072

`A036908(n+1)+Δ[A124302(n)]`
-/

namespace A025578.P12003162964230133072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036908 (n + 1) + (f1 (n + 1) - f1 n)

end

end A025578.P12003162964230133072

namespace A025578

/-- `A036908(n+1)+Δ[A124302(n)]` -/
def P12003162964230133072.Spec : Prop :=
  ∀ n, P12003162964230133072.a n = A025578 (n + 1)

end A025578

/-! ## A025578.P17996871043073135406

`A005773(n)+Δ[2*A124302(n)]`
-/

namespace A025578.P17996871043073135406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + (f1 (n + 1) - f1 n)

end

end A025578.P17996871043073135406

namespace A025578

/-- `A005773(n)+Δ[2*A124302(n)]` -/
def P17996871043073135406.Spec : Prop :=
  ∀ n, P17996871043073135406.a n = A025578 (n + 1)

end A025578

/-! ## A025578.P15292561732496327017

`2*A036908(n+1)-A005773(n)`
-/

namespace A025578.P15292561732496327017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036908 (n + 1) - A005773 n

end

end A025578.P15292561732496327017

namespace A025578

/-- `2*A036908(n+1)-A005773(n)` -/
def P15292561732496327017.Spec : Prop :=
  ∀ n, P15292561732496327017.a n = A025578 (n + 1)

end A025578

/-! ## A025578.P7464580861835680128

`A005773(n)+Δ[A074324(A004273(n))]`
-/

namespace A025578.P7464580861835680128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + (f1 (n + 1) - f1 n)

end

end A025578.P7464580861835680128

namespace A025578

/-- `A005773(n)+Δ[A074324(A004273(n))]` -/
def P7464580861835680128.Spec : Prop :=
  ∀ n, P7464580861835680128.a n = A025578 (n + 1)

end A025578

/-! ## A025578.P11906471377466678479

`A005773(n)+record[2*A090880(n+1)]`
-/

namespace A025578.P11906471377466678479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025578.P11906471377466678479

namespace A025578

/-- `A005773(n)+record[2*A090880(n+1)]` -/
def P11906471377466678479.Spec : Prop :=
  ∀ n, P11906471377466678479.a n = A025578 (n + 1)

end A025578

/-!
# A025579: a(1)=1, a(2)=2, a(n) = 4*3^(n-3) for n >= 3.

The programs for A025579, the canonical program `A025579.P2385008044274395620` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025579 has offset 1).

The definition of A025579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025579.P2385008044274395620

`3*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025579

/-- `3*a(n-1)` -/
def P2385008044274395620.Spec : Prop :=
  ∀ n, (P2385008044274395620.a n : ℤ) = A025579 (n + 1)

theorem P2385008044274395620.correct : P2385008044274395620.Spec := by
  intro n
  simp only [A025579, Nat.add_sub_cancel]

end A025579

/-! ## A025579.P2303461403011188264

`ogf((-1+x+2x^2)/(-1+3x))`
-/

namespace A025579.P2303461403011188264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -3] n

end

end A025579.P2303461403011188264

namespace A025579

/-- `ogf((-1+x+2x^2)/(-1+3x))` -/
def P2303461403011188264.Spec : Prop :=
  ∀ n, P2303461403011188264.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P10251687780028835756

`ceil(4*3^(n-2))`
-/

namespace A025579.P10251687780028835756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A025579.P10251687780028835756

namespace A025579

/-- `ceil(4*3^(n-2))` -/
def P10251687780028835756.Spec : Prop :=
  ∀ n, P10251687780028835756.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P18174397003725938521

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A025579.P18174397003725938521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A025579.P18174397003725938521

namespace A025579

/-- `abs(∏[-a(n-1)])` -/
def P18174397003725938521.Spec : Prop :=
  ∀ n, P18174397003725938521.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P14211846008250713083

`a(n-1)/cot(atan(3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A025579.P14211846008250713083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A025579.P14211846008250713083

namespace A025579

/-- `a(n-1)/cot(atan(3))` -/
def P14211846008250713083.Spec : Prop :=
  ∀ n, P14211846008250713083.a n = (A025579 (n + 1) : ℝ)

end A025579

/-! ## A025579.P14425866312021380819

`a(n-1)/(1-2/3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A025579.P14425866312021380819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) / (1 - (2 : ℚ) / 3)

end

end A025579.P14425866312021380819

namespace A025579

/-- `a(n-1)/(1-2/3)` -/
def P14425866312021380819.Spec : Prop :=
  ∀ n, P14425866312021380819.a n = (A025579 (n + 1) : ℚ)

end A025579

/-! ## A025579.P5142881535006103457

`lcm(3^(n-2), a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A025579.P5142881535006103457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 1) : ℤ)

end

end A025579.P5142881535006103457

namespace A025579

/-- `lcm(3^(n-2), a(n-1))` -/
def P5142881535006103457.Spec : Prop :=
  ∀ n, (P5142881535006103457.a n : ℤ) = A025579 (n + 1)

end A025579

/-! ## A025579.P9528324767601223271

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A025579.P9528324767601223271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A025579.P9528324767601223271

namespace A025579

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P9528324767601223271.Spec : Prop :=
  ∀ n, (P9528324767601223271.a n : ℤ) = A025579 (n + 1)

theorem P9528324767601223271.correct : P9528324767601223271.Spec := by
  intro n
  simp only [A025579, Nat.add_sub_cancel, A025579.P9528324767601223271.a, A025579.P2385008044274395620.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A025579

/-! ## A025579.P6548974023779199710

`a(n-1)-(n-a(n-1)-a(n-1)-n%a(n-1))` with `a(0)=1`
-/

namespace A025579.P6548974023779199710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n : ℤ) - a (n - 1) - a (n - 1) - Int.tmod (n : ℤ) (a (n - 1)))

end

end A025579.P6548974023779199710

namespace A025579

/-- `a(n-1)-(n-a(n-1)-a(n-1)-n%a(n-1))` -/
def P6548974023779199710.Spec : Prop :=
  ∀ n, P6548974023779199710.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P7046137814134953205

`abs(Δ[A141413(n)])`
-/

namespace A025579.P7046137814134953205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A025579.P7046137814134953205

namespace A025579

/-- `abs(Δ[A141413(n)])` -/
def P7046137814134953205.Spec : Prop :=
  ∀ n, P7046137814134953205.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P12855435045140713562

`A052156(n)+char[1]`
-/

namespace A025579.P12855435045140713562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A025579.P12855435045140713562

namespace A025579

/-- `A052156(n)+char[1]` -/
def P12855435045140713562.Spec : Prop :=
  ∀ n, P12855435045140713562.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P5488379116865030648

`A026097(n)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A025579.P5488379116865030648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A026097 n + a (n - 1)

end

end A025579.P5488379116865030648

namespace A025579

/-- `A026097(n)+a(n-1)` -/
def P5488379116865030648.Spec : Prop :=
  ∀ n, P5488379116865030648.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P13123105519265191426

`A068911(A004275(n))`
-/

namespace A025579.P13123105519265191426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (A004275 n).toNat

end

end A025579.P13123105519265191426

namespace A025579

/-- `A068911(A004275(n))` -/
def P13123105519265191426.Spec : Prop :=
  ∀ n, P13123105519265191426.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P2961080406641347989

`A000792(A033627(n+1))`
-/

namespace A025579.P2961080406641347989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A033627 (n + 1)).toNat

end

end A025579.P2961080406641347989

namespace A025579

/-- `A000792(A033627(n+1))` -/
def P2961080406641347989.Spec : Prop :=
  ∀ n, P2961080406641347989.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P13729745555496570687

`A063524(n)+A052156(n)`
-/

namespace A025579.P13729745555496570687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A052156 n

end

end A025579.P13729745555496570687

namespace A025579

/-- `A063524(n)+A052156(n)` -/
def P13729745555496570687.Spec : Prop :=
  ∀ n, P13729745555496570687.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P5763183801719187002

`A052156(n)*A373565(n)`
-/

namespace A025579.P5763183801719187002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n * A373565 n

end

end A025579.P5763183801719187002

namespace A025579

/-- `A052156(n)*A373565(n)` -/
def P5763183801719187002.Spec : Prop :=
  ∀ n, P5763183801719187002.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P1311356522091042253

`lcm(A000034(n), A052156(n))`
-/

namespace A025579.P1311356522091042253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A052156 n)

end

end A025579.P1311356522091042253

namespace A025579

/-- `lcm(A000034(n), A052156(n))` -/
def P1311356522091042253.Spec : Prop :=
  ∀ n, (P1311356522091042253.a n : ℤ) = A025579 (n + 1)

end A025579

/-! ## A025579.P2488817483330341378

`∪[2*A025192(n), A003946(n)]`
-/

namespace A025579.P2488817483330341378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025579.P2488817483330341378

namespace A025579

/-- `∪[2*A025192(n), A003946(n)]` -/
def P2488817483330341378.Spec : Prop :=
  ∀ n, (P2488817483330341378.a n : ℤ) = A025579 (n + 1)

end A025579

/-! ## A025579.P17372961949249009593

`A068911(∪[2*n, A068911(n)])`
-/

namespace A025579.P17372961949249009593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A025579.P17372961949249009593

namespace A025579

/-- `A068911(∪[2*n, A068911(n)])` -/
def P17372961949249009593.Spec : Prop :=
  ∀ n, P17372961949249009593.a n = A025579 (n + 1)

end A025579

/-! ## A025579.P10388698722390735241

`A291773(n+3)-A302487(n+1)`
-/

namespace A025579.P10388698722390735241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291773 (n + 3) - A302487 (n + 1)

end

end A025579.P10388698722390735241

namespace A025579

/-- `A291773(n+3)-A302487(n+1)` -/
def P10388698722390735241.Spec : Prop :=
  ∀ n, P10388698722390735241.a n = A025579 (n + 1)

end A025579

/-!
# A025581: Triangle read by rows: T(n, k) = n-k, for 0 <= k <= n.

The programs for A025581, the canonical program `A025581.P420762180635059694` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025581 has offset 0).

The definition of A025581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025581.P16927041934511861377

`C(floor(3/2+sqrt(2+2*n)), 2)-(n+1)`
-/

namespace A025581.P16927041934511861377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ⌊((3 : ℚ) / 2 : ℝ) + Real.sqrt (2 + 2 * n : ℝ)⌋.toNat 2 : ℤ) - (n + 1 : ℤ)

end

end A025581.P16927041934511861377

namespace A025581

/-- `C(floor(3/2+sqrt(2+2*n)), 2)-(n+1)` -/
def P16927041934511861377.Spec : Prop :=
  ∀ n, P16927041934511861377.a n = A025581 n

end A025581

/-! ## A025581.P420762180635059694

`A004736(n+1)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025581

/-- `A004736(n+1)-1` -/
def P420762180635059694.Spec : Prop :=
  ∀ n, P420762180635059694.a n = A025581 n

theorem P420762180635059694.correct : P420762180635059694.Spec := by
  intro n
  simp only [A025581]

end A025581

/-! ## A025581.P6222661726081875

`C(comp[∑[n]]-n, 2)-1-n`
-/

namespace A025581.P6222661726081875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - 1 - (n : ℤ)

end

end A025581.P6222661726081875

namespace A025581

/-- `C(comp[∑[n]]-n, 2)-1-n` -/
def P6222661726081875.Spec : Prop :=
  ∀ n, P6222661726081875.a n = A025581 n

end A025581

/-! ## A025581.P18363420951253983330

`lt[n, (ceil(sqrt(n))²-n)²]%xor(n, -1)`
-/

namespace A025581.P18363420951253983330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) (Int.xor (n : ℤ) (-1))

end

end A025581.P18363420951253983330

namespace A025581

/-- `lt[n, (ceil(sqrt(n))²-n)²]%xor(n, -1)` -/
def P18363420951253983330.Spec : Prop :=
  ∀ n, P18363420951253983330.a n = A025581 n

end A025581

/-! ## A025581.P16225135774031118849

`floor((∑[2*n]%(comp[∑[n]]+1)+1)/2)`
-/

namespace A025581.P16225135774031118849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 : ℕ) : ℚ) / 2⌋

end

end A025581.P16225135774031118849

namespace A025581

/-- `floor((∑[2*n]%(comp[∑[n]]+1)+1)/2)` -/
def P16225135774031118849.Spec : Prop :=
  ∀ n, P16225135774031118849.a n = A025581 n

end A025581

/-! ## A025581.P13411440384525225602

`C(comp[C(comp[3*n+4]-n, 2)]-n, 2)%(n+1)`
-/

namespace A025581.P13411440384525225602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 % (n + 1)

end

end A025581.P13411440384525225602

namespace A025581

/-- `C(comp[C(comp[3*n+4]-n, 2)]-n, 2)%(n+1)` -/
def P13411440384525225602.Spec : Prop :=
  ∀ n, (P13411440384525225602.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P1825464406898014267

`((2*n+a(n-1)-1)%(2*n))%∑[char[∑[n]]]` with `a(0)=0`
-/

namespace A025581.P1825464406898014267
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (Int.tmod ((2 * n : ℤ) + (a (n - 1) - 1)) (2 * n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025581.P1825464406898014267

namespace A025581

/-- `((2*n+a(n-1)-1)%(2*n))%∑[char[∑[n]]]` -/
def P1825464406898014267.Spec : Prop :=
  ∀ n, P1825464406898014267.a n = A025581 n

end A025581

/-! ## A025581.P14074439334411974206

`(floor(sqrt(2*(n+1))+1/2)²+floor(sqrt(2*(n+1))+1/2)-2*(n+1))/2`
-/

namespace A025581.P14074439334411974206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.sqrt (2 * (n + 1) : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ ^ 2 + ⌊Real.sqrt (2 * (n + 1) : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ - (2 * (n + 1) : ℤ) : ℚ) / 2

end

end A025581.P14074439334411974206

namespace A025581

/-- `(floor(sqrt(2*(n+1))+1/2)²+floor(sqrt(2*(n+1))+1/2)-2*(n+1))/2` -/
def P14074439334411974206.Spec : Prop :=
  ∀ n, P14074439334411974206.a n = (A025581 n : ℚ)

end A025581

/-! ## A025581.P4965485821708550747

`log2(A130321(n))`
-/

namespace A025581.P4965485821708550747
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ)

end

end A025581.P4965485821708550747

namespace A025581

/-- `log2(A130321(n))` -/
def P4965485821708550747.Spec : Prop :=
  ∀ n, P4965485821708550747.a n = (A025581 n : ℝ)

end A025581

/-! ## A025581.P12252492352796412019

`val(A036561(n), 2)`
-/

namespace A025581.P12252492352796412019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 n).toNat 2

end

end A025581.P12252492352796412019

namespace A025581

/-- `val(A036561(n), 2)` -/
def P12252492352796412019.Spec : Prop :=
  ∀ n, (P12252492352796412019.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P15596226375373505883

`val(A054582(n), 2)`
-/

namespace A025581.P15596226375373505883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054582 n).toNat 2

end

end A025581.P15596226375373505883

namespace A025581

/-- `val(A054582(n), 2)` -/
def P15596226375373505883.Spec : Prop :=
  ∀ n, (P15596226375373505883.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P13424918771985802511

`val(A153279(n), 2)`
-/

namespace A025581.P13424918771985802511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A153279 n).toNat 2

end

end A025581.P13424918771985802511

namespace A025581

/-- `val(A153279(n), 2)` -/
def P13424918771985802511.Spec : Prop :=
  ∀ n, (P13424918771985802511.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P6948914603366783479

`val(A193858(n), 2)`
-/

namespace A025581.P6948914603366783479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A193858 n).toNat 2

end

end A025581.P6948914603366783479

namespace A025581

/-- `val(A193858(n), 2)` -/
def P6948914603366783479.Spec : Prop :=
  ∀ n, (P6948914603366783479.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P12511822609208106331

`val(A230435(n), 2)`
-/

namespace A025581.P12511822609208106331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A230435 n).toNat 2

end

end A025581.P12511822609208106331

namespace A025581

/-- `val(A230435(n), 2)` -/
def P12511822609208106331.Spec : Prop :=
  ∀ n, (P12511822609208106331.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P12834429680614525705

`val(A120027(n), 3)`
-/

namespace A025581.P12834429680614525705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A120027 n).toNat 3

end

end A025581.P12834429680614525705

namespace A025581

/-- `val(A120027(n), 3)` -/
def P12834429680614525705.Spec : Prop :=
  ∀ n, (P12834429680614525705.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P8288470032833687376

`val(A140303(n), 3)`
-/

namespace A025581.P8288470032833687376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140303 n).toNat 3

end

end A025581.P8288470032833687376

namespace A025581

/-- `val(A140303(n), 3)` -/
def P8288470032833687376.Spec : Prop :=
  ∀ n, (P8288470032833687376.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P8425169636362895500

`val(A175840(n), 3)`
-/

namespace A025581.P8425169636362895500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A175840 n).toNat 3

end

end A025581.P8425169636362895500

namespace A025581

/-- `val(A175840(n), 3)` -/
def P8425169636362895500.Spec : Prop :=
  ∀ n, (P8425169636362895500.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P980675369897578978

`val(A356036(n), 3)`
-/

namespace A025581.P980675369897578978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A356036 n).toNat 3

end

end A025581.P980675369897578978

namespace A025581

/-- `val(A356036(n), 3)` -/
def P980675369897578978.Spec : Prop :=
  ∀ n, (P980675369897578978.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P2132482733461696638

`val(A262616(n), 4)`
-/

namespace A025581.P2132482733461696638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A262616 n).toNat 4

end

end A025581.P2132482733461696638

namespace A025581

/-- `val(A262616(n), 4)` -/
def P2132482733461696638.Spec : Prop :=
  ∀ n, (P2132482733461696638.a n : ℤ) = A025581 n

end A025581

/-! ## A025581.P15122192994372069858

`floor(log2(A130330(n)))`
-/

namespace A025581.P15122192994372069858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A130330 n).toNat

end

end A025581.P15122192994372069858

namespace A025581

/-- `floor(log2(A130330(n)))` -/
def P15122192994372069858.Spec : Prop :=
  ∀ n, (P15122192994372069858.a n : ℤ) = A025581 n

end A025581

/-!
# A025582: A B_2 sequence: a(n) is the least value such that sequence increases and pairwise sums of elements are all distinct.

The programs for A025582, there is no canonical definition to state claims against.
-/

/-! ## A025582.P7445096451497354305

`A005282(n+1)-1`
-/

namespace A025582.P7445096451497354305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) - 1

end

end A025582.P7445096451497354305

/-! ## A025582.P17293784313588346479

`A054354(A156242(n+1))+A005282(n+1)`
-/

namespace A025582.P17293784313588346479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A156242 (n + 1)).toNat + A005282 (n + 1)

end

end A025582.P17293784313588346479

/-! ## A025582.P2659930690447654112

`A133097(n+1)+A010672(n)`
-/

namespace A025582.P2659930690447654112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133097 (n + 1) + A010672 n

end

end A025582.P2659930690447654112

/-! ## A025582.P9255639362761571006

`A011185(n+1)+A133097(n+1)-1`
-/

namespace A025582.P9255639362761571006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011185 (n + 1) + (A133097 (n + 1) - 1)

end

end A025582.P9255639362761571006

/-! ## A025582.P10135396781590007388

`A284917(n+1)-1+n`
-/

namespace A025582.P10135396781590007388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284917 (n + 1) - 1 + (n : ℤ)

end

end A025582.P10135396781590007388

/-! ## A025582.P8600209406327039426

`A284917(n+1)+A023443(n)`
-/

namespace A025582.P8600209406327039426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284917 (n + 1) + A023443 n

end

end A025582.P8600209406327039426

/-! ## A025582.P2530523631612160151

`A284917(n+1)-A024000(n)`
-/

namespace A025582.P2530523631612160151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284917 (n + 1) - A024000 n

end

end A025582.P2530523631612160151

/-! ## A025582.P12008604440609228474

`(∑[A287178(n+1)]-1)/2`
-/

namespace A025582.P12008604440609228474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287178 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A025582.P12008604440609228474

/-! ## A025582.P15169509632508882436

`floor(A034757(n+1)/2)`
-/

namespace A025582.P15169509632508882436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034757 (n + 1) : ℚ) / 2⌋

end

end A025582.P15169509632508882436

/-! ## A025582.P10064325387468891295

`A034757(n+1)%A005282(n+1)`
-/

namespace A025582.P10064325387468891295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034757 (n + 1)) (A005282 (n + 1))

end

end A025582.P10064325387468891295

/-! ## A025582.P2166712947972272999

`∑[A101274(A028310(n))]-1`
-/

namespace A025582.P2166712947972272999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101274 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025582.P2166712947972272999

/-! ## A025582.P9561554747604144093

`∑[A101274(n+1)]-A101274(n+1)`
-/

namespace A025582.P9561554747604144093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A101274 (n + 1)

end

end A025582.P9561554747604144093

/-! ## A025582.P13432646427156313337

`A394214(n+1)-A101274(n+2)`
-/

namespace A025582.P13432646427156313337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394214 (n + 1) - A101274 (n + 2)

end

end A025582.P13432646427156313337

/-!
# A025583: Composite numbers that are not the sum of 2 primes.

The programs for A025583, the canonical program `A025583.P11297861115936055759` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025583 has offset 1).

The definition of A025583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025583.P11297861115936055759

`A061673(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025583

/-- `A061673(n+1)+1` -/
def P11297861115936055759.Spec : Prop :=
  ∀ n, P11297861115936055759.a n = A025583 (n + 1)

theorem P11297861115936055759.correct : P11297861115936055759.Spec := by
  intro n
  simp only [A025583, Nat.add_sub_cancel]

end A025583

/-! ## A025583.P472975065008752215

`A269345(n+1)+2`
-/

namespace A025583.P472975065008752215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269345 (n + 1) + 2

end

end A025583.P472975065008752215

namespace A025583

/-- `A269345(n+1)+2` -/
def P472975065008752215.Spec : Prop :=
  ∀ n, P472975065008752215.a n = A025583 (n + 1)

theorem P472975065008752215.correct : P472975065008752215.Spec := by
  intro n
  simp only [A025583, Nat.add_sub_cancel, A025583.P472975065008752215.a, A025583.P11297861115936055759.a, A061673, A061673.P6703242266188128252.f1, A061673.P6703242266188128252.f2, A061673.P6703242266188128252.a, A269345, A269345.P4206844201345878076.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A025583

/-! ## A025583.P6510451223052217225

`A298366(n+1)-3`
-/

namespace A025583.P6510451223052217225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1) - 3

end

end A025583.P6510451223052217225

namespace A025583

/-- `A298366(n+1)-3` -/
def P6510451223052217225.Spec : Prop :=
  ∀ n, P6510451223052217225.a n = A025583 (n + 1)

theorem P6510451223052217225.correct : P6510451223052217225.Spec := by
  intro n
  simp only [A025583, Nat.add_sub_cancel, A025583.P6510451223052217225.a, A025583.P11297861115936055759.a, A061673, A061673.P6703242266188128252.f1, A061673.P6703242266188128252.f2, A061673.P6703242266188128252.a, A298366, A298366.P16780955431485269286.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A025583

/-! ## A025583.P4822758015195544088

`2*A104278(n+1)+1`
-/

namespace A025583.P4822758015195544088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104278 (n + 1) + 1

end

end A025583.P4822758015195544088

namespace A025583

/-- `2*A104278(n+1)+1` -/
def P4822758015195544088.Spec : Prop :=
  ∀ n, P4822758015195544088.a n = A025583 (n + 1)

theorem P4822758015195544088.correct : P4822758015195544088.Spec := by
  intro n
  simp only [A025583, Nat.add_sub_cancel, A025583.P4822758015195544088.a, A025583.P11297861115936055759.a, A061673, A061673.P6703242266188128252.f1, A061673.P6703242266188128252.f2, A061673.P6703242266188128252.a, A104278, A104278.P9462042051971576230.f1, A104278.P9462042051971576230.f2, A104278.P9462042051971576230.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A025583

/-! ## A025583.P9187707786292741770

`2*sqrt(A296304(n+2))+1`
-/

namespace A025583.P9187707786292741770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A296304 (n + 2) : ℝ) + 1

end

end A025583.P9187707786292741770

namespace A025583

/-- `2*sqrt(A296304(n+2))+1` -/
def P9187707786292741770.Spec : Prop :=
  ∀ n, P9187707786292741770.a n = (A025583 (n + 1) : ℝ)

end A025583

/-! ## A025583.P17254303205397551834

`A109934(n+3)`
-/

namespace A025583.P17254303205397551834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 3)

end

end A025583.P17254303205397551834

namespace A025583

/-- `A109934(n+3)` -/
def P17254303205397551834.Spec : Prop :=
  ∀ n, P17254303205397551834.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P3246455480607123410

`A164376(n+3)`
-/

namespace A025583.P3246455480607123410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 3)

end

end A025583.P3246455480607123410

namespace A025583

/-- `A164376(n+3)` -/
def P3246455480607123410.Spec : Prop :=
  ∀ n, P3246455480607123410.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P10840567903760281942

`∩[2*n+1, A072492(n+1)]`
-/

namespace A025583.P10840567903760281942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025583.P10840567903760281942

namespace A025583

/-- `∩[2*n+1, A072492(n+1)]` -/
def P10840567903760281942.Spec : Prop :=
  ∀ n, (P10840567903760281942.a n : ℤ) = A025583 (n + 1)

end A025583

/-! ## A025583.P11804770192869610695

`A071904(A196276(n+1)-1)+2`
-/

namespace A025583.P11804770192869610695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (A196276 (n + 1) - 1).toNat + 2

end

end A025583.P11804770192869610695

namespace A025583

/-- `A071904(A196276(n+1)-1)+2` -/
def P11804770192869610695.Spec : Prop :=
  ∀ n, P11804770192869610695.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P8058868771070912450

`A071904(A196276(n+1))`
-/

namespace A025583.P8058868771070912450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (A196276 (n + 1)).toNat

end

end A025583.P8058868771070912450

namespace A025583

/-- `A071904(A196276(n+1))` -/
def P8058868771070912450.Spec : Prop :=
  ∀ n, P8058868771070912450.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P9792505259061042621

`A071904(eq[1, A196274(n+1)]+1)`
-/

namespace A025583.P9792505259061042621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A025583.P9792505259061042621

namespace A025583

/-- `A071904(eq[1, A196274(n+1)]+1)` -/
def P9792505259061042621.Spec : Prop :=
  ∀ n, P9792505259061042621.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P16050742455975444114

`∩[A007921(n+1), A014076(n+1)]+2`
-/

namespace A025583.P16050742455975444114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A025583.P16050742455975444114

namespace A025583

/-- `∩[A007921(n+1), A014076(n+1)]+2` -/
def P16050742455975444114.Spec : Prop :=
  ∀ n, (P16050742455975444114.a n : ℤ) = A025583 (n + 1)

end A025583

/-! ## A025583.P15125348219495876931

`A014076(A196276(n+1)+1)`
-/

namespace A025583.P15125348219495876931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (A196276 (n + 1) + 1).toNat

end

end A025583.P15125348219495876931

namespace A025583

/-- `A014076(A196276(n+1)+1)` -/
def P15125348219495876931.Spec : Prop :=
  ∀ n, P15125348219495876931.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P17662862198227605523

`A014076(eq[1, A196274(n+1)]+2)`
-/

namespace A025583.P17662862198227605523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A025583.P17662862198227605523

namespace A025583

/-- `A014076(eq[1, A196274(n+1)]+2)` -/
def P17662862198227605523.Spec : Prop :=
  ∀ n, P17662862198227605523.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P10812983675800400133

`filter[A014092(n+1), A066247(#)]`
-/

namespace A025583.P10812983675800400133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A025583.P10812983675800400133

namespace A025583

/-- `filter[A014092(n+1), A066247(#)]` -/
def P10812983675800400133.Spec : Prop :=
  ∀ n, P10812983675800400133.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P1800771014489657176

`filter[A014092(n+1), A202238(#)]`
-/

namespace A025583.P1800771014489657176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A025583.P1800771014489657176

namespace A025583

/-- `filter[A014092(n+1), A202238(#)]` -/
def P1800771014489657176.Spec : Prop :=
  ∀ n, P1800771014489657176.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P5521625076444045396

`filter[A014092(n+1), A323162(#)]`
-/

namespace A025583.P5521625076444045396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A025583.P5521625076444045396

namespace A025583

/-- `filter[A014092(n+1), A323162(#)]` -/
def P5521625076444045396.Spec : Prop :=
  ∀ n, P5521625076444045396.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P8600120352340451295

`filter[A166081(n+1), A323162(#)]`
-/

namespace A025583.P8600120352340451295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A025583.P8600120352340451295

namespace A025583

/-- `filter[A166081(n+1), A323162(#)]` -/
def P8600120352340451295.Spec : Prop :=
  ∀ n, P8600120352340451295.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P13187890659224099758

`filter[A014092(n+2), A005171(#)]`
-/

namespace A025583.P13187890659224099758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A025583.P13187890659224099758

namespace A025583

/-- `filter[A014092(n+2), A005171(#)]` -/
def P13187890659224099758.Spec : Prop :=
  ∀ n, P13187890659224099758.a n = A025583 (n + 1)

end A025583

/-! ## A025583.P8698323857603596963

`filter[A014092(n+2), A292438(#)]`
-/

namespace A025583.P8698323857603596963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A025583.P8698323857603596963

namespace A025583

/-- `filter[A014092(n+2), A292438(#)]` -/
def P8698323857603596963.Spec : Prop :=
  ∀ n, P8698323857603596963.a n = A025583 (n + 1)

end A025583

/-!
# A025584: Primes p such that p-2 is not a prime.

The programs for A025584, the canonical program `A025584.P1747553391340850671` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025584 has offset 1).

The definition of A025584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025584.P8045823213764382950

`A179384(n+1)+2`
-/

namespace A025584.P8045823213764382950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 1) + 2

end

end A025584.P8045823213764382950

namespace A025584

/-- `A179384(n+1)+2` -/
def P8045823213764382950.Spec : Prop :=
  ∀ n, P8045823213764382950.a n = A025584 (n + 1)

theorem P8045823213764382950.correct : P8045823213764382950.Spec := by
  intro n
  simp only [A025584, Nat.add_sub_cancel, A025584.P8045823213764382950.a, A025584.P1747553391340850671.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A179384, A179384.P14080840919956110630.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008619, A008619.P16053834178911111118.a, A049688, A049688.P4025135909260073091.a, A005598, A005598.P13593438204838445571.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A025584

/-! ## A025584.P1747553391340850671

`A156828(n+1)%(A001248(n+1)-A008837(n+1)-A049643(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A025584

/-- `A156828(n+1)%(A001248(n+1)-A008837(n+1)-A049643(n))` -/
def P1747553391340850671.Spec : Prop :=
  ∀ n, P1747553391340850671.a n = A025584 (n + 1)

theorem P1747553391340850671.correct : P1747553391340850671.Spec := by
  intro n
  simp only [A025584, Nat.add_sub_cancel]

end A025584

/-! ## A025584.P1777116617627099486

`A000040(record[A062302(n+1)+1])`
-/

namespace A025584.P1777116617627099486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A025584.P1777116617627099486

namespace A025584

/-- `A000040(record[A062302(n+1)+1])` -/
def P1777116617627099486.Spec : Prop :=
  ∀ n, P1777116617627099486.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P10339275740235743930

`A000040(comp[A029707(n+1)]+1)`
-/

namespace A025584.P10339275740235743930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A025584.P10339275740235743930

namespace A025584

/-- `A000040(comp[A029707(n+1)]+1)` -/
def P10339275740235743930.Spec : Prop :=
  ∀ n, P10339275740235743930.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P1635877681219515485

`p?[A353464(n+1)+1+n]`
-/

namespace A025584.P1635877681219515485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025584.P1635877681219515485

namespace A025584

/-- `p?[A353464(n+1)+1+n]` -/
def P1635877681219515485.Spec : Prop :=
  ∀ n, P1635877681219515485.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P3163609697251393623

`record[A020639((n+3)%A151800(n)+1)]`
-/

namespace A025584.P3163609697251393623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (n + 3 : ℤ) (A151800 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025584.P3163609697251393623

namespace A025584

/-- `record[A020639((n+3)%A151800(n)+1)]` -/
def P3163609697251393623.Spec : Prop :=
  ∀ n, P3163609697251393623.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P5563479205305302716

`p?[(n+2)*A292438(n)]`
-/

namespace A025584.P5563479205305302716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A292438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025584.P5563479205305302716

namespace A025584

/-- `p?[(n+2)*A292438(n)]` -/
def P5563479205305302716.Spec : Prop :=
  ∀ n, P5563479205305302716.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P12817061280516189879

`p?[A100317(n+1)+1]`
-/

namespace A025584.P12817061280516189879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025584.P12817061280516189879

namespace A025584

/-- `p?[A100317(n+1)+1]` -/
def P12817061280516189879.Spec : Prop :=
  ∀ n, P12817061280516189879.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P17926753139611936369

`record[A006530(A100317(n+1)+1)]`
-/

namespace A025584.P17926753139611936369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100317 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025584.P17926753139611936369

namespace A025584

/-- `record[A006530(A100317(n+1)+1)]` -/
def P17926753139611936369.Spec : Prop :=
  ∀ n, P17926753139611936369.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P8284533404650394236

`record[A020639(A100317(n+1)+1)]`
-/

namespace A025584.P8284533404650394236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100317 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025584.P8284533404650394236

namespace A025584

/-- `record[A020639(A100317(n+1)+1)]` -/
def P8284533404650394236.Spec : Prop :=
  ∀ n, P8284533404650394236.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P9829529237323352687

`A000010(A100317(2*n+1)+1)+1`
-/

namespace A025584.P9829529237323352687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A100317 (2 * n + 1) + 1).toNat + 1

end

end A025584.P9829529237323352687

namespace A025584

/-- `A000010(A100317(2*n+1)+1)+1` -/
def P9829529237323352687.Spec : Prop :=
  ∀ n, P9829529237323352687.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P6342312650115534973

`p?[A100962(n+1)]`
-/

namespace A025584.P6342312650115534973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025584.P6342312650115534973

namespace A025584

/-- `p?[A100962(n+1)]` -/
def P6342312650115534973.Spec : Prop :=
  ∀ n, P6342312650115534973.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P16739749971788595626

`record[A006530(A100962(n+2))]`
-/

namespace A025584.P16739749971788595626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100962 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025584.P16739749971788595626

namespace A025584

/-- `record[A006530(A100962(n+2))]` -/
def P16739749971788595626.Spec : Prop :=
  ∀ n, P16739749971788595626.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P18395214631228776132

`filter[A100962(n+1), A010051(#)]`
-/

namespace A025584.P18395214631228776132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A025584.P18395214631228776132

namespace A025584

/-- `filter[A100962(n+1), A010051(#)]` -/
def P18395214631228776132.Spec : Prop :=
  ∀ n, P18395214631228776132.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P2003427789836692828

`filter[A100962(n+1), A101040(#)]`
-/

namespace A025584.P2003427789836692828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A025584.P2003427789836692828

namespace A025584

/-- `filter[A100962(n+1), A101040(#)]` -/
def P2003427789836692828.Spec : Prop :=
  ∀ n, P2003427789836692828.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P6330437621373942797

`filter[A100962(n+1), A323153(#)]`
-/

namespace A025584.P6330437621373942797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A025584.P6330437621373942797

namespace A025584

/-- `filter[A100962(n+1), A323153(#)]` -/
def P6330437621373942797.Spec : Prop :=
  ∀ n, P6330437621373942797.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P1504513227504194045

`filter[A100962(n+1), A353471(#)]`
-/

namespace A025584.P1504513227504194045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A025584.P1504513227504194045

namespace A025584

/-- `filter[A100962(n+1), A353471(#)]` -/
def P1504513227504194045.Spec : Prop :=
  ∀ n, P1504513227504194045.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P8038293257043217581

`filter[A100962(n+1), A374128(#)]`
-/

namespace A025584.P8038293257043217581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A025584.P8038293257043217581

namespace A025584

/-- `filter[A100962(n+1), A374128(#)]` -/
def P8038293257043217581.Spec : Prop :=
  ∀ n, P8038293257043217581.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P16706078251575259160

`filter[A100962(n+2), A323152(#)]`
-/

namespace A025584.P16706078251575259160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A025584.P16706078251575259160

namespace A025584

/-- `filter[A100962(n+2), A323152(#)]` -/
def P16706078251575259160.Spec : Prop :=
  ∀ n, P16706078251575259160.a n = A025584 (n + 1)

end A025584

/-! ## A025584.P7834803824093098188

`filter[A100962(n+2), A340371(#)]`
-/

namespace A025584.P7834803824093098188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A025584.P7834803824093098188

namespace A025584

/-- `filter[A100962(n+2), A340371(#)]` -/
def P7834803824093098188.Spec : Prop :=
  ∀ n, P7834803824093098188.a n = A025584 (n + 1)

end A025584

/-!
# A025585: Central Eulerian numbers A(2n-1,n).

The programs for A025585, there is no canonical definition to state claims against.
-/

/-! ## A025585.P4995226248564926029

`A244027(∑[n])`
-/

namespace A025585.P4995226248564926029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025585.P4995226248564926029

/-! ## A025585.P4554801116829578825

`record[A244027(n)]`
-/

namespace A025585.P4554801116829578825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025585.P4554801116829578825

/-! ## A025585.P15772361884126405686

`A006551(Δ[n²])`
-/

namespace A025585.P15772361884126405686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006551 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A025585.P15772361884126405686

/-! ## A025585.P16428526368738102352

`A014630(n²+1)`
-/

namespace A025585.P16428526368738102352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014630 (n ^ 2 + 1)

end

end A025585.P16428526368738102352

/-! ## A025585.P16030085440943315995

`(n+1)*A177042(n)`
-/

namespace A025585.P16030085440943315995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A177042 n

end

end A025585.P16030085440943315995

/-!
# A025586: Largest value in '3x+1' trajectory of n.

The programs for A025586, there is no canonical definition to state claims against.
-/

/-! ## A025586.P2015773396821419597

`A087251(A328314(n+1))`
-/

namespace A025586.P2015773396821419597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087251 (A328314 (n + 1)).toNat

end

end A025586.P2015773396821419597

/-! ## A025586.P14398157886379394005

`A151798(n)*A347264(n+1)`
-/

namespace A025586.P14398157886379394005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n * A347264 (n + 1)

end

end A025586.P14398157886379394005

/-! ## A025586.P18382383594515466966

`gcd(A056959(n+1), A099894(n))`
-/

namespace A025586.P18382383594515466966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056959 (n + 1)) (A099894 n)

end

end A025586.P18382383594515466966

/-! ## A025586.P9858501080422869934

`A270570(2*(n+1))`
-/

namespace A025586.P9858501080422869934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270570 (2 * (n + 1))

end

end A025586.P9858501080422869934

/-! ## A025586.P10392461614335639268

`xor(1, xor(1, A270570(n+n+2)))`
-/

namespace A025586.P10392461614335639268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A270570 (n + n + 2)))

end

end A025586.P10392461614335639268

/-! ## A025586.P18434265837284079018

`A270570(n+2+n)%A016900(n)`
-/

namespace A025586.P18434265837284079018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270570 (n + 2 + n)) (A016900 n)

end

end A025586.P18434265837284079018

/-! ## A025586.P17738720425514229607

`A270570(n+2+n)^A000041(C(2, A000005(n+1)))`
-/

namespace A025586.P17738720425514229607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270570 (n + 2 + n) : ℚ) ^ (A000041 (Nat.choose 2 (A000005 (n + 1)).toNat) : ℤ)

end

end A025586.P17738720425514229607

/-! ## A025586.P312860552663927661

`∑{d}[A270570(n+2+n), A000010(#)]`
-/

namespace A025586.P312860552663927661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270570 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A025586.P312860552663927661

/-! ## A025586.P6971800854060182997

`A375955(∑[n+1])`
-/

namespace A025586.P6971800854060182997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025586.P6971800854060182997

/-! ## A025586.P18131569534941171517

`A270570(n+n+2)/A180562(∑[n])`
-/

namespace A025586.P18131569534941171517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270570 (n + n + 2) : ℚ) / (A180562 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A025586.P18131569534941171517

/-! ## A025586.P12566994041726570003

`A220237(A186701(n+1))`
-/

namespace A025586.P12566994041726570003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220237 (A186701 (n + 1)).toNat

end

end A025586.P12566994041726570003

/-! ## A025586.P13365120143303563065

`A220237(∑[A008908(n+1)])`
-/

namespace A025586.P13365120143303563065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025586.P13365120143303563065

/-! ## A025586.P5435625402537904938

`A220237(∑[A006577(n+1)+1])`
-/

namespace A025586.P5435625402537904938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025586.P5435625402537904938

/-! ## A025586.P5952389035035328195

`A220237(A058633(n+1)+n+1)`
-/

namespace A025586.P5952389035035328195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220237 (A058633 (n + 1) + (n + 1 : ℤ)).toNat

end

end A025586.P5952389035035328195

/-! ## A025586.P6685462755723285294

`A220237(eq[2, A220237(n+2)])`
-/

namespace A025586.P6685462755723285294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025586.P6685462755723285294

/-!
# A025587: '3x+1' record-setters (blowup factor).

The programs for A025587, there is no canonical definition to state claims against.
-/

/-! ## A025587.P14183681513719138062

`A222292(eq[A211399(n), A329585(2*n+5)])`
-/

namespace A025587.P14183681513719138062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329585 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222292 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A025587.P14183681513719138062

/-! ## A025587.P3712969088708144518

`record[A348363(A235793(n+1))]`
-/

namespace A025587.P3712969088708144518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 (A235793 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025587.P3712969088708144518

/-!
# A025588: Number of n-move self-avoiding knight paths on 4 X 4 board, beginning at corner.

The programs for A025588, there is no canonical definition to state claims against.
-/

/-! ## A025588.P2403362450494855142

`∏{e}[∏[A050873(n+1)²+n], #+1]`
-/

namespace A025588.P2403362450494855142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) ^ 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A025588.P2403362450494855142

/-! ## A025588.P6174631834963345476

`or(A000079(n), A318307(A165905(n)))`
-/

namespace A025588.P6174631834963345476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A318307 (A165905 n).toNat)

end

end A025588.P6174631834963345476

/-! ## A025588.P8434560924846409544

`or(A054842(n), A318307(A165905(n)))`
-/

namespace A025588.P8434560924846409544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054842 n) (A318307 (A165905 n).toNat)

end

end A025588.P8434560924846409544

/-! ## A025588.P6008825724185825812

`or(A290389(n), A318307(A165905(n)))`
-/

namespace A025588.P6008825724185825812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290389 n) (A318307 (A165905 n).toNat)

end

end A025588.P6008825724185825812

/-!
# A025589: Number of n-move self-avoiding knight paths on 5 X 5 board, beginning at corner.

The programs for A025589, there is no canonical definition to state claims against.
-/

/-! ## A025589.P812068104990225415

`A195924(∑[A253586(n)])`
-/

namespace A025589.P812068104990225415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195924 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025589.P812068104990225415

/-! ## A025589.P5187529166978935736

`record[A195924(A056019(n))]`
-/

namespace A025589.P5187529166978935736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195924 (A056019 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025589.P5187529166978935736

/-!
# A025590: Number of n-move self-avoiding knight paths on 6x6 board, beginning at corner.

The programs for A025590, there is no canonical definition to state claims against.
-/

/-! ## A025590.P3242465424221686415

`A243650(A128714(n))+A077644(n)`
-/

namespace A025590.P3242465424221686415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243650 (A128714 n).toNat + A077644 n

end

end A025590.P3242465424221686415

/-! ## A025590.P14865920162856412307

`A374687(3*n)-A057918(A076868(2*n))`
-/

namespace A025590.P14865920162856412307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374687 (3 * n) - A057918 (A076868 (2 * n)).toNat

end

end A025590.P14865920162856412307

/-!
# A025591: Maximal coefficient of Product_{k<=n} (1 + x^k). Number of solutions to +- 1 +- 2 +- 3 +- ... +- n = 0 or 1.

The programs for A025591, there is no canonical definition to state claims against.
-/

/-! ## A025591.P16771987669068895878

`A063865(n)+A063866(n)`
-/

namespace A025591.P16771987669068895878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 n + A063866 n

end

end A025591.P16771987669068895878

/-! ## A025591.P14784100296572416755

`A063867(n)-A063866(n)`
-/

namespace A025591.P14784100296572416755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063867 n - A063866 n

end

end A025591.P14784100296572416755

/-! ## A025591.P10811167995486374065

`A063867(n)/A014695(n)`
-/

namespace A025591.P10811167995486374065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063867 n : ℚ) / (A014695 n : ℚ)

end

end A025591.P10811167995486374065

/-! ## A025591.P10376188155878122644

`A063867(n)/A063867(and(2, -n))`
-/

namespace A025591.P10376188155878122644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063867 n : ℚ) / (A063867 (Int.land 2 (-(n : ℤ))).toNat : ℚ)

end

end A025591.P10376188155878122644

/-! ## A025591.P13158068388812066890

`(A063867(n)+A063865(n))/2`
-/

namespace A025591.P13158068388812066890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063867 n + A063865 n : ℚ) / 2

end

end A025591.P13158068388812066890

/-! ## A025591.P1259595498787404922

`gcd(A000217(n)*A063866(n), A063867(n))`
-/

namespace A025591.P1259595498787404922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 n * A063866 n) (A063867 n)

end

end A025591.P1259595498787404922

/-! ## A025591.P16098012677047806394

`gcd(A063865(n)%A000980(n), A063866(n))`
-/

namespace A025591.P16098012677047806394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A063865 n) (A000980 n)) (A063866 n)

end

end A025591.P16098012677047806394

/-! ## A025591.P1930824409761165295

`A063867(n)/A000034(∑[n])`
-/

namespace A025591.P1930824409761165295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063867 n : ℚ) / (A000034 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A025591.P1930824409761165295

/-!
# A025592: Number of n-move bishop paths on 8x8 board from given corner to any square.

The programs for A025592, there is no canonical definition to state claims against.
-/

/-! ## A025592.P1385768084898745951

`A222254(or(1, A064686(2*n+1)))`
-/

namespace A025592.P1385768084898745951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (Int.lor 1 (A064686 (2 * n + 1))).toNat

end

end A025592.P1385768084898745951

/-!
# A025593: Number of n-move bishop paths on 8x8 board from given corner to same corner.

The programs for A025593, there is no canonical definition to state claims against.
-/

/-! ## A025593.P9311236693444732569

`xor(1, A025594(n))`
-/

namespace A025593.P9311236693444732569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A025594 n)

end

end A025593.P9311236693444732569

/-! ## A025593.P10669493091281869093

`A033999(n)+A025594(n)`
-/

namespace A025593.P10669493091281869093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A025594 n

end

end A025593.P10669493091281869093

/-! ## A025593.P8762504502539046709

`A025594(n)+2-A010684(n)`
-/

namespace A025593.P8762504502539046709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025594 n + (2 - A010684 n)

end

end A025593.P8762504502539046709

/-! ## A025593.P13501514660757694235

`A025594(n)+∑[A002448(n²)]`
-/

namespace A025593.P13501514660757694235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025594 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025593.P13501514660757694235

/-!
# A025594: Number of n-move bishop paths on 8x8 board from given corner to opposite corner.

The programs for A025594, there is no canonical definition to state claims against.
-/

/-! ## A025594.P9187463790393685279

`xor(1, A025593(n))`
-/

namespace A025594.P9187463790393685279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A025593 n)

end

end A025594.P9187463790393685279

/-! ## A025594.P1090038916461551966

`A025593(n)-A033999(n)`
-/

namespace A025594.P1090038916461551966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025593 n - A033999 n

end

end A025594.P1090038916461551966

/-! ## A025594.P13835483120780855579

`A033999(n+1)+A025593(n)`
-/

namespace A025594.P13835483120780855579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A025593 n

end

end A025594.P13835483120780855579

/-! ## A025594.P5960100907419253133

`A025593(n)-∑[A002448(n²)]`
-/

namespace A025594.P5960100907419253133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025593 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025594.P5960100907419253133

/-!
# A025596: Number of n-move king paths on 8x8 board from given corner to same corner.

The programs for A025596, there is no canonical definition to state claims against.
-/

/-! ## A025596.P15943527672075667606

`A172361(n^A043568(n))`
-/

namespace A025596.P15943527672075667606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172361 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A043568 n : ℤ))).toNat

end

end A025596.P15943527672075667606

/-! ## A025596.P3313304924641530363

`A172361(n^A172363(n))`
-/

namespace A025596.P3313304924641530363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172361 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A172363 n : ℤ))).toNat

end

end A025596.P3313304924641530363

/-! ## A025596.P14066072841934919201

`A172361(n^A172368(n))`
-/

namespace A025596.P14066072841934919201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172361 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A172368 n : ℤ))).toNat

end

end A025596.P14066072841934919201

/-! ## A025596.P3861596450810396368

`A172361(n^A172369(n))`
-/

namespace A025596.P3861596450810396368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172361 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A172369 n : ℤ))).toNat

end

end A025596.P3861596450810396368

/-! ## A025596.P3998657914344561816

`A172361(n^A339221(n))`
-/

namespace A025596.P3998657914344561816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172361 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A339221 n : ℤ))).toNat

end

end A025596.P3998657914344561816

/-!
# A025597: Number of n-move king paths on 8 X 8 board from given corner to opposite corner.

The programs for A025597, there is no canonical definition to state claims against.
-/

/-! ## A025597.P7943231642673334332

`A360952(A103600(n+1)-1)`
-/

namespace A025597.P7943231642673334332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360952 (A103600 (n + 1) - 1).toNat

end

end A025597.P7943231642673334332

/-! ## A025597.P10110461655916244873

`C(n, p?[a(n-1)-4])` with `a(0)=63`
-/

namespace A025597.P10110461655916244873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [63] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A025597.P10110461655916244873

/-! ## A025597.P970730136808921975

`xor(C(n^a(n-1), 5), char[7])` with `a(0)=0`
-/

namespace A025597.P970730136808921975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (Nat.choose (n ^ a (n - 1)) 5) (if ∃ j, f1 j = n then 1 else 0)

end

end A025597.P970730136808921975

/-! ## A025597.P14636397747463382684

`A346777(C(n, 7))`
-/

namespace A025597.P14636397747463382684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346777 (Nat.choose n 7)

end

end A025597.P14636397747463382684

/-! ## A025597.P2061892657376066349

`A327665(C(n+1, 8))`
-/

namespace A025597.P2061892657376066349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327665 (Nat.choose (n + 1) 8)

end

end A025597.P2061892657376066349

/-!
# A025598: Number of n-move king paths on 8 X 8 board from given corner to adjacent corner.

The programs for A025598, there is no canonical definition to state claims against.
-/

/-! ## A025598.P9664389640655096945

`Δ[C(n, 2)^4]%A103280(A007053(n))`
-/

namespace A025598.P9664389640655096945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A103280 (A007053 n).toNat)

end

end A025598.P9664389640655096945

/-! ## A025598.P17567620634204075405

`A195040(floor(A056542(n+1)/A124388(n)))`
-/

namespace A025598.P17567620634204075405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195040 ⌊(A056542 (n + 1) : ℚ) / (A124388 n : ℚ)⌋.toNat

end

end A025598.P17567620634204075405

/-! ## A025598.P17941162871350567113

`A235049(A034694(n+1)*A263822(n+1))`
-/

namespace A025598.P17941162871350567113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A034694 (n + 1) * A263822 (n + 1)).toNat

end

end A025598.P17941162871350567113

/-! ## A025598.P281891024090012775

`A235049(lcm(A034694(n+1), A263822(n+1)))`
-/

namespace A025598.P281891024090012775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (Int.lcm (A034694 (n + 1)) (A263822 (n + 1)))

end

end A025598.P281891024090012775

/-! ## A025598.P3586295760304823272

`A258209(and(A053751(n+1), A272615(n+1)))`
-/

namespace A025598.P3586295760304823272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258209 (Int.land (A053751 (n + 1)) (A272615 (n + 1))).toNat

end

end A025598.P3586295760304823272

/-!
# A025599: Number of n-move knight paths on 8 X 8 board from given corner to any square.

The programs for A025599, there is no canonical definition to state claims against.
-/

/-! ## A025599.P7351635538358017856

`A004001(A045379(n)-A000984(n)+1)`
-/

namespace A025599.P7351635538358017856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A045379 n - A000984 n + 1).toNat

end

end A025599.P7351635538358017856

