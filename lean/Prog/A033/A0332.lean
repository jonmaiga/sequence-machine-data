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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
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

/-!
# A033200: Primes congruent to {1, 3} (mod 8); or, odd primes of form x^2 + 2*y^2.

The programs for A033200, the canonical program `A033200.P10863379219943570931` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033200 has offset 1).

The definition of A033200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033203, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033200.P10863379219943570931

`A033203(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033200

/-- `A033203(n+2)` -/
def P10863379219943570931.Spec : Prop :=
  ∀ n, P10863379219943570931.a n = A033200 (n + 1)

theorem P10863379219943570931.correct : P10863379219943570931.Spec := by
  intro n
  simp only [A033200, Nat.add_sub_cancel]

end A033200

/-! ## A033200.P7764762037081623473

`p?[xor(1, 3*n)+n]`
-/

namespace A033200.P7764762037081623473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033200.P7764762037081623473

namespace A033200

/-- `p?[xor(1, 3*n)+n]` -/
def P7764762037081623473.Spec : Prop :=
  ∀ n, (P7764762037081623473.a n : ℤ) = A033200 (n + 1)

end A033200

/-! ## A033200.P6698478023438319414

`p?[a(n-2)+8]` with `a(0)=1, a(1)=3`
-/

namespace A033200.P6698478023438319414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033200.P6698478023438319414

namespace A033200

/-- `p?[a(n-2)+8]` -/
def P6698478023438319414.Spec : Prop :=
  ∀ n, (P6698478023438319414.a n : ℤ) = A033200 (n + 1)

end A033200

/-! ## A033200.P1221098384854510318

`p?[ogf((x+2x^2+5x^3)/(1-x-x^3+x^4))]`
-/

namespace A033200.P1221098384854510318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 5] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033200.P1221098384854510318

namespace A033200

/-- `p?[ogf((x+2x^2+5x^3)/(1-x-x^3+x^4))]` -/
def P1221098384854510318.Spec : Prop :=
  ∀ n, P1221098384854510318.a n = A033200 (n + 1)

end A033200

/-! ## A033200.P14108951539463867923

`p?[A341784(n+2)]`
-/

namespace A033200.P14108951539463867923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033200.P14108951539463867923

namespace A033200

/-- `p?[A341784(n+2)]` -/
def P14108951539463867923.Spec : Prop :=
  ∀ n, P14108951539463867923.a n = A033200 (n + 1)

end A033200

/-! ## A033200.P15477399317955456979

`p?[A365082(n+1)]`
-/

namespace A033200.P15477399317955456979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033200.P15477399317955456979

namespace A033200

/-- `p?[A365082(n+1)]` -/
def P15477399317955456979.Spec : Prop :=
  ∀ n, P15477399317955456979.a n = A033200 (n + 1)

end A033200

/-! ## A033200.P4019935232107999694

`p?[n%4+2*n]`
-/

namespace A033200.P4019935232107999694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033200.P4019935232107999694

namespace A033200

/-- `p?[n%4+2*n]` -/
def P4019935232107999694.Spec : Prop :=
  ∀ n, (P4019935232107999694.a n : ℤ) = A033200 (n + 1)

end A033200

/-! ## A033200.P17143619703657374041

`p?[or(3, n+2)+n]`
-/

namespace A033200.P17143619703657374041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (n + 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033200.P17143619703657374041

namespace A033200

/-- `p?[or(3, n+2)+n]` -/
def P17143619703657374041.Spec : Prop :=
  ∀ n, (P17143619703657374041.a n : ℤ) = A033200 (n + 1)

end A033200

/-! ## A033200.P13122056571013347835

`p?[and(3, n)+2*n]`
-/

namespace A033200.P13122056571013347835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033200.P13122056571013347835

namespace A033200

/-- `p?[and(3, n)+2*n]` -/
def P13122056571013347835.Spec : Prop :=
  ∀ n, (P13122056571013347835.a n : ℤ) = A033200 (n + 1)

end A033200

/-! ## A033200.P10588673161415567995

`p?[n*and(2, n)-3]`
-/

namespace A033200.P10588673161415567995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 2 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033200.P10588673161415567995

namespace A033200

/-- `p?[n*and(2, n)-3]` -/
def P10588673161415567995.Spec : Prop :=
  ∀ n, P10588673161415567995.a n = A033200 (n + 1)

end A033200

/-! ## A033200.P14119372703587925415

`p?[and(3, n)+n+n]`
-/

namespace A033200.P14119372703587925415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033200.P14119372703587925415

namespace A033200

/-- `p?[and(3, n)+n+n]` -/
def P14119372703587925415.Spec : Prop :=
  ∀ n, (P14119372703587925415.a n : ℤ) = A033200 (n + 1)

end A033200

/-! ## A033200.P16128669207872850730

`p?[n²-xor(2, n+1)²]`
-/

namespace A033200.P16128669207872850730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.xor 2 (n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033200.P16128669207872850730

namespace A033200

/-- `p?[n²-xor(2, n+1)²]` -/
def P16128669207872850730.Spec : Prop :=
  ∀ n, P16128669207872850730.a n = A033200 (n + 1)

end A033200

/-! ## A033200.P8319072277987781935

`p?[4*n-a(n-2)]` with `a(0)=0, a(1)=3`
-/

namespace A033200.P8319072277987781935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  (4 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033200.P8319072277987781935

namespace A033200

/-- `p?[4*n-a(n-2)]` -/
def P8319072277987781935.Spec : Prop :=
  ∀ n, P8319072277987781935.a n = A033200 (n + 1)

end A033200

/-! ## A033200.P7528085360060225615

`p?[2*n+1-gcd(4, n+1)]`
-/

namespace A033200.P7528085360060225615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.gcd 4 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033200.P7528085360060225615

namespace A033200

/-- `p?[2*n+1-gcd(4, n+1)]` -/
def P7528085360060225615.Spec : Prop :=
  ∀ n, P7528085360060225615.a n = A033200 (n + 1)

end A033200

/-! ## A033200.P5057058816250516926

`p?[gcd(n+2, 2*n)+2*n+1]`
-/

namespace A033200.P5057058816250516926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (2 * n) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033200.P5057058816250516926

namespace A033200

/-- `p?[gcd(n+2, 2*n)+2*n+1]` -/
def P5057058816250516926.Spec : Prop :=
  ∀ n, (P5057058816250516926.a n : ℤ) = A033200 (n + 1)

end A033200

/-! ## A033200.P9331402440871083771

`p?[floor(8*n/5)]`
-/

namespace A033200.P9331402440871083771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033200.P9331402440871083771

namespace A033200

/-- `p?[floor(8*n/5)]` -/
def P9331402440871083771.Spec : Prop :=
  ∀ n, P9331402440871083771.a n = A033200 (n + 1)

end A033200

/-! ## A033200.P17017846297582454558

`∩[A045323(n+1), A045403(n+1)]`
-/

namespace A033200.P17017846297582454558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033200.P17017846297582454558

namespace A033200

/-- `∩[A045323(n+1), A045403(n+1)]` -/
def P17017846297582454558.Spec : Prop :=
  ∀ n, (P17017846297582454558.a n : ℤ) = A033200 (n + 1)

end A033200

/-! ## A033200.P4090145447656396783

`∩[A365082(n+1), A260442(n)]`
-/

namespace A033200.P4090145447656396783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033200.P4090145447656396783

namespace A033200

/-- `∩[A365082(n+1), A260442(n)]` -/
def P4090145447656396783.Spec : Prop :=
  ∀ n, (P4090145447656396783.a n : ℤ) = A033200 (n + 1)

end A033200

/-! ## A033200.P17823660353869920380

`record[A020639(and(n+2, n-2)+1)]`
-/

namespace A033200.P17823660353869920380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.land (n + 2 : ℤ) ((n : ℤ) - 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033200.P17823660353869920380

namespace A033200

/-- `record[A020639(and(n+2, n-2)+1)]` -/
def P17823660353869920380.Spec : Prop :=
  ∀ n, P17823660353869920380.a n = A033200 (n + 1)

end A033200

/-! ## A033200.P6734489937002856434

`filter[A365082(n+1), A008966(#)]`
-/

namespace A033200.P6734489937002856434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A033200.P6734489937002856434

namespace A033200

/-- `filter[A365082(n+1), A008966(#)]` -/
def P6734489937002856434.Spec : Prop :=
  ∀ n, P6734489937002856434.a n = A033200 (n + 1)

end A033200

/-!
# A033201: Primes of the form x^2 + 10*y^2.

The programs for A033201, the canonical program `A033201.P17519900448362923426` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033201 has offset 1).

The definition of A033201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033201.P17519900448362923426

`p?[or(5, 5*n)-60]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033201

/-- `p?[or(5, 5*n)-60]` -/
def P17519900448362923426.Spec : Prop :=
  ∀ n, P17519900448362923426.a n = A033201 (n + 1)

theorem P17519900448362923426.correct : P17519900448362923426.Spec := by
  intro n
  simp only [A033201, Nat.add_sub_cancel]

end A033201

/-! ## A033201.P734402545334186461

`p?[-or(5, -5*n)]`
-/

namespace A033201.P734402545334186461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 5 (-(5 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033201.P734402545334186461

namespace A033201

/-- `p?[-or(5, -5*n)]` -/
def P734402545334186461.Spec : Prop :=
  ∀ n, P734402545334186461.a n = A033201 (n + 1)

end A033201

/-! ## A033201.P1188081468826351601

`∪[A107145(n+1), A139829(n+1)]`
-/

namespace A033201.P1188081468826351601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P1188081468826351601

namespace A033201

/-- `∪[A107145(n+1), A139829(n+1)]` -/
def P1188081468826351601.Spec : Prop :=
  ∀ n, (P1188081468826351601.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P18443198044141483722

`∩[A033200(n+1), A038872(n+1)]`
-/

namespace A033201.P18443198044141483722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P18443198044141483722

namespace A033201

/-- `∩[A033200(n+1), A038872(n+1)]` -/
def P18443198044141483722.Spec : Prop :=
  ∀ n, (P18443198044141483722.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P6944076458133962754

`∩[A033203(n+1), A038872(n+1)]`
-/

namespace A033201.P6944076458133962754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P6944076458133962754

namespace A033201

/-- `∩[A033203(n+1), A038872(n+1)]` -/
def P6944076458133962754.Spec : Prop :=
  ∀ n, (P6944076458133962754.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P10448355724434552116

`∩[A033200(n+1), A045468(n+1)]`
-/

namespace A033201.P10448355724434552116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P10448355724434552116

namespace A033201

/-- `∩[A033200(n+1), A045468(n+1)]` -/
def P10448355724434552116.Spec : Prop :=
  ∀ n, (P10448355724434552116.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P7995054931963454522

`∩[A033203(n+1), A045468(n+1)]`
-/

namespace A033201.P7995054931963454522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P7995054931963454522

namespace A033201

/-- `∩[A033203(n+1), A045468(n+1)]` -/
def P7995054931963454522.Spec : Prop :=
  ∀ n, (P7995054931963454522.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P2334338540497325217

`∩[A033200(n+1), A064739(n+1)]`
-/

namespace A033201.P2334338540497325217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P2334338540497325217

namespace A033201

/-- `∩[A033200(n+1), A064739(n+1)]` -/
def P2334338540497325217.Spec : Prop :=
  ∀ n, (P2334338540497325217.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P16769035198494940186

`∩[A033200(n+1), A293859(n+1)]`
-/

namespace A033201.P16769035198494940186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P16769035198494940186

namespace A033201

/-- `∩[A033200(n+1), A293859(n+1)]` -/
def P16769035198494940186.Spec : Prop :=
  ∀ n, (P16769035198494940186.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P8413159398484096658

`∩[A033200(n+1), A076518(n+1)]`
-/

namespace A033201.P8413159398484096658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P8413159398484096658

namespace A033201

/-- `∩[A033200(n+1), A076518(n+1)]` -/
def P8413159398484096658.Spec : Prop :=
  ∀ n, (P8413159398484096658.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P10639524193678691384

`∩[A038872(n+1), A341784(n+1)]`
-/

namespace A033201.P10639524193678691384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P10639524193678691384

namespace A033201

/-- `∩[A038872(n+1), A341784(n+1)]` -/
def P10639524193678691384.Spec : Prop :=
  ∀ n, (P10639524193678691384.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P6564524034828789942

`∩[A365082(n+1), A064739(n+1)]`
-/

namespace A033201.P6564524034828789942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P6564524034828789942

namespace A033201

/-- `∩[A365082(n+1), A064739(n+1)]` -/
def P6564524034828789942.Spec : Prop :=
  ∀ n, (P6564524034828789942.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P12960984276775350731

`∩[A033203(n+1), A219612(n+1)]`
-/

namespace A033201.P12960984276775350731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P12960984276775350731

namespace A033201

/-- `∩[A033203(n+1), A219612(n+1)]` -/
def P12960984276775350731.Spec : Prop :=
  ∀ n, (P12960984276775350731.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P4276158106933300214

`∩[A023173(n+1), A033200(n+1)]`
-/

namespace A033201.P4276158106933300214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P4276158106933300214

namespace A033201

/-- `∩[A023173(n+1), A033200(n+1)]` -/
def P4276158106933300214.Spec : Prop :=
  ∀ n, (P4276158106933300214.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P169778486354262734

`∩[A023173(n+1), A365082(n+1)]`
-/

namespace A033201.P169778486354262734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P169778486354262734

namespace A033201

/-- `∩[A023173(n+1), A365082(n+1)]` -/
def P169778486354262734.Spec : Prop :=
  ∀ n, (P169778486354262734.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P5086375738790687790

`∩[A033200(n+1), A057538(n+1)]`
-/

namespace A033201.P5086375738790687790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P5086375738790687790

namespace A033201

/-- `∩[A033200(n+1), A057538(n+1)]` -/
def P5086375738790687790.Spec : Prop :=
  ∀ n, (P5086375738790687790.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P609984688495297044

`∩[A033203(n+1), A057538(n+1)]`
-/

namespace A033201.P609984688495297044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033201.P609984688495297044

namespace A033201

/-- `∩[A033203(n+1), A057538(n+1)]` -/
def P609984688495297044.Spec : Prop :=
  ∀ n, (P609984688495297044.a n : ℤ) = A033201 (n + 1)

end A033201

/-! ## A033201.P13501745728107377027

`p?[A020673(n+1)]`
-/

namespace A033201.P13501745728107377027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033201.P13501745728107377027

namespace A033201

/-- `p?[A020673(n+1)]` -/
def P13501745728107377027.Spec : Prop :=
  ∀ n, P13501745728107377027.a n = A033201 (n + 1)

end A033201

/-! ## A033201.P1291950378002963691

`filter[A020673(n+2), A010051(#)]`
-/

namespace A033201.P1291950378002963691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A033201.P1291950378002963691

namespace A033201

/-- `filter[A020673(n+2), A010051(#)]` -/
def P1291950378002963691.Spec : Prop :=
  ∀ n, P1291950378002963691.a n = A033201 (n + 1)

end A033201

/-! ## A033201.P10659547136786868486

`filter[A020673(n+2), A323153(#)]`
-/

namespace A033201.P10659547136786868486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A033201.P10659547136786868486

namespace A033201

/-- `filter[A020673(n+2), A323153(#)]` -/
def P10659547136786868486.Spec : Prop :=
  ∀ n, P10659547136786868486.a n = A033201 (n + 1)

end A033201

/-!
# A033202: Primes of form x^2+93*y^2.

The programs for A033202, there is no canonical definition to state claims against.
-/

/-! ## A033202.P8234366924479999198

`∩[A068228(n+1), A141338(n+1)]`
-/

namespace A033202.P8234366924479999198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P8234366924479999198

/-! ## A033202.P17754310796287589525

`∩[A068228(n+1), A191024(n+1)]`
-/

namespace A033202.P17754310796287589525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P17754310796287589525

/-! ## A033202.P3933745797062415289

`∩[A068228(n+1), A267481(n+1)]`
-/

namespace A033202.P3933745797062415289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P3933745797062415289

/-! ## A033202.P2575494073870857044

`∩[A191024(n+1), A351537(n+1)]`
-/

namespace A033202.P2575494073870857044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P2575494073870857044

/-! ## A033202.P14954663406202668034

`∩[A038874(n+1), A141338(n+1)]`
-/

namespace A033202.P14954663406202668034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P14954663406202668034

/-! ## A033202.P13353264285309259248

`∩[A097933(n+1), A141338(n+1)]`
-/

namespace A033202.P13353264285309259248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P13353264285309259248

/-! ## A033202.P616855778315773341

`∩[A296933(n+1), A141338(n+1)]`
-/

namespace A033202.P616855778315773341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P616855778315773341

/-! ## A033202.P11055530722008428089

`∩[A002144(n+1), A141338(n+1)]`
-/

namespace A033202.P11055530722008428089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P11055530722008428089

/-! ## A033202.P7307514295333846641

`∩[A002313(n+1), A141338(n+1)]`
-/

namespace A033202.P7307514295333846641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P7307514295333846641

/-! ## A033202.P16996768571608582270

`∩[A038981(n+1), A068228(n+1)]`
-/

namespace A033202.P16996768571608582270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P16996768571608582270

/-! ## A033202.P8732166432384923204

`∩[A068228(n+1), A191055(n+1)]`
-/

namespace A033202.P8732166432384923204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P8732166432384923204

/-! ## A033202.P16520864818243228659

`∩[A038981(n+1), A351537(n+1)]`
-/

namespace A033202.P16520864818243228659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P16520864818243228659

/-! ## A033202.P7396993538094409487

`∩[A191055(n+1), A351537(n+1)]`
-/

namespace A033202.P7396993538094409487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P7396993538094409487

/-! ## A033202.P15038566332032161084

`∩[A038905(n+1), A068228(n+1)]`
-/

namespace A033202.P15038566332032161084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P15038566332032161084

/-! ## A033202.P4397689632765246269

`∩[A038905(n+1), A351537(n+1)]`
-/

namespace A033202.P4397689632765246269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P4397689632765246269

/-! ## A033202.P9737144695244295733

`∩[A055025(n+1), A141338(n+1)]`
-/

namespace A033202.P9737144695244295733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P9737144695244295733

/-! ## A033202.P1826054792336796073

`∩[A120960(n+1), A141338(n+1)]`
-/

namespace A033202.P1826054792336796073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P1826054792336796073

/-! ## A033202.P13445829850990860234

`∩[A085759(n+1), A141338(n+1)]`
-/

namespace A033202.P13445829850990860234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P13445829850990860234

/-! ## A033202.P10702681963981645370

`∩[A038905(n+1), A353198(n+1)]`
-/

namespace A033202.P10702681963981645370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P10702681963981645370

/-! ## A033202.P17010340650717709478

`∩[A038905(n+1), A155560(n+1)]`
-/

namespace A033202.P17010340650717709478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033202.P17010340650717709478

/-!
# A033203: Primes p congruent to {1, 2, 3} (mod 8); or primes p of form x^2 + 2*y^2; or primes p such that x^2 = -2 has a solution mod p.

The programs for A033203, the canonical program `A033203.P9190961186185627516` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033203 has offset 1).

The definition of A033203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033203.P9190961186185627516

`p?[a(n-3)+8]` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033203

/-- `p?[a(n-3)+8]` -/
def P9190961186185627516.Spec : Prop :=
  ∀ n, (P9190961186185627516.a n : ℤ) = A033203 (n + 1)

theorem P9190961186185627516.correct : P9190961186185627516.Spec := by
  intro n
  simp only [A033203, Nat.add_sub_cancel]

end A033203

/-! ## A033203.P49259463987102903

`p?[ogf((1+x+x^2+5x^3)/(1-x-x^3+x^4))]`
-/

namespace A033203.P49259463987102903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 5] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033203.P49259463987102903

namespace A033203

/-- `p?[ogf((1+x+x^2+5x^3)/(1-x-x^3+x^4))]` -/
def P49259463987102903.Spec : Prop :=
  ∀ n, P49259463987102903.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P3844799703933563716

`p?[A341784(n+1)]`
-/

namespace A033203.P3844799703933563716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033203.P3844799703933563716

namespace A033203

/-- `p?[A341784(n+1)]` -/
def P3844799703933563716.Spec : Prop :=
  ∀ n, P3844799703933563716.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P18336466917240674828

`p?[2*n-n%4]`
-/

namespace A033203.P18336466917240674828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033203.P18336466917240674828

namespace A033203

/-- `p?[2*n-n%4]` -/
def P18336466917240674828.Spec : Prop :=
  ∀ n, P18336466917240674828.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P12147098712426262083

`p?[or(3, n)-2+n]`
-/

namespace A033203.P12147098712426262083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033203.P12147098712426262083

namespace A033203

/-- `p?[or(3, n)-2+n]` -/
def P12147098712426262083.Spec : Prop :=
  ∀ n, P12147098712426262083.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P13832022707540905436

`p?[2*n-and(3, n)]`
-/

namespace A033203.P13832022707540905436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033203.P13832022707540905436

namespace A033203

/-- `p?[2*n-and(3, n)]` -/
def P13832022707540905436.Spec : Prop :=
  ∀ n, P13832022707540905436.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P9339898472073530725

`p?[or(3, n)-(2-n)]`
-/

namespace A033203.P9339898472073530725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033203.P9339898472073530725

namespace A033203

/-- `p?[or(3, n)-(2-n)]` -/
def P9339898472073530725.Spec : Prop :=
  ∀ n, P9339898472073530725.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P6402033119719412922

`p?[n-and(3, n)+n]`
-/

namespace A033203.P6402033119719412922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 3 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033203.P6402033119719412922

namespace A033203

/-- `p?[n-and(3, n)+n]` -/
def P6402033119719412922.Spec : Prop :=
  ∀ n, P6402033119719412922.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P9838099469602261364

`p?[n-(and(3, n)-n)]`
-/

namespace A033203.P9838099469602261364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.land 3 n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033203.P9838099469602261364

namespace A033203

/-- `p?[n-(and(3, n)-n)]` -/
def P9838099469602261364.Spec : Prop :=
  ∀ n, P9838099469602261364.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P11110363757838410503

`p?[4*n-a(n-2)]` with `a(0)=2, a(1)=3`
-/

namespace A033203.P11110363757838410503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  (4 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033203.P11110363757838410503

namespace A033203

/-- `p?[4*n-a(n-2)]` -/
def P11110363757838410503.Spec : Prop :=
  ∀ n, P11110363757838410503.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P1118479203439430543

`∩[A042998(n+1), A045323(n+1)]`
-/

namespace A033203.P1118479203439430543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033203.P1118479203439430543

namespace A033203

/-- `∩[A042998(n+1), A045323(n+1)]` -/
def P1118479203439430543.Spec : Prop :=
  ∀ n, (P1118479203439430543.a n : ℤ) = A033203 (n + 1)

end A033203

/-! ## A033203.P6008512375017714270

`p?[2*n-A010873(n)]`
-/

namespace A033203.P6008512375017714270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A010873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033203.P6008512375017714270

namespace A033203

/-- `p?[2*n-A010873(n)]` -/
def P6008512375017714270.Spec : Prop :=
  ∀ n, P6008512375017714270.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P17432664342316463809

`∩[A000040(n+1), A341784(n+1)]`
-/

namespace A033203.P17432664342316463809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033203.P17432664342316463809

namespace A033203

/-- `∩[A000040(n+1), A341784(n+1)]` -/
def P17432664342316463809.Spec : Prop :=
  ∀ n, (P17432664342316463809.a n : ℤ) = A033203 (n + 1)

end A033203

/-! ## A033203.P4871927219174296813

`∩[A341784(n+1), A260442(n)]`
-/

namespace A033203.P4871927219174296813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033203.P4871927219174296813

namespace A033203

/-- `∩[A341784(n+1), A260442(n)]` -/
def P4871927219174296813.Spec : Prop :=
  ∀ n, (P4871927219174296813.a n : ℤ) = A033203 (n + 1)

end A033203

/-! ## A033203.P9726245289118954013

`p?[n%or(4, n)]`
-/

namespace A033203.P9726245289118954013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033203.P9726245289118954013

namespace A033203

/-- `p?[n%or(4, n)]` -/
def P9726245289118954013.Spec : Prop :=
  ∀ n, (P9726245289118954013.a n : ℤ) = A033203 (n + 1)

end A033203

/-! ## A033203.P8623431445540094996

`record[p?[and(n, -5)]]`
-/

namespace A033203.P8623431445540094996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033203.P8623431445540094996

namespace A033203

/-- `record[p?[and(n, -5)]]` -/
def P8623431445540094996.Spec : Prop :=
  ∀ n, P8623431445540094996.a n = A033203 (n + 1)

end A033203

/-! ## A033203.P4286104263788041498

`p?[xor(4, n)%(n+3)]`
-/

namespace A033203.P4286104263788041498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 n % (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033203.P4286104263788041498

namespace A033203

/-- `p?[xor(4, n)%(n+3)]` -/
def P4286104263788041498.Spec : Prop :=
  ∀ n, (P4286104263788041498.a n : ℤ) = A033203 (n + 1)

end A033203

/-! ## A033203.P15178091302188915213

`p?[C(n, xor(4, n+3))]`
-/

namespace A033203.P15178091302188915213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.xor 4 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033203.P15178091302188915213

namespace A033203

/-- `p?[C(n, xor(4, n+3))]` -/
def P15178091302188915213.Spec : Prop :=
  ∀ n, (P15178091302188915213.a n : ℤ) = A033203 (n + 1)

end A033203

/-! ## A033203.P10648113125486426357

`p?[n*and(9, 2*n+1)]`
-/

namespace A033203.P10648113125486426357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 9 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033203.P10648113125486426357

namespace A033203

/-- `p?[n*and(9, 2*n+1)]` -/
def P10648113125486426357.Spec : Prop :=
  ∀ n, (P10648113125486426357.a n : ℤ) = A033203 (n + 1)

end A033203

/-! ## A033203.P14957997797683408216

`filter[A341784(n+1), A008966(#)]`
-/

namespace A033203.P14957997797683408216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A033203.P14957997797683408216

namespace A033203

/-- `filter[A341784(n+1), A008966(#)]` -/
def P14957997797683408216.Spec : Prop :=
  ∀ n, P14957997797683408216.a n = A033203 (n + 1)

end A033203

/-!
# A033205: Primes of form x^2 + 5*y^2.

The programs for A033205, the canonical program `A033205.P5950798907388333844` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033205 has offset 1).

The definition of A033205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033205.P5950798907388333844

`p?[10*n-a(n-2)]` with `a(0)=5, a(1)=9`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033205

/-- `p?[10*n-a(n-2)]` -/
def P5950798907388333844.Spec : Prop :=
  ∀ n, P5950798907388333844.a n = A033205 (n + 1)

theorem P5950798907388333844.correct : P5950798907388333844.Spec := by
  intro n
  simp only [A033205, Nat.add_sub_cancel]

end A033205

/-! ## A033205.P7615128012283413537

`p?[a(n-4)+20]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=16, a(4)=9`
-/

namespace A033205.P7615128012283413537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 16, 9] fun n f1 =>
  f1 (n - 4) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033205.P7615128012283413537

namespace A033205

/-- `p?[a(n-4)+20]` -/
def P7615128012283413537.Spec : Prop :=
  ∀ n, (P7615128012283413537.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P6095923095273882448

`∪[A106963(n+1), A047650(n)]`
-/

namespace A033205.P6095923095273882448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P6095923095273882448

namespace A033205

/-- `∪[A106963(n+1), A047650(n)]` -/
def P6095923095273882448.Spec : Prop :=
  ∀ n, (P6095923095273882448.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P11886263044815478080

`p?[A091729(n+1)]`
-/

namespace A033205.P11886263044815478080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033205.P11886263044815478080

namespace A033205

/-- `p?[A091729(n+1)]` -/
def P11886263044815478080.Spec : Prop :=
  ∀ n, P11886263044815478080.a n = A033205 (n + 1)

end A033205

/-! ## A033205.P11216764384565917562

`p?[3*n+1+n-n²%5]`
-/

namespace A033205.P11216764384565917562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 + n : ℤ) - ((n ^ 2 % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033205.P11216764384565917562

namespace A033205

/-- `p?[3*n+1+n-n²%5]` -/
def P11216764384565917562.Spec : Prop :=
  ∀ n, P11216764384565917562.a n = A033205 (n + 1)

end A033205

/-! ## A033205.P3166108524189216738

`∩[A002144(n+1), A038872(n+1)]`
-/

namespace A033205.P3166108524189216738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P3166108524189216738

namespace A033205

/-- `∩[A002144(n+1), A038872(n+1)]` -/
def P3166108524189216738.Spec : Prop :=
  ∀ n, (P3166108524189216738.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P11949838330204117010

`∩[A002313(n+1), A038872(n+1)]`
-/

namespace A033205.P11949838330204117010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P11949838330204117010

namespace A033205

/-- `∩[A002313(n+1), A038872(n+1)]` -/
def P11949838330204117010.Spec : Prop :=
  ∀ n, (P11949838330204117010.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P2639558658489909636

`∩[A002144(n+1), A091727(n+1)]`
-/

namespace A033205.P2639558658489909636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P2639558658489909636

namespace A033205

/-- `∩[A002144(n+1), A091727(n+1)]` -/
def P2639558658489909636.Spec : Prop :=
  ∀ n, (P2639558658489909636.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P6279984837440126883

`∩[A038872(n+1), A055025(n+1)]`
-/

namespace A033205.P6279984837440126883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P6279984837440126883

namespace A033205

/-- `∩[A038872(n+1), A055025(n+1)]` -/
def P6279984837440126883.Spec : Prop :=
  ∀ n, (P6279984837440126883.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P5658389680184945052

`∩[A038872(n+1), A120960(n+1)]`
-/

namespace A033205.P5658389680184945052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P5658389680184945052

namespace A033205

/-- `∩[A038872(n+1), A120960(n+1)]` -/
def P5658389680184945052.Spec : Prop :=
  ∀ n, (P5658389680184945052.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P7688343686637830040

`p?[A091730(n+1)]`
-/

namespace A033205.P7688343686637830040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033205.P7688343686637830040

namespace A033205

/-- `p?[A091730(n+1)]` -/
def P7688343686637830040.Spec : Prop :=
  ∀ n, P7688343686637830040.a n = A033205 (n + 1)

end A033205

/-! ## A033205.P2136737781818416802

`p?[A155565(n+1)]`
-/

namespace A033205.P2136737781818416802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033205.P2136737781818416802

namespace A033205

/-- `p?[A155565(n+1)]` -/
def P2136737781818416802.Spec : Prop :=
  ∀ n, P2136737781818416802.a n = A033205 (n + 1)

end A033205

/-! ## A033205.P15571007010455445732

`∩[A003653(n+1), A038872(n+1)]`
-/

namespace A033205.P15571007010455445732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P15571007010455445732

namespace A033205

/-- `∩[A003653(n+1), A038872(n+1)]` -/
def P15571007010455445732.Spec : Prop :=
  ∀ n, (P15571007010455445732.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P16044069144989827903

`∩[A038872(n+1), A231754(n+1)]`
-/

namespace A033205.P16044069144989827903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P16044069144989827903

namespace A033205

/-- `∩[A038872(n+1), A231754(n+1)]` -/
def P16044069144989827903.Spec : Prop :=
  ∀ n, (P16044069144989827903.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P9666096232947843150

`∩[A000040(n+1), A091729(n+1)]`
-/

namespace A033205.P9666096232947843150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P9666096232947843150

namespace A033205

/-- `∩[A000040(n+1), A091729(n+1)]` -/
def P9666096232947843150.Spec : Prop :=
  ∀ n, (P9666096232947843150.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P12489664660503049320

`∩[A000040(n+1), A155565(n+1)]`
-/

namespace A033205.P12489664660503049320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P12489664660503049320

namespace A033205

/-- `∩[A000040(n+1), A155565(n+1)]` -/
def P12489664660503049320.Spec : Prop :=
  ∀ n, (P12489664660503049320.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P6684356533542965377

`∩[A067126(n+1), A091729(n+1)]`
-/

namespace A033205.P6684356533542965377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P6684356533542965377

namespace A033205

/-- `∩[A067126(n+1), A091729(n+1)]` -/
def P6684356533542965377.Spec : Prop :=
  ∀ n, (P6684356533542965377.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P4933777236929419295

`∩[A174090(n+1), A091729(n+1)]`
-/

namespace A033205.P4933777236929419295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P4933777236929419295

namespace A033205

/-- `∩[A174090(n+1), A091729(n+1)]` -/
def P4933777236929419295.Spec : Prop :=
  ∀ n, (P4933777236929419295.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P15780325762520559785

`∩[A075763(n+1), A091729(n+1)]`
-/

namespace A033205.P15780325762520559785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P15780325762520559785

namespace A033205

/-- `∩[A075763(n+1), A091729(n+1)]` -/
def P15780325762520559785.Spec : Prop :=
  ∀ n, (P15780325762520559785.a n : ℤ) = A033205 (n + 1)

end A033205

/-! ## A033205.P5564935340787371771

`∩[A004613(n+1), A038872(n+1)]`
-/

namespace A033205.P5564935340787371771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033205.P5564935340787371771

namespace A033205

/-- `∩[A004613(n+1), A038872(n+1)]` -/
def P5564935340787371771.Spec : Prop :=
  ∀ n, (P5564935340787371771.a n : ℤ) = A033205 (n + 1)

end A033205

/-!
# A033206: Primes of form x^2+95*y^2.

The programs for A033206, there is no canonical definition to state claims against.
-/

/-! ## A033206.P16528886861554002149

`p?[eq[2, A030213(n)]]`
-/

namespace A033206.P16528886861554002149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030213 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033206.P16528886861554002149

/-! ## A033206.P1916076926239324089

`p?[n+1-A001489(n)*A030213(n)-A005408(n)]`
-/

namespace A033206.P1916076926239324089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001489 n * A030213 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033206.P1916076926239324089

/-!
# A033207: Primes of the form x^2 + 7*y^2.

The programs for A033207, the canonical program `A033207.P10182917039636896758` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033207 has offset 1).

The definition of A033207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033207.P10182917039636896758

`p?[a(n-1)+a(n-1)%7]` with `a(0)=1, a(1)=7, a(2)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033207

/-- `p?[a(n-1)+a(n-1)%7]` -/
def P10182917039636896758.Spec : Prop :=
  ∀ n, (P10182917039636896758.a n : ℤ) = A033207 (n + 1)

theorem P10182917039636896758.correct : P10182917039636896758.Spec := by
  intro n
  simp only [A033207, Nat.add_sub_cancel]

end A033207

/-! ## A033207.P5373017928299936893

`∪[A045461(n+1), A140442(n+1)]`
-/

namespace A033207.P5373017928299936893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P5373017928299936893

namespace A033207

/-- `∪[A045461(n+1), A140442(n+1)]` -/
def P5373017928299936893.Spec : Prop :=
  ∀ n, (P5373017928299936893.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P10669725414413337859

`A045373(n+2)`
-/

namespace A033207.P10669725414413337859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 2)

end

end A033207.P10669725414413337859

namespace A033207

/-- `A045373(n+2)` -/
def P10669725414413337859.Spec : Prop :=
  ∀ n, P10669725414413337859.a n = A033207 (n + 1)

end A033207

/-! ## A033207.P14201528034136067031

`∩[A045369(n+2), A042988(n)]`
-/

namespace A033207.P14201528034136067031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P14201528034136067031

namespace A033207

/-- `∩[A045369(n+2), A042988(n)]` -/
def P14201528034136067031.Spec : Prop :=
  ∀ n, (P14201528034136067031.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P16071418708413068664

`p?[A020670(n+1)]`
-/

namespace A033207.P16071418708413068664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033207.P16071418708413068664

namespace A033207

/-- `p?[A020670(n+1)]` -/
def P16071418708413068664.Spec : Prop :=
  ∀ n, P16071418708413068664.a n = A033207 (n + 1)

end A033207

/-! ## A033207.P15772867983959966743

`filter[A020670(n+2), A010051(#)]`
-/

namespace A033207.P15772867983959966743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A033207.P15772867983959966743

namespace A033207

/-- `filter[A020670(n+2), A010051(#)]` -/
def P15772867983959966743.Spec : Prop :=
  ∀ n, P15772867983959966743.a n = A033207 (n + 1)

end A033207

/-! ## A033207.P5008612359777327039

`filter[A020670(n+3), A380467(#)]`
-/

namespace A033207.P5008612359777327039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A033207.P5008612359777327039

namespace A033207

/-- `filter[A020670(n+3), A380467(#)]` -/
def P5008612359777327039.Spec : Prop :=
  ∀ n, P5008612359777327039.a n = A033207 (n + 1)

end A033207

/-! ## A033207.P6025989545239851668

`∩[A020670(n+1), A042988(n)]`
-/

namespace A033207.P6025989545239851668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P6025989545239851668

namespace A033207

/-- `∩[A020670(n+1), A042988(n)]` -/
def P6025989545239851668.Spec : Prop :=
  ∀ n, (P6025989545239851668.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P4964719785958412202

`∩[A000040(n+1), A020670(n+1)]`
-/

namespace A033207.P4964719785958412202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P4964719785958412202

namespace A033207

/-- `∩[A000040(n+1), A020670(n+1)]` -/
def P4964719785958412202.Spec : Prop :=
  ∀ n, (P4964719785958412202.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P13095497963526031830

`∩[A004139(n+1), A020670(n+1)]`
-/

namespace A033207.P13095497963526031830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P13095497963526031830

namespace A033207

/-- `∩[A004139(n+1), A020670(n+1)]` -/
def P13095497963526031830.Spec : Prop :=
  ∀ n, (P13095497963526031830.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P10840474575198679044

`∩[A020670(n+1), A045319(n+1)]`
-/

namespace A033207.P10840474575198679044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P10840474575198679044

namespace A033207

/-- `∩[A020670(n+1), A045319(n+1)]` -/
def P10840474575198679044.Spec : Prop :=
  ∀ n, (P10840474575198679044.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P4334579521576545259

`∩[A020670(n+1), A045320(n+1)]`
-/

namespace A033207.P4334579521576545259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P4334579521576545259

namespace A033207

/-- `∩[A020670(n+1), A045320(n+1)]` -/
def P4334579521576545259.Spec : Prop :=
  ∀ n, (P4334579521576545259.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P8455558695390927038

`∩[A020670(n+1), A045324(n+1)]`
-/

namespace A033207.P8455558695390927038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P8455558695390927038

namespace A033207

/-- `∩[A020670(n+1), A045324(n+1)]` -/
def P8455558695390927038.Spec : Prop :=
  ∀ n, (P8455558695390927038.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P255043862730058976

`∩[A020670(n+1), A045344(n+1)]`
-/

namespace A033207.P255043862730058976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P255043862730058976

namespace A033207

/-- `∩[A020670(n+1), A045344(n+1)]` -/
def P255043862730058976.Spec : Prop :=
  ∀ n, (P255043862730058976.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P14751662816449174390

`∩[A020670(n+1), A045346(n+1)]`
-/

namespace A033207.P14751662816449174390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P14751662816449174390

namespace A033207

/-- `∩[A020670(n+1), A045346(n+1)]` -/
def P14751662816449174390.Spec : Prop :=
  ∀ n, (P14751662816449174390.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P6109741748012258977

`∩[A020670(n+1), A045350(n+1)]`
-/

namespace A033207.P6109741748012258977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P6109741748012258977

namespace A033207

/-- `∩[A020670(n+1), A045350(n+1)]` -/
def P6109741748012258977.Spec : Prop :=
  ∀ n, (P6109741748012258977.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P12968391436912929133

`∩[A020670(n+1), A045369(n+1)]`
-/

namespace A033207.P12968391436912929133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P12968391436912929133

namespace A033207

/-- `∩[A020670(n+1), A045369(n+1)]` -/
def P12968391436912929133.Spec : Prop :=
  ∀ n, (P12968391436912929133.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P17930954723188049956

`∩[A020670(n+1), A065091(n+1)]`
-/

namespace A033207.P17930954723188049956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P17930954723188049956

namespace A033207

/-- `∩[A020670(n+1), A065091(n+1)]` -/
def P17930954723188049956.Spec : Prop :=
  ∀ n, (P17930954723188049956.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P1675886664672729354

`∩[A085118(n+1), A020670(n+1)]`
-/

namespace A033207.P1675886664672729354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033207.P1675886664672729354

namespace A033207

/-- `∩[A085118(n+1), A020670(n+1)]` -/
def P1675886664672729354.Spec : Prop :=
  ∀ n, (P1675886664672729354.a n : ℤ) = A033207 (n + 1)

end A033207

/-! ## A033207.P9519328018828961586

`p?[A244779(n+3)]`
-/

namespace A033207.P9519328018828961586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244779 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033207.P9519328018828961586

namespace A033207

/-- `p?[A244779(n+3)]` -/
def P9519328018828961586.Spec : Prop :=
  ∀ n, P9519328018828961586.a n = A033207 (n + 1)

end A033207

/-!
# A033208: Primes of form x^2+97*y^2.

The programs for A033208, there is no canonical definition to state claims against.
-/

/-! ## A033208.P7696400761952659146

`A092950(A046512(n+2)+1)`
-/

namespace A033208.P7696400761952659146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092950 (A046512 (n + 2) + 1).toNat

end

end A033208.P7696400761952659146

/-!
# A033209: Primes of form x^2 + 11*y^2.

The programs for A033209, there is no canonical definition to state claims against.
-/

/-! ## A033209.P16607279365839771651

`∪[A107149(n+1), A107150(n+1)]`
-/

namespace A033209.P16607279365839771651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P16607279365839771651

/-! ## A033209.P11401499173256413960

`∪[A107216(n+1), A107217(n+1)]`
-/

namespace A033209.P11401499173256413960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P11401499173256413960

/-! ## A033209.P6298645198984968426

`p?[A141579(n+1)]+9*A000007(n)`
-/

namespace A033209.P6298645198984968426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 9 * A000007 n

end

end A033209.P6298645198984968426

/-! ## A033209.P16498066512289198927

`A001222(a(n-1))*p?[A141579(n+1)]` with `a(0)=11`
-/

namespace A033209.P16498066512289198927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A001222 (a (n - 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033209.P16498066512289198927

/-! ## A033209.P9604315401155352051

`p?[A243651(n)]`
-/

namespace A033209.P9604315401155352051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033209.P9604315401155352051

/-! ## A033209.P13130737567642722413

`filter[A243651(n+1), A010051(#)]`
-/

namespace A033209.P13130737567642722413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A033209.P13130737567642722413

/-! ## A033209.P8332019706201558550

`∩[A000040(n+1), A243651(n)]`
-/

namespace A033209.P8332019706201558550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P8332019706201558550

/-! ## A033209.P15748206545620839146

`∩[A004139(n+1), A243651(n)]`
-/

namespace A033209.P15748206545620839146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P15748206545620839146

/-! ## A033209.P13740610963819807762

`∩[A045319(n+1), A243651(n)]`
-/

namespace A033209.P13740610963819807762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P13740610963819807762

/-! ## A033209.P16485554770686007445

`∩[A045344(n+1), A243651(n)]`
-/

namespace A033209.P16485554770686007445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P16485554770686007445

/-! ## A033209.P2599387043337982884

`∩[A054723(n+1), A243651(n)]`
-/

namespace A033209.P2599387043337982884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P2599387043337982884

/-! ## A033209.P5967954031501359171

`∩[A056874(n+1), A243651(n)]`
-/

namespace A033209.P5967954031501359171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P5967954031501359171

/-! ## A033209.P13955151638361014244

`∩[A065091(n+1), A243651(n)]`
-/

namespace A033209.P13955151638361014244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P13955151638361014244

/-! ## A033209.P11856335210321147701

`∩[A065396(n+1), A243651(n)]`
-/

namespace A033209.P11856335210321147701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P11856335210321147701

/-! ## A033209.P16408381714968296220

`∩[A085118(n+1), A243651(n)]`
-/

namespace A033209.P16408381714968296220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P16408381714968296220

/-! ## A033209.P15570017175780774486

`∩[A116974(n+1), A243651(n)]`
-/

namespace A033209.P15570017175780774486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P15570017175780774486

/-! ## A033209.P17530086414818315049

`∩[A157996(n+1), A243651(n)]`
-/

namespace A033209.P17530086414818315049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P17530086414818315049

/-! ## A033209.P18156201354463324649

`∩[A176165(n+1), A243651(n)]`
-/

namespace A033209.P18156201354463324649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P18156201354463324649

/-! ## A033209.P10496729819245611655

`∩[A216495(n+1), A243651(n)]`
-/

namespace A033209.P10496729819245611655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P10496729819245611655

/-! ## A033209.P17505792819136008274

`∩[A327906(n+1), A243651(n)]`
-/

namespace A033209.P17505792819136008274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033209.P17505792819136008274

/-!
# A033210: Primes of the form x^2+13*y^2.

The programs for A033210, there is no canonical definition to state claims against.
-/

/-! ## A033210.P7207447999193441378

`∪[A107159(n+1), A107160(n+1)]`
-/

namespace A033210.P7207447999193441378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P7207447999193441378

/-! ## A033210.P4911548191683289622

`A038883(eq[1, A038883(n+1)%4]+1)`
-/

namespace A033210.P4911548191683289622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038883 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A033210.P4911548191683289622

/-! ## A033210.P1917986689058221481

`∩[A002144(n+1), A038883(n+1)]`
-/

namespace A033210.P1917986689058221481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P1917986689058221481

/-! ## A033210.P11892608423565539366

`∩[A002313(n+1), A038883(n+1)]`
-/

namespace A033210.P11892608423565539366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P11892608423565539366

/-! ## A033210.P11145131370496470799

`∩[A002144(n+1), A296928(n+1)]`
-/

namespace A033210.P11145131370496470799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P11145131370496470799

/-! ## A033210.P1394853375664019293

`∩[A038883(n+1), A055025(n+1)]`
-/

namespace A033210.P1394853375664019293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P1394853375664019293

/-! ## A033210.P3092285543217756341

`∩[A055025(n+1), A296928(n+1)]`
-/

namespace A033210.P3092285543217756341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P3092285543217756341

/-! ## A033210.P8257598312180511268

`∩[A038883(n+1), A120960(n+1)]`
-/

namespace A033210.P8257598312180511268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P8257598312180511268

/-! ## A033210.P7257245837023613804

`∩[A038883(n+1), A085759(n+1)]`
-/

namespace A033210.P7257245837023613804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P7257245837023613804

/-! ## A033210.P4866914431480584841

`∩[A038883(n+1), A125018(n+1)]`
-/

namespace A033210.P4866914431480584841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P4866914431480584841

/-! ## A033210.P2251215933405980252

`∩[A038883(n+1), A191218(n+1)]`
-/

namespace A033210.P2251215933405980252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P2251215933405980252

/-! ## A033210.P16869680453756354808

`∩[A281292(n+1), A038883(n+1)]`
-/

namespace A033210.P16869680453756354808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P16869680453756354808

/-! ## A033210.P15224212537669857585

`∩[A038883(n+1), A224450(n+1)]`
-/

namespace A033210.P15224212537669857585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P15224212537669857585

/-! ## A033210.P18282049308785961551

`∩[A224450(n+1), A296928(n+1)]`
-/

namespace A033210.P18282049308785961551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P18282049308785961551

/-! ## A033210.P8143807848614296627

`∩[A003653(n+1), A038883(n+1)]`
-/

namespace A033210.P8143807848614296627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P8143807848614296627

/-! ## A033210.P6218317048485048616

`∩[A003653(n+1), A296928(n+1)]`
-/

namespace A033210.P6218317048485048616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P6218317048485048616

/-! ## A033210.P3975206064203459143

`∩[A038883(n+1), A231754(n+1)]`
-/

namespace A033210.P3975206064203459143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P3975206064203459143

/-! ## A033210.P12447427541266275854

`∩[A004613(n+1), A038883(n+1)]`
-/

namespace A033210.P12447427541266275854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P12447427541266275854

/-! ## A033210.P11429874660083277988

`∩[A008846(n+1), A038883(n+1)]`
-/

namespace A033210.P11429874660083277988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033210.P11429874660083277988

/-! ## A033210.P8028096500660330727

`filter[A038883(n+1), A353812(#)]`
-/

namespace A033210.P8028096500660330727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A033210.P8028096500660330727

/-!
# A033211: Primes of form x^2 + 14*y^2.

The programs for A033211, there is no canonical definition to state claims against.
-/

/-! ## A033211.P14229651506988274347

`p?[A244037(n+1)]`
-/

namespace A033211.P14229651506988274347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033211.P14229651506988274347

/-! ## A033211.P8503178147211795608

`record[p?[A244037(A324347(n))]]`
-/

namespace A033211.P8503178147211795608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033211.P8503178147211795608

/-! ## A033211.P13435091156535671391

`record[p?[A244037(A328395(n))]]`
-/

namespace A033211.P13435091156535671391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033211.P13435091156535671391

/-! ## A033211.P16096932753346688855

`record[A006530(A244037(n+9))]`
-/

namespace A033211.P16096932753346688855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A244037 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033211.P16096932753346688855

/-! ## A033211.P247785892976169467

`∩[A244037(n+1), A042988(n)]`
-/

namespace A033211.P247785892976169467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P247785892976169467

/-! ## A033211.P4785409701894643136

`∩[A000040(n+1), A244037(n+1)]`
-/

namespace A033211.P4785409701894643136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P4785409701894643136

/-! ## A033211.P17653353577881056718

`∩[A001132(n+1), A244037(n+1)]`
-/

namespace A033211.P17653353577881056718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P17653353577881056718

/-! ## A033211.P13146479591509366530

`∩[A004139(n+1), A244037(n+1)]`
-/

namespace A033211.P13146479591509366530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P13146479591509366530

/-! ## A033211.P14040800454814442367

`∩[A033207(n+1), A244037(n+1)]`
-/

namespace A033211.P14040800454814442367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P14040800454814442367

/-! ## A033211.P4958427800229016210

`∩[A038873(n+1), A244037(n+1)]`
-/

namespace A033211.P4958427800229016210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P4958427800229016210

/-! ## A033211.P6735210095168546877

`∩[A044042(n+1), A244037(n+1)]`
-/

namespace A033211.P6735210095168546877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P6735210095168546877

/-! ## A033211.P7867905920093305930

`∩[A045319(n+1), A244037(n+1)]`
-/

namespace A033211.P7867905920093305930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P7867905920093305930

/-! ## A033211.P15055147803947922032

`∩[A045320(n+1), A244037(n+1)]`
-/

namespace A033211.P15055147803947922032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P15055147803947922032

/-! ## A033211.P9271925129057288536

`∩[A045323(n+1), A244037(n+1)]`
-/

namespace A033211.P9271925129057288536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P9271925129057288536

/-! ## A033211.P5342175320145909262

`∩[A045324(n+1), A244037(n+1)]`
-/

namespace A033211.P5342175320145909262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P5342175320145909262

/-! ## A033211.P384259762549026234

`∩[A045334(n+1), A244037(n+1)]`
-/

namespace A033211.P384259762549026234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P384259762549026234

/-! ## A033211.P18398659833748414130

`∩[A045337(n+1), A244037(n+1)]`
-/

namespace A033211.P18398659833748414130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P18398659833748414130

/-! ## A033211.P6288882319141612876

`∩[A045344(n+1), A244037(n+1)]`
-/

namespace A033211.P6288882319141612876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P6288882319141612876

/-! ## A033211.P8476590775792543727

`∩[A045346(n+1), A244037(n+1)]`
-/

namespace A033211.P8476590775792543727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P8476590775792543727

/-! ## A033211.P5449660263236354703

`∩[A045350(n+1), A244037(n+1)]`
-/

namespace A033211.P5449660263236354703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033211.P5449660263236354703

/-!
# A033212: Primes congruent to 1 or 19 (mod 30).

The programs for A033212, the canonical program `A033212.P16958498900936851691` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033212 has offset 1).

The definition of A033212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033212.P16958498900936851691

`p?[a(n-2)+15]` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033212

/-- `p?[a(n-2)+15]` -/
def P16958498900936851691.Spec : Prop :=
  ∀ n, (P16958498900936851691.a n : ℤ) = A033212 (n + 1)

theorem P16958498900936851691.correct : P16958498900936851691.Spec := by
  intro n
  simp only [A033212, Nat.add_sub_cancel]

end A033212

/-! ## A033212.P3927648943625540133

`p?[ogf((x+3x^2+2x^3+9x^4)/(1-x-x^3+x^4))]`
-/

namespace A033212.P3927648943625540133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 2, 9] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033212.P3927648943625540133

namespace A033212

/-- `p?[ogf((x+3x^2+2x^3+9x^4)/(1-x-x^3+x^4))]` -/
def P3927648943625540133.Spec : Prop :=
  ∀ n, P3927648943625540133.a n = A033212 (n + 1)

end A033212

/-! ## A033212.P2311276238665384614

`p?[A243174(n+1)]`
-/

namespace A033212.P2311276238665384614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033212.P2311276238665384614

namespace A033212

/-- `p?[A243174(n+1)]` -/
def P2311276238665384614.Spec : Prop :=
  ∀ n, P2311276238665384614.a n = A033212 (n + 1)

end A033212

/-! ## A033212.P11078138669368745723

`∪[A107152(n+1), A107168(n+1)]`
-/

namespace A033212.P11078138669368745723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033212.P11078138669368745723

namespace A033212

/-- `∪[A107152(n+1), A107168(n+1)]` -/
def P11078138669368745723.Spec : Prop :=
  ∀ n, (P11078138669368745723.a n : ℤ) = A033212 (n + 1)

end A033212

/-! ## A033212.P1205914788305608853

`∩[A038872(n+1), A191018(n+1)]`
-/

namespace A033212.P1205914788305608853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033212.P1205914788305608853

namespace A033212

/-- `∩[A038872(n+1), A191018(n+1)]` -/
def P1205914788305608853.Spec : Prop :=
  ∀ n, (P1205914788305608853.a n : ℤ) = A033212 (n + 1)

end A033212

/-! ## A033212.P5063937389505071206

`∩[A002476(n+1), A064739(n+1)]`
-/

namespace A033212.P5063937389505071206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033212.P5063937389505071206

namespace A033212

/-- `∩[A002476(n+1), A064739(n+1)]` -/
def P5063937389505071206.Spec : Prop :=
  ∀ n, (P5063937389505071206.a n : ℤ) = A033212 (n + 1)

end A033212

/-! ## A033212.P2537290133038541514

`∩[A064739(n+1), A123365(n+1)]`
-/

namespace A033212.P2537290133038541514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033212.P2537290133038541514

namespace A033212

/-- `∩[A064739(n+1), A123365(n+1)]` -/
def P2537290133038541514.Spec : Prop :=
  ∀ n, (P2537290133038541514.a n : ℤ) = A033212 (n + 1)

end A033212

/-! ## A033212.P2522084715496500012

`p?[A390422(n+1)]`
-/

namespace A033212.P2522084715496500012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033212.P2522084715496500012

namespace A033212

/-- `p?[A390422(n+1)]` -/
def P2522084715496500012.Spec : Prop :=
  ∀ n, P2522084715496500012.a n = A033212 (n + 1)

end A033212

/-! ## A033212.P10099242071711121867

`p?[A090771(n+1)+10*n]`
-/

namespace A033212.P10099242071711121867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) + (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033212.P10099242071711121867

namespace A033212

/-- `p?[A090771(n+1)+10*n]` -/
def P10099242071711121867.Spec : Prop :=
  ∀ n, P10099242071711121867.a n = A033212 (n + 1)

end A033212

/-! ## A033212.P9781917624482400157

`p?[Δ[10*n²-A195142(n+1)]]`
-/

namespace A033212.P9781917624482400157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℤ) - A195142 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033212.P9781917624482400157

namespace A033212

/-- `p?[Δ[10*n²-A195142(n+1)]]` -/
def P9781917624482400157.Spec : Prop :=
  ∀ n, P9781917624482400157.a n = A033212 (n + 1)

end A033212

/-! ## A033212.P2041304204070867554

`∩[A002476(n+1), A023173(n+1)]`
-/

namespace A033212.P2041304204070867554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033212.P2041304204070867554

namespace A033212

/-- `∩[A002476(n+1), A023173(n+1)]` -/
def P2041304204070867554.Spec : Prop :=
  ∀ n, (P2041304204070867554.a n : ℤ) = A033212 (n + 1)

end A033212

/-! ## A033212.P7581576353892338949

`∩[A007645(n+1), A023173(n+1)]`
-/

namespace A033212.P7581576353892338949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033212.P7581576353892338949

namespace A033212

/-- `∩[A007645(n+1), A023173(n+1)]` -/
def P7581576353892338949.Spec : Prop :=
  ∀ n, (P7581576353892338949.a n : ℤ) = A033212 (n + 1)

end A033212

/-! ## A033212.P18252177002385435402

`∩[A023173(n+1), A055664(n+1)]`
-/

namespace A033212.P18252177002385435402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033212.P18252177002385435402

namespace A033212

/-- `∩[A023173(n+1), A055664(n+1)]` -/
def P18252177002385435402.Spec : Prop :=
  ∀ n, (P18252177002385435402.a n : ℤ) = A033212 (n + 1)

end A033212

/-! ## A033212.P10294610055908110145

`∩[A023173(n+1), A133290(n+1)]`
-/

namespace A033212.P10294610055908110145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033212.P10294610055908110145

namespace A033212

/-- `∩[A023173(n+1), A133290(n+1)]` -/
def P10294610055908110145.Spec : Prop :=
  ∀ n, (P10294610055908110145.a n : ℤ) = A033212 (n + 1)

end A033212

/-! ## A033212.P4688133918896852742

`filter[A038872(n+1), A070563(#)]`
-/

namespace A033212.P4688133918896852742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A033212.P4688133918896852742

namespace A033212

/-- `filter[A038872(n+1), A070563(#)]` -/
def P4688133918896852742.Spec : Prop :=
  ∀ n, P4688133918896852742.a n = A033212 (n + 1)

end A033212

/-! ## A033212.P13667983057219668003

`filter[A045468(n+1), A070563(#)]`
-/

namespace A033212.P13667983057219668003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A033212.P13667983057219668003

namespace A033212

/-- `filter[A045468(n+1), A070563(#)]` -/
def P13667983057219668003.Spec : Prop :=
  ∀ n, P13667983057219668003.a n = A033212 (n + 1)

end A033212

/-! ## A033212.P14487801734883858121

`filter[A064739(n+1), A070563(#)]`
-/

namespace A033212.P14487801734883858121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A033212.P14487801734883858121

namespace A033212

/-- `filter[A064739(n+1), A070563(#)]` -/
def P14487801734883858121.Spec : Prop :=
  ∀ n, P14487801734883858121.a n = A033212 (n + 1)

end A033212

/-! ## A033212.P5230612428245889974

`filter[A191018(n+1), A070563(#)]`
-/

namespace A033212.P5230612428245889974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A033212.P5230612428245889974

namespace A033212

/-- `filter[A191018(n+1), A070563(#)]` -/
def P5230612428245889974.Spec : Prop :=
  ∀ n, P5230612428245889974.a n = A033212 (n + 1)

end A033212

/-! ## A033212.P3101039011623319658

`∩[A000040(n+1), A243174(n+1)]`
-/

namespace A033212.P3101039011623319658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033212.P3101039011623319658

namespace A033212

/-- `∩[A000040(n+1), A243174(n+1)]` -/
def P3101039011623319658.Spec : Prop :=
  ∀ n, (P3101039011623319658.a n : ℤ) = A033212 (n + 1)

end A033212

/-! ## A033212.P12794205076010643574

`filter[A023173(n+1), A354982(#)]`
-/

namespace A033212.P12794205076010643574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A033212.P12794205076010643574

namespace A033212

/-- `filter[A023173(n+1), A354982(#)]` -/
def P12794205076010643574.Spec : Prop :=
  ∀ n, P12794205076010643574.a n = A033212 (n + 1)

end A033212

/-!
# A033213: Primes of form x^2+17*y^2.

The programs for A033213, there is no canonical definition to state claims against.
-/

/-! ## A033213.P8063592735001891369

`∪[A107175(n+1), A107176(n+1)]`
-/

namespace A033213.P8063592735001891369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033213.P8063592735001891369

/-! ## A033213.P10663098786637714332

`p?[n*A030101(A033729(n))]`
-/

namespace A033213.P10663098786637714332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030101 (A033729 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033213.P10663098786637714332

/-!
# A033214: Primes of form x^2+19*y^2.

The programs for A033214, there is no canonical definition to state claims against.
-/

/-! ## A033214.P911612841691928032

`∪[A107185(n+1), A107186(n+1)]`
-/

namespace A033214.P911612841691928032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033214.P911612841691928032

/-! ## A033214.P4229593094473252947

`p?[eq[2, A033734(A033731(n))]]`
-/

namespace A033214.P4229593094473252947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033734 (A033731 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033214.P4229593094473252947

/-! ## A033214.P2736689703889905631

`p?[eq[2, A033731(A033731(n)²)]]`
-/

namespace A033214.P2736689703889905631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033731 (A033731 n ^ 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033214.P2736689703889905631

/-! ## A033214.P9351599053299181034

`eq[A018837(A033731(n)), A092976(n)]`
-/

namespace A033214.P9351599053299181034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (A033731 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P9351599053299181034

/-! ## A033214.P7648196650588111199

`eq[A002487(A033731(n)), A175126(n)]`
-/

namespace A033214.P7648196650588111199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A033731 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P7648196650588111199

/-! ## A033214.P14007685537574537613

`eq[A210442(n), A263087(A033731(n))]`
-/

namespace A033214.P14007685537574537613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (A033731 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P14007685537574537613

/-! ## A033214.P13194982022354818947

`eq[A033731(A033731(n)²), A092976(n)]`
-/

namespace A033214.P13194982022354818947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033731 (A033731 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P13194982022354818947

/-! ## A033214.P10763521076559089030

`eq[A033731(A033731(n)²), A304442(n)]`
-/

namespace A033214.P10763521076559089030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033731 (A033731 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P10763521076559089030

/-! ## A033214.P9207577787226045384

`eq[A092976(A033731(n)+1), A092976(n)]`
-/

namespace A033214.P9207577787226045384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 (A033731 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P9207577787226045384

/-! ## A033214.P5008691402158893214

`eq[A175126(A033731(n)+1), A175126(n)]`
-/

namespace A033214.P5008691402158893214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A033731 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P5008691402158893214

/-! ## A033214.P1669651627125006206

`eq[A304442(A033731(n)+1), A304442(n)]`
-/

namespace A033214.P1669651627125006206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A033731 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P1669651627125006206

/-! ## A033214.P8302788875416953036

`eq[A011585(A033731(n)+2), A210442(n)]`
-/

namespace A033214.P8302788875416953036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A033731 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P8302788875416953036

/-! ## A033214.P6780504257842577945

`eq[A011585(A033731(n)+2), A211110(n)]`
-/

namespace A033214.P6780504257842577945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A033731 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P6780504257842577945

/-! ## A033214.P13733947819588516885

`eq[A053989(n+1)², A002487(A033731(n))]`
-/

namespace A033214.P13733947819588516885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A033731 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P13733947819588516885

/-! ## A033214.P12558768417645669281

`eq[A011585(A033731(n)²), A053989(n+1)]`
-/

namespace A033214.P12558768417645669281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A033731 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P12558768417645669281

/-! ## A033214.P10060768257006994988

`eq[A011585(A033731(n)+2), A053989(n+1)]`
-/

namespace A033214.P10060768257006994988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (A033731 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033214.P10060768257006994988

/-!
# A033215: Primes of form x^2+21*y^2.

The programs for A033215, there is no canonical definition to state claims against.
-/

/-! ## A033215.P7294429935854180917

`∩[A068228(n+1), A107134(n+1)]`
-/

namespace A033215.P7294429935854180917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P7294429935854180917

/-! ## A033215.P12207127414212230491

`∩[A068228(n+1), A141172(n+1)]`
-/

namespace A033215.P12207127414212230491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P12207127414212230491

/-! ## A033215.P3646507744591682930

`∩[A038874(n+1), A107134(n+1)]`
-/

namespace A033215.P3646507744591682930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P3646507744591682930

/-! ## A033215.P15618633173452457197

`∩[A038874(n+1), A139492(n+1)]`
-/

namespace A033215.P15618633173452457197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P15618633173452457197

/-! ## A033215.P908832387783003875

`∩[A038878(n+1), A068228(n+1)]`
-/

namespace A033215.P908832387783003875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P908832387783003875

/-! ## A033215.P6510152662184881955

`∩[A002476(n+1), A107134(n+1)]`
-/

namespace A033215.P6510152662184881955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P6510152662184881955

/-! ## A033215.P14271852347855215185

`∩[A007645(n+1), A107134(n+1)]`
-/

namespace A033215.P14271852347855215185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P14271852347855215185

/-! ## A033215.P11807443149723812794

`∩[A002144(n+1), A139492(n+1)]`
-/

namespace A033215.P11807443149723812794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P11807443149723812794

/-! ## A033215.P2460655339257601652

`∩[A002313(n+1), A139492(n+1)]`
-/

namespace A033215.P2460655339257601652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P2460655339257601652

/-! ## A033215.P17682706926862635521

`∩[A002476(n+1), A141172(n+1)]`
-/

namespace A033215.P17682706926862635521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P17682706926862635521

/-! ## A033215.P3686132575477235915

`∩[A007645(n+1), A141172(n+1)]`
-/

namespace A033215.P3686132575477235915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P3686132575477235915

/-! ## A033215.P4661314173542053795

`∩[A045331(n+1), A107134(n+1)]`
-/

namespace A033215.P4661314173542053795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P4661314173542053795

/-! ## A033215.P14091565991111818736

`∩[A045375(n+1), A107134(n+1)]`
-/

namespace A033215.P14091565991111818736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P14091565991111818736

/-! ## A033215.P2783245665718960126

`∩[A123365(n+1), A107134(n+1)]`
-/

namespace A033215.P2783245665718960126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P2783245665718960126

/-! ## A033215.P3400939618585271035

`∩[A033207(n+1), A068228(n+1)]`
-/

namespace A033215.P3400939618585271035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P3400939618585271035

/-! ## A033215.P15910153285320101239

`∩[A038893(n+1), A068228(n+1)]`
-/

namespace A033215.P15910153285320101239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P15910153285320101239

/-! ## A033215.P1778752030853218025

`∩[A045373(n+1), A068228(n+1)]`
-/

namespace A033215.P1778752030853218025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P1778752030853218025

/-! ## A033215.P2780007902313281807

`∩[A045386(n+1), A068228(n+1)]`
-/

namespace A033215.P2780007902313281807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P2780007902313281807

/-! ## A033215.P14726694805808262094

`∩[A038893(n+1), A107134(n+1)]`
-/

namespace A033215.P14726694805808262094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P14726694805808262094

/-! ## A033215.P6496040265510117359

`∩[A038893(n+1), A141172(n+1)]`
-/

namespace A033215.P6496040265510117359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P6496040265510117359

/-!
# A033216: Primes of form x^2+22*y^2.

The programs for A033216, there is no canonical definition to state claims against.
-/

/-! ## A033216.P17299773866463430436

`∪[A107202(n+1), A139837(n+1)]`
-/

namespace A033216.P17299773866463430436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P17299773866463430436

/-! ## A033216.P7775536302368020536

`∩[A001132(n+1), A191020(n+1)]`
-/

namespace A033216.P7775536302368020536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P7775536302368020536

/-! ## A033216.P18300983348707296391

`∩[A038873(n+1), A191020(n+1)]`
-/

namespace A033216.P18300983348707296391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P18300983348707296391

/-! ## A033216.P127663335369679851

`∩[A097958(n+1), A191020(n+1)]`
-/

namespace A033216.P127663335369679851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P127663335369679851

/-! ## A033216.P2639950682478813241

`∩[A001132(n+1), A296920(n+1)]`
-/

namespace A033216.P2639950682478813241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P2639950682478813241

/-! ## A033216.P1808066871667889012

`∩[A038873(n+1), A296920(n+1)]`
-/

namespace A033216.P1808066871667889012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P1808066871667889012

/-! ## A033216.P1366836581535509226

`∩[A001132(n+1), A056874(n+1)]`
-/

namespace A033216.P1366836581535509226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P1366836581535509226

/-! ## A033216.P7196938996018803075

`∩[A038873(n+1), A056874(n+1)]`
-/

namespace A033216.P7196938996018803075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P7196938996018803075

/-! ## A033216.P1505522117523032372

`∩[A056874(n+1), A191020(n+1)]`
-/

namespace A033216.P1505522117523032372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P1505522117523032372

/-! ## A033216.P14223915872411053751

`∩[A055673(n+1), A056874(n+1)]`
-/

namespace A033216.P14223915872411053751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P14223915872411053751

/-! ## A033216.P749220274527166824

`∩[A055673(n+1), A191020(n+1)]`
-/

namespace A033216.P749220274527166824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P749220274527166824

/-! ## A033216.P12950211559677559514

`∩[A055673(n+1), A296920(n+1)]`
-/

namespace A033216.P12950211559677559514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P12950211559677559514

/-! ## A033216.P2906486761497830943

`∩[A001132(n+1), A341785(n+1)]`
-/

namespace A033216.P2906486761497830943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P2906486761497830943

/-! ## A033216.P12046865604821603072

`∩[A038873(n+1), A341785(n+1)]`
-/

namespace A033216.P12046865604821603072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P12046865604821603072

/-! ## A033216.P1039356584618368821

`∩[A191020(n+1), A341785(n+1)]`
-/

namespace A033216.P1039356584618368821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P1039356584618368821

/-! ## A033216.P8820864640665113208

`∩[A056874(n+1), A270951(n+1)]`
-/

namespace A033216.P8820864640665113208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P8820864640665113208

/-! ## A033216.P3197800745462859178

`∩[A191020(n+1), A270951(n+1)]`
-/

namespace A033216.P3197800745462859178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P3197800745462859178

/-! ## A033216.P2723985505647862099

`∩[A319040(n+1), A056874(n+1)]`
-/

namespace A033216.P2723985505647862099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P2723985505647862099

/-! ## A033216.P17189358537905140795

`∩[A191020(n+1), A366526(n+1)]`
-/

namespace A033216.P17189358537905140795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P17189358537905140795

/-! ## A033216.P12479241124834269423

`∩[A296920(n+1), A366526(n+1)]`
-/

namespace A033216.P12479241124834269423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033216.P12479241124834269423

/-!
# A033217: Primes of form x^2 + 23*y^2.

The programs for A033217, there is no canonical definition to state claims against.
-/

/-! ## A033217.P12667763676032155848

`∪[A107208(n+1), A107209(n+1)]`
-/

namespace A033217.P12667763676032155848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033217.P12667763676032155848

/-! ## A033217.P2776952679275650023

`A045344(eq[3, A308176(n+1)])`
-/

namespace A033217.P2776952679275650023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033217.P2776952679275650023

/-! ## A033217.P3229924017588990828

`A065091(eq[3, A308176(n+1)])`
-/

namespace A033217.P3229924017588990828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033217.P3229924017588990828

/-! ## A033217.P13873001504969167607

`A000040(eq[3, A308176(n+1)]+1)`
-/

namespace A033217.P13873001504969167607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A033217.P13873001504969167607

/-! ## A033217.P2941515987712217768

`A004139(eq[3, A308176(n+1)]-1)`
-/

namespace A033217.P2941515987712217768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A033217.P2941515987712217768

/-! ## A033217.P9844042649194330072

`A008578(eq[3, A308176(n+1)]+2)`
-/

namespace A033217.P9844042649194330072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A033217.P9844042649194330072

/-! ## A033217.P15417097230876229718

`∩[A256567(n+1), A296932(n+1)]`
-/

namespace A033217.P15417097230876229718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033217.P15417097230876229718

/-! ## A033217.P9306538500473574148

`∩[A035240(n+1), A256567(n+1)]`
-/

namespace A033217.P9306538500473574148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033217.P9306538500473574148

/-! ## A033217.P3494695568711574825

`p?[eq[2, A028959(A028959(n)²)]]`
-/

namespace A033217.P3494695568711574825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 (A028959 n ^ 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033217.P3494695568711574825

/-! ## A033217.P12814404148002143344

`p?[lt[A256791(A028959(n)+1), 0]]`
-/

namespace A033217.P12814404148002143344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256791 (A028959 n + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033217.P12814404148002143344

/-! ## A033217.P13620432607230480276

`p?[lt[A028959(2*n), A028959(n)]]`
-/

namespace A033217.P13620432607230480276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033217.P13620432607230480276

/-!
# A033219: Primes of form x^2+29*y^2.

The programs for A033219, there is no canonical definition to state claims against.
-/

/-! ## A033219.P12041697585860199131

`A162579(A104238(n+1))`
-/

namespace A033219.P12041697585860199131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162579 (A104238 (n + 1)).toNat

end

end A033219.P12041697585860199131

/-!
# A033220: Primes of form x^2+30*y^2.

The programs for A033220, the canonical program `A033220.P3937927307044317153` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033220 has offset 1).

The definition of A033220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9735 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033220.P1633883848883075711

`∪[A139502(n+1), A139855(n+1)]`
-/

namespace A033220.P1633883848883075711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P1633883848883075711

namespace A033220

/-- `∪[A139502(n+1), A139855(n+1)]` -/
def P1633883848883075711.Spec : Prop :=
  ∀ n, (P1633883848883075711.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P3937927307044317153

`p?[and(5, n+1)+15*n]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033220

/-- `p?[and(5, n+1)+15*n]` -/
def P3937927307044317153.Spec : Prop :=
  ∀ n, (P3937927307044317153.a n : ℤ) = A033220 (n + 1)

theorem P3937927307044317153.correct : P3937927307044317153.Spec := by
  intro n
  simp only [A033220, Nat.add_sub_cancel]

end A033220

/-! ## A033220.P10882611796543450416

`p?[A141180(n+1)%3*A141180(n+1)]`
-/

namespace A033220.P10882611796543450416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141180 (n + 1)) 3 * A141180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033220.P10882611796543450416

namespace A033220

/-- `p?[A141180(n+1)%3*A141180(n+1)]` -/
def P10882611796543450416.Spec : Prop :=
  ∀ n, P10882611796543450416.a n = A033220 (n + 1)

end A033220

/-! ## A033220.P5287629080669316057

`∩[A033199(n+1), A141180(n+1)]`
-/

namespace A033220.P5287629080669316057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P5287629080669316057

namespace A033220

/-- `∩[A033199(n+1), A141180(n+1)]` -/
def P5287629080669316057.Spec : Prop :=
  ∀ n, (P5287629080669316057.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P9056577211663306304

`∩[A033199(n+1), A033212(n+1)]`
-/

namespace A033220.P9056577211663306304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P9056577211663306304

namespace A033220

/-- `∩[A033199(n+1), A033212(n+1)]` -/
def P9056577211663306304.Spec : Prop :=
  ∀ n, (P9056577211663306304.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P1751476754303137930

`∩[A033212(n+1), A141180(n+1)]`
-/

namespace A033220.P1751476754303137930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P1751476754303137930

namespace A033220

/-- `∩[A033212(n+1), A141180(n+1)]` -/
def P1751476754303137930.Spec : Prop :=
  ∀ n, (P1751476754303137930.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P7117777336474821819

`∩[A033199(n+1), A045468(n+1)]`
-/

namespace A033220.P7117777336474821819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P7117777336474821819

namespace A033220

/-- `∩[A033199(n+1), A045468(n+1)]` -/
def P7117777336474821819.Spec : Prop :=
  ∀ n, (P7117777336474821819.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P12928674064112583591

`∩[A033199(n+1), A038872(n+1)]`
-/

namespace A033220.P12928674064112583591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P12928674064112583591

namespace A033220

/-- `∩[A033199(n+1), A038872(n+1)]` -/
def P12928674064112583591.Spec : Prop :=
  ∀ n, (P12928674064112583591.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P411069071399732700

`∩[A033199(n+1), A064739(n+1)]`
-/

namespace A033220.P411069071399732700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P411069071399732700

namespace A033220

/-- `∩[A033199(n+1), A064739(n+1)]` -/
def P411069071399732700.Spec : Prop :=
  ∀ n, (P411069071399732700.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P17172097781989612724

`∩[A001132(n+1), A033212(n+1)]`
-/

namespace A033220.P17172097781989612724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P17172097781989612724

namespace A033220

/-- `∩[A001132(n+1), A033212(n+1)]` -/
def P17172097781989612724.Spec : Prop :=
  ∀ n, (P17172097781989612724.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P276647949653407860

`∩[A033212(n+1), A038873(n+1)]`
-/

namespace A033220.P276647949653407860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P276647949653407860

namespace A033220

/-- `∩[A033212(n+1), A038873(n+1)]` -/
def P276647949653407860.Spec : Prop :=
  ∀ n, (P276647949653407860.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P15338189274478487309

`∩[A033212(n+1), A097958(n+1)]`
-/

namespace A033220.P15338189274478487309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P15338189274478487309

namespace A033220

/-- `∩[A033212(n+1), A097958(n+1)]` -/
def P15338189274478487309.Spec : Prop :=
  ∀ n, (P15338189274478487309.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P13386109373020586105

`∩[A033199(n+1), A191018(n+1)]`
-/

namespace A033220.P13386109373020586105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P13386109373020586105

namespace A033220

/-- `∩[A033199(n+1), A191018(n+1)]` -/
def P13386109373020586105.Spec : Prop :=
  ∀ n, (P13386109373020586105.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P8023410271613884054

`∩[A033199(n+1), A076518(n+1)]`
-/

namespace A033220.P8023410271613884054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P8023410271613884054

namespace A033220

/-- `∩[A033199(n+1), A076518(n+1)]` -/
def P8023410271613884054.Spec : Prop :=
  ∀ n, (P8023410271613884054.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P1959691713594767618

`∩[A002476(n+1), A141180(n+1)]`
-/

namespace A033220.P1959691713594767618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P1959691713594767618

namespace A033220

/-- `∩[A002476(n+1), A141180(n+1)]` -/
def P1959691713594767618.Spec : Prop :=
  ∀ n, (P1959691713594767618.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P17681414099444323004

`∩[A007645(n+1), A141180(n+1)]`
-/

namespace A033220.P17681414099444323004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P17681414099444323004

namespace A033220

/-- `∩[A007645(n+1), A141180(n+1)]` -/
def P17681414099444323004.Spec : Prop :=
  ∀ n, (P17681414099444323004.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P11458939466796382358

`∩[A045331(n+1), A141180(n+1)]`
-/

namespace A033220.P11458939466796382358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P11458939466796382358

namespace A033220

/-- `∩[A045331(n+1), A141180(n+1)]` -/
def P11458939466796382358.Spec : Prop :=
  ∀ n, (P11458939466796382358.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P7115232617787496522

`∩[A045375(n+1), A141180(n+1)]`
-/

namespace A033220.P7115232617787496522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P7115232617787496522

namespace A033220

/-- `∩[A045375(n+1), A141180(n+1)]` -/
def P7115232617787496522.Spec : Prop :=
  ∀ n, (P7115232617787496522.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P3019103108572551511

`∩[A123365(n+1), A141180(n+1)]`
-/

namespace A033220.P3019103108572551511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P3019103108572551511

namespace A033220

/-- `∩[A123365(n+1), A141180(n+1)]` -/
def P3019103108572551511.Spec : Prop :=
  ∀ n, (P3019103108572551511.a n : ℤ) = A033220 (n + 1)

end A033220

/-! ## A033220.P15450185836650201612

`∩[A033212(n+1), A157437(n+1)]`
-/

namespace A033220.P15450185836650201612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033220.P15450185836650201612

namespace A033220

/-- `∩[A033212(n+1), A157437(n+1)]` -/
def P15450185836650201612.Spec : Prop :=
  ∀ n, (P15450185836650201612.a n : ℤ) = A033220 (n + 1)

end A033220

/-!
# A033221: Primes of form x^2+31*y^2.

The programs for A033221, there is no canonical definition to state claims against.
-/

/-! ## A033221.P15509821408474777946

`p?[lt[0, A033743(n)]]`
-/

namespace A033221.P15509821408474777946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033743 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033221.P15509821408474777946

/-! ## A033221.P4247556276958713982

`eq[A003415(n), A019425(A033743(n))]`
-/

namespace A033221.P4247556276958713982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033743 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033221.P4247556276958713982

/-! ## A033221.P16874583556956426164

`eq[A003415(n), A003415(A033743(n)+1)]`
-/

namespace A033221.P16874583556956426164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A033743 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A033221.P16874583556956426164

/-! ## A033221.P6544023245321211512

`eq[n, A000120(A033743(n))*A007918(n)]`
-/

namespace A033221.P6544023245321211512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A033743 n).toNat * A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033221.P6544023245321211512

/-! ## A033221.P3590267084632016982

`p?[n%(A100484(n+1)^A033743(n))]`
-/

namespace A033221.P3590267084632016982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) ^ (A033743 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033221.P3590267084632016982

/-! ## A033221.P5880448350662019175

`p?[lt[A123063(n), A123063(2*n)]]`
-/

namespace A033221.P5880448350662019175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033221.P5880448350662019175

/-! ## A033221.P16478256329007328179

`p?[n*A019425(A033743(4*n))]`
-/

namespace A033221.P16478256329007328179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A019425 (A033743 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033221.P16478256329007328179

/-!
# A033222: Primes of form x^2+33*y^2.

The programs for A033222, there is no canonical definition to state claims against.
-/

/-! ## A033222.P7538163567093708769

`∩[A068228(n+1), A107013(n+1)]`
-/

namespace A033222.P7538163567093708769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P7538163567093708769

/-! ## A033222.P5721849775124761055

`∩[A068228(n+1), A141177(n+1)]`
-/

namespace A033222.P5721849775124761055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P5721849775124761055

/-! ## A033222.P884722277268672734

`∩[A068228(n+1), A141182(n+1)]`
-/

namespace A033222.P884722277268672734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P884722277268672734

/-! ## A033222.P1032873882724245223

`∩[A038874(n+1), A107013(n+1)]`
-/

namespace A033222.P1032873882724245223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P1032873882724245223

/-! ## A033222.P9740600426430069326

`∩[A038874(n+1), A141182(n+1)]`
-/

namespace A033222.P9740600426430069326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P9740600426430069326

/-! ## A033222.P7086969064736280361

`∩[A097933(n+1), A107013(n+1)]`
-/

namespace A033222.P7086969064736280361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P7086969064736280361

/-! ## A033222.P1593418739985342482

`∩[A141177(n+1), A097933(n+1)]`
-/

namespace A033222.P1593418739985342482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P1593418739985342482

/-! ## A033222.P2493141797850319381

`∩[A038881(n+1), A068228(n+1)]`
-/

namespace A033222.P2493141797850319381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P2493141797850319381

/-! ## A033222.P13553605646188778006

`∩[A038881(n+1), A107013(n+1)]`
-/

namespace A033222.P13553605646188778006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P13553605646188778006

/-! ## A033222.P9937120829433283845

`∩[A038881(n+1), A141177(n+1)]`
-/

namespace A033222.P9937120829433283845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P9937120829433283845

/-! ## A033222.P787061586914853391

`∩[A038881(n+1), A351537(n+1)]`
-/

namespace A033222.P787061586914853391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P787061586914853391

/-! ## A033222.P15321822354750971921

`∩[A002144(n+1), A107013(n+1)]`
-/

namespace A033222.P15321822354750971921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P15321822354750971921

/-! ## A033222.P4925982129635323071

`∩[A002144(n+1), A141177(n+1)]`
-/

namespace A033222.P4925982129635323071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P4925982129635323071

/-! ## A033222.P10824300565548160873

`∩[A002476(n+1), A141182(n+1)]`
-/

namespace A033222.P10824300565548160873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P10824300565548160873

/-! ## A033222.P6059146132533304928

`∩[A002313(n+1), A107013(n+1)]`
-/

namespace A033222.P6059146132533304928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P6059146132533304928

/-! ## A033222.P15175891735968883224

`∩[A002313(n+1), A141177(n+1)]`
-/

namespace A033222.P15175891735968883224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P15175891735968883224

/-! ## A033222.P10497849792612596317

`∩[A007645(n+1), A141182(n+1)]`
-/

namespace A033222.P10497849792612596317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P10497849792612596317

/-! ## A033222.P8440265513049903625

`∩[A045331(n+1), A141182(n+1)]`
-/

namespace A033222.P8440265513049903625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P8440265513049903625

/-! ## A033222.P15349978113700316426

`∩[A045375(n+1), A141182(n+1)]`
-/

namespace A033222.P15349978113700316426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P15349978113700316426

/-! ## A033222.P10821781529739426638

`∩[A123365(n+1), A141182(n+1)]`
-/

namespace A033222.P10821781529739426638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033222.P10821781529739426638

/-!
# A033224: Primes of form x^2+35*y^2.

The programs for A033224, there is no canonical definition to state claims against.
-/

/-! ## A033224.P14121038984554604963

`p?[A283444(A020686(n+1))]`
-/

namespace A033224.P14121038984554604963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283444 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033224.P14121038984554604963

/-!
# A033225: Primes of form x^2+37*y^2.

The programs for A033225, there is no canonical definition to state claims against.
-/

/-! ## A033225.P3968193223785771334

`∩[A002144(n+1), A038913(n+1)]`
-/

namespace A033225.P3968193223785771334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P3968193223785771334

/-! ## A033225.P9516373088836133318

`∩[A002313(n+1), A038913(n+1)]`
-/

namespace A033225.P9516373088836133318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P9516373088836133318

/-! ## A033225.P9087117757561867180

`∩[A038913(n+1), A055025(n+1)]`
-/

namespace A033225.P9087117757561867180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P9087117757561867180

/-! ## A033225.P13687160126360051

`∩[A038913(n+1), A120960(n+1)]`
-/

namespace A033225.P13687160126360051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P13687160126360051

/-! ## A033225.P8821005921286406624

`∩[A038913(n+1), A125018(n+1)]`
-/

namespace A033225.P8821005921286406624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P8821005921286406624

/-! ## A033225.P8815749240126720729

`∩[A038913(n+1), A281292(n+1)]`
-/

namespace A033225.P8815749240126720729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P8815749240126720729

/-! ## A033225.P14236459253349098878

`∩[A003653(n+1), A038913(n+1)]`
-/

namespace A033225.P14236459253349098878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P14236459253349098878

/-! ## A033225.P8692847480118998817

`∩[A231754(n+1), A038913(n+1)]`
-/

namespace A033225.P8692847480118998817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P8692847480118998817

/-! ## A033225.P2942039098912736382

`∩[A004613(n+1), A038913(n+1)]`
-/

namespace A033225.P2942039098912736382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P2942039098912736382

/-! ## A033225.P17775348017192650574

`∩[A008846(n+1), A038913(n+1)]`
-/

namespace A033225.P17775348017192650574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P17775348017192650574

/-! ## A033225.P16241691471330888289

`filter[A038913(n+1), A353812(#)]`
-/

namespace A033225.P16241691471330888289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A033225.P16241691471330888289

/-! ## A033225.P6126915387485673572

`filter[A038913(n+1), A353814(#)]`
-/

namespace A033225.P6126915387485673572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A033225.P6126915387485673572

/-! ## A033225.P12174033318127973105

`filter[A038913(n+1), A358678(#)]`
-/

namespace A033225.P12174033318127973105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A033225.P12174033318127973105

/-! ## A033225.P10120782157651990937

`filter[A038913(n+1), A359150(#)]`
-/

namespace A033225.P10120782157651990937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A033225.P10120782157651990937

/-! ## A033225.P10141704128299366769

`∩[A038913(n+1), A057948(n+1)]`
-/

namespace A033225.P10141704128299366769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P10141704128299366769

/-! ## A033225.P8286314498255266092

`∩[A038913(n+1), A389197(n+1)]`
-/

namespace A033225.P8286314498255266092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P8286314498255266092

/-! ## A033225.P2609068334753182802

`∩[A003654(n+1), A038913(n+1)]`
-/

namespace A033225.P2609068334753182802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P2609068334753182802

/-! ## A033225.P17802413150164590977

`∩[A003814(n+1), A038913(n+1)]`
-/

namespace A033225.P17802413150164590977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P17802413150164590977

/-! ## A033225.P11045629049908649489

`∩[A031396(n+1), A038913(n+1)]`
-/

namespace A033225.P11045629049908649489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033225.P11045629049908649489

/-!
# A033227: Primes of form x^2+39*y^2.

The programs for A033227, there is no canonical definition to state claims against.
-/

/-! ## A033227.P12657353283189547048

`p?[A243194(n)]`
-/

namespace A033227.P12657353283189547048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033227.P12657353283189547048

/-! ## A033227.P13436357773438927357

`filter[A243194(n+1), A010051(#)]`
-/

namespace A033227.P13436357773438927357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A033227.P13436357773438927357

/-! ## A033227.P350420580157189669

`∩[A000040(n+1), A243194(n)]`
-/

namespace A033227.P350420580157189669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P350420580157189669

/-! ## A033227.P16055264536177179824

`∩[A002476(n+1), A243194(n)]`
-/

namespace A033227.P16055264536177179824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P16055264536177179824

/-! ## A033227.P7689603911629371659

`∩[A004139(n+1), A243194(n)]`
-/

namespace A033227.P7689603911629371659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P7689603911629371659

/-! ## A033227.P13570810484677763032

`∩[A007645(n+1), A243194(n)]`
-/

namespace A033227.P13570810484677763032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P13570810484677763032

/-! ## A033227.P3162930258591728552

`∩[A038883(n+1), A243194(n)]`
-/

namespace A033227.P3162930258591728552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P3162930258591728552

/-! ## A033227.P12959248992198104195

`∩[A040116(n+1), A243194(n)]`
-/

namespace A033227.P12959248992198104195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P12959248992198104195

/-! ## A033227.P12967380106797650710

`∩[A045319(n+1), A243194(n)]`
-/

namespace A033227.P12967380106797650710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P12967380106797650710

/-! ## A033227.P12804162018083280560

`∩[A045331(n+1), A243194(n)]`
-/

namespace A033227.P12804162018083280560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P12804162018083280560

/-! ## A033227.P14396604162216126382

`∩[A045344(n+1), A243194(n)]`
-/

namespace A033227.P14396604162216126382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P14396604162216126382

/-! ## A033227.P325443835891813192

`∩[A045375(n+1), A243194(n)]`
-/

namespace A033227.P325443835891813192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P325443835891813192

/-! ## A033227.P13448009831367423142

`∩[A049591(n+1), A243194(n)]`
-/

namespace A033227.P13448009831367423142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P13448009831367423142

/-! ## A033227.P12771601149627328163

`∩[A053176(n+1), A243194(n)]`
-/

namespace A033227.P12771601149627328163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P12771601149627328163

/-! ## A033227.P6618779176161470971

`∩[A058501(n+1), A243194(n)]`
-/

namespace A033227.P6618779176161470971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P6618779176161470971

/-! ## A033227.P6580974385100798823

`∩[A059456(n+1), A243194(n)]`
-/

namespace A033227.P6580974385100798823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P6580974385100798823

/-! ## A033227.P10502634722316461776

`∩[A065091(n+1), A243194(n)]`
-/

namespace A033227.P10502634722316461776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P10502634722316461776

/-! ## A033227.P16666068214783818370

`∩[A065396(n+1), A243194(n)]`
-/

namespace A033227.P16666068214783818370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P16666068214783818370

/-! ## A033227.P17649659004469248827

`∩[A071621(n+1), A243194(n)]`
-/

namespace A033227.P17649659004469248827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P17649659004469248827

/-! ## A033227.P521189531685547349

`∩[A075763(n+1), A243194(n)]`
-/

namespace A033227.P521189531685547349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243194 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033227.P521189531685547349

/-!
# A033229: Primes of form x^2+42*y^2.

The programs for A033229, the canonical program `A033229.P4645839565782858084` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033229 has offset 1).

The definition of A033229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033229.P4645839565782858084

`∪[A139506(n+1), A139875(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033229

/-- `∪[A139506(n+1), A139875(n+1)]` -/
def P4645839565782858084.Spec : Prop :=
  ∀ n, (P4645839565782858084.a n : ℤ) = A033229 (n + 1)

theorem P4645839565782858084.correct : P4645839565782858084.Spec := by
  intro n
  simp only [A033229, Nat.add_sub_cancel]

end A033229

/-! ## A033229.P17600600025265101536

`∩[A038885(n+1), A106950(n+1)]`
-/

namespace A033229.P17600600025265101536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P17600600025265101536

namespace A033229

/-- `∩[A038885(n+1), A106950(n+1)]` -/
def P17600600025265101536.Spec : Prop :=
  ∀ n, (P17600600025265101536.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P12476953091347371971

`∩[A038885(n+1), A141170(n+1)]`
-/

namespace A033229.P12476953091347371971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P12476953091347371971

namespace A033229

/-- `∩[A038885(n+1), A141170(n+1)]` -/
def P12476953091347371971.Spec : Prop :=
  ∀ n, (P12476953091347371971.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P9754054564445774118

`∩[A038876(n+1), A139492(n+1)]`
-/

namespace A033229.P9754054564445774118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P9754054564445774118

namespace A033229

/-- `∩[A038876(n+1), A139492(n+1)]` -/
def P9754054564445774118.Spec : Prop :=
  ∀ n, (P9754054564445774118.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P12432183000731739543

`∩[A097934(n+1), A139492(n+1)]`
-/

namespace A033229.P12432183000731739543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P12432183000731739543

namespace A033229

/-- `∩[A097934(n+1), A139492(n+1)]` -/
def P12432183000731739543.Spec : Prop :=
  ∀ n, (P12432183000731739543.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P12177755763456885609

`∩[A097934(n+1), A141190(n+1)]`
-/

namespace A033229.P12177755763456885609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P12177755763456885609

namespace A033229

/-- `∩[A097934(n+1), A141190(n+1)]` -/
def P12177755763456885609.Spec : Prop :=
  ∀ n, (P12177755763456885609.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P3991319092720184553

`∩[A002476(n+1), A141190(n+1)]`
-/

namespace A033229.P3991319092720184553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P3991319092720184553

namespace A033229

/-- `∩[A002476(n+1), A141190(n+1)]` -/
def P3991319092720184553.Spec : Prop :=
  ∀ n, (P3991319092720184553.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P4890853915019078338

`∩[A007645(n+1), A141190(n+1)]`
-/

namespace A033229.P4890853915019078338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P4890853915019078338

namespace A033229

/-- `∩[A007645(n+1), A141190(n+1)]` -/
def P4890853915019078338.Spec : Prop :=
  ∀ n, (P4890853915019078338.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P6479605051378908642

`∩[A033200(n+1), A139492(n+1)]`
-/

namespace A033229.P6479605051378908642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P6479605051378908642

namespace A033229

/-- `∩[A033200(n+1), A139492(n+1)]` -/
def P6479605051378908642.Spec : Prop :=
  ∀ n, (P6479605051378908642.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P9357455104218243672

`∩[A033203(n+1), A139492(n+1)]`
-/

namespace A033229.P9357455104218243672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P9357455104218243672

namespace A033229

/-- `∩[A033203(n+1), A139492(n+1)]` -/
def P9357455104218243672.Spec : Prop :=
  ∀ n, (P9357455104218243672.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P8390742800813968690

`∩[A123365(n+1), A141190(n+1)]`
-/

namespace A033229.P8390742800813968690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P8390742800813968690

namespace A033229

/-- `∩[A123365(n+1), A141190(n+1)]` -/
def P8390742800813968690.Spec : Prop :=
  ∀ n, (P8390742800813968690.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P2999343386889028331

`∩[A033207(n+1), A106950(n+1)]`
-/

namespace A033229.P2999343386889028331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P2999343386889028331

namespace A033229

/-- `∩[A033207(n+1), A106950(n+1)]` -/
def P2999343386889028331.Spec : Prop :=
  ∀ n, (P2999343386889028331.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P13147195422720492597

`∩[A038893(n+1), A106950(n+1)]`
-/

namespace A033229.P13147195422720492597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P13147195422720492597

namespace A033229

/-- `∩[A038893(n+1), A106950(n+1)]` -/
def P13147195422720492597.Spec : Prop :=
  ∀ n, (P13147195422720492597.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P5358267743046039753

`∩[A045373(n+1), A106950(n+1)]`
-/

namespace A033229.P5358267743046039753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P5358267743046039753

namespace A033229

/-- `∩[A045373(n+1), A106950(n+1)]` -/
def P5358267743046039753.Spec : Prop :=
  ∀ n, (P5358267743046039753.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P2425458525631743096

`∩[A045386(n+1), A106950(n+1)]`
-/

namespace A033229.P2425458525631743096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P2425458525631743096

namespace A033229

/-- `∩[A045386(n+1), A106950(n+1)]` -/
def P2425458525631743096.Spec : Prop :=
  ∀ n, (P2425458525631743096.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P8850842821017037755

`∩[A033207(n+1), A141170(n+1)]`
-/

namespace A033229.P8850842821017037755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P8850842821017037755

namespace A033229

/-- `∩[A033207(n+1), A141170(n+1)]` -/
def P8850842821017037755.Spec : Prop :=
  ∀ n, (P8850842821017037755.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P11750546369451720942

`∩[A038893(n+1), A141190(n+1)]`
-/

namespace A033229.P11750546369451720942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P11750546369451720942

namespace A033229

/-- `∩[A038893(n+1), A141190(n+1)]` -/
def P11750546369451720942.Spec : Prop :=
  ∀ n, (P11750546369451720942.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P15355333947061839591

`∩[A045373(n+1), A141170(n+1)]`
-/

namespace A033229.P15355333947061839591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P15355333947061839591

namespace A033229

/-- `∩[A045373(n+1), A141170(n+1)]` -/
def P15355333947061839591.Spec : Prop :=
  ∀ n, (P15355333947061839591.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P16355779983747194604

`∩[A045386(n+1), A141170(n+1)]`
-/

namespace A033229.P16355779983747194604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P16355779983747194604

namespace A033229

/-- `∩[A045386(n+1), A141170(n+1)]` -/
def P16355779983747194604.Spec : Prop :=
  ∀ n, (P16355779983747194604.a n : ℤ) = A033229 (n + 1)

end A033229

/-! ## A033229.P8568377099336386602

`∩[A279815(n+1), A141190(n+1)]`
-/

namespace A033229.P8568377099336386602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033229.P8568377099336386602

namespace A033229

/-- `∩[A279815(n+1), A141190(n+1)]` -/
def P8568377099336386602.Spec : Prop :=
  ∀ n, (P8568377099336386602.a n : ℤ) = A033229 (n + 1)

end A033229

/-!
# A033230: Primes of form x^2+43*y^2.

The programs for A033230, there is no canonical definition to state claims against.
-/

/-! ## A033230.P14977493882738029621

`p?[lt[0, A033755(n)]]`
-/

namespace A033230.P14977493882738029621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033230.P14977493882738029621

/-! ## A033230.P15299871287465325335

`p?[eq[2, A033755(A033755(n)²)]]`
-/

namespace A033230.P15299871287465325335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (A033755 n ^ 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033230.P15299871287465325335

/-! ## A033230.P7333649667100806144

`p?[n*A019430(A033755(n)²)]`
-/

namespace A033230.P7333649667100806144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A019430 (A033755 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033230.P7333649667100806144

/-! ## A033230.P14384494445056513756

`p?[eq[1, A001221(A033755(n)+1)]]`
-/

namespace A033230.P14384494445056513756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A033755 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033230.P14384494445056513756

/-! ## A033230.P5945876316884535330

`p?[A000120(A033755(2*n+1))*(2*n+1)]`
-/

namespace A033230.P5945876316884535330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A033755 (2 * n + 1)).toNat * (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033230.P5945876316884535330

/-! ## A033230.P15518422754828313724

`p?[A022998(n*A019430(A033755(n)))]`
-/

namespace A033230.P15518422754828313724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 ((n : ℤ) * A019430 (A033755 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033230.P15518422754828313724

/-!
# A033231: Primes of form x^2+46*y^2.

The programs for A033231, there is no canonical definition to state claims against.
-/

/-! ## A033231.P11969219247240412017

`A211781(A317332(n+2))`
-/

namespace A033231.P11969219247240412017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211781 (A317332 (n + 2)).toNat

end

end A033231.P11969219247240412017

/-! ## A033231.P14909627601557596979

`A160656(A383709(n+2)+A383685(n+5))`
-/

namespace A033231.P14909627601557596979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (A383709 (n + 2) + A383685 (n + 5)).toNat

end

end A033231.P14909627601557596979

/-!
# A033232: Primes of form x^2+47*y^2.

The programs for A033232, there is no canonical definition to state claims against.
-/

/-! ## A033232.P7163666700339206638

`p?[n%(A033759(n)+n)]`
-/

namespace A033232.P7163666700339206638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A033759 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033232.P7163666700339206638

/-! ## A033232.P10215924448002415492

`p?[n*A178334(A033759(n))]`
-/

namespace A033232.P10215924448002415492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178334 (A033759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033232.P10215924448002415492

/-!
# A033235: Primes of the form x^2 + 55*y^2.

The programs for A033235, there is no canonical definition to state claims against.
-/

/-! ## A033235.P9611863739827327294

`∪[A325079(n+1), A325081(n+1)]`
-/

namespace A033235.P9611863739827327294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033235.P9611863739827327294

/-! ## A033235.P16566562197714680551

`A106913(A032555(n+1))`
-/

namespace A033235.P16566562197714680551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106913 (A032555 (n + 1)).toNat

end

end A033235.P16566562197714680551

/-! ## A033235.P18440467941214491340

`A106913(A032559(n+1))`
-/

namespace A033235.P18440467941214491340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106913 (A032559 (n + 1)).toNat

end

end A033235.P18440467941214491340

/-! ## A033235.P8745100833658342977

`A106913(A077739(n+1))`
-/

namespace A033235.P8745100833658342977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106913 (A077739 (n + 1)).toNat

end

end A033235.P8745100833658342977

/-! ## A033235.P11886369139566444106

`A106913(A078213(n+1))`
-/

namespace A033235.P11886369139566444106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106913 (A078213 (n + 1)).toNat

end

end A033235.P11886369139566444106

/-!
# A033236: Primes of form x^2+57*y^2.

The programs for A033236, there is no canonical definition to state claims against.
-/

/-! ## A033236.P9622046920751789198

`∩[A068228(n+1), A141193(n+1)]`
-/

namespace A033236.P9622046920751789198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P9622046920751789198

/-! ## A033236.P2269156593757135419

`∩[A068228(n+1), A142956(n+1)]`
-/

namespace A033236.P2269156593757135419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P2269156593757135419

/-! ## A033236.P12427078807064007310

`∩[A038891(n+1), A068228(n+1)]`
-/

namespace A033236.P12427078807064007310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P12427078807064007310

/-! ## A033236.P4393123076258250821

`∩[A038891(n+1), A351537(n+1)]`
-/

namespace A033236.P4393123076258250821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P4393123076258250821

/-! ## A033236.P14598690801401848425

`∩[A038874(n+1), A141193(n+1)]`
-/

namespace A033236.P14598690801401848425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P14598690801401848425

/-! ## A033236.P5581437362605683650

`∩[A038874(n+1), A142956(n+1)]`
-/

namespace A033236.P5581437362605683650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P5581437362605683650

/-! ## A033236.P3029406255273941536

`∩[A097933(n+1), A141193(n+1)]`
-/

namespace A033236.P3029406255273941536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P3029406255273941536

/-! ## A033236.P9289362309147418143

`∩[A097933(n+1), A142956(n+1)]`
-/

namespace A033236.P9289362309147418143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P9289362309147418143

/-! ## A033236.P7965975573367823582

`∩[A068228(n+1), A106863(n+1)]`
-/

namespace A033236.P7965975573367823582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P7965975573367823582

/-! ## A033236.P17373749671056430565

`∩[A068228(n+1), A191019(n+1)]`
-/

namespace A033236.P17373749671056430565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P17373749671056430565

/-! ## A033236.P14184678409197592592

`∩[A002144(n+1), A141193(n+1)]`
-/

namespace A033236.P14184678409197592592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P14184678409197592592

/-! ## A033236.P9596241297499706195

`∩[A002313(n+1), A141193(n+1)]`
-/

namespace A033236.P9596241297499706195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P9596241297499706195

/-! ## A033236.P1297011539062116976

`∩[A002476(n+1), A142956(n+1)]`
-/

namespace A033236.P1297011539062116976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P1297011539062116976

/-! ## A033236.P4035883384638105087

`∩[A007645(n+1), A142956(n+1)]`
-/

namespace A033236.P4035883384638105087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P4035883384638105087

/-! ## A033236.P5104874354307632389

`∩[A045331(n+1), A142956(n+1)]`
-/

namespace A033236.P5104874354307632389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P5104874354307632389

/-! ## A033236.P10751902477404734818

`∩[A045375(n+1), A142956(n+1)]`
-/

namespace A033236.P10751902477404734818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P10751902477404734818

/-! ## A033236.P4846117728122322458

`∩[A123365(n+1), A142956(n+1)]`
-/

namespace A033236.P4846117728122322458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P4846117728122322458

/-! ## A033236.P10786787431414566228

`∩[A141193(n+1), A280084(n+1)]`
-/

namespace A033236.P10786787431414566228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P10786787431414566228

/-! ## A033236.P4022331307763676386

`∩[A279815(n+1), A142956(n+1)]`
-/

namespace A033236.P4022331307763676386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P4022331307763676386

/-! ## A033236.P646695875631972969

`∩[A038935(n+1), A068228(n+1)]`
-/

namespace A033236.P646695875631972969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033236.P646695875631972969

/-!
# A033237: Primes of form x^2+58*y^2.

The programs for A033237, there is no canonical definition to state claims against.
-/

/-! ## A033237.P18299712628969995073

`∪[A139652(n+1), A139894(n+1)]`
-/

namespace A033237.P18299712628969995073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P18299712628969995073

/-! ## A033237.P14893102762255955671

`∩[A033200(n+1), A191022(n+1)]`
-/

namespace A033237.P14893102762255955671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P14893102762255955671

/-! ## A033237.P951030194380084335

`∩[A033200(n+1), A038901(n+1)]`
-/

namespace A033237.P951030194380084335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P951030194380084335

/-! ## A033237.P6233002710356320856

`∩[A033203(n+1), A038901(n+1)]`
-/

namespace A033237.P6233002710356320856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P6233002710356320856

/-! ## A033237.P9778406405587232716

`∩[A033203(n+1), A191022(n+1)]`
-/

namespace A033237.P9778406405587232716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P9778406405587232716

/-! ## A033237.P258128166592522425

`∩[A038901(n+1), A341784(n+1)]`
-/

namespace A033237.P258128166592522425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P258128166592522425

/-! ## A033237.P17623698769682378690

`∩[A191022(n+1), A341784(n+1)]`
-/

namespace A033237.P17623698769682378690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P17623698769682378690

/-! ## A033237.P17001012501806720275

`∩[A038901(n+1), A365082(n+1)]`
-/

namespace A033237.P17001012501806720275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P17001012501806720275

/-! ## A033237.P11394009092219842380

`∩[A191022(n+1), A365082(n+1)]`
-/

namespace A033237.P11394009092219842380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P11394009092219842380

/-! ## A033237.P7029547383524992738

`∩[A034031(n+1), A038901(n+1)]`
-/

namespace A033237.P7029547383524992738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P7029547383524992738

/-! ## A033237.P6017409406162462676

`∩[A034031(n+1), A191022(n+1)]`
-/

namespace A033237.P6017409406162462676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P6017409406162462676

/-! ## A033237.P2870775808043423062

`∩[A033200(n+1), A035264(n+1)]`
-/

namespace A033237.P2870775808043423062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P2870775808043423062

/-! ## A033237.P8010495409316829728

`∩[A033203(n+1), A035264(n+1)]`
-/

namespace A033237.P8010495409316829728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P8010495409316829728

/-! ## A033237.P16236516252988745889

`∩[A038901(n+1), A057127(n+1)]`
-/

namespace A033237.P16236516252988745889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P16236516252988745889

/-! ## A033237.P7407110548639148080

`∩[A057127(n+1), A191022(n+1)]`
-/

namespace A033237.P7407110548639148080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P7407110548639148080

/-! ## A033237.P770540136119934393

`∩[A038901(n+1), A047471(n+1)]`
-/

namespace A033237.P770540136119934393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P770540136119934393

/-! ## A033237.P2051878834342243560

`∩[A047471(n+1), A191022(n+1)]`
-/

namespace A033237.P2051878834342243560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P2051878834342243560

/-! ## A033237.P3022320501527825191

`∩[A034034(n+1), A038901(n+1)]`
-/

namespace A033237.P3022320501527825191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P3022320501527825191

/-! ## A033237.P9957451503391188958

`∩[A034034(n+1), A191022(n+1)]`
-/

namespace A033237.P9957451503391188958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P9957451503391188958

/-! ## A033237.P288032028040322850

`∩[A038901(n+1), A154777(n+1)]`
-/

namespace A033237.P288032028040322850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033237.P288032028040322850

/-!
# A033243: Primes of form x^2+67*y^2.

The programs for A033243, there is no canonical definition to state claims against.
-/

/-! ## A033243.P9974483018260072697

`A291934(A016742(n)+67)`
-/

namespace A033243.P9974483018260072697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291934 (A016742 n + 67).toNat

end

end A033243.P9974483018260072697

/-! ## A033243.P6344053454668304351

`4*A102352(A114962(n))+3`
-/

namespace A033243.P6344053454668304351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A102352 (A114962 n).toNat + 3

end

end A033243.P6344053454668304351

/-! ## A033243.P1911600113919926233

`A229357(A290684(n))+A053755(n)`
-/

namespace A033243.P1911600113919926233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229357 (A290684 n).toNat + A053755 n

end

end A033243.P1911600113919926233

/-!
# A033245: Primes of form x^2+70*y^2.

The programs for A033245, the canonical program `A033245.P10583328777124407485` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033245 has offset 1).

The definition of A033245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033245.P10583328777124407485

`∪[A139655(n+1), A139914(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033245

/-- `∪[A139655(n+1), A139914(n+1)]` -/
def P10583328777124407485.Spec : Prop :=
  ∀ n, (P10583328777124407485.a n : ℤ) = A033245 (n + 1)

theorem P10583328777124407485.correct : P10583328777124407485.Spec := by
  intro n
  simp only [A033245, Nat.add_sub_cancel]

end A033245

/-! ## A033245.P11731621144760639747

`∩[A106881(n+1), A141180(n+1)]`
-/

namespace A033245.P11731621144760639747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P11731621144760639747

namespace A033245

/-- `∩[A106881(n+1), A141180(n+1)]` -/
def P11731621144760639747.Spec : Prop :=
  ∀ n, (P11731621144760639747.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P12981139441019261679

`∩[A106881(n+1), A274675(n+1)]`
-/

namespace A033245.P12981139441019261679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P12981139441019261679

namespace A033245

/-- `∩[A106881(n+1), A274675(n+1)]` -/
def P12981139441019261679.Spec : Prop :=
  ∀ n, (P12981139441019261679.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P16168927562147452226

`∩[A106881(n+1), A191043(n+1)]`
-/

namespace A033245.P16168927562147452226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P16168927562147452226

namespace A033245

/-- `∩[A106881(n+1), A191043(n+1)]` -/
def P16168927562147452226.Spec : Prop :=
  ∀ n, (P16168927562147452226.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P2950139518989440200

`∩[A141180(n+1), A191043(n+1)]`
-/

namespace A033245.P2950139518989440200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P2950139518989440200

namespace A033245

/-- `∩[A141180(n+1), A191043(n+1)]` -/
def P2950139518989440200.Spec : Prop :=
  ∀ n, (P2950139518989440200.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P12738553230219809496

`∩[A038872(n+1), A274675(n+1)]`
-/

namespace A033245.P12738553230219809496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P12738553230219809496

namespace A033245

/-- `∩[A038872(n+1), A274675(n+1)]` -/
def P12738553230219809496.Spec : Prop :=
  ∀ n, (P12738553230219809496.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P16261380642072069580

`∩[A045468(n+1), A274675(n+1)]`
-/

namespace A033245.P16261380642072069580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P16261380642072069580

namespace A033245

/-- `∩[A045468(n+1), A274675(n+1)]` -/
def P16261380642072069580.Spec : Prop :=
  ∀ n, (P16261380642072069580.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P14634286012686377941

`∩[A141180(n+1), A191026(n+1)]`
-/

namespace A033245.P14634286012686377941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P14634286012686377941

namespace A033245

/-- `∩[A141180(n+1), A191026(n+1)]` -/
def P14634286012686377941.Spec : Prop :=
  ∀ n, (P14634286012686377941.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P9443360844562912106

`∩[A064739(n+1), A274675(n+1)]`
-/

namespace A033245.P9443360844562912106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P9443360844562912106

namespace A033245

/-- `∩[A064739(n+1), A274675(n+1)]` -/
def P9443360844562912106.Spec : Prop :=
  ∀ n, (P9443360844562912106.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P237467357102083966

`∩[A191026(n+1), A274675(n+1)]`
-/

namespace A033245.P237467357102083966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P237467357102083966

namespace A033245

/-- `∩[A191026(n+1), A274675(n+1)]` -/
def P237467357102083966.Spec : Prop :=
  ∀ n, (P237467357102083966.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P15606173817280431967

`∩[A001132(n+1), A106881(n+1)]`
-/

namespace A033245.P15606173817280431967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P15606173817280431967

namespace A033245

/-- `∩[A001132(n+1), A106881(n+1)]` -/
def P15606173817280431967.Spec : Prop :=
  ∀ n, (P15606173817280431967.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P13090359085080922168

`∩[A038873(n+1), A106881(n+1)]`
-/

namespace A033245.P13090359085080922168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P13090359085080922168

namespace A033245

/-- `∩[A038873(n+1), A106881(n+1)]` -/
def P13090359085080922168.Spec : Prop :=
  ∀ n, (P13090359085080922168.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P9113130614750355422

`∩[A097958(n+1), A106881(n+1)]`
-/

namespace A033245.P9113130614750355422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P9113130614750355422

namespace A033245

/-- `∩[A097958(n+1), A106881(n+1)]` -/
def P9113130614750355422.Spec : Prop :=
  ∀ n, (P9113130614750355422.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P7880949997011275421

`∩[A033207(n+1), A141180(n+1)]`
-/

namespace A033245.P7880949997011275421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P7880949997011275421

namespace A033245

/-- `∩[A033207(n+1), A141180(n+1)]` -/
def P7880949997011275421.Spec : Prop :=
  ∀ n, (P7880949997011275421.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P738277834408633941

`∩[A045373(n+1), A141180(n+1)]`
-/

namespace A033245.P738277834408633941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P738277834408633941

namespace A033245

/-- `∩[A045373(n+1), A141180(n+1)]` -/
def P738277834408633941.Spec : Prop :=
  ∀ n, (P738277834408633941.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P3565609365790501889

`∩[A045386(n+1), A141180(n+1)]`
-/

namespace A033245.P3565609365790501889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P3565609365790501889

namespace A033245

/-- `∩[A045386(n+1), A141180(n+1)]` -/
def P3565609365790501889.Spec : Prop :=
  ∀ n, (P3565609365790501889.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P16709705612675408641

`∩[A097955(n+1), A106881(n+1)]`
-/

namespace A033245.P16709705612675408641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P16709705612675408641

namespace A033245

/-- `∩[A097955(n+1), A106881(n+1)]` -/
def P16709705612675408641.Spec : Prop :=
  ∀ n, (P16709705612675408641.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P10931672976335748295

`∩[A106881(n+1), A191017(n+1)]`
-/

namespace A033245.P10931672976335748295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P10931672976335748295

namespace A033245

/-- `∩[A106881(n+1), A191017(n+1)]` -/
def P10931672976335748295.Spec : Prop :=
  ∀ n, (P10931672976335748295.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P17856527064233440700

`∩[A141180(n+1), A191017(n+1)]`
-/

namespace A033245.P17856527064233440700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P17856527064233440700

namespace A033245

/-- `∩[A141180(n+1), A191017(n+1)]` -/
def P17856527064233440700.Spec : Prop :=
  ∀ n, (P17856527064233440700.a n : ℤ) = A033245 (n + 1)

end A033245

/-! ## A033245.P444752117907031932

`∩[A097955(n+1), A274675(n+1)]`
-/

namespace A033245.P444752117907031932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033245.P444752117907031932

namespace A033245

/-- `∩[A097955(n+1), A274675(n+1)]` -/
def P444752117907031932.Spec : Prop :=
  ∀ n, (P444752117907031932.a n : ℤ) = A033245 (n + 1)

end A033245

/-!
# A033247: Primes of form x^2+73*y^2.

The programs for A033247, there is no canonical definition to state claims against.
-/

/-! ## A033247.P1295718117433359320

`p?[A217990(n+1)+72]`
-/

namespace A033247.P1295718117433359320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217990 (n + 1) + 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033247.P1295718117433359320

/-! ## A033247.P5484457353353452162

`record[p?[A209762(n+1)+72]]`
-/

namespace A033247.P5484457353353452162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209762 (n + 1) + 72

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033247.P5484457353353452162

/-!
# A033249: Primes of form x^2+77*y^2.

The programs for A033249, there is no canonical definition to state claims against.
-/

/-! ## A033249.P4382259047544584427

`∩[A106927(n+1), A298483(n+1)]`
-/

namespace A033249.P4382259047544584427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033249.P4382259047544584427

/-!
# A033250: Primes of form x^2+78*y^2.

The programs for A033250, there is no canonical definition to state claims against.
-/

/-! ## A033250.P14471396302669853443

`∪[A139656(n+1), A139922(n+1)]`
-/

namespace A033250.P14471396302669853443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P14471396302669853443

/-! ## A033250.P4750639007969099837

`∩[A033199(n+1), A139494(n+1)]`
-/

namespace A033250.P4750639007969099837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P4750639007969099837

/-! ## A033250.P14566318716039956417

`∩[A033199(n+1), A267455(n+1)]`
-/

namespace A033250.P14566318716039956417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P14566318716039956417

/-! ## A033250.P18156310705958778598

`∩[A033199(n+1), A191047(n+1)]`
-/

namespace A033250.P18156310705958778598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P18156310705958778598

/-! ## A033250.P1221602216884118416

`∩[A033199(n+1), A191029(n+1)]`
-/

namespace A033250.P1221602216884118416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P1221602216884118416

/-! ## A033250.P134408065972730285

`∩[A033199(n+1), A038883(n+1)]`
-/

namespace A033250.P134408065972730285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P134408065972730285

/-! ## A033250.P14980419282230994285

`∩[A001132(n+1), A139494(n+1)]`
-/

namespace A033250.P14980419282230994285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P14980419282230994285

/-! ## A033250.P17985220621615962095

`∩[A001132(n+1), A267455(n+1)]`
-/

namespace A033250.P17985220621615962095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P17985220621615962095

/-! ## A033250.P7912453652702496798

`∩[A033199(n+1), A296937(n+1)]`
-/

namespace A033250.P7912453652702496798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P7912453652702496798

/-! ## A033250.P17385927233212342849

`∩[A038873(n+1), A139494(n+1)]`
-/

namespace A033250.P17385927233212342849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P17385927233212342849

/-! ## A033250.P17427133363576960128

`∩[A097958(n+1), A139494(n+1)]`
-/

namespace A033250.P17427133363576960128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P17427133363576960128

/-! ## A033250.P12183209390683199961

`∩[A038873(n+1), A267455(n+1)]`
-/

namespace A033250.P12183209390683199961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P12183209390683199961

/-! ## A033250.P5023149145645317340

`∩[A139494(n+1), A157437(n+1)]`
-/

namespace A033250.P5023149145645317340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P5023149145645317340

/-! ## A033250.P888545992022305913

`∩[A157437(n+1), A267455(n+1)]`
-/

namespace A033250.P888545992022305913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P888545992022305913

/-! ## A033250.P8680320605485189001

`∩[A033199(n+1), A038899(n+1)]`
-/

namespace A033250.P8680320605485189001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P8680320605485189001

/-! ## A033250.P235923900403172613

`∩[A055673(n+1), A139494(n+1)]`
-/

namespace A033250.P235923900403172613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P235923900403172613

/-! ## A033250.P6032557019376072301

`∩[A055673(n+1), A267455(n+1)]`
-/

namespace A033250.P6032557019376072301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P6032557019376072301

/-! ## A033250.P2519424778815136801

`∩[A033199(n+1), A270997(n+1)]`
-/

namespace A033250.P2519424778815136801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P2519424778815136801

/-! ## A033250.P4386681507028164038

`∩[A139494(n+1), A270951(n+1)]`
-/

namespace A033250.P4386681507028164038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P4386681507028164038

/-! ## A033250.P11969091558500676481

`∩[A267455(n+1), A270951(n+1)]`
-/

namespace A033250.P11969091558500676481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033250.P11969091558500676481

/-!
# A033252: Primes of form x^2+82*y^2.

The programs for A033252, there is no canonical definition to state claims against.
-/

/-! ## A033252.P16228933727628329781

`p?[A035121(n+1)]`
-/

namespace A033252.P16228933727628329781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033252.P16228933727628329781

/-! ## A033252.P7541979582455525652

`∩[A033200(n+1), A035121(n+1)]`
-/

namespace A033252.P7541979582455525652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P7541979582455525652

/-! ## A033252.P2626938879697915458

`∩[A033203(n+1), A035121(n+1)]`
-/

namespace A033252.P2626938879697915458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P2626938879697915458

/-! ## A033252.P17509375090551148903

`∩[A035121(n+1), A038919(n+1)]`
-/

namespace A033252.P17509375090551148903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P17509375090551148903

/-! ## A033252.P18191710178245570114

`∩[A035121(n+1), A042998(n+1)]`
-/

namespace A033252.P18191710178245570114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P18191710178245570114

/-! ## A033252.P16068942332211228785

`∩[A035121(n+1), A045323(n+1)]`
-/

namespace A033252.P16068942332211228785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P16068942332211228785

/-! ## A033252.P12434612429702562485

`∩[A035121(n+1), A045403(n+1)]`
-/

namespace A033252.P12434612429702562485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P12434612429702562485

/-! ## A033252.P12976056736101244847

`∩[A035121(n+1), A045419(n+1)]`
-/

namespace A033252.P12976056736101244847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P12976056736101244847

/-! ## A033252.P10467376806626530416

`∩[A035121(n+1), A085317(n+1)]`
-/

namespace A033252.P10467376806626530416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P10467376806626530416

/-! ## A033252.P4443437766931431596

`∩[A035121(n+1), A191030(n+1)]`
-/

namespace A033252.P4443437766931431596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P4443437766931431596

/-! ## A033252.P4328990918071809839

`∩[A000040(n+1), A035121(n+1)]`
-/

namespace A033252.P4328990918071809839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P4328990918071809839

/-! ## A033252.P14361155115630883491

`∩[A004139(n+1), A035121(n+1)]`
-/

namespace A033252.P14361155115630883491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P14361155115630883491

/-! ## A033252.P2072540572444220345

`∩[A035121(n+1), A045319(n+1)]`
-/

namespace A033252.P2072540572444220345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P2072540572444220345

/-! ## A033252.P11271816563550916079

`∩[A035121(n+1), A045344(n+1)]`
-/

namespace A033252.P11271816563550916079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P11271816563550916079

/-! ## A033252.P16390213402635336980

`∩[A035121(n+1), A065091(n+1)]`
-/

namespace A033252.P16390213402635336980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P16390213402635336980

/-! ## A033252.P4131243142606522740

`∩[A035121(n+1), A065376(n+1)]`
-/

namespace A033252.P4131243142606522740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P4131243142606522740

/-! ## A033252.P14375372087386688038

`∩[A035121(n+1), A065396(n+1)]`
-/

namespace A033252.P14375372087386688038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P14375372087386688038

/-! ## A033252.P9223475553403336883

`∩[A035121(n+1), A071621(n+1)]`
-/

namespace A033252.P9223475553403336883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P9223475553403336883

/-! ## A033252.P3275968757098225498

`∩[A035121(n+1), A078132(n+1)]`
-/

namespace A033252.P3275968757098225498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P3275968757098225498

/-! ## A033252.P12044405505301457237

`∩[A035121(n+1), A078138(n+1)]`
-/

namespace A033252.P12044405505301457237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033252.P12044405505301457237

/-!
# A033254: Primes of form x^2+85*y^2.

The programs for A033254, there is no canonical definition to state claims against.
-/

/-! ## A033254.P8576834666799010619

`∩[A033205(n+1), A141773(n+1)]`
-/

namespace A033254.P8576834666799010619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P8576834666799010619

/-! ## A033254.P13151256633081279093

`∩[A141773(n+1), A216815(n+1)]`
-/

namespace A033254.P13151256633081279093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P13151256633081279093

/-! ## A033254.P10913388975327071666

`∩[A091729(n+1), A141773(n+1)]`
-/

namespace A033254.P10913388975327071666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P10913388975327071666

/-! ## A033254.P13746140012968217442

`∩[A033205(n+1), A296938(n+1)]`
-/

namespace A033254.P13746140012968217442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P13746140012968217442

/-! ## A033254.P13473247898165939366

`∩[A091729(n+1), A296938(n+1)]`
-/

namespace A033254.P13473247898165939366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P13473247898165939366

/-! ## A033254.P8671575277717668807

`∩[A216815(n+1), A296938(n+1)]`
-/

namespace A033254.P8671575277717668807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P8671575277717668807

/-! ## A033254.P11128449998027792171

`∩[A033205(n+1), A038889(n+1)]`
-/

namespace A033254.P11128449998027792171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P11128449998027792171

/-! ## A033254.P7495691308869665735

`∩[A038889(n+1), A091729(n+1)]`
-/

namespace A033254.P7495691308869665735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P7495691308869665735

/-! ## A033254.P13156921110252755885

`∩[A038889(n+1), A216815(n+1)]`
-/

namespace A033254.P13156921110252755885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P13156921110252755885

/-! ## A033254.P5908548036946311748

`∩[A038971(n+1), A216815(n+1)]`
-/

namespace A033254.P5908548036946311748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P5908548036946311748

/-! ## A033254.P14057422553039906350

`∩[A139513(n+1), A141773(n+1)]`
-/

namespace A033254.P14057422553039906350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P14057422553039906350

/-! ## A033254.P5470407650606135230

`∩[A141773(n+1), A240920(n+1)]`
-/

namespace A033254.P5470407650606135230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P5470407650606135230

/-! ## A033254.P2521475329414063597

`∩[A002144(n+1), A141773(n+1)]`
-/

namespace A033254.P2521475329414063597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P2521475329414063597

/-! ## A033254.P1750216611814575520

`∩[A002313(n+1), A141773(n+1)]`
-/

namespace A033254.P1750216611814575520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P1750216611814575520

/-! ## A033254.P13584883529675386399

`∩[A033205(n+1), A296931(n+1)]`
-/

namespace A033254.P13584883529675386399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P13584883529675386399

/-! ## A033254.P15927167341747065230

`∩[A091729(n+1), A296931(n+1)]`
-/

namespace A033254.P15927167341747065230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P15927167341747065230

/-! ## A033254.P10961448336032221506

`∩[A216815(n+1), A296931(n+1)]`
-/

namespace A033254.P10961448336032221506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P10961448336032221506

/-! ## A033254.P1534291801122082508

`∩[A033205(n+1), A296929(n+1)]`
-/

namespace A033254.P1534291801122082508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P1534291801122082508

/-! ## A033254.P6365312976055878023

`∩[A091729(n+1), A296929(n+1)]`
-/

namespace A033254.P6365312976055878023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P6365312976055878023

/-! ## A033254.P6363248514589455377

`∩[A216815(n+1), A296929(n+1)]`
-/

namespace A033254.P6363248514589455377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033254.P6363248514589455377

/-!
# A033255: Primes of form x^2+86*y^2.

The programs for A033255, there is no canonical definition to state claims against.
-/

/-! ## A033255.P16924939431384523563

`A212420(A301563(n)+A022380(n))`
-/

namespace A033255.P16924939431384523563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212420 (A301563 n + A022380 n).toNat

end

end A033255.P16924939431384523563

/-!
# A033258: Primes of form x^2+91*y^2.

The programs for A033258, there is no canonical definition to state claims against.
-/

/-! ## A033258.P2595199183659110466

`p?[A236864(3*(n+1))+A236858(2*(n+1))]`
-/

namespace A033258.P2595199183659110466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236864 (3 * (n + 1)) + A236858 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033258.P2595199183659110466

/-!
# A033262: Incrementally largest terms in the continued fraction for Laplace's limit constant.

The programs for A033262, there is no canonical definition to state claims against.
-/

/-! ## A033262.P4889694885394748017

`A033260(A033263(n+1))`
-/

namespace A033262.P4889694885394748017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033260 (A033263 (n + 1)).toNat

end

end A033262.P4889694885394748017

/-! ## A033262.P5137616793039909515

`record[A033260(A185974(n))]`
-/

namespace A033262.P5137616793039909515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033260 (A185974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033262.P5137616793039909515

/-!
# A033263: Positions of the incrementally largest terms in the continued fraction for Laplace's limit constant.

The programs for A033263, there is no canonical definition to state claims against.
-/

/-! ## A033263.P6580212749491231281

`filter[A280246(n+2), A189920(#)]`
-/

namespace A033263.P6580212749491231281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189920 (f1 j).toNat = 1) n)

end

end A033263.P6580212749491231281

/-!
# A033264: Number of blocks of {1,0} in the binary expansion of n.

The programs for A033264, the canonical program `A033264.P13575262640478972273` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033264 has offset 0).

The definition of A033264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033264.P13586502557305709154

`val(A078828(n), 2)`
-/

namespace A033264.P13586502557305709154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078828 n).toNat 2

end

end A033264.P13586502557305709154

namespace A033264

/-- `val(A078828(n), 2)` -/
def P13586502557305709154.Spec : Prop :=
  ∀ n, (P13586502557305709154.a n : ℤ) = A033264 n

end A033264

/-! ## A033264.P13575262640478972273

`A069010(and(n, n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033264

/-- `A069010(and(n, n+1))` -/
def P13575262640478972273.Spec : Prop :=
  ∀ n, P13575262640478972273.a n = A033264 n

theorem P13575262640478972273.correct : P13575262640478972273.Spec := by
  intro n
  simp only [A033264]

end A033264

/-! ## A033264.P11367013702930224030

`(A072219(n+1)-1)/2`
-/

namespace A033264.P11367013702930224030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072219 (n + 1) - 1 : ℚ) / 2

end

end A033264.P11367013702930224030

namespace A033264

/-- `(A072219(n+1)-1)/2` -/
def P11367013702930224030.Spec : Prop :=
  ∀ n, P11367013702930224030.a n = (A033264 n : ℚ)

end A033264

/-! ## A033264.P17890670443029495035

`A004526(A005811(n))`
-/

namespace A033264.P17890670443029495035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005811 n).toNat

end

end A033264.P17890670443029495035

namespace A033264

/-- `A004526(A005811(n))` -/
def P17890670443029495035.Spec : Prop :=
  ∀ n, P17890670443029495035.a n = A033264 n

end A033264

/-! ## A033264.P18025912599766874708

`A069010(A025480(n))`
-/

namespace A033264.P18025912599766874708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A025480 n).toNat

end

end A033264.P18025912599766874708

namespace A033264

/-- `A069010(A025480(n))` -/
def P18025912599766874708.Spec : Prop :=
  ∀ n, P18025912599766874708.a n = A033264 n

end A033264

/-! ## A033264.P16690458903561365245

`A087116(A028310(n))`
-/

namespace A033264.P16690458903561365245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A028310 n).toNat

end

end A033264.P16690458903561365245

namespace A033264

/-- `A087116(A028310(n))` -/
def P16690458903561365245.Spec : Prop :=
  ∀ n, P16690458903561365245.a n = A033264 n

end A033264

/-! ## A033264.P3289001394140512640

`A048881(A090077(n))`
-/

namespace A033264.P3289001394140512640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A090077 n).toNat

end

end A033264.P3289001394140512640

namespace A033264

/-- `A048881(A090077(n))` -/
def P3289001394140512640.Spec : Prop :=
  ∀ n, P3289001394140512640.a n = A033264 n

end A033264

/-! ## A033264.P5199934350503839689

`A048881(A090079(n))`
-/

namespace A033264.P5199934350503839689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A090079 n).toNat

end

end A033264.P5199934350503839689

namespace A033264

/-- `A048881(A090079(n))` -/
def P5199934350503839689.Spec : Prop :=
  ∀ n, P5199934350503839689.a n = A033264 n

end A033264

/-! ## A033264.P2647439926740022864

`A080791(A090078(n))`
-/

namespace A033264.P2647439926740022864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A090078 n).toNat

end

end A033264.P2647439926740022864

namespace A033264

/-- `A080791(A090078(n))` -/
def P2647439926740022864.Spec : Prop :=
  ∀ n, P2647439926740022864.a n = A033264 n

end A033264

/-! ## A033264.P5848923767439505696

`A069010(A129760(n+1))`
-/

namespace A033264.P5848923767439505696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A129760 (n + 1)).toNat

end

end A033264.P5848923767439505696

namespace A033264

/-- `A069010(A129760(n+1))` -/
def P5848923767439505696.Spec : Prop :=
  ∀ n, P5848923767439505696.a n = A033264 n

end A033264

/-! ## A033264.P13990749368265085061

`A087116(A000007(n)+n)`
-/

namespace A033264.P13990749368265085061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A000007 n + (n : ℤ)).toNat

end

end A033264.P13990749368265085061

namespace A033264

/-- `A087116(A000007(n)+n)` -/
def P13990749368265085061.Spec : Prop :=
  ∀ n, P13990749368265085061.a n = A033264 n

end A033264

/-! ## A033264.P17880988720150531145

`A069010(n)-A000035(n)`
-/

namespace A033264.P17880988720150531145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n - A000035 n

end

end A033264.P17880988720150531145

namespace A033264

/-- `A069010(n)-A000035(n)` -/
def P17880988720150531145.Spec : Prop :=
  ∀ n, P17880988720150531145.a n = A033264 n

end A033264

/-! ## A033264.P11179485347639825641

`A069010(A003817(n)-n)`
-/

namespace A033264.P11179485347639825641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A003817 n - (n : ℤ)).toNat

end

end A033264.P11179485347639825641

namespace A033264

/-- `A069010(A003817(n)-n)` -/
def P11179485347639825641.Spec : Prop :=
  ∀ n, P11179485347639825641.a n = A033264 n

end A033264

/-! ## A033264.P9469113880985750427

`A005811(n)-A069010(n)`
-/

namespace A033264.P9469113880985750427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n - A069010 n

end

end A033264.P9469113880985750427

namespace A033264

/-- `A005811(n)-A069010(n)` -/
def P9469113880985750427.Spec : Prop :=
  ∀ n, P9469113880985750427.a n = A033264 n

end A033264

/-! ## A033264.P12636961084027742078

`A087116(n)-A000007(n)`
-/

namespace A033264.P12636961084027742078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n - A000007 n

end

end A033264.P12636961084027742078

namespace A033264

/-- `A087116(n)-A000007(n)` -/
def P12636961084027742078.Spec : Prop :=
  ∀ n, P12636961084027742078.a n = A033264 n

end A033264

/-! ## A033264.P6247322271374414881

`A080791(n)-A107782(n)`
-/

namespace A033264.P6247322271374414881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n - A107782 n

end

end A033264.P6247322271374414881

namespace A033264

/-- `A080791(n)-A107782(n)` -/
def P6247322271374414881.Spec : Prop :=
  ∀ n, P6247322271374414881.a n = A033264 n

end A033264

/-! ## A033264.P1667449249598565650

`A069010(n-A135481(n))`
-/

namespace A033264.P1667449249598565650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ((n : ℤ) - A135481 n).toNat

end

end A033264.P1667449249598565650

namespace A033264

/-- `A069010(n-A135481(n))` -/
def P1667449249598565650.Spec : Prop :=
  ∀ n, P1667449249598565650.a n = A033264 n

end A033264

/-! ## A033264.P12124279679299297587

`A004526(n)-A255070(n)`
-/

namespace A033264.P12124279679299297587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A255070 n

end

end A033264.P12124279679299297587

namespace A033264

/-- `A004526(n)-A255070(n)` -/
def P12124279679299297587.Spec : Prop :=
  ∀ n, P12124279679299297587.a n = A033264 n

end A033264

/-! ## A033264.P12011020983982657111

`A052928(n)-A239904(n)`
-/

namespace A033264.P12011020983982657111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n - A239904 n

end

end A033264.P12011020983982657111

namespace A033264

/-- `A052928(n)-A239904(n)` -/
def P12011020983982657111.Spec : Prop :=
  ∀ n, P12011020983982657111.a n = A033264 n

end A033264

/-!
# A033265: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

The programs for A033265, the canonical program `A033265.P2197321529465223578` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033265 has offset 1).

The definition of A033265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033265.P2197321529465223578

`A014081(n+1)+A023416(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A033265

/-- `A014081(n+1)+A023416(n+1)` -/
def P2197321529465223578.Spec : Prop :=
  ∀ n, P2197321529465223578.a n = A033265 (n + 1)

theorem P2197321529465223578.correct : P2197321529465223578.Spec := by
  intro n
  simp only [A033265, Nat.add_sub_cancel]

end A033265

/-! ## A033265.P12836190504596547927

`log2(A364567(n+1))`
-/

namespace A033265.P12836190504596547927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A364567 (n + 1) : ℝ)

end

end A033265.P12836190504596547927

namespace A033265

/-- `log2(A364567(n+1))` -/
def P12836190504596547927.Spec : Prop :=
  ∀ n, P12836190504596547927.a n = (A033265 (n + 1) : ℝ)

end A033265

/-! ## A033265.P13190706930275476979

`A023416(A292272(n+1))`
-/

namespace A033265.P13190706930275476979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A292272 (n + 1)).toNat

end

end A033265.P13190706930275476979

namespace A033265

/-- `A023416(A292272(n+1))` -/
def P13190706930275476979.Spec : Prop :=
  ∀ n, P13190706930275476979.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P8757217437348873144

`A057526(A283165(n+1))`
-/

namespace A033265.P8757217437348873144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A283165 (n + 1)).toNat

end

end A033265.P8757217437348873144

namespace A033265

/-- `A057526(A283165(n+1))` -/
def P8757217437348873144.Spec : Prop :=
  ∀ n, P8757217437348873144.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P3878136805878033060

`A000120(A283165(n+1)-1)`
-/

namespace A033265.P3878136805878033060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A283165 (n + 1) - 1).toNat

end

end A033265.P3878136805878033060

namespace A033265

/-- `A000120(A283165(n+1)-1)` -/
def P3878136805878033060.Spec : Prop :=
  ∀ n, P3878136805878033060.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P11624941151682117097

`A037809(n+1)+A000035(n)`
-/

namespace A033265.P11624941151682117097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (n + 1) + A000035 n

end

end A033265.P11624941151682117097

namespace A033265

/-- `A037809(n+1)+A000035(n)` -/
def P11624941151682117097.Spec : Prop :=
  ∀ n, P11624941151682117097.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P1644413576018991205

`A080791(n+1)+A014081(n+1)`
-/

namespace A033265.P1644413576018991205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1) + A014081 (n + 1)

end

end A033265.P1644413576018991205

namespace A033265

/-- `A080791(n+1)+A014081(n+1)` -/
def P1644413576018991205.Spec : Prop :=
  ∀ n, P1644413576018991205.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P10119889747066311817

`A000523(n+1)-A037800(n+1)`
-/

namespace A033265.P10119889747066311817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A037800 (n + 1)

end

end A033265.P10119889747066311817

namespace A033265

/-- `A000523(n+1)-A037800(n+1)` -/
def P10119889747066311817.Spec : Prop :=
  ∀ n, P10119889747066311817.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P7899546385366592003

`A297113(A364567(2*n+1-n))`
-/

namespace A033265.P7899546385366592003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A364567 (2 * n + 1 - n)).toNat

end

end A033265.P7899546385366592003

namespace A033265

/-- `A297113(A364567(2*n+1-n))` -/
def P7899546385366592003.Spec : Prop :=
  ∀ n, P7899546385366592003.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P10604617048142117995

`A056973(A000265(n+1))+A000120(n)`
-/

namespace A033265.P10604617048142117995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A000265 (n + 1)).toNat + A000120 n

end

end A033265.P10604617048142117995

namespace A033265

/-- `A056973(A000265(n+1))+A000120(n)` -/
def P10604617048142117995.Spec : Prop :=
  ∀ n, P10604617048142117995.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P1015739075424202065

`A014081(n+1)+A056973(n+1)+A033264(n+1)`
-/

namespace A033265.P1015739075424202065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (n + 1) + (A056973 (n + 1) + A033264 (n + 1))

end

end A033265.P1015739075424202065

namespace A033265

/-- `A014081(n+1)+A056973(n+1)+A033264(n+1)` -/
def P1015739075424202065.Spec : Prop :=
  ∀ n, P1015739075424202065.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P7077591580300298049

`A092339(n+1)+A033264(n+1)`
-/

namespace A033265.P7077591580300298049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (n + 1) + A033264 (n + 1)

end

end A033265.P7077591580300298049

namespace A033265

/-- `A092339(n+1)+A033264(n+1)` -/
def P7077591580300298049.Spec : Prop :=
  ∀ n, P7077591580300298049.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P12536443560229588250

`A070939(n+1)-A069010(n+1)`
-/

namespace A033265.P12536443560229588250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A069010 (n + 1)

end

end A033265.P12536443560229588250

namespace A033265

/-- `A070939(n+1)-A069010(n+1)` -/
def P12536443560229588250.Spec : Prop :=
  ∀ n, P12536443560229588250.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P16726885668311136097

`A029837(n+2)-A069010(n+1)`
-/

namespace A033265.P16726885668311136097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2) - A069010 (n + 1)

end

end A033265.P16726885668311136097

namespace A033265

/-- `A029837(n+2)-A069010(n+1)` -/
def P16726885668311136097.Spec : Prop :=
  ∀ n, P16726885668311136097.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P1962677484114262537

`A070939(n+1)-A000120(A090079(n+1))`
-/

namespace A033265.P1962677484114262537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A000120 (A090079 (n + 1)).toNat

end

end A033265.P1962677484114262537

namespace A033265

/-- `A070939(n+1)-A000120(A090079(n+1))` -/
def P1962677484114262537.Spec : Prop :=
  ∀ n, P1962677484114262537.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P15222243469493467453

`A080791(n+1)+A092339(n+1)-A056973(n+1)`
-/

namespace A033265.P15222243469493467453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1) + (A092339 (n + 1) - A056973 (n + 1))

end

end A033265.P15222243469493467453

namespace A033265

/-- `A080791(n+1)+A092339(n+1)-A056973(n+1)` -/
def P15222243469493467453.Spec : Prop :=
  ∀ n, P15222243469493467453.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P7905078350470550008

`A037809(A086799(n+1))`
-/

namespace A033265.P7905078350470550008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (A086799 (n + 1)).toNat

end

end A033265.P7905078350470550008

namespace A033265

/-- `A037809(A086799(n+1))` -/
def P7905078350470550008.Spec : Prop :=
  ∀ n, P7905078350470550008.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P4533298270139811921

`A037809(A364567(2*(n+1)))`
-/

namespace A033265.P4533298270139811921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (A364567 (2 * (n + 1))).toNat

end

end A033265.P4533298270139811921

namespace A033265

/-- `A037809(A364567(2*(n+1)))` -/
def P4533298270139811921.Spec : Prop :=
  ∀ n, P4533298270139811921.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P10955799828919137920

`A297167(2*A364567(n+1))`
-/

namespace A033265.P10955799828919137920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (2 * A364567 (n + 1)).toNat

end

end A033265.P10955799828919137920

namespace A033265

/-- `A297167(2*A364567(n+1))` -/
def P10955799828919137920.Spec : Prop :=
  ∀ n, P10955799828919137920.a n = A033265 (n + 1)

end A033265

/-! ## A033265.P11209608926726641878

`A000120(A334076(n+1)+n)`
-/

namespace A033265.P11209608926726641878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A334076 (n + 1) + (n : ℤ)).toNat

end

end A033265.P11209608926726641878

namespace A033265

/-- `A000120(A334076(n+1)+n)` -/
def P11209608926726641878.Spec : Prop :=
  ∀ n, P11209608926726641878.a n = A033265 (n + 1)

end A033265

/-!
# A033266: Numbers n such that every genus of binary quadratic forms of discriminant -4n consists of a single class and the class number h(-4n) = 2.

The programs for A033266, there is no canonical definition to state claims against.
-/

/-! ## A033266.P4316475937185153292

`eq[2, A000003(n+1)]+1`
-/

namespace A033266.P4316475937185153292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033266.P4316475937185153292

/-! ## A033266.P16538803480696722219

`eq[2, A000003(n^floor(atan(n)))]`
-/

namespace A033266.P16538803480696722219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033266.P16538803480696722219

/-! ## A033266.P5329948876747877629

`eq[2, A014600(2*n+1)]+1`
-/

namespace A033266.P5329948876747877629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033266.P5329948876747877629

/-! ## A033266.P12023918727435047212

`eq[4, A014600(n+1+n)²]+1`
-/

namespace A033266.P12023918727435047212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 (n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033266.P12023918727435047212

/-! ## A033266.P2470146967351231897

`eq[2, A014600(A004273(n))]`
-/

namespace A033266.P2470146967351231897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 (A004273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033266.P2470146967351231897

/-!
# A033267: Numbers n such that every genus of binary quadratic forms of discriminant -4n consists of a single class and the class number h(-4n) = 4.

The programs for A033267, there is no canonical definition to state claims against.
-/

/-! ## A033267.P14770151975754909135

`record[A054576(A329182(n+1))]`
-/

namespace A033267.P14770151975754909135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A329182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033267.P14770151975754909135

/-! ## A033267.P5702045570905904224

`record[A174571(A329182(A008619(n)))]`
-/

namespace A033267.P5702045570905904224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A329182 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033267.P5702045570905904224

/-! ## A033267.P1975113969719568248

`A004525(record[A032742(A329182(n+1))])`
-/

namespace A033267.P1975113969719568248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A329182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033267.P1975113969719568248

/-! ## A033267.P2886718658948842608

`A032742(record[A032742(A329182(n+1))])`
-/

namespace A033267.P2886718658948842608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A329182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033267.P2886718658948842608

/-! ## A033267.P8107177187359269953

`lt[A181744(n+3), A076942(n+1)*A173636(n)]`
-/

namespace A033267.P8107177187359269953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181744 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076942 (n + 1) * A173636 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033267.P8107177187359269953

/-!
# A033268: Numbers n such that every genus of binary quadratic forms of discriminant -4n consists of a single class and the class number h(-4n) = 8.

The programs for A033268, there is no canonical definition to state claims against.
-/

/-! ## A033268.P7578579679322449174

`A178864(A014486(n+4)-A000793(n))`
-/

namespace A033268.P7578579679322449174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (A014486 (n + 4) - A000793 n).toNat

end

end A033268.P7578579679322449174

/-!
# A033270: Number of odd primes <= n.

The programs for A033270, the canonical program `A033270.P17547381595511500328` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033270 has offset 1).

The definition of A033270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033270.P10673836921455968536

`∑[char[p?[2*n+1]-1]]`
-/

namespace A033270.P10673836921455968536
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P10673836921455968536

namespace A033270

/-- `∑[char[p?[2*n+1]-1]]` -/
def P10673836921455968536.Spec : Prop :=
  ∀ n, (P10673836921455968536.a n : ℤ) = A033270 (n + 1)

end A033270

/-! ## A033270.P5111228387341837411

`∑[char[xor(1, p?[2*n+1])]]`
-/

namespace A033270.P5111228387341837411
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P5111228387341837411

namespace A033270

/-- `∑[char[xor(1, p?[2*n+1])]]` -/
def P5111228387341837411.Spec : Prop :=
  ∀ n, (P5111228387341837411.a n : ℤ) = A033270 (n + 1)

end A033270

/-! ## A033270.P17547381595511500328

`∑[∑{p}[n+1, (#%n)%#]]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033270

/-- `∑[∑{p}[n+1, (#%n)%#]]` -/
def P17547381595511500328.Spec : Prop :=
  ∀ n, (P17547381595511500328.a n : ℤ) = A033270 (n + 1)

theorem P17547381595511500328.correct : P17547381595511500328.Spec := by
  intro n
  simp only [A033270, Nat.add_sub_cancel]

end A033270

/-! ## A033270.P796908583864950598

`A082460(or(1, n))`
-/

namespace A033270.P796908583864950598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (Nat.lor 1 n)

end

end A033270.P796908583864950598

namespace A033270

/-- `A082460(or(1, n))` -/
def P796908583864950598.Spec : Prop :=
  ∀ n, P796908583864950598.a n = A033270 (n + 1)

end A033270

/-! ## A033270.P13520577021012436291

`A084360(or(1, n+2))`
-/

namespace A033270.P13520577021012436291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (Nat.lor 1 (n + 2))

end

end A033270.P13520577021012436291

namespace A033270

/-- `A084360(or(1, n+2))` -/
def P13520577021012436291.Spec : Prop :=
  ∀ n, P13520577021012436291.a n = A033270 (n + 1)

end A033270

/-! ## A033270.P9916799262844621955

`∑[abs(A151763(n+1))]`
-/

namespace A033270.P9916799262844621955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151763 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P9916799262844621955

namespace A033270

/-- `∑[abs(A151763(n+1))]` -/
def P9916799262844621955.Spec : Prop :=
  ∀ n, P9916799262844621955.a n = A033270 (n + 1)

end A033270

/-! ## A033270.P18119339963258841198

`∑[char[A006093(n+2)]]`
-/

namespace A033270.P18119339963258841198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P18119339963258841198

namespace A033270

/-- `∑[char[A006093(n+2)]]` -/
def P18119339963258841198.Spec : Prop :=
  ∀ n, (P18119339963258841198.a n : ℤ) = A033270 (n + 1)

end A033270

/-! ## A033270.P7764026099133678524

`∑[char[A039915(n+2)]]`
-/

namespace A033270.P7764026099133678524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P7764026099133678524

namespace A033270

/-- `∑[char[A039915(n+2)]]` -/
def P7764026099133678524.Spec : Prop :=
  ∀ n, (P7764026099133678524.a n : ℤ) = A033270 (n + 1)

end A033270

/-! ## A033270.P1166238596065211103

`∑[char[A070320(n+3)]]`
-/

namespace A033270.P1166238596065211103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070320 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P1166238596065211103

namespace A033270

/-- `∑[char[A070320(n+3)]]` -/
def P1166238596065211103.Spec : Prop :=
  ∀ n, (P1166238596065211103.a n : ℤ) = A033270 (n + 1)

end A033270

/-! ## A033270.P15145765393256701488

`∑[A080545(n+1)]-1`
-/

namespace A033270.P15145765393256701488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A033270.P15145765393256701488

namespace A033270

/-- `∑[A080545(n+1)]-1` -/
def P15145765393256701488.Spec : Prop :=
  ∀ n, P15145765393256701488.a n = A033270 (n + 1)

end A033270

/-! ## A033270.P5632916367458539252

`∑[A280710(2*(n+1))]`
-/

namespace A033270.P5632916367458539252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P5632916367458539252

namespace A033270

/-- `∑[A280710(2*(n+1))]` -/
def P5632916367458539252.Spec : Prop :=
  ∀ n, P5632916367458539252.a n = A033270 (n + 1)

end A033270

/-! ## A033270.P3137676462497353950

`∑[A353472(4*(n+1))]`
-/

namespace A033270.P3137676462497353950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P3137676462497353950

namespace A033270

/-- `∑[A353472(4*(n+1))]` -/
def P3137676462497353950.Spec : Prop :=
  ∀ n, P3137676462497353950.a n = A033270 (n + 1)

end A033270

/-! ## A033270.P17929900899252181908

`∑[A353474(4*(n+1))]`
-/

namespace A033270.P17929900899252181908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353474 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P17929900899252181908

namespace A033270

/-- `∑[A353474(4*(n+1))]` -/
def P17929900899252181908.Spec : Prop :=
  ∀ n, P17929900899252181908.a n = A033270 (n + 1)

end A033270

/-! ## A033270.P7169213663285887673

`∑[char[record[A000010(n+3)]]]`
-/

namespace A033270.P7169213663285887673
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P7169213663285887673

namespace A033270

/-- `∑[char[record[A000010(n+3)]]]` -/
def P7169213663285887673.Spec : Prop :=
  ∀ n, (P7169213663285887673.a n : ℤ) = A033270 (n + 1)

end A033270

/-! ## A033270.P10029406871244789240

`∑[A010051(n+1)-char[1]]`
-/

namespace A033270.P10029406871244789240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P10029406871244789240

namespace A033270

/-- `∑[A010051(n+1)-char[1]]` -/
def P10029406871244789240.Spec : Prop :=
  ∀ n, P10029406871244789240.a n = A033270 (n + 1)

end A033270

/-! ## A033270.P16299096812529491802

`∑[char[A065091(n+1)-1]]`
-/

namespace A033270.P16299096812529491802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P16299096812529491802

namespace A033270

/-- `∑[char[A065091(n+1)-1]]` -/
def P16299096812529491802.Spec : Prop :=
  ∀ n, (P16299096812529491802.a n : ℤ) = A033270 (n + 1)

end A033270

/-! ## A033270.P14836557998864415339

`∑[char[A000040(n+2)-1]]`
-/

namespace A033270.P14836557998864415339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P14836557998864415339

namespace A033270

/-- `∑[char[A000040(n+2)-1]]` -/
def P14836557998864415339.Spec : Prop :=
  ∀ n, (P14836557998864415339.a n : ℤ) = A033270 (n + 1)

end A033270

/-! ## A033270.P1989863355592295572

`∑[char[A055670(n+1)-2]]`
-/

namespace A033270.P1989863355592295572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P1989863355592295572

namespace A033270

/-- `∑[char[A055670(n+1)-2]]` -/
def P1989863355592295572.Spec : Prop :=
  ∀ n, (P1989863355592295572.a n : ℤ) = A033270 (n + 1)

end A033270

/-! ## A033270.P4468745379012382063

`∑[char[2*A005097(n+1)]]`
-/

namespace A033270.P4468745379012382063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005097 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033270.P4468745379012382063

namespace A033270

/-- `∑[char[2*A005097(n+1)]]` -/
def P4468745379012382063.Spec : Prop :=
  ∀ n, (P4468745379012382063.a n : ℤ) = A033270 (n + 1)

end A033270

/-! ## A033270.P4166565584789614410

`n-∑[char[A060462(n+1)]]`
-/

namespace A033270.P4166565584789614410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033270.P4166565584789614410

namespace A033270

/-- `n-∑[char[A060462(n+1)]]` -/
def P4166565584789614410.Spec : Prop :=
  ∀ n, P4166565584789614410.a n = A033270 (n + 1)

end A033270

/-!
# A033271: Number of odd nonprimes <= n.

The programs for A033271, the canonical program `A033271.P12654991856704208328` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033271 has offset 1).

The definition of A033271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033271.P12654991856704208328

`∑[∏{p}[n+1, (#%(n+1))%2]]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033271

/-- `∑[∏{p}[n+1, (#%(n+1))%2]]` -/
def P12654991856704208328.Spec : Prop :=
  ∀ n, (P12654991856704208328.a n : ℤ) = A033271 (n + 1)

theorem P12654991856704208328.correct : P12654991856704208328.Spec := by
  intro n
  simp only [A033271, Nat.add_sub_cancel]

end A033271

/-! ## A033271.P8074658370454112994

`∑[Δ[A101203(n)]%2]`
-/

namespace A033271.P8074658370454112994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P8074658370454112994

namespace A033271

/-- `∑[Δ[A101203(n)]%2]` -/
def P8074658370454112994.Spec : Prop :=
  ∀ n, P8074658370454112994.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P12993702121821646158

`∑[A270003(n+1)-2]`
-/

namespace A033271.P12993702121821646158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270003 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P12993702121821646158

namespace A033271

/-- `∑[A270003(n+1)-2]` -/
def P12993702121821646158.Spec : Prop :=
  ∀ n, P12993702121821646158.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P12609898065348907038

`∑[A063918(n+1)%2]`
-/

namespace A033271.P12609898065348907038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063918 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P12609898065348907038

namespace A033271

/-- `∑[A063918(n+1)%2]` -/
def P12609898065348907038.Spec : Prop :=
  ∀ n, P12609898065348907038.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P7346874676001474822

`∑[A074828(n+1)%2]`
-/

namespace A033271.P7346874676001474822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074828 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P7346874676001474822

namespace A033271

/-- `∑[A074828(n+1)%2]` -/
def P7346874676001474822.Spec : Prop :=
  ∀ n, P7346874676001474822.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P5932747608242578535

`∑[A143545(n+1)%2]`
-/

namespace A033271.P5932747608242578535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143545 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P5932747608242578535

namespace A033271

/-- `∑[A143545(n+1)%2]` -/
def P5932747608242578535.Spec : Prop :=
  ∀ n, P5932747608242578535.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P5045461745749217954

`∑[A191558(n+1)%2]`
-/

namespace A033271.P5045461745749217954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191558 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P5045461745749217954

namespace A033271

/-- `∑[A191558(n+1)%2]` -/
def P5045461745749217954.Spec : Prop :=
  ∀ n, P5045461745749217954.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P3263870541562473842

`∑[char[A014076(n+1)-1]]`
-/

namespace A033271.P3263870541562473842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P3263870541562473842

namespace A033271

/-- `∑[char[A014076(n+1)-1]]` -/
def P3263870541562473842.Spec : Prop :=
  ∀ n, (P3263870541562473842.a n : ℤ) = A033271 (n + 1)

end A033271

/-! ## A033271.P12916616162910702170

`∑[char[2*A047845(n+1)]]`
-/

namespace A033271.P12916616162910702170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047845 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P12916616162910702170

namespace A033271

/-- `∑[char[2*A047845(n+1)]]` -/
def P12916616162910702170.Spec : Prop :=
  ∀ n, (P12916616162910702170.a n : ℤ) = A033271 (n + 1)

end A033271

/-! ## A033271.P6798016899760985341

`A210469(∑[char[2*n]])+1`
-/

namespace A033271.P6798016899760985341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A033271.P6798016899760985341

namespace A033271

/-- `A210469(∑[char[2*n]])+1` -/
def P6798016899760985341.Spec : Prop :=
  ∀ n, P6798016899760985341.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P5556490649894239732

`∑[((n+1)%A151800(n))%2]`
-/

namespace A033271.P5556490649894239732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n + 1 : ℤ) (A151800 n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P5556490649894239732

namespace A033271

/-- `∑[((n+1)%A151800(n))%2]` -/
def P5556490649894239732.Spec : Prop :=
  ∀ n, P5556490649894239732.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P1916253322963755468

`∑[char[A007921(n+1)+1]]+1`
-/

namespace A033271.P1916253322963755468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A033271.P1916253322963755468

namespace A033271

/-- `∑[char[A007921(n+1)+1]]+1` -/
def P1916253322963755468.Spec : Prop :=
  ∀ n, (P1916253322963755468.a n : ℤ) = A033271 (n + 1)

end A033271

/-! ## A033271.P6623360131811549677

`∑[char[A103164(2*n+1)-1]]`
-/

namespace A033271.P6623360131811549677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (2 * n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P6623360131811549677

namespace A033271

/-- `∑[char[A103164(2*n+1)-1]]` -/
def P6623360131811549677.Spec : Prop :=
  ∀ n, (P6623360131811549677.a n : ℤ) = A033271 (n + 1)

end A033271

/-! ## A033271.P13259807478716415358

`∑[char[2*(A104275(n+1)-1)]]`
-/

namespace A033271.P13259807478716415358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104275 (n + 1) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P13259807478716415358

namespace A033271

/-- `∑[char[2*(A104275(n+1)-1)]]` -/
def P13259807478716415358.Spec : Prop :=
  ∀ n, (P13259807478716415358.a n : ℤ) = A033271 (n + 1)

end A033271

/-! ## A033271.P1306856662963694700

`∑[char[A191558(2*n+1)-1]]`
-/

namespace A033271.P1306856662963694700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (2 * n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P1306856662963694700

namespace A033271

/-- `∑[char[A191558(2*n+1)-1]]` -/
def P1306856662963694700.Spec : Prop :=
  ∀ n, (P1306856662963694700.a n : ℤ) = A033271 (n + 1)

end A033271

/-! ## A033271.P11339635170301371180

`∑[char[A282462(2*n+1)-1]]`
-/

namespace A033271.P11339635170301371180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 (2 * n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P11339635170301371180

namespace A033271

/-- `∑[char[A282462(2*n+1)-1]]` -/
def P11339635170301371180.Spec : Prop :=
  ∀ n, (P11339635170301371180.a n : ℤ) = A033271 (n + 1)

end A033271

/-! ## A033271.P2666123493962646431

`∑[gcd(n, 2-A010051(n+1))-1]`
-/

namespace A033271.P2666123493962646431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (2 - A010051 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P2666123493962646431

namespace A033271

/-- `∑[gcd(n, 2-A010051(n+1))-1]` -/
def P2666123493962646431.Spec : Prop :=
  ∀ n, P2666123493962646431.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P2784630073952949803

`∑[a(n%2)%A001222(n+1)]` with `a(0)=1, a(1)=0`
-/

namespace A033271.P2784630073952949803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Int.tmod (f1 (n % 2)) (A001222 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P2784630073952949803

namespace A033271

/-- `∑[a(n%2)%A001222(n+1)]` -/
def P2784630073952949803.Spec : Prop :=
  ∀ n, P2784630073952949803.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P17169313750356798198

`∑[(A020639(n+1)²%(n+3))%2]`
-/

namespace A033271.P17169313750356798198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A020639 (n + 1) ^ 2) (n + 3 : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P17169313750356798198

namespace A033271

/-- `∑[(A020639(n+1)²%(n+3))%2]` -/
def P17169313750356798198.Spec : Prop :=
  ∀ n, P17169313750356798198.a n = A033271 (n + 1)

end A033271

/-! ## A033271.P1014203341895869316

`∑[and(n+1, char[A018252(n+1)-1])]`
-/

namespace A033271.P1014203341895869316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033271.P1014203341895869316

namespace A033271

/-- `∑[and(n+1, char[A018252(n+1)-1])]` -/
def P1014203341895869316.Spec : Prop :=
  ∀ n, (P1014203341895869316.a n : ℤ) = A033271 (n + 1)

end A033271

/-!
# A033272: Number of odd nonprimes dividing n.

The programs for A033272, the canonical program `A033272.P13508540407970114624` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033272 has offset 1).

The definition of A033272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005087, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033272.P13508540407970114624

`A001227(n+1)-A005087(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033272

/-- `A001227(n+1)-A005087(n+1)` -/
def P13508540407970114624.Spec : Prop :=
  ∀ n, P13508540407970114624.a n = A033272 (n + 1)

theorem P13508540407970114624.correct : P13508540407970114624.Spec := by
  intro n
  simp only [A033272, Nat.add_sub_cancel]

end A033272

/-! ## A033272.P7466125042024443447

`A033273((n+1)/2^val(n+1, 2))`
-/

namespace A033272.P7466125042024443447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A033272.P7466125042024443447

namespace A033272

/-- `A033273((n+1)/2^val(n+1, 2))` -/
def P7466125042024443447.Spec : Prop :=
  ∀ n, P7466125042024443447.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P13294510899211300864

`A033273((n+1)/and(n+1, -(n+1)))`
-/

namespace A033272.P13294510899211300864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A033272.P13294510899211300864

namespace A033272

/-- `A033273((n+1)/and(n+1, -(n+1)))` -/
def P13294510899211300864.Spec : Prop :=
  ∀ n, P13294510899211300864.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P12565773511328908151

`A033273(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A033272.P12565773511328908151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A033272.P12565773511328908151

namespace A033272

/-- `A033273(2*(n+1)/(xor(n, n+1)+1))` -/
def P12565773511328908151.Spec : Prop :=
  ∀ n, P12565773511328908151.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P3957050223074621816

`A033273((n+1)/(n+1-and(n, n+1)))`
-/

namespace A033272.P3957050223074621816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

end

end A033272.P3957050223074621816

namespace A033272

/-- `A033273((n+1)/(n+1-and(n, n+1)))` -/
def P3957050223074621816.Spec : Prop :=
  ∀ n, P3957050223074621816.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P361857399467868722

`A033273(A000265(n+1))`
-/

namespace A033272.P361857399467868722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A000265 (n + 1)).toNat

end

end A033272.P361857399467868722

namespace A033272

/-- `A033273(A000265(n+1))` -/
def P361857399467868722.Spec : Prop :=
  ∀ n, P361857399467868722.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P10001401151863555968

`A033273(A153733(n)+1)`
-/

namespace A033272.P10001401151863555968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A153733 n + 1).toNat

end

end A033272.P10001401151863555968

namespace A033272

/-- `A033273(A153733(n)+1)` -/
def P10001401151863555968.Spec : Prop :=
  ∀ n, P10001401151863555968.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P11421743051366082782

`A033273((n+1)/A006519(n+1))`
-/

namespace A033272.P11421743051366082782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A033272.P11421743051366082782

namespace A033272

/-- `A033273((n+1)/A006519(n+1))` -/
def P11421743051366082782.Spec : Prop :=
  ∀ n, P11421743051366082782.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P11708290486290488946

`∑{d}[A000265(n+1), 1-A010051(#)]`
-/

namespace A033272.P11708290486290488946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (1 - A010051 d)

end

end A033272.P11708290486290488946

namespace A033272

/-- `∑{d}[A000265(n+1), 1-A010051(#)]` -/
def P11708290486290488946.Spec : Prop :=
  ∀ n, P11708290486290488946.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P14912638179728843762

`∑{d}[A000265(n+1), A191558(#)/#]`
-/

namespace A033272.P14912638179728843762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A191558 d : ℚ) / (d : ℚ)

end

end A033272.P14912638179728843762

namespace A033272

/-- `∑{d}[A000265(n+1), A191558(#)/#]` -/
def P14912638179728843762.Spec : Prop :=
  ∀ n, P14912638179728843762.a n = (A033272 (n + 1) : ℚ)

end A033272

/-! ## A033272.P17424983907829411190

`A001227(n+1)-log2(A068068(n+1))`
-/

namespace A033272.P17424983907829411190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℝ) - Real.logb 2 (A068068 (n + 1) : ℝ)

end

end A033272.P17424983907829411190

namespace A033272

/-- `A001227(n+1)-log2(A068068(n+1))` -/
def P17424983907829411190.Spec : Prop :=
  ∀ n, P17424983907829411190.a n = (A033272 (n + 1) : ℝ)

end A033272

/-! ## A033272.P1547379831678414165

`A033273(2*(n+1))-A032741(n+1)`
-/

namespace A033272.P1547379831678414165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (2 * (n + 1)) - A032741 (n + 1)

end

end A033272.P1547379831678414165

namespace A033272

/-- `A033273(2*(n+1))-A032741(n+1)` -/
def P1547379831678414165.Spec : Prop :=
  ∀ n, P1547379831678414165.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P6290341781566334204

`A001227(n+1)+1-A001221(2*(n+1))`
-/

namespace A033272.P6290341781566334204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (1 - A001221 (2 * (n + 1)))

end

end A033272.P6290341781566334204

namespace A033272

/-- `A001227(n+1)+1-A001221(2*(n+1))` -/
def P6290341781566334204.Spec : Prop :=
  ∀ n, P6290341781566334204.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P14684796304425405399

`∑{d}[n+1, #%2]-A001221(A336158(n+1))`
-/

namespace A033272.P14684796304425405399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) - A001221 (A336158 (n + 1)).toNat

end

end A033272.P14684796304425405399

namespace A033272

/-- `∑{d}[n+1, #%2]-A001221(A336158(n+1))` -/
def P14684796304425405399.Spec : Prop :=
  ∀ n, P14684796304425405399.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P10707267072782166130

`A001227(n+1)-A001221((n+1)/and(n+1, -(n+1)))`
-/

namespace A033272.P10707267072782166130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A033272.P10707267072782166130

namespace A033272

/-- `A001227(n+1)-A001221((n+1)/and(n+1, -(n+1)))` -/
def P10707267072782166130.Spec : Prop :=
  ∀ n, P10707267072782166130.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P14157340439623060040

`A001227(n+1)-A001221(A000265(n+1))`
-/

namespace A033272.P14157340439623060040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A001221 (A000265 (n + 1)).toNat

end

end A033272.P14157340439623060040

namespace A033272

/-- `A001227(n+1)-A001221(A000265(n+1))` -/
def P14157340439623060040.Spec : Prop :=
  ∀ n, P14157340439623060040.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P4972818080233352860

`A000005(A000265(n+1))-A005087(n+1)`
-/

namespace A033272.P4972818080233352860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat - A005087 (n + 1)

end

end A033272.P4972818080233352860

namespace A033272

/-- `A000005(A000265(n+1))-A005087(n+1)` -/
def P4972818080233352860.Spec : Prop :=
  ∀ n, P4972818080233352860.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P16676674628260400847

`A001227(n+1)-A001221(A064989(n+1))`
-/

namespace A033272.P16676674628260400847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A001221 (A064989 (n + 1)).toNat

end

end A033272.P16676674628260400847

namespace A033272

/-- `A001227(n+1)-A001221(A064989(n+1))` -/
def P16676674628260400847.Spec : Prop :=
  ∀ n, P16676674628260400847.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P11883200963838041229

`A001227(n+1)-A001221(A336158(n+1))`
-/

namespace A033272.P11883200963838041229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A001221 (A336158 (n + 1)).toNat

end

end A033272.P11883200963838041229

namespace A033272

/-- `A001227(n+1)-A001221(A336158(n+1))` -/
def P11883200963838041229.Spec : Prop :=
  ∀ n, P11883200963838041229.a n = A033272 (n + 1)

end A033272

/-! ## A033272.P16341669264223770551

`A000005(A336158(n+1))-A005087(n+1)`
-/

namespace A033272.P16341669264223770551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat - A005087 (n + 1)

end

end A033272.P16341669264223770551

namespace A033272

/-- `A000005(A336158(n+1))-A005087(n+1)` -/
def P16341669264223770551.Spec : Prop :=
  ∀ n, P16341669264223770551.a n = A033272 (n + 1)

end A033272

/-!
# A033273: Number of nonprime divisors of n.

The programs for A033273, the canonical program `A033273.P18420659424697249895` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033273 has offset 1).

The definition of A033273 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033273.P18420659424697249895

`A000005(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033273

/-- `A000005(n+1)-A001221(n+1)` -/
def P18420659424697249895.Spec : Prop :=
  ∀ n, P18420659424697249895.a n = A033273 (n + 1)

theorem P18420659424697249895.correct : P18420659424697249895.Spec := by
  intro n
  simp only [A033273, Nat.add_sub_cancel]

end A033273

/-! ## A033273.P5185475563116764918

`A055212(n+1)+1`
-/

namespace A033273.P5185475563116764918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) + 1

end

end A033273.P5185475563116764918

namespace A033273

/-- `A055212(n+1)+1` -/
def P5185475563116764918.Spec : Prop :=
  ∀ n, P5185475563116764918.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P4609851943783148230

`∑{d}[n+1, A005171(#)]`
-/

namespace A033273.P4609851943783148230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005171 d

end

end A033273.P4609851943783148230

namespace A033273

/-- `∑{d}[n+1, A005171(#)]` -/
def P4609851943783148230.Spec : Prop :=
  ∀ n, P4609851943783148230.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P6470726386158754208

`A325765(n)-A297155(n+1)`
-/

namespace A033273.P6470726386158754208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n - A297155 (n + 1)

end

end A033273.P6470726386158754208

namespace A033273

/-- `A325765(n)-A297155(n+1)` -/
def P6470726386158754208.Spec : Prop :=
  ∀ n, P6470726386158754208.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P17612391332572162842

`Δ[A006218(n)]-A001221(n+1)`
-/

namespace A033273.P17612391332572162842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001221 (n + 1)

end

end A033273.P17612391332572162842

namespace A033273

/-- `Δ[A006218(n)]-A001221(n+1)` -/
def P17612391332572162842.Spec : Prop :=
  ∀ n, P17612391332572162842.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P12613749865045722391

`Δ[A054519(n)]-A001221(n+1)`
-/

namespace A033273.P12613749865045722391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001221 (n + 1)

end

end A033273.P12613749865045722391

namespace A033273

/-- `Δ[A054519(n)]-A001221(n+1)` -/
def P12613749865045722391.Spec : Prop :=
  ∀ n, P12613749865045722391.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P7485656487361065492

`A135767(n+1)+A001222(n+1)`
-/

namespace A033273.P7485656487361065492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135767 (n + 1) + A001222 (n + 1)

end

end A033273.P7485656487361065492

namespace A033273

/-- `A135767(n+1)+A001222(n+1)` -/
def P7485656487361065492.Spec : Prop :=
  ∀ n, P7485656487361065492.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P3174215114347868391

`A328958(n+1)+A307409(n+1)`
-/

namespace A033273.P3174215114347868391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (n + 1) + A307409 (n + 1)

end

end A033273.P3174215114347868391

namespace A033273

/-- `A328958(n+1)+A307409(n+1)` -/
def P3174215114347868391.Spec : Prop :=
  ∀ n, P3174215114347868391.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P14818463334961602156

`A324192(n+1)+A324191(n+1)`
-/

namespace A033273.P14818463334961602156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324192 (n + 1) + A324191 (n + 1)

end

end A033273.P14818463334961602156

namespace A033273

/-- `A324192(n+1)+A324191(n+1)` -/
def P14818463334961602156.Spec : Prop :=
  ∀ n, P14818463334961602156.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P6069687534367998813

`A001055(n+1)-A167688(n+1)`
-/

namespace A033273.P6069687534367998813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A167688 (n + 1)

end

end A033273.P6069687534367998813

namespace A033273

/-- `A001055(n+1)-A167688(n+1)` -/
def P6069687534367998813.Spec : Prop :=
  ∀ n, P6069687534367998813.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P1628228986049761434

`A062298(n+1)-A279436(n+1)`
-/

namespace A033273.P1628228986049761434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A279436 (n + 1)

end

end A033273.P1628228986049761434

namespace A033273

/-- `A062298(n+1)-A279436(n+1)` -/
def P1628228986049761434.Spec : Prop :=
  ∀ n, P1628228986049761434.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P897261932928626653

`A351519(n+1)-A000720(n+1)`
-/

namespace A033273.P897261932928626653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351519 (n + 1) - A000720 (n + 1)

end

end A033273.P897261932928626653

namespace A033273

/-- `A351519(n+1)-A000720(n+1)` -/
def P897261932928626653.Spec : Prop :=
  ∀ n, P897261932928626653.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P4406557981595954754

`A349215(n+1)-A008472(n+1)`
-/

namespace A033273.P4406557981595954754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349215 (n + 1) - A008472 (n + 1)

end

end A033273.P4406557981595954754

namespace A033273

/-- `A349215(n+1)-A008472(n+1)` -/
def P4406557981595954754.Spec : Prop :=
  ∀ n, P4406557981595954754.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P11282993008110708636

`A380449(n+1)-A000203(n+1)`
-/

namespace A033273.P11282993008110708636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380449 (n + 1) - A000203 (n + 1)

end

end A033273.P11282993008110708636

namespace A033273

/-- `A380449(n+1)-A000203(n+1)` -/
def P11282993008110708636.Spec : Prop :=
  ∀ n, P11282993008110708636.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P13547324193709766328

`A348219(n+1)-A069359(n+1)`
-/

namespace A033273.P13547324193709766328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348219 (n + 1) - A069359 (n + 1)

end

end A033273.P13547324193709766328

namespace A033273

/-- `A348219(n+1)-A069359(n+1)` -/
def P13547324193709766328.Spec : Prop :=
  ∀ n, P13547324193709766328.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P15480364614613393064

`A395301(n+1)-A345266(n+1)`
-/

namespace A033273.P15480364614613393064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395301 (n + 1) - A345266 (n + 1)

end

end A033273.P15480364614613393064

namespace A033273

/-- `A395301(n+1)-A345266(n+1)` -/
def P15480364614613393064.Spec : Prop :=
  ∀ n, P15480364614613393064.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P11579824206003161418

`Δ[A006218(n)]-∑{p}[n+1, A001222(#)]`
-/

namespace A033273.P11579824206003161418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ p ∈ Nat.primeFactors (f2 n), A001222 p

end

end A033273.P11579824206003161418

namespace A033273

/-- `Δ[A006218(n)]-∑{p}[n+1, A001222(#)]` -/
def P11579824206003161418.Spec : Prop :=
  ∀ n, P11579824206003161418.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P11078118471149274684

`Δ[A006218(n)]-A001222(∏{p}[n+1, #])`
-/

namespace A033273.P11078118471149274684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A033273.P11078118471149274684

namespace A033273

/-- `Δ[A006218(n)]-A001222(∏{p}[n+1, #])` -/
def P11078118471149274684.Spec : Prop :=
  ∀ n, P11078118471149274684.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P8614349746760316701

`A066247(n+1)+A321516(n+1)+1`
-/

namespace A033273.P8614349746760316701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) + (A321516 (n + 1) + 1)

end

end A033273.P8614349746760316701

namespace A033273

/-- `A066247(n+1)+A321516(n+1)+1` -/
def P8614349746760316701.Spec : Prop :=
  ∀ n, P8614349746760316701.a n = A033273 (n + 1)

end A033273

/-! ## A033273.P5886143551709104638

`A000005(n+1)+1-A083399(n+1)`
-/

namespace A033273.P5886143551709104638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A083399 (n + 1))

end

end A033273.P5886143551709104638

namespace A033273

/-- `A000005(n+1)+1-A083399(n+1)` -/
def P5886143551709104638.Spec : Prop :=
  ∀ n, P5886143551709104638.a n = A033273 (n + 1)

end A033273

/-!
# A033274: Primes that do not contain any other prime as a proper substring.

The programs for A033274, there is no canonical definition to state claims against.
-/

/-! ## A033274.P8819083471003118215

`record[A179335(n+1)]`
-/

namespace A033274.P8819083471003118215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033274.P8819083471003118215

/-! ## A033274.P13005665015098902763

`A000040(eq[1, A039996(n+1)]+1)`
-/

namespace A033274.P13005665015098902763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A033274.P13005665015098902763

/-! ## A033274.P2219586432734679230

`A000040(record[(n+1)/A039996(n+1)])`
-/

namespace A033274.P2219586432734679230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A039996 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A033274.P2219586432734679230

/-! ## A033274.P8068093980663946016

`p?[A000040(n+1)*A039996(n+1)]`
-/

namespace A033274.P8068093980663946016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033274.P8068093980663946016

/-! ## A033274.P12026045039974313387

`record[A000040(gcd(n+1, A079066(n+1)))]`
-/

namespace A033274.P12026045039974313387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.gcd (n + 1 : ℤ) (A079066 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033274.P12026045039974313387

/-! ## A033274.P4100322325354520630

`p?[gcd(A079066(n+1)², A000040(n+1))]`
-/

namespace A033274.P4100322325354520630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079066 (n + 1) ^ 2) (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A033274.P4100322325354520630

/-! ## A033274.P5591858762502835598

`A000040(eq[A000040(n+1), A179335(n+1)]+1)`
-/

namespace A033274.P5591858762502835598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A033274.P5591858762502835598

/-! ## A033274.P16875330642971064206

`p?[A205667(n+1)]`
-/

namespace A033274.P16875330642971064206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033274.P16875330642971064206

/-! ## A033274.P7073175096194769159

`filter[A205667(n+1), A010051(#)]`
-/

namespace A033274.P7073175096194769159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A033274.P7073175096194769159

/-! ## A033274.P6677821595811660932

`∩[A000040(n+1), A205667(n+1)]`
-/

namespace A033274.P6677821595811660932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P6677821595811660932

/-! ## A033274.P12556113299458692013

`∩[A008578(n+1), A205667(n+1)]`
-/

namespace A033274.P12556113299458692013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P12556113299458692013

/-! ## A033274.P3100360126919441137

`∩[A046022(n+1), A205667(n+1)]`
-/

namespace A033274.P3100360126919441137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P3100360126919441137

/-! ## A033274.P13943477018519442570

`∩[A058853(n+1), A205667(n+1)]`
-/

namespace A033274.P13943477018519442570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P13943477018519442570

/-! ## A033274.P3481660149821044424

`∩[A066050(n+1), A205667(n+1)]`
-/

namespace A033274.P3481660149821044424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P3481660149821044424

/-! ## A033274.P5612079110080977495

`∩[A067126(n+1), A205667(n+1)]`
-/

namespace A033274.P5612079110080977495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P5612079110080977495

/-! ## A033274.P12548088643091121676

`∩[A069090(n+1), A205667(n+1)]`
-/

namespace A033274.P12548088643091121676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P12548088643091121676

/-! ## A033274.P17945870795026232901

`∩[A076805(n+1), A205667(n+1)]`
-/

namespace A033274.P17945870795026232901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P17945870795026232901

/-! ## A033274.P902079419374261060

`∩[A116974(n+1), A205667(n+1)]`
-/

namespace A033274.P902079419374261060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P902079419374261060

/-! ## A033274.P1623412401973759375

`∩[A141409(n+1), A205667(n+1)]`
-/

namespace A033274.P1623412401973759375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P1623412401973759375

/-! ## A033274.P14147595224820791930

`∩[A158611(n+1), A205667(n+1)]`
-/

namespace A033274.P14147595224820791930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033274.P14147595224820791930

/-!
# A033275: Number of diagonal dissections of an n-gon into 3 regions.

The programs for A033275, the canonical program `A033275.P7566039285234230669` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033275 has offset 4).

The definition of A033275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033275.P7566039285234230669

`∑[∑[n*(n+3)]+n]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033275

/-- `∑[∑[n*(n+3)]+n]` -/
def P7566039285234230669.Spec : Prop :=
  ∀ n, (P7566039285234230669.a n : ℤ) = A033275 (n + 4)

theorem P7566039285234230669.correct : P7566039285234230669.Spec := by
  intro n
  simp only [A033275, Nat.add_sub_cancel]

end A033275

/-! ## A033275.P1672964470311316992

`floor(∑[a(n-1)+1]²/3)` with `a(0)=1, a(1)=3`
-/

namespace A033275.P1672964470311316992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 3⌋

end

end A033275.P1672964470311316992

namespace A033275

/-- `floor(∑[a(n-1)+1]²/3)` -/
def P1672964470311316992.Spec : Prop :=
  ∀ n, P1672964470311316992.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P11927065333238806309

`(4/n+1)*(a(n-1)+n)` with `a(0)=0`
-/

namespace A033275.P11927065333238806309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 / (n : ℚ) + 1) * (a (n - 1) + (n : ℚ))

end

end A033275.P11927065333238806309

namespace A033275

/-- `(4/n+1)*(a(n-1)+n)` -/
def P11927065333238806309.Spec : Prop :=
  ∀ n, P11927065333238806309.a n = (A033275 (n + 4) : ℚ)

end A033275

/-! ## A033275.P3994470808814290402

`floor(∑[(n+1)²+a(n-1)+n])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A033275.P3994470808814290402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1) ^ 2 + (f1 (n - 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033275.P3994470808814290402

namespace A033275

/-- `floor(∑[(n+1)²+a(n-1)+n])` -/
def P3994470808814290402.Spec : Prop :=
  ∀ n, (P3994470808814290402.a n : ℤ) = A033275 (n + 4)

end A033275

/-! ## A033275.P10473277953590234205

`∑[∑[lcm(n+1, n+2)]]-∑[n+2]`
-/

namespace A033275.P10473277953590234205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A033275.P10473277953590234205

namespace A033275

/-- `∑[∑[lcm(n+1, n+2)]]-∑[n+2]` -/
def P10473277953590234205.Spec : Prop :=
  ∀ n, P10473277953590234205.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P13766733366061896224

`∑[∑[∑[a(n-1)+2]]]-(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A033275.P13766733366061896224
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A033275.P13766733366061896224

namespace A033275

/-- `∑[∑[∑[a(n-1)+2]]]-(n+1)` -/
def P13766733366061896224.Spec : Prop :=
  ∀ n, P13766733366061896224.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P14321292126826738024

`∑[n]+2*A005582(n)`
-/

namespace A033275.P14321292126826738024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A005582 n

end

end A033275.P14321292126826738024

namespace A033275

/-- `∑[n]+2*A005582(n)` -/
def P14321292126826738024.Spec : Prop :=
  ∀ n, P14321292126826738024.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P1924128671634538075

`(n+1)/2*A005586(n)`
-/

namespace A033275.P1924128671634538075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A005586 n : ℚ)

end

end A033275.P1924128671634538075

namespace A033275

/-- `(n+1)/2*A005586(n)` -/
def P1924128671634538075.Spec : Prop :=
  ∀ n, P1924128671634538075.a n = (A033275 (n + 4) : ℚ)

end A033275

/-! ## A033275.P4124664154350845374

`A077414(n+1)+∑[∑[n²]]`
-/

namespace A033275.P4124664154350845374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033275.P4124664154350845374

namespace A033275

/-- `A077414(n+1)+∑[∑[n²]]` -/
def P4124664154350845374.Spec : Prop :=
  ∀ n, P4124664154350845374.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P11219828726329670796

`∑[n]+∑[∑[A005563(n)+n]]`
-/

namespace A033275.P11219828726329670796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A033275.P11219828726329670796

namespace A033275

/-- `∑[n]+∑[∑[A005563(n)+n]]` -/
def P11219828726329670796.Spec : Prop :=
  ∀ n, P11219828726329670796.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P2665548967197511730

`∑[n+1]²-A329523(n+1)`
-/

namespace A033275.P2665548967197511730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A329523 (n + 1)

end

end A033275.P2665548967197511730

namespace A033275

/-- `∑[n+1]²-A329523(n+1)` -/
def P2665548967197511730.Spec : Prop :=
  ∀ n, P2665548967197511730.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P1747911809297095426

`((A000217(n+2)-2)²-1)/3`
-/

namespace A033275.P1747911809297095426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000217 (n + 2) - 2) ^ 2 - 1 : ℚ) / 3

end

end A033275.P1747911809297095426

namespace A033275

/-- `((A000217(n+2)-2)²-1)/3` -/
def P1747911809297095426.Spec : Prop :=
  ∀ n, P1747911809297095426.a n = (A033275 (n + 4) : ℚ)

end A033275

/-! ## A033275.P14399334086915316802

`A000217(n+4)/(n+2)*C(n+2, 3)`
-/

namespace A033275.P14399334086915316802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 4) : ℚ) / (n + 2 : ℚ) * (Nat.choose (n + 2) 3 : ℚ)

end

end A033275.P14399334086915316802

namespace A033275

/-- `A000217(n+4)/(n+2)*C(n+2, 3)` -/
def P14399334086915316802.Spec : Prop :=
  ∀ n, P14399334086915316802.a n = (A033275 (n + 4) : ℚ)

end A033275

/-! ## A033275.P4455638024737856573

`A134481(n)+A002415(n)`
-/

namespace A033275.P4455638024737856573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + A002415 n

end

end A033275.P4455638024737856573

namespace A033275

/-- `A134481(n)+A002415(n)` -/
def P4455638024737856573.Spec : Prop :=
  ∀ n, P4455638024737856573.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P13434071748439124060

`A210440(n)+A006007(n)`
-/

namespace A033275.P13434071748439124060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + A006007 n

end

end A033275.P13434071748439124060

namespace A033275

/-- `A210440(n)+A006007(n)` -/
def P13434071748439124060.Spec : Prop :=
  ∀ n, P13434071748439124060.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P2373754958750771842

`A005701(n)-A062748(n)`
-/

namespace A033275.P2373754958750771842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A062748 n

end

end A033275.P2373754958750771842

namespace A033275

/-- `A005701(n)-A062748(n)` -/
def P2373754958750771842.Spec : Prop :=
  ∀ n, P2373754958750771842.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P14784097274918991076

`A084990(n)+A014629(n+1)`
-/

namespace A033275.P14784097274918991076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n + A014629 (n + 1)

end

end A033275.P14784097274918991076

namespace A033275

/-- `A084990(n)+A014629(n+1)` -/
def P14784097274918991076.Spec : Prop :=
  ∀ n, P14784097274918991076.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P17393817766055575903

`A145126(n)+A014309(n+1)`
-/

namespace A033275.P17393817766055575903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n + A014309 (n + 1)

end

end A033275.P17393817766055575903

namespace A033275

/-- `A145126(n)+A014309(n+1)` -/
def P17393817766055575903.Spec : Prop :=
  ∀ n, P17393817766055575903.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P6885448673346795343

`A166814(n+1)-A000292(n)`
-/

namespace A033275.P6885448673346795343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166814 (n + 1) - A000292 n

end

end A033275.P6885448673346795343

namespace A033275

/-- `A166814(n+1)-A000292(n)` -/
def P6885448673346795343.Spec : Prop :=
  ∀ n, P6885448673346795343.a n = A033275 (n + 4)

end A033275

/-! ## A033275.P2551008308062847861

`A090453(n)-A162260(n+1)`
-/

namespace A033275.P2551008308062847861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090453 n - A162260 (n + 1)

end

end A033275.P2551008308062847861

namespace A033275

/-- `A090453(n)-A162260(n+1)` -/
def P2551008308062847861.Spec : Prop :=
  ∀ n, P2551008308062847861.a n = A033275 (n + 4)

end A033275

/-!
# A033276: Number of diagonal dissections of an n-gon into 4 regions.

The programs for A033276, the canonical program `A033276.P10884870667093346912` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033276 has offset 5).

The definition of A033276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033276.P7031271142330607954

`∑[(n+1)/3]*A005587(n)`
-/

namespace A033276.P7031271142330607954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A005587 n : ℚ)

end

end A033276.P7031271142330607954

namespace A033276

/-- `∑[(n+1)/3]*A005587(n)` -/
def P7031271142330607954.Spec : Prop :=
  ∀ n, P7031271142330607954.a n = (A033276 (n + 5) : ℚ)

end A033276

/-! ## A033276.P13501548500806899897

`A055999(n)/18*A104473(n)`
-/

namespace A033276.P13501548500806899897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055999 n : ℚ) / 18 * (A104473 n : ℚ)

end

end A033276.P13501548500806899897

namespace A033276

/-- `A055999(n)/18*A104473(n)` -/
def P13501548500806899897.Spec : Prop :=
  ∀ n, P13501548500806899897.a n = (A033276 (n + 5) : ℚ)

end A033276

/-! ## A033276.P10884870667093346912

`∑[A006414(n+1)-A154560(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033276

/-- `∑[A006414(n+1)-A154560(n+1)]` -/
def P10884870667093346912.Spec : Prop :=
  ∀ n, P10884870667093346912.a n = A033276 (n + 5)

theorem P10884870667093346912.correct : P10884870667093346912.Spec := by
  intro n
  simp only [A033276, Nat.add_sub_cancel]

end A033276

/-! ## A033276.P564124227436155744

`A005586(n+1)/(n+1)*A005582(n)`
-/

namespace A033276.P564124227436155744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005586 (n + 1) : ℚ) / (n + 1 : ℚ) * (A005582 n : ℚ)

end

end A033276.P564124227436155744

namespace A033276

/-- `A005586(n+1)/(n+1)*A005582(n)` -/
def P564124227436155744.Spec : Prop :=
  ∀ n, P564124227436155744.a n = (A033276 (n + 5) : ℚ)

end A033276

/-! ## A033276.P1792995953394643019

`A000292(n+5)/4*A000292(n)`
-/

namespace A033276.P1792995953394643019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 5) : ℚ) / 4 * (A000292 n : ℚ)

end

end A033276.P1792995953394643019

namespace A033276

/-- `A000292(n+5)/4*A000292(n)` -/
def P1792995953394643019.Spec : Prop :=
  ∀ n, P1792995953394643019.a n = (A033276 (n + 5) : ℚ)

end A033276

/-! ## A033276.P8472088671915160143

`A014125(A055999(n))-∑[A014125(n)]`
-/

namespace A033276.P8472088671915160143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 (A055999 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033276.P8472088671915160143

namespace A033276

/-- `A014125(A055999(n))-∑[A014125(n)]` -/
def P8472088671915160143.Spec : Prop :=
  ∀ n, P8472088671915160143.a n = A033276 (n + 5)

end A033276

/-! ## A033276.P3048188683424905049

`A086810(A052905(n)+9)`
-/

namespace A033276.P3048188683424905049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A052905 n + 9).toNat

end

end A033276.P3048188683424905049

namespace A033276

/-- `A086810(A052905(n)+9)` -/
def P3048188683424905049.Spec : Prop :=
  ∀ n, P3048188683424905049.a n = A033276 (n + 5)

end A033276

/-! ## A033276.P14376967136251108829

`A086810(A167614(n+2)+1)`
-/

namespace A033276.P14376967136251108829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A167614 (n + 2) + 1).toNat

end

end A033276.P14376967136251108829

namespace A033276

/-- `A086810(A167614(n+2)+1)` -/
def P14376967136251108829.Spec : Prop :=
  ∀ n, P14376967136251108829.a n = A033276 (n + 5)

end A033276

/-! ## A033276.P17191478213095115363

`A086810(A166136(n+2)-2)`
-/

namespace A033276.P17191478213095115363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A166136 (n + 2) - 2).toNat

end

end A033276.P17191478213095115363

namespace A033276

/-- `A086810(A166136(n+2)-2)` -/
def P17191478213095115363.Spec : Prop :=
  ∀ n, P17191478213095115363.a n = A033276 (n + 5)

end A033276

/-! ## A033276.P6940621385164876437

`A086810(A166136(n+1)+1+n)`
-/

namespace A033276.P6940621385164876437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A033276.P6940621385164876437

namespace A033276

/-- `A086810(A166136(n+1)+1+n)` -/
def P6940621385164876437.Spec : Prop :=
  ∀ n, P6940621385164876437.a n = A033276 (n + 5)

end A033276

/-! ## A033276.P1566008809482808429

`A133336(A052905(n+1))`
-/

namespace A033276.P1566008809482808429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 (A052905 (n + 1)).toNat

end

end A033276.P1566008809482808429

namespace A033276

/-- `A133336(A052905(n+1))` -/
def P1566008809482808429.Spec : Prop :=
  ∀ n, P1566008809482808429.a n = A033276 (n + 5)

end A033276

/-! ## A033276.P6579223407490140624

`A133336(A000096(n+2)+n)`
-/

namespace A033276.P6579223407490140624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 (A000096 (n + 2) + (n : ℤ)).toNat

end

end A033276.P6579223407490140624

namespace A033276

/-- `A133336(A000096(n+2)+n)` -/
def P6579223407490140624.Spec : Prop :=
  ∀ n, P6579223407490140624.a n = A033276 (n + 5)

end A033276

/-!
# A033277: Number of diagonal dissections of an n-gon into 5 regions.

The programs for A033277, the canonical program `A033277.P1526956955922487427` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033277 has offset 6).

The definition of A033277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033277.P1526956955922487427

`A086810(A155212(n)+13)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A033277

/-- `A086810(A155212(n)+13)` -/
def P1526956955922487427.Spec : Prop :=
  ∀ n, P1526956955922487427.a n = A033277 (n + 6)

theorem P1526956955922487427.correct : P1526956955922487427.Spec := by
  intro n
  simp only [A033277, Nat.add_sub_cancel]

end A033277

/-! ## A033277.P18126250030918553555

`A086810(A056000(n)+15)`
-/

namespace A033277.P18126250030918553555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A056000 n + 15).toNat

end

end A033277.P18126250030918553555

namespace A033277

/-- `A086810(A056000(n)+15)` -/
def P18126250030918553555.Spec : Prop :=
  ∀ n, P18126250030918553555.a n = A033277 (n + 6)

end A033277

/-! ## A033277.P17327940747970810470

`A086810(A167614(n+3)+2)`
-/

namespace A033277.P17327940747970810470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A167614 (n + 3) + 2).toNat

end

end A033277.P17327940747970810470

namespace A033277

/-- `A086810(A167614(n+3)+2)` -/
def P17327940747970810470.Spec : Prop :=
  ∀ n, P17327940747970810470.a n = A033277 (n + 6)

end A033277

/-! ## A033277.P16631167006552837672

`A079508(A027379(n+6))`
-/

namespace A033277.P16631167006552837672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079508 (A027379 (n + 6)).toNat

end

end A033277.P16631167006552837672

namespace A033277

/-- `A079508(A027379(n+6))` -/
def P16631167006552837672.Spec : Prop :=
  ∀ n, P16631167006552837672.a n = A033277 (n + 6)

end A033277

/-! ## A033277.P16661434372593739479

`A079508(A055998(n+6))`
-/

namespace A033277.P16661434372593739479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079508 (A055998 (n + 6)).toNat

end

end A033277.P16661434372593739479

namespace A033277

/-- `A079508(A055998(n+6))` -/
def P16661434372593739479.Spec : Prop :=
  ∀ n, P16661434372593739479.a n = A033277 (n + 6)

end A033277

/-! ## A033277.P9090190587481004503

`A079508(A000124(n+8)-4)`
-/

namespace A033277.P9090190587481004503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079508 (A000124 (n + 8) - 4).toNat

end

end A033277.P9090190587481004503

namespace A033277

/-- `A079508(A000124(n+8)-4)` -/
def P9090190587481004503.Spec : Prop :=
  ∀ n, P9090190587481004503.a n = A033277 (n + 6)

end A033277

/-!
# A033278: Number of diagonal dissections of an n-gon into 6 regions.

The programs for A033278, the canonical program `A033278.P7441303834248095580` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033278 has offset 7).

The definition of A033278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033278.P7441303834248095580

`A086810(A167614(n+4)+3)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A033278

/-- `A086810(A167614(n+4)+3)` -/
def P7441303834248095580.Spec : Prop :=
  ∀ n, P7441303834248095580.a n = A033278 (n + 7)

theorem P7441303834248095580.correct : P7441303834248095580.Spec := by
  intro n
  simp only [A033278, Nat.add_sub_cancel]

end A033278

/-! ## A033278.P11214519887177163567

`A086810(A000096(n+4)+7)`
-/

namespace A033278.P11214519887177163567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A000096 (n + 4) + 7).toNat

end

end A033278.P11214519887177163567

namespace A033278

/-- `A086810(A000096(n+4)+7)` -/
def P11214519887177163567.Spec : Prop :=
  ∀ n, P11214519887177163567.a n = A033278 (n + 7)

end A033278

/-! ## A033278.P11515815283758416286

`A086810(A000217(n+5)+6)`
-/

namespace A033278.P11515815283758416286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A000217 (n + 5) + 6).toNat

end

end A033278.P11515815283758416286

namespace A033278

/-- `A086810(A000217(n+5)+6)` -/
def P11515815283758416286.Spec : Prop :=
  ∀ n, P11515815283758416286.a n = A033278 (n + 7)

end A033278

/-! ## A033278.P13954044483095696072

`A086810(A046691(n+3)+10)`
-/

namespace A033278.P13954044483095696072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A046691 (n + 3) + 10).toNat

end

end A033278.P13954044483095696072

namespace A033278

/-- `A086810(A046691(n+3)+10)` -/
def P13954044483095696072.Spec : Prop :=
  ∀ n, P13954044483095696072.a n = A033278 (n + 7)

end A033278

/-! ## A033278.P11939353494495462381

`A086810(A133263(A020710(n))+4)`
-/

namespace A033278.P11939353494495462381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A133263 (A020710 n).toNat + 4).toNat

end

end A033278.P11939353494495462381

namespace A033278

/-- `A086810(A133263(A020710(n))+4)` -/
def P11939353494495462381.Spec : Prop :=
  ∀ n, P11939353494495462381.a n = A033278 (n + 7)

end A033278

/-! ## A033278.P10683752840296195471

`A086810(A002620(n+2)+A002620(n+9))`
-/

namespace A033278.P10683752840296195471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A033278.P10683752840296195471

namespace A033278

/-- `A086810(A002620(n+2)+A002620(n+9))` -/
def P10683752840296195471.Spec : Prop :=
  ∀ n, P10683752840296195471.a n = A033278 (n + 7)

end A033278

/-! ## A033278.P227645552894378199

`A079508(A023545(n+7)-A023545(n+6))`
-/

namespace A033278.P227645552894378199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079508 (A023545 (n + 7) - A023545 (n + 6)).toNat

end

end A033278.P227645552894378199

namespace A033278

/-- `A079508(A023545(n+7)-A023545(n+6))` -/
def P227645552894378199.Spec : Prop :=
  ∀ n, P227645552894378199.a n = A033278 (n + 7)

end A033278

/-!
# A033279: Number of diagonal dissections of an n-gon into 7 regions.

The programs for A033279, the canonical program `A033279.P7650083318119210662` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033279 has offset 8).

The definition of A033279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033279.P7650083318119210662

`A086810(A166136(n+5)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A033279

/-- `A086810(A166136(n+5)+1)` -/
def P7650083318119210662.Spec : Prop :=
  ∀ n, P7650083318119210662.a n = A033279 (n + 8)

theorem P7650083318119210662.correct : P7650083318119210662.Spec := by
  intro n
  simp only [A033279, Nat.add_sub_cancel]

end A033279

/-! ## A033279.P17794832645791383450

`A086810(A167499(n+5)+2)`
-/

namespace A033279.P17794832645791383450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A167499 (n + 5) + 2).toNat

end

end A033279.P17794832645791383450

namespace A033279

/-- `A086810(A167499(n+5)+2)` -/
def P17794832645791383450.Spec : Prop :=
  ∀ n, P17794832645791383450.a n = A033279 (n + 8)

end A033279

/-! ## A033279.P8733209561946993357

`A086810(A000124(n+6)+6)`
-/

namespace A033279.P8733209561946993357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A000124 (n + 6) + 6).toNat

end

end A033279.P8733209561946993357

namespace A033279

/-- `A086810(A000124(n+6)+6)` -/
def P8733209561946993357.Spec : Prop :=
  ∀ n, P8733209561946993357.a n = A033279 (n + 8)

end A033279

/-! ## A033279.P14113241483644443506

`A086810(A000096(n+5)+8)`
-/

namespace A033279.P14113241483644443506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A000096 (n + 5) + 8).toNat

end

end A033279.P14113241483644443506

namespace A033279

/-- `A086810(A000096(n+5)+8)` -/
def P14113241483644443506.Spec : Prop :=
  ∀ n, P14113241483644443506.a n = A033279 (n + 8)

end A033279

/-! ## A033279.P3968302562820244689

`A086810(A000217(n+6)+7)`
-/

namespace A033279.P3968302562820244689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A000217 (n + 6) + 7).toNat

end

end A033279.P3968302562820244689

namespace A033279

/-- `A086810(A000217(n+6)+7)` -/
def P3968302562820244689.Spec : Prop :=
  ∀ n, P3968302562820244689.a n = A033279 (n + 8)

end A033279

/-! ## A033279.P13672808084934187972

`A086810(A052905(n+3)+12)`
-/

namespace A033279.P13672808084934187972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A052905 (n + 3) + 12).toNat

end

end A033279.P13672808084934187972

namespace A033279

/-- `A086810(A052905(n+3)+12)` -/
def P13672808084934187972.Spec : Prop :=
  ∀ n, P13672808084934187972.a n = A033279 (n + 8)

end A033279

/-! ## A033279.P13720694231658534148

`A086810(A167614(n+6)-(n+3))`
-/

namespace A033279.P13720694231658534148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A033279.P13720694231658534148

namespace A033279

/-- `A086810(A167614(n+6)-(n+3))` -/
def P13720694231658534148.Spec : Prop :=
  ∀ n, P13720694231658534148.a n = A033279 (n + 8)

end A033279

/-!
# A033280: Number of diagonal dissections of a convex (n+8)-gon into n+1 regions.

The programs for A033280, the canonical program `A033280.P16106475466147934862` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033280 has offset 0).

The definition of A033280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033280.P7021699724173138414

`A033282(A055998(n+4))`
-/

namespace A033280.P7021699724173138414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A055998 (n + 4)).toNat

end

end A033280.P7021699724173138414

namespace A033280

/-- `A033282(A055998(n+4))` -/
def P7021699724173138414.Spec : Prop :=
  ∀ n, P7021699724173138414.a n = A033280 n

end A033280

/-! ## A033280.P16106475466147934862

`A086810(A055999(n+4))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A033280

/-- `A086810(A055999(n+4))` -/
def P16106475466147934862.Spec : Prop :=
  ∀ n, P16106475466147934862.a n = A033280 n

theorem P16106475466147934862.correct : P16106475466147934862.Spec := by
  intro n
  simp only [A033280]

end A033280

/-! ## A033280.P16969158084726709586

`A086810(A052905(n+4)-1)`
-/

namespace A033280.P16969158084726709586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A052905 (n + 4) - 1).toNat

end

end A033280.P16969158084726709586

namespace A033280

/-- `A086810(A052905(n+4)-1)` -/
def P16969158084726709586.Spec : Prop :=
  ∀ n, P16969158084726709586.a n = A033280 n

end A033280

/-! ## A033280.P17211596098936698122

`A086810(A000096(n+6)-5)`
-/

namespace A033280.P17211596098936698122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A000096 (n + 6) - 5).toNat

end

end A033280.P17211596098936698122

namespace A033280

/-- `A086810(A000096(n+6)-5)` -/
def P17211596098936698122.Spec : Prop :=
  ∀ n, P17211596098936698122.a n = A033280 n

end A033280

/-! ## A033280.P6023826159876331406

`A086810(A000124(n+7)-7)`
-/

namespace A033280.P6023826159876331406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A000124 (n + 7) - 7).toNat

end

end A033280.P6023826159876331406

namespace A033280

/-- `A086810(A000124(n+7)-7)` -/
def P6023826159876331406.Spec : Prop :=
  ∀ n, P6023826159876331406.a n = A033280 n

end A033280

/-! ## A033280.P13377803645853781023

`A033282(Δ[A264443(n+1)]+1)`
-/

namespace A033280.P13377803645853781023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (f1 (n + 1) - f1 n + 1).toNat

end

end A033280.P13377803645853781023

namespace A033280

/-- `A033282(Δ[A264443(n+1)]+1)` -/
def P13377803645853781023.Spec : Prop :=
  ∀ n, P13377803645853781023.a n = A033280 n

end A033280

/-! ## A033280.P2237999928529418475

`A033282(Δ[A023551(n+1)]+3)`
-/

namespace A033280.P2237999928529418475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (f1 (n + 1) - f1 n + 3).toNat

end

end A033280.P2237999928529418475

namespace A033280

/-- `A033282(Δ[A023551(n+1)]+3)` -/
def P2237999928529418475.Spec : Prop :=
  ∀ n, P2237999928529418475.a n = A033280 n

end A033280

/-!
# A033281: Number of diagonal dissections of a convex (n+9)-gon into n+1 regions.

The programs for A033281, the canonical program `A033281.P743630610779105652` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033281 has offset 0).

The definition of A033281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033281.P2843511396429030563

`A126216(A056119(n)+28)`
-/

namespace A033281.P2843511396429030563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A056119 n + 28).toNat

end

end A033281.P2843511396429030563

namespace A033281

/-- `A126216(A056119(n)+28)` -/
def P2843511396429030563.Spec : Prop :=
  ∀ n, P2843511396429030563.a n = A033281 n

end A033281

/-! ## A033281.P13961562564774994107

`A126216(A000124(n+6)+6)`
-/

namespace A033281.P13961562564774994107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A000124 (n + 6) + 6).toNat

end

end A033281.P13961562564774994107

namespace A033281

/-- `A126216(A000124(n+6)+6)` -/
def P13961562564774994107.Spec : Prop :=
  ∀ n, P13961562564774994107.a n = A033281 n

end A033281

/-! ## A033281.P481480698545815794

`A126216(A000217(n+6)+7)`
-/

namespace A033281.P481480698545815794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A000217 (n + 6) + 7).toNat

end

end A033281.P481480698545815794

namespace A033281

/-- `A126216(A000217(n+6)+7)` -/
def P481480698545815794.Spec : Prop :=
  ∀ n, P481480698545815794.a n = A033281 n

end A033281

/-! ## A033281.P743630610779105652

`A033282(Δ[A264443(n+2)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A033281

/-- `A033282(Δ[A264443(n+2)])` -/
def P743630610779105652.Spec : Prop :=
  ∀ n, P743630610779105652.a n = A033281 n

theorem P743630610779105652.correct : P743630610779105652.Spec := by
  intro n
  simp only [A033281]

end A033281

/-! ## A033281.P1332905432330333722

`A033282(A055999(n+4)+2)`
-/

namespace A033281.P1332905432330333722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A055999 (n + 4) + 2).toNat

end

end A033281.P1332905432330333722

namespace A033281

/-- `A033282(A055999(n+4)+2)` -/
def P1332905432330333722.Spec : Prop :=
  ∀ n, P1332905432330333722.a n = A033281 n

end A033281

/-! ## A033281.P8481229969630932434

`A033282(A000096(n+6)-3)`
-/

namespace A033281.P8481229969630932434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A000096 (n + 6) - 3).toNat

end

end A033281.P8481229969630932434

namespace A033281

/-- `A033282(A000096(n+6)-3)` -/
def P8481229969630932434.Spec : Prop :=
  ∀ n, P8481229969630932434.a n = A033281 n

end A033281

/-! ## A033281.P10106788956870275782

`A033282(A000217(n+7)-4)`
-/

namespace A033281.P10106788956870275782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A000217 (n + 7) - 4).toNat

end

end A033281.P10106788956870275782

namespace A033281

/-- `A033282(A000217(n+7)-4)` -/
def P10106788956870275782.Spec : Prop :=
  ∀ n, P10106788956870275782.a n = A033281 n

end A033281

/-! ## A033281.P11580804557118311413

`A033282(Δ[A023551(n+2)]+2)`
-/

namespace A033281.P11580804557118311413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (f1 (n + 1) - f1 n + 2).toNat

end

end A033281.P11580804557118311413

namespace A033281

/-- `A033282(Δ[A023551(n+2)]+2)` -/
def P11580804557118311413.Spec : Prop :=
  ∀ n, P11580804557118311413.a n = A033281 n

end A033281

/-! ## A033281.P11626189144794976150

`A033282(A000124(n+6)+n+2)`
-/

namespace A033281.P11626189144794976150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A000124 (n + 6) + (n : ℤ) + 2).toNat

end

end A033281.P11626189144794976150

namespace A033281

/-- `A033282(A000124(n+6)+n+2)` -/
def P11626189144794976150.Spec : Prop :=
  ∀ n, P11626189144794976150.a n = A033281 n

end A033281

/-! ## A033281.P9572892028594605817

`A086810(A000217(n+7)+n+1)`
-/

namespace A033281.P9572892028594605817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A033281.P9572892028594605817

namespace A033281

/-- `A086810(A000217(n+7)+n+1)` -/
def P9572892028594605817.Spec : Prop :=
  ∀ n, P9572892028594605817.a n = A033281 n

end A033281

/-!
# A033282: Triangle read by rows: T(n, k) is the number of diagonal dissections of a convex n-gon into k+1 regions.

The programs for A033282, the canonical program `A033282.P16262282567658621791` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033282 has offset 3).

The definition of A033282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033282.P16262282567658621791

`A086810(comp[∑[n]])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A033282

/-- `A086810(comp[∑[n]])` -/
def P16262282567658621791.Spec : Prop :=
  ∀ n, P16262282567658621791.a n = A033282 (n + 3)

theorem P16262282567658621791.correct : P16262282567658621791.Spec := by
  intro n
  simp only [A033282, Nat.add_sub_cancel]

end A033282

/-! ## A033282.P5291144012799262947

`A126216(A038722(n+1))`
-/

namespace A033282.P5291144012799262947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A038722 (n + 1)).toNat

end

end A033282.P5291144012799262947

namespace A033282

/-- `A126216(A038722(n+1))` -/
def P5291144012799262947.Spec : Prop :=
  ∀ n, P5291144012799262947.a n = A033282 (n + 3)

end A033282

/-! ## A033282.P9013316916328885161

`A126216(A061579(n)+1)`
-/

namespace A033282.P9013316916328885161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A061579 n + 1).toNat

end

end A033282.P9013316916328885161

namespace A033282

/-- `A126216(A061579(n)+1)` -/
def P9013316916328885161.Spec : Prop :=
  ∀ n, P9013316916328885161.a n = A033282 (n + 3)

end A033282

/-! ## A033282.P7140553798678285376

`A133336(A099375(n)+n)`
-/

namespace A033282.P7140553798678285376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 (A099375 n + (n : ℤ)).toNat

end

end A033282.P7140553798678285376

namespace A033282

/-- `A133336(A099375(n)+n)` -/
def P7140553798678285376.Spec : Prop :=
  ∀ n, P7140553798678285376.a n = A033282 (n + 3)

end A033282

/-! ## A033282.P12751874116094425647

`A126216(A114327(n)+1+n)`
-/

namespace A033282.P12751874116094425647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A114327 n + 1 + (n : ℤ)).toNat

end

end A033282.P12751874116094425647

namespace A033282

/-- `A126216(A114327(n)+1+n)` -/
def P12751874116094425647.Spec : Prop :=
  ∀ n, P12751874116094425647.a n = A033282 (n + 3)

end A033282

/-! ## A033282.P6946209094459067001

`A290252(2*A099627(n))`
-/

namespace A033282.P6946209094459067001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (2 * A099627 n).toNat

end

end A033282.P6946209094459067001

namespace A033282

/-- `A290252(2*A099627(n))` -/
def P6946209094459067001.Spec : Prop :=
  ∀ n, P6946209094459067001.a n = A033282 (n + 3)

end A033282

/-! ## A033282.P10312062118508693586

`A290252(lcm(2, A099627(n)))`
-/

namespace A033282.P10312062118508693586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (Int.lcm 2 (A099627 n))

end

end A033282.P10312062118508693586

namespace A033282

/-- `A290252(lcm(2, A099627(n)))` -/
def P10312062118508693586.Spec : Prop :=
  ∀ n, P10312062118508693586.a n = A033282 (n + 3)

end A033282

/-! ## A033282.P5161700723400678823

`A290252(∑[2*A232089(n)])`
-/

namespace A033282.P5161700723400678823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033282.P5161700723400678823

namespace A033282

/-- `A290252(∑[2*A232089(n)])` -/
def P5161700723400678823.Spec : Prop :=
  ∀ n, P5161700723400678823.a n = A033282 (n + 3)

end A033282

/-! ## A033282.P17248349450926706975

`A133336(A380649(n+1))`
-/

namespace A033282.P17248349450926706975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 (A380649 (n + 1)).toNat

end

end A033282.P17248349450926706975

namespace A033282

/-- `A133336(A380649(n+1))` -/
def P17248349450926706975.Spec : Prop :=
  ∀ n, P17248349450926706975.a n = A033282 (n + 3)

end A033282

/-!
# A033283: Numbers whose maximal base-10 run length is 2.

The programs for A033283, there is no canonical definition to state claims against.
-/

/-! ## A033283.P13163826092112206995

`eq[2, A043284(n+1)]+1`
-/

namespace A033283.P13163826092112206995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033283.P13163826092112206995

/-! ## A033283.P13969836042736682946

`eq[2, A043284(A028310(n))]`
-/

namespace A033283.P13969836042736682946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033283.P13969836042736682946

/-! ## A033283.P4670439314696442547

`A020725(eq[2, A043284(n+1)])`
-/

namespace A033283.P4670439314696442547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033283.P4670439314696442547

/-! ## A033283.P10860810219159386645

`A065475(eq[2, A043284(n+1)])`
-/

namespace A033283.P10860810219159386645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033283.P10860810219159386645

/-! ## A033283.P5140947544747342631

`A153152(eq[2, A043284(n+1)])`
-/

namespace A033283.P5140947544747342631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033283.P5140947544747342631

/-! ## A033283.P3504799876249826750

`A326178(eq[2, A043284(n+1)])`
-/

namespace A033283.P3504799876249826750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033283.P3504799876249826750

/-! ## A033283.P16725356886231875348

`eq[0, A053839(A139337(n))]`
-/

namespace A033283.P16725356886231875348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033283.P16725356886231875348

/-! ## A033283.P15292877651870465680

`eq[1, A044941(A233583(n+1))]`
-/

namespace A033283.P15292877651870465680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033283.P15292877651870465680

/-!
# A033284: Numbers whose maximal base-10 run length is 3.

The programs for A033284, there is no canonical definition to state claims against.
-/

/-! ## A033284.P14326316704138351117

`eq[3, A043284(A028310(n))]`
-/

namespace A033284.P14326316704138351117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033284.P14326316704138351117

/-! ## A033284.P3486262029333231515

`A020725(eq[3, A043284(n+1)])`
-/

namespace A033284.P3486262029333231515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033284.P3486262029333231515

/-! ## A033284.P17197283112484000472

`A065475(eq[3, A043284(n+1)])`
-/

namespace A033284.P17197283112484000472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033284.P17197283112484000472

/-! ## A033284.P16398667012319123709

`A153152(eq[3, A043284(n+1)])`
-/

namespace A033284.P16398667012319123709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033284.P16398667012319123709

/-! ## A033284.P15546113832747265552

`A326178(eq[3, A043284(n+1)])`
-/

namespace A033284.P15546113832747265552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033284.P15546113832747265552

/-!
# A033285: Numbers whose maximal base-10 run length is 4.

The programs for A033285, there is no canonical definition to state claims against.
-/

/-! ## A033285.P8269418592742643341

`A179310(A007930(n+1))`
-/

namespace A033285.P8269418592742643341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179310 (A007930 (n + 1)).toNat

end

end A033285.P8269418592742643341

/-! ## A033285.P9874236812770742937

`A179310(A105957(n+2))`
-/

namespace A033285.P9874236812770742937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179310 (A105957 (n + 2)).toNat

end

end A033285.P9874236812770742937

/-! ## A033285.P11749118925077311890

`A179310(A105958(n+2))`
-/

namespace A033285.P11749118925077311890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179310 (A105958 (n + 2)).toNat

end

end A033285.P11749118925077311890

/-! ## A033285.P15524731252681835034

`A179310(A217394(n+2))`
-/

namespace A033285.P15524731252681835034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179310 (A217394 (n + 2)).toNat

end

end A033285.P15524731252681835034

/-! ## A033285.P18388351997124182890

`A179310(A319678(n+2))`
-/

namespace A033285.P18388351997124182890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179310 (A319678 (n + 2)).toNat

end

end A033285.P18388351997124182890

/-!
# A033286: a(n) = n * prime(n).

The programs for A033286, the canonical program `A033286.P2794343547372572705` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033286 has offset 1).

The definition of A033286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033286.P2794343547372572705

`(n+1)*A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033286

/-- `(n+1)*A000040(n+1)` -/
def P2794343547372572705.Spec : Prop :=
  ∀ n, P2794343547372572705.a n = A033286 (n + 1)

theorem P2794343547372572705.correct : P2794343547372572705.Spec := by
  intro n
  simp only [A033286, Nat.add_sub_cancel]

end A033286

/-! ## A033286.P9781053222201092438

`A007504(n+1)+A152535(n+1)`
-/

namespace A033286.P9781053222201092438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + A152535 (n + 1)

end

end A033286.P9781053222201092438

namespace A033286

/-- `A007504(n+1)+A152535(n+1)` -/
def P9781053222201092438.Spec : Prop :=
  ∀ n, P9781053222201092438.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P244385249499802245

`(n+1)*A008578(n+2)`
-/

namespace A033286.P244385249499802245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008578 (n + 2)

end

end A033286.P244385249499802245

namespace A033286

/-- `(n+1)*A008578(n+2)` -/
def P244385249499802245.Spec : Prop :=
  ∀ n, P244385249499802245.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P10434653190028464181

`(n+1)*A158611(n+3)`
-/

namespace A033286.P10434653190028464181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158611 (n + 3)

end

end A033286.P10434653190028464181

namespace A033286

/-- `(n+1)*A158611(n+3)` -/
def P10434653190028464181.Spec : Prop :=
  ∀ n, P10434653190028464181.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P6423747149288905378

`∑[A090942(n+1)]`
-/

namespace A033286.P6423747149288905378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033286.P6423747149288905378

namespace A033286

/-- `∑[A090942(n+1)]` -/
def P6423747149288905378.Spec : Prop :=
  ∀ n, P6423747149288905378.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P12789382181601274252

`A083723(n+1)-n`
-/

namespace A033286.P12789382181601274252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083723 (n + 1) - (n : ℤ)

end

end A033286.P12789382181601274252

namespace A033286

/-- `A083723(n+1)-n` -/
def P12789382181601274252.Spec : Prop :=
  ∀ n, P12789382181601274252.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P11982283466743680327

`(n+1)*Δ[A007504(n)]`
-/

namespace A033286.P11982283466743680327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A033286.P11982283466743680327

namespace A033286

/-- `(n+1)*Δ[A007504(n)]` -/
def P11982283466743680327.Spec : Prop :=
  ∀ n, P11982283466743680327.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P15177741192238103400

`A356868(n+1)/(n+1)`
-/

namespace A033286.P15177741192238103400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356868 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A033286.P15177741192238103400

namespace A033286

/-- `A356868(n+1)/(n+1)` -/
def P15177741192238103400.Spec : Prop :=
  ∀ n, P15177741192238103400.a n = (A033286 (n + 1) : ℚ)

end A033286

/-! ## A033286.P695513820630559406

`lcm(n+1, A273960(n+1))`
-/

namespace A033286.P695513820630559406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A273960 (n + 1))

end

end A033286.P695513820630559406

namespace A033286

/-- `lcm(n+1, A273960(n+1))` -/
def P695513820630559406.Spec : Prop :=
  ∀ n, (P695513820630559406.a n : ℤ) = A033286 (n + 1)

end A033286

/-! ## A033286.P2039874057607786788

`A152117(n)-a(n-1)` with `a(0)=2`
-/

namespace A033286.P2039874057607786788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A152117 n - a (n - 1)

end

end A033286.P2039874057607786788

namespace A033286

/-- `A152117(n)-a(n-1)` -/
def P2039874057607786788.Spec : Prop :=
  ∀ n, P2039874057607786788.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P6861610172904850441

`(n+1)*sqrt(A001248(n+1))`
-/

namespace A033286.P6861610172904850441
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A001248 (n + 1) : ℝ)

end

end A033286.P6861610172904850441

namespace A033286

/-- `(n+1)*sqrt(A001248(n+1))` -/
def P6861610172904850441.Spec : Prop :=
  ∀ n, P6861610172904850441.a n = (A033286 (n + 1) : ℝ)

end A033286

/-! ## A033286.P9103105360511846864

`(n+1)*∑[A054541(n+1)]`
-/

namespace A033286.P9103105360511846864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033286.P9103105360511846864

namespace A033286

/-- `(n+1)*∑[A054541(n+1)]` -/
def P9103105360511846864.Spec : Prop :=
  ∀ n, P9103105360511846864.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P554384922304129342

`(n+1)*(A006093(n+1)+1)`
-/

namespace A033286.P554384922304129342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A006093 (n + 1) + 1)

end

end A033286.P554384922304129342

namespace A033286

/-- `(n+1)*(A006093(n+1)+1)` -/
def P554384922304129342.Spec : Prop :=
  ∀ n, P554384922304129342.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P15878883654887041039

`(n+1)*(A008864(n+1)-1)`
-/

namespace A033286.P15878883654887041039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008864 (n + 1) - 1)

end

end A033286.P15878883654887041039

namespace A033286

/-- `(n+1)*(A008864(n+1)-1)` -/
def P15878883654887041039.Spec : Prop :=
  ∀ n, P15878883654887041039.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P1975352829385870966

`(n+1)*(A040976(n+1)+2)`
-/

namespace A033286.P1975352829385870966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A040976 (n + 1) + 2)

end

end A033286.P1975352829385870966

namespace A033286

/-- `(n+1)*(A040976(n+1)+2)` -/
def P1975352829385870966.Spec : Prop :=
  ∀ n, P1975352829385870966.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P11871653145924241364

`(n+1)*(A052147(n+1)-2)`
-/

namespace A033286.P11871653145924241364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A052147 (n + 1) - 2)

end

end A033286.P11871653145924241364

namespace A033286

/-- `(n+1)*(A052147(n+1)-2)` -/
def P11871653145924241364.Spec : Prop :=
  ∀ n, P11871653145924241364.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P2750066497405741637

`(n+1)*(A086801(n+1)+3)`
-/

namespace A033286.P2750066497405741637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A086801 (n + 1) + 3)

end

end A033286.P2750066497405741637

namespace A033286

/-- `(n+1)*(A086801(n+1)+3)` -/
def P2750066497405741637.Spec : Prop :=
  ∀ n, P2750066497405741637.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P10025565842824022686

`(n+1)*(A113935(n+1)-3)`
-/

namespace A033286.P10025565842824022686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A113935 (n + 1) - 3)

end

end A033286.P10025565842824022686

namespace A033286

/-- `(n+1)*(A113935(n+1)-3)` -/
def P10025565842824022686.Spec : Prop :=
  ∀ n, P10025565842824022686.a n = A033286 (n + 1)

end A033286

/-! ## A033286.P17530057361199768402

`(n+1)/3*A001748(n+1)`
-/

namespace A033286.P17530057361199768402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A001748 (n + 1) : ℚ)

end

end A033286.P17530057361199768402

namespace A033286

/-- `(n+1)/3*A001748(n+1)` -/
def P17530057361199768402.Spec : Prop :=
  ∀ n, P17530057361199768402.a n = (A033286 (n + 1) : ℚ)

end A033286

/-! ## A033286.P11451594948183527552

`(n+1)/4*A001749(n+1)`
-/

namespace A033286.P11451594948183527552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A001749 (n + 1) : ℚ)

end

end A033286.P11451594948183527552

namespace A033286

/-- `(n+1)/4*A001749(n+1)` -/
def P11451594948183527552.Spec : Prop :=
  ∀ n, P11451594948183527552.a n = (A033286 (n + 1) : ℚ)

end A033286

/-!
# A033287: First differences of A033286.

The programs for A033287, the canonical program `A033287.P5066765549217672205` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033287 has offset 0).

The definition of A033287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033287.P5724240538934105946

`Δ[(n+1)*A001748(n+1)/3]`
-/

namespace A033287.P5724240538934105946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A001748 (n + 1) : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033287.P5724240538934105946

namespace A033287

/-- `Δ[(n+1)*A001748(n+1)/3]` -/
def P5724240538934105946.Spec : Prop :=
  ∀ n, P5724240538934105946.a n = (A033287 n : ℚ)

end A033287

/-! ## A033287.P17898968157023973511

`Δ[(n+1)/4*A001749(n+1)]`
-/

namespace A033287.P17898968157023973511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A001749 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033287.P17898968157023973511

namespace A033287

/-- `Δ[(n+1)/4*A001749(n+1)]` -/
def P17898968157023973511.Spec : Prop :=
  ∀ n, P17898968157023973511.a n = (A033287 n : ℚ)

end A033287

/-! ## A033287.P5066765549217672205

`A062357(n+1)+A001043(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033287

/-- `A062357(n+1)+A001043(n+1)` -/
def P5066765549217672205.Spec : Prop :=
  ∀ n, P5066765549217672205.a n = A033287 n

theorem P5066765549217672205.correct : P5066765549217672205.Spec := by
  intro n
  simp only [A033287]

end A033287

/-! ## A033287.P10161684658724641942

`A147967(n+1)+A014690(n+1)`
-/

namespace A033287.P10161684658724641942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147967 (n + 1) + A014690 (n + 1)

end

end A033287.P10161684658724641942

namespace A033287

/-- `A147967(n+1)+A014690(n+1)` -/
def P10161684658724641942.Spec : Prop :=
  ∀ n, P10161684658724641942.a n = A033287 n

end A033287

/-! ## A033287.P875424587269713362

`A141042(n+1)+A065091(n+1)`
-/

namespace A033287.P875424587269713362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) + A065091 (n + 1)

end

end A033287.P875424587269713362

namespace A033287

/-- `A141042(n+1)+A065091(n+1)` -/
def P875424587269713362.Spec : Prop :=
  ∀ n, P875424587269713362.a n = A033287 n

end A033287

/-! ## A033287.P6724083022867597007

`A247380(n+1)+A001223(n+1)`
-/

namespace A033287.P6724083022867597007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247380 (n + 1) + A001223 (n + 1)

end

end A033287.P6724083022867597007

namespace A033287

/-- `A247380(n+1)+A001223(n+1)` -/
def P6724083022867597007.Spec : Prop :=
  ∀ n, P6724083022867597007.a n = A033287 n

end A033287

/-! ## A033287.P13758016605611771834

`A141042(n+1)+Δ[A007504(n+1)]`
-/

namespace A033287.P13758016605611771834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) + (f1 (n + 1) - f1 n)

end

end A033287.P13758016605611771834

namespace A033287

/-- `A141042(n+1)+Δ[A007504(n+1)]` -/
def P13758016605611771834.Spec : Prop :=
  ∀ n, P13758016605611771834.a n = A033287 n

end A033287

/-! ## A033287.P14530533022616682213

`A152117(n+1)-2*A033286(n+1)`
-/

namespace A033287.P14530533022616682213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152117 (n + 1) - 2 * A033286 (n + 1)

end

end A033287.P14530533022616682213

namespace A033287

/-- `A152117(n+1)-2*A033286(n+1)` -/
def P14530533022616682213.Spec : Prop :=
  ∀ n, P14530533022616682213.a n = A033287 n

end A033287

/-! ## A033287.P13921714322290963876

`A210497(n+1)+n*A001223(n+1)`
-/

namespace A033287.P13921714322290963876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) + (n : ℤ) * A001223 (n + 1)

end

end A033287.P13921714322290963876

namespace A033287

/-- `A210497(n+1)+n*A001223(n+1)` -/
def P13921714322290963876.Spec : Prop :=
  ∀ n, P13921714322290963876.a n = A033287 n

end A033287

/-! ## A033287.P4948594493517774350

`A007504(n+1)+A141042(n+1)-A166448(n+1)`
-/

namespace A033287.P4948594493517774350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A141042 (n + 1) - A166448 (n + 1))

end

end A033287.P4948594493517774350

namespace A033287

/-- `A007504(n+1)+A141042(n+1)-A166448(n+1)` -/
def P4948594493517774350.Spec : Prop :=
  ∀ n, P4948594493517774350.a n = A033287 n

end A033287

/-! ## A033287.P11235537106598119544

`A141042(n+1)+A210497(n+1)-A001223(n+1)`
-/

namespace A033287.P11235537106598119544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) + (A210497 (n + 1) - A001223 (n + 1))

end

end A033287.P11235537106598119544

namespace A033287

/-- `A141042(n+1)+A210497(n+1)-A001223(n+1)` -/
def P11235537106598119544.Spec : Prop :=
  ∀ n, P11235537106598119544.a n = A033287 n

end A033287

/-! ## A033287.P12923359934809622906

`A090942(n+2)`
-/

namespace A033287.P12923359934809622906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 2)

end

end A033287.P12923359934809622906

namespace A033287

/-- `A090942(n+2)` -/
def P12923359934809622906.Spec : Prop :=
  ∀ n, P12923359934809622906.a n = A033287 n

end A033287

/-! ## A033287.P15549980639399751370

`Δ[A033286(n+1)]`
-/

namespace A033287.P15549980639399751370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033287.P15549980639399751370

namespace A033287

/-- `Δ[A033286(n+1)]` -/
def P15549980639399751370.Spec : Prop :=
  ∀ n, P15549980639399751370.a n = A033287 n

end A033287

/-! ## A033287.P2478653220152349548

`Δ[A083723(n+1)]-1`
-/

namespace A033287.P2478653220152349548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A033287.P2478653220152349548

namespace A033287

/-- `Δ[A083723(n+1)]-1` -/
def P2478653220152349548.Spec : Prop :=
  ∀ n, P2478653220152349548.a n = A033287 n

end A033287

/-! ## A033287.P1562064974354974179

`Δ[(n+1)*A000040(n+1)]`
-/

namespace A033287.P1562064974354974179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033287.P1562064974354974179

namespace A033287

/-- `Δ[(n+1)*A000040(n+1)]` -/
def P1562064974354974179.Spec : Prop :=
  ∀ n, P1562064974354974179.a n = A033287 n

end A033287

/-! ## A033287.P6366061750844790501

`Δ[A356868(n+1)/(n+1)]`
-/

namespace A033287.P6366061750844790501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356868 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033287.P6366061750844790501

namespace A033287

/-- `Δ[A356868(n+1)/(n+1)]` -/
def P6366061750844790501.Spec : Prop :=
  ∀ n, P6366061750844790501.a n = (A033287 n : ℚ)

end A033287

/-! ## A033287.P5609791147496975665

`Δ[(n+1)*(A040976(n+1)+2)]`
-/

namespace A033287.P5609791147496975665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033287.P5609791147496975665

namespace A033287

/-- `Δ[(n+1)*(A040976(n+1)+2)]` -/
def P5609791147496975665.Spec : Prop :=
  ∀ n, P5609791147496975665.a n = A033287 n

end A033287

/-! ## A033287.P10533929771574493105

`Δ[lcm(n+1, A000040((n+2+n)/2))]`
-/

namespace A033287.P10533929771574493105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A000040 (SequenceMachineLib.roundAway ((n + 2 + n : ℚ) / 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A033287.P10533929771574493105

namespace A033287

/-- `Δ[lcm(n+1, A000040((n+2+n)/2))]` -/
def P10533929771574493105.Spec : Prop :=
  ∀ n, P10533929771574493105.a n = A033287 n

end A033287

/-! ## A033287.P2610809547416075826

`A141042(n+1)+A000040(n+2)`
-/

namespace A033287.P2610809547416075826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) + A000040 (n + 2)

end

end A033287.P2610809547416075826

namespace A033287

/-- `A141042(n+1)+A000040(n+2)` -/
def P2610809547416075826.Spec : Prop :=
  ∀ n, P2610809547416075826.a n = A033287 n

end A033287

/-! ## A033287.P16925802476545829836

`A247380(n+1)+A054541(n+2)`
-/

namespace A033287.P16925802476545829836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247380 (n + 1) + A054541 (n + 2)

end

end A033287.P16925802476545829836

namespace A033287

/-- `A247380(n+1)+A054541(n+2)` -/
def P16925802476545829836.Spec : Prop :=
  ∀ n, P16925802476545829836.a n = A033287 n

end A033287

/-!
# A033288: Theta series of 20-dimensional lattice L_20 with group 2.M_22.2.

The programs for A033288, there is no canonical definition to state claims against.
-/

/-! ## A033288.P16466055047893539317

`A105751(xor(1, (n-1)!+n*a(n-1)))` with `a(0)=1`
-/

namespace A033288.P16466055047893539317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105751 (Int.xor 1 ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (n : ℤ) * a (n - 1))).toNat

end

end A033288.P16466055047893539317

/-!
# A033291: A Connell-like sequence: take the first multiple of 1, the next 2 multiples of 2, the next 3 multiples of 3, etc.

The programs for A033291, the canonical program `A033291.P13916502541116241249` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033291 has offset 1).

The definition of A033291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033291.P5606310142160126858

`A072166(n+1)+A057428(n)`
-/

namespace A033291.P5606310142160126858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072166 (n + 1) + A057428 n

end

end A033291.P5606310142160126858

namespace A033291

/-- `A072166(n+1)+A057428(n)` -/
def P5606310142160126858.Spec : Prop :=
  ∀ n, P5606310142160126858.a n = A033291 (n + 1)

end A033291

/-! ## A033291.P6511397730446594864

`A072166(n+1)-A057427(n)`
-/

namespace A033291.P6511397730446594864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072166 (n + 1) - A057427 n

end

end A033291.P6511397730446594864

namespace A033291

/-- `A072166(n+1)-A057427(n)` -/
def P6511397730446594864.Spec : Prop :=
  ∀ n, P6511397730446594864.a n = A033291 (n + 1)

end A033291

/-! ## A033291.P11577133919130953646

`A072166(n+1)-n/A028310(n)`
-/

namespace A033291.P11577133919130953646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072166 (n + 1) : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A033291.P11577133919130953646

namespace A033291

/-- `A072166(n+1)-n/A028310(n)` -/
def P11577133919130953646.Spec : Prop :=
  ∀ n, P11577133919130953646.a n = (A033291 (n + 1) : ℚ)

end A033291

/-! ## A033291.P13916502541116241249

`(1-A001840(A003056(n))+n)*∑[A010054(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033291

/-- `(1-A001840(A003056(n))+n)*∑[A010054(n)]` -/
def P13916502541116241249.Spec : Prop :=
  ∀ n, P13916502541116241249.a n = A033291 (n + 1)

theorem P13916502541116241249.correct : P13916502541116241249.Spec := by
  intro n
  simp only [A033291, Nat.add_sub_cancel]

end A033291

/-! ## A033291.P10092908397160101585

`(1-A001840(A003056(n))+n)*A002024(n+1)`
-/

namespace A033291.P10092908397160101585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001840 (A003056 n).toNat + (n : ℤ)) * A002024 (n + 1)

end

end A033291.P10092908397160101585

namespace A033291

/-- `(1-A001840(A003056(n))+n)*A002024(n+1)` -/
def P10092908397160101585.Spec : Prop :=
  ∀ n, P10092908397160101585.a n = A033291 (n + 1)

end A033291

/-! ## A033291.P4065417579652857768

`A055456(A072166(n+1))`
-/

namespace A033291.P4065417579652857768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A072166 (n + 1)).toNat

end

end A033291.P4065417579652857768

namespace A033291

/-- `A055456(A072166(n+1))` -/
def P4065417579652857768.Spec : Prop :=
  ∀ n, P4065417579652857768.a n = A033291 (n + 1)

end A033291

/-! ## A033291.P15196539940711509142

`A028310(A072166(n+1)-1)`
-/

namespace A033291.P15196539940711509142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A072166 (n + 1) - 1).toNat

end

end A033291.P15196539940711509142

namespace A033291

/-- `A028310(A072166(n+1)-1)` -/
def P15196539940711509142.Spec : Prop :=
  ∀ n, P15196539940711509142.a n = A033291 (n + 1)

end A033291

/-!
# A033292: A Connell-like sequence: take 1 number = 1 (mod Q), 2 numbers = 2 (mod Q), 3 numbers = 3 (mod Q), etc., where Q = 3.

The programs for A033292, the canonical program `A033292.P14487926781763147926` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033292 has offset 1).

The definition of A033292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033292.P4969370309935135525

`∑[3-2*char[∑[n]]]`
-/

namespace A033292.P4969370309935135525
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033292.P4969370309935135525

namespace A033292

/-- `∑[3-2*char[∑[n]]]` -/
def P4969370309935135525.Spec : Prop :=
  ∀ n, P4969370309935135525.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P7073646618910009662

`A143803(n+1)-n`
-/

namespace A033292.P7073646618910009662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143803 (n + 1) - (n : ℤ)

end

end A033292.P7073646618910009662

namespace A033292

/-- `A143803(n+1)-n` -/
def P7073646618910009662.Spec : Prop :=
  ∀ n, P7073646618910009662.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P10753299762440180210

`∑[round(acot(A198954(n)))]+n`
-/

namespace A033292.P10753299762440180210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A198954 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A033292.P10753299762440180210

namespace A033292

/-- `∑[round(acot(A198954(n)))]+n` -/
def P10753299762440180210.Spec : Prop :=
  ∀ n, P10753299762440180210.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P14487926781763147926

`2*A083920(n)+n+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033292

/-- `2*A083920(n)+n+1` -/
def P14487926781763147926.Spec : Prop :=
  ∀ n, P14487926781763147926.a n = A033292 (n + 1)

theorem P14487926781763147926.correct : P14487926781763147926.Spec := by
  intro n
  simp only [A033292, Nat.add_sub_cancel]

end A033292

/-! ## A033292.P3589264039018983370

`2*A001614(n+1)-(n+1)`
-/

namespace A033292.P3589264039018983370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001614 (n + 1) - (n + 1 : ℤ)

end

end A033292.P3589264039018983370

namespace A033292

/-- `2*A001614(n+1)-(n+1)` -/
def P3589264039018983370.Spec : Prop :=
  ∀ n, P3589264039018983370.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P12959886366380055407

`2*A122797(n+1)+n-1`
-/

namespace A033292.P12959886366380055407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122797 (n + 1) + ((n : ℤ) - 1)

end

end A033292.P12959886366380055407

namespace A033292

/-- `2*A122797(n+1)+n-1` -/
def P12959886366380055407.Spec : Prop :=
  ∀ n, P12959886366380055407.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P13112939889454684205

`3*(n+1)-A111650(n+1)`
-/

namespace A033292.P13112939889454684205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A111650 (n + 1)

end

end A033292.P13112939889454684205

namespace A033292

/-- `3*(n+1)-A111650(n+1)` -/
def P13112939889454684205.Spec : Prop :=
  ∀ n, P13112939889454684205.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P10073506345841402719

`A342138(n)+A279891(n)`
-/

namespace A033292.P10073506345841402719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342138 n + A279891 n

end

end A033292.P10073506345841402719

namespace A033292

/-- `A342138(n)+A279891(n)` -/
def P10073506345841402719.Spec : Prop :=
  ∀ n, P10073506345841402719.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P4390071980700556458

`A016789(n)-A131507(n)`
-/

namespace A033292.P4390071980700556458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A131507 n

end

end A033292.P4390071980700556458

namespace A033292

/-- `A016789(n)-A131507(n)` -/
def P4390071980700556458.Spec : Prop :=
  ∀ n, P4390071980700556458.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P15885567388499938678

`A016777(n)-A279891(n)`
-/

namespace A033292.P15885567388499938678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A279891 n

end

end A033292.P15885567388499938678

namespace A033292

/-- `A016777(n)-A279891(n)` -/
def P15885567388499938678.Spec : Prop :=
  ∀ n, P15885567388499938678.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P6250273459605411564

`A083920(n)+A001614(n+1)`
-/

namespace A033292.P6250273459605411564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + A001614 (n + 1)

end

end A033292.P6250273459605411564

namespace A033292

/-- `A083920(n)+A001614(n+1)` -/
def P6250273459605411564.Spec : Prop :=
  ∀ n, P6250273459605411564.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P11389006650592427792

`A133280(n)+A122797(n+1)`
-/

namespace A033292.P11389006650592427792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n + A122797 (n + 1)

end

end A033292.P11389006650592427792

namespace A033292

/-- `A133280(n)+A122797(n+1)` -/
def P11389006650592427792.Spec : Prop :=
  ∀ n, P11389006650592427792.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P3400119158157183890

`A017053(n)-A182664(n+1)`
-/

namespace A033292.P3400119158157183890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - A182664 (n + 1)

end

end A033292.P3400119158157183890

namespace A033292

/-- `A017053(n)-A182664(n+1)` -/
def P3400119158157183890.Spec : Prop :=
  ∀ n, P3400119158157183890.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P3846281362550712713

`A185868(n+1)-A061579(n)`
-/

namespace A033292.P3846281362550712713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185868 (n + 1) - A061579 n

end

end A033292.P3846281362550712713

namespace A033292

/-- `A185868(n+1)-A061579(n)` -/
def P3846281362550712713.Spec : Prop :=
  ∀ n, P3846281362550712713.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P17634005667420410760

`A016777(n)-2*A003056(n)`
-/

namespace A033292.P17634005667420410760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - 2 * A003056 n

end

end A033292.P17634005667420410760

namespace A033292

/-- `A016777(n)-2*A003056(n)` -/
def P17634005667420410760.Spec : Prop :=
  ∀ n, P17634005667420410760.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P14524130717795608401

`A005408(n-A003056(n))+n`
-/

namespace A033292.P14524130717795608401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((n : ℤ) - A003056 n).toNat + (n : ℤ)

end

end A033292.P14524130717795608401

namespace A033292

/-- `A005408(n-A003056(n))+n` -/
def P14524130717795608401.Spec : Prop :=
  ∀ n, P14524130717795608401.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P1031859237369361508

`A016825(n)-(A131507(n)+n)`
-/

namespace A033292.P1031859237369361508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - (A131507 n + (n : ℤ))

end

end A033292.P1031859237369361508

namespace A033292

/-- `A016825(n)-(A131507(n)+n)` -/
def P1031859237369361508.Spec : Prop :=
  ∀ n, P1031859237369361508.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P2084521471018198822

`A016813(n)-(A279891(n)+n)`
-/

namespace A033292.P2084521471018198822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - (A279891 n + (n : ℤ))

end

end A033292.P2084521471018198822

namespace A033292

/-- `A016813(n)-(A279891(n)+n)` -/
def P2084521471018198822.Spec : Prop :=
  ∀ n, P2084521471018198822.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P15465503848847303084

`A014682(Δ[n²])-A131507(n)`
-/

namespace A033292.P15465503848847303084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A131507 n

end

end A033292.P15465503848847303084

namespace A033292

/-- `A014682(Δ[n²])-A131507(n)` -/
def P15465503848847303084.Spec : Prop :=
  ∀ n, P15465503848847303084.a n = A033292 (n + 1)

end A033292

/-! ## A033292.P12441025505643436434

`A083920(n)+∑[2-A010054(n)]`
-/

namespace A033292.P12441025505643436434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033292.P12441025505643436434

namespace A033292

/-- `A083920(n)+∑[2-A010054(n)]` -/
def P12441025505643436434.Spec : Prop :=
  ∀ n, P12441025505643436434.a n = A033292 (n + 1)

end A033292

/-!
# A033293: A Connell-like sequence: take 1 number = 1 (mod Q), 2 numbers = 2 (mod Q), 3 numbers = 3 (mod Q), etc., where Q = 8.

The programs for A033293, the canonical program `A033293.P12605047835593142903` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033293 has offset 1).

The definition of A033293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033293.P10224355277690262363

`∑[(2-char[∑[n]])^3]`
-/

namespace A033293.P10224355277690262363
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033293.P10224355277690262363

namespace A033293

/-- `∑[(2-char[∑[n]])^3]` -/
def P10224355277690262363.Spec : Prop :=
  ∀ n, P10224355277690262363.a n = A033293 (n + 1)

end A033293

/-! ## A033293.P12605047835593142903

`7*A083920(n)+1+n`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033293

/-- `7*A083920(n)+1+n` -/
def P12605047835593142903.Spec : Prop :=
  ∀ n, P12605047835593142903.a n = A033293 (n + 1)

theorem P12605047835593142903.correct : P12605047835593142903.Spec := by
  intro n
  simp only [A033293, Nat.add_sub_cancel]

end A033293

/-! ## A033293.P36691572367326488

`7*(n-A003056(n))+n+1`
-/

namespace A033293.P36691572367326488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℤ) - A003056 n) + (n + 1 : ℤ)

end

end A033293.P36691572367326488

namespace A033293

/-- `7*(n-A003056(n))+n+1` -/
def P36691572367326488.Spec : Prop :=
  ∀ n, P36691572367326488.a n = A033293 (n + 1)

end A033293

/-! ## A033293.P2734958655238366136

`8*(n+1)-7*A002024(n+1)`
-/

namespace A033293.P2734958655238366136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - 7 * A002024 (n + 1)

end

end A033293.P2734958655238366136

namespace A033293

/-- `8*(n+1)-7*A002024(n+1)` -/
def P2734958655238366136.Spec : Prop :=
  ∀ n, P2734958655238366136.a n = A033293 (n + 1)

end A033293

/-! ## A033293.P14596375459631069773

`7*(A001614(n+1)-(n+1))+n+1`
-/

namespace A033293.P14596375459631069773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A001614 (n + 1) - (n + 1 : ℤ)) + (n + 1 : ℤ)

end

end A033293.P14596375459631069773

namespace A033293

/-- `7*(A001614(n+1)-(n+1))+n+1` -/
def P14596375459631069773.Spec : Prop :=
  ∀ n, P14596375459631069773.a n = A033293 (n + 1)

end A033293

/-! ## A033293.P8137853170808154184

`A017113(n)-(7*A003056(n)+3)`
-/

namespace A033293.P8137853170808154184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n - (7 * A003056 n + 3)

end

end A033293.P8137853170808154184

namespace A033293

/-- `A017113(n)-(7*A003056(n)+3)` -/
def P8137853170808154184.Spec : Prop :=
  ∀ n, P8137853170808154184.a n = A033293 (n + 1)

end A033293

/-! ## A033293.P13175419355823378575

`A017077(n-A003056(n))+A003056(n)`
-/

namespace A033293.P13175419355823378575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 ((n : ℤ) - A003056 n).toNat + A003056 n

end

end A033293.P13175419355823378575

namespace A033293

/-- `A017077(n-A003056(n))+A003056(n)` -/
def P13175419355823378575.Spec : Prop :=
  ∀ n, P13175419355823378575.a n = A033293 (n + 1)

end A033293

/-!
# A033294: Squares which when written backwards remain square (final 0's excluded).

The programs for A033294, there is no canonical definition to state claims against.
-/

/-! ## A033294.P3438686503926390723

`A035122(n+1)²`
-/

namespace A033294.P3438686503926390723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035122 (n + 1) ^ 2

end

end A033294.P3438686503926390723

/-! ## A033294.P9726312852442124418

`A035122(n+1)^A020639(2*(n+1))`
-/

namespace A033294.P9726312852442124418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035122 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A033294.P9726312852442124418

/-! ## A033294.P4365972993633880135

`A035122(n+1)^A000034(2*n+3)`
-/

namespace A033294.P4365972993633880135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035122 (n + 1) : ℚ) ^ (A000034 (2 * n + 3) : ℤ)

end

end A033294.P4365972993633880135

/-! ## A033294.P7091072019912406255

`A035122(n+1)^A053669(2*n+3)`
-/

namespace A033294.P7091072019912406255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035122 (n + 1) : ℚ) ^ (A053669 (2 * n + 3) : ℤ)

end

end A033294.P7091072019912406255

/-! ## A033294.P400688784033763226

`A035122(C(n+1, n))*A035122(n+1)`
-/

namespace A033294.P400688784033763226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035122 (Nat.choose (n + 1) n) * A035122 (n + 1)

end

end A033294.P400688784033763226

/-! ## A033294.P12271211278058593150

`A035122(n+1)^A029610(A053187(n))`
-/

namespace A033294.P12271211278058593150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035122 (n + 1) : ℚ) ^ (A029610 (A053187 n).toNat : ℤ)

end

end A033294.P12271211278058593150

/-! ## A033294.P8995283461513308873

`A035122(n+1)^A020639(A000118(n))!`
-/

namespace A033294.P8995283461513308873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035122 (n + 1) ^ Nat.factorial (A020639 (A000118 n).toNat).toNat

end

end A033294.P8995283461513308873

/-! ## A033294.P6168253467357048393

`A035122(A000027(n+1))*A035122(n+1)`
-/

namespace A033294.P6168253467357048393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035122 (A000027 (n + 1)).toNat * A035122 (n + 1)

end

end A033294.P6168253467357048393

/-! ## A033294.P472951625417425207

`A035122(n+1)^A014963(A037239(n+1))`
-/

namespace A033294.P472951625417425207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035122 (n + 1) : ℚ) ^ (A014963 (A037239 (n + 1)).toNat : ℤ)

end

end A033294.P472951625417425207

/-! ## A033294.P11041499503675280689

`A035122(n+1)^A008472(2^A001222(n+1))`
-/

namespace A033294.P11041499503675280689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035122 (n + 1) : ℚ) ^ (A008472 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat : ℤ)

end

end A033294.P11041499503675280689

/-! ## A033294.P10233426414555792172

`A035122(n+1)^A015910(A115261(n+1))`
-/

namespace A033294.P10233426414555792172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035122 (n + 1) : ℚ) ^ (A015910 (A115261 (n + 1)).toNat : ℤ)

end

end A033294.P10233426414555792172

/-! ## A033294.P12605019261487730560

`∩[A061457(n+1), A110811(n+1)]`
-/

namespace A033294.P12605019261487730560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033294.P12605019261487730560

/-! ## A033294.P14143797757051171852

`∩[A110811(n+1), A115690(n+1)]`
-/

namespace A033294.P14143797757051171852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033294.P14143797757051171852

/-! ## A033294.P6765171439637403262

`A035122(n+1)^A115281(∑[n])`
-/

namespace A033294.P6765171439637403262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035122 (n + 1) : ℚ) ^ (A115281 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A033294.P6765171439637403262

/-! ## A033294.P5408876199013215383

`∩[A067251(n+1), A102859(n+1)]²`
-/

namespace A033294.P5408876199013215383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A033294.P5408876199013215383

/-! ## A033294.P11121227599967627004

`∩[A061457(n+1), A074896(n+1)]`
-/

namespace A033294.P11121227599967627004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033294.P11121227599967627004

/-!
# A033295: a(n) = [ Gamma(sqrt(n)) ].

The programs for A033295, there is no canonical definition to state claims against.
-/

/-! ## A033295.P4818845238111593654

`A048766(A052914(n))`
-/

namespace A033295.P4818845238111593654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A052914 n).toNat

end

end A033295.P4818845238111593654

/-! ## A033295.P14556366743259338025

`A048766(A077419(n)-∑{p}[n+1, gcd(n, #)])`
-/

namespace A033295.P14556366743259338025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A077419 n - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A033295.P14556366743259338025

/-! ## A033295.P12628081098274805413

`A048766(A008806(Δ[A000065(n)]))`
-/

namespace A033295.P12628081098274805413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A008806 (f1 (n + 1) - f1 n).toNat).toNat

end

end A033295.P12628081098274805413

/-! ## A033295.P7349300603612233592

`A048766(A077419(n)-A005686(n))`
-/

namespace A033295.P7349300603612233592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A077419 n - A005686 n).toNat

end

end A033295.P7349300603612233592

/-! ## A033295.P16983678703809990723

`A048766(A077419(n)-A048766(n))`
-/

namespace A033295.P16983678703809990723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A077419 n - A048766 n).toNat

end

end A033295.P16983678703809990723

/-!
# A033296: Number of paths from (0,0) to (3n,0) that stay in first quadrant (but may touch horizontal axis), where each step is (2,1),(1,2) or (1,-1) and start with (1,2).

The programs for A033296, there is no canonical definition to state claims against.
-/

/-! ## A033296.P11005203063328281295

`A071949(A027379(n))`
-/

namespace A033296.P11005203063328281295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 (A027379 n).toNat

end

end A033296.P11005203063328281295

/-! ## A033296.P6201908992860952062

`A071949(A055998(n))`
-/

namespace A033296.P6201908992860952062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 (A055998 n).toNat

end

end A033296.P6201908992860952062

/-! ## A033296.P2044097511605086204

`A071949(A000096(n)+n)`
-/

namespace A033296.P2044097511605086204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 (A000096 n + (n : ℤ)).toNat

end

end A033296.P2044097511605086204

/-! ## A033296.P8342593043370644681

`A071949(A055999(n)-n)`
-/

namespace A033296.P8342593043370644681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 (A055999 n - (n : ℤ)).toNat

end

end A033296.P8342593043370644681

/-! ## A033296.P4607030771713957013

`A071949(A101881(2*n)-1)`
-/

namespace A033296.P4607030771713957013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 (A101881 (2 * n) - 1).toNat

end

end A033296.P4607030771713957013

/-!
# A033297: Number of ordered rooted trees with n edges such that the rightmost leaf of each subtree is at even level. Equivalently, number of Dyck paths of semilength n with no return descents of odd length.

The programs for A033297, the canonical program `A033297.P2607627229482960068` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033297 has offset 2).

The definition of A033297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033297.P11968618141407809119

`Δ[(4-6/(n+1))*a(n-1)]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A033297.P11968618141407809119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 2)

end

end A033297.P11968618141407809119

namespace A033297

/-- `Δ[(4-6/(n+1))*a(n-1)]+a(n-2)` -/
def P11968618141407809119.Spec : Prop :=
  ∀ n, P11968618141407809119.a n = (A033297 (n + 2) : ℚ)

end A033297

/-! ## A033297.P2607627229482960068

`abs(∑[A168491(n+1)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033297

/-- `abs(∑[A168491(n+1)])` -/
def P2607627229482960068.Spec : Prop :=
  ∀ n, P2607627229482960068.a n = A033297 (n + 2)

theorem P2607627229482960068.correct : P2607627229482960068.Spec := by
  intro n
  simp only [A033297, Nat.add_sub_cancel]

end A033297

/-! ## A033297.P10164270803438430405

`abs(∑[A090192(2*n+3)])`
-/

namespace A033297.P10164270803438430405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A033297.P10164270803438430405

namespace A033297

/-- `abs(∑[A090192(2*n+3)])` -/
def P10164270803438430405.Spec : Prop :=
  ∀ n, P10164270803438430405.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P9737949995962439612

`abs(∑[A105523(2*n+3)])`
-/

namespace A033297.P9737949995962439612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A033297.P9737949995962439612

namespace A033297

/-- `abs(∑[A105523(2*n+3)])` -/
def P9737949995962439612.Spec : Prop :=
  ∀ n, P9737949995962439612.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P16898087050684095678

`abs(1-A156906(2*(n+2)))`
-/

namespace A033297.P16898087050684095678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A156906 (2 * (n + 2))|

end

end A033297.P16898087050684095678

namespace A033297

/-- `abs(1-A156906(2*(n+2)))` -/
def P16898087050684095678.Spec : Prop :=
  ∀ n, P16898087050684095678.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P12286769381654647709

`A000245(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A033297.P12286769381654647709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000245 n + a (n - 2)

end

end A033297.P12286769381654647709

namespace A033297

/-- `A000245(n)+a(n-2)` -/
def P12286769381654647709.Spec : Prop :=
  ∀ n, P12286769381654647709.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P6449752698650477603

`A071724(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A033297.P6449752698650477603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071724 n + a (n - 2)

end

end A033297.P6449752698650477603

namespace A033297

/-- `A071724(n)+a(n-2)` -/
def P6449752698650477603.Spec : Prop :=
  ∀ n, P6449752698650477603.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P17083703682156416659

`A230585(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A033297.P17083703682156416659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A230585 n - a (n - 1)

end

end A033297.P17083703682156416659

namespace A033297

/-- `A230585(n)-a(n-1)` -/
def P17083703682156416659.Spec : Prop :=
  ∀ n, P17083703682156416659.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P13439002944827101735

`record[A126120(n)]-a(n-1)` with `a(0)=1`
-/

namespace A033297.P13439002944827101735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A033297.P13439002944827101735

namespace A033297

/-- `record[A126120(n)]-a(n-1)` -/
def P13439002944827101735.Spec : Prop :=
  ∀ n, P13439002944827101735.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P3181671178307209505

`A000108(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A033297.P3181671178307209505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 (n + 1) - a (n - 1)

end

end A033297.P3181671178307209505

namespace A033297

/-- `A000108(n+1)-a(n-1)` -/
def P3181671178307209505.Spec : Prop :=
  ∀ n, P3181671178307209505.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P3872454693236109731

`A120588(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A033297.P3872454693236109731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120588 (n + 2) - a (n - 1)

end

end A033297.P3872454693236109731

namespace A033297

/-- `A120588(n+2)-a(n-1)` -/
def P3872454693236109731.Spec : Prop :=
  ∀ n, P3872454693236109731.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P10839687028138812535

`A026008(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A033297.P10839687028138812535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026008 (2 * n) - a (n - 1)

end

end A033297.P10839687028138812535

namespace A033297

/-- `A026008(2*n)-a(n-1)` -/
def P10839687028138812535.Spec : Prop :=
  ∀ n, P10839687028138812535.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P11479256786253090123

`Δ[a(n-2)+abs(A090192(2*n+1))]` with `a(0)=1, a(1)=2`
-/

namespace A033297.P11479256786253090123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + |A090192 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033297.P11479256786253090123

namespace A033297

/-- `Δ[a(n-2)+abs(A090192(2*n+1))]` -/
def P11479256786253090123.Spec : Prop :=
  ∀ n, P11479256786253090123.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P11534228024291880735

`A127540(n)+A032357(n)`
-/

namespace A033297.P11534228024291880735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127540 n + A032357 n

end

end A033297.P11534228024291880735

namespace A033297

/-- `A127540(n)+A032357(n)` -/
def P11534228024291880735.Spec : Prop :=
  ∀ n, P11534228024291880735.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P17200384941333511138

`A033999(n)+A032357(n+1)`
-/

namespace A033297.P17200384941333511138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A032357 (n + 1)

end

end A033297.P17200384941333511138

namespace A033297

/-- `A033999(n)+A032357(n+1)` -/
def P17200384941333511138.Spec : Prop :=
  ∀ n, P17200384941333511138.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P4554592586072369846

`gcd(∑[A168491(n+1)], A000038(n))`
-/

namespace A033297.P4554592586072369846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A033297.P4554592586072369846

namespace A033297

/-- `gcd(∑[A168491(n+1)], A000038(n))` -/
def P4554592586072369846.Spec : Prop :=
  ∀ n, (P4554592586072369846.a n : ℤ) = A033297 (n + 2)

end A033297

/-! ## A033297.P3050508260885513302

`∑[A168491(n+1)]*A033999(n+1)`
-/

namespace A033297.P3050508260885513302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 1)

end

end A033297.P3050508260885513302

namespace A033297

/-- `∑[A168491(n+1)]*A033999(n+1)` -/
def P3050508260885513302.Spec : Prop :=
  ∀ n, P3050508260885513302.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P7100455386746094853

`A106249(2*n)+A032357(n+1)-A106249(2*n+1)`
-/

namespace A033297.P7100455386746094853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * n) + (A032357 (n + 1) - A106249 (2 * n + 1))

end

end A033297.P7100455386746094853

namespace A033297

/-- `A106249(2*n)+A032357(n+1)-A106249(2*n+1)` -/
def P7100455386746094853.Spec : Prop :=
  ∀ n, P7100455386746094853.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P14485850414617238194

`abs(∑[A129996(2*n)])`
-/

namespace A033297.P14485850414617238194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129996 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A033297.P14485850414617238194

namespace A033297

/-- `abs(∑[A129996(2*n)])` -/
def P14485850414617238194.Spec : Prop :=
  ∀ n, P14485850414617238194.a n = A033297 (n + 2)

end A033297

/-! ## A033297.P17776003950056749992

`2*A054109(n)-A331473(n)`
-/

namespace A033297.P17776003950056749992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054109 n - A331473 n

end

end A033297.P17776003950056749992

namespace A033297

/-- `2*A054109(n)-A331473(n)` -/
def P17776003950056749992.Spec : Prop :=
  ∀ n, P17776003950056749992.a n = A033297 (n + 2)

end A033297

/-!
# A033298: a(n+1) = a(n) + sum of digits of a(n)^2, with a(1) = 1.

The programs for A033298, there is no canonical definition to state claims against.
-/

/-! ## A033298.P7865613587749997993

`∑[A139417(n+1)]`
-/

namespace A033298.P7865613587749997993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033298.P7865613587749997993

/-! ## A033298.P14400629453582586115

`A000027(∑[A139417(Δ[n²]-n)])`
-/

namespace A033298.P14400629453582586115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139417 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033298.P14400629453582586115

/-! ## A033298.P14964980073659045869

`∑[A001076(((-1)^n)²)*A139417(Δ[n²]-n)]`
-/

namespace A033298.P14964980073659045869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (((-1) ^ n) ^ 2).toNat * A139417 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033298.P14964980073659045869

/-! ## A033298.P4552174227856359872

`A004159(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A033298.P4552174227856359872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004159 (a (n - 1)).toNat + a (n - 1)

end

end A033298.P4552174227856359872

/-! ## A033298.P17789263640327016332

`A028310(∑[A139417(Δ[n²]-n)])`
-/

namespace A033298.P17789263640327016332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139417 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033298.P17789263640327016332

/-!
# A033299: Smallest safe prime ((p-1)/2 is also prime) > n.

The programs for A033299, the canonical program `A033299.P7037079004765382286` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033299 has offset 1).

The definition of A033299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033299.P3916483306648561782

`A033300(A033270(n+1))`
-/

namespace A033299.P3916483306648561782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033300 (A033270 (n + 1)).toNat

end

end A033299.P3916483306648561782

namespace A033299

/-- `A033300(A033270(n+1))` -/
def P3916483306648561782.Spec : Prop :=
  ∀ n, P3916483306648561782.a n = A033299 (n + 1)

end A033299

/-! ## A033299.P7037079004765382286

`A005385(A156875(n+1)+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A033299

/-- `A005385(A156875(n+1)+1)` -/
def P7037079004765382286.Spec : Prop :=
  ∀ n, P7037079004765382286.a n = A033299 (n + 1)

theorem P7037079004765382286.correct : P7037079004765382286.Spec := by
  intro n
  simp only [A033299, Nat.add_sub_cancel]

end A033299

/-! ## A033299.P13412983923778653717

`A079148(A156875(n+1)+3)`
-/

namespace A033299.P13412983923778653717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (A156875 (n + 1) + 3).toNat

end

end A033299.P13412983923778653717

namespace A033299

/-- `A079148(A156875(n+1)+3)` -/
def P13412983923778653717.Spec : Prop :=
  ∀ n, P13412983923778653717.a n = A033299 (n + 1)

end A033299

/-! ## A033299.P16971166320129103809

`A033300(∑[char[A039915(n+2)]])`
-/

namespace A033299.P16971166320129103809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033300 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033299.P16971166320129103809

namespace A033299

/-- `A033300(∑[char[A039915(n+2)]])` -/
def P16971166320129103809.Spec : Prop :=
  ∀ n, P16971166320129103809.a n = A033299 (n + 1)

end A033299

/-! ## A033299.P11297145721217951009

`A033300(∑[A129950(n+1)^n])`
-/

namespace A033299.P11297145721217951009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033299.P11297145721217951009

namespace A033299

/-- `A033300(∑[A129950(n+1)^n])` -/
def P11297145721217951009.Spec : Prop :=
  ∀ n, P11297145721217951009.a n = A033299 (n + 1)

end A033299

/-! ## A033299.P8053181384311282959

`A005385(∑[char[A005385(n+1)-1]]+1)`
-/

namespace A033299.P8053181384311282959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A033299.P8053181384311282959

namespace A033299

/-- `A005385(∑[char[A005385(n+1)-1]]+1)` -/
def P8053181384311282959.Spec : Prop :=
  ∀ n, P8053181384311282959.a n = A033299 (n + 1)

end A033299

/-! ## A033299.P13688529721117411676

`A033300(A000720(n+1)-A157928(n))`
-/

namespace A033299.P13688529721117411676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033300 (A000720 (n + 1) - A157928 n).toNat

end

end A033299.P13688529721117411676

namespace A033299

/-- `A033300(A000720(n+1)-A157928(n))` -/
def P13688529721117411676.Spec : Prop :=
  ∀ n, P13688529721117411676.a n = A033299 (n + 1)

end A033299

/-! ## A033299.P13226749025111765069

`A033300(A000096(n)%A256885(n+1))`
-/

namespace A033299.P13226749025111765069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033300 (Int.tmod (A000096 n) (A256885 (n + 1))).toNat

end

end A033299.P13226749025111765069

namespace A033299

/-- `A033300(A000096(n)%A256885(n+1))` -/
def P13226749025111765069.Spec : Prop :=
  ∀ n, P13226749025111765069.a n = A033299 (n + 1)

end A033299

