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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A240600: Number of partially filled hexagons in the first 120-degree circular sector of hexagonal lattice A_2 centered at deep hole along the edge of a circle also centered at the deep hole.

The programs for A240600, there is no canonical definition to state claims against.
-/

/-! ## A240600.P3254938748439815891

`A225633(n)+A072401(A163683(n))`
-/

namespace A240600.P3254938748439815891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n + A072401 (A163683 n).toNat

end

end A240600.P3254938748439815891

/-! ## A240600.P12958448785331698160

`(A225633(n)+A096268(A163683(n)))%A269711(n)`
-/

namespace A240600.P12958448785331698160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225633 n + A096268 (A163683 n).toNat) (A269711 n)

end

end A240600.P12958448785331698160

/-! ## A240600.P14220993526240221129

`A000007(n+3)+A225633(n)+A096268(A163683(n))`
-/

namespace A240600.P14220993526240221129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 3) + (A225633 n + A096268 (A163683 n).toNat)

end

end A240600.P14220993526240221129

/-! ## A240600.P2229045295693614357

`A225633(n)+A096268(A163683(n))-A096268(2*(n+1))`
-/

namespace A240600.P2229045295693614357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 n + A096268 (A163683 n).toNat - A096268 (2 * (n + 1))

end

end A240600.P2229045295693614357

/-! ## A240600.P2007932289030555282

`(A225633(n)+A096268(A163683(n)))*A000035(2*n+1)`
-/

namespace A240600.P2007932289030555282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A225633 n + A096268 (A163683 n).toNat) * A000035 (2 * n + 1)

end

end A240600.P2007932289030555282

/-!
# A240601: Recursive palindromes in base 10: palindromes n where each half of the digits of n is also a recursive palindrome.

The programs for A240601, there is no canonical definition to state claims against.
-/

/-! ## A240601.P9047029588763242232

`filter[A033619(n+1), A136522(#)]`
-/

namespace A240601.P9047029588763242232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A240601.P9047029588763242232

/-! ## A240601.P6701405016571982153

`filter[A378560(n+1), A136522(#)]`
-/

namespace A240601.P6701405016571982153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A240601.P6701405016571982153

/-! ## A240601.P16593606575416028550

`record[A389005(A003602(3*n+2))]`
-/

namespace A240601.P16593606575416028550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389005 (A003602 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240601.P16593606575416028550

/-! ## A240601.P685880548667490582

`A266140(n+1)*A326674(A065217(n+1))`
-/

namespace A240601.P685880548667490582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266140 (n + 1) * A326674 (A065217 (n + 1)).toNat

end

end A240601.P685880548667490582

/-! ## A240601.P15453512813513253472

`A266140(n+1)%A152754(A292705(n+1))`
-/

namespace A240601.P15453512813513253472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266140 (n + 1)) (A152754 (A292705 (n + 1)).toNat)

end

end A240601.P15453512813513253472

/-!
# A240602: Recursive palindromes in base 2: palindromes n where each half of the digits of n is also a recursive palindrome.

The programs for A240602, there is no canonical definition to state claims against.
-/

/-! ## A240602.P724971487049941790

`A007088(A165785(n+1))`
-/

namespace A240602.P724971487049941790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A165785 (n + 1)).toNat

end

end A240602.P724971487049941790

/-! ## A240602.P6978928474615815746

`A305989(A054977(n)*A165785(n+1))`
-/

namespace A240602.P6978928474615815746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A054977 n * A165785 (n + 1)).toNat

end

end A240602.P6978928474615815746

/-! ## A240602.P2750866322208677493

`A305989(A165785(n+1)/A054977(n))`
-/

namespace A240602.P2750866322208677493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A165785 (n + 1) : ℚ) / (A054977 n : ℚ))).toNat

end

end A240602.P2750866322208677493

/-! ## A240602.P8845523988015167160

`A305989(A165785(n+1)%A000079(n))`
-/

namespace A240602.P8845523988015167160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.tmod (A165785 (n + 1)) (A000079 n)).toNat

end

end A240602.P8845523988015167160

/-! ## A240602.P105198450240808783

`A097256(A165785(n+1))/A000005(A006530(n+1)²)²`
-/

namespace A240602.P105198450240808783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 (A165785 (n + 1)).toNat : ℚ) / (A000005 (A006530 (n + 1) ^ 2).toNat ^ 2 : ℚ)

end

end A240602.P105198450240808783

/-!
# A240603: Numbers that are the sum of two successive squarefree numbers.

The programs for A240603, the canonical program `A240603.P623960276540613334` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240603 has offset 1).

The definition of A240603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240603.P623960276540613334

`A005117(n+1)+A005117(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240603

/-- `A005117(n+1)+A005117(n+2)` -/
def P623960276540613334.Spec : Prop :=
  ∀ n, P623960276540613334.a n = A240603 (n + 1)

theorem P623960276540613334.correct : P623960276540613334.Spec := by
  intro n
  simp only [A240603, Nat.add_sub_cancel]

end A240603

/-! ## A240603.P8871844257110214147

`A144338(n+1)+comp[A105570(n)]`
-/

namespace A240603.P8871844257110214147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A240603.P8871844257110214147

namespace A240603

/-- `A144338(n+1)+comp[A105570(n)]` -/
def P8871844257110214147.Spec : Prop :=
  ∀ n, P8871844257110214147.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P7030936409021352872

`A005117(n+2)+comp[A105570(n)]`
-/

namespace A240603.P7030936409021352872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A240603.P7030936409021352872

namespace A240603

/-- `A005117(n+2)+comp[A105570(n)]` -/
def P7030936409021352872.Spec : Prop :=
  ∀ n, P7030936409021352872.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P3623529235541689054

`eq[0, A087049(n)]+comp[A105570(n)]`
-/

namespace A240603.P3623529235541689054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

end

end A240603.P3623529235541689054

namespace A240603

/-- `eq[0, A087049(n)]+comp[A105570(n)]` -/
def P3623529235541689054.Spec : Prop :=
  ∀ n, (P3623529235541689054.a n : ℤ) = A240603 (n + 1)

end A240603

/-! ## A240603.P11373684223447437060

`A144338(n+1)+A005117(n+1)`
-/

namespace A240603.P11373684223447437060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1) + A005117 (n + 1)

end

end A240603.P11373684223447437060

namespace A240603

/-- `A144338(n+1)+A005117(n+1)` -/
def P11373684223447437060.Spec : Prop :=
  ∀ n, P11373684223447437060.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P4960871119020958702

`comp[A105570(n)]+record[A003967(n+2)]`
-/

namespace A240603.P4960871119020958702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A240603.P4960871119020958702

namespace A240603

/-- `comp[A105570(n)]+record[A003967(n+2)]` -/
def P4960871119020958702.Spec : Prop :=
  ∀ n, P4960871119020958702.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P3383137418239933090

`comp[A105570(n)]+record[A325978(n+2)]`
-/

namespace A240603.P3383137418239933090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A240603.P3383137418239933090

namespace A240603

/-- `comp[A105570(n)]+record[A325978(n+2)]` -/
def P3383137418239933090.Spec : Prop :=
  ∀ n, P3383137418239933090.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P11596729405750026487

`eq[0, A087049(n)]+sqrt(A062503(n+1))`
-/

namespace A240603.P11596729405750026487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℝ) + Real.sqrt (A062503 (n + 1) : ℝ)

end

end A240603.P11596729405750026487

namespace A240603

/-- `eq[0, A087049(n)]+sqrt(A062503(n+1))` -/
def P11596729405750026487.Spec : Prop :=
  ∀ n, P11596729405750026487.a n = (A240603 (n + 1) : ℝ)

end A240603

/-! ## A240603.P8850350126119303480

`eq[0, A087049(n)]+record[A003967(n+1)]`
-/

namespace A240603.P8850350126119303480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A240603.P8850350126119303480

namespace A240603

/-- `eq[0, A087049(n)]+record[A003967(n+1)]` -/
def P8850350126119303480.Spec : Prop :=
  ∀ n, P8850350126119303480.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P3914734102028296671

`eq[0, A087049(n)]+record[A083346(n+1)]`
-/

namespace A240603.P3914734102028296671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A240603.P3914734102028296671

namespace A240603

/-- `eq[0, A087049(n)]+record[A083346(n+1)]` -/
def P3914734102028296671.Spec : Prop :=
  ∀ n, P3914734102028296671.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P6977661423509551604

`eq[0, A087049(n)]+record[A325814(n+1)]`
-/

namespace A240603.P6977661423509551604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A240603.P6977661423509551604

namespace A240603

/-- `eq[0, A087049(n)]+record[A325814(n+1)]` -/
def P6977661423509551604.Spec : Prop :=
  ∀ n, P6977661423509551604.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P13655079351651071963

`eq[0, A087049(n)]+record[A325978(n+1)]`
-/

namespace A240603.P13655079351651071963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A240603.P13655079351651071963

namespace A240603

/-- `eq[0, A087049(n)]+record[A325978(n+1)]` -/
def P13655079351651071963.Spec : Prop :=
  ∀ n, P13655079351651071963.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P12415095933881265422

`2*A144338(n+1)-A076259(n+1)`
-/

namespace A240603.P12415095933881265422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144338 (n + 1) - A076259 (n + 1)

end

end A240603.P12415095933881265422

namespace A240603

/-- `2*A144338(n+1)-A076259(n+1)` -/
def P12415095933881265422.Spec : Prop :=
  ∀ n, P12415095933881265422.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P12226700182259823354

`record[A003967(n+2)]+sqrt(A062503(n+1))`
-/

namespace A240603.P12226700182259823354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) + Real.sqrt (A062503 (n + 1) : ℝ)

end

end A240603.P12226700182259823354

namespace A240603

/-- `record[A003967(n+2)]+sqrt(A062503(n+1))` -/
def P12226700182259823354.Spec : Prop :=
  ∀ n, P12226700182259823354.a n = (A240603 (n + 1) : ℝ)

end A240603

/-! ## A240603.P9228545664316218264

`record[A003967(n+1)]+record[A003967(n+2)]`
-/

namespace A240603.P9228545664316218264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A240603.P9228545664316218264

namespace A240603

/-- `record[A003967(n+1)]+record[A003967(n+2)]` -/
def P9228545664316218264.Spec : Prop :=
  ∀ n, P9228545664316218264.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P10414712681102332679

`record[A007913(n+2)]+record[A007913(n+1)]`
-/

namespace A240603.P10414712681102332679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A240603.P10414712681102332679

namespace A240603

/-- `record[A007913(n+2)]+record[A007913(n+1)]` -/
def P10414712681102332679.Spec : Prop :=
  ∀ n, P10414712681102332679.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P1074789113460283892

`record[A007947(n+1)]+record[A007947(n+2)]`
-/

namespace A240603.P1074789113460283892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A240603.P1074789113460283892

namespace A240603

/-- `record[A007947(n+1)]+record[A007947(n+2)]` -/
def P1074789113460283892.Spec : Prop :=
  ∀ n, P1074789113460283892.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P17097317455269829674

`record[A055231(n+2)]+record[A055231(n+1)]`
-/

namespace A240603.P17097317455269829674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A240603.P17097317455269829674

namespace A240603

/-- `record[A055231(n+2)]+record[A055231(n+1)]` -/
def P17097317455269829674.Spec : Prop :=
  ∀ n, P17097317455269829674.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P2600091395699025053

`A144338(n+1)+∪[A144338(n+1), A001779(n)]`
-/

namespace A240603.P2600091395699025053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A240603.P2600091395699025053

namespace A240603

/-- `A144338(n+1)+∪[A144338(n+1), A001779(n)]` -/
def P2600091395699025053.Spec : Prop :=
  ∀ n, P2600091395699025053.a n = A240603 (n + 1)

end A240603

/-! ## A240603.P6016083432261280977

`A144338(n+1)+∪[A144338(n+1), A002604(n)]`
-/

namespace A240603.P6016083432261280977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A240603.P6016083432261280977

namespace A240603

/-- `A144338(n+1)+∪[A144338(n+1), A002604(n)]` -/
def P6016083432261280977.Spec : Prop :=
  ∀ n, P6016083432261280977.a n = A240603 (n + 1)

end A240603

/-!
# A240605: Total number of distinct sequences for the number of double occupancy in the underlying Fermion problem (see comment), i.e., the number of distinct hopping sequences (cf. A198761, A225823) in four-colored rooted trees with n nodes, starting and ending with the same coloring in two colors (cf. A198760, corresponding to zero double-occupancy).

The programs for A240605, there is no canonical definition to state claims against.
-/

/-! ## A240605.P17989357538175308797

`A005206(A002893(n)-n)+n`
-/

namespace A240605.P17989357538175308797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A002893 n - (n : ℤ)).toNat + (n : ℤ)

end

end A240605.P17989357538175308797

/-! ## A240605.P16376817787011520491

`A083920(A196794(n)+char[n*Δ[char[∑[n]]]²])`
-/

namespace A240605.P16376817787011520491
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A196794 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A240605.P16376817787011520491

/-!
# A240606: Let the prime factorization of (2*n)! be 2^e_1*3^e_2*5^e_3*...; then a(n) = maximal k such that e_1, ..., e_k are all even.

The programs for A240606, there is no canonical definition to state claims against.
-/

/-! ## A240606.P8401106414792544311

`A304818(A118486(2*(n+1)))-1`
-/

namespace A240606.P8401106414792544311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (A118486 (2 * (n + 1))).toNat - 1

end

end A240606.P8401106414792544311

/-! ## A240606.P17199234078646413321

`val(A336510(2*(n+1)), 2)`
-/

namespace A240606.P17199234078646413321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336510 (2 * (n + 1))).toNat 2

end

end A240606.P17199234078646413321

/-! ## A240606.P9364724013457958801

`val(A336510(n+2+n)², 4)`
-/

namespace A240606.P9364724013457958801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336510 (n + 2 + n) ^ 2).toNat 4

end

end A240606.P9364724013457958801

/-! ## A240606.P12209149794608022478

`log2(gcd(A000079(n), A336510(2*(n+1))))`
-/

namespace A240606.P12209149794608022478
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A336510 (2 * (n + 1))) : ℝ)

end

end A240606.P12209149794608022478

/-! ## A240606.P17341908023568043863

`A007814(A336510(2*(n+1)))`
-/

namespace A240606.P17341908023568043863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A336510 (2 * (n + 1))).toNat

end

end A240606.P17341908023568043863

/-!
# A240607: a(n) = 2*a(n-2) + a(n-3) + a(n-4) for n>=4, a(n) = binomial(n,3) for n<4.

The programs for A240607, the canonical program `A240607.P9605552413643349258` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240607 has offset 0).

The definition of A240607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+a(n-3)+a(n-4)` (program `A240607.P9605552413643349258`, by `A240607.P9605552413643349258.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240607.P8562106425110982941

`ogf(x^3/(1-2x^2-x^3-x^4))`
-/

namespace A240607.P8562106425110982941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, 0, -2, -1, -1] n

end

end A240607.P8562106425110982941

namespace A240607

/-- `ogf(x^3/(1-2x^2-x^3-x^4))` -/
def P8562106425110982941.Spec : Prop :=
  ∀ n, P8562106425110982941.a n = A240607 n

end A240607

/-! ## A240607.P9605552413643349258

`2*a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240607

/-- `2*a(n-2)+a(n-3)+a(n-4)` -/
def P9605552413643349258.Spec : Prop :=
  ∀ n, (P9605552413643349258.a n : ℤ) = A240607 n

theorem P9605552413643349258.correct : P9605552413643349258.Spec := by
  intro n
  simp only [A240607]

end A240607

/-! ## A240607.P5752222952057315397

`a(n-2)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A240607.P5752222952057315397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 3) + a (n - 4)))

end

end A240607.P5752222952057315397

namespace A240607

/-- `a(n-2)+a(n-2)+a(n-3)+a(n-4)` -/
def P5752222952057315397.Spec : Prop :=
  ∀ n, (P5752222952057315397.a n : ℤ) = A240607 n

theorem P5752222952057315397.correct : P5752222952057315397.Spec := by
  intro n
  simp only [A240607, Nat.add_sub_cancel, A240607.P5752222952057315397.a, A240607.P9605552413643349258.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A240607

/-!
# A240608: Number A(n,k) of n-length words w over a k-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A240608, there is no canonical definition to state claims against.
-/

/-! ## A240608.P15783881412214584969

`A193494(A247506(n)%A145338(n))`
-/

namespace A240608.P15783881412214584969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 (Int.tmod (A247506 n) (A145338 n)).toNat

end

end A240608.P15783881412214584969

/-! ## A240608.P7777964430197922688

`A193494(A247506(n))^(A000038(6*n²)+1)`
-/

namespace A240608.P7777964430197922688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193494 (A247506 n).toNat : ℚ) ^ (A000038 (6 * n ^ 2) + 1 : ℤ)

end

end A240608.P7777964430197922688

/-! ## A240608.P7440840199749735704

`A193494(A247506(n))+A000007(A005897(n))`
-/

namespace A240608.P7440840199749735704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 (A247506 n).toNat + A000007 (A005897 n).toNat

end

end A240608.P7440840199749735704

/-! ## A240608.P5824346756648665338

`A080934(n)-A011731(A249618(n))`
-/

namespace A240608.P5824346756648665338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 n - A011731 (A249618 n).toNat

end

end A240608.P5824346756648665338

/-! ## A240608.P9303550610369197705

`A068063(A080934(n)²)`
-/

namespace A240608.P9303550610369197705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A080934 n ^ 2).toNat

end

end A240608.P9303550610369197705

/-!
# A240609: Number of n-length words w over a 3-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A240609, the canonical program `A240609.P9554572774244923858` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240609 has offset 0).

The definition of A240609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240609.P9554572774244923858

`A342912(n+1)+A005043(n)-A082397(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240609

/-- `A342912(n+1)+A005043(n)-A082397(n+1)` -/
def P9554572774244923858.Spec : Prop :=
  ∀ n, P9554572774244923858.a n = A240609 n

theorem P9554572774244923858.correct : P9554572774244923858.Spec := by
  intro n
  simp only [A240609]

end A240609

/-! ## A240609.P11779858910437094985

`A005043(n+3)-(∑[A005043(n+2)]-A005043(n))`
-/

namespace A240609.P11779858910437094985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 3) - (∑ j ∈ Finset.range (n + 1), f1 j - A005043 n)

end

end A240609.P11779858910437094985

namespace A240609

/-- `A005043(n+3)-(∑[A005043(n+2)]-A005043(n))` -/
def P11779858910437094985.Spec : Prop :=
  ∀ n, P11779858910437094985.a n = A240609 n

end A240609

/-! ## A240609.P5849807226405002264

`A240608(∑[n+4]+2)`
-/

namespace A240609.P5849807226405002264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240609.P5849807226405002264

namespace A240609

/-- `A240608(∑[n+4]+2)` -/
def P5849807226405002264.Spec : Prop :=
  ∀ n, P5849807226405002264.a n = A240609 n

end A240609

/-! ## A240609.P16796646765914800600

`lcm(A033999(n), A240608(A155212(n)+4))`
-/

namespace A240609.P16796646765914800600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A240608 (A155212 n + 4).toNat)

end

end A240609.P16796646765914800600

namespace A240609

/-- `lcm(A033999(n), A240608(A155212(n)+4))` -/
def P16796646765914800600.Spec : Prop :=
  ∀ n, (P16796646765914800600.a n : ℤ) = A240609 n

end A240609

/-! ## A240609.P12160517069464139766

`lcm(A020985(n), A240608(A056000(n)+6))`
-/

namespace A240609.P12160517069464139766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A240608 (A056000 n + 6).toNat)

end

end A240609.P12160517069464139766

namespace A240609

/-- `lcm(A020985(n), A240608(A056000(n)+6))` -/
def P12160517069464139766.Spec : Prop :=
  ∀ n, (P12160517069464139766.a n : ℤ) = A240609 n

end A240609

/-!
# A240610: Number of n-length words w over a 4-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A240610, there is no canonical definition to state claims against.
-/

/-! ## A240610.P4233015384054245297

`A240608(∑[n+5]+5)`
-/

namespace A240610.P4233015384054245297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A240610.P4233015384054245297

/-! ## A240610.P17525573854304346123

`a(A008683(n)²)²*A240608(A052905(n+2))` with `a(0)=1, a(1)=1`
-/

namespace A240610.P17525573854304346123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A008683 n ^ 2).toNat ^ 2 * A240608 (A052905 (n + 2)).toNat

end

end A240610.P17525573854304346123

/-! ## A240610.P17916438381755438270

`A000041(val(n+1, 6))*A240608(A027379(n+3)-2)`
-/

namespace A240610.P17916438381755438270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 6) * A240608 (A027379 (n + 3) - 2).toNat

end

end A240610.P17916438381755438270

/-! ## A240610.P8440941970911493685

`A000010(A014963(2*(n+1)))*A240608(A052905(n+2))`
-/

namespace A240610.P8440941970911493685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * (n + 1))).toNat * A240608 (A052905 (n + 2)).toNat

end

end A240610.P8440941970911493685

/-! ## A240610.P8247166218577767144

`A008683(A005117(2*(n+1)))²*A240608(A052905(n+2))`
-/

namespace A240610.P8247166218577767144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (2 * (n + 1))).toNat ^ 2 * A240608 (A052905 (n + 2)).toNat

end

end A240610.P8247166218577767144

/-!
# A240611: Number of n-length words w over a 5-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A240611, there is no canonical definition to state claims against.
-/

/-! ## A240611.P13881486971524208825

`A240608(A055999(n+3))`
-/

namespace A240611.P13881486971524208825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A055999 (n + 3)).toNat

end

end A240611.P13881486971524208825

/-! ## A240611.P13655236323885315329

`A240608(A056119(n)+15)`
-/

namespace A240611.P13655236323885315329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A056119 n + 15).toNat

end

end A240611.P13655236323885315329

/-! ## A240611.P10085709625131619725

`A240608(Δ[A023551(n+1)])`
-/

namespace A240611.P10085709625131619725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (f1 (n + 1) - f1 n).toNat

end

end A240611.P10085709625131619725

/-! ## A240611.P11006431727065015434

`A240608(A052905(n+3)-1)`
-/

namespace A240611.P11006431727065015434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A052905 (n + 3) - 1).toNat

end

end A240611.P11006431727065015434

/-! ## A240611.P15529728683423827442

`A240608(A056000(n+2)+4)`
-/

namespace A240611.P15529728683423827442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A056000 (n + 2) + 4).toNat

end

end A240611.P15529728683423827442

/-!
# A240612: Number of n-length words w over a 6-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A240612, there is no canonical definition to state claims against.
-/

/-! ## A240612.P5748233953470517498

`A240608(A052905(n+4)-2)`
-/

namespace A240612.P5748233953470517498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A052905 (n + 4) - 2).toNat

end

end A240612.P5748233953470517498

/-! ## A240612.P14163853300728700370

`A240608(A000217(n+7)-7)`
-/

namespace A240612.P14163853300728700370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A000217 (n + 7) - 7).toNat

end

end A240612.P14163853300728700370

/-! ## A240612.P5420426563266746984

`A240608(eq[7, A004736(n+1)])`
-/

namespace A240612.P5420426563266746984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240612.P5420426563266746984

/-! ## A240612.P12912177305298689362

`A240608(A000096(n+5)+n+1)`
-/

namespace A240612.P12912177305298689362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A240612.P12912177305298689362

/-! ## A240612.P2340835086919401689

`A240608(2*n+A000217(n+5)+6)`
-/

namespace A240612.P2340835086919401689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 ((2 * n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A240612.P2340835086919401689

/-!
# A240613: Number of n-length words w over a 7-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A240613, there is no canonical definition to state claims against.
-/

/-! ## A240613.P1478721452474828272

`A240608(A155212(n+4))`
-/

namespace A240613.P1478721452474828272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A155212 (n + 4)).toNat

end

end A240613.P1478721452474828272

/-! ## A240613.P14967528519992924940

`A240608(eq[15, A099375(n)])`
-/

namespace A240613.P14967528519992924940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240613.P14967528519992924940

/-! ## A240613.P9431533128153216043

`A240608(A052905(n+5)-3)`
-/

namespace A240613.P9431533128153216043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A052905 (n + 5) - 3).toNat

end

end A240613.P9431533128153216043

/-! ## A240613.P3989036811955870129

`A240608(A000217(n+8)-8)`
-/

namespace A240613.P3989036811955870129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A000217 (n + 8) - 8).toNat

end

end A240613.P3989036811955870129

/-! ## A240613.P17385494551862468135

`A240608(eq[8, A004736(n+1)])`
-/

namespace A240613.P17385494551862468135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240613.P17385494551862468135

/-!
# A240614: Number of n-length words w over an 8-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A240614, there is no canonical definition to state claims against.
-/

/-! ## A240614.P18323749941329310377

`A240608(A052905(n+6)-4)`
-/

namespace A240614.P18323749941329310377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A052905 (n + 6) - 4).toNat

end

end A240614.P18323749941329310377

/-! ## A240614.P657772524590683310

`A240608(A000217(n+9)-9)`
-/

namespace A240614.P657772524590683310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A000217 (n + 9) - 9).toNat

end

end A240614.P657772524590683310

/-! ## A240614.P16677775962433812868

`A240608(A112353(n+1)+n)`
-/

namespace A240614.P16677775962433812868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A112353 (n + 1) + (n : ℤ)).toNat

end

end A240614.P16677775962433812868

/-! ## A240614.P10237602127129328709

`A240608(A027379(n+6)+n+3)`
-/

namespace A240614.P10237602127129328709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A027379 (n + 6) + (n + 3 : ℤ)).toNat

end

end A240614.P10237602127129328709

/-! ## A240614.P18039240508246548781

`A240608(A000124(n+8)+n-1)`
-/

namespace A240614.P18039240508246548781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A240614.P18039240508246548781

/-!
# A240615: Number of n-length words w over a 9-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A240615, there is no canonical definition to state claims against.
-/

/-! ## A240615.P4553394051372123344

`A240608(A056000(n+6))`
-/

namespace A240615.P4553394051372123344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A056000 (n + 6)).toNat

end

end A240615.P4553394051372123344

/-! ## A240615.P3093588138961120967

`A240608(A055999(n+7)-4)`
-/

namespace A240615.P3093588138961120967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A055999 (n + 7) - 4).toNat

end

end A240615.P3093588138961120967

/-! ## A240615.P9049551908255936507

`A240608(A052905(n+7)-5)`
-/

namespace A240615.P9049551908255936507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A052905 (n + 7) - 5).toNat

end

end A240615.P9049551908255936507

/-! ## A240615.P6150742460921624641

`A240608(A000217(n+10)-10)`
-/

namespace A240615.P6150742460921624641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A000217 (n + 10) - 10).toNat

end

end A240615.P6150742460921624641

/-! ## A240615.P5425407961490347660

`A240608(eq[10, A004736(n+1)])`
-/

namespace A240615.P5425407961490347660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240615.P5425407961490347660

/-!
# A240616: Number of n-length words w over a 10-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A240616, there is no canonical definition to state claims against.
-/

/-! ## A240616.P12599169806197136760

`A240608(eq[10, A025581(n)])`
-/

namespace A240616.P12599169806197136760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240616.P12599169806197136760

/-! ## A240616.P9131480405807406824

`A240608(A027379(n+9)-8)`
-/

namespace A240616.P9131480405807406824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A027379 (n + 9) - 8).toNat

end

end A240616.P9131480405807406824

/-! ## A240616.P10922045249387826664

`A240608(eq[11, A004736(n+1)])`
-/

namespace A240616.P10922045249387826664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240616.P10922045249387826664

/-! ## A240616.P8918551322822381023

`A240608(A028387(n+6)-A055999(n))`
-/

namespace A240616.P8918551322822381023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A028387 (n + 6) - A055999 n).toNat

end

end A240616.P8918551322822381023

/-! ## A240616.P9657989346139226857

`A240608(A133263(n+9)+A005843(n+4))`
-/

namespace A240616.P9657989346139226857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A133263 (n + 9) + A005843 (n + 4)).toNat

end

end A240616.P9657989346139226857

/-!
# A240617: Number of n-length words w over an n-ary alphabet such that w is empty or a prefix z concatenated with letter a_i and i=1 or 0 < #(z,a_{i-1}) >= #(z,a_i), where #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A240617, there is no canonical definition to state claims against.
-/

/-! ## A240617.P14113394367704843664

`A240608(∑[4*n])`
-/

namespace A240617.P14113394367704843664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240617.P14113394367704843664

/-! ## A240617.P1542157022110676744

`or(A000007(n), A240608(A046092(n)))`
-/

namespace A240617.P1542157022110676744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A240608 (A046092 n).toNat)

end

end A240617.P1542157022110676744

/-! ## A240617.P11632732589680901023

`A240608(A046092(n))+A000007(n+1)`
-/

namespace A240617.P11632732589680901023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A046092 n).toNat + A000007 (n + 1)

end

end A240617.P11632732589680901023

/-! ## A240617.P881635511705532919

`A240608(A046092(n))+A000038(n+1)`
-/

namespace A240617.P881635511705532919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (A046092 n).toNat + A000038 (n + 1)

end

end A240617.P881635511705532919

/-! ## A240617.P18377430816745368336

`or(A000038(n)/2, A240608(A046092(n)))`
-/

namespace A240617.P18377430816745368336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2)) (A240608 (A046092 n).toNat)

end

end A240617.P18377430816745368336

/-!
# A240618: Primes p such that p*q*r + 2 is prime, where q and r are the next two primes after p.

The programs for A240618, there is no canonical definition to state claims against.
-/

/-! ## A240618.P4384473445716600185

`p?[A118774(n+1)%A225868(A118496(n+1))]`
-/

namespace A240618.P4384473445716600185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118774 (n + 1)) (A225868 (A118496 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240618.P4384473445716600185

/-!
# A240619: Positions of records in A240606.

The programs for A240619, there is no canonical definition to state claims against.
-/

/-! ## A240619.P14164113690566122757

`A241786(record[A240606(n+1)])`
-/

namespace A240619.P14164113690566122757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241786 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240619.P14164113690566122757

/-! ## A240619.P1978766826531274203

`A038572(A240620(n+1)^A048766(n))`
-/

namespace A240619.P1978766826531274203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (SequenceMachineLib.roundAway ((A240620 (n + 1) : ℚ) ^ (A048766 n : ℤ))).toNat

end

end A240619.P1978766826531274203

/-! ## A240619.P6446498654902470217

`A273943(A240620(n+1)^A048766(n))`
-/

namespace A240619.P6446498654902470217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.roundAway ((A240620 (n + 1) : ℚ) ^ (A048766 n : ℤ))).toNat

end

end A240619.P6446498654902470217

/-! ## A240619.P17262099138428283010

`A038572(C(A240620(n+1), A048766(n)))`
-/

namespace A240619.P17262099138428283010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Nat.choose (A240620 (n + 1)).toNat (A048766 n).toNat)

end

end A240619.P17262099138428283010

/-!
# A240620: a(n) is the smallest k such that in the prime power factorization of k! at least the first n positive exponents are even.

The programs for A240620, there is no canonical definition to state claims against.
-/

/-! ## A240620.P10223986642695298220

`A005843(A240619(n+1)+floor(acot(n)²))`
-/

namespace A240620.P10223986642695298220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A240619 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋).toNat

end

end A240620.P10223986642695298220

/-! ## A240620.P4508894194650344092

`A004277(A240619(n+1)+A000038(n))`
-/

namespace A240620.P4508894194650344092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A240619 (n + 1) + A000038 n).toNat

end

end A240620.P4508894194650344092

/-! ## A240620.P12333181299601915821

`A005843(A240619(n+1)+A000038(n))`
-/

namespace A240620.P12333181299601915821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A240619 (n + 1) + A000038 n).toNat

end

end A240620.P12333181299601915821

/-! ## A240620.P16153936504775183836

`A005843(A240619(n+1)+A130706(n+1))`
-/

namespace A240620.P16153936504775183836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A240619 (n + 1) + A130706 (n + 1)).toNat

end

end A240620.P16153936504775183836

/-!
# A240623: Prime numbers n such that replacing each digit d in the decimal expansion of n with d^d produces a prime. Zeros are allowed with the convention 0^0 = 1.

The programs for A240623, there is no canonical definition to state claims against.
-/

/-! ## A240623.P14902109923494115415

`record[A240624(A161904(n+1))]`
-/

namespace A240623.P14902109923494115415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240624 (A161904 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240623.P14902109923494115415

/-! ## A240623.P16939737271913544215

`A225530(A240624(n+1))+1`
-/

namespace A240623.P16939737271913544215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A240624 (n + 1)).toNat + 1

end

end A240623.P16939737271913544215

/-! ## A240623.P10628847414585609401

`A240624(n+1)%A331011(2*(n+2))`
-/

namespace A240623.P10628847414585609401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240624 (n + 1)) (A331011 (2 * (n + 2)))

end

end A240623.P10628847414585609401

/-! ## A240623.P11315560215123805580

`A240624(n+1)+A000007(A089408(n))`
-/

namespace A240623.P11315560215123805580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240624 (n + 1) + A000007 (A089408 n).toNat

end

end A240623.P11315560215123805580

/-! ## A240623.P2414957622612794915

`A240624(n+1)+A000007(A107719(n))`
-/

namespace A240623.P2414957622612794915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240624 (n + 1) + A000007 (A107719 n).toNat

end

end A240623.P2414957622612794915

/-!
# A240624: Prime numbers n such that replacing each digit d in the decimal expansion of n with d^d produces a prime. Zeros are not allowed.

The programs for A240624, there is no canonical definition to state claims against.
-/

/-! ## A240624.P13378243257139423307

`∩[A038618(n+1), A240623(n+1)]`
-/

namespace A240624.P13378243257139423307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240624.P13378243257139423307

/-! ## A240624.P14980673666387885476

`∩[A195943(n+1), A240623(n+1)]`
-/

namespace A240624.P14980673666387885476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240624.P14980673666387885476

/-! ## A240624.P2644040710328515631

`∩[A240623(n+1), A392375(n+1)]`
-/

namespace A240624.P2644040710328515631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240624.P2644040710328515631

/-! ## A240624.P17725687828488169033

`∩[A061116(n+1), A240623(n+1)]`
-/

namespace A240624.P17725687828488169033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240624.P17725687828488169033

/-! ## A240624.P4753415882601897855

`filter[A240623(n+1), A209929(#)]`
-/

namespace A240624.P4753415882601897855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A240624.P4753415882601897855

/-! ## A240624.P1075296127568673271

`record[A004719(A240623(n+1))]`
-/

namespace A240624.P1075296127568673271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A240623 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240624.P1075296127568673271

/-! ## A240624.P18297216624405154635

`filter[A240623(n+1), A168046(#)]`
-/

namespace A240624.P18297216624405154635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A240624.P18297216624405154635

/-!
# A240625: Number of nX2 0..3 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240625, there is no canonical definition to state claims against.
-/

/-! ## A240625.P8036589177109344670

`A240629(∑[n+1]+2)`
-/

namespace A240625.P8036589177109344670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240625.P8036589177109344670

/-! ## A240625.P653465418925935248

`record[A240629(abs(A201163(n)))]`
-/

namespace A240625.P653465418925935248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240625.P653465418925935248

/-! ## A240625.P11559783689229740085

`record[A240629(A198455(n+1))]`
-/

namespace A240625.P11559783689229740085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240625.P11559783689229740085

/-! ## A240625.P8643607619132232815

`record[gcd(A240629(n+2), A287416(n+4))]`
-/

namespace A240625.P8643607619132232815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240629 (n + 2)) (A287416 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240625.P8643607619132232815

/-! ## A240625.P5109964976300813040

`record[A240629(A198453(n+1))]`
-/

namespace A240625.P5109964976300813040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240625.P5109964976300813040

/-!
# A240626: Number of nX3 0..3 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240626, there is no canonical definition to state claims against.
-/

/-! ## A240626.P12819886308522125709

`A240629(∑[n+2]+4)`
-/

namespace A240626.P12819886308522125709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240626.P12819886308522125709

/-! ## A240626.P6981160657060544914

`or(char[1], A240629(A167499(n)+n))`
-/

namespace A240626.P6981160657060544914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240629 (A167499 n + (n : ℤ)).toNat)

end

end A240626.P6981160657060544914

/-! ## A240626.P14399312406162331063

`A240629(A167614(n+1))+A185238(n)`
-/

namespace A240626.P14399312406162331063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A167614 (n + 1)).toNat + A185238 n

end

end A240626.P14399312406162331063

/-! ## A240626.P13085501286405492902

`A240629(A167614(n+1))+A185284(n)`
-/

namespace A240626.P13085501286405492902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A167614 (n + 1)).toNat + A185284 n

end

end A240626.P13085501286405492902

/-! ## A240626.P3330803737226757302

`A240629(A167614(n+1))+A070202(n+1)`
-/

namespace A240626.P3330803737226757302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A167614 (n + 1)).toNat + A070202 (n + 1)

end

end A240626.P3330803737226757302

/-!
# A240627: Number of nX4 0..3 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240627, there is no canonical definition to state claims against.
-/

/-! ## A240627.P6972689273477881698

`A240629(A374004(n+1))`
-/

namespace A240627.P6972689273477881698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A374004 (n + 1)).toNat

end

end A240627.P6972689273477881698

/-! ## A240627.P480940743986334778

`A240629(A141214(n)+7)`
-/

namespace A240627.P480940743986334778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A141214 n + 7).toNat

end

end A240627.P480940743986334778

/-! ## A240627.P11578706431844025754

`A240629(A052905(n)+9)`
-/

namespace A240627.P11578706431844025754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A052905 n + 9).toNat

end

end A240627.P11578706431844025754

/-! ## A240627.P4642392247465478717

`A240629(A055999(n)+10)`
-/

namespace A240627.P4642392247465478717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A055999 n + 10).toNat

end

end A240627.P4642392247465478717

/-! ## A240627.P7423766642854638171

`A240629(A167614(n+2)+1)`
-/

namespace A240627.P7423766642854638171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A167614 (n + 2) + 1).toNat

end

end A240627.P7423766642854638171

/-!
# A240628: Number of n X 5 0..3 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240628, there is no canonical definition to state claims against.
-/

/-! ## A240628.P4125626922890876605

`A240629(A374005(n+1))`
-/

namespace A240628.P4125626922890876605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A374005 (n + 1)).toNat

end

end A240628.P4125626922890876605

/-! ## A240628.P12760211326332844975

`A240629(A056000(n)+15)`
-/

namespace A240628.P12760211326332844975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (A056000 n + 15).toNat

end

end A240628.P12760211326332844975

/-! ## A240628.P5992437007395453241

`A240629(eq[6, A131818(n+1)])`
-/

namespace A240628.P5992437007395453241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240628.P5992437007395453241

/-! ## A240628.P16818199712320992143

`A240629(Δ[A264443(n)])`
-/

namespace A240628.P16818199712320992143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (f1 (n + 1) - f1 n).toNat

end

end A240628.P16818199712320992143

/-!
# A240629: T(n,k)=Number of nXk 0..3 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240629, there is no canonical definition to state claims against.
-/

/-! ## A240629.P4009440129184695753

`A222842(n+1)+A001221(A000110(n+1))`
-/

namespace A240629.P4009440129184695753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222842 (n + 1) + A001221 (A000110 (n + 1)).toNat

end

end A240629.P4009440129184695753

/-!
# A240630: Number of n X n 0..1 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240630, there is no canonical definition to state claims against.
-/

/-! ## A240630.P2823983881690138758

`A240636(∑[4*n]+1)`
-/

namespace A240630.P2823983881690138758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240630.P2823983881690138758

/-! ## A240630.P14736413484674171438

`record[gcd(A037012(n), A240636(n+1))]`
-/

namespace A240630.P14736413484674171438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A240636 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240630.P14736413484674171438

/-! ## A240630.P17434378718490756934

`A240636(A001844(n))+A056965(n)`
-/

namespace A240630.P17434378718490756934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A001844 n).toNat + A056965 n

end

end A240630.P17434378718490756934

/-! ## A240630.P18400319696405288604

`A043562(n)*A240636(A001844(n))`
-/

namespace A240630.P18400319696405288604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A240636 (A001844 n).toNat

end

end A240630.P18400319696405288604

/-! ## A240630.P15453347242754020182

`A043568(n)*A240636(A001844(n))`
-/

namespace A240630.P15453347242754020182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A240636 (A001844 n).toNat

end

end A240630.P15453347242754020182

/-!
# A240631: Number of n X 3 0..1 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240631, the canonical program `A240631.P9500190475712439154` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240631 has offset 1).

The definition of A240631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240631.P9500190475712439154

`ogf((4+9x+13x^2+13x^3+5x^4-3x^5-2x^6-x^7)/(1-4x-4x^2-2x^3-7x^4-6x^5+x^6+x^7+x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240631

/-- `ogf((4+9x+13x^2+13x^3+5x^4-3x^5-2x^6-x^7)/(1-4x-4x^2-2x^3-7x^4-6x^5+x^6+x^7+x^8))` -/
def P9500190475712439154.Spec : Prop :=
  ∀ n, P9500190475712439154.a n = A240631 (n + 1)

theorem P9500190475712439154.correct : P9500190475712439154.Spec := by
  intro n
  simp only [A240631, Nat.add_sub_cancel]

end A240631

/-! ## A240631.P18343724297261725310

`A240636(∑[n+2]+4)`
-/

namespace A240631.P18343724297261725310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240631.P18343724297261725310

namespace A240631

/-- `A240636(∑[n+2]+4)` -/
def P18343724297261725310.Spec : Prop :=
  ∀ n, P18343724297261725310.a n = A240631 (n + 1)

end A240631

/-! ## A240631.P1362914694205687968

`A240636(A167614(n+1))+A185284(n)`
-/

namespace A240631.P1362914694205687968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A167614 (n + 1)).toNat + A185284 n

end

end A240631.P1362914694205687968

namespace A240631

/-- `A240636(A167614(n+1))+A185284(n)` -/
def P1362914694205687968.Spec : Prop :=
  ∀ n, P1362914694205687968.a n = A240631 (n + 1)

end A240631

/-! ## A240631.P16113158193351670427

`A240636(A167614(n+1))*A287091(n)`
-/

namespace A240631.P16113158193351670427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A167614 (n + 1)).toNat * A287091 n

end

end A240631.P16113158193351670427

namespace A240631

/-- `A240636(A167614(n+1))*A287091(n)` -/
def P16113158193351670427.Spec : Prop :=
  ∀ n, P16113158193351670427.a n = A240631 (n + 1)

end A240631

/-! ## A240631.P2829349468738688730

`lcm(A033999(n), A240636(A167614(n+1)))`
-/

namespace A240631.P2829349468738688730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A240636 (A167614 (n + 1)).toNat)

end

end A240631.P2829349468738688730

namespace A240631

/-- `lcm(A033999(n), A240636(A167614(n+1)))` -/
def P2829349468738688730.Spec : Prop :=
  ∀ n, (P2829349468738688730.a n : ℤ) = A240631 (n + 1)

end A240631

/-!
# A240632: Number of nX4 0..1 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240632, there is no canonical definition to state claims against.
-/

/-! ## A240632.P3269615995397016406

`A240636(A374004(n+1))`
-/

namespace A240632.P3269615995397016406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A374004 (n + 1)).toNat

end

end A240632.P3269615995397016406

/-! ## A240632.P4218204590303836279

`A240636(A141214(n)+7)`
-/

namespace A240632.P4218204590303836279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A141214 n + 7).toNat

end

end A240632.P4218204590303836279

/-! ## A240632.P15351338240013466158

`A240636(A052905(n)+9)`
-/

namespace A240632.P15351338240013466158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A052905 n + 9).toNat

end

end A240632.P15351338240013466158

/-! ## A240632.P3325266718063992612

`A240636(A055999(n)+10)`
-/

namespace A240632.P3325266718063992612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A055999 n + 10).toNat

end

end A240632.P3325266718063992612

/-! ## A240632.P10620963875972337840

`A240636(A167614(n+2)+1)`
-/

namespace A240632.P10620963875972337840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A167614 (n + 2) + 1).toNat

end

end A240632.P10620963875972337840

/-!
# A240633: Number of nX5 0..1 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240633, there is no canonical definition to state claims against.
-/

/-! ## A240633.P10484921857380446445

`A240636(A374005(n+1))`
-/

namespace A240633.P10484921857380446445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A374005 (n + 1)).toNat

end

end A240633.P10484921857380446445

/-! ## A240633.P961991130393107377

`A240636(A167499(n+3))`
-/

namespace A240633.P961991130393107377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A167499 (n + 3)).toNat

end

end A240633.P961991130393107377

/-! ## A240633.P16202165782534495599

`A240636(A155212(n)+13)`
-/

namespace A240633.P16202165782534495599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A155212 n + 13).toNat

end

end A240633.P16202165782534495599

/-! ## A240633.P13892600087785953903

`A240636(eq[7, A066657(n)])`
-/

namespace A240633.P13892600087785953903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240633.P13892600087785953903

/-! ## A240633.P7756670649538118006

`A240636(A141214(n+1)+8)`
-/

namespace A240633.P7756670649538118006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A141214 (n + 1) + 8).toNat

end

end A240633.P7756670649538118006

/-!
# A240634: Number of nX6 0..1 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240634, there is no canonical definition to state claims against.
-/

/-! ## A240634.P900955007821123615

`A240636(A374007(n+1))`
-/

namespace A240634.P900955007821123615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A374007 (n + 1)).toNat

end

end A240634.P900955007821123615

/-! ## A240634.P4910572262547876824

`A240636(eq[7, A131818(n+1)])`
-/

namespace A240634.P4910572262547876824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240634.P4910572262547876824

/-! ## A240634.P15671917809688316640

`A240636(A052905(n+3))`
-/

namespace A240634.P15671917809688316640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A052905 (n + 3)).toNat

end

end A240634.P15671917809688316640

/-! ## A240634.P11951962868231898533

`A240636(A056119(n)+16)`
-/

namespace A240634.P11951962868231898533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A056119 n + 16).toNat

end

end A240634.P11951962868231898533

/-! ## A240634.P17734234730947908729

`A240636(eq[3, A219347(n)])`
-/

namespace A240634.P17734234730947908729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240634.P17734234730947908729

/-!
# A240635: Number of nX7 0..1 arrays with no element equal to exactly three horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240635, there is no canonical definition to state claims against.
-/

/-! ## A240635.P1010605727574192202

`A240636(A374008(n+1))`
-/

namespace A240635.P1010605727574192202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A374008 (n + 1)).toNat

end

end A240635.P1010605727574192202

/-! ## A240635.P3106496511353611690

`A240636(eq[8, A131818(n+1)])`
-/

namespace A240635.P3106496511353611690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240635.P3106496511353611690

/-! ## A240635.P15258705705196728964

`A240636(A055999(n+4))`
-/

namespace A240635.P15258705705196728964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A055999 (n + 4)).toNat

end

end A240635.P15258705705196728964

/-! ## A240635.P17748772166457514869

`A240636(eq[4, A219347(n)])`
-/

namespace A240635.P17748772166457514869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240635.P17748772166457514869

/-! ## A240635.P13479079170116990188

`A240636(eq[6, A193592(n)])`
-/

namespace A240635.P13479079170116990188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240635.P13479079170116990188

/-!
# A240637: Number of n X 2 0..3 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240637, the canonical program `A240637.P14987832507597818030` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240637 has offset 1).

The definition of A240637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240637.P14987832507597818030

`ogf((1-x-13x^2-13x^3+2x^4+3x^5)/(1-6x-10x^2+6x^3+9x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240637

/-- `ogf((1-x-13x^2-13x^3+2x^4+3x^5)/(1-6x-10x^2+6x^3+9x^4))` -/
def P14987832507597818030.Spec : Prop :=
  ∀ n, P14987832507597818030.a n = A240637 (n + 1)

theorem P14987832507597818030.correct : P14987832507597818030.Spec := by
  intro n
  simp only [A240637, Nat.add_sub_cancel]

end A240637

/-! ## A240637.P171718805592871309

`A240706(∑[n+1]+2)`
-/

namespace A240637.P171718805592871309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240637.P171718805592871309

namespace A240637

/-- `A240706(∑[n+1]+2)` -/
def P171718805592871309.Spec : Prop :=
  ∀ n, P171718805592871309.a n = A240637 (n + 1)

end A240637

/-! ## A240637.P15706023091912930703

`A240642(∑[n+1]+2)`
-/

namespace A240637.P15706023091912930703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240637.P15706023091912930703

namespace A240637

/-- `A240642(∑[n+1]+2)` -/
def P15706023091912930703.Spec : Prop :=
  ∀ n, P15706023091912930703.a n = A240637 (n + 1)

end A240637

/-! ## A240637.P770639542314417088

`record[A240642(record[A185180(n+1)])]`
-/

namespace A240637.P770639542314417088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240637.P770639542314417088

namespace A240637

/-- `record[A240642(record[A185180(n+1)])]` -/
def P770639542314417088.Spec : Prop :=
  ∀ n, P770639542314417088.a n = A240637 (n + 1)

end A240637

/-! ## A240637.P7538394710356757735

`record[A097806(n)*A240642(n+1)]`
-/

namespace A240637.P7538394710356757735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A240642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240637.P7538394710356757735

namespace A240637

/-- `record[A097806(n)*A240642(n+1)]` -/
def P7538394710356757735.Spec : Prop :=
  ∀ n, P7538394710356757735.a n = A240637 (n + 1)

end A240637

/-!
# A240638: Number of n X 3 0..3 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240638, there is no canonical definition to state claims against.
-/

/-! ## A240638.P4028674220438247702

`A240642(∑[n+2]+4)`
-/

namespace A240638.P4028674220438247702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240638.P4028674220438247702

/-! ## A240638.P15516934333079479338

`or(char[1], A240642(A167499(n)+n))`
-/

namespace A240638.P15516934333079479338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240642 (A167499 n + (n : ℤ)).toNat)

end

end A240638.P15516934333079479338

/-! ## A240638.P4448305576884949402

`lcm(A033999(n), A240642(A167614(n+1)))`
-/

namespace A240638.P4448305576884949402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A240642 (A167614 (n + 1)).toNat)

end

end A240638.P4448305576884949402

/-! ## A240638.P10164410307332172020

`or(A025465(n), A240642(A167614(n+1)))`
-/

namespace A240638.P10164410307332172020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A240642 (A167614 (n + 1)).toNat)

end

end A240638.P10164410307332172020

/-! ## A240638.P12944675252975013675

`A240642(A167614(n+1))+A122180(n+1)`
-/

namespace A240638.P12944675252975013675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (A167614 (n + 1)).toNat + A122180 (n + 1)

end

end A240638.P12944675252975013675

/-!
# A240639: Number of nX4 0..3 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240639, there is no canonical definition to state claims against.
-/

/-! ## A240639.P6291814690505838362

`A240642(∑[3+n]+7)`
-/

namespace A240639.P6291814690505838362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240639.P6291814690505838362

/-!
# A240640: Number of nX5 0..3 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240640, there is no canonical definition to state claims against.
-/

/-! ## A240640.P1340314426058106934

`A240642(A374005(n+1))`
-/

namespace A240640.P1340314426058106934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (A374005 (n + 1)).toNat

end

end A240640.P1340314426058106934

/-! ## A240640.P5331958379715481663

`A240642(A167499(n+3))`
-/

namespace A240640.P5331958379715481663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (A167499 (n + 3)).toNat

end

end A240640.P5331958379715481663

/-! ## A240640.P4541058310254653155

`A240642(A155212(n)+13)`
-/

namespace A240640.P4541058310254653155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (A155212 n + 13).toNat

end

end A240640.P4541058310254653155

/-! ## A240640.P7928132058394925961

`A240642(A056000(n)+15)`
-/

namespace A240640.P7928132058394925961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (A056000 n + 15).toNat

end

end A240640.P7928132058394925961

/-! ## A240640.P16450702827313438063

`A240642(eq[6, A131818(n+1)])`
-/

namespace A240640.P16450702827313438063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240640.P16450702827313438063

/-!
# A240641: Number of nX6 0..3 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240641, there is no canonical definition to state claims against.
-/

/-! ## A240641.P17739092030271640477

`A240642(A374007(n+1))`
-/

namespace A240641.P17739092030271640477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (A374007 (n + 1)).toNat

end

end A240641.P17739092030271640477

/-! ## A240641.P1408155395659686098

`A240642(A056115(n)+21)`
-/

namespace A240641.P1408155395659686098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (A056115 n + 21).toNat

end

end A240641.P1408155395659686098

/-! ## A240641.P11612879441700242564

`A240642(A167499(n+4)+1)`
-/

namespace A240641.P11612879441700242564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (A167499 (n + 4) + 1).toNat

end

end A240641.P11612879441700242564

/-! ## A240641.P3145509277379445313

`A240642(A167614(n+4)+3)`
-/

namespace A240641.P3145509277379445313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (A167614 (n + 4) + 3).toNat

end

end A240641.P3145509277379445313

/-! ## A240641.P15475771341796906537

`A240642(A246172(n+1)+20)`
-/

namespace A240641.P15475771341796906537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240642 (A246172 (n + 1) + 20).toNat

end

end A240641.P15475771341796906537

/-!
# A240642: T(n,k)=Number of nXk 0..3 arrays with no element equal to one or three horizontal or vertical neighbors, with new values 0..3 introduced in row major order.

The programs for A240642, there is no canonical definition to state claims against.
-/

/-! ## A240642.P3602187272650328185

`A240706(n+1)+A021913(A022171(n))`
-/

namespace A240642.P3602187272650328185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (n + 1) + A021913 (A022171 n).toNat

end

end A240642.P3602187272650328185

/-! ## A240642.P17015168216615234781

`A240706(n+1)+A025465(A023105(n))`
-/

namespace A240642.P17015168216615234781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (n + 1) + A025465 (A023105 n).toNat

end

end A240642.P17015168216615234781

/-! ## A240642.P14943222831814597318

`A240706(n+1)+A055641(A022112(n))`
-/

namespace A240642.P14943222831814597318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (n + 1) + A055641 (A022112 n).toNat

end

end A240642.P14943222831814597318

/-! ## A240642.P2914821529774641813

`A240706(n+1)+A085974(A026021(n))`
-/

namespace A240642.P2914821529774641813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (n + 1) + A085974 (A026021 n).toNat

end

end A240642.P2914821529774641813

/-! ## A240642.P3469104255912519216

`A240706(n+1)+A007814(A157156(n))`
-/

namespace A240642.P3469104255912519216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240706 (n + 1) + A007814 (A157156 n).toNat

end

end A240642.P3469104255912519216

/-!
# A240643: Number of n X n 0..1 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240643, there is no canonical definition to state claims against.
-/

/-! ## A240643.P11704307290506592614

`A240649(∑[4*n]+1)`
-/

namespace A240643.P11704307290506592614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240643.P11704307290506592614

/-! ## A240643.P5621241716425118039

`lcm(2, A240649(A001844(n)))`
-/

namespace A240643.P5621241716425118039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240649 (A001844 n).toNat)

end

end A240643.P5621241716425118039

/-! ## A240643.P6557719313046281810

`record[A003982(n)*A240649(n+1)]`
-/

namespace A240643.P6557719313046281810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A240649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240643.P6557719313046281810

/-! ## A240643.P1750841609132712593

`record[A203994(n+1)*A240649(n+1)]`
-/

namespace A240643.P1750841609132712593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A240649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240643.P1750841609132712593

/-! ## A240643.P7448006431843550063

`A240649(A001844(n))+A185284(n)`
-/

namespace A240643.P7448006431843550063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A001844 n).toNat + A185284 n

end

end A240643.P7448006431843550063

/-!
# A240644: Number of nX3 0..1 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240644, there is no canonical definition to state claims against.
-/

/-! ## A240644.P14430813554902669204

`A240649(∑[n+2]+4)`
-/

namespace A240644.P14430813554902669204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240644.P14430813554902669204

/-! ## A240644.P1401964851980747414

`A240649(A167614(n+1))+char[19]`
-/

namespace A240644.P1401964851980747414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240644.P1401964851980747414

/-! ## A240644.P16802429207709431523

`record[gcd(A240649(n+1), A303913(n))]`
-/

namespace A240644.P16802429207709431523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240649 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240644.P16802429207709431523

/-! ## A240644.P7646369150213175666

`record[A240649(n+3)/A302212(n+1)]`
-/

namespace A240644.P7646369150213175666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240649 (n + 3) : ℚ) / (A302212 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240644.P7646369150213175666

/-! ## A240644.P4857333611898482897

`A355480(n)+A240649(A167614(n+1))`
-/

namespace A240644.P4857333611898482897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355480 n + A240649 (A167614 (n + 1)).toNat

end

end A240644.P4857333611898482897

/-!
# A240645: Number of nX4 0..1 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240645, there is no canonical definition to state claims against.
-/

/-! ## A240645.P5015027571804087367

`A240649(∑[n+3]+7)`
-/

namespace A240645.P5015027571804087367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240645.P5015027571804087367

/-! ## A240645.P1546533762241073060

`A240649(A055999(n)+10)+char[18]`
-/

namespace A240645.P1546533762241073060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240645.P1546533762241073060

/-! ## A240645.P2342020962153073094

`or(char[1], A240649(A141214(n)+7))`
-/

namespace A240645.P2342020962153073094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240649 (A141214 n + 7).toNat)

end

end A240645.P2342020962153073094

/-! ## A240645.P17871075729329103977

`A007318(C(2, n))*A240649(A141214(n)+7)`
-/

namespace A240645.P17871075729329103977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A240649 (A141214 n + 7).toNat

end

end A240645.P17871075729329103977

/-! ## A240645.P2247004586214142347

`A000041(C(2, n+2))*A240649(A141214(n)+7)`
-/

namespace A240645.P2247004586214142347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A240649 (A141214 n + 7).toNat

end

end A240645.P2247004586214142347

/-!
# A240646: Number of nX5 0..1 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240646, there is no canonical definition to state claims against.
-/

/-! ## A240646.P6981336055846915967

`A240649(C(n+6, 2)-n)`
-/

namespace A240646.P6981336055846915967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (Nat.choose (n + 6) 2 - n)

end

end A240646.P6981336055846915967

/-! ## A240646.P5767661348199636756

`A240649(A374005(n+1))`
-/

namespace A240646.P5767661348199636756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A374005 (n + 1)).toNat

end

end A240646.P5767661348199636756

/-! ## A240646.P137163756263366659

`A240649(A167499(n+3))`
-/

namespace A240646.P137163756263366659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A167499 (n + 3)).toNat

end

end A240646.P137163756263366659

/-! ## A240646.P15092192246869123235

`A240649(A077169(n+5))`
-/

namespace A240646.P15092192246869123235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A077169 (n + 5)).toNat

end

end A240646.P15092192246869123235

/-! ## A240646.P18205568644393599134

`A240649(A155212(n)+13)`
-/

namespace A240646.P18205568644393599134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A155212 n + 13).toNat

end

end A240646.P18205568644393599134

/-!
# A240647: Number of nX6 0..1 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240647, there is no canonical definition to state claims against.
-/

/-! ## A240647.P14339728394003587511

`A240649(A374007(n+1))`
-/

namespace A240647.P14339728394003587511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A374007 (n + 1)).toNat

end

end A240647.P14339728394003587511

/-! ## A240647.P4101002785768569229

`A240649(A056115(n)+21)`
-/

namespace A240647.P4101002785768569229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A056115 n + 21).toNat

end

end A240647.P4101002785768569229

/-! ## A240647.P15638724170970982106

`A240649(A167499(n+4)+1)`
-/

namespace A240647.P15638724170970982106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A167499 (n + 4) + 1).toNat

end

end A240647.P15638724170970982106

/-! ## A240647.P11020500694725828965

`A240649(A167614(n+4)+3)`
-/

namespace A240647.P11020500694725828965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A167614 (n + 4) + 3).toNat

end

end A240647.P11020500694725828965

/-! ## A240647.P15811287440880459574

`A240649(A000124(n+5)+5)`
-/

namespace A240647.P15811287440880459574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A000124 (n + 5) + 5).toNat

end

end A240647.P15811287440880459574

/-!
# A240648: Number of nX7 0..1 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240648, there is no canonical definition to state claims against.
-/

/-! ## A240648.P13845354237976490414

`A240649(A374008(n+1))`
-/

namespace A240648.P13845354237976490414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A374008 (n + 1)).toNat

end

end A240648.P13845354237976490414

/-! ## A240648.P14912016673312697174

`A240649(A167487(n+5))`
-/

namespace A240648.P14912016673312697174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A167487 (n + 5)).toNat

end

end A240648.P14912016673312697174

/-! ## A240648.P2442645715244160655

`A240649(eq[11, A066657(n)])`
-/

namespace A240648.P2442645715244160655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240648.P2442645715244160655

/-! ## A240648.P2321560124679090807

`A240649(A166136(n+5)+1)`
-/

namespace A240648.P2321560124679090807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A166136 (n + 5) + 1).toNat

end

end A240648.P2321560124679090807

/-! ## A240648.P7185415850605811168

`A240649(A000124(n+6)+6)`
-/

namespace A240648.P7185415850605811168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240649 (A000124 (n + 6) + 6).toNat

end

end A240648.P7185415850605811168

/-!
# A240649: T(n,k)=Number of nXk 0..1 arrays with no element equal to the same number of vertical neighbors as horizontal neighbors, with new values 0..1 introduced in row major order.

The programs for A240649, there is no canonical definition to state claims against.
-/

/-! ## A240649.P4198972203414623363

`or(A001221(A022173(n)), A094570(n))`
-/

namespace A240649.P4198972203414623363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A022173 n).toNat) (A094570 n)

end

end A240649.P4198972203414623363

/-!
# A240650: Number of n X n 0..1 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..1 introduced in row major order.

The programs for A240650, there is no canonical definition to state claims against.
-/

/-! ## A240650.P11495367135907558447

`A240656(∑[4*n]+1)`
-/

namespace A240650.P11495367135907558447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240650.P11495367135907558447

/-! ## A240650.P9542453154629447297

`record[A115718(n)*A240656(n+1)]`
-/

namespace A240650.P9542453154629447297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n * A240656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240650.P9542453154629447297

/-! ## A240650.P17835274202495474114

`record[gcd(A049581(n), A240656(n+1))]`
-/

namespace A240650.P17835274202495474114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A240656 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240650.P17835274202495474114

/-! ## A240650.P4934640425952359050

`A240656(A001844(n))+A184955(n)`
-/

namespace A240650.P4934640425952359050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A001844 n).toNat + A184955 n

end

end A240650.P4934640425952359050

/-! ## A240650.P15289923473957175891

`A240656(A001844(n))^A178489(n)`
-/

namespace A240650.P15289923473957175891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240656 (A001844 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A240650.P15289923473957175891

/-!
# A240651: Number of nX3 0..1 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..1 introduced in row major order.

The programs for A240651, there is no canonical definition to state claims against.
-/

/-! ## A240651.P14570773202184275005

`A240656(∑[n+2]+4)`
-/

namespace A240651.P14570773202184275005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240651.P14570773202184275005

/-! ## A240651.P15501973030300300624

`A240656(A034856(n+1)+5)+A011738(n)`
-/

namespace A240651.P15501973030300300624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A034856 (n + 1) + 5).toNat + A011738 n

end

end A240651.P15501973030300300624

/-! ## A240651.P16295592651027499927

`A240656(A034856(n+1)+5)%A081067(n)`
-/

namespace A240651.P16295592651027499927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240656 (A034856 (n + 1) + 5).toNat) (A081067 n)

end

end A240651.P16295592651027499927

/-! ## A240651.P13664324592293726238

`gcd(A130706(n), A240656(A034856(n+1)+5))`
-/

namespace A240651.P13664324592293726238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A240656 (A034856 (n + 1) + 5).toNat)

end

end A240651.P13664324592293726238

/-! ## A240651.P12104611317905633353

`A000203(((-1)^n)²)*A240656(A034856(n+1)+5)`
-/

namespace A240651.P12104611317905633353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A240656 (A034856 (n + 1) + 5).toNat

end

end A240651.P12104611317905633353

/-!
# A240652: Number of nX4 0..1 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..1 introduced in row major order.

The programs for A240652, there is no canonical definition to state claims against.
-/

/-! ## A240652.P12197141732602108263

`A240656(A374004(n+1))`
-/

namespace A240652.P12197141732602108263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A374004 (n + 1)).toNat

end

end A240652.P12197141732602108263

/-! ## A240652.P11357592922587015732

`A240656(Δ[A008778(n)]+6)`
-/

namespace A240652.P11357592922587015732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (f1 (n + 1) - f1 n + 6).toNat

end

end A240652.P11357592922587015732

/-! ## A240652.P2969289785574793341

`A240656(A167614(n+2)+1)`
-/

namespace A240652.P2969289785574793341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A167614 (n + 2) + 1).toNat

end

end A240652.P2969289785574793341

/-! ## A240652.P11060018596375119874

`A240656(A166136(n+2)-2)`
-/

namespace A240652.P11060018596375119874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A166136 (n + 2) - 2).toNat

end

end A240652.P11060018596375119874

/-! ## A240652.P14797326479126425830

`A240656(A166136(n+1)+1+n)`
-/

namespace A240652.P14797326479126425830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A240652.P14797326479126425830

/-!
# A240653: Number of nX5 0..1 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..1 introduced in row major order.

The programs for A240653, there is no canonical definition to state claims against.
-/

/-! ## A240653.P8722335789341668460

`A240656(A374005(n+1))`
-/

namespace A240653.P8722335789341668460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A374005 (n + 1)).toNat

end

end A240653.P8722335789341668460

/-! ## A240653.P4447167377818688450

`A240656(A167499(n+3))`
-/

namespace A240653.P4447167377818688450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A167499 (n + 3)).toNat

end

end A240653.P4447167377818688450

/-! ## A240653.P17668543569366850845

`A240656(A077169(n+5))`
-/

namespace A240653.P17668543569366850845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A077169 (n + 5)).toNat

end

end A240653.P17668543569366850845

/-! ## A240653.P14854066143380147615

`A240656(A000124(n+4)+4)`
-/

namespace A240653.P14854066143380147615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A000124 (n + 4) + 4).toNat

end

end A240653.P14854066143380147615

/-! ## A240653.P15198359973637760749

`A240656(A000217(n+4)+5)`
-/

namespace A240653.P15198359973637760749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A000217 (n + 4) + 5).toNat

end

end A240653.P15198359973637760749

/-!
# A240654: Number of nX6 0..1 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..1 introduced in row major order.

The programs for A240654, there is no canonical definition to state claims against.
-/

/-! ## A240654.P12974512973739405582

`A240656(A374007(n+1))`
-/

namespace A240654.P12974512973739405582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A374007 (n + 1)).toNat

end

end A240654.P12974512973739405582

/-! ## A240654.P10426139064999831813

`A240656(A166136(n+4))`
-/

namespace A240654.P10426139064999831813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A166136 (n + 4)).toNat

end

end A240654.P10426139064999831813

/-! ## A240654.P7191672723496045467

`A240656(eq[7, A131818(n+1)])`
-/

namespace A240654.P7191672723496045467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240654.P7191672723496045467

/-! ## A240654.P13677153860932189638

`A240656(eq[3, A219347(n)])`
-/

namespace A240654.P13677153860932189638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240654.P13677153860932189638

/-!
# A240655: Number of n X 7 0..1 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..1 introduced in row major order.

The programs for A240655, there is no canonical definition to state claims against.
-/

/-! ## A240655.P8523548150568782376

`A240656(A374008(n+1))`
-/

namespace A240655.P8523548150568782376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A374008 (n + 1)).toNat

end

end A240655.P8523548150568782376

/-! ## A240655.P9536987597376844840

`A240656(A166136(n+5)+1)`
-/

namespace A240655.P9536987597376844840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A166136 (n + 5) + 1).toNat

end

end A240655.P9536987597376844840

/-! ## A240655.P16017133976891037623

`A240656(A000217(n+6)+7)`
-/

namespace A240655.P16017133976891037623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (A000217 (n + 6) + 7).toNat

end

end A240655.P16017133976891037623

/-! ## A240655.P9945115340609839405

`A240656(eq[8, A131818(n+1)])`
-/

namespace A240655.P9945115340609839405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240655.P9945115340609839405

/-! ## A240655.P15539757538026486258

`A240656(eq[4, A219347(n)])`
-/

namespace A240655.P15539757538026486258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240655.P15539757538026486258

/-!
# A240656: T(n,k)=Number of nXk 0..1 arrays with no element equal to exactly one horizontal or vertical neighbor, with new values 0..1 introduced in row major order.

The programs for A240656, there is no canonical definition to state claims against.
-/

/-! ## A240656.P11775553546442182292

`A026242(A106597(n)%A119175(n+1))`
-/

namespace A240656.P11775553546442182292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (Int.tmod (A106597 n) (A119175 (n + 1))).toNat

end

end A240656.P11775553546442182292

/-! ## A240656.P6913463571029043128

`A026242(A106597(n))%A302427(A055998(n)+2)`
-/

namespace A240656.P6913463571029043128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026242 (A106597 n).toNat) (A302427 (A055998 n + 2).toNat)

end

end A240656.P6913463571029043128

/-! ## A240656.P7711726810797695407

`A026242(A106597(n))+A000038((n+1)^3)`
-/

namespace A240656.P7711726810797695407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A106597 n).toNat + A000038 ((n + 1) ^ 3)

end

end A240656.P7711726810797695407

/-! ## A240656.P10400510846395453015

`A026242(A106597(n))%A001748(A264773(n))`
-/

namespace A240656.P10400510846395453015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026242 (A106597 n).toNat) (A001748 (A264773 n).toNat)

end

end A240656.P10400510846395453015

/-! ## A240656.P8959717689713510150

`A000005(A152977(n)^A215847(n+1))`
-/

namespace A240656.P8959717689713510150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A152977 n : ℚ) ^ (A215847 (n + 1) : ℤ))).toNat

end

end A240656.P8959717689713510150

/-!
# A240657: Least k such that 2^k == -1 (mod prime(n)), or 0 if no such k exists.

The programs for A240657, there is no canonical definition to state claims against.
-/

/-! ## A240657.P5671340843202541567

`lcm(A082654(n+1), A240663(n+1))`
-/

namespace A240657.P5671340843202541567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082654 (n + 1)) (A240663 (n + 1))

end

end A240657.P5671340843202541567

/-! ## A240657.P14542768313765010329

`A082654(n+1)*A142150(A240666(n+1))`
-/

namespace A240657.P14542768313765010329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (n + 1) * A142150 (A240666 (n + 1)).toNat

end

end A240657.P14542768313765010329

/-! ## A240657.P18124361001308134976

`A082654(n+1)%A002326(A102781(n+1))`
-/

namespace A240657.P18124361001308134976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082654 (n + 1)) (A002326 (A102781 (n + 1)).toNat)

end

end A240657.P18124361001308134976

/-! ## A240657.P4521434282118734972

`A002326(A102781(n+1))-A003558(A130290(n+1))`
-/

namespace A240657.P4521434282118734972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A102781 (n + 1)).toNat - A003558 (A130290 (n + 1)).toNat

end

end A240657.P4521434282118734972

/-! ## A240657.P16120824628712646933

`A317318(A082654(n+1))%A002326(A130290(n+1))`
-/

namespace A240657.P16120824628712646933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317318 (A082654 (n + 1)).toNat) (A002326 (A130290 (n + 1)).toNat)

end

end A240657.P16120824628712646933

/-! ## A240657.P3825333471913712760

`A142150(A336843(A008578(n+1)))`
-/

namespace A240657.P3825333471913712760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A336843 (A008578 (n + 1)).toNat).toNat

end

end A240657.P3825333471913712760

/-! ## A240657.P15855933233015520111

`A142150(A336843(record[A014973(n+1)]))`
-/

namespace A240657.P15855933233015520111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A336843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A240657.P15855933233015520111

/-! ## A240657.P12132241810152456871

`A142150(A007733(Δ[A007504(n)]))`
-/

namespace A240657.P12132241810152456871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007733 (f1 (n + 1) - f1 n).toNat).toNat

end

end A240657.P12132241810152456871

/-! ## A240657.P17217709366321650164

`A142150(A007733(record[A051698(n)]))`
-/

namespace A240657.P17217709366321650164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007733 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A240657.P17217709366321650164

/-! ## A240657.P17437966182771824788

`A142150(A007733(p?[A014681(n)]))`
-/

namespace A240657.P17437966182771824788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240657.P17437966182771824788

/-! ## A240657.P15199705080509710984

`A142150(A007733(p?[A260442(n)]))`
-/

namespace A240657.P15199705080509710984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240657.P15199705080509710984

/-! ## A240657.P14887247700435877845

`A142150(A007733(A000040(n+1)))`
-/

namespace A240657.P14887247700435877845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007733 (A000040 (n + 1)).toNat).toNat

end

end A240657.P14887247700435877845

/-! ## A240657.P8866957605911373773

`A142150(A007733(A008578(n+2)))`
-/

namespace A240657.P8866957605911373773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007733 (A008578 (n + 2)).toNat).toNat

end

end A240657.P8866957605911373773

/-! ## A240657.P9341169830925655515

`A142150(A007733(p?[A000037(n+1)]))`
-/

namespace A240657.P9341169830925655515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240657.P9341169830925655515

/-! ## A240657.P8072211827770017893

`A142150(A007733(p?[A087246(n+1)]))`
-/

namespace A240657.P8072211827770017893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240657.P8072211827770017893

/-! ## A240657.P10019014599857608446

`A142150(A007733(p?[A239968(n+1)]))`
-/

namespace A240657.P10019014599857608446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240657.P10019014599857608446

/-! ## A240657.P11769434469116272262

`A142150(A007733(p?[A142150(n)]))`
-/

namespace A240657.P11769434469116272262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240657.P11769434469116272262

/-! ## A240657.P15208809803291500490

`A142150(A323376(∑[n+1]))`
-/

namespace A240657.P15208809803291500490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A323376 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A240657.P15208809803291500490

/-! ## A240657.P15308240257649542232

`A323376(Δ[A000292(n)])-A082654(n+1)`
-/

namespace A240657.P15308240257649542232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323376 (f1 (n + 1) - f1 n).toNat - A082654 (n + 1)

end

end A240657.P15308240257649542232

/-!
# A240658: Least k such that 3^k == -1 (mod prime(n)), or 0 if no such k exists.

The programs for A240658, there is no canonical definition to state claims against.
-/

/-! ## A240658.P12699894195567545357

`A062117(n+1)+A000007(n)-A211245(n+1)`
-/

namespace A240658.P12699894195567545357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062117 (n + 1) + (A000007 n - A211245 (n + 1))

end

end A240658.P12699894195567545357

/-! ## A240658.P2936264039710825385

`A062117(n+1)-A057427(n)*A211245(n+1)`
-/

namespace A240658.P2936264039710825385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062117 (n + 1) - A057427 n * A211245 (n + 1)

end

end A240658.P2936264039710825385

/-! ## A240658.P7636956127003854842

`A062117(n+1)-A211245(n+1)%A002522(n)`
-/

namespace A240658.P7636956127003854842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062117 (n + 1) - Int.tmod (A211245 (n + 1)) (A002522 n)

end

end A240658.P7636956127003854842

/-! ## A240658.P1795011206408393568

`A142150(A062117(n+1)+A000007(n))`
-/

namespace A240658.P1795011206408393568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A062117 (n + 1) + A000007 n).toNat

end

end A240658.P1795011206408393568

/-! ## A240658.P7798050248478840296

`A142150(A062117(n+1)+char[A142150(2*n+1)])`
-/

namespace A240658.P7798050248478840296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A062117 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A240658.P7798050248478840296

/-! ## A240658.P14479916543734535501

`A142150(A054704(p?[A004442(n)]))`
-/

namespace A240658.P14479916543734535501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A054704 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240658.P14479916543734535501

/-! ## A240658.P6906078237662833461

`A142150(A054704(p?[A153152(n)]))`
-/

namespace A240658.P6906078237662833461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A054704 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240658.P6906078237662833461

/-! ## A240658.P13092377613289589561

`A211245(n+1)%A007734(A100484(n+1))`
-/

namespace A240658.P13092377613289589561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211245 (n + 1)) (A007734 (A100484 (n + 1)).toNat)

end

end A240658.P13092377613289589561

/-! ## A240658.P8615767094247671698

`A142150(A142150(A089366(n))+A062117(n+1))`
-/

namespace A240658.P8615767094247671698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A142150 (A089366 n).toNat + A062117 (n + 1)).toNat

end

end A240658.P8615767094247671698

/-!
# A240659: Least k such that 4^k == -1 (mod prime(n)), or 0 if no such k exists.

The programs for A240659, there is no canonical definition to state claims against.
-/

/-! ## A240659.P6385581576388058301

`A142150(A240657(n+1))`
-/

namespace A240659.P6385581576388058301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A240657 (n + 1)).toNat

end

end A240659.P6385581576388058301

/-! ## A240659.P8001026531652012154

`A142150(A082654(n+1))`
-/

namespace A240659.P8001026531652012154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A082654 (n + 1)).toNat

end

end A240659.P8001026531652012154

/-! ## A240659.P9020298118395046071

`A053447(A102781(n+1))-A000007(n)-A026741(A082654(n+1))`
-/

namespace A240659.P9020298118395046071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (A102781 (n + 1)).toNat - A000007 n - A026741 (A082654 (n + 1)).toNat

end

end A240659.P9020298118395046071

/-! ## A240659.P14967330168606249994

`A142150(A007735(p?[xor(1, n)]))`
-/

namespace A240659.P14967330168606249994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007735 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A240659.P14967330168606249994

/-! ## A240659.P11450344556963849881

`A007735(p?[A324050(n+1)])%∑[n+1]-A026741(A082654(n+1))`
-/

namespace A240659.P11450344556963849881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007735 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A026741 (A082654 (n + 1)).toNat

end

end A240659.P11450344556963849881

/-! ## A240659.P10958413100510155398

`A007735(A000040(n+1))%A002624(n)-A026741(A082654(n+1))`
-/

namespace A240659.P10958413100510155398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007735 (A000040 (n + 1)).toNat) (A002624 n) - A026741 (A082654 (n + 1)).toNat

end

end A240659.P10958413100510155398

/-!
# A240660: Least k such that 5^k == -1 (mod prime(n)), or 0 if no such k exists.

The programs for A240660, there is no canonical definition to state claims against.
-/

/-! ## A240660.P11660252435652159508

`or(C(n, n²), A142150(A211241(n+1)))`
-/

namespace A240660.P11660252435652159508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) (A142150 (A211241 (n + 1)).toNat)

end

end A240660.P11660252435652159508

/-! ## A240660.P15153362940219221547

`A142150(A211241(n+1)+A000007(n))`
-/

namespace A240660.P15153362940219221547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211241 (n + 1) + A000007 n).toNat

end

end A240660.P15153362940219221547

/-! ## A240660.P4256744104042978110

`A142150(A211241(n+1)+char[A017392(n)])`
-/

namespace A240660.P4256744104042978110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017392 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211241 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A240660.P4256744104042978110

/-! ## A240660.P14975642415739925428

`A266220(2*n)+A142150(A211241(n+1))`
-/

namespace A240660.P14975642415739925428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (2 * n) + A142150 (A211241 (n + 1)).toNat

end

end A240660.P14975642415739925428

/-! ## A240660.P4912550346834482786

`A142150(A211241(n+1)+C(A142150(n), n))`
-/

namespace A240660.P4912550346834482786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211241 (n + 1) + (Nat.choose (A142150 n).toNat n : ℤ)).toNat

end

end A240660.P4912550346834482786

/-! ## A240660.P4776202786751149327

`A142150(A211241(n+1))^(A000040(n+1)%2)`
-/

namespace A240660.P4776202786751149327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142150 (A211241 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A240660.P4776202786751149327

/-! ## A240660.P1707370182048713611

`A142150(A211241(n+1))+A008683(A000118(n))`
-/

namespace A240660.P1707370182048713611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211241 (n + 1)).toNat + A008683 (A000118 n).toNat

end

end A240660.P1707370182048713611

/-! ## A240660.P269191821937820476

`A151934(A077462(n))+A142150(A211241(n+1))`
-/

namespace A240660.P269191821937820476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (A077462 n).toNat + A142150 (A211241 (n + 1)).toNat

end

end A240660.P269191821937820476

/-! ## A240660.P15316265397637121432

`A142150(A000040(n+1))+A142150(A211241(n+1))`
-/

namespace A240660.P15316265397637121432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A000040 (n + 1)).toNat + A142150 (A211241 (n + 1)).toNat

end

end A240660.P15316265397637121432

/-! ## A240660.P2555318541569823472

`A142150(A211241(n+1))^A019425(A007590(n))`
-/

namespace A240660.P2555318541569823472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142150 (A211241 (n + 1)).toNat : ℚ) ^ (A019425 (A007590 n).toNat : ℤ)

end

end A240660.P2555318541569823472

/-! ## A240660.P17284838116157279827

`A142150(A211241(n+1))+A008683(A016754(n))`
-/

namespace A240660.P17284838116157279827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211241 (n + 1)).toNat + A008683 (A016754 n).toNat

end

end A240660.P17284838116157279827

/-!
# A240661: Least k such that 6^k == -1 (mod prime(n)), or 0 if no such k exists.

The programs for A240661, there is no canonical definition to state claims against.
-/

/-! ## A240661.P11621108249161886513

`A142150(A211242(n+1))`
-/

namespace A240661.P11621108249161886513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211242 (n + 1)).toNat

end

end A240661.P11621108249161886513

/-! ## A240661.P438689837824566188

`A142150(A007737(record[A051698(n)]))`
-/

namespace A240661.P438689837824566188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A240661.P438689837824566188

/-! ## A240661.P8909374593884650681

`A142150(A007737(p?[A004442(n)]))`
-/

namespace A240661.P8909374593884650681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007737 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240661.P8909374593884650681

/-! ## A240661.P7588662423019743525

`A142150(A007737(p?[A014681(n)]))`
-/

namespace A240661.P7588662423019743525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007737 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240661.P7588662423019743525

/-! ## A240661.P4080670110842221425

`A142150(A007737(A000040(n+1)))`
-/

namespace A240661.P4080670110842221425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007737 (A000040 (n + 1)).toNat).toNat

end

end A240661.P4080670110842221425

/-! ## A240661.P18132916003037281680

`A142150(A007737(A008578(n+2)))`
-/

namespace A240661.P18132916003037281680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007737 (A008578 (n + 2)).toNat).toNat

end

end A240661.P18132916003037281680

/-! ## A240661.P14374655282197571681

`A142150(A007737(p?[A005180(n+1)]))`
-/

namespace A240661.P14374655282197571681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A007737 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A240661.P14374655282197571681

/-!
# A240662: Least k such that 7^k == -1 (mod prime(n)), or 0 if no such k exists.

The programs for A240662, there is no canonical definition to state claims against.
-/

/-! ## A240662.P8144148746001593170

`A142150(A211243(n+1)+A000007(n))`
-/

namespace A240662.P8144148746001593170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211243 (n + 1) + A000007 n).toNat

end

end A240662.P8144148746001593170

/-! ## A240662.P8704928921717351661

`A270010(2*n)+A142150(A211243(n+1))`
-/

namespace A240662.P8704928921717351661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270010 (2 * n) + A142150 (A211243 (n + 1)).toNat

end

end A240662.P8704928921717351661

/-! ## A240662.P13977476238599224839

`A142150(A211243(n+1))+A159634(n+1)%2`
-/

namespace A240662.P13977476238599224839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211243 (n + 1)).toNat + Int.tmod (A159634 (n + 1)) 2

end

end A240662.P13977476238599224839

/-! ## A240662.P7541917872600012038

`A142150(A211243(n+1))+A010054(A001316(n))`
-/

namespace A240662.P7541917872600012038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211243 (n + 1)).toNat + A010054 (A001316 n).toNat

end

end A240662.P7541917872600012038

/-! ## A240662.P15912963818813096768

`A318886(A008578(n+1))+A142150(A211243(n+1))`
-/

namespace A240662.P15912963818813096768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (A008578 (n + 1)).toNat + A142150 (A211243 (n + 1)).toNat

end

end A240662.P15912963818813096768

/-! ## A240662.P3122420042876865983

`A142150(A211243(n+1))+A088157(A243924(n+1))`
-/

namespace A240662.P3122420042876865983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211243 (n + 1)).toNat + A088157 (A243924 (n + 1)).toNat

end

end A240662.P3122420042876865983

/-! ## A240662.P3272304349627402428

`A142150(A211243(n+1))+A088153(A320001(n+1))`
-/

namespace A240662.P3272304349627402428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211243 (n + 1)).toNat + A088153 (A320001 (n + 1)).toNat

end

end A240662.P3272304349627402428

/-! ## A240662.P17963768808377753688

`A142150(A211243(n+1))+A267191(n+1)%2`
-/

namespace A240662.P17963768808377753688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211243 (n + 1)).toNat + Int.tmod (A267191 (n + 1)) 2

end

end A240662.P17963768808377753688

/-! ## A240662.P17161970578615591761

`A142150(A211243(n+1)+A097805(∑[n]))`
-/

namespace A240662.P17161970578615591761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211243 (n + 1) + A097805 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A240662.P17161970578615591761

/-! ## A240662.P12730053089322015451

`A142150(A211243(n+1))-A103452(∑[n+3])`
-/

namespace A240662.P12730053089322015451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211243 (n + 1)).toNat - A103452 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240662.P12730053089322015451

/-!
# A240663: Least k such that 8^k == -1 (mod prime(n)), or 0 if no such k exists.

The programs for A240663, there is no canonical definition to state claims against.
-/

/-! ## A240663.P14209283188980822438

`A211244(n+1)-gcd(A082654(n+1), A211244(n+1))`
-/

namespace A240663.P14209283188980822438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211244 (n + 1) - (Int.gcd (A082654 (n + 1)) (A211244 (n + 1)) : ℤ)

end

end A240663.P14209283188980822438

/-! ## A240663.P17701160705104574267

`lcm(3, A240657(n+1))/3`
-/

namespace A240663.P17701160705104574267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A240657 (n + 1)) : ℚ) / 3

end

end A240663.P17701160705104574267

/-! ## A240663.P200607823942380708

`A051176(A240657(n+1))`
-/

namespace A240663.P200607823942380708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A240657 (n + 1)).toNat

end

end A240663.P200607823942380708

/-! ## A240663.P13716131557928082777

`A082654(n+1)%A053451(A102781(n+1))`
-/

namespace A240663.P13716131557928082777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082654 (n + 1)) (A053451 (A102781 (n + 1)).toNat)

end

end A240663.P13716131557928082777

/-! ## A240663.P7991657208977654829

`A142150(A211244(n+1))`
-/

namespace A240663.P7991657208977654829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211244 (n + 1)).toNat

end

end A240663.P7991657208977654829

/-! ## A240663.P8153050596444903501

`A002264(lcm(3, A240657(n+1)))`
-/

namespace A240663.P8153050596444903501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lcm 3 (A240657 (n + 1)))

end

end A240663.P8153050596444903501

/-!
# A240664: Least k such that 9^k == -1 (mod prime(n)), or 0 if no such k exists.

The programs for A240664, there is no canonical definition to state claims against.
-/

/-! ## A240664.P4056053033014733902

`A142150(A211245(n+1)+A000007(n))`
-/

namespace A240664.P4056053033014733902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211245 (n + 1) + A000007 n).toNat

end

end A240664.P4056053033014733902

/-! ## A240664.P71828681256849113

`A142150(A240658(n+1)+A000007(n))`
-/

namespace A240664.P71828681256849113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A240658 (n + 1) + A000007 n).toNat

end

end A240664.P71828681256849113

/-! ## A240664.P5748162313930968786

`A142150(A211245(n+1))+A057428(n)+1`
-/

namespace A240664.P5748162313930968786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211245 (n + 1)).toNat + A057428 n + 1

end

end A240664.P5748162313930968786

/-! ## A240664.P13867332001515551964

`or(A142150(A211245(n+1)), A154272(n+1))`
-/

namespace A240664.P13867332001515551964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A142150 (A211245 (n + 1)).toNat) (A154272 (n + 1))

end

end A240664.P13867332001515551964

/-! ## A240664.P7256617674930197322

`A142150(A211245(n+1)+char[A142150(2*n+1)])`
-/

namespace A240664.P7256617674930197322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A211245 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A240664.P7256617674930197322

/-! ## A240664.P16428688064941617153

`A142150(A240658(n+1)+char[A142150(2*n+1)])`
-/

namespace A240664.P16428688064941617153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A240658 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A240664.P16428688064941617153

/-! ## A240664.P16075302166142126152

`A154272(n+1)+A142150(A211245(n+1)-A154272(n+1))`
-/

namespace A240664.P16075302166142126152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1) + A142150 (A211245 (n + 1) - A154272 (n + 1)).toNat

end

end A240664.P16075302166142126152

/-!
# A240665: Least k such that 10^k == -1 (mod prime(n)), or 0 if no such k exists.

The programs for A240665, there is no canonical definition to state claims against.
-/

/-! ## A240665.P10200575401887700052

`A086981(n+1)%A006093(n+1)`
-/

namespace A240665.P10200575401887700052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086981 (n + 1)) (A006093 (n + 1))

end

end A240665.P10200575401887700052

/-! ## A240665.P13859195528012879870

`A000217(A048595(n+1))%A048595(n+1)`
-/

namespace A240665.P13859195528012879870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A048595 (n + 1)).toNat) (A048595 (n + 1))

end

end A240665.P13859195528012879870

/-! ## A240665.P10815644015348666496

`A069531(p?[xor(1, n)])`
-/

namespace A240665.P10815644015348666496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A240665.P10815644015348666496

/-! ## A240665.P16482520561148408422

`A069531(Δ[A007504(n)])`
-/

namespace A240665.P16482520561148408422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (f1 (n + 1) - f1 n).toNat

end

end A240665.P16482520561148408422

/-! ## A240665.P13558584887726409216

`A069531(A000040(n+1))`
-/

namespace A240665.P13558584887726409216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A000040 (n + 1)).toNat

end

end A240665.P13558584887726409216

/-! ## A240665.P16983012414362548835

`A142150(A002371(n+1))`
-/

namespace A240665.P16983012414362548835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A002371 (n + 1)).toNat

end

end A240665.P16983012414362548835

/-! ## A240665.P3816177297774051819

`A142150(A048595(n+1))`
-/

namespace A240665.P3816177297774051819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A048595 (n + 1)).toNat

end

end A240665.P3816177297774051819

/-! ## A240665.P17969814789565884906

`A142150(A071126(n+1))`
-/

namespace A240665.P17969814789565884906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A071126 (n + 1)).toNat

end

end A240665.P17969814789565884906

/-! ## A240665.P11506401627512768179

`A069531(A008578(n+2))`
-/

namespace A240665.P11506401627512768179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A008578 (n + 2)).toNat

end

end A240665.P11506401627512768179

/-! ## A240665.P12099372258898582765

`A069531(A116974(n+2))`
-/

namespace A240665.P12099372258898582765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A116974 (n + 2)).toNat

end

end A240665.P12099372258898582765

/-! ## A240665.P10160309261909430158

`A069531(A175787(n+2))`
-/

namespace A240665.P10160309261909430158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A175787 (n + 2)).toNat

end

end A240665.P10160309261909430158

/-! ## A240665.P12554846831882561060

`A069531(A182986(n+2))`
-/

namespace A240665.P12554846831882561060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A182986 (n + 2)).toNat

end

end A240665.P12554846831882561060

/-! ## A240665.P17471118094088949992

`A069531(eq[2, A005127(n)])`
-/

namespace A240665.P17471118094088949992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240665.P17471118094088949992

/-! ## A240665.P11844261277556263172

`A069531(sqrt(A001248(n+1)))`
-/

namespace A240665.P11844261277556263172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A240665.P11844261277556263172

/-! ## A240665.P14125471174382073553

`A069531(record[A006530(n+2)])`
-/

namespace A240665.P14125471174382073553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240665.P14125471174382073553

/-! ## A240665.P4097962704562268587

`A069531(record[A014963(n+2)])`
-/

namespace A240665.P4097962704562268587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240665.P4097962704562268587

/-! ## A240665.P210701772723964724

`A069531(record[A020639(n+2)])`
-/

namespace A240665.P210701772723964724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240665.P210701772723964724

/-! ## A240665.P1441160953615536169

`A069531(A068499(n+2)+1)`
-/

namespace A240665.P1441160953615536169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A068499 (n + 2) + 1).toNat

end

end A240665.P1441160953615536169

/-! ## A240665.P11469249465396681705

`A069531(record[p?[n-A069531(n+1)]])`
-/

namespace A240665.P11469249465396681705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A069531 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240665.P11469249465396681705

/-!
# A240666: Least k such that k^m == -1 (mod prime(n)) has a solution for some m.

The programs for A240666, there is no canonical definition to state claims against.
-/

/-! ## A240666.P4973977059612907810

`A020639(A122028(n+1)*A306847(n))`
-/

namespace A240666.P4973977059612907810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A122028 (n + 1) * A306847 n).toNat

end

end A240666.P4973977059612907810

/-! ## A240666.P15453949557396853327

`A020639(A127807(n+1)*A306847(n))`
-/

namespace A240666.P15453949557396853327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A127807 (n + 1) * A306847 n).toNat

end

end A240666.P15453949557396853327

/-! ## A240666.P10921363073876967786

`A020639(lcm(A018182(n), A127807(n+1)))`
-/

namespace A240666.P10921363073876967786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A018182 n) (A127807 (n + 1)))

end

end A240666.P10921363073876967786

/-! ## A240666.P17581740244709077659

`A020639(lcm(A122028(n+1), A306847(n)))`
-/

namespace A240666.P17581740244709077659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A122028 (n + 1)) (A306847 n))

end

end A240666.P17581740244709077659

/-! ## A240666.P15988975261409610876

`A020639(A018182(n)*A127807(n+1))`
-/

namespace A240666.P15988975261409610876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018182 n * A127807 (n + 1)).toNat

end

end A240666.P15988975261409610876

/-!
# A240667: a(n) is the GCD of the solutions x of sigma(x) = n; sigma(n) = A000203(n) = sum of divisors of n.

The programs for A240667, there is no canonical definition to state claims against.
-/

/-! ## A240667.P9589678853211071176

`gcd(A057637(n+1)^A000010(n+1), A051444(n+1))`
-/

namespace A240667.P9589678853211071176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A057637 (n + 1) : ℚ) ^ (A000010 (n + 1) : ℤ))) (A051444 (n + 1))

end

end A240667.P9589678853211071176

/-! ## A240667.P5865409633010644492

`gcd(A051444(n+1)*A154782(n), A057637(n+1))`
-/

namespace A240667.P5865409633010644492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051444 (n + 1) * A154782 n) (A057637 (n + 1))

end

end A240667.P5865409633010644492

/-! ## A240667.P5694121633783619562

`gcd(A051444(n+1)^56, A057637(n+1))`
-/

namespace A240667.P5694121633783619562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051444 (n + 1) ^ 56) (A057637 (n + 1))

end

end A240667.P5694121633783619562

/-! ## A240667.P9041129957868584461

`gcd(A057637(n+1)², A256632(n+1))*A175192(n+1)`
-/

namespace A240667.P9041129957868584461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A057637 (n + 1) ^ 2) (A256632 (n + 1)) : ℤ) * A175192 (n + 1)

end

end A240667.P9041129957868584461

/-! ## A240667.P7965422365298460559

`gcd(A015899(A319990(n+1)), A051444(n+1))`
-/

namespace A240667.P7965422365298460559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015899 (A319990 (n + 1)).toNat) (A051444 (n + 1))

end

end A240667.P7965422365298460559

/-!
# A240668: Number of the first odd exponents in the prime power factorization of (2*n)!.

The programs for A240668, the canonical program `A240668.P2555984127848424708` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240668 has offset 1).

The definition of A240668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240668.P2555984127848424708

`val(A336510(2*(n+1))+1, 2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A240668

/-- `val(A336510(2*(n+1))+1, 2)` -/
def P2555984127848424708.Spec : Prop :=
  ∀ n, (P2555984127848424708.a n : ℤ) = A240668 (n + 1)

theorem P2555984127848424708.correct : P2555984127848424708.Spec := by
  intro n
  simp only [A240668, Nat.add_sub_cancel]

end A240668

/-! ## A240668.P9287779062124951955

`A007814(A336510(2*(n+1))+1)`
-/

namespace A240668.P9287779062124951955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A336510 (2 * (n + 1)) + 1).toNat

end

end A240668.P9287779062124951955

namespace A240668

/-- `A007814(A336510(2*(n+1))+1)` -/
def P9287779062124951955.Spec : Prop :=
  ∀ n, P9287779062124951955.a n = A240668 (n + 1)

end A240668

/-! ## A240668.P7109789895740711005

`A101671(lcm(n+1, A060546(n)))`
-/

namespace A240668.P7109789895740711005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 (Int.lcm (n + 1 : ℤ) (A060546 n))

end

end A240668.P7109789895740711005

namespace A240668

/-- `A101671(lcm(n+1, A060546(n)))` -/
def P7109789895740711005.Spec : Prop :=
  ∀ n, P7109789895740711005.a n = A240668 (n + 1)

end A240668

/-! ## A240668.P11902789221002876195

`A101671(∏{p}[n+1, #]*A016116(n))`
-/

namespace A240668.P11902789221002876195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A016116 n).toNat

end

end A240668.P11902789221002876195

namespace A240668

/-- `A101671(∏{p}[n+1, #]*A016116(n))` -/
def P11902789221002876195.Spec : Prop :=
  ∀ n, P11902789221002876195.a n = A240668 (n + 1)

end A240668

/-! ## A240668.P1884478298991929337

`A212074(n+1)%(A010060(n+1)+2)`
-/

namespace A240668.P1884478298991929337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212074 (n + 1)) (A010060 (n + 1) + 2)

end

end A240668.P1884478298991929337

namespace A240668

/-- `A212074(n+1)%(A010060(n+1)+2)` -/
def P1884478298991929337.Spec : Prop :=
  ∀ n, P1884478298991929337.a n = A240668 (n + 1)

end A240668

/-!
# A240669: Number of the first odious exponents (A000069) in the prime power factorization of (2n)!.

The programs for A240669, there is no canonical definition to state claims against.
-/

/-! ## A240669.P2696977515148290959

`val(A213891(3*n+5)+A085972(n+5), 2)`
-/

namespace A240669.P2696977515148290959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A213891 (3 * n + 5) + A085972 (n + 5)).toNat 2

end

end A240669.P2696977515148290959

/-!
# A240671: a(n) = floor(4^n/(2+2*cos(2*Pi/7))^n).

The programs for A240671, the canonical program `A240671.P14682344951055537320` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240671 has offset 0).

The definition of A240671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4^n/(2+2*cos(2*π/7))^n)` (program `A240671.P14682344951055537320`, by `A240671.P14682344951055537320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240671.P14682344951055537320

`floor(4^n/(2+2*cos(2*π/7))^n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240671

/-- `floor(4^n/(2+2*cos(2*π/7))^n)` -/
def P14682344951055537320.Spec : Prop :=
  ∀ n, P14682344951055537320.a n = A240671 n

theorem P14682344951055537320.correct : P14682344951055537320.Spec := by
  intro n
  simp only [A240671]

end A240671

/-! ## A240671.P14670526437546172726

`floor(A001576(n)/A198636(n))`
-/

namespace A240671.P14670526437546172726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001576 n : ℚ) / (A198636 n : ℚ)⌋

end

end A240671.P14670526437546172726

namespace A240671

/-- `floor(A001576(n)/A198636(n))` -/
def P14670526437546172726.Spec : Prop :=
  ∀ n, P14670526437546172726.a n = A240671 n

end A240671

/-! ## A240671.P1901938275665505388

`floor(A056208(2*n)/A094648(2*n))`
-/

namespace A240671.P1901938275665505388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056208 (2 * n) : ℚ) / (A094648 (2 * n) : ℚ)⌋

end

end A240671.P1901938275665505388

namespace A240671

/-- `floor(A056208(2*n)/A094648(2*n))` -/
def P1901938275665505388.Spec : Prop :=
  ∀ n, P1901938275665505388.a n = A240671 n

end A240671

/-! ## A240671.P15745743276405251938

`A000196(floor(sqrt(A075118(n))))`
-/

namespace A240671.P15745743276405251938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.sqrt (A075118 n)).toNat

end

end A240671.P15745743276405251938

namespace A240671

/-- `A000196(floor(sqrt(A075118(n))))` -/
def P15745743276405251938.Spec : Prop :=
  ∀ n, P15745743276405251938.a n = A240671 n

end A240671

/-! ## A240671.P6794355341513775795

`A056556(A191388(n))`
-/

namespace A240671.P6794355341513775795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A191388 n).toNat

end

end A240671.P6794355341513775795

namespace A240671

/-- `A056556(A191388(n))` -/
def P6794355341513775795.Spec : Prop :=
  ∀ n, P6794355341513775795.a n = A240671 n

end A240671

/-!
# A240672: Number of the first evil exponents (A001969) in the prime power factorization of (2n)!.

The programs for A240672, there is no canonical definition to state claims against.
-/

/-! ## A240672.P18396832179156240668

`and(A003056(n), A109594(A309950(n)))`
-/

namespace A240672.P18396832179156240668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 n) (A109594 (A309950 n).toNat)

end

end A240672.P18396832179156240668

/-! ## A240672.P3382237640372684662

`and(A109594(A309950(n)), A155997(n))`
-/

namespace A240672.P3382237640372684662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109594 (A309950 n).toNat) (A155997 n)

end

end A240672.P3382237640372684662

/-! ## A240672.P11201339311573333619

`and(A092674(A313017(n)), A227568(n))`
-/

namespace A240672.P11201339311573333619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092674 (A313017 n).toNat) (A227568 n)

end

end A240672.P11201339311573333619

/-! ## A240672.P9344155686550616776

`and(A003056(n), A126743(A000203(3*n+5)))`
-/

namespace A240672.P9344155686550616776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 n) (A126743 (A000203 (3 * n + 5)).toNat)

end

end A240672.P9344155686550616776

/-! ## A240672.P14641072331635402445

`and(A001222(A337865(n+1)), A000720(2^n))`
-/

namespace A240672.P14641072331635402445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A337865 (n + 1)).toNat) (A000720 (2 ^ n))

end

end A240672.P14641072331635402445

/-!
# A240673: Triangle read by rows: T(n, k) = v(n, k)*((1/v(n, k)) mod prime(k)), where v(n, k) = (Product_{j=1..n} prime(j))/prime(k), n >= 1, 1 <= k <= n.

The programs for A240673, there is no canonical definition to state claims against.
-/

/-! ## A240673.P3235609603590549324

`A124859(A140513(n))-A286947(n+1)`
-/

namespace A240673.P3235609603590549324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A140513 n).toNat - A286947 (n + 1)

end

end A240673.P3235609603590549324

/-! ## A240673.P3410622343731845484

`A002110(∑[A010054(n)])-A286947(n+1)`
-/

namespace A240673.P3410622343731845484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A286947 (n + 1)

end

end A240673.P3410622343731845484

/-! ## A240673.P9410408228759865522

`A002110(A002024(n+1))-A286947(n+1)`
-/

namespace A240673.P9410408228759865522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A002024 (n + 1)).toNat - A286947 (n + 1)

end

end A240673.P9410408228759865522

/-! ## A240673.P10076787519749996948

`A034386(A005145(n+1))-A286947(n+1)`
-/

namespace A240673.P10076787519749996948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A005145 (n + 1)).toNat - A286947 (n + 1)

end

end A240673.P10076787519749996948

/-! ## A240673.P13713367687347661095

`A096334(A127739(n+1))-A286947(n+1)`
-/

namespace A240673.P13713367687347661095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A127739 (n + 1)).toNat - A286947 (n + 1)

end

end A240673.P13713367687347661095

/-!
# A240674: Number of partitions p of n that are disjoint from their conjugate.

The programs for A240674, there is no canonical definition to state claims against.
-/

/-! ## A240674.P5037028077969565947

`A040000(n)*A114701(n)`
-/

namespace A240674.P5037028077969565947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A114701 n

end

end A240674.P5037028077969565947

/-! ## A240674.P10310382263500298151

`A036452(n+1)*A114701(n)`
-/

namespace A240674.P10310382263500298151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A114701 n

end

end A240674.P10310382263500298151

/-! ## A240674.P2759481532183257125

`A036453(n+1)*A114701(n)`
-/

namespace A240674.P2759481532183257125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A114701 n

end

end A240674.P2759481532183257125

/-! ## A240674.P6987738524797028005

`A104435(n+1)*A114701(n)`
-/

namespace A240674.P6987738524797028005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) * A114701 n

end

end A240674.P6987738524797028005

/-! ## A240674.P5189764923141810874

`(2-A000007(n))*A114701(n)`
-/

namespace A240674.P5189764923141810874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A114701 n

end

end A240674.P5189764923141810874

/-!
# A240676: Number of digits in the decimal expansion of n^7.

The programs for A240676, the canonical program `A240676.P17319575870754342459` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240676 has offset 0).

The definition of A240676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240676.P17319575870754342459

`∑{digits}[n^7, (#%2)!]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240676

/-- `∑{digits}[n^7, (#%2)!]` -/
def P17319575870754342459.Spec : Prop :=
  ∀ n, (P17319575870754342459.a n : ℤ) = A240676 n

theorem P17319575870754342459.correct : P17319575870754342459.Spec := by
  intro n
  simp only [A240676]

end A240676

/-! ## A240676.P12600793607655888594

`∑{digits}[n^7, and(1, #)!]`
-/

namespace A240676.P12600793607655888594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A240676.P12600793607655888594

namespace A240676

/-- `∑{digits}[n^7, and(1, #)!]` -/
def P12600793607655888594.Spec : Prop :=
  ∀ n, (P12600793607655888594.a n : ℤ) = A240676 n

theorem P12600793607655888594.correct : P12600793607655888594.Spec := by
  intro n
  simp only [A240676, Nat.add_sub_cancel, A240676.P12600793607655888594.f1, A240676.P12600793607655888594.a, A240676.P17319575870754342459.f1, A240676.P17319575870754342459.a, SequenceMachineLib.memo_apply]
  try simp

end A240676

/-! ## A240676.P15275445068607414896

`∑{digits}[n^7, dr(10^#)]`
-/

namespace A240676.P15275445068607414896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum

end

end A240676.P15275445068607414896

namespace A240676

/-- `∑{digits}[n^7, dr(10^#)]` -/
def P15275445068607414896.Spec : Prop :=
  ∀ n, (P15275445068607414896.a n : ℤ) = A240676 n

end A240676

/-! ## A240676.P9951754321069830090

`∑{digits}[n^7, A036370(#)]`
-/

namespace A240676.P9951754321069830090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum

end

end A240676.P9951754321069830090

namespace A240676

/-- `∑{digits}[n^7, A036370(#)]` -/
def P9951754321069830090.Spec : Prop :=
  ∀ n, P9951754321069830090.a n = A240676 n

end A240676

/-! ## A240676.P15250939022932376104

`∑{digits}[n^7, A036608(#)]`
-/

namespace A240676.P15250939022932376104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036608 x).sum

end

end A240676.P15250939022932376104

namespace A240676

/-- `∑{digits}[n^7, A036608(#)]` -/
def P15250939022932376104.Spec : Prop :=
  ∀ n, P15250939022932376104.a n = A240676 n

end A240676

/-! ## A240676.P16851744084492085067

`∑{digits}[n^7, A061906(#)]`
-/

namespace A240676.P16851744084492085067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A061906 x).sum

end

end A240676.P16851744084492085067

namespace A240676

/-- `∑{digits}[n^7, A061906(#)]` -/
def P16851744084492085067.Spec : Prop :=
  ∀ n, P16851744084492085067.a n = A240676 n

end A240676

/-!
# A240677: a(n) = 6*Zeta(1-n)*n*(2^n-1) - Zeta(-n)*(n+1)*(2^(n+2)-2), for n = 0 the limit is understood.

The programs for A240677, there is no canonical definition to state claims against.
-/

/-! ## A240677.P9415269409565069538

`A240485(n)+5*A226158(n)`
-/

namespace A240677.P9415269409565069538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240485 n + 5 * A226158 n

end

end A240677.P9415269409565069538

/-! ## A240677.P12166428857914650301

`3*A226158(n)-A226158(n+1)`
-/

namespace A240677.P12166428857914650301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A226158 n - A226158 (n + 1)

end

end A240677.P12166428857914650301

/-! ## A240677.P16053403751196212279

`A230324(n)-A240485(n)`
-/

namespace A240677.P16053403751196212279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230324 n - A240485 n

end

end A240677.P16053403751196212279

/-! ## A240677.P15350274181698690398

`Δ[Δ[A226158(n)]]-A226158(n+2)-A240485(n)`
-/

namespace A240677.P15350274181698690398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A226158 (n + 2) - A240485 n

end

end A240677.P15350274181698690398

/-! ## A240677.P16381009033056040170

`Δ[A109573(n)]/2^(n-1)-A240485(n)`
-/

namespace A240677.P16381009033056040170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109573 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A240485 n : ℚ)

end

end A240677.P16381009033056040170

/-!
# A240678: Primes p such that p*10+k is prime for exactly one value of the digit k.

The programs for A240678, the canonical program `A240678.P16460776034127500961` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240678 has offset 1).

The definition of A240678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240678.P16460776034127500961

`p?[A216292(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A240678

/-- `p?[A216292(n+1)]` -/
def P16460776034127500961.Spec : Prop :=
  ∀ n, P16460776034127500961.a n = A240678 (n + 1)

theorem P16460776034127500961.correct : P16460776034127500961.Spec := by
  intro n
  simp only [A240678, Nat.add_sub_cancel]

end A240678

/-! ## A240678.P6073416168965907465

`record[A006530(A216292(n+2))]`
-/

namespace A240678.P6073416168965907465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A216292 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240678.P6073416168965907465

namespace A240678

/-- `record[A006530(A216292(n+2))]` -/
def P6073416168965907465.Spec : Prop :=
  ∀ n, P6073416168965907465.a n = A240678 (n + 1)

end A240678

/-! ## A240678.P9134243292408216328

`filter[A216292(n+1), A010051(#)]`
-/

namespace A240678.P9134243292408216328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A240678.P9134243292408216328

namespace A240678

/-- `filter[A216292(n+1), A010051(#)]` -/
def P9134243292408216328.Spec : Prop :=
  ∀ n, P9134243292408216328.a n = A240678 (n + 1)

end A240678

/-! ## A240678.P3867480074103431149

`filter[A216292(n+1), A323153(#)]`
-/

namespace A240678.P3867480074103431149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A240678.P3867480074103431149

namespace A240678

/-- `filter[A216292(n+1), A323153(#)]` -/
def P3867480074103431149.Spec : Prop :=
  ∀ n, P3867480074103431149.a n = A240678 (n + 1)

end A240678

/-! ## A240678.P8282047596346756706

`∩[A000040(n+1), A216292(n+1)]`
-/

namespace A240678.P8282047596346756706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P8282047596346756706

namespace A240678

/-- `∩[A000040(n+1), A216292(n+1)]` -/
def P8282047596346756706.Spec : Prop :=
  ∀ n, (P8282047596346756706.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P3673494924208557407

`∩[A004139(n+1), A216292(n+1)]`
-/

namespace A240678.P3673494924208557407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P3673494924208557407

namespace A240678

/-- `∩[A004139(n+1), A216292(n+1)]` -/
def P3673494924208557407.Spec : Prop :=
  ∀ n, (P3673494924208557407.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P12942644005198006519

`∩[A006005(n+1), A216292(n+1)]`
-/

namespace A240678.P12942644005198006519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P12942644005198006519

namespace A240678

/-- `∩[A006005(n+1), A216292(n+1)]` -/
def P12942644005198006519.Spec : Prop :=
  ∀ n, (P12942644005198006519.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P10602224841210589923

`∩[A008578(n+1), A216292(n+1)]`
-/

namespace A240678.P10602224841210589923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P10602224841210589923

namespace A240678

/-- `∩[A008578(n+1), A216292(n+1)]` -/
def P10602224841210589923.Spec : Prop :=
  ∀ n, (P10602224841210589923.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P11981927120045227794

`∩[A045319(n+1), A216292(n+1)]`
-/

namespace A240678.P11981927120045227794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P11981927120045227794

namespace A240678

/-- `∩[A045319(n+1), A216292(n+1)]` -/
def P11981927120045227794.Spec : Prop :=
  ∀ n, (P11981927120045227794.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P5081317213613486516

`∩[A045344(n+1), A216292(n+1)]`
-/

namespace A240678.P5081317213613486516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P5081317213613486516

namespace A240678

/-- `∩[A045344(n+1), A216292(n+1)]` -/
def P5081317213613486516.Spec : Prop :=
  ∀ n, (P5081317213613486516.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P5706504810088441868

`∩[A046022(n+1), A216292(n+1)]`
-/

namespace A240678.P5706504810088441868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P5706504810088441868

namespace A240678

/-- `∩[A046022(n+1), A216292(n+1)]` -/
def P5706504810088441868.Spec : Prop :=
  ∀ n, (P5706504810088441868.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P1552042669495138732

`∩[A051948(n+1), A216292(n+1)]`
-/

namespace A240678.P1552042669495138732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P1552042669495138732

namespace A240678

/-- `∩[A051948(n+1), A216292(n+1)]` -/
def P1552042669495138732.Spec : Prop :=
  ∀ n, (P1552042669495138732.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P12847871362627716439

`∩[A053813(n+1), A216292(n+1)]`
-/

namespace A240678.P12847871362627716439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P12847871362627716439

namespace A240678

/-- `∩[A053813(n+1), A216292(n+1)]` -/
def P12847871362627716439.Spec : Prop :=
  ∀ n, (P12847871362627716439.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P7757734307628803803

`∩[A062972(n+1), A216292(n+1)]`
-/

namespace A240678.P7757734307628803803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P7757734307628803803

namespace A240678

/-- `∩[A062972(n+1), A216292(n+1)]` -/
def P7757734307628803803.Spec : Prop :=
  ∀ n, (P7757734307628803803.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P10323208242421540663

`∩[A065091(n+1), A216292(n+1)]`
-/

namespace A240678.P10323208242421540663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P10323208242421540663

namespace A240678

/-- `∩[A065091(n+1), A216292(n+1)]` -/
def P10323208242421540663.Spec : Prop :=
  ∀ n, (P10323208242421540663.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P10207744230616599220

`∩[A065376(n+1), A216292(n+1)]`
-/

namespace A240678.P10207744230616599220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P10207744230616599220

namespace A240678

/-- `∩[A065376(n+1), A216292(n+1)]` -/
def P10207744230616599220.Spec : Prop :=
  ∀ n, (P10207744230616599220.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P1864551886875066246

`∩[A065396(n+1), A216292(n+1)]`
-/

namespace A240678.P1864551886875066246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P1864551886875066246

namespace A240678

/-- `∩[A065396(n+1), A216292(n+1)]` -/
def P1864551886875066246.Spec : Prop :=
  ∀ n, (P1864551886875066246.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P142199727882392131

`∩[A116974(n+1), A216292(n+1)]`
-/

namespace A240678.P142199727882392131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P142199727882392131

namespace A240678

/-- `∩[A116974(n+1), A216292(n+1)]` -/
def P142199727882392131.Spec : Prop :=
  ∀ n, (P142199727882392131.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P98622206528244079

`∩[A157996(n+1), A216292(n+1)]`
-/

namespace A240678.P98622206528244079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P98622206528244079

namespace A240678

/-- `∩[A157996(n+1), A216292(n+1)]` -/
def P98622206528244079.Spec : Prop :=
  ∀ n, (P98622206528244079.a n : ℤ) = A240678 (n + 1)

end A240678

/-! ## A240678.P17687984235249526861

`∩[A158611(n+1), A216292(n+1)]`
-/

namespace A240678.P17687984235249526861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240678.P17687984235249526861

namespace A240678

/-- `∩[A158611(n+1), A216292(n+1)]` -/
def P17687984235249526861.Spec : Prop :=
  ∀ n, (P17687984235249526861.a n : ℤ) = A240678 (n + 1)

end A240678

/-!
# A240679: Primes p such that p*10+k is prime for exactly two values of the digit k.

The programs for A240679, there is no canonical definition to state claims against.
-/

/-! ## A240679.P7088564093278147317

`p?[A216293(n+1)]`
-/

namespace A240679.P7088564093278147317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240679.P7088564093278147317

/-! ## A240679.P1402889177846087926

`filter[A216293(n+1), A010051(#)]`
-/

namespace A240679.P1402889177846087926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A240679.P1402889177846087926

/-! ## A240679.P15989897824859546141

`∩[A000040(n+1), A216293(n+1)]`
-/

namespace A240679.P15989897824859546141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240679.P15989897824859546141

/-! ## A240679.P173396648319756649

`∩[A008578(n+1), A216293(n+1)]`
-/

namespace A240679.P173396648319756649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240679.P173396648319756649

/-! ## A240679.P14754664354849094654

`∩[A046022(n+1), A216293(n+1)]`
-/

namespace A240679.P14754664354849094654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240679.P14754664354849094654

/-! ## A240679.P3153151465724559815

`∩[A066050(n+1), A216293(n+1)]`
-/

namespace A240679.P3153151465724559815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240679.P3153151465724559815

/-! ## A240679.P17440464495185865311

`∩[A067126(n+1), A216293(n+1)]`
-/

namespace A240679.P17440464495185865311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240679.P17440464495185865311

/-! ## A240679.P3928357772083750864

`∩[A158611(n+1), A216293(n+1)]`
-/

namespace A240679.P3928357772083750864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240679.P3928357772083750864

/-! ## A240679.P5996205560252980561

`∩[A175787(n+1), A216293(n+1)]`
-/

namespace A240679.P5996205560252980561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240679.P5996205560252980561

/-! ## A240679.P493306980782683923

`∩[A182986(n+1), A216293(n+1)]`
-/

namespace A240679.P493306980782683923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240679.P493306980782683923

/-! ## A240679.P424313851540303826

`∩[A216293(n+1), A326715(n+1)]`
-/

namespace A240679.P424313851540303826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240679.P424313851540303826

/-! ## A240679.P12696308665080928516

`p?[eq[2, A038800(n)]]`
-/

namespace A240679.P12696308665080928516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A240679.P12696308665080928516

/-! ## A240679.P1730154561542990697

`eq[A005127(n), A038800(n)]`
-/

namespace A240679.P1730154561542990697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240679.P1730154561542990697

/-! ## A240679.P17864684619271542809

`eq[A005128(n), A038800(n)]`
-/

namespace A240679.P17864684619271542809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240679.P17864684619271542809

/-! ## A240679.P14211283102139506450

`eq[A038800(n), A056148(n)]`
-/

namespace A240679.P14211283102139506450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240679.P14211283102139506450

/-! ## A240679.P9780044069266659699

`eq[A038800(n), A319410(n)]`
-/

namespace A240679.P9780044069266659699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240679.P9780044069266659699

/-! ## A240679.P1868933340789118299

`eq[A038800(n), A327859(n)]`
-/

namespace A240679.P1868933340789118299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240679.P1868933340789118299

/-! ## A240679.P7724723454127177860

`eq[A038800(n), A398023(n)]`
-/

namespace A240679.P7724723454127177860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240679.P7724723454127177860

/-! ## A240679.P6644273714579721648

`eq[A038800(n), A400153(n)]`
-/

namespace A240679.P6644273714579721648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240679.P6644273714579721648

/-! ## A240679.P5896375483980779370

`filter[A216293(n+1), A080339(#)]`
-/

namespace A240679.P5896375483980779370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A240679.P5896375483980779370

/-!
# A240680: Primes p such that p*10+k is prime for exactly three values of the digit k.

The programs for A240680, the canonical program `A240680.P8776622975220520957` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240680 has offset 1).

The definition of A240680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240680.P8776622975220520957

`p?[A008471(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A240680

/-- `p?[A008471(n+1)]` -/
def P8776622975220520957.Spec : Prop :=
  ∀ n, P8776622975220520957.a n = A240680 (n + 1)

theorem P8776622975220520957.correct : P8776622975220520957.Spec := by
  intro n
  simp only [A240680, Nat.add_sub_cancel]

end A240680

/-! ## A240680.P10776053876146888462

`∩[A002476(n+1), A008471(n+1)]`
-/

namespace A240680.P10776053876146888462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P10776053876146888462

namespace A240680

/-- `∩[A002476(n+1), A008471(n+1)]` -/
def P10776053876146888462.Spec : Prop :=
  ∀ n, (P10776053876146888462.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P13543642080470440927

`∩[A007645(n+1), A008471(n+1)]`
-/

namespace A240680.P13543642080470440927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P13543642080470440927

namespace A240680

/-- `∩[A007645(n+1), A008471(n+1)]` -/
def P13543642080470440927.Spec : Prop :=
  ∀ n, (P13543642080470440927.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P8790322823012644338

`∩[A008471(n+1), A045331(n+1)]`
-/

namespace A240680.P8790322823012644338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P8790322823012644338

namespace A240680

/-- `∩[A008471(n+1), A045331(n+1)]` -/
def P8790322823012644338.Spec : Prop :=
  ∀ n, (P8790322823012644338.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P8410758898858362891

`∩[A008471(n+1), A045375(n+1)]`
-/

namespace A240680.P8410758898858362891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P8410758898858362891

namespace A240680

/-- `∩[A008471(n+1), A045375(n+1)]` -/
def P8410758898858362891.Spec : Prop :=
  ∀ n, (P8410758898858362891.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P7672669915926617

`∩[A008471(n+1), A123365(n+1)]`
-/

namespace A240680.P7672669915926617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P7672669915926617

namespace A240680

/-- `∩[A008471(n+1), A123365(n+1)]` -/
def P7672669915926617.Spec : Prop :=
  ∀ n, (P7672669915926617.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P9702907029153269475

`∩[A008471(n+1), A380468(n+1)]`
-/

namespace A240680.P9702907029153269475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P9702907029153269475

namespace A240680

/-- `∩[A008471(n+1), A380468(n+1)]` -/
def P9702907029153269475.Spec : Prop :=
  ∀ n, (P9702907029153269475.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P6908684214081238137

`∩[A008471(n+1), A040116(n+1)]`
-/

namespace A240680.P6908684214081238137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P6908684214081238137

namespace A240680

/-- `∩[A008471(n+1), A040116(n+1)]` -/
def P6908684214081238137.Spec : Prop :=
  ∀ n, (P6908684214081238137.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P8089981772211680742

`∩[A008471(n+1), A325143(n+1)]`
-/

namespace A240680.P8089981772211680742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P8089981772211680742

namespace A240680

/-- `∩[A008471(n+1), A325143(n+1)]` -/
def P8089981772211680742.Spec : Prop :=
  ∀ n, (P8089981772211680742.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P9078309964868678813

`∩[A008471(n+1), A140557(n+1)]`
-/

namespace A240680.P9078309964868678813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P9078309964868678813

namespace A240680

/-- `∩[A008471(n+1), A140557(n+1)]` -/
def P9078309964868678813.Spec : Prop :=
  ∀ n, (P9078309964868678813.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P10544491557540349545

`∩[A008471(n+1), A140562(n+1)]`
-/

namespace A240680.P10544491557540349545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P10544491557540349545

namespace A240680

/-- `∩[A008471(n+1), A140562(n+1)]` -/
def P10544491557540349545.Spec : Prop :=
  ∀ n, (P10544491557540349545.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P14822160286730363639

`∩[A008471(n+1), A140563(n+1)]`
-/

namespace A240680.P14822160286730363639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P14822160286730363639

namespace A240680

/-- `∩[A008471(n+1), A140563(n+1)]` -/
def P14822160286730363639.Spec : Prop :=
  ∀ n, (P14822160286730363639.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P8394281947662061749

`∩[A008471(n+1), A167464(n+1)]`
-/

namespace A240680.P8394281947662061749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P8394281947662061749

namespace A240680

/-- `∩[A008471(n+1), A167464(n+1)]` -/
def P8394281947662061749.Spec : Prop :=
  ∀ n, (P8394281947662061749.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P14581113514719952041

`∩[A008471(n+1), A049591(n+1)]`
-/

namespace A240680.P14581113514719952041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P14581113514719952041

namespace A240680

/-- `∩[A008471(n+1), A049591(n+1)]` -/
def P14581113514719952041.Spec : Prop :=
  ∀ n, (P14581113514719952041.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P13015845299113211564

`∩[A008471(n+1), A067774(n+1)]`
-/

namespace A240680.P13015845299113211564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P13015845299113211564

namespace A240680

/-- `∩[A008471(n+1), A067774(n+1)]` -/
def P13015845299113211564.Spec : Prop :=
  ∀ n, (P13015845299113211564.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P108290952798080897

`∩[A008471(n+1), A138645(n+1)]`
-/

namespace A240680.P108290952798080897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P108290952798080897

namespace A240680

/-- `∩[A008471(n+1), A138645(n+1)]` -/
def P108290952798080897.Spec : Prop :=
  ∀ n, (P108290952798080897.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P9663037944337678931

`∩[A008471(n+1), A053176(n+1)]`
-/

namespace A240680.P9663037944337678931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P9663037944337678931

namespace A240680

/-- `∩[A008471(n+1), A053176(n+1)]` -/
def P9663037944337678931.Spec : Prop :=
  ∀ n, (P9663037944337678931.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P14401242620331764008

`∩[A000040(n+1), A008471(n+1)]`
-/

namespace A240680.P14401242620331764008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P14401242620331764008

namespace A240680

/-- `∩[A000040(n+1), A008471(n+1)]` -/
def P14401242620331764008.Spec : Prop :=
  ∀ n, (P14401242620331764008.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P2866039500318959692

`∩[A004139(n+1), A008471(n+1)]`
-/

namespace A240680.P2866039500318959692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P2866039500318959692

namespace A240680

/-- `∩[A004139(n+1), A008471(n+1)]` -/
def P2866039500318959692.Spec : Prop :=
  ∀ n, (P2866039500318959692.a n : ℤ) = A240680 (n + 1)

end A240680

/-! ## A240680.P4761061178586850666

`∩[A006005(n+1), A008471(n+1)]`
-/

namespace A240680.P4761061178586850666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240680.P4761061178586850666

namespace A240680

/-- `∩[A006005(n+1), A008471(n+1)]` -/
def P4761061178586850666.Spec : Prop :=
  ∀ n, (P4761061178586850666.a n : ℤ) = A240680 (n + 1)

end A240680

/-!
# A240681: Number of forests with n labeled nodes and 4 trees.

The programs for A240681, there is no canonical definition to state claims against.
-/

/-! ## A240681.P199059750323865382

`A138464(A055998(n+2))`
-/

namespace A240681.P199059750323865382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A055998 (n + 2)).toNat

end

end A240681.P199059750323865382

/-! ## A240681.P1640322293510115947

`A138464(A155212(n)+5)`
-/

namespace A240681.P1640322293510115947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A155212 n + 5).toNat

end

end A240681.P1640322293510115947

/-! ## A240681.P928569402671442962

`A138464(eq[3, A193592(n)])`
-/

namespace A240681.P928569402671442962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240681.P928569402671442962

/-! ## A240681.P13831537230630127105

`A138464(A000096(n+3)-2)`
-/

namespace A240681.P13831537230630127105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A000096 (n + 3) - 2).toNat

end

end A240681.P13831537230630127105

/-! ## A240681.P6856613666117875427

`A138464(eq[2, A185782(n+1)-2])`
-/

namespace A240681.P6856613666117875427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240681.P6856613666117875427

/-! ## A240681.P18174451267091752158

`A138464(eq[2, A185782(n+1)/2])`
-/

namespace A240681.P18174451267091752158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185782 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A240681.P18174451267091752158

/-! ## A240681.P2751731675271298333

`A138464(A000217(n+3)+n+1)`
-/

namespace A240681.P2751731675271298333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A240681.P2751731675271298333

/-! ## A240681.P18350696203177881306

`A138464(A167614(n+2)+n-2)`
-/

namespace A240681.P18350696203177881306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A167614 (n + 2) + ((n : ℤ) - 2)).toNat

end

end A240681.P18350696203177881306

/-! ## A240681.P8569318018189709230

`A138464(Δ[n²]+A167499(n)+n)`
-/

namespace A240681.P8569318018189709230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A167499 n + (n : ℤ))).toNat

end

end A240681.P8569318018189709230

/-!
# A240682: Number of forests with n labeled nodes and 5 trees.

The programs for A240682, there is no canonical definition to state claims against.
-/

/-! ## A240682.P1297012264045689925

`A138464(eq[4, A193592(n)])`
-/

namespace A240682.P1297012264045689925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240682.P1297012264045689925

/-! ## A240682.P10191028958007194475

`A138464(A055999(n+2)+2)`
-/

namespace A240682.P10191028958007194475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A055999 (n + 2) + 2).toNat

end

end A240682.P10191028958007194475

/-! ## A240682.P16191523515146700047

`A138464(A055998(n+3)-1)`
-/

namespace A240682.P16191523515146700047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A055998 (n + 3) - 1).toNat

end

end A240682.P16191523515146700047

/-! ## A240682.P3207421644390520695

`A138464(A167614(n+2)+2*(n+1))`
-/

namespace A240682.P3207421644390520695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A167614 (n + 2) + (2 * (n + 1) : ℤ)).toNat

end

end A240682.P3207421644390520695

/-! ## A240682.P7096249771347548704

`A105599(A167499(n+3))`
-/

namespace A240682.P7096249771347548704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A167499 (n + 3)).toNat

end

end A240682.P7096249771347548704

/-! ## A240682.P8463674815650544815

`A105599(A034856(n+3)+7)`
-/

namespace A240682.P8463674815650544815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A034856 (n + 3) + 7).toNat

end

end A240682.P8463674815650544815

/-! ## A240682.P2031392357405383589

`A105599(A000124(n+6)-A004273(n+4))`
-/

namespace A240682.P2031392357405383589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A000124 (n + 6) - A004273 (n + 4)).toNat

end

end A240682.P2031392357405383589

/-!
# A240683: Number of forests with n labeled nodes and 6 trees.

The programs for A240683, there is no canonical definition to state claims against.
-/

/-! ## A240683.P12383144475504075037

`A138464(eq[3, A219347(n)])`
-/

namespace A240683.P12383144475504075037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240683.P12383144475504075037

/-! ## A240683.P3994599987965160058

`A138464(eq[5, A193592(n)])`
-/

namespace A240683.P3994599987965160058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240683.P3994599987965160058

/-! ## A240683.P9225815105568732187

`A138464(A155212(n+2)+3)`
-/

namespace A240683.P9225815105568732187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A155212 (n + 2) + 3).toNat

end

end A240683.P9225815105568732187

/-! ## A240683.P9464357848535703218

`A138464(Δ[Δ[A006504(n+1)]])`
-/

namespace A240683.P9464357848535703218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (f1 (n + 1) - f1 n).toNat

end

end A240683.P9464357848535703218

/-! ## A240683.P7944574711827724917

`A105599(eq[7, A131818(n+1)])`
-/

namespace A240683.P7944574711827724917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240683.P7944574711827724917

/-! ## A240683.P12514357031313984300

`A105599(A000124(n+6)-(n+1))`
-/

namespace A240683.P12514357031313984300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A240683.P12514357031313984300

/-!
# A240684: Number of forests with n labeled nodes and 7 trees.

The programs for A240684, there is no canonical definition to state claims against.
-/

/-! ## A240684.P6024958556051425067

`A138464(eq[4, A219347(n)])`
-/

namespace A240684.P6024958556051425067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240684.P6024958556051425067

/-! ## A240684.P8621514433192961865

`A138464(eq[6, A193592(n)])`
-/

namespace A240684.P8621514433192961865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240684.P8621514433192961865

/-! ## A240684.P486480813829333058

`A138464(eq[10, A185782(n+1)])`
-/

namespace A240684.P486480813829333058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240684.P486480813829333058

/-! ## A240684.P13783485629034490251

`A105599(A166136(n+5)+1)`
-/

namespace A240684.P13783485629034490251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A166136 (n + 5) + 1).toNat

end

end A240684.P13783485629034490251

/-! ## A240684.P12610069483610257034

`A105599(eq[8, A131818(n+1)])`
-/

namespace A240684.P12610069483610257034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240684.P12610069483610257034

/-! ## A240684.P9559321295425553069

`A105599(A000124(n+8)-8-A005408(n))`
-/

namespace A240684.P9559321295425553069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A000124 (n + 8) - 8 - A005408 n).toNat

end

end A240684.P9559321295425553069

/-! ## A240684.P9011724210617155306

`A105599(A000124(n+8)-8-A247328(n+1))`
-/

namespace A240684.P9011724210617155306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A000124 (n + 8) - 8 - A247328 (n + 1)).toNat

end

end A240684.P9011724210617155306

/-!
# A240685: Number of forests with n labeled nodes and 8 trees.

The programs for A240685, there is no canonical definition to state claims against.
-/

/-! ## A240685.P7296191249926890268

`A138464(eq[5, A219347(n)])`
-/

namespace A240685.P7296191249926890268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240685.P7296191249926890268

/-! ## A240685.P9508372196811260181

`A138464(eq[7, A193592(n)])`
-/

namespace A240685.P9508372196811260181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240685.P9508372196811260181

/-! ## A240685.P15499892040463048766

`A138464(eq[12, A185782(n+1)])`
-/

namespace A240685.P15499892040463048766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240685.P15499892040463048766

/-! ## A240685.P9246620336577775696

`A105599(eq[13, A066657(n)])`
-/

namespace A240685.P9246620336577775696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240685.P9246620336577775696

/-! ## A240685.P6919566275641296702

`A105599(eq[9, A131818(n+1)])`
-/

namespace A240685.P6919566275641296702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240685.P6919566275641296702

/-!
# A240686: Number of forests with n labeled nodes and 9 trees.

The programs for A240686, there is no canonical definition to state claims against.
-/

/-! ## A240686.P12896895849656128633

`A138464(A155212(n+5))`
-/

namespace A240686.P12896895849656128633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (A155212 (n + 5)).toNat

end

end A240686.P12896895849656128633

/-! ## A240686.P11818254833020632557

`A138464(eq[6, A219347(n)])`
-/

namespace A240686.P11818254833020632557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240686.P11818254833020632557

/-! ## A240686.P5652185281494599775

`A138464(eq[8, A193592(n)])`
-/

namespace A240686.P5652185281494599775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240686.P5652185281494599775

/-! ## A240686.P5053063959015433253

`A138464(eq[14, A185782(n+1)])`
-/

namespace A240686.P5053063959015433253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240686.P5053063959015433253

/-! ## A240686.P9335546567744796711

`A105599(eq[10, A131818(n+1)])`
-/

namespace A240686.P9335546567744796711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240686.P9335546567744796711

/-! ## A240686.P6810503115621261969

`A105599(eq[10, A135223(n+1)])`
-/

namespace A240686.P6810503115621261969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240686.P6810503115621261969

/-!
# A240687: Number of forests with n labeled nodes and 10 trees.

The programs for A240687, there is no canonical definition to state claims against.
-/

/-! ## A240687.P290240664701073436

`A138464(eq[8, A219347(n)])`
-/

namespace A240687.P290240664701073436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240687.P290240664701073436

/-! ## A240687.P9383841114425332841

`A138464(eq[9, A193592(n)])`
-/

namespace A240687.P9383841114425332841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240687.P9383841114425332841

/-! ## A240687.P3213470828573823076

`A138464(eq[16, A185782(n+1)])`
-/

namespace A240687.P3213470828573823076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240687.P3213470828573823076

/-! ## A240687.P8749522897001622548

`A105599(eq[11, A131818(n+1)])`
-/

namespace A240687.P8749522897001622548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240687.P8749522897001622548

/-! ## A240687.P10707362433003979349

`A105599(A167614(n+13)-A016885(n+10))`
-/

namespace A240687.P10707362433003979349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A167614 (n + 13) - A016885 (n + 10)).toNat

end

end A240687.P10707362433003979349

/-!
# A240688: Expansion of -(x*sqrt(-4*x^2-4*x+1)-2*x^2-3*x) / ((x+1)*sqrt(-4*x^2-4*x+1)+ 4*x^3+8*x^2+3*x-1).

The programs for A240688, the canonical program `A240688.P11995940089545582235` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240688 has offset 0).

The definition of A240688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240688.P11995940089545582235

`2*A006139(n)-A238578(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A240688

/-- `2*A006139(n)-A238578(n+1)` -/
def P11995940089545582235.Spec : Prop :=
  ∀ n, P11995940089545582235.a n = A240688 n

theorem P11995940089545582235.correct : P11995940089545582235.Spec := by
  intro n
  simp only [A240688]

end A240688

/-! ## A240688.P8100210436773442102

`∑{#}[n, (-1)^(n-#)*C(n, #)*A123164(#)]`
-/

namespace A240688.P8100210436773442102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A123164 k : ℚ)

end

end A240688.P8100210436773442102

namespace A240688

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A123164(#)]` -/
def P8100210436773442102.Spec : Prop :=
  ∀ n, P8100210436773442102.a n = (A240688 n : ℚ)

end A240688

/-! ## A240688.P6771891072321412868

`A004277(A238578(n))-A052709(n)`
-/

namespace A240688.P6771891072321412868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A238578 n).toNat - A052709 n

end

end A240688.P6771891072321412868

namespace A240688

/-- `A004277(A238578(n))-A052709(n)` -/
def P6771891072321412868.Spec : Prop :=
  ∀ n, P6771891072321412868.a n = A240688 n

end A240688

/-! ## A240688.P18032830470263916345

`A004277(A238578(n))-A052726(n)/n!`
-/

namespace A240688.P18032830470263916345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A238578 n).toNat : ℚ) - (A052726 n : ℚ) / (Nat.factorial n : ℚ)

end

end A240688.P18032830470263916345

namespace A240688

/-- `A004277(A238578(n))-A052726(n)/n!` -/
def P18032830470263916345.Spec : Prop :=
  ∀ n, P18032830470263916345.a n = (A240688 n : ℚ)

end A240688

/-!
# A240689: The number of values of the digit k for which prime(n)*10+k is prime.

The programs for A240689, the canonical program `A240689.P7296709912588250351` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240689 has offset 1).

The definition of A240689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240689.P8659463305552321001

`A038800(Δ[A007504(n)])`
-/

namespace A240689.P8659463305552321001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (f1 (n + 1) - f1 n).toNat

end

end A240689.P8659463305552321001

namespace A240689

/-- `A038800(Δ[A007504(n)])` -/
def P8659463305552321001.Spec : Prop :=
  ∀ n, P8659463305552321001.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P7296709912588250351

`A038800(A000040(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A240689

/-- `A038800(A000040(n+1))` -/
def P7296709912588250351.Spec : Prop :=
  ∀ n, P7296709912588250351.a n = A240689 (n + 1)

theorem P7296709912588250351.correct : P7296709912588250351.Spec := by
  intro n
  simp only [A240689, Nat.add_sub_cancel]

end A240689

/-! ## A240689.P4523546495806844747

`A038800(A008578(n+2))`
-/

namespace A240689.P4523546495806844747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A008578 (n + 2)).toNat

end

end A240689.P4523546495806844747

namespace A240689

/-- `A038800(A008578(n+2))` -/
def P4523546495806844747.Spec : Prop :=
  ∀ n, P4523546495806844747.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P13046948292743826380

`A038800(A116974(n+2))`
-/

namespace A240689.P13046948292743826380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A116974 (n + 2)).toNat

end

end A240689.P13046948292743826380

namespace A240689

/-- `A038800(A116974(n+2))` -/
def P13046948292743826380.Spec : Prop :=
  ∀ n, P13046948292743826380.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P1468191853958670424

`A038800(A182986(n+2))`
-/

namespace A240689.P1468191853958670424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A182986 (n + 2)).toNat

end

end A240689.P1468191853958670424

namespace A240689

/-- `A038800(A182986(n+2))` -/
def P1468191853958670424.Spec : Prop :=
  ∀ n, P1468191853958670424.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P1196293745661843520

`A038800(eq[0, A007920(n)])`
-/

namespace A240689.P1196293745661843520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P1196293745661843520

namespace A240689

/-- `A038800(eq[0, A007920(n)])` -/
def P1196293745661843520.Spec : Prop :=
  ∀ n, P1196293745661843520.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P1852628613329815435

`A038800(eq[1, A003415(n)])`
-/

namespace A240689.P1852628613329815435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P1852628613329815435

namespace A240689

/-- `A038800(eq[1, A003415(n)])` -/
def P1852628613329815435.Spec : Prop :=
  ∀ n, P1852628613329815435.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P10347098708550011031

`A038800(eq[1, A018783(n)])`
-/

namespace A240689.P10347098708550011031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P10347098708550011031

namespace A240689

/-- `A038800(eq[1, A018783(n)])` -/
def P10347098708550011031.Spec : Prop :=
  ∀ n, P10347098708550011031.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P9804948242560815332

`A038800(eq[1, A175126(n)])`
-/

namespace A240689.P9804948242560815332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P9804948242560815332

namespace A240689

/-- `A038800(eq[1, A175126(n)])` -/
def P9804948242560815332.Spec : Prop :=
  ∀ n, P9804948242560815332.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P2424379164237556389

`A038800(eq[1, A302055(n)])`
-/

namespace A240689.P2424379164237556389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P2424379164237556389

namespace A240689

/-- `A038800(eq[1, A302055(n)])` -/
def P2424379164237556389.Spec : Prop :=
  ∀ n, P2424379164237556389.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P12980251050440104705

`A038800(eq[1, A328772(n)])`
-/

namespace A240689.P12980251050440104705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P12980251050440104705

namespace A240689

/-- `A038800(eq[1, A328772(n)])` -/
def P12980251050440104705.Spec : Prop :=
  ∀ n, P12980251050440104705.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P18201397762999654448

`A038800(eq[2, A005127(n)])`
-/

namespace A240689.P18201397762999654448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P18201397762999654448

namespace A240689

/-- `A038800(eq[2, A005127(n)])` -/
def P18201397762999654448.Spec : Prop :=
  ∀ n, P18201397762999654448.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P2785347245456047578

`A038800(eq[2, A005128(n)])`
-/

namespace A240689.P2785347245456047578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P2785347245456047578

namespace A240689

/-- `A038800(eq[2, A005128(n)])` -/
def P2785347245456047578.Spec : Prop :=
  ∀ n, P2785347245456047578.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P16158990205572839974

`A038800(eq[2, A319410(n)])`
-/

namespace A240689.P16158990205572839974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P16158990205572839974

namespace A240689

/-- `A038800(eq[2, A319410(n)])` -/
def P16158990205572839974.Spec : Prop :=
  ∀ n, P16158990205572839974.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P2792856866851339587

`A038800(eq[2, A327859(n)])`
-/

namespace A240689.P2792856866851339587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P2792856866851339587

namespace A240689

/-- `A038800(eq[2, A327859(n)])` -/
def P2792856866851339587.Spec : Prop :=
  ∀ n, P2792856866851339587.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P18309643189094586226

`A038800(eq[3, A226602(n)])`
-/

namespace A240689.P18309643189094586226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P18309643189094586226

namespace A240689

/-- `A038800(eq[3, A226602(n)])` -/
def P18309643189094586226.Spec : Prop :=
  ∀ n, P18309643189094586226.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P10569794792770727964

`A038800(record[A006530(n+2)])`
-/

namespace A240689.P10569794792770727964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240689.P10569794792770727964

namespace A240689

/-- `A038800(record[A006530(n+2)])` -/
def P10569794792770727964.Spec : Prop :=
  ∀ n, P10569794792770727964.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P9851300520851787449

`A038800(record[A014963(n+2)])`
-/

namespace A240689.P9851300520851787449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240689.P9851300520851787449

namespace A240689

/-- `A038800(record[A014963(n+2)])` -/
def P9851300520851787449.Spec : Prop :=
  ∀ n, P9851300520851787449.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P14830857335355296040

`A038800(record[A020639(n+2)])`
-/

namespace A240689.P14830857335355296040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240689.P14830857335355296040

namespace A240689

/-- `A038800(record[A020639(n+2)])` -/
def P14830857335355296040.Spec : Prop :=
  ∀ n, P14830857335355296040.a n = A240689 (n + 1)

end A240689

/-! ## A240689.P16099590724567603922

`A038800(eq[2, A128982(n+1)])`
-/

namespace A240689.P16099590724567603922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240689.P16099590724567603922

namespace A240689

/-- `A038800(eq[2, A128982(n+1)])` -/
def P16099590724567603922.Spec : Prop :=
  ∀ n, P16099590724567603922.a n = A240689 (n + 1)

end A240689

/-!
# A240690: Number of partitions p of n such that p contains fewer 1s than its conjugate.

The programs for A240690, there is no canonical definition to state claims against.
-/

/-! ## A240690.P18444031920333156337

`A087787(n)-(-1)^n`
-/

namespace A240690.P18444031920333156337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n - (-1) ^ n

end

end A240690.P18444031920333156337

/-! ## A240690.P14144099693927843717

`A000041(n)-a(n-1)` with `a(0)=0`
-/

namespace A240690.P14144099693927843717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000041 n - a (n - 1)

end

end A240690.P14144099693927843717

/-! ## A240690.P5853406079912727362

`a(n-2)+A002865(n)` with `a(0)=0, a(1)=1`
-/

namespace A240690.P5853406079912727362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A002865 n

end

end A240690.P5853406079912727362

/-! ## A240690.P16112081986908614176

`A229816(n)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A240690.P16112081986908614176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A229816 n - a (n - 3)

end

end A240690.P16112081986908614176

/-! ## A240690.P6850647562645433431

`1+A000065(n)-a(n-1)` with `a(0)=0`
-/

namespace A240690.P6850647562645433431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 + A000065 n - a (n - 1)

end

end A240690.P6850647562645433431

/-! ## A240690.P4145043011836608954

`A035363(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A240690.P4145043011836608954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A035363 (2 * n) - a (n - 1)

end

end A240690.P4145043011836608954

/-! ## A240690.P1680196511910020431

`A119620(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A240690.P1680196511910020431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A119620 (2 * n) - a (n - 1)

end

end A240690.P1680196511910020431

/-! ## A240690.P4368309192120084559

`A035377(3*n)-a(n-1)` with `a(0)=0`
-/

namespace A240690.P4368309192120084559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A035377 (3 * n) - a (n - 1)

end

end A240690.P4368309192120084559

/-! ## A240690.P11705216575029724674

`Δ[A024786(n+1)+char[2*n]]`
-/

namespace A240690.P11705216575029724674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240690.P11705216575029724674

/-! ## A240690.P1800948225008551654

`∑[abs(A194795(abs(1-n)+1)+1)]`
-/

namespace A240690.P1800948225008551654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A194795 (|1 - (n : ℤ)| + 1).toNat + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240690.P1800948225008551654

/-! ## A240690.P8769700849401052602

`record[A035363(n+1)]-a(n-1)` with `a(0)=0`
-/

namespace A240690.P8769700849401052602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A240690.P8769700849401052602

/-! ## A240690.P9667864424779201892

`∑[A232697(n)]-n-a(n-1)` with `a(0)=0`
-/

namespace A240690.P9667864424779201892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) - a (n - 1)

end

end A240690.P9667864424779201892

/-! ## A240690.P255576890992706717

`A010673(n)+A087787(n)-1`
-/

namespace A240690.P255576890992706717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + (A087787 n - 1)

end

end A240690.P255576890992706717

/-! ## A240690.P14599162190139656379

`A018783(n)+A000837(n)-a(n-1)` with `a(0)=0`
-/

namespace A240690.P14599162190139656379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A018783 n + A000837 n - a (n - 1)

end

end A240690.P14599162190139656379

/-! ## A240690.P16471676282476647069

`A039900(n)+A003106(n)-a(n-1)` with `a(0)=0`
-/

namespace A240690.P16471676282476647069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A039900 n + A003106 n - a (n - 1)

end

end A240690.P16471676282476647069

/-! ## A240690.P9220617581695855900

`A239263(n)+A239259(n)-a(n-1)` with `a(0)=0`
-/

namespace A240690.P9220617581695855900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A239263 n + A239259 n - a (n - 1)

end

end A240690.P9220617581695855900

/-! ## A240690.P17484362977713041871

`∑[A000041(n)*A062157(n)]*A062157(n)`
-/

namespace A240690.P17484362977713041871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A062157 n

end

end A240690.P17484362977713041871

/-! ## A240690.P733696752031735872

`A332284(n)+A332283(n)-a(n-1)` with `a(0)=0`
-/

namespace A240690.P733696752031735872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A332284 n + A332283 n - a (n - 1)

end

end A240690.P733696752031735872

/-! ## A240690.P10657468452551838484

`∑{#}[n, (-1)^(n-#)*C(n, #)*A103446(#)]`
-/

namespace A240690.P10657468452551838484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A103446 k : ℚ)

end

end A240690.P10657468452551838484

/-!
# A240691: Number of partitions p of n such that (# 1s in p) = (#1s in conjugate(p)).

The programs for A240691, there is no canonical definition to state claims against.
-/

/-! ## A240691.P693615892768212952

`A240690(n+2)-A240690(n+1)`
-/

namespace A240691.P693615892768212952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240690 (n + 2) - A240690 (n + 1)

end

end A240691.P693615892768212952

/-! ## A240691.P6544398713237071962

`Δ[A240690(1+n)]`
-/

namespace A240691.P6544398713237071962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240690 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240691.P6544398713237071962

/-! ## A240691.P2068172037395908390

`abs(A194795(n+1)+1)`
-/

namespace A240691.P2068172037395908390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194795 (n + 1) + 1|

end

end A240691.P2068172037395908390

/-! ## A240691.P11498430326951635953

`Δ[A087787(n)-(-1)^n]`
-/

namespace A240691.P11498430326951635953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240691.P11498430326951635953

/-! ## A240691.P2860768121531892947

`Δ[A000041(n)-a(n-1)]` with `a(0)=0`
-/

namespace A240691.P2860768121531892947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000041 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240691.P2860768121531892947

/-! ## A240691.P9559925373601190802

`Δ[A000065(n)]-a(n-1)` with `a(0)=1`
-/

namespace A240691.P9559925373601190802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A240691.P9559925373601190802

/-! ## A240691.P13574186918490028873

`A002865(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A240691.P13574186918490028873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002865 (n + 1) - a (n - 1)

end

end A240691.P13574186918490028873

/-! ## A240691.P769300249738421543

`A187219(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A240691.P769300249738421543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A187219 (n + 1) - a (n - 1)

end

end A240691.P769300249738421543

/-! ## A240691.P5278267732744278888

`abs(a(n-1)-Δ[A052810(n)])` with `a(0)=1`
-/

namespace A240691.P5278267732744278888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - (f1 (n + 1) - f1 n)|

end

end A240691.P5278267732744278888

/-! ## A240691.P13116278662500222693

`Δ[A139582(n)/2]-a(n-1)` with `a(0)=1`
-/

namespace A240691.P13116278662500222693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A240691.P13116278662500222693

/-!
# A240692: Squared radii of circles which exactly encircle clusters in the A2 lattice in increasing order.

The programs for A240692, there is no canonical definition to state claims against.
-/

/-! ## A240692.P5830856251180148439

`xor(A184795(2*n+1), A359902(A004166(3*n)))`
-/

namespace A240692.P5830856251180148439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A184795 (2 * n + 1)) (A359902 (A004166 (3 * n)).toNat)

end

end A240692.P5830856251180148439

/-!
# A240693: Primes p such that p^10 + p^9 + p^8 + p^7 + p^6 + p^5 + p^4 + p^3 + p^2 + p + 1 is prime.

The programs for A240693, there is no canonical definition to state claims against.
-/

/-! ## A240693.P15057602704795802012

`p?[A162862(n+1)]`
-/

namespace A240693.P15057602704795802012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240693.P15057602704795802012

/-! ## A240693.P7289289270221996915

`p?[record[A162862(A133310(n))]]`
-/

namespace A240693.P7289289270221996915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240693.P7289289270221996915

/-! ## A240693.P5379452772800578100

`p?[n%2*A162862(A080513(n))]`
-/

namespace A240693.P5379452772800578100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A162862 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240693.P5379452772800578100

/-! ## A240693.P8488276416284571410

`∩[A009087(n+1), A162862(n+1)]`
-/

namespace A240693.P8488276416284571410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P8488276416284571410

/-! ## A240693.P16408362155022779408

`∩[A000040(n+1), A162862(n+1)]`
-/

namespace A240693.P16408362155022779408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P16408362155022779408

/-! ## A240693.P6319665541538632634

`∩[A045344(n+1), A162862(n+1)]`
-/

namespace A240693.P6319665541538632634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P6319665541538632634

/-! ## A240693.P4884963562902992157

`∩[A065091(n+1), A162862(n+1)]`
-/

namespace A240693.P4884963562902992157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P4884963562902992157

/-! ## A240693.P7772144800402399844

`∩[A065396(n+1), A162862(n+1)]`
-/

namespace A240693.P7772144800402399844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P7772144800402399844

/-! ## A240693.P7344126080173136629

`∩[A070957(n+1), A162862(n+1)]`
-/

namespace A240693.P7344126080173136629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P7344126080173136629

/-! ## A240693.P15989740601432452930

`∩[A083249(n+1), A162862(n+1)]`
-/

namespace A240693.P15989740601432452930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P15989740601432452930

/-! ## A240693.P9416072395781056865

`∩[A106118(n+1), A162862(n+1)]`
-/

namespace A240693.P9416072395781056865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P9416072395781056865

/-! ## A240693.P1514651673986451567

`∩[A108719(n+1), A162862(n+1)]`
-/

namespace A240693.P1514651673986451567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P1514651673986451567

/-! ## A240693.P16056077655277114889

`∩[A116974(n+1), A162862(n+1)]`
-/

namespace A240693.P16056077655277114889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P16056077655277114889

/-! ## A240693.P12405419769352548718

`∩[A138837(n+1), A162862(n+1)]`
-/

namespace A240693.P12405419769352548718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P12405419769352548718

/-! ## A240693.P6517496405372652273

`∩[A161346(n+1), A162862(n+1)]`
-/

namespace A240693.P6517496405372652273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P6517496405372652273

/-! ## A240693.P8898841826698586378

`∩[A161428(n+1), A162862(n+1)]`
-/

namespace A240693.P8898841826698586378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P8898841826698586378

/-! ## A240693.P2357097232924617093

`∩[A162862(n+1), A175787(n+1)]`
-/

namespace A240693.P2357097232924617093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P2357097232924617093

/-! ## A240693.P14519616701496169813

`∩[A162862(n+1), A182986(n+1)]`
-/

namespace A240693.P14519616701496169813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P14519616701496169813

/-! ## A240693.P9264137764085868364

`∩[A162862(n+1), A215848(n+1)]`
-/

namespace A240693.P9264137764085868364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P9264137764085868364

/-! ## A240693.P6166249343071412606

`∩[A162862(n+1), A261123(n+1)]`
-/

namespace A240693.P6166249343071412606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240693.P6166249343071412606

/-!
# A240694: Partial products of divisors of n, cf. A027750.

The programs for A240694, there is no canonical definition to state claims against.
-/

/-! ## A240694.P3066578013376984984

`A007955(A027750(n+1))*A184340(A124459(n+1))`
-/

namespace A240694.P3066578013376984984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A027750 (n + 1)).toNat * A184340 (A124459 (n + 1)).toNat

end

end A240694.P3066578013376984984

/-! ## A240694.P13499465631565745019

`A027750(n+1)*A050361(A000105(n))`
-/

namespace A240694.P13499465631565745019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A050361 (A000105 n).toNat

end

end A240694.P13499465631565745019

/-! ## A240694.P14208606731658577386

`A003842(A061995(n))*A027750(n+1)`
-/

namespace A240694.P14208606731658577386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A061995 n).toNat * A027750 (n + 1)

end

end A240694.P14208606731658577386

/-! ## A240694.P5568782768250016394

`A006928(A064230(n))*A027750(n+1)`
-/

namespace A240694.P5568782768250016394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A064230 n).toNat * A027750 (n + 1)

end

end A240694.P5568782768250016394

/-! ## A240694.P7730682112616691060

`A026791(A089372(n))*A027750(n+1)`
-/

namespace A240694.P7730682112616691060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (A089372 n).toNat * A027750 (n + 1)

end

end A240694.P7730682112616691060

/-!
# A240695: a(n) is the smallest k such that a unique product of distinct terms of A050376 which is equal to k! contains at least the first n terms of A050376.

The programs for A240695, there is no canonical definition to state claims against.
-/

/-! ## A240695.P756346245624240922

`a(n-1)^A291081(n)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A240695.P756346245624240922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3, 4, 5] fun n a =>
  a (n - 1) ^ (A291081 n : ℤ)

end

end A240695.P756346245624240922

/-! ## A240695.P4809404564469480033

`5^abs(A108086(a(n-2)+3))` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A240695.P4809404564469480033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  (5 : ℚ) ^ (|A108086 (SequenceMachineLib.roundAway (a (n - 2) + 3)).toNat| : ℤ)

end

end A240695.P4809404564469480033

/-!
# A240697: The smallest p2-p1 when 2n = p1+p4 = p2+p3, where p1 < p2 <= p3 < p4 are prime numbers.

The programs for A240697, there is no canonical definition to state claims against.
-/

/-! ## A240697.P7259603010217337098

`A100573(A362641(n+1))`
-/

namespace A240697.P7259603010217337098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100573 (A362641 (n + 1)).toNat

end

end A240697.P7259603010217337098

/-! ## A240697.P3433296604423102289

`A100573(A362640(n+1))`
-/

namespace A240697.P3433296604423102289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100573 (A362640 (n + 1)).toNat

end

end A240697.P3433296604423102289

/-!
# A240698: Partial sums of divisors of n, cf. A027750.

The programs for A240698, there is no canonical definition to state claims against.
-/

/-! ## A240698.P4445204162514608525

`A319057(A240694(n+1))+1`
-/

namespace A240698.P4445204162514608525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319057 (A240694 (n + 1)).toNat + 1

end

end A240698.P4445204162514608525

/-! ## A240698.P5801135111787750146

`or(A025441(A141618(n+1)), A290478(n+1))`
-/

namespace A240698.P5801135111787750146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025441 (A141618 (n + 1)).toNat) (A290478 (n + 1))

end

end A240698.P5801135111787750146

/-! ## A240698.P5021124615150464081

`or(A290478(n+1), A295819(A206822(3*n+2)))`
-/

namespace A240698.P5021124615150464081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290478 (n + 1)) (A295819 (A206822 (3 * n + 2)).toNat)

end

end A240698.P5021124615150464081

/-! ## A240698.P10264474784506642649

`A290478(n+1)+A025441(2*A141618(n+1))`
-/

namespace A240698.P10264474784506642649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290478 (n + 1) + A025441 (2 * A141618 (n + 1)).toNat

end

end A240698.P10264474784506642649

/-! ## A240698.P7785341459456658794

`A341523(A231610(n))+A290478(n+1)`
-/

namespace A240698.P7785341459456658794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341523 (A231610 n).toNat + A290478 (n + 1)

end

end A240698.P7785341459456658794

/-!
# A240699: Primes p such that at least one number among p+-2, p+-4, p+-6 is also a prime.

The programs for A240699, there is no canonical definition to state claims against.
-/

/-! ## A240699.P16584098899743424335

`p?[n+3-A159700(A051700(n+3))]`
-/

namespace A240699.P16584098899743424335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A159700 (A051700 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240699.P16584098899743424335

/-! ## A240699.P3329926347250018914

`p?[A055672(n)-A018896(A051700(n))]`
-/

namespace A240699.P3329926347250018914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n - A018896 (A051700 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240699.P3329926347250018914

/-! ## A240699.P620985657455842157

`eq[A014310(A051700(n)), A064722(n+1)]`
-/

namespace A240699.P620985657455842157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014310 (A051700 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240699.P620985657455842157

/-! ## A240699.P1019736727976739006

`∪[A079427(A124590(n+1)), A124590(n+2)]`
-/

namespace A240699.P1019736727976739006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (A124590 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A240699.P1019736727976739006

/-! ## A240699.P14519853225124487067

`eq[A093178(n)-A159700(A051700(n)), A007918(n)]`
-/

namespace A240699.P14519853225124487067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A159700 (A051700 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240699.P14519853225124487067

/-! ## A240699.P15975891600096088360

`eq[A107279(n), A306721(A051700(n))]`
-/

namespace A240699.P15975891600096088360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306721 (A051700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240699.P15975891600096088360

/-! ## A240699.P1255138267391698697

`p?[A098767(n+1)%A330744(n+1)]`
-/

namespace A240699.P1255138267391698697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098767 (n + 1)) (A330744 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240699.P1255138267391698697

/-! ## A240699.P8233759731398552545

`record[A006530(A143144(A008574(n)))]`
-/

namespace A240699.P8233759731398552545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A143144 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240699.P8233759731398552545

/-! ## A240699.P990786294554863415

`record[A000040((n+1)%A105160(n+1)+1)]`
-/

namespace A240699.P990786294554863415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (n + 1 : ℤ) (A105160 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240699.P990786294554863415

/-! ## A240699.P2945477715467302085

`eq[A032741(n), A074754(A006512(n+1))]`
-/

namespace A240699.P2945477715467302085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (A006512 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240699.P2945477715467302085

