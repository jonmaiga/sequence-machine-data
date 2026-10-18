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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A126001: A106486-encodings of nonnegative combinatorial games, i.e., games whose value is >= 0.

The programs for A126001, the canonical program `A126001.P7297850996913408531` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126001 has offset 1).

The definition of A126001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126001.P7297850996913408531

`record[and(n, -35)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A126001

/-- `record[and(n, -35)]` -/
def P7297850996913408531.Spec : Prop :=
  ∀ n, P7297850996913408531.a n = A126001 (n + 1)

theorem P7297850996913408531.correct : P7297850996913408531.Spec := by
  intro n
  simp only [A126001, Nat.add_sub_cancel]

end A126001

/-! ## A126001.P9269512749407736628

`record[or(34, n)-34]`
-/

namespace A126001.P9269512749407736628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 34 n : ℤ) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126001.P9269512749407736628

namespace A126001

/-- `record[or(34, n)-34]` -/
def P9269512749407736628.Spec : Prop :=
  ∀ n, P9269512749407736628.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P701396182900823959

`record[xor(34, n)-34]`
-/

namespace A126001.P701396182900823959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 34 n : ℤ) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126001.P701396182900823959

namespace A126001

/-- `record[xor(34, n)-34]` -/
def P701396182900823959.Spec : Prop :=
  ∀ n, P701396182900823959.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P4036006160658775640

`xor(34, record[xor(34, n)])`
-/

namespace A126001.P4036006160658775640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 34 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 34 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A126001.P4036006160658775640

namespace A126001

/-- `xor(34, record[xor(34, n)])` -/
def P4036006160658775640.Spec : Prop :=
  ∀ n, (P4036006160658775640.a n : ℤ) = A126001 (n + 1)

end A126001

/-! ## A126001.P1214787021987732520

`record[n*A320006(n)]`
-/

namespace A126001.P1214787021987732520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A320006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126001.P1214787021987732520

namespace A126001

/-- `record[n*A320006(n)]` -/
def P1214787021987732520.Spec : Prop :=
  ∀ n, P1214787021987732520.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P6740461296593737161

`A326781(n+1)/4`
-/

namespace A126001.P6740461296593737161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326781 (n + 1) : ℚ) / 4

end

end A126001.P6740461296593737161

namespace A126001

/-- `A326781(n+1)/4` -/
def P6740461296593737161.Spec : Prop :=
  ∀ n, P6740461296593737161.a n = (A126001 (n + 1) : ℚ)

end A126001

/-! ## A126001.P7345356539199894953

`lt[acot(A339970(n+3)), A320006(n)]`
-/

namespace A126001.P7345356539199894953
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A339970 (n + 3) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A126001.P7345356539199894953

namespace A126001

/-- `lt[acot(A339970(n+3)), A320006(n)]` -/
def P7345356539199894953.Spec : Prop :=
  ∀ n, (P7345356539199894953.a n : ℤ) = A126001 (n + 1)

end A126001

/-! ## A126001.P3336420437525860077

`eq[A112049(n+1), A320006(n)]`
-/

namespace A126001.P3336420437525860077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126001.P3336420437525860077

namespace A126001

/-- `eq[A112049(n+1), A320006(n)]` -/
def P3336420437525860077.Spec : Prop :=
  ∀ n, (P3336420437525860077.a n : ℤ) = A126001 (n + 1)

end A126001

/-! ## A126001.P6274196174090647900

`filter[A042948(n), A320006(#)]`
-/

namespace A126001.P6274196174090647900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A126001.P6274196174090647900

namespace A126001

/-- `filter[A042948(n), A320006(#)]` -/
def P6274196174090647900.Spec : Prop :=
  ∀ n, P6274196174090647900.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P6296102693654807063

`eq[A088840(n+1), A320006(n)]`
-/

namespace A126001.P6296102693654807063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126001.P6296102693654807063

namespace A126001

/-- `eq[A088840(n+1), A320006(n)]` -/
def P6296102693654807063.Spec : Prop :=
  ∀ n, (P6296102693654807063.a n : ℤ) = A126001 (n + 1)

end A126001

/-! ## A126001.P13322498416689985349

`eq[A140670(n+1), A320006(n)]`
-/

namespace A126001.P13322498416689985349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126001.P13322498416689985349

namespace A126001

/-- `eq[A140670(n+1), A320006(n)]` -/
def P13322498416689985349.Spec : Prop :=
  ∀ n, (P13322498416689985349.a n : ℤ) = A126001 (n + 1)

end A126001

/-! ## A126001.P5801152858936307049

`eq[A160467(n+1), A320006(n)]`
-/

namespace A126001.P5801152858936307049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126001.P5801152858936307049

namespace A126001

/-- `eq[A160467(n+1), A320006(n)]` -/
def P5801152858936307049.Spec : Prop :=
  ∀ n, (P5801152858936307049.a n : ℤ) = A126001 (n + 1)

end A126001

/-! ## A126001.P10557267483513021187

`filter[A047432(n+1), A320006(#)]`
-/

namespace A126001.P10557267483513021187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A126001.P10557267483513021187

namespace A126001

/-- `filter[A047432(n+1), A320006(#)]` -/
def P10557267483513021187.Spec : Prop :=
  ∀ n, P10557267483513021187.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P12179724425981530497

`filter[A047494(n+1), A320006(#)]`
-/

namespace A126001.P12179724425981530497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A126001.P12179724425981530497

namespace A126001

/-- `filter[A047494(n+1), A320006(#)]` -/
def P12179724425981530497.Spec : Prop :=
  ∀ n, P12179724425981530497.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P17917499358720286914

`filter[A047601(n+1), A320006(#)]`
-/

namespace A126001.P17917499358720286914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A126001.P17917499358720286914

namespace A126001

/-- `filter[A047601(n+1), A320006(#)]` -/
def P17917499358720286914.Spec : Prop :=
  ∀ n, P17917499358720286914.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P14289695541060995134

`filter[A047614(n+1), A320006(#)]`
-/

namespace A126001.P14289695541060995134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A126001.P14289695541060995134

namespace A126001

/-- `filter[A047614(n+1), A320006(#)]` -/
def P14289695541060995134.Spec : Prop :=
  ∀ n, P14289695541060995134.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P5233810176975217285

`filter[A161674(n+1), A320006(#)]`
-/

namespace A126001.P5233810176975217285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A126001.P5233810176975217285

namespace A126001

/-- `filter[A161674(n+1), A320006(#)]` -/
def P5233810176975217285.Spec : Prop :=
  ∀ n, P5233810176975217285.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P2606734178801844437

`filter[A047569(n+1), A320006(#)]`
-/

namespace A126001.P2606734178801844437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A126001.P2606734178801844437

namespace A126001

/-- `filter[A047569(n+1), A320006(#)]` -/
def P2606734178801844437.Spec : Prop :=
  ∀ n, P2606734178801844437.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P10013500775176805525

`filter[A004773(n), A320006(#)]`
-/

namespace A126001.P10013500775176805525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A126001.P10013500775176805525

namespace A126001

/-- `filter[A004773(n), A320006(#)]` -/
def P10013500775176805525.Spec : Prop :=
  ∀ n, P10013500775176805525.a n = A126001 (n + 1)

end A126001

/-! ## A126001.P13875075540656992636

`filter[A131452(n), A320006(#)]`
-/

namespace A126001.P13875075540656992636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A126001.P13875075540656992636

namespace A126001

/-- `filter[A131452(n), A320006(#)]` -/
def P13875075540656992636.Spec : Prop :=
  ∀ n, P13875075540656992636.a n = A126001 (n + 1)

end A126001

/-!
# A126003: A106486-encodings of combinatorial games whose value is incomparable with zero game, i.e., fuzzy games.

The programs for A126003, there is no canonical definition to state claims against.
-/

/-! ## A126003.P15054511749575090791

`eq[0, A052330(n)%6]`
-/

namespace A126003.P15054511749575090791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052330 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126003.P15054511749575090791

/-! ## A126003.P13585336429540920537

`eq[0, A010875(A052330(n))]`
-/

namespace A126003.P13585336429540920537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A052330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126003.P13585336429540920537

/-! ## A126003.P562297385034905158

`lt[A320006(n), sin(A034798(n))]`
-/

namespace A126003.P562297385034905158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A034798 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A126003.P562297385034905158

/-! ## A126003.P4099608503059451549

`eq[n*A236677(n), A320006(n)]`
-/

namespace A126003.P4099608503059451549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A236677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126003.P4099608503059451549

/-! ## A126003.P7189766987637597220

`lt[n*A320006(n), A115971(n)]`
-/

namespace A126003.P7189766987637597220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A320006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126003.P7189766987637597220

/-! ## A126003.P7977477769112027241

`eq[6, gcd(A052330(n), A182286(n+1))]`
-/

namespace A126003.P7977477769112027241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052330 n) (A182286 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126003.P7977477769112027241

/-! ## A126003.P1730833925347692771

`lt[A010875(A052330(n)), A115971(n)]`
-/

namespace A126003.P1730833925347692771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A052330 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126003.P1730833925347692771

/-! ## A126003.P12651852633943078042

`eq[A019565(n*A320006(n)), A115971(n)]`
-/

namespace A126003.P12651852633943078042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((n : ℤ) * A320006 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126003.P12651852633943078042

/-! ## A126003.P7062102254693497935

`eq[A052330(n*A320006(n)), A115971(n)]`
-/

namespace A126003.P7062102254693497935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 ((n : ℤ) * A320006 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126003.P7062102254693497935

/-! ## A126003.P13077398600196279676

`eq[A115971(n), A344535(n*A320006(n))]`
-/

namespace A126003.P13077398600196279676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344535 ((n : ℤ) * A320006 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126003.P13077398600196279676

/-!
# A126004: A106486-encodings of combinatorial games whose value is greater than zero.

The programs for A126004, there is no canonical definition to state claims against.
-/

/-! ## A126004.P16160159527586709783

`filter[A126001(n+1), A115971(#)]`
-/

namespace A126004.P16160159527586709783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A126004.P16160159527586709783

/-! ## A126004.P13589871778278437623

`lt[1, A320006(n)+tanh(A034798(n))]`
-/

namespace A126004.P13589871778278437623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A320006 n : ℝ) + Real.tanh (A034798 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A126004.P13589871778278437623

/-! ## A126004.P1644515343290232266

`record[A236677(n)+n*A320006(n)]`
-/

namespace A126004.P1644515343290232266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 n + (n : ℤ) * A320006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126004.P1644515343290232266

/-! ## A126004.P12708043057919981855

`eq[2, gcd(A052330(n), A182286(n+1))]`
-/

namespace A126004.P12708043057919981855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052330 n) (A182286 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126004.P12708043057919981855

/-! ## A126004.P13160692118041782134

`lt[A235202(n+1)*A236677(n), A320006(n)]`
-/

namespace A126004.P13160692118041782134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235202 (n + 1) * A236677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126004.P13160692118041782134

/-! ## A126004.P10054538523916188428

`lt[A055941(n), n*A115971(n)*A320006(n)]`
-/

namespace A126004.P10054538523916188428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A115971 n * A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126004.P10054538523916188428

/-! ## A126004.P650063374875554504

`lt[A236677(n+2), A320006(n)/A235202(n+1)]`
-/

namespace A126004.P650063374875554504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 (n + 2)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320006 n : ℚ) / (A235202 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A126004.P650063374875554504

/-!
# A126005: A106486-encodings of combinatorial games whose value is less than zero.

The programs for A126005, there is no canonical definition to state claims against.
-/

/-! ## A126005.P7484152360557557141

`lt[A320006(n)+A034798(n), 1]`
-/

namespace A126005.P7484152360557557141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n + A034798 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A126005.P7484152360557557141

/-! ## A126005.P12895573087694553660

`A079599(comp[A103127(n+1)]+1)`
-/

namespace A126005.P12895573087694553660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079599 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A126005.P12895573087694553660

/-! ## A126005.P8263529426283425078

`lt[char[A125991(n+1)], A236677(n)]`
-/

namespace A126005.P8263529426283425078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125991 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A126005.P8263529426283425078

/-! ## A126005.P16120605190157335614

`eq[cos(n)*A115971(n), A320006(n)]`
-/

namespace A126005.P16120605190157335614
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) * (A115971 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A126005.P16120605190157335614

/-! ## A126005.P7377096863606165500

`eq[lcm(6, A052330(n)), A052330(n+1)]`
-/

namespace A126005.P7377096863606165500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A052330 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126005.P7377096863606165500

/-! ## A126005.P4820900530192087857

`eq[A019565(n)*A115971(n), A320006(n)]`
-/

namespace A126005.P4820900530192087857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n * A115971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126005.P4820900530192087857

/-! ## A126005.P4813206747825012835

`eq[A052330(n)*A115971(n), A320006(n)]`
-/

namespace A126005.P4813206747825012835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 n * A115971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126005.P4813206747825012835

/-! ## A126005.P5085717065420099364

`eq[A115971(n)*A344535(n), A320006(n)]`
-/

namespace A126005.P5085717065420099364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 n * A344535 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126005.P5085717065420099364

/-! ## A126005.P4002687112767389861

`lt[A235202(n+1)*A320006(n), A236677(n)]`
-/

namespace A126005.P4002687112767389861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235202 (n + 1) * A320006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126005.P4002687112767389861

/-!
# A126006: Involution of nonnegative integers: Swap the positions of digits q0 <-> q1, q2 <-> q3, q4 <-> q5, etc. in the base-4 expansion of n (where n = ... + q4*256 + q3*64 + q2*16 + q1*4 + q0).

The programs for A126006, there is no canonical definition to state claims against.
-/

/-! ## A126006.P12433871016864265852

`A341288(∑[n+5]+5)`
-/

namespace A126006.P12433871016864265852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341288 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A126006.P12433871016864265852

/-! ## A126006.P17540486586635811350

`xor(2, xor(2, A341288(A052905(n+2))))`
-/

namespace A126006.P17540486586635811350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A341288 (A052905 (n + 2)).toNat))

end

end A126006.P17540486586635811350

/-! ## A126006.P16699050288178029904

`A057427(n)*A341288(A052905(n+2))`
-/

namespace A126006.P16699050288178029904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A341288 (A052905 (n + 2)).toNat

end

end A126006.P16699050288178029904

/-! ## A126006.P15791086844704005183

`A178489(n)*A341288(A052905(n+2))`
-/

namespace A126006.P15791086844704005183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A341288 (A052905 (n + 2)).toNat

end

end A126006.P15791086844704005183

/-! ## A126006.P3040159469197610680

`A341288(A052905(n+2))%A010001(n)`
-/

namespace A126006.P3040159469197610680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341288 (A052905 (n + 2)).toNat) (A010001 n)

end

end A126006.P3040159469197610680

/-! ## A126006.P5713044759208741612

`char[A014681(n)]*A341288(A052905(n+2))`
-/

namespace A126006.P5713044759208741612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A341288 (A052905 (n + 2)).toNat

end

end A126006.P5713044759208741612

/-! ## A126006.P16773602634489113855

`A341288(A052905(n+2))+5%A033999(n)`
-/

namespace A126006.P16773602634489113855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341288 (A052905 (n + 2)).toNat + Int.tmod 5 (A033999 n)

end

end A126006.P16773602634489113855

/-! ## A126006.P16217715309232316628

`A341288(A052905(n+2))+C(n, A113630(n))`
-/

namespace A126006.P16217715309232316628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341288 (A052905 (n + 2)).toNat + (Nat.choose n (A113630 n).toNat : ℤ)

end

end A126006.P16217715309232316628

/-! ## A126006.P14609675658106569861

`A341288(A052905(n+2))+char[A255026(n+1)]`
-/

namespace A126006.P14609675658106569861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255026 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341288 (A052905 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A126006.P14609675658106569861

/-! ## A126006.P7119476069796144095

`and(1, A000040(n+1))*A341288(A052905(n+2))`
-/

namespace A126006.P7119476069796144095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A341288 (A052905 (n + 2)).toNat

end

end A126006.P7119476069796144095

/-!
# A126007: Involution of nonnegative integers: Keep the least significant quaternary digit q0 of n fixed, but swap the positions of digits q1 <-> q2, q3 <-> q4, ..., etc. in the base-4 expansion of n (where n = ... + q4*256 + q3*64 + q2*16 + q1*4 + q0).

The programs for A126007, there is no canonical definition to state claims against.
-/

/-! ## A126007.P1401811603049102978

`A057300(A126008(n))`
-/

namespace A126007.P1401811603049102978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A126008 n).toNat

end

end A126007.P1401811603049102978

/-! ## A126007.P2409917269976602854

`A126008(xor(A004468(n), A063694(n)))`
-/

namespace A126007.P2409917269976602854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126008 (Int.xor (A004468 n) (A063694 n)).toNat

end

end A126007.P2409917269976602854

/-! ## A126007.P11796666061947602590

`A126008(xor(A006015(n), A063695(n)))`
-/

namespace A126007.P11796666061947602590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126008 (Int.xor (A006015 n) (A063695 n)).toNat

end

end A126007.P11796666061947602590

/-! ## A126007.P11512055521033239973

`A126008(xor(A048647(n), A163241(n)))`
-/

namespace A126007.P11512055521033239973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126008 (Int.xor (A048647 n) (A163241 n)).toNat

end

end A126007.P11512055521033239973

/-! ## A126007.P6139738294130035942

`A126008(A004514(n)+A063695(n)/2)`
-/

namespace A126007.P6139738294130035942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126008 (SequenceMachineLib.roundAway ((A004514 n : ℚ) + (A063695 n : ℚ) / 2)).toNat

end

end A126007.P6139738294130035942

/-! ## A126007.P9745085910207151031

`A106485(A057300(n))%A115420(n+1)²`
-/

namespace A126007.P9745085910207151031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106485 (A057300 n).toNat) (A115420 (n + 1) ^ 2)

end

end A126007.P9745085910207151031

/-! ## A126007.P7063966870855630493

`A163241(A048647(A126008(A048647(n))))`
-/

namespace A126007.P7063966870855630493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A048647 (A126008 (A048647 n).toNat).toNat).toNat

end

end A126007.P7063966870855630493

/-! ## A126007.P16738834324938043244

`A126008(A004514(n))+A004514(A126008(n))`
-/

namespace A126007.P16738834324938043244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126008 (A004514 n).toNat + A004514 (A126008 n).toNat

end

end A126007.P16738834324938043244

/-! ## A126007.P1006530845177597382

`A001222(A002496(n+1))*A106485(A057300(n))`
-/

namespace A126007.P1006530845177597382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002496 (n + 1)).toNat * A106485 (A057300 n).toNat

end

end A126007.P1006530845177597382

/-!
# A126008: Involution of nonnegative integers: composition of involutions A057300 and A126007.

The programs for A126008, there is no canonical definition to state claims against.
-/

/-! ## A126008.P9607307131198043015

`ceil(A079599(A106485(n))/4)`
-/

namespace A126008.P9607307131198043015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079599 (A106485 n).toNat : ℚ) / 4⌉

end

end A126008.P9607307131198043015

/-! ## A126008.P12195839376802560086

`round(A079599(A106485(2*n-n))/4)`
-/

namespace A126008.P12195839376802560086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079599 (A106485 (2 * n - n)).toNat : ℚ) / 4)

end

end A126008.P12195839376802560086

/-! ## A126008.P15528970506763687791

`round(A079599(A106485(n))/4)*A054977(n)`
-/

namespace A126008.P15528970506763687791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079599 (A106485 n).toNat : ℚ) / 4) * A054977 n

end

end A126008.P15528970506763687791

/-! ## A126008.P10378755965485524745

`round(A079599(A106485(n))/4)*A057427(n)`
-/

namespace A126008.P10378755965485524745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079599 (A106485 n).toNat : ℚ) / 4) * A057427 n

end

end A126008.P10378755965485524745

/-! ## A126008.P12127263649755032615

`round(A079599(A106485(n))/4)%A000244(n)`
-/

namespace A126008.P12127263649755032615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A079599 (A106485 n).toNat : ℚ) / 4)) (A000244 n)

end

end A126008.P12127263649755032615

/-! ## A126008.P11776647299208197349

`∑{d}[round(A079599(A106485(n))/4), A000010(#)]`
-/

namespace A126008.P11776647299208197349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079599 (A106485 n).toNat : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A126008.P11776647299208197349

/-! ## A126008.P2631625463572868451

`A008683(4*(n+1))+round(A079599(A106485(n))/4)`
-/

namespace A126008.P2631625463572868451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A079599 (A106485 n).toNat : ℚ) / 4)

end

end A126008.P2631625463572868451

/-! ## A126008.P11489551809116591986

`round(A079599(A106485(n))/4)*A014963(4*n+2)`
-/

namespace A126008.P11489551809116591986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079599 (A106485 n).toNat : ℚ) / 4) * A014963 (4 * n + 2)

end

end A126008.P11489551809116591986

/-! ## A126008.P11086241962655144829

`A000040(n+1)%2*round(A079599(A106485(n))/4)`
-/

namespace A126008.P11086241962655144829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * SequenceMachineLib.roundAway ((A079599 (A106485 n).toNat : ℚ) / 4)

end

end A126008.P11086241962655144829

/-! ## A126008.P10637633007609743941

`A057300(A126007(n))`
-/

namespace A126008.P10637633007609743941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A126007 n).toNat

end

end A126008.P10637633007609743941

/-!
# A126009: Self-inverse permutation of integers induced when A106485 is restricted to A126011.

The programs for A126009, there is no canonical definition to state claims against.
-/

/-! ## A126009.P2574718240368259209

`A126013(A106485(A126011(n)))`
-/

namespace A126009.P2574718240368259209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126013 (A106485 (A126011 n).toNat).toNat

end

end A126009.P2574718240368259209

/-!
# A126010: Square array A(g,h) = 1 if combinatorial games g and h have the same value, 0 if they differ, listed antidiagonally in order A(0,0), A(1,0), A(0,1), A(2,0), A(1,1), A(0,2), ...

The programs for A126010, there is no canonical definition to state claims against.
-/

/-! ## A126010.P1664459877942689944

`A125999(A061579(n))*A125999(n)`
-/

namespace A126010.P1664459877942689944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125999 (A061579 n).toNat * A125999 n

end

end A126010.P1664459877942689944

/-! ## A126010.P4501741799174205058

`A125999(A114327(n)+n)*A125999(n)`
-/

namespace A126010.P4501741799174205058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125999 (A114327 n + (n : ℤ)).toNat * A125999 n

end

end A126010.P4501741799174205058

/-! ## A126010.P1294660629985535208

`A125999(n)*A125999(∑[A198954(n)-1])`
-/

namespace A126010.P1294660629985535208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125999 n * A125999 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126010.P1294660629985535208

/-! ## A126010.P15054894764078080810

`A125999(A038722(n+1)-1)*A125999(n)`
-/

namespace A126010.P15054894764078080810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125999 (A038722 (n + 1) - 1).toNat * A125999 n

end

end A126010.P15054894764078080810

/-! ## A126010.P10767480188050947032

`A058064(gcd(n, A189895(n+1)))`
-/

namespace A126010.P10767480188050947032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058064 (Int.gcd (n : ℤ) (A189895 (n + 1)))

end

end A126010.P10767480188050947032

/-!
# A126011: A106486-encodings for the minimal representatives of each equivalence class of the finite combinatorial games.

The programs for A126011, there is no canonical definition to state claims against.
-/

/-! ## A126011.P17107077436298657137

`lt[n, exp(A126013(n))]`
-/

namespace A126011.P17107077436298657137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A126013 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A126011.P17107077436298657137

/-! ## A126011.P15286186055516909271

`lt[0, A126013(round(acot(n)+n))]`
-/

namespace A126011.P15286186055516909271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126013 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A126011.P15286186055516909271

/-! ## A126011.P11367699507377997532

`lt[0, A126013(A028310(n))]`
-/

namespace A126011.P11367699507377997532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126013 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A126011.P11367699507377997532

/-! ## A126011.P9209066858126675814

`lt[n, A004277(A126013(n)²)]`
-/

namespace A126011.P9209066858126675814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A126013 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A126011.P9209066858126675814

/-! ## A126011.P8112072666214968158

`lt[A028391(n), A126013(n)!]`
-/

namespace A126011.P8112072666214968158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A126013 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A126011.P8112072666214968158

/-!
# A126012: A106486-encoding of the canonical representative of the combinatorial game with code n.

The programs for A126012, there is no canonical definition to state claims against.
-/

/-! ## A126012.P13163007808452658167

`and(A004183(n), A349234(A330850(n+2)))`
-/

namespace A126012.P13163007808452658167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004183 n) (A349234 (A330850 (n + 2)).toNat)

end

end A126012.P13163007808452658167

/-! ## A126012.P14300769436377939554

`and(n, A171178(A029447(n+1)))`
-/

namespace A126012.P14300769436377939554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A171178 (A029447 (n + 1)).toNat)

end

end A126012.P14300769436377939554

/-! ## A126012.P15480060754556048305

`and(n, A115649(A278232(n+1)))`
-/

namespace A126012.P15480060754556048305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A115649 (A278232 (n + 1)).toNat)

end

end A126012.P15480060754556048305

/-! ## A126012.P3397897209758707084

`and(n, A287916(A187829(n+2)))`
-/

namespace A126012.P3397897209758707084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A287916 (A187829 (n + 2)).toNat)

end

end A126012.P3397897209758707084

/-!
# A126013: Inverse function of N->N injection A126011.

The programs for A126013, there is no canonical definition to state claims against.
-/

/-! ## A126013.P8473984814082193152

`char[A000792(n)]*A025280(A000792(n))`
-/

namespace A126013.P8473984814082193152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025280 (A000792 n).toNat

end

end A126013.P8473984814082193152

/-! ## A126013.P13824430071339661881

`A004247(lt[A105110(n+2), A331982(n+2)])`
-/

namespace A126013.P13824430071339661881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105110 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126013.P13824430071339661881

/-! ## A126013.P15178619305368845296

`A339369(A339369(3*n+2))*A358372(A100883(n))`
-/

namespace A126013.P15178619305368845296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339369 (A339369 (3 * n + 2)).toNat * A358372 (A100883 n).toNat

end

end A126013.P15178619305368845296

/-! ## A126013.P14115264633128767824

`A339369(A339369(3*n+2))*A358372(A280938(n))`
-/

namespace A126013.P14115264633128767824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339369 (A339369 (3 * n + 2)).toNat * A358372 (A280938 n).toNat

end

end A126013.P14115264633128767824

/-!
# A126015: Lucas numbers divided by their primitive part.

The programs for A126015, the canonical program `A126015.P8104159376082709234` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126015 has offset 1).

The definition of A126015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126015.P8104159376082709234

`A000032(n+1)/A061447(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A126015

/-- `A000032(n+1)/A061447(n+1)` -/
def P8104159376082709234.Spec : Prop :=
  ∀ n, P8104159376082709234.a n = (A126015 (n + 1) : ℚ)

end A126015

/-! ## A126015.P18060820787501026615

`A000204(n+1)/A061447(n+1)`
-/

namespace A126015.P18060820787501026615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) : ℚ) / (A061447 (n + 1) : ℚ)

end

end A126015.P18060820787501026615

namespace A126015

/-- `A000204(n+1)/A061447(n+1)` -/
def P18060820787501026615.Spec : Prop :=
  ∀ n, P18060820787501026615.a n = (A126015 (n + 1) : ℚ)

end A126015

/-! ## A126015.P10788227990511762814

`A105602(2*(n+1))/∑[A212804(n)]`
-/

namespace A126015.P10788227990511762814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105602 (2 * (n + 1)) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A126015.P10788227990511762814

namespace A126015

/-- `A105602(2*(n+1))/∑[A212804(n)]` -/
def P10788227990511762814.Spec : Prop :=
  ∀ n, P10788227990511762814.a n = (A126015 (n + 1) : ℚ)

end A126015

/-! ## A126015.P4638819052329369770

`A105602(2*(n+1))/A000045(n+1)`
-/

namespace A126015.P4638819052329369770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105602 (2 * (n + 1)) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A126015.P4638819052329369770

namespace A126015

/-- `A105602(2*(n+1))/A000045(n+1)` -/
def P4638819052329369770.Spec : Prop :=
  ∀ n, P4638819052329369770.a n = (A126015 (n + 1) : ℚ)

end A126015

/-! ## A126015.P12103440121591773336

`A000032(n+1)/A061446(2*(n+1))`
-/

namespace A126015.P12103440121591773336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) / (A061446 (2 * (n + 1)) : ℚ)

end

end A126015.P12103440121591773336

namespace A126015

/-- `A000032(n+1)/A061446(2*(n+1))` -/
def P12103440121591773336.Spec : Prop :=
  ∀ n, P12103440121591773336.a n = (A126015 (n + 1) : ℚ)

end A126015

/-! ## A126015.P14815964425427708176

`A000204(n+1)/A061446(2*(n+1))`
-/

namespace A126015.P14815964425427708176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) : ℚ) / (A061446 (2 * (n + 1)) : ℚ)

end

end A126015.P14815964425427708176

namespace A126015

/-- `A000204(n+1)/A061446(2*(n+1))` -/
def P14815964425427708176.Spec : Prop :=
  ∀ n, P14815964425427708176.a n = (A126015 (n + 1) : ℚ)

end A126015

/-! ## A126015.P991332418104128819

`A105602(2*(n+1))/A036355(A000096(n))`
-/

namespace A126015.P991332418104128819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105602 (2 * (n + 1)) : ℚ) / (A036355 (A000096 n).toNat : ℚ)

end

end A126015.P991332418104128819

namespace A126015

/-- `A105602(2*(n+1))/A036355(A000096(n))` -/
def P991332418104128819.Spec : Prop :=
  ∀ n, P991332418104128819.a n = (A126015 (n + 1) : ℚ)

end A126015

/-!
# A126016: Numbers whose aliquot sequence does not terminate in 1.

The programs for A126016, there is no canonical definition to state claims against.
-/

/-! ## A126016.P2160551913434920602

`lt[A007906(n+1), 0]+1`
-/

namespace A126016.P2160551913434920602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A126016.P2160551913434920602

/-! ## A126016.P2912233721664523843

`eq[-1, A007906(round(acot(n)+n))]`
-/

namespace A126016.P2912233721664523843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126016.P2912233721664523843

/-! ## A126016.P13360265645475536991

`lt[A007906(A028310(n)), 0]`
-/

namespace A126016.P13360265645475536991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A126016.P13360265645475536991

/-!
# A126017: Smallest prime of the form k^n + k^(n-1) - 1.

The programs for A126017, there is no canonical definition to state claims against.
-/

/-! ## A126017.P15126825176331459492

`A062251((A152828(2*n+3)+1)^n)`
-/

namespace A126017.P15126825176331459492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062251 ((A152828 (2 * n + 3) + 1) ^ n).toNat

end

end A126017.P15126825176331459492

/-! ## A126017.P10634216498137683794

`A062251(A302791(n+1)^n)`
-/

namespace A126017.P10634216498137683794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062251 (A302791 (n + 1) ^ n).toNat

end

end A126017.P10634216498137683794

/-! ## A126017.P2799536533808700481

`A062251(A035250(n+2)^A270890(n+1))`
-/

namespace A126017.P2799536533808700481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062251 (SequenceMachineLib.roundAway ((A035250 (n + 2) : ℚ) ^ (A270890 (n + 1) : ℤ))).toNat

end

end A126017.P2799536533808700481

/-!
# A126018: Smallest prime of the form 1 + Sum{j=1..n} k^(2*j-1).

The programs for A126018, there is no canonical definition to state claims against.
-/

/-! ## A126018.P2998909307336419972

`A236465(n*3^n+1)`
-/

namespace A126018.P2998909307336419972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236465 (n * 3 ^ n + 1)

end

end A126018.P2998909307336419972

/-!
# A126019: a(0)=1, a(1)=2; for n>1, a(n)=3*a(n-1)+4*a(n-2)+5.

The programs for A126019, the canonical program `A126019.P2002337481813498941` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126019 has offset 0).

The definition of A126019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)+5` (program `A126019.P2002337481813498941`, by `A126019.P2002337481813498941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126019.P2002337481813498941

`3*a(n-1)+4*a(n-2)+5` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A126019

/-- `3*a(n-1)+4*a(n-2)+5` -/
def P2002337481813498941.Spec : Prop :=
  ∀ n, (P2002337481813498941.a n : ℤ) = A126019 n

theorem P2002337481813498941.correct : P2002337481813498941.Spec := by
  intro n
  simp only [A126019]

end A126019

/-! ## A126019.P15259829936824889302

`(28*4^n+27*(-1)^n-25)/30`
-/

namespace A126019.P15259829936824889302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((28 * 4 ^ n : ℤ) + 27 * (-1) ^ n - 25 : ℚ) / 30

end

end A126019.P15259829936824889302

namespace A126019

/-- `(28*4^n+27*(-1)^n-25)/30` -/
def P15259829936824889302.Spec : Prop :=
  ∀ n, P15259829936824889302.a n = (A126019 n : ℚ)

theorem P15259829936824889302.correct : P15259829936824889302.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A126019, Nat.add_sub_cancel, A126019.P15259829936824889302.a, A126019.P2002337481813498941.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A126019, Nat.add_sub_cancel, A126019.P15259829936824889302.a, A126019.P2002337481813498941.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A126019

/-! ## A126019.P18442211931511506592

`xor(5, 4*a(n-1))+gcd(2, n)` with `a(0)=1`
-/

namespace A126019.P18442211931511506592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 5 (4 * a (n - 1)) + Nat.gcd 2 n

end

end A126019.P18442211931511506592

namespace A126019

/-- `xor(5, 4*a(n-1))+gcd(2, n)` -/
def P18442211931511506592.Spec : Prop :=
  ∀ n, (P18442211931511506592.a n : ℤ) = A126019 n

end A126019

/-! ## A126019.P6334083712220933510

`xor(4*a(n-1), 7-n%2)` with `a(0)=1`
-/

namespace A126019.P6334083712220933510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (4 * a (n - 1)) (7 - ((n % 2 : ℕ) : ℤ))

end

end A126019.P6334083712220933510

namespace A126019

/-- `xor(4*a(n-1), 7-n%2)` -/
def P6334083712220933510.Spec : Prop :=
  ∀ n, P6334083712220933510.a n = A126019 n

end A126019

/-! ## A126019.P7294518727423523514

`xor(7, and(1, n)+4*a(n-1))` with `a(0)=1`
-/

namespace A126019.P7294518727423523514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 7 (Nat.land 1 n + 4 * a (n - 1))

end

end A126019.P7294518727423523514

namespace A126019

/-- `xor(7, and(1, n)+4*a(n-1))` -/
def P7294518727423523514.Spec : Prop :=
  ∀ n, (P7294518727423523514.a n : ℤ) = A126019 n

end A126019

/-! ## A126019.P5571668247574434420

`xor(7-and(1, n), 4*a(n-1))` with `a(0)=1`
-/

namespace A126019.P5571668247574434420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (7 - (Nat.land 1 n : ℤ)) (4 * a (n - 1))

end

end A126019.P5571668247574434420

namespace A126019

/-- `xor(7-and(1, n), 4*a(n-1))` -/
def P5571668247574434420.Spec : Prop :=
  ∀ n, P5571668247574434420.a n = A126019 n

end A126019

/-! ## A126019.P15911739561063272284

`xor(4*a(n-1), char[2*n]+6)` with `a(0)=1`
-/

namespace A126019.P15911739561063272284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1)) ((if ∃ j, f1 j = n then 1 else 0) + 6)

end

end A126019.P15911739561063272284

namespace A126019

/-- `xor(4*a(n-1), char[2*n]+6)` -/
def P15911739561063272284.Spec : Prop :=
  ∀ n, (P15911739561063272284.a n : ℤ) = A126019 n

end A126019

/-! ## A126019.P10170556418877980137

`xor(a(n-1)+4^n/2, ∑[(2^((n-1)%(n+1)))²]-1)` with `a(0)=1`
-/

namespace A126019.P10170556418877980137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (4 ^ n : ℚ) / 2)) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A126019.P10170556418877980137

namespace A126019

/-- `xor(a(n-1)+4^n/2, ∑[(2^((n-1)%(n+1)))²]-1)` -/
def P10170556418877980137.Spec : Prop :=
  ∀ n, P10170556418877980137.a n = A126019 n

end A126019

/-! ## A126019.P12798556394002605686

`xor(a(n-1)+4^n/2, A020988(n)/2)` with `a(0)=1`
-/

namespace A126019.P12798556394002605686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (4 ^ n : ℚ) / 2)) (SequenceMachineLib.roundAway ((A020988 n : ℚ) / 2))

end

end A126019.P12798556394002605686

namespace A126019

/-- `xor(a(n-1)+4^n/2, A020988(n)/2)` -/
def P12798556394002605686.Spec : Prop :=
  ∀ n, P12798556394002605686.a n = A126019 n

end A126019

/-! ## A126019.P7833781345299665043

`xor(A037481(n), A102865(n))`
-/

namespace A126019.P7833781345299665043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037481 n) (A102865 n)

end

end A126019.P7833781345299665043

namespace A126019

/-- `xor(A037481(n), A102865(n))` -/
def P7833781345299665043.Spec : Prop :=
  ∀ n, P7833781345299665043.a n = A126019 n

end A126019

/-! ## A126019.P18351558265557868286

`A007909(2*n)+A115451(2*n)-1`
-/

namespace A126019.P18351558265557868286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (2 * n) + (A115451 (2 * n) - 1)

end

end A126019.P18351558265557868286

namespace A126019

/-- `A007909(2*n)+A115451(2*n)-1` -/
def P18351558265557868286.Spec : Prop :=
  ∀ n, P18351558265557868286.a n = A126019 n

end A126019

/-! ## A126019.P1148078940473415783

`A115451(2*n+1)-2*A181586(2*n)`
-/

namespace A126019.P1148078940473415783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 (2 * n + 1) - 2 * A181586 (2 * n)

end

end A126019.P1148078940473415783

namespace A126019

/-- `A115451(2*n+1)-2*A181586(2*n)` -/
def P1148078940473415783.Spec : Prop :=
  ∀ n, P1148078940473415783.a n = A126019 n

end A126019

/-! ## A126019.P18202511284092415634

`or(A115451(2*n+1)-A000975(2*n), A000975(2*n))`
-/

namespace A126019.P18202511284092415634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A115451 (2 * n + 1) - A000975 (2 * n)) (A000975 (2 * n))

end

end A126019.P18202511284092415634

namespace A126019

/-- `or(A115451(2*n+1)-A000975(2*n), A000975(2*n))` -/
def P18202511284092415634.Spec : Prop :=
  ∀ n, P18202511284092415634.a n = A126019 n

end A126019

/-! ## A126019.P15697436306868020773

`A266753(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A126019.P15697436306868020773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266753 n - (a (n - 1) + 1)

end

end A126019.P15697436306868020773

namespace A126019

/-- `A266753(n)-(a(n-1)+1)` -/
def P15697436306868020773.Spec : Prop :=
  ∀ n, P15697436306868020773.a n = A126019 n

end A126019

/-! ## A126019.P6402394223025071045

`xor(A002446(n), A033114(n+1))`
-/

namespace A126019.P6402394223025071045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002446 n) (A033114 (n + 1))

end

end A126019.P6402394223025071045

namespace A126019

/-- `xor(A002446(n), A033114(n+1))` -/
def P6402394223025071045.Spec : Prop :=
  ∀ n, P6402394223025071045.a n = A126019 n

end A126019

/-!
# A126020: Number of convex permutominoes of size n.

The programs for A126020, the canonical program `A126020.P12431073891398574633` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126020 has offset 1).

The definition of A126020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126020.P12431073891398574633

`A079028(n)+A079028(n)-A002457(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126020

/-- `A079028(n)+A079028(n)-A002457(n)` -/
def P12431073891398574633.Spec : Prop :=
  ∀ n, P12431073891398574633.a n = A126020 (n + 1)

theorem P12431073891398574633.correct : P12431073891398574633.Spec := by
  intro n
  simp only [A126020, Nat.add_sub_cancel]

end A126020

/-! ## A126020.P2765475049577489146

`2*A079028(n)-A002457(n)`
-/

namespace A126020.P2765475049577489146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079028 n - A002457 n

end

end A126020.P2765475049577489146

namespace A126020

/-- `2*A079028(n)-A002457(n)` -/
def P2765475049577489146.Spec : Prop :=
  ∀ n, P2765475049577489146.a n = A126020 (n + 1)

theorem P2765475049577489146.correct : P2765475049577489146.Spec := by
  intro n
  simp only [A126020, Nat.add_sub_cancel, A126020.P2765475049577489146.a, A126020.P12431073891398574633.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A126020

/-! ## A126020.P440022724434464703

`2*(A002697(n)+A000302(n))-A002457(n)`
-/

namespace A126020.P440022724434464703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002697 n + A000302 n) - A002457 n

end

end A126020.P440022724434464703

namespace A126020

/-- `2*(A002697(n)+A000302(n))-A002457(n)` -/
def P440022724434464703.Spec : Prop :=
  ∀ n, P440022724434464703.a n = A126020 (n + 1)

end A126020

/-! ## A126020.P15833567925918031288

`A011782(n+1)*A045623(n+1)-A100071(2*n+1)`
-/

namespace A126020.P15833567925918031288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A045623 (n + 1) - A100071 (2 * n + 1)

end

end A126020.P15833567925918031288

namespace A126020

/-- `A011782(n+1)*A045623(n+1)-A100071(2*n+1)` -/
def P15833567925918031288.Spec : Prop :=
  ∀ n, P15833567925918031288.a n = A126020 (n + 1)

end A126020

/-! ## A126020.P6040709678664310844

`A033504(n)-3*A002699(n)`
-/

namespace A126020.P6040709678664310844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033504 n - 3 * A002699 n

end

end A126020.P6040709678664310844

namespace A126020

/-- `A033504(n)-3*A002699(n)` -/
def P6040709678664310844.Spec : Prop :=
  ∀ n, P6040709678664310844.a n = A126020 (n + 1)

end A126020

/-! ## A126020.P9688411590981804690

`(A182555(2*n+1)-A001787(2*n))/2`
-/

namespace A126020.P9688411590981804690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182555 (2 * n + 1) - A001787 (2 * n) : ℚ) / 2

end

end A126020.P9688411590981804690

namespace A126020

/-- `(A182555(2*n+1)-A001787(2*n))/2` -/
def P9688411590981804690.Spec : Prop :=
  ∀ n, P9688411590981804690.a n = (A126020 (n + 1) : ℚ)

end A126020

/-!
# A126022: a(1)=1; for n>1, a(n) = a(n-1) + (the number of terms of {a(k)} which are <= n).

The programs for A126022, the canonical program `A126022.P15945729394593037940` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126022 has offset 1).

The definition of A126022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126022.P15945729394593037940

`∑[a(n-a(a(n-2)))+1]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A126022

/-- `∑[a(n-a(a(n-2)))+1]` -/
def P15945729394593037940.Spec : Prop :=
  ∀ n, (P15945729394593037940.a n : ℤ) = A126022 (n + 1)

theorem P15945729394593037940.correct : P15945729394593037940.Spec := by
  intro n
  simp only [A126022, Nat.add_sub_cancel]

end A126022

/-! ## A126022.P3385679087618695368

`A001462(char[3]+n)+a(n-1)` with `a(0)=1`
-/

namespace A126022.P3385679087618695368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001462 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A126022.P3385679087618695368

namespace A126022

/-- `A001462(char[3]+n)+a(n-1)` -/
def P3385679087618695368.Spec : Prop :=
  ∀ n, P3385679087618695368.a n = A126022 (n + 1)

end A126022

/-! ## A126022.P1966448179734187189

`∑[A319434(n-a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A126022.P1966448179734187189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 3] fun n f1 =>
  A319434 ((n : ℤ) - f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126022.P1966448179734187189

namespace A126022

/-- `∑[A319434(n-a(n-1))]` -/
def P1966448179734187189.Spec : Prop :=
  ∀ n, P1966448179734187189.a n = A126022 (n + 1)

end A126022

/-! ## A126022.P15018816065946844692

`A182894(C(2, n))+A095114(n+1)`
-/

namespace A126022.P15018816065946844692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182894 (Nat.choose 2 n) + A095114 (n + 1)

end

end A126022.P15018816065946844692

namespace A126022

/-- `A182894(C(2, n))+A095114(n+1)` -/
def P15018816065946844692.Spec : Prop :=
  ∀ n, P15018816065946844692.a n = A126022 (n + 1)

end A126022

/-! ## A126022.P12972740763693739344

`∑[A001462(A000007(n)+n)+char[3]]`
-/

namespace A126022.P12972740763693739344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A000007 n + (n : ℤ)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126022.P12972740763693739344

namespace A126022

/-- `∑[A001462(A000007(n)+n)+char[3]]` -/
def P12972740763693739344.Spec : Prop :=
  ∀ n, P12972740763693739344.a n = A126022 (n + 1)

end A126022

/-!
# A126023: a(0)=0, a(1)=1; for n>1, a(n) = a(n-1)*(a(n-1)+a(n-2)).

The programs for A126023, the canonical program `A126023.P15705129711150784691` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126023 has offset 0).

The definition of A126023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*(a(n-1)+a(n-2))` (program `A126023.P15705129711150784691`, by `A126023.P15705129711150784691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126023.P15705129711150784691

`a(n-1)*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A126023

/-- `a(n-1)*(a(n-1)+a(n-2))` -/
def P15705129711150784691.Spec : Prop :=
  ∀ n, (P15705129711150784691.a n : ℤ) = A126023 n

theorem P15705129711150784691.correct : P15705129711150784691.Spec := by
  intro n
  simp only [A126023]

end A126023

/-! ## A126023.P10365853970511177593

`(a(n-1)-floor(-a(n-2)))*a(n-1)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A126023.P10365853970511177593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * a (n - 1)

end

end A126023.P10365853970511177593

namespace A126023

/-- `(a(n-1)-floor(-a(n-2)))*a(n-1)` -/
def P10365853970511177593.Spec : Prop :=
  ∀ n, P10365853970511177593.a n = A126023 n

end A126023

/-! ## A126023.P9868439037583177633

`(a(n-1)-ceil(-a(n-2)))*a(n-1)` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A126023.P9868439037583177633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * a (n - 1)

end

end A126023.P9868439037583177633

namespace A126023

/-- `(a(n-1)-ceil(-a(n-2)))*a(n-1)` -/
def P9868439037583177633.Spec : Prop :=
  ∀ n, P9868439037583177633.a n = A126023 n

end A126023

/-! ## A126023.P11017836390122201838

`(a(n-1)-round(-a(n-2)))*a(n-1)` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A126023.P11017836390122201838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * a (n - 1)

end

end A126023.P11017836390122201838

namespace A126023

/-- `(a(n-1)-round(-a(n-2)))*a(n-1)` -/
def P11017836390122201838.Spec : Prop :=
  ∀ n, P11017836390122201838.a n = A126023 n

end A126023

/-! ## A126023.P434170445713193981

`a(n-1)/(a(n-1)+a(n-2))^(-1)` with `a(0)=0, a(1)=1`
-/

namespace A126023.P434170445713193981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / (a (n - 1) + a (n - 2)) ^ (-1 : ℤ)

end

end A126023.P434170445713193981

namespace A126023

/-- `a(n-1)/(a(n-1)+a(n-2))^(-1)` -/
def P434170445713193981.Spec : Prop :=
  ∀ n, P434170445713193981.a n = (A126023 n : ℚ)

end A126023

/-!
# A126024: Number of subsets of {1,2,3,...,n} whose sum is a square integer (including the empty subset).

The programs for A126024, there is no canonical definition to state claims against.
-/

/-! ## A126024.P15488747895434761763

`A055086(A246555(n)+n)`
-/

namespace A126024.P15488747895434761763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A246555 n + (n : ℤ)).toNat

end

end A126024.P15488747895434761763

/-! ## A126024.P7505407890441670069

`A249728(A094926(n)+A000625(n))`
-/

namespace A126024.P7505407890441670069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A094926 n + A000625 n).toNat

end

end A126024.P7505407890441670069

/-! ## A126024.P14707933646668699123

`A055086(A339294(n+1)+A027337(n))`
-/

namespace A126024.P14707933646668699123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A339294 (n + 1) + A027337 n).toNat

end

end A126024.P14707933646668699123

/-! ## A126024.P15208589119564489760

`A172471(A339288(n+1)+A304712(n))`
-/

namespace A126024.P15208589119564489760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A339288 (n + 1) + A304712 n).toNat

end

end A126024.P15208589119564489760

/-! ## A126024.P12977726089722737924

`A172471(A339288(n+1)+A336815(n))`
-/

namespace A126024.P12977726089722737924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A339288 (n + 1) + A336815 n).toNat

end

end A126024.P12977726089722737924

/-!
# A126025: Number of mappings f:{1,2,3,...,n} -> {1,2,3,...,n} such that gcd(f(x),f(y)) = f(gcd(x,y)) for all x,y in {1,2,3,...,n}.

The programs for A126025, there is no canonical definition to state claims against.
-/

/-! ## A126025.P9081284325189692638

`∑[∑[A140993(A285927(n))]]`
-/

namespace A126025.P9081284325189692638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140993 (A285927 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126025.P9081284325189692638

/-! ## A126025.P12533567231474501349

`or(A055293(n+7), A078822(A182234(2*n+1)))`
-/

namespace A126025.P12533567231474501349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055293 (n + 7)) (A078822 (A182234 (2 * n + 1)).toNat)

end

end A126025.P12533567231474501349

/-!
# A126026: Conjectured upper bound on area of the convex hull of any edge-to-edge connected system of regular unit hexagons (n-polyhexes).

The programs for A126026, the canonical program `A126026.P18293993871041759945` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126026 has offset 0).

The definition of A126026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126026.P18293993871041759945

`floor((n²+14*n/3+1)/6)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A126026

/-- `floor((n²+14*n/3+1)/6)` -/
def P18293993871041759945.Spec : Prop :=
  ∀ n, P18293993871041759945.a n = A126026 n

theorem P18293993871041759945.correct : P18293993871041759945.Spec := by
  intro n
  simp only [A126026]

end A126026

/-! ## A126026.P7798247675031550599

`A127758(n+1)-A072643(A374679(n))`
-/

namespace A126026.P7798247675031550599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127758 (n + 1) - A072643 (A374679 n).toNat

end

end A126026.P7798247675031550599

namespace A126026

/-- `A127758(n+1)-A072643(A374679(n))` -/
def P7798247675031550599.Spec : Prop :=
  ∀ n, P7798247675031550599.a n = A126026 n

end A126026

/-! ## A126026.P7104577197641643014

`A096533(A267452(n+1))`
-/

namespace A126026.P7104577197641643014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096533 (A267452 (n + 1)).toNat

end

end A126026.P7104577197641643014

namespace A126026

/-- `A096533(A267452(n+1))` -/
def P7104577197641643014.Spec : Prop :=
  ∀ n, P7104577197641643014.a n = A126026 n

end A126026

/-! ## A126026.P15806410361398282859

`A022794(n+1)-A001030(A006002(2*(n+1)))`
-/

namespace A126026.P15806410361398282859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022794 (n + 1) - A001030 (A006002 (2 * (n + 1))).toNat

end

end A126026.P15806410361398282859

namespace A126026

/-- `A022794(n+1)-A001030(A006002(2*(n+1)))` -/
def P15806410361398282859.Spec : Prop :=
  ∀ n, P15806410361398282859.a n = A126026 n

end A126026

/-!
# A126027: Row lengths for A333867.

The programs for A126027, there is no canonical definition to state claims against.
-/

/-! ## A126027.P12338787710628320964

`A030718(A253170(n+2)+A057428(n))`
-/

namespace A126027.P12338787710628320964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030718 (A253170 (n + 2) + A057428 n).toNat

end

end A126027.P12338787710628320964

/-! ## A126027.P12065582392548737705

`A030718(A253170(n+2)+A134824(n))`
-/

namespace A126027.P12065582392548737705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030718 (A253170 (n + 2) + A134824 n).toNat

end

end A126027.P12065582392548737705

/-! ## A126027.P8691596988251365420

`A030718(A253170(n+2)-A179184(n+1))`
-/

namespace A126027.P8691596988251365420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030718 (A253170 (n + 2) - A179184 (n + 1)).toNat

end

end A126027.P8691596988251365420

/-! ## A126027.P16043319793440589749

`A030718(A253170(n+2)-A267870(n+1))`
-/

namespace A126027.P16043319793440589749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030718 (A253170 (n + 2) - A267870 (n + 1)).toNat

end

end A126027.P16043319793440589749

/-! ## A126027.P7840485277667018215

`floor(root(A335303(3*(n+1)), 5))`
-/

namespace A126027.P7840485277667018215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A335303 (3 * (n + 1)) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A126027.P7840485277667018215

/-!
# A126028: Perfect square roots: numbers n such that (sopfr(n)*d(n))^2 = sigma(n) where sopfr = sum of prime factors with multiplicity (A001414), d(n) = number of divisors of n, sigma(n) = sum of divisors of n.

The programs for A126028, there is no canonical definition to state claims against.
-/

/-! ## A126028.P16593919350097970340

`A226480(A077168(n))`
-/

namespace A126028.P16593919350097970340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226480 (A077168 n).toNat

end

end A126028.P16593919350097970340

/-! ## A126028.P5502342207350764695

`record[A226480(A225634(n))]`
-/

namespace A126028.P5502342207350764695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226480 (A225634 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126028.P5502342207350764695

/-! ## A126028.P5756161147945035509

`A226480(A181796(2^n))`
-/

namespace A126028.P5756161147945035509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226480 (A181796 (2 ^ n)).toNat

end

end A126028.P5756161147945035509

/-! ## A126028.P3847597344586613767

`A226480(n+1)+A000007(A000079(n))`
-/

namespace A126028.P3847597344586613767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226480 (n + 1) + A000007 (A000079 n).toNat

end

end A126028.P3847597344586613767

/-! ## A126028.P3624277452471727387

`A226480(n+1)+A083910(A289575(n))`
-/

namespace A126028.P3624277452471727387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226480 (n + 1) + A083910 (A289575 n).toNat

end

end A126028.P3624277452471727387

/-!
# A126030: Riordan array (1/(1+x^3),x/(1+x^3)).

The programs for A126030, there is no canonical definition to state claims against.
-/

/-! ## A126030.P14987122177567486499

`A136334(n+1)/A059268(n)`
-/

namespace A126030.P14987122177567486499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136334 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A126030.P14987122177567486499

/-! ## A126030.P4239669866941085563

`A136334(n+1)/A000079(A002262(n))`
-/

namespace A126030.P4239669866941085563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136334 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A126030.P4239669866941085563

/-! ## A126030.P14733197236901780668

`A136334(n+1)/A011782(A002260(n+1))`
-/

namespace A126030.P14733197236901780668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136334 (n + 1) : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A126030.P14733197236901780668

/-! ## A126030.P2992742233538764925

`A136334(n+1)/A130321(A061579(n))`
-/

namespace A126030.P2992742233538764925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136334 (n + 1) : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A126030.P2992742233538764925

/-! ## A126030.P8485560346150497331

`A136334(n+1)/A004277(A140531(n))`
-/

namespace A126030.P8485560346150497331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136334 (n + 1) : ℚ) / (A004277 (A140531 n).toNat : ℚ)

end

end A126030.P8485560346150497331

/-! ## A126030.P5738094261618886814

`A136334(n+1)/A049773(A043569(n+1))`
-/

namespace A126030.P5738094261618886814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136334 (n + 1) : ℚ) / (A049773 (A043569 (n + 1)).toNat : ℚ)

end

end A126030.P5738094261618886814

/-! ## A126030.P8393368787622180383

`A136334(n+1)/A003958(A036561(n))`
-/

namespace A126030.P8393368787622180383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136334 (n + 1) : ℚ) / (A003958 (A036561 n).toNat : ℚ)

end

end A126030.P8393368787622180383

/-!
# A126031: a(n) is the largest prime < 3*a(n-1) for n > 1, with a(1) = 2.

The programs for A126031, there is no canonical definition to state claims against.
-/

/-! ## A126031.P9060980042283438558

`A000040(A100637(a(n-1)-1))` with `a(0)=2`
-/

namespace A126031.P9060980042283438558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A100637 (a (n - 1) - 1).toNat).toNat

end

end A126031.P9060980042283438558

/-! ## A126031.P11217088640318154862

`A000040(A000720(3*a(n-1)))` with `a(0)=2`
-/

namespace A126031.P11217088640318154862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000720 (3 * a (n - 1)).toNat).toNat

end

end A126031.P11217088640318154862

/-!
# A126032: Numbers of the form b^m/2 for even b and odd m > 2.

The programs for A126032, there is no canonical definition to state claims against.
-/

/-! ## A126032.P309788647216204124

`A061669(A391762(n+1))`
-/

namespace A126032.P309788647216204124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (A391762 (n + 1)).toNat

end

end A126032.P309788647216204124

/-! ## A126032.P2575201136344812444

`A005843(A391762(n+1)/2)`
-/

namespace A126032.P2575201136344812444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A391762 (n + 1) : ℚ) / 2)).toNat

end

end A126032.P2575201136344812444

/-! ## A126032.P1101870261796020170

`filter[A391762(n+1), A093521(#)]`
-/

namespace A126032.P1101870261796020170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A126032.P1101870261796020170

/-! ## A126032.P2611789334033800372

`filter[A391762(n+1), A123110(#)]`
-/

namespace A126032.P2611789334033800372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A126032.P2611789334033800372

/-! ## A126032.P4551671804422657976

`filter[A391762(n+1), A131695(#)]`
-/

namespace A126032.P4551671804422657976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131695 (f1 j).toNat = 1) n)

end

end A126032.P4551671804422657976

/-!
# A126033: a(n) is the largest prime < 5*a(n-1) for n > 1, with a(1) = 2.

The programs for A126033, there is no canonical definition to state claims against.
-/

/-! ## A126033.P15470183307914882297

`A000040(A000720(5*a(n-1)))` with `a(0)=2`
-/

namespace A126033.P15470183307914882297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000720 (5 * a (n - 1)).toNat).toNat

end

end A126033.P15470183307914882297

/-!
# A126034: a(n) is largest prime < 6*a(n-1) for n > 1 with a(1) = 2.

The programs for A126034, there is no canonical definition to state claims against.
-/

/-! ## A126034.P11535338796456430698

`A000040(A000720(6*a(n-1)))` with `a(0)=2`
-/

namespace A126034.P11535338796456430698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000720 (6 * a (n - 1)).toNat).toNat

end

end A126034.P11535338796456430698

/-! ## A126034.P7479613105309690047

`A008578(A000720(6*a(n-1))+1)` with `a(0)=2`
-/

namespace A126034.P7479613105309690047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008578 (A000720 (6 * a (n - 1)).toNat + 1).toNat

end

end A126034.P7479613105309690047

/-!
# A126037: a(n) is the largest prime < 9*a(n-1) for n > 1, with a(1) = 2.

The programs for A126037, there is no canonical definition to state claims against.
-/

/-! ## A126037.P2235875251768405142

`A081259(3*a(n-1))` with `a(0)=2`
-/

namespace A126037.P2235875251768405142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A081259 (3 * a (n - 1)).toNat

end

end A126037.P2235875251768405142

/-!
# A126040: a(n) is the largest prime < 12*a(n-1) for n > 1, with a(1) = 2.

The programs for A126040, there is no canonical definition to state claims against.
-/

/-! ## A126040.P7797723976079345916

`A357253(2*a(n-1))` with `a(0)=2`
-/

namespace A126040.P7797723976079345916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A357253 (2 * a (n - 1)).toNat

end

end A126040.P7797723976079345916

/-!
# A126042: Expansion of f(x^3)/(1-x*f(x^3)), where f(x) is the g.f. of A001764, whose n-th term is binomial(3n,n)/(2n+1).

The programs for A126042, there is no canonical definition to state claims against.
-/

/-! ## A126042.P3040417955625183034

`A047089(∑[n²%3+n])`
-/

namespace A126042.P3040417955625183034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126042.P3040417955625183034

/-! ## A126042.P17170015707179620501

`A047089(A111097(n+1))`
-/

namespace A126042.P17170015707179620501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A111097 (n + 1)).toNat

end

end A126042.P17170015707179620501

/-! ## A126042.P17922152671756224598

`A047089(A389142(n+1))`
-/

namespace A126042.P17922152671756224598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A389142 (n + 1)).toNat

end

end A126042.P17922152671756224598

/-! ## A126042.P2414120345600915790

`A047089(∑[∑[A080425(n)]])`
-/

namespace A126042.P2414120345600915790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126042.P2414120345600915790

/-! ## A126042.P17308929146320928457

`A047089(A004396(n)+∑[n])`
-/

namespace A126042.P17308929146320928457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A004396 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A126042.P17308929146320928457

/-! ## A126042.P12600086856221309977

`A047089(A000096(n)-floor(n/3))`
-/

namespace A126042.P12600086856221309977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A000096 n - ⌊(n : ℚ) / 3⌋).toNat

end

end A126042.P12600086856221309977

/-! ## A126042.P12495361527969213407

`A047089(A000217(n)+round(2*n/3))`
-/

namespace A126042.P12495361527969213407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047089 (A000217 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A126042.P12495361527969213407

/-!
# A126043: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 3.

The programs for A126043, there is no canonical definition to state claims against.
-/

/-! ## A126043.P12546854711545274940

`A010872(A000043(n+1))`
-/

namespace A126043.P12546854711545274940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000043 (n + 1)).toNat

end

end A126043.P12546854711545274940

/-! ## A126043.P46385695797433610

`A126046(n+1)%3`
-/

namespace A126043.P46385695797433610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126046 (n + 1)) 3

end

end A126043.P46385695797433610

/-! ## A126043.P8504824538782051

`A126049(n+1)%3`
-/

namespace A126043.P8504824538782051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126049 (n + 1)) 3

end

end A126043.P8504824538782051

/-! ## A126043.P9224076400288616300

`A126052(n+1)%3`
-/

namespace A126043.P9224076400288616300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126052 (n + 1)) 3

end

end A126043.P9224076400288616300

/-! ## A126043.P6348584863484641975

`A126055(n+1)%3`
-/

namespace A126043.P6348584863484641975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126055 (n + 1)) 3

end

end A126043.P6348584863484641975

/-!
# A126044: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 4.

The programs for A126044, there is no canonical definition to state claims against.
-/

/-! ## A126044.P10673555618983118784

`A010873(A000043(n+1))`
-/

namespace A126044.P10673555618983118784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000043 (n + 1)).toNat

end

end A126044.P10673555618983118784

/-! ## A126044.P2824409179547677558

`A000043(n+1)%A001222(A249551(n+5))`
-/

namespace A126044.P2824409179547677558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (n + 1)) (A001222 (A249551 (n + 5)).toNat)

end

end A126044.P2824409179547677558

/-! ## A126044.P13534431957779085973

`(A153801(n+1)+A000040(n+1))%A055642(A043352(2*n+3))`
-/

namespace A126044.P13534431957779085973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153801 (n + 1) + A000040 (n + 1)) (A055642 (A043352 (2 * n + 3)).toNat)

end

end A126044.P13534431957779085973

/-! ## A126044.P16908048778525139330

`(A139117(n+1)-A139116(n+1))%A055642(A043352(2*n+3))`
-/

namespace A126044.P16908048778525139330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139117 (n + 1) - A139116 (n + 1)) (A055642 (A043352 (2 * n + 3)).toNat)

end

end A126044.P16908048778525139330

/-! ## A126044.P13040761177411665385

`A000043(A153679(n+1))%4`
-/

namespace A126044.P13040761177411665385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (A153679 (n + 1)).toNat) 4

end

end A126044.P13040761177411665385

/-!
# A126045: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 5.

The programs for A126045, there is no canonical definition to state claims against.
-/

/-! ## A126045.P12129654692552706626

`A010874(A000043(n+1))`
-/

namespace A126045.P12129654692552706626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A000043 (n + 1)).toNat

end

end A126045.P12129654692552706626

/-! ## A126045.P16908229757478066228

`A126050(n+1)%5`
-/

namespace A126045.P16908229757478066228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126050 (n + 1)) 5

end

end A126045.P16908229757478066228

/-! ## A126045.P5690552061455065414

`A126055(n+1)%5`
-/

namespace A126045.P5690552061455065414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126055 (n + 1)) 5

end

end A126045.P5690552061455065414

/-! ## A126045.P3770247453304987143

`(A090748(n+1)+1)%5`
-/

namespace A126045.P3770247453304987143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 5

end

end A126045.P3770247453304987143

/-! ## A126045.P1921321452230830837

`(A050475(n+1)-1)%5`
-/

namespace A126045.P1921321452230830837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 5

end

end A126045.P1921321452230830837

/-!
# A126046: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 6.

The programs for A126046, there is no canonical definition to state claims against.
-/

/-! ## A126046.P3618781802856926994

`A010875(A000043(n+1))`
-/

namespace A126046.P3618781802856926994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000043 (n + 1)).toNat

end

end A126046.P3618781802856926994

/-! ## A126046.P7035663593856276227

`A126052(n+1)%6`
-/

namespace A126046.P7035663593856276227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126052 (n + 1)) 6

end

end A126046.P7035663593856276227

/-! ## A126046.P17797064065757141710

`A126058(n+1)%6`
-/

namespace A126046.P17797064065757141710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126058 (n + 1)) 6

end

end A126046.P17797064065757141710

/-! ## A126046.P8221208368891804194

`A161322(n+1)%6`
-/

namespace A126046.P8221208368891804194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161322 (n + 1)) 6

end

end A126046.P8221208368891804194

/-! ## A126046.P15386063005575524709

`A233008(n+1)%6`
-/

namespace A126046.P15386063005575524709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233008 (n + 1)) 6

end

end A126046.P15386063005575524709

/-!
# A126047: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 7.

The programs for A126047, there is no canonical definition to state claims against.
-/

/-! ## A126047.P17573979128602970189

`A010876(A000043(n+1))`
-/

namespace A126047.P17573979128602970189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A000043 (n + 1)).toNat

end

end A126047.P17573979128602970189

/-! ## A126047.P3927876510757831497

`A126054(n+1)%7`
-/

namespace A126047.P3927876510757831497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126054 (n + 1)) 7

end

end A126047.P3927876510757831497

/-! ## A126047.P8477154517278479383

`(A090748(n+1)+1)%7`
-/

namespace A126047.P8477154517278479383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 7

end

end A126047.P8477154517278479383

/-! ## A126047.P18275909678540880618

`(A050475(n+1)-1)%7`
-/

namespace A126047.P18275909678540880618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 7

end

end A126047.P18275909678540880618

/-! ## A126047.P17381515341119200336

`(A153798(n+1)+2)%7`
-/

namespace A126047.P17381515341119200336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153798 (n + 1) + 2) 7

end

end A126047.P17381515341119200336

/-!
# A126048: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 8.

The programs for A126048, there is no canonical definition to state claims against.
-/

/-! ## A126048.P315825206094551959

`A010877(A000043(n+1))`
-/

namespace A126048.P315825206094551959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A000043 (n + 1)).toNat

end

end A126048.P315825206094551959

/-! ## A126048.P6764465515565976338

`A126056(n+1)%8`
-/

namespace A126048.P6764465515565976338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126056 (n + 1)) 8

end

end A126048.P6764465515565976338

/-! ## A126048.P6147856598585578343

`A233008(n+1)%8`
-/

namespace A126048.P6147856598585578343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233008 (n + 1)) 8

end

end A126048.P6147856598585578343

/-! ## A126048.P7562919102744399756

`and(7, A000043(comp[54*n]))`
-/

namespace A126048.P7562919102744399756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  54 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000043 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A126048.P7562919102744399756

/-! ## A126048.P7000080610568406730

`(A090748(n+1)+1)%8`
-/

namespace A126048.P7000080610568406730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 8

end

end A126048.P7000080610568406730

/-!
# A126049: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 9.

The programs for A126049, there is no canonical definition to state claims against.
-/

/-! ## A126049.P3928537731789802021

`A010878(A000043(n+1))`
-/

namespace A126049.P3928537731789802021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A000043 (n + 1)).toNat

end

end A126049.P3928537731789802021

/-! ## A126049.P11773013336574898692

`dr(A126058(n+1))`
-/

namespace A126049.P11773013336574898692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A126058 (n + 1))

end

end A126049.P11773013336574898692

/-! ## A126049.P138656546790646261

`dr(A140528(n+1))`
-/

namespace A126049.P138656546790646261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A140528 (n + 1))

end

end A126049.P138656546790646261

/-! ## A126049.P6380839550469375390

`dr(A090748(n+1)+1)`
-/

namespace A126049.P6380839550469375390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A090748 (n + 1) + 1)

end

end A126049.P6380839550469375390

/-! ## A126049.P9780203836640432152

`dr(1-A050475(n+1))`
-/

namespace A126049.P9780203836640432152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A050475 (n + 1))

end

end A126049.P9780203836640432152

/-!
# A126050: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 10.

The programs for A126050, there is no canonical definition to state claims against.
-/

/-! ## A126050.P17428892276547842023

`A010879(A000043(n+1))`
-/

namespace A126050.P17428892276547842023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000043 (n + 1)).toNat

end

end A126050.P17428892276547842023

/-! ## A126050.P3311222115924582078

`(A090748(n+1)+1)%10`
-/

namespace A126050.P3311222115924582078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 10

end

end A126050.P3311222115924582078

/-! ## A126050.P11173759827405891637

`(A050475(n+1)-1)%10`
-/

namespace A126050.P11173759827405891637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 10

end

end A126050.P11173759827405891637

/-! ## A126050.P957628229887101637

`(A153798(n+1)+2)%10`
-/

namespace A126050.P957628229887101637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153798 (n + 1) + 2) 10

end

end A126050.P957628229887101637

/-! ## A126050.P14152160544719039550

`(A061645(n+1)/2)%10`
-/

namespace A126050.P14152160544719039550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 10

end

end A126050.P14152160544719039550

/-!
# A126051: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 11.

The programs for A126051, there is no canonical definition to state claims against.
-/

/-! ## A126051.P2637409037741280419

`A010880(A000043(n+1))`
-/

namespace A126051.P2637409037741280419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A000043 (n + 1)).toNat

end

end A126051.P2637409037741280419

/-! ## A126051.P6496690404167105735

`(A090748(n+1)+1)%11`
-/

namespace A126051.P6496690404167105735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 11

end

end A126051.P6496690404167105735

/-! ## A126051.P18110151087766122327

`(A050475(n+1)-1)%11`
-/

namespace A126051.P18110151087766122327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 11

end

end A126051.P18110151087766122327

/-! ## A126051.P6569096943833616306

`(A153798(n+1)+2)%11`
-/

namespace A126051.P6569096943833616306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153798 (n + 1) + 2) 11

end

end A126051.P6569096943833616306

/-! ## A126051.P14004602496964920798

`(A061645(n+1)/2)%11`
-/

namespace A126051.P14004602496964920798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 11

end

end A126051.P14004602496964920798

/-!
# A126052: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 12.

The programs for A126052, there is no canonical definition to state claims against.
-/

/-! ## A126052.P5679349897346131958

`A010881(A000043(n+1))`
-/

namespace A126052.P5679349897346131958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (A000043 (n + 1)).toNat

end

end A126052.P5679349897346131958

/-! ## A126052.P16708366353083065840

`A233008(n+1)%12`
-/

namespace A126052.P16708366353083065840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233008 (n + 1)) 12

end

end A126052.P16708366353083065840

/-! ## A126052.P106681828692103507

`(A090748(n+1)+1)%12`
-/

namespace A126052.P106681828692103507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 12

end

end A126052.P106681828692103507

/-! ## A126052.P5595107514326075302

`(A050475(n+1)-1)%12`
-/

namespace A126052.P5595107514326075302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 12

end

end A126052.P5595107514326075302

/-! ## A126052.P14892410034817440402

`(A061645(n+1)/2)%12`
-/

namespace A126052.P14892410034817440402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 12

end

end A126052.P14892410034817440402

/-!
# A126053: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 13.

The programs for A126053, there is no canonical definition to state claims against.
-/

/-! ## A126053.P176858024832723834

`A000043(n+1)%13`
-/

namespace A126053.P176858024832723834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (n + 1)) 13

end

end A126053.P176858024832723834

/-! ## A126053.P15589815725431163648

`(A090748(n+1)+1)%13`
-/

namespace A126053.P15589815725431163648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 13

end

end A126053.P15589815725431163648

/-! ## A126053.P2713748064928933946

`(A050475(n+1)-1)%13`
-/

namespace A126053.P2713748064928933946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 13

end

end A126053.P2713748064928933946

/-! ## A126053.P13730106721306603799

`(A061645(n+1)/2)%13`
-/

namespace A126053.P13730106721306603799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 13

end

end A126053.P13730106721306603799

/-! ## A126053.P14859177728961608386

`ceil(sqrt(A139115(n+1)))%13`
-/

namespace A126053.P14859177728961608386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A139115 (n + 1) : ℝ)⌉ 13

end

end A126053.P14859177728961608386

/-!
# A126054: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 14.

The programs for A126054, there is no canonical definition to state claims against.
-/

/-! ## A126054.P10562514573522763267

`A070696(A000043(n+1))`
-/

namespace A126054.P10562514573522763267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (A000043 (n + 1)).toNat

end

end A126054.P10562514573522763267

/-! ## A126054.P10253042387974279637

`(A090748(n+1)+1)%14`
-/

namespace A126054.P10253042387974279637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 14

end

end A126054.P10253042387974279637

/-! ## A126054.P16756892072934395331

`(A050475(n+1)-1)%14`
-/

namespace A126054.P16756892072934395331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 14

end

end A126054.P16756892072934395331

/-! ## A126054.P16294568951736566582

`(A061645(n+1)/2)%14`
-/

namespace A126054.P16294568951736566582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 14

end

end A126054.P16294568951736566582

/-! ## A126054.P5553658128850002392

`ceil(sqrt(A139115(n+1)))%14`
-/

namespace A126054.P5553658128850002392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A139115 (n + 1) : ℝ)⌉ 14

end

end A126054.P5553658128850002392

/-!
# A126055: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 15.

The programs for A126055, there is no canonical definition to state claims against.
-/

/-! ## A126055.P4654389020371552115

`A167463(A000043(n+1))`
-/

namespace A126055.P4654389020371552115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167463 (A000043 (n + 1)).toNat

end

end A126055.P4654389020371552115

/-! ## A126055.P38828776759466776

`(A090748(n+1)+1)%15`
-/

namespace A126055.P38828776759466776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 15

end

end A126055.P38828776759466776

/-! ## A126055.P1082301971923650123

`(A050475(n+1)-1)%15`
-/

namespace A126055.P1082301971923650123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 15

end

end A126055.P1082301971923650123

/-! ## A126055.P3460660463352199216

`(A061645(n+1)/2)%15`
-/

namespace A126055.P3460660463352199216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 15

end

end A126055.P3460660463352199216

/-! ## A126055.P10192400699736475935

`ceil(sqrt(A139115(n+1)))%15`
-/

namespace A126055.P10192400699736475935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A139115 (n + 1) : ℝ)⌉ 15

end

end A126055.P10192400699736475935

/-!
# A126056: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 16.

The programs for A126056, there is no canonical definition to state claims against.
-/

/-! ## A126056.P9480220632502921174

`A130909(A000043(n+1))`
-/

namespace A126056.P9480220632502921174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (A000043 (n + 1)).toNat

end

end A126056.P9480220632502921174

/-! ## A126056.P6161127798372526556

`(A090748(n+1)+1)%16`
-/

namespace A126056.P6161127798372526556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 16

end

end A126056.P6161127798372526556

/-! ## A126056.P6563043183732967398

`(A050475(n+1)-1)%16`
-/

namespace A126056.P6563043183732967398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 16

end

end A126056.P6563043183732967398

/-! ## A126056.P10905282049304395692

`(A061645(n+1)/2)%16`
-/

namespace A126056.P10905282049304395692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 16

end

end A126056.P10905282049304395692

/-! ## A126056.P16973496647025601869

`and(15, A153798(n+1)+2)`
-/

namespace A126056.P16973496647025601869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A153798 (n + 1) + 2)

end

end A126056.P16973496647025601869

/-!
# A126057: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 17.

The programs for A126057, there is no canonical definition to state claims against.
-/

/-! ## A126057.P6648384914059096353

`A000043(n+1)%17`
-/

namespace A126057.P6648384914059096353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (n + 1)) 17

end

end A126057.P6648384914059096353

/-! ## A126057.P848958457950342355

`(A090748(n+1)+1)%17`
-/

namespace A126057.P848958457950342355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 17

end

end A126057.P848958457950342355

/-! ## A126057.P9241204752774792402

`(A050475(n+1)-1)%17`
-/

namespace A126057.P9241204752774792402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 17

end

end A126057.P9241204752774792402

/-! ## A126057.P14387889029375835750

`(A061645(n+1)/2)%17`
-/

namespace A126057.P14387889029375835750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 17

end

end A126057.P14387889029375835750

/-! ## A126057.P13258295005877504363

`ceil(sqrt(A139115(n+1)))%17`
-/

namespace A126057.P13258295005877504363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A139115 (n + 1) : ℝ)⌉ 17

end

end A126057.P13258295005877504363

/-!
# A126058: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 18.

The programs for A126058, there is no canonical definition to state claims against.
-/

/-! ## A126058.P13014385374759405597

`A000043(n+1)%18`
-/

namespace A126058.P13014385374759405597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (n + 1)) 18

end

end A126058.P13014385374759405597

/-! ## A126058.P7263111324272065815

`(A090748(n+1)+1)%18`
-/

namespace A126058.P7263111324272065815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 18

end

end A126058.P7263111324272065815

/-! ## A126058.P18139027309952878066

`(A050475(n+1)-1)%18`
-/

namespace A126058.P18139027309952878066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 18

end

end A126058.P18139027309952878066

/-! ## A126058.P2335468010775565492

`(A061645(n+1)/2)%18`
-/

namespace A126058.P2335468010775565492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 18

end

end A126058.P2335468010775565492

/-! ## A126058.P7206894510266522606

`ceil(sqrt(A139115(n+1)))%18`
-/

namespace A126058.P7206894510266522606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A139115 (n + 1) : ℝ)⌉ 18

end

end A126058.P7206894510266522606

/-!
# A126059: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 19.

The programs for A126059, there is no canonical definition to state claims against.
-/

/-! ## A126059.P8728629412905814745

`A000043(n+1)%19`
-/

namespace A126059.P8728629412905814745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (n + 1)) 19

end

end A126059.P8728629412905814745

/-! ## A126059.P6129486145491530932

`(A090748(n+1)+1)%19`
-/

namespace A126059.P6129486145491530932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 19

end

end A126059.P6129486145491530932

/-! ## A126059.P455536569641107822

`(A050475(n+1)-1)%19`
-/

namespace A126059.P455536569641107822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 19

end

end A126059.P455536569641107822

/-! ## A126059.P4022438224839189747

`(A061645(n+1)/2)%19`
-/

namespace A126059.P4022438224839189747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 19

end

end A126059.P4022438224839189747

/-! ## A126059.P10789840893316056843

`ceil(sqrt(A139115(n+1)))%19`
-/

namespace A126059.P10789840893316056843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A139115 (n + 1) : ℝ)⌉ 19

end

end A126059.P10789840893316056843

/-!
# A126061: Number of letters in symbol for n-th element in periodic table.

The programs for A126061, there is no canonical definition to state claims against.
-/

/-! ## A126061.P1750927576416303061

`A266722(and(A002149(n), A131572(n)))`
-/

namespace A126061.P1750927576416303061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (Int.land (A002149 n) (A131572 n)).toNat

end

end A126061.P1750927576416303061

/-! ## A126061.P11221149489369583346

`A056832(∑[A278073(A004526(n))])`
-/

namespace A126061.P11221149489369583346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126061.P11221149489369583346

/-! ## A126061.P17633954351359896388

`A006337(A161539(3*n+2)-A239518(n+1))`
-/

namespace A126061.P17633954351359896388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A161539 (3 * n + 2) - A239518 (n + 1)).toNat

end

end A126061.P17633954351359896388

/-!
# A126062: Array read by antidiagonals: see A128195 for details.

The programs for A126062, there is no canonical definition to state claims against.
-/

/-! ## A126062.P11674436866512694867

`A077028(n)*A128198(n)`
-/

namespace A126062.P11674436866512694867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n * A128198 n

end

end A126062.P11674436866512694867

/-! ## A126062.P9310993350791849920

`sqrt(A082043(n))*A128198(n)`
-/

namespace A126062.P9310993350791849920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082043 n : ℝ) * (A128198 n : ℝ)

end

end A126062.P9310993350791849920

/-! ## A126062.P2879711445172139503

`(A004247(n)+1)*A128198(n)`
-/

namespace A126062.P2879711445172139503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + 1) * A128198 n

end

end A126062.P2879711445172139503

/-! ## A126062.P8048874022320310358

`A077168(A004247(n))*A128198(n)`
-/

namespace A126062.P8048874022320310358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A004247 n).toNat * A128198 n

end

end A126062.P8048874022320310358

/-! ## A126062.P981649913929416933

`A000005(A117401(n))*A128198(n)`
-/

namespace A126062.P981649913929416933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A117401 n).toNat * A128198 n

end

end A126062.P981649913929416933

/-!
# A126063: Triangle read by rows: see A128196 for definition.

The programs for A126063, the canonical program `A126063.P4124651871844324285` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126063 has offset 0).

The definition of A126063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126063.P4124651871844324285

`A013609(n)/A008459(n)*A176230(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A126063

/-- `A013609(n)/A008459(n)*A176230(n)` -/
def P4124651871844324285.Spec : Prop :=
  ∀ n, P4124651871844324285.a n = (A126063 n : ℚ)

end A126063

/-! ## A126063.P2069541992249638385

`A059268(n)/A007318(n)*A176230(n)`
-/

namespace A126063.P2069541992249638385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / (A007318 n : ℚ) * (A176230 n : ℚ)

end

end A126063.P2069541992249638385

namespace A126063

/-- `A059268(n)/A007318(n)*A176230(n)` -/
def P2069541992249638385.Spec : Prop :=
  ∀ n, P2069541992249638385.a n = (A126063 n : ℚ)

end A126063

/-! ## A126063.P14803439136372466058

`lcm(A013609(n), A176230(n))/A007318(n)`
-/

namespace A126063.P14803439136372466058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A013609 n) (A176230 n) : ℚ) / (A007318 n : ℚ)

end

end A126063.P14803439136372466058

namespace A126063

/-- `lcm(A013609(n), A176230(n))/A007318(n)` -/
def P14803439136372466058.Spec : Prop :=
  ∀ n, P14803439136372466058.a n = (A126063 n : ℚ)

end A126063

/-! ## A126063.P13354796182880334601

`A048854(n)/A038207(n)*A059268(n)`
-/

namespace A126063.P13354796182880334601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048854 n : ℚ) / (A038207 n : ℚ) * (A059268 n : ℚ)

end

end A126063.P13354796182880334601

namespace A126063

/-- `A048854(n)/A038207(n)*A059268(n)` -/
def P13354796182880334601.Spec : Prop :=
  ∀ n, P13354796182880334601.a n = (A126063 n : ℚ)

end A126063

/-! ## A126063.P79101017157085133

`lcm(A048854(n)/A065109(n), A059268(n))`
-/

namespace A126063.P79101017157085133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A048854 n : ℚ) / (A065109 n : ℚ))) (A059268 n)

end

end A126063.P79101017157085133

namespace A126063

/-- `lcm(A048854(n)/A065109(n), A059268(n))` -/
def P79101017157085133.Spec : Prop :=
  ∀ n, (P79101017157085133.a n : ℤ) = A126063 n

end A126063

/-! ## A126063.P883914734259004934

`A059268(n)*A112292(n)`
-/

namespace A126063.P883914734259004934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A112292 n

end

end A126063.P883914734259004934

namespace A126063

/-- `A059268(n)*A112292(n)` -/
def P883914734259004934.Spec : Prop :=
  ∀ n, P883914734259004934.a n = A126063 n

end A126063

/-! ## A126063.P8769540461072179607

`A000079(A002262(n))*A112292(n)`
-/

namespace A126063.P8769540461072179607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A112292 n

end

end A126063.P8769540461072179607

namespace A126063

/-- `A000079(A002262(n))*A112292(n)` -/
def P8769540461072179607.Spec : Prop :=
  ∀ n, P8769540461072179607.a n = A126063 n

end A126063

/-! ## A126063.P12366107148543942613

`A038207(A112367(n))*A112292(n)`
-/

namespace A126063.P12366107148543942613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A112367 n).toNat * A112292 n

end

end A126063.P12366107148543942613

namespace A126063

/-- `A038207(A112367(n))*A112292(n)` -/
def P12366107148543942613.Spec : Prop :=
  ∀ n, P12366107148543942613.a n = A126063 n

end A126063

/-! ## A126063.P3562436395443349427

`A000079(A163351(n))*A112292(n)`
-/

namespace A126063.P3562436395443349427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A163351 n).toNat * A112292 n

end

end A126063.P3562436395443349427

namespace A126063

/-- `A000079(A163351(n))*A112292(n)` -/
def P3562436395443349427.Spec : Prop :=
  ∀ n, P3562436395443349427.a n = A126063 n

end A126063

/-! ## A126063.P8360422054411817615

`lcm(A059268(A028310(n)), A112292(n))`
-/

namespace A126063.P8360422054411817615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 (A028310 n).toNat) (A112292 n)

end

end A126063.P8360422054411817615

namespace A126063

/-- `lcm(A059268(A028310(n)), A112292(n))` -/
def P8360422054411817615.Spec : Prop :=
  ∀ n, (P8360422054411817615.a n : ℤ) = A126063 n

end A126063

/-!
# A126064: Triangle read by rows, obtained by multiplying columns of triangle in A094587 by 1,2,4,8,16,... respectively.

The programs for A126064, the canonical program `A126064.P1560116210223187894` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126064 has offset 0).

The definition of A126064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126064.P15391646911690807285

`A090802(A061579(n))`
-/

namespace A126064.P15391646911690807285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090802 (A061579 n).toNat

end

end A126064.P15391646911690807285

namespace A126064

/-- `A090802(A061579(n))` -/
def P15391646911690807285.Spec : Prop :=
  ∀ n, P15391646911690807285.a n = A126064 n

end A126064

/-! ## A126064.P14865880471766964135

`A013609(n)*A119502(n)`
-/

namespace A126064.P14865880471766964135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A119502 n

end

end A126064.P14865880471766964135

namespace A126064

/-- `A013609(n)*A119502(n)` -/
def P14865880471766964135.Spec : Prop :=
  ∀ n, P14865880471766964135.a n = A126064 n

end A126064

/-! ## A126064.P1560116210223187894

`A059268(n)*A094587(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A126064

/-- `A059268(n)*A094587(n)` -/
def P1560116210223187894.Spec : Prop :=
  ∀ n, P1560116210223187894.a n = A126064 n

theorem P1560116210223187894.correct : P1560116210223187894.Spec := by
  intro n
  simp only [A126064]

end A126064

/-! ## A126064.P46517691580473183

`2^A002262(n)*A094587(n)`
-/

namespace A126064.P46517691580473183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A094587 n : ℚ)

end

end A126064.P46517691580473183

namespace A126064

/-- `2^A002262(n)*A094587(n)` -/
def P46517691580473183.Spec : Prop :=
  ∀ n, P46517691580473183.a n = (A126064 n : ℚ)

end A126064

/-! ## A126064.P11907701366047610716

`A000079(A002262(n))*A094587(n)`
-/

namespace A126064.P11907701366047610716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A094587 n

end

end A126064.P11907701366047610716

namespace A126064

/-- `A000079(A002262(n))*A094587(n)` -/
def P11907701366047610716.Spec : Prop :=
  ∀ n, P11907701366047610716.a n = A126064 n

end A126064

/-! ## A126064.P139621595672573465

`A036561(A112367(n))*A094587(n)`
-/

namespace A126064.P139621595672573465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A112367 n).toNat * A094587 n

end

end A126064.P139621595672573465

namespace A126064

/-- `A036561(A112367(n))*A094587(n)` -/
def P139621595672573465.Spec : Prop :=
  ∀ n, P139621595672573465.a n = A126064 n

end A126064

/-! ## A126064.P11693522327296745189

`A094587(n)*A130321(A061579(n))`
-/

namespace A126064.P11693522327296745189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A130321 (A061579 n).toNat

end

end A126064.P11693522327296745189

namespace A126064

/-- `A094587(n)*A130321(A061579(n))` -/
def P11693522327296745189.Spec : Prop :=
  ∀ n, P11693522327296745189.a n = A126064 n

end A126064

/-! ## A126064.P93020402199486901

`(A018900(n+1)-A140513(n))*A094587(n)`
-/

namespace A126064.P93020402199486901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018900 (n + 1) - A140513 n) * A094587 n

end

end A126064.P93020402199486901

namespace A126064

/-- `(A018900(n+1)-A140513(n))*A094587(n)` -/
def P93020402199486901.Spec : Prop :=
  ∀ n, P93020402199486901.a n = A126064 n

end A126064

/-! ## A126064.P2861808885948383581

`A109767(n)/A092392(n)`
-/

namespace A126064.P2861808885948383581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109767 n : ℚ) / (A092392 n : ℚ)

end

end A126064.P2861808885948383581

namespace A126064

/-- `A109767(n)/A092392(n)` -/
def P2861808885948383581.Spec : Prop :=
  ∀ n, P2861808885948383581.a n = (A126064 n : ℚ)

end A126064

/-! ## A126064.P6254321137778724106

`lcm(A013609(n), A138024(n+1))`
-/

namespace A126064.P6254321137778724106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A138024 (n + 1))

end

end A126064.P6254321137778724106

namespace A126064

/-- `lcm(A013609(n), A138024(n+1))` -/
def P6254321137778724106.Spec : Prop :=
  ∀ n, (P6254321137778724106.a n : ℤ) = A126064 n

end A126064

/-!
# A126065: Triangle of numbers read by rows: T(n,k) = number of permutations sigma of (1,2,...,n) with n - {length of longest increasing subsequence in sigma} = k (0<=k<=n-1).

The programs for A126065, there is no canonical definition to state claims against.
-/

/-! ## A126065.P14037210671440894574

`A047874(A038722(n+1))`
-/

namespace A126065.P14037210671440894574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (A038722 (n + 1)).toNat

end

end A126065.P14037210671440894574

/-! ## A126065.P6584930763050482348

`A047874(A061579(n)+1)`
-/

namespace A126065.P6584930763050482348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (A061579 n + 1).toNat

end

end A126065.P6584930763050482348

/-! ## A126065.P13481423248665613198

`A047874(∑[A198954(n)]-n)`
-/

namespace A126065.P13481423248665613198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A126065.P13481423248665613198

/-! ## A126065.P13973443173922482196

`A047874(A114327(n)+1+n)`
-/

namespace A126065.P13973443173922482196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (A114327 n + 1 + (n : ℤ)).toNat

end

end A126065.P13973443173922482196

/-! ## A126065.P1668827945332754540

`A047874(A093995(n+1)-n)`
-/

namespace A126065.P1668827945332754540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A126065.P1668827945332754540

/-! ## A126065.P17525810915455165761

`A047874(∑[A010054(n)]²-n)`
-/

namespace A126065.P17525810915455165761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A126065.P17525810915455165761

/-! ## A126065.P6956151486517144489

`A047874(A002378(n)%A014132(n+1)+1)`
-/

namespace A126065.P6956151486517144489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (Int.tmod (A002378 n) (A014132 (n + 1)) + 1).toNat

end

end A126065.P6956151486517144489

/-!
# A126066: Triangle read by rows: T(n,k) is the number of unlabeled digraphs on n nodes with k arcs up to reversing the arcs, k=0..n*(n-1).

The programs for A126066, there is no canonical definition to state claims against.
-/

/-! ## A126066.P2385539224568401479

`(A126067(n)+A052283(n))/2`
-/

namespace A126066.P2385539224568401479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126067 n + A052283 n : ℚ) / 2

end

end A126066.P2385539224568401479

/-! ## A126066.P17196933143492951189

`A004526(A126067(n)+A052283(n))`
-/

namespace A126066.P17196933143492951189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A126067 n + A052283 n).toNat

end

end A126066.P17196933143492951189

/-! ## A126066.P1873736493155107892

`A025480(A126067(n)+A052283(n))`
-/

namespace A126066.P1873736493155107892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A126067 n + A052283 n).toNat

end

end A126066.P1873736493155107892

/-! ## A126066.P3230807991672185497

`A123108(A126067(n)+A052283(n))`
-/

namespace A126066.P3230807991672185497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A126067 n + A052283 n).toNat

end

end A126066.P3230807991672185497

/-! ## A126066.P8256399009807632346

`A142150(A126067(n)+A052283(n))`
-/

namespace A126066.P8256399009807632346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A126067 n + A052283 n).toNat

end

end A126066.P8256399009807632346

/-! ## A126066.P1787920639345653509

`A289436(A126067(n)+A052283(n))`
-/

namespace A126066.P1787920639345653509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A126067 n + A052283 n).toNat

end

end A126066.P1787920639345653509

/-! ## A126066.P14113027318378371909

`A140472(A126067(n)+A052283(n)-1)`
-/

namespace A126066.P14113027318378371909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A126067 n + (A052283 n - 1)).toNat

end

end A126066.P14113027318378371909

/-! ## A126066.P14074053802378313850

`A003602(A126067(n)+A052283(n)+1)-1`
-/

namespace A126066.P14074053802378313850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A126067 n + A052283 n + 1).toNat - 1

end

end A126066.P14074053802378313850

/-!
# A126067: Triangle read by rows: T(n,k) is the number of unlabeled self-converse digraphs with n nodes and k arcs, k=0..n*(n-1).

The programs for A126067, there is no canonical definition to state claims against.
-/

/-! ## A126067.P16520124661758166424

`2*A126066(n)-A052283(n)`
-/

namespace A126067.P16520124661758166424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126066 n - A052283 n

end

end A126067.P16520124661758166424

/-! ## A126067.P10885666185877928278

`A004277(A126066(n))-A052283(n)`
-/

namespace A126067.P10885666185877928278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A126066 n).toNat - A052283 n

end

end A126067.P10885666185877928278

/-!
# A126068: Expansion of 1 - x - sqrt(1 - 2*x - 3*x^2) in powers of x.

The programs for A126068, the canonical program `A126068.P1244538512425352377` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126068 has offset 0).

The definition of A126068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126068.P1244538512425352377

`and(-2, A007971(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A126068

/-- `and(-2, A007971(n))` -/
def P1244538512425352377.Spec : Prop :=
  ∀ n, P1244538512425352377.a n = A126068 n

theorem P1244538512425352377.correct : P1244538512425352377.Spec := by
  intro n
  simp only [A126068]

end A126068

/-! ## A126068.P11449907330414764916

`and(-2, A168055(n))`
-/

namespace A126068.P11449907330414764916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A168055 n)

end

end A126068.P11449907330414764916

namespace A126068

/-- `and(-2, A168055(n))` -/
def P11449907330414764916.Spec : Prop :=
  ∀ n, P11449907330414764916.a n = A126068 n

end A126068

/-! ## A126068.P1600633729271088183

`A007971(n-char[1])`
-/

namespace A126068.P1600633729271088183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A126068.P1600633729271088183

namespace A126068

/-- `A007971(n-char[1])` -/
def P1600633729271088183.Spec : Prop :=
  ∀ n, P1600633729271088183.a n = A126068 n

end A126068

/-! ## A126068.P12692095531094112597

`1-or(1, A168058(n))`
-/

namespace A126068.P12692095531094112597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (A168058 n)

end

end A126068.P12692095531094112597

namespace A126068

/-- `1-or(1, A168058(n))` -/
def P12692095531094112597.Spec : Prop :=
  ∀ n, P12692095531094112597.a n = A126068 n

end A126068

/-! ## A126068.P5821406795375055451

`2*A086246(n-char[1])`
-/

namespace A126068.P5821406795375055451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086246 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A126068.P5821406795375055451

namespace A126068

/-- `2*A086246(n-char[1])` -/
def P5821406795375055451.Spec : Prop :=
  ∀ n, P5821406795375055451.a n = A126068 n

end A126068

/-! ## A126068.P18229434198015977483

`A168055(round(sqrt(n²+1)))`
-/

namespace A126068.P18229434198015977483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168055 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A126068.P18229434198015977483

namespace A126068

/-- `A168055(round(sqrt(n²+1)))` -/
def P18229434198015977483.Spec : Prop :=
  ∀ n, P18229434198015977483.a n = A126068 n

end A126068

/-! ## A126068.P12192349253630513574

`abs(A168058(round(sqrt(n²+1))))`
-/

namespace A126068.P12192349253630513574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168058 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat|

end

end A126068.P12192349253630513574

namespace A126068

/-- `abs(A168058(round(sqrt(n²+1))))` -/
def P12192349253630513574.Spec : Prop :=
  ∀ n, P12192349253630513574.a n = A126068 n

end A126068

/-! ## A126068.P18238216098105424224

`2*A168049(round(sqrt(n²+1)))`
-/

namespace A126068.P18238216098105424224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168049 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A126068.P18238216098105424224

namespace A126068

/-- `2*A168049(round(sqrt(n²+1)))` -/
def P18238216098105424224.Spec : Prop :=
  ∀ n, P18238216098105424224.a n = A126068 n

end A126068

/-! ## A126068.P14971725785324057170

`A159075(n)+A007971(n)`
-/

namespace A126068.P14971725785324057170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A007971 n

end

end A126068.P14971725785324057170

namespace A126068

/-- `A159075(n)+A007971(n)` -/
def P14971725785324057170.Spec : Prop :=
  ∀ n, P14971725785324057170.a n = A126068 n

end A126068

/-! ## A126068.P4376900440068221884

`A007971(n)-A063524(n)`
-/

namespace A126068.P4376900440068221884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 n - A063524 n

end

end A126068.P4376900440068221884

namespace A126068

/-- `A007971(n)-A063524(n)` -/
def P4376900440068221884.Spec : Prop :=
  ∀ n, P4376900440068221884.a n = A126068 n

end A126068

/-! ## A126068.P10973917437299351681

`A000007(n)-A168058(n)`
-/

namespace A126068.P10973917437299351681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A168058 n

end

end A126068.P10973917437299351681

namespace A126068

/-- `A000007(n)-A168058(n)` -/
def P10973917437299351681.Spec : Prop :=
  ∀ n, P10973917437299351681.a n = A126068 n

end A126068

/-! ## A126068.P4894785309927033640

`A168055(n)-A000007(n)`
-/

namespace A126068.P4894785309927033640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168055 n - A000007 n

end

end A126068.P4894785309927033640

namespace A126068

/-- `A168055(n)-A000007(n)` -/
def P4894785309927033640.Spec : Prop :=
  ∀ n, P4894785309927033640.a n = A126068 n

end A126068

/-! ## A126068.P13946904178816324535

`A168049(n)-A168051(n)`
-/

namespace A126068.P13946904178816324535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - A168051 n

end

end A126068.P13946904178816324535

namespace A126068

/-- `A168049(n)-A168051(n)` -/
def P13946904178816324535.Spec : Prop :=
  ∀ n, P13946904178816324535.a n = A126068 n

end A126068

/-! ## A126068.P1083950291380356910

`A168051(n)-A168076(n)`
-/

namespace A126068.P1083950291380356910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 n - A168076 n

end

end A126068.P1083950291380356910

namespace A126068

/-- `A168051(n)-A168076(n)` -/
def P1083950291380356910.Spec : Prop :=
  ∀ n, P1083950291380356910.a n = A126068 n

end A126068

/-! ## A126068.P3346723424922914527

`A168073(n)-A168049(n)`
-/

namespace A126068.P3346723424922914527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168073 n - A168049 n

end

end A126068.P3346723424922914527

namespace A126068

/-- `A168073(n)-A168049(n)` -/
def P3346723424922914527.Spec : Prop :=
  ∀ n, P3346723424922914527.a n = A126068 n

end A126068

/-! ## A126068.P2259823555304345907

`A007971(n)*A060576(n)`
-/

namespace A126068.P2259823555304345907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 n * A060576 n

end

end A126068.P2259823555304345907

namespace A126068

/-- `A007971(n)*A060576(n)` -/
def P2259823555304345907.Spec : Prop :=
  ∀ n, P2259823555304345907.a n = A126068 n

end A126068

/-! ## A126068.P7914724657086472991

`A007971(n)*A157928(n)`
-/

namespace A126068.P7914724657086472991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 n * A157928 n

end

end A126068.P7914724657086472991

namespace A126068

/-- `A007971(n)*A157928(n)` -/
def P7914724657086472991.Spec : Prop :=
  ∀ n, P7914724657086472991.a n = A126068 n

end A126068

/-! ## A126068.P9487583549936508266

`lcm(A007971(n), A081729(n))`
-/

namespace A126068.P9487583549936508266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007971 n) (A081729 n)

end

end A126068.P9487583549936508266

namespace A126068

/-- `lcm(A007971(n), A081729(n))` -/
def P9487583549936508266.Spec : Prop :=
  ∀ n, (P9487583549936508266.a n : ℤ) = A126068 n

end A126068

/-! ## A126068.P3454077611056469768

`lcm(A011625(n), A168058(n))`
-/

namespace A126068.P3454077611056469768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011625 n) (A168058 n)

end

end A126068.P3454077611056469768

namespace A126068

/-- `lcm(A011625(n), A168058(n))` -/
def P3454077611056469768.Spec : Prop :=
  ∀ n, (P3454077611056469768.a n : ℤ) = A126068 n

end A126068

/-! ## A126068.P10511702457164302282

`lcm(A055090(n), A168055(n))`
-/

namespace A126068.P10511702457164302282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055090 n) (A168055 n)

end

end A126068.P10511702457164302282

namespace A126068

/-- `lcm(A055090(n), A168055(n))` -/
def P10511702457164302282.Spec : Prop :=
  ∀ n, (P10511702457164302282.a n : ℤ) = A126068 n

end A126068

/-!
# A126069: Generates A001350, the associated Mersenne numbers; A001350(n)=Product[a(d)] for d|n.

The programs for A126069, there is no canonical definition to state claims against.
-/

/-! ## A126069.P798012966990567988

`ratio[lcm(a(n-1), A001350(n))]` with `a(0)=1`
-/

namespace A126069.P798012966990567988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A001350 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A126069.P798012966990567988

/-!
# A126071: Number of bases (2 <= b <= n+1) in which n is a palindrome.

The programs for A126071, there is no canonical definition to state claims against.
-/

/-! ## A126071.P7433882985580195271

`A135551(n+1)+1`
-/

namespace A126071.P7433882985580195271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (n + 1) + 1

end

end A126071.P7433882985580195271

/-! ## A126071.P14106824994633930017

`A065531(n+1)%(n+1)+1`
-/

namespace A126071.P14106824994633930017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065531 (n + 1)) (n + 1 : ℤ) + 1

end

end A126071.P14106824994633930017

/-! ## A126071.P10642916452442044810

`A065531(n+1)+A057427(n)`
-/

namespace A126071.P10642916452442044810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065531 (n + 1) + A057427 n

end

end A126071.P10642916452442044810

/-! ## A126071.P1550674598129349627

`A065531(n+1)-A057428(n)`
-/

namespace A126071.P1550674598129349627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065531 (n + 1) - A057428 n

end

end A126071.P1550674598129349627

/-! ## A126071.P374325182601161083

`A065531(n+1)+char[A152271(n)]`
-/

namespace A126071.P374325182601161083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065531 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A126071.P374325182601161083

/-! ## A126071.P16012372871915673619

`A033831(n+1)+A100563(n+1)+1`
-/

namespace A126071.P16012372871915673619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (n + 1) + (A100563 (n + 1) + 1)

end

end A126071.P16012372871915673619

/-! ## A126071.P6599003597611507645

`A135549(n+1)+2-A329678(2*n)`
-/

namespace A126071.P6599003597611507645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 (n + 1) + (2 - A329678 (2 * n))

end

end A126071.P6599003597611507645

/-! ## A126071.P65204944820056586

`A135549(n+1)+A000005(A008578(A004526(n)+1))`
-/

namespace A126071.P65204944820056586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 (n + 1) + A000005 (A008578 (A004526 n + 1).toNat).toNat

end

end A126071.P65204944820056586

/-! ## A126071.P473718946280171921

`A065531(A233583(n+2))+1`
-/

namespace A126071.P473718946280171921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065531 (A233583 (n + 2)).toNat + 1

end

end A126071.P473718946280171921

/-!
# A126073: Sum of numbers <= n which are multiples of 3 or 5 but not 15.

The programs for A126073, the canonical program `A126073.P6431351007355356300` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126073 has offset 1).

The definition of A126073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126073.P6431351007355356300

`∑[(n+1)*A176702((n+1)/A106616(n+1)+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A126073

/-- `∑[(n+1)*A176702((n+1)/A106616(n+1)+1)]` -/
def P6431351007355356300.Spec : Prop :=
  ∀ n, P6431351007355356300.a n = A126073 (n + 1)

theorem P6431351007355356300.correct : P6431351007355356300.Spec := by
  intro n
  simp only [A126073, Nat.add_sub_cancel]

end A126073

/-! ## A126073.P17116084863149454712

`∑[(n+1)*A000035(A004483(A064989(n+1)))]`
-/

namespace A126073.P17116084863149454712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A004483 (A064989 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126073.P17116084863149454712

namespace A126073

/-- `∑[(n+1)*A000035(A004483(A064989(n+1)))]` -/
def P17116084863149454712.Spec : Prop :=
  ∀ n, P17116084863149454712.a n = A126073 (n + 1)

end A126073

/-! ## A126073.P8925524107575154547

`∑[(n+1)*and(1, A057312(n+1))]`
-/

namespace A126073.P8925524107575154547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A057312 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126073.P8925524107575154547

namespace A126073

/-- `∑[(n+1)*and(1, A057312(n+1))]` -/
def P8925524107575154547.Spec : Prop :=
  ∀ n, P8925524107575154547.a n = A126073 (n + 1)

end A126073

/-! ## A126073.P13505523983339755708

`∑[(n+1)*A118015(n+1)²%3]`
-/

namespace A126073.P13505523983339755708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A118015 (n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126073.P13505523983339755708

namespace A126073

/-- `∑[(n+1)*A118015(n+1)²%3]` -/
def P13505523983339755708.Spec : Prop :=
  ∀ n, P13505523983339755708.a n = A126073 (n + 1)

end A126073

/-! ## A126073.P668449854205483705

`∑[(n+1)*A291217(n)%2]`
-/

namespace A126073.P668449854205483705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A291217 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126073.P668449854205483705

namespace A126073

/-- `∑[(n+1)*A291217(n)%2]` -/
def P668449854205483705.Spec : Prop :=
  ∀ n, P668449854205483705.a n = A126073 (n + 1)

end A126073

/-! ## A126073.P1763174771019142246

`∑[A166514((n+1)*and(2, A158943(n+1)))]`
-/

namespace A126073.P1763174771019142246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 ((n + 1 : ℤ) * Int.land 2 (A158943 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126073.P1763174771019142246

namespace A126073

/-- `∑[A166514((n+1)*and(2, A158943(n+1)))]` -/
def P1763174771019142246.Spec : Prop :=
  ∀ n, P1763174771019142246.a n = A126073 (n + 1)

end A126073

/-! ## A126073.P8911528800204483675

`∑[(n+1)*∑[A238913(n+1)]%2]`
-/

namespace A126073.P8911528800204483675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126073.P8911528800204483675

namespace A126073

/-- `∑[(n+1)*∑[A238913(n+1)]%2]` -/
def P8911528800204483675.Spec : Prop :=
  ∀ n, P8911528800204483675.a n = A126073 (n + 1)

end A126073

/-! ## A126073.P17090696770720789411

`∑[(n+1)*A303162(n+1)%2]`
-/

namespace A126073.P17090696770720789411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A303162 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126073.P17090696770720789411

namespace A126073

/-- `∑[(n+1)*A303162(n+1)%2]` -/
def P17090696770720789411.Spec : Prop :=
  ∀ n, P17090696770720789411.a n = A126073 (n + 1)

end A126073

/-!
# A126074: Triangle read by rows: T(n,k) is the number of permutations of n elements that have the longest cycle length k.

The programs for A126074, there is no canonical definition to state claims against.
-/

/-! ## A126074.P4326155688963394637

`A118759(A080510(n+1)*A233543(n))`
-/

namespace A126074.P4326155688963394637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A080510 (n + 1) * A233543 n).toNat

end

end A126074.P4326155688963394637

/-! ## A126074.P2958343588122113489

`A019554(A378163(n+1)²)*A233543(n)`
-/

namespace A126074.P2958343588122113489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A378163 (n + 1) ^ 2).toNat * A233543 n

end

end A126074.P2958343588122113489

/-! ## A126074.P11322531548007181727

`A118759(A002262(n)!*A080510(n+1))`
-/

namespace A126074.P11322531548007181727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ((Nat.factorial (A002262 n).toNat : ℤ) * A080510 (n + 1)).toNat

end

end A126074.P11322531548007181727

/-! ## A126074.P5868593439050398035

`(A378163(n+1)+A378150(A208648(n)))*A233543(n)`
-/

namespace A126074.P5868593439050398035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A378163 (n + 1) + A378150 (A208648 n).toNat) * A233543 n

end

end A126074.P5868593439050398035

/-! ## A126074.P12081731236451179379

`A057731(n+1)*A061704(A036256(n))`
-/

namespace A126074.P12081731236451179379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057731 (n + 1) * A061704 (A036256 n).toNat

end

end A126074.P12081731236451179379

/-!
# A126077: Numbers such that the sum of the factorials of the digits of the fourth power is a square.

The programs for A126077, there is no canonical definition to state claims against.
-/

/-! ## A126077.P582698356616578938

`A229133(A028495(n)+12*n)`
-/

namespace A126077.P582698356616578938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229133 (A028495 n + (12 * n : ℤ)).toNat

end

end A126077.P582698356616578938

/-!
# A126079: G.f.: (1-2*x)*sqrt(1-4*x).

The programs for A126079, the canonical program `A126079.P2882352660744408413` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126079 has offset 0).

The definition of A126079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126079.P11516325790387770117

`A115143(n)*A329683(n)`
-/

namespace A126079.P11516325790387770117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 n * A329683 n

end

end A126079.P11516325790387770117

namespace A126079

/-- `A115143(n)*A329683(n)` -/
def P11516325790387770117.Spec : Prop :=
  ∀ n, P11516325790387770117.a n = A126079 n

end A126079

/-! ## A126079.P13869548983003463784

`gcd(2, A045891(n))*A115143(n)`
-/

namespace A126079.P13869548983003463784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A045891 n) : ℤ) * A115143 n

end

end A126079.P13869548983003463784

namespace A126079

/-- `gcd(2, A045891(n))*A115143(n)` -/
def P13869548983003463784.Spec : Prop :=
  ∀ n, P13869548983003463784.a n = A126079 n

end A126079

/-! ## A126079.P10182258736029717817

`A036453(A065033(n))*A115143(n)`
-/

namespace A126079.P10182258736029717817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A065033 n).toNat * A115143 n

end

end A126079.P10182258736029717817

namespace A126079

/-- `A036453(A065033(n))*A115143(n)` -/
def P10182258736029717817.Spec : Prop :=
  ∀ n, P10182258736029717817.a n = A126079 n

end A126079

/-! ## A126079.P4337620324519059816

`A115143(n)+A115143(n)%A115140(n)`
-/

namespace A126079.P4337620324519059816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 n + Int.tmod (A115143 n) (A115140 n)

end

end A126079.P4337620324519059816

namespace A126079

/-- `A115143(n)+A115143(n)%A115140(n)` -/
def P4337620324519059816.Spec : Prop :=
  ∀ n, P4337620324519059816.a n = A126079 n

end A126079

/-! ## A126079.P17353337899616695557

`(A028815(n)-A068499(n+1))*A115143(n)`
-/

namespace A126079.P17353337899616695557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028815 n - A068499 (n + 1)) * A115143 n

end

end A126079.P17353337899616695557

namespace A126079

/-- `(A028815(n)-A068499(n+1))*A115143(n)` -/
def P17353337899616695557.Spec : Prop :=
  ∀ n, P17353337899616695557.a n = A126079 n

end A126079

/-! ## A126079.P2882352660744408413

`(A002421(n)+A002420(n))/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A126079

/-- `(A002421(n)+A002420(n))/2` -/
def P2882352660744408413.Spec : Prop :=
  ∀ n, P2882352660744408413.a n = (A126079 n : ℚ)

end A126079

/-! ## A126079.P874657060165308804

`A115143(n)*A334230(A022856(n+1))`
-/

namespace A126079.P874657060165308804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 n * A334230 (A022856 (n + 1)).toNat

end

end A126079.P874657060165308804

namespace A126079

/-- `A115143(n)*A334230(A022856(n+1))` -/
def P874657060165308804.Spec : Prop :=
  ∀ n, P874657060165308804.a n = A126079 n

end A126079

/-! ## A126079.P14660919161197885714

`A020639(A045948(n+1))*A115143(n)`
-/

namespace A126079.P14660919161197885714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045948 (n + 1)).toNat * A115143 n

end

end A126079.P14660919161197885714

namespace A126079

/-- `A020639(A045948(n+1))*A115143(n)` -/
def P14660919161197885714.Spec : Prop :=
  ∀ n, P14660919161197885714.a n = A126079 n

end A126079

/-!
# A126080: a(n) = number of positive integers < n that are coprime to exactly one prime divisor of n.

The programs for A126080, the canonical program `A126080.P8574941834857366715` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126080 has offset 1).

The definition of A126080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126080.P8574941834857366715

`A003557(n+1)*A055631(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126080

/-- `A003557(n+1)*A055631(n+1)` -/
def P8574941834857366715.Spec : Prop :=
  ∀ n, P8574941834857366715.a n = A126080 (n + 1)

theorem P8574941834857366715.correct : P8574941834857366715.Spec := by
  intro n
  simp only [A126080, Nat.add_sub_cancel]

end A126080

/-! ## A126080.P10992679010686971212

`∑{p}[n+1, A000010(#)*A003557(n+1)]`
-/

namespace A126080.P10992679010686971212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 p * A003557 (n + 1)

end

end A126080.P10992679010686971212

namespace A126080

/-- `∑{p}[n+1, A000010(#)*A003557(n+1)]` -/
def P10992679010686971212.Spec : Prop :=
  ∀ n, P10992679010686971212.a n = A126080 (n + 1)

end A126080

/-! ## A126080.P15000791938676525792

`(A008472(n+1)-A001221(n+1))*A003557(n+1)`
-/

namespace A126080.P15000791938676525792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) - A001221 (n + 1)) * A003557 (n + 1)

end

end A126080.P15000791938676525792

namespace A126080

/-- `(A008472(n+1)-A001221(n+1))*A003557(n+1)` -/
def P15000791938676525792.Spec : Prop :=
  ∀ n, P15000791938676525792.a n = A126080 (n + 1)

end A126080

/-! ## A126080.P10938946673805639733

`A003557(n+1)*A067240((n+1)/A003557(n+1))`
-/

namespace A126080.P10938946673805639733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A067240 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A126080.P10938946673805639733

namespace A126080

/-- `A003557(n+1)*A067240((n+1)/A003557(n+1))` -/
def P10938946673805639733.Spec : Prop :=
  ∀ n, P10938946673805639733.a n = A126080 (n + 1)

end A126080

/-! ## A126080.P4544049138393593953

`A000010(n+1)*A055631(n+1)/A173557(n+1)`
-/

namespace A126080.P4544049138393593953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A055631 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A126080.P4544049138393593953

namespace A126080

/-- `A000010(n+1)*A055631(n+1)/A173557(n+1)` -/
def P4544049138393593953.Spec : Prop :=
  ∀ n, P4544049138393593953.a n = (A126080 (n + 1) : ℚ)

end A126080

/-! ## A126080.P14525461436664969452

`2/(n+1)*A128488(n+1)`
-/

namespace A126080.P14525461436664969452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A128488 (n + 1) : ℚ)

end

end A126080.P14525461436664969452

namespace A126080

/-- `2/(n+1)*A128488(n+1)` -/
def P14525461436664969452.Spec : Prop :=
  ∀ n, P14525461436664969452.a n = (A126080 (n + 1) : ℚ)

end A126080

/-!
# A126081: a(n) = number of k, 1 <= k <= n, such that k divides ceiling(n/k).

The programs for A126081, there is no canonical definition to state claims against.
-/

/-! ## A126081.P6922225848504093699

`A284559(A277967(n+1)+n)`
-/

namespace A126081.P6922225848504093699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A277967 (n + 1) + (n : ℤ)).toNat

end

end A126081.P6922225848504093699

/-! ## A126081.P16795580066289025539

`A053735(A000001(∑[A081345(n)]))`
-/

namespace A126081.P16795580066289025539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A126081.P16795580066289025539

/-! ## A126081.P143621875097079614

`A319420(A219209(n)+A080339(n+1))`
-/

namespace A126081.P143621875097079614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (A219209 n + A080339 (n + 1)).toNat

end

end A126081.P143621875097079614

/-! ## A126081.P7508340383916409160

`A038374(or(n, A264791(n+1)))`
-/

namespace A126081.P7508340383916409160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (Int.lor (n : ℤ) (A264791 (n + 1))).toNat

end

end A126081.P7508340383916409160

/-! ## A126081.P14610534799399170969

`A001221(A283216(n)+A072883(n+1))`
-/

namespace A126081.P14610534799399170969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A283216 n + A072883 (n + 1)).toNat

end

end A126081.P14610534799399170969

/-!
# A126082: Binomial transform of A001113.

The programs for A126082, there is no canonical definition to state claims against.
-/

/-! ## A126082.P811524082900315271

`∑[A175386(A268394(n+1))+1]`
-/

namespace A126082.P811524082900315271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175386 (A268394 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126082.P811524082900315271

/-! ## A126082.P7447057888232566570

`A225891(A020729(n))-∑[n]`
-/

namespace A126082.P7447057888232566570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (A020729 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A126082.P7447057888232566570

/-!
# A126083: a(n) = numerator of H(n) taken mod n, where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

The programs for A126083, the canonical program `A126083.P11057915756448127103` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126083 has offset 1).

The definition of A126083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126083.P2935329005740327495

`A001008(n+1)%(n+1)`
-/

namespace A126083.P2935329005740327495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001008 (n + 1)) (n + 1 : ℤ)

end

end A126083.P2935329005740327495

namespace A126083

/-- `A001008(n+1)%(n+1)` -/
def P2935329005740327495.Spec : Prop :=
  ∀ n, P2935329005740327495.a n = A126083 (n + 1)

end A126083

/-! ## A126083.P1723012045289668972

`(∑[1/(n+1)]*A002805(n+1))%(n+1)`
-/

namespace A126083.P1723012045289668972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ))) (n + 1 : ℤ)

end

end A126083.P1723012045289668972

namespace A126083

/-- `(∑[1/(n+1)]*A002805(n+1))%(n+1)` -/
def P1723012045289668972.Spec : Prop :=
  ∀ n, P1723012045289668972.a n = A126083 (n + 1)

end A126083

/-! ## A126083.P185712945576895560

`(A064169(n+1)+A002805(n+1))%(n+1)`
-/

namespace A126083.P185712945576895560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064169 (n + 1) + A002805 (n + 1)) (n + 1 : ℤ)

end

end A126083.P185712945576895560

namespace A126083

/-- `(A064169(n+1)+A002805(n+1))%(n+1)` -/
def P185712945576895560.Spec : Prop :=
  ∀ n, P185712945576895560.a n = A126083 (n + 1)

end A126083

/-! ## A126083.P3032581027259225236

`(A025529(n+1)/A110566(n+1))%(n+1)`
-/

namespace A126083.P3032581027259225236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A025529 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ))) (n + 1 : ℤ)

end

end A126083.P3032581027259225236

namespace A126083

/-- `(A025529(n+1)/A110566(n+1))%(n+1)` -/
def P3032581027259225236.Spec : Prop :=
  ∀ n, P3032581027259225236.a n = A126083 (n + 1)

end A126083

/-! ## A126083.P1854949752703896950

`(A096617(n+1)/A120263(n+1))%(n+1)`
-/

namespace A126083.P1854949752703896950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A096617 (n + 1) : ℚ) / (A120263 (n + 1) : ℚ))) (n + 1 : ℤ)

end

end A126083.P1854949752703896950

namespace A126083

/-- `(A096617(n+1)/A120263(n+1))%(n+1)` -/
def P1854949752703896950.Spec : Prop :=
  ∀ n, P1854949752703896950.a n = A126083 (n + 1)

end A126083

/-! ## A126083.P11057915756448127103

`(A025529(n+1)/gcd(A003418(n), A025529(n+1)))%(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A126083

/-- `(A025529(n+1)/gcd(A003418(n), A025529(n+1)))%(n+1)` -/
def P11057915756448127103.Spec : Prop :=
  ∀ n, P11057915756448127103.a n = A126083 (n + 1)

theorem P11057915756448127103.correct : P11057915756448127103.Spec := by
  intro n
  simp only [A126083, Nat.add_sub_cancel]

end A126083

/-! ## A126083.P16466357233293104304

`(n*A187487(n+1))%(n+1)`
-/

namespace A126083.P16466357233293104304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A187487 (n + 1)) (n + 1 : ℤ)

end

end A126083.P16466357233293104304

namespace A126083

/-- `(n*A187487(n+1))%(n+1)` -/
def P16466357233293104304.Spec : Prop :=
  ∀ n, P16466357233293104304.a n = A126083 (n + 1)

end A126083

/-! ## A126083.P6661921196804896334

`A213998(A034856(n+1))%(n+1)`
-/

namespace A126083.P6661921196804896334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213998 (A034856 (n + 1)).toNat) (n + 1 : ℤ)

end

end A126083.P6661921196804896334

namespace A126083

/-- `A213998(A034856(n+1))%(n+1)` -/
def P6661921196804896334.Spec : Prop :=
  ∀ n, P6661921196804896334.a n = A126083 (n + 1)

end A126083

/-! ## A126083.P977668038931300496

`A035048(2*(n+1))%(n+1)`
-/

namespace A126083.P977668038931300496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035048 (2 * (n + 1))) (n + 1 : ℤ)

end

end A126083.P977668038931300496

namespace A126083

/-- `A035048(2*(n+1))%(n+1)` -/
def P977668038931300496.Spec : Prop :=
  ∀ n, P977668038931300496.a n = A126083 (n + 1)

end A126083

/-!
# A126084: a(n) = XOR of first n primes.

The programs for A126084, the canonical program `A126084.P6224162469092176404` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126084 has offset 0).

The definition of A126084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126084.P6224162469092176404

`xor(a(n-1), A000040(n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126084

/-- `xor(a(n-1), A000040(n))` -/
def P6224162469092176404.Spec : Prop :=
  ∀ n, P6224162469092176404.a n = A126084 n

theorem P6224162469092176404.correct : P6224162469092176404.Spec := by
  intro n
  simp only [A126084]

end A126084

/-! ## A126084.P12831403958963068618

`xor(A006093(n)+1, a(n-1))` with `a(0)=0`
-/

namespace A126084.P12831403958963068618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (A006093 n + 1) (a (n - 1))

end

end A126084.P12831403958963068618

namespace A126084

/-- `xor(A006093(n)+1, a(n-1))` -/
def P12831403958963068618.Spec : Prop :=
  ∀ n, P12831403958963068618.a n = A126084 n

end A126084

/-! ## A126084.P10473001611116747407

`xor(a(n-1), A008578(n+1))` with `a(0)=0`
-/

namespace A126084.P10473001611116747407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A008578 (n + 1))

end

end A126084.P10473001611116747407

namespace A126084

/-- `xor(a(n-1), A008578(n+1))` -/
def P10473001611116747407.Spec : Prop :=
  ∀ n, P10473001611116747407.a n = A126084 n

end A126084

/-! ## A126084.P1810612347564880346

`xor(a(n-1), A182986(n+1))` with `a(0)=0`
-/

namespace A126084.P1810612347564880346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A182986 (n + 1))

end

end A126084.P1810612347564880346

namespace A126084

/-- `xor(a(n-1), A182986(n+1))` -/
def P1810612347564880346.Spec : Prop :=
  ∀ n, P1810612347564880346.a n = A126084 n

end A126084

/-! ## A126084.P18423548005758903684

`xor(a(n-1), A158611(n+2))` with `a(0)=0`
-/

namespace A126084.P18423548005758903684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A158611 (n + 2))

end

end A126084.P18423548005758903684

namespace A126084

/-- `xor(a(n-1), A158611(n+2))` -/
def P18423548005758903684.Spec : Prop :=
  ∀ n, P18423548005758903684.a n = A126084 n

end A126084

/-! ## A126084.P5766656141826200789

`xor(a(n-1), record[A006530(n+1)])` with `a(0)=0`
-/

namespace A126084.P5766656141826200789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A126084.P5766656141826200789

namespace A126084

/-- `xor(a(n-1), record[A006530(n+1)])` -/
def P5766656141826200789.Spec : Prop :=
  ∀ n, P5766656141826200789.a n = A126084 n

end A126084

/-! ## A126084.P15050100600306543415

`xor(a(n-1), record[A020639(n+1)])` with `a(0)=0`
-/

namespace A126084.P15050100600306543415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A126084.P15050100600306543415

namespace A126084

/-- `xor(a(n-1), record[A020639(n+1)])` -/
def P15050100600306543415.Spec : Prop :=
  ∀ n, P15050100600306543415.a n = A126084 n

end A126084

/-! ## A126084.P11116062743844944886

`xor(a(n-1), record[A014963(n+1)])` with `a(0)=0`
-/

namespace A126084.P11116062743844944886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A126084.P11116062743844944886

namespace A126084

/-- `xor(a(n-1), record[A014963(n+1)])` -/
def P11116062743844944886.Spec : Prop :=
  ∀ n, P11116062743844944886.a n = A126084 n

end A126084

/-!
# A126085: Number of n-node rooted trees of height 9.

The programs for A126085, there is no canonical definition to state claims against.
-/

/-! ## A126085.P9626131556618877528

`A034826(n+1)-A034825(n+1)`
-/

namespace A126085.P9626131556618877528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034826 (n + 1) - A034825 (n + 1)

end

end A126085.P9626131556618877528

/-! ## A126085.P397898118648921290

`A034826(n+1)-(A034824(n+1)+A000429(n+1))`
-/

namespace A126085.P397898118648921290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034826 (n + 1) - (A034824 (n + 1) + A000429 (n + 1))

end

end A126085.P397898118648921290

/-! ## A126085.P12840988595623539755

`∑[A133755(A089258(n)!)+A036640(n)]`
-/

namespace A126085.P12840988595623539755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 (Nat.factorial (A089258 n).toNat) + A036640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126085.P12840988595623539755

/-! ## A126085.P14529608505380303217

`∑[A133755(A089258(n)!)+A036647(n)]`
-/

namespace A126085.P14529608505380303217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 (Nat.factorial (A089258 n).toNat) + A036647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126085.P14529608505380303217

/-! ## A126085.P9666828619418789652

`A036425(n+1)+A036425(A325250(n)%A153682(n+1))`
-/

namespace A126085.P9666828619418789652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036425 (n + 1) + A036425 (Int.tmod (A325250 n) (A153682 (n + 1))).toNat

end

end A126085.P9666828619418789652

/-!
# A126086: Number of paths from (0,0,0) to (n,n,n) such that at each step (i) at least one coordinate increases, (ii) no coordinate decreases, (iii) no coordinate increases by more than 1 and (iv) all coordinates are integers.

The programs for A126086, there is no canonical definition to state claims against.
-/

/-! ## A126086.P6622903260335213764

`A316673(n)/Δ[floor(2^(n-1))]`
-/

namespace A126086.P6622903260335213764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316673 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A126086.P6622903260335213764

/-! ## A126086.P2323331289736078354

`floor(A316673(n)/A011782(n))`
-/

namespace A126086.P2323331289736078354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A316673 n : ℚ) / (A011782 n : ℚ)⌋

end

end A126086.P2323331289736078354

/-! ## A126086.P4054801491446446648

`A001850(n)/A052141(n)*A316673(n)`
-/

namespace A126086.P4054801491446446648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001850 n : ℚ) / (A052141 n : ℚ) * (A316673 n : ℚ)

end

end A126086.P4054801491446446648

/-! ## A126086.P9433669973499134868

`A262809(A052905(n+1)+1)`
-/

namespace A126086.P9433669973499134868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A052905 (n + 1) + 1).toNat

end

end A126086.P9433669973499134868

/-! ## A126086.P3274821444557757465

`A262809(A055999(n+1)+2)`
-/

namespace A126086.P3274821444557757465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A055999 (n + 1) + 2).toNat

end

end A126086.P3274821444557757465

/-!
# A126087: Expansion of c(2*x^2)/(1-x*c(2*x^2)), where c(x) = (1-sqrt(1-4*x))/(2*x) is the g.f. of the Catalan numbers (A000108).

The programs for A126087, there is no canonical definition to state claims against.
-/

/-! ## A126087.P67377854089611352

`2*A151281(n)-A000244(n)`
-/

namespace A126087.P67377854089611352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151281 n - A000244 n

end

end A126087.P67377854089611352

/-! ## A126087.P12276131757720681252

`2*A151281(n)-sqrt(A001019(n))`
-/

namespace A126087.P12276131757720681252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A151281 n : ℝ) - Real.sqrt (A001019 n : ℝ)

end

end A126087.P12276131757720681252

/-! ## A126087.P5820662135094572625

`A005408(A151281(n)-A007051(n))`
-/

namespace A126087.P5820662135094572625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A151281 n - A007051 n).toNat

end

end A126087.P5820662135094572625

/-! ## A126087.P10441020881039835136

`A060747(A151281(n)-A003462(n))`
-/

namespace A126087.P10441020881039835136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A151281 n - A003462 n).toNat

end

end A126087.P10441020881039835136

/-! ## A126087.P3632393933654489609

`A005408(A151281(n)%A007051(n))`
-/

namespace A126087.P3632393933654489609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A151281 n) (A007051 n)).toNat

end

end A126087.P3632393933654489609

/-!
# A126089: Expansion of e.g.f.: (1-2*x)*sqrt(1-4*x).

The programs for A126089, there is no canonical definition to state claims against.
-/

/-! ## A126089.P13366817155087367553

`n!*A126079(n)`
-/

namespace A126089.P13366817155087367553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A126079 n

end

end A126089.P13366817155087367553

/-! ## A126089.P2426980902074203791

`A000142(n)*A126079(n)`
-/

namespace A126089.P2426980902074203791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A126079 n

end

end A126089.P2426980902074203791

/-! ## A126089.P1262646013012101631

`∏[A028310(n)]*A126079(n)`
-/

namespace A126089.P1262646013012101631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A126079 n

end

end A126089.P1262646013012101631

/-! ## A126089.P18364543050318278140

`A126064(A000217(n))*A126079(n)`
-/

namespace A126089.P18364543050318278140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126064 (A000217 n).toNat * A126079 n

end

end A126089.P18364543050318278140

/-!
# A126090: a(1)=1. a(n) = the number of terms among {a(1),a(2),...a(n-1)} which are coprime to exactly one distinct prime dividing n.

The programs for A126090, there is no canonical definition to state claims against.
-/

/-! ## A126090.P9222426884939465761

`A062790(A254503(n+1)+A187829(n+1))`
-/

namespace A126090.P9222426884939465761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062790 (A254503 (n + 1) + A187829 (n + 1)).toNat

end

end A126090.P9222426884939465761

/-! ## A126090.P11856731294564109343

`A254926(n+1)-A175126(A187829(n+1))`
-/

namespace A126090.P11856731294564109343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254926 (n + 1) - A175126 (A187829 (n + 1)).toNat

end

end A126090.P11856731294564109343

/-! ## A126090.P6420540358245396500

`A061228(n+1)/2-A106277(A037290(n+1))`
-/

namespace A126090.P6420540358245396500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061228 (n + 1) : ℚ) / 2 - (A106277 (A037290 (n + 1)).toNat : ℚ)

end

end A126090.P6420540358245396500

/-! ## A126090.P17741214603905985927

`A001281(A061228(n+1))-A106277(A037290(n+1))`
-/

namespace A126090.P17741214603905985927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A061228 (n + 1)).toNat - A106277 (A037290 (n + 1)).toNat

end

end A126090.P17741214603905985927

/-! ## A126090.P3974281231898323173

`A275314(A140635(2^n))-∑{e}[n+1, #]`
-/

namespace A126090.P3974281231898323173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (A140635 (2 ^ n)).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A126090.P3974281231898323173

/-!
# A126091: a(1)=1;a(2)=4; for n>2, a(n)=a(n-2)+3 if n is already in the sequence, a(n)=a(n-2)+1 otherwise.

The programs for A126091, the canonical program `A126091.P145198365233256000` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126091 has offset 1).

The definition of A126091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126091.P145198365233256000

`a(n-4)+4` with `a(0)=1, a(1)=4, a(2)=2, a(3)=7, a(4)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A126091

/-- `a(n-4)+4` -/
def P145198365233256000.Spec : Prop :=
  ∀ n, (P145198365233256000.a n : ℤ) = A126091 (n + 1)

theorem P145198365233256000.correct : P145198365233256000.Spec := by
  intro n
  simp only [A126091, Nat.add_sub_cancel]

end A126091

/-! ## A126091.P11498504801138242354

`n-xor(3, n-a(n-2))` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A126091.P11498504801138242354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  (n : ℤ) - Int.xor 3 ((n : ℤ) - a (n - 2))

end

end A126091.P11498504801138242354

namespace A126091

/-- `n-xor(3, n-a(n-2))` -/
def P11498504801138242354.Spec : Prop :=
  ∀ n, P11498504801138242354.a n = A126091 (n + 1)

end A126091

/-! ## A126091.P4512812705747660168

`or(1, n)-(or(2, a(n-1)-3)-n)` with `a(0)=1`
-/

namespace A126091.P4512812705747660168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lor 1 n : ℤ) - (Int.lor 2 (a (n - 1) - 3) - (n : ℤ))

end

end A126091.P4512812705747660168

namespace A126091

/-- `or(1, n)-(or(2, a(n-1)-3)-n)` -/
def P4512812705747660168.Spec : Prop :=
  ∀ n, P4512812705747660168.a n = A126091 (n + 1)

end A126091

/-! ## A126091.P17219608308409469836

`abs(1-n)+4*n%2+and(2, n)/2`
-/

namespace A126091.P17219608308409469836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| : ℚ) + (((4 * (n % 2) : ℕ) : ℚ) + (Nat.land 2 n : ℚ) / 2)

end

end A126091.P17219608308409469836

namespace A126091

/-- `abs(1-n)+4*n%2+and(2, n)/2` -/
def P17219608308409469836.Spec : Prop :=
  ∀ n, P17219608308409469836.a n = (A126091 (n + 1) : ℚ)

end A126091

/-! ## A126091.P13688450233379140442

`3-(and(2, a(n-2)-n)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A126091.P13688450233379140442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 - (Int.land 2 (a (n - 2) - (n : ℤ)) - a (n - 2))

end

end A126091.P13688450233379140442

namespace A126091

/-- `3-(and(2, a(n-2)-n)-a(n-2))` -/
def P13688450233379140442.Spec : Prop :=
  ∀ n, P13688450233379140442.a n = A126091 (n + 1)

end A126091

/-! ## A126091.P14935012147718560799

`or(and(2, n), A090964(n))`
-/

namespace A126091.P14935012147718560799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 2 n : ℤ) (A090964 n)

end

end A126091.P14935012147718560799

namespace A126091

/-- `or(and(2, n), A090964(n))` -/
def P14935012147718560799.Spec : Prop :=
  ∀ n, P14935012147718560799.a n = A126091 (n + 1)

end A126091

/-! ## A126091.P12209605616998847835

`abs(Δ[A004525(n)+lcm(2, n+1)])`
-/

namespace A126091.P12209605616998847835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (Nat.lcm 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126091.P12209605616998847835

namespace A126091

/-- `abs(Δ[A004525(n)+lcm(2, n+1)])` -/
def P12209605616998847835.Spec : Prop :=
  ∀ n, P12209605616998847835.a n = A126091 (n + 1)

end A126091

/-! ## A126091.P16640312261114944270

`A115659(n+1)+A093148(n)`
-/

namespace A126091.P16640312261114944270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115659 (n + 1) + A093148 n

end

end A126091.P16640312261114944270

namespace A126091

/-- `A115659(n+1)+A093148(n)` -/
def P16640312261114944270.Spec : Prop :=
  ∀ n, P16640312261114944270.a n = A126091 (n + 1)

end A126091

/-! ## A126091.P6268108907022303859

`abs(Δ[ceil(n*(n+2)/2)-A176895(n)])`
-/

namespace A126091.P6268108907022303859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (n + 2) : ℚ) / 2⌉ - A176895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126091.P6268108907022303859

namespace A126091

/-- `abs(Δ[ceil(n*(n+2)/2)-A176895(n)])` -/
def P6268108907022303859.Spec : Prop :=
  ∀ n, P6268108907022303859.a n = A126091 (n + 1)

end A126091

/-! ## A126091.P14066436551310779716

`A267183(A072065(n+1))`
-/

namespace A126091.P14066436551310779716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267183 (A072065 (n + 1)).toNat

end

end A126091.P14066436551310779716

namespace A126091

/-- `A267183(A072065(n+1))` -/
def P14066436551310779716.Spec : Prop :=
  ∀ n, P14066436551310779716.a n = A126091 (n + 1)

end A126091

/-!
# A126092: a(1)=2, a(2)=3, a(3)=5; a(n) = largest prime < a(n-1)+a(n-2)+a(n-3).

The programs for A126092, there is no canonical definition to state claims against.
-/

/-! ## A126092.P18041884961506283329

`A007917(A065033(n)+A018176(n))`
-/

namespace A126092.P18041884961506283329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A065033 n + A018176 n).toNat

end

end A126092.P18041884961506283329

/-! ## A126092.P17766672252832439871

`A007917(A137735(n)+A018176(n))`
-/

namespace A126092.P17766672252832439871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A137735 n + A018176 n).toNat

end

end A126092.P17766672252832439871

/-! ## A126092.P9513492679350573815

`A007917(A018176(n)+A004737(n+1))`
-/

namespace A126092.P9513492679350573815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A018176 n + A004737 (n + 1)).toNat

end

end A126092.P9513492679350573815

/-! ## A126092.P15163627339309775565

`A007917(A049716(n+1)+A018176(n))`
-/

namespace A126092.P15163627339309775565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A049716 (n + 1) + A018176 n).toNat

end

end A126092.P15163627339309775565

/-! ## A126092.P2882610452789786512

`A007917(A056813(n+1)+A018176(n))`
-/

namespace A126092.P2882610452789786512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A056813 (n + 1) + A018176 n).toNat

end

end A126092.P2882610452789786512

/-!
# A126093: Inverse binomial matrix applied to A110877.

The programs for A126093, there is no canonical definition to state claims against.
-/

/-! ## A126093.P16643018095289128749

`A167772(A245300(n)+A002262(n))`
-/

namespace A126093.P16643018095289128749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (A245300 n + A002262 n).toNat

end

end A126093.P16643018095289128749

/-! ## A126093.P12108067584806480386

`A321629(n)-A216344(A187829(n+1))`
-/

namespace A126093.P12108067584806480386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321629 n - A216344 (A187829 (n + 1)).toNat

end

end A126093.P12108067584806480386

/-! ## A126093.P17134278931477007216

`gcd(A087027(A284455(n+1)), A147720(n))`
-/

namespace A126093.P17134278931477007216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087027 (A284455 (n + 1)).toNat) (A147720 n)

end

end A126093.P17134278931477007216

/-!
# A126094: Numbers k such that prime(k) = A123206(n).

The programs for A126094, there is no canonical definition to state claims against.
-/

/-! ## A126094.P14803400803084391654

`A000720(A123206(n+1))`
-/

namespace A126094.P14803400803084391654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A123206 (n + 1)).toNat

end

end A126094.P14803400803084391654

/-!
# A126095: Lesser of pairs of single (non-twin) primes.

The programs for A126095, the canonical program `A126095.P17739323671417689772` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126095 has offset 1).

The definition of A126095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126095.P3251185273862040050

`A008578(lt[3, A237260(n+1)])`
-/

namespace A126095.P3251185273862040050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A126095.P3251185273862040050

namespace A126095

/-- `A008578(lt[3, A237260(n+1)])` -/
def P3251185273862040050.Spec : Prop :=
  ∀ n, P3251185273862040050.a n = A126095 (n + 1)

end A126095

/-! ## A126095.P17739323671417689772

`p?[and(1, A167706(n+2))*A167706(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A126095

/-- `p?[and(1, A167706(n+2))*A167706(n+1)]` -/
def P17739323671417689772.Spec : Prop :=
  ∀ n, P17739323671417689772.a n = A126095 (n + 1)

theorem P17739323671417689772.correct : P17739323671417689772.Spec := by
  intro n
  simp only [A126095, Nat.add_sub_cancel]

end A126095

/-! ## A126095.P10302106805417869166

`p?[A167706(n+1)*A283265(A025584(n+1))]`
-/

namespace A126095.P10302106805417869166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) * A283265 (A025584 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126095.P10302106805417869166

namespace A126095

/-- `p?[A167706(n+1)*A283265(A025584(n+1))]` -/
def P10302106805417869166.Spec : Prop :=
  ∀ n, P10302106805417869166.a n = A126095 (n + 1)

end A126095

/-! ## A126095.P2262523536303409853

`p?[A167706(n+1)*A283265(A067774(n+1))]`
-/

namespace A126095.P2262523536303409853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) * A283265 (A067774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126095.P2262523536303409853

namespace A126095

/-- `p?[A167706(n+1)*A283265(A067774(n+1))]` -/
def P2262523536303409853.Spec : Prop :=
  ∀ n, P2262523536303409853.a n = A126095 (n + 1)

end A126095

/-! ## A126095.P7428253882902241117

`p?[gcd(A007510(n+1), A176704(n+1))]`
-/

namespace A126095.P7428253882902241117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007510 (n + 1)) (A176704 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126095.P7428253882902241117

namespace A126095

/-- `p?[gcd(A007510(n+1), A176704(n+1))]` -/
def P7428253882902241117.Spec : Prop :=
  ∀ n, (P7428253882902241117.a n : ℤ) = A126095 (n + 1)

end A126095

/-!
# A126096: Primes that are the arithmetic mean of four successive primes.

The programs for A126096, the canonical program `A126096.P4702891818207861137` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126096 has offset 1).

The definition of A126096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126096.P4702891818207861137

`p?[A102655(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A126096

/-- `p?[A102655(n+1)]` -/
def P4702891818207861137.Spec : Prop :=
  ∀ n, P4702891818207861137.a n = A126096 (n + 1)

theorem P4702891818207861137.correct : P4702891818207861137.Spec := by
  intro n
  simp only [A126096, Nat.add_sub_cancel]

end A126096

/-! ## A126096.P18107096394745865924

`∩[A102655(n+1), A384618(n+1)]`
-/

namespace A126096.P18107096394745865924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P18107096394745865924

namespace A126096

/-- `∩[A102655(n+1), A384618(n+1)]` -/
def P18107096394745865924.Spec : Prop :=
  ∀ n, (P18107096394745865924.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P14759502973265022072

`∩[A004139(n+1), A102655(n+1)]`
-/

namespace A126096.P14759502973265022072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P14759502973265022072

namespace A126096

/-- `∩[A004139(n+1), A102655(n+1)]` -/
def P14759502973265022072.Spec : Prop :=
  ∀ n, (P14759502973265022072.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P1570333588687303341

`∩[A065396(n+1), A102655(n+1)]`
-/

namespace A126096.P1570333588687303341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P1570333588687303341

namespace A126096

/-- `∩[A065396(n+1), A102655(n+1)]` -/
def P1570333588687303341.Spec : Prop :=
  ∀ n, (P1570333588687303341.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P13306243523221656111

`∩[A070303(n+1), A102655(n+1)]`
-/

namespace A126096.P13306243523221656111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P13306243523221656111

namespace A126096

/-- `∩[A070303(n+1), A102655(n+1)]` -/
def P13306243523221656111.Spec : Prop :=
  ∀ n, (P13306243523221656111.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P15013526617145205559

`∩[A071621(n+1), A102655(n+1)]`
-/

namespace A126096.P15013526617145205559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P15013526617145205559

namespace A126096

/-- `∩[A071621(n+1), A102655(n+1)]` -/
def P15013526617145205559.Spec : Prop :=
  ∀ n, (P15013526617145205559.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P14643716900513479384

`∩[A078138(n+1), A102655(n+1)]`
-/

namespace A126096.P14643716900513479384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P14643716900513479384

namespace A126096

/-- `∩[A078138(n+1), A102655(n+1)]` -/
def P14643716900513479384.Spec : Prop :=
  ∀ n, (P14643716900513479384.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P9965055430978905446

`∩[A087490(n+1), A102655(n+1)]`
-/

namespace A126096.P9965055430978905446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P9965055430978905446

namespace A126096

/-- `∩[A087490(n+1), A102655(n+1)]` -/
def P9965055430978905446.Spec : Prop :=
  ∀ n, (P9965055430978905446.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P16858200564771955112

`∩[A102655(n+1), A106118(n+1)]`
-/

namespace A126096.P16858200564771955112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P16858200564771955112

namespace A126096

/-- `∩[A102655(n+1), A106118(n+1)]` -/
def P16858200564771955112.Spec : Prop :=
  ∀ n, (P16858200564771955112.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P12962728528836359056

`∩[A102655(n+1), A108719(n+1)]`
-/

namespace A126096.P12962728528836359056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P12962728528836359056

namespace A126096

/-- `∩[A102655(n+1), A108719(n+1)]` -/
def P12962728528836359056.Spec : Prop :=
  ∀ n, (P12962728528836359056.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P12611443636295271428

`∩[A102655(n+1), A318158(n+1)]`
-/

namespace A126096.P12611443636295271428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P12611443636295271428

namespace A126096

/-- `∩[A102655(n+1), A318158(n+1)]` -/
def P12611443636295271428.Spec : Prop :=
  ∀ n, (P12611443636295271428.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P11008251648739524459

`∩[A000040(n+1), A102655(n+1)]`
-/

namespace A126096.P11008251648739524459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P11008251648739524459

namespace A126096

/-- `∩[A000040(n+1), A102655(n+1)]` -/
def P11008251648739524459.Spec : Prop :=
  ∀ n, (P11008251648739524459.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P5329452597229021717

`∩[A006005(n+1), A102655(n+1)]`
-/

namespace A126096.P5329452597229021717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P5329452597229021717

namespace A126096

/-- `∩[A006005(n+1), A102655(n+1)]` -/
def P5329452597229021717.Spec : Prop :=
  ∀ n, (P5329452597229021717.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P770758462292298809

`∩[A008578(n+1), A102655(n+1)]`
-/

namespace A126096.P770758462292298809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P770758462292298809

namespace A126096

/-- `∩[A008578(n+1), A102655(n+1)]` -/
def P770758462292298809.Spec : Prop :=
  ∀ n, (P770758462292298809.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P18386559680112983672

`∩[A045319(n+1), A102655(n+1)]`
-/

namespace A126096.P18386559680112983672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P18386559680112983672

namespace A126096

/-- `∩[A045319(n+1), A102655(n+1)]` -/
def P18386559680112983672.Spec : Prop :=
  ∀ n, (P18386559680112983672.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P16277676702629499368

`∩[A045344(n+1), A102655(n+1)]`
-/

namespace A126096.P16277676702629499368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P16277676702629499368

namespace A126096

/-- `∩[A045344(n+1), A102655(n+1)]` -/
def P16277676702629499368.Spec : Prop :=
  ∀ n, (P16277676702629499368.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P15961880042451601330

`∩[A046022(n+1), A102655(n+1)]`
-/

namespace A126096.P15961880042451601330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P15961880042451601330

namespace A126096

/-- `∩[A046022(n+1), A102655(n+1)]` -/
def P15961880042451601330.Spec : Prop :=
  ∀ n, (P15961880042451601330.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P11279796771444191987

`∩[A053813(n+1), A102655(n+1)]`
-/

namespace A126096.P11279796771444191987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P11279796771444191987

namespace A126096

/-- `∩[A053813(n+1), A102655(n+1)]` -/
def P11279796771444191987.Spec : Prop :=
  ∀ n, (P11279796771444191987.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P1511705720991729274

`∩[A065091(n+1), A102655(n+1)]`
-/

namespace A126096.P1511705720991729274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P1511705720991729274

namespace A126096

/-- `∩[A065091(n+1), A102655(n+1)]` -/
def P1511705720991729274.Spec : Prop :=
  ∀ n, (P1511705720991729274.a n : ℤ) = A126096 (n + 1)

end A126096

/-! ## A126096.P5503705873463934183

`∩[A066542(n+1), A102655(n+1)]`
-/

namespace A126096.P5503705873463934183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126096.P5503705873463934183

namespace A126096

/-- `∩[A066542(n+1), A102655(n+1)]` -/
def P5503705873463934183.Spec : Prop :=
  ∀ n, (P5503705873463934183.a n : ℤ) = A126096 (n + 1)

end A126096

/-!
# A126097: Records in A018892.

The programs for A126097, there is no canonical definition to state claims against.
-/

/-! ## A126097.P17556094131438404987

`round(A117679(n+1)/2)+1`
-/

namespace A126097.P17556094131438404987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A117679 (n + 1) : ℚ) / 2) + 1

end

end A126097.P17556094131438404987

/-! ## A126097.P12663692539205344888

`floor((A117679(n+1)+3)/A133265(2*n))`
-/

namespace A126097.P12663692539205344888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117679 (n + 1) + 3 : ℚ) / (A133265 (2 * n) : ℚ)⌋

end

end A126097.P12663692539205344888

/-! ## A126097.P11892021986851526102

`(A117679(n+1)+3)/A157725(C(2, n+2))`
-/

namespace A126097.P11892021986851526102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117679 (n + 1) + 3 : ℚ) / (A157725 (Nat.choose 2 (n + 2)) : ℚ)

end

end A126097.P11892021986851526102

/-! ## A126097.P15478421079165760581

`floor((A117679(n+1)+3)/A020639(2*(n+1)))`
-/

namespace A126097.P15478421079165760581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117679 (n + 1) + 3 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)⌋

end

end A126097.P15478421079165760581

/-! ## A126097.P1228233090946939516

`(A117679(n+1)+3)/A020639(A008864(n+1))`
-/

namespace A126097.P1228233090946939516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117679 (n + 1) + 3 : ℚ) / (A020639 (A008864 (n + 1)).toNat : ℚ)

end

end A126097.P1228233090946939516

/-! ## A126097.P7613732725574629840

`A014682(A117679(n+1)+3-A000007(n))`
-/

namespace A126097.P7613732725574629840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A117679 (n + 1) + 3 - A000007 n).toNat

end

end A126097.P7613732725574629840

/-! ## A126097.P17181247905292578844

`A014682(A117679(n+1)+3)-A000038(n)²`
-/

namespace A126097.P17181247905292578844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A117679 (n + 1) + 3).toNat - A000038 n ^ 2

end

end A126097.P17181247905292578844

/-! ## A126097.P4004713977944070906

`A014682(A117679(n+1)+3)%A000045(n+3)`
-/

namespace A126097.P4004713977944070906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 (A117679 (n + 1) + 3).toNat) (A000045 (n + 3))

end

end A126097.P4004713977944070906

/-! ## A126097.P5376108028242295937

`(A117679(n+1)+3)/A020639(A117679(n+1)+3)`
-/

namespace A126097.P5376108028242295937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117679 (n + 1) + 3 : ℚ) / (A020639 (A117679 (n + 1) + 3).toNat : ℚ)

end

end A126097.P5376108028242295937

/-! ## A126097.P3505222315387922237

`A014682(A117679(n+1)+3)%A045366(A000124(n))`
-/

namespace A126097.P3505222315387922237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 (A117679 (n + 1) + 3).toNat) (A045366 (A000124 n).toNat)

end

end A126097.P3505222315387922237

/-!
# A126098: Where records occur in A018892.

The programs for A126098, there is no canonical definition to state claims against.
-/

/-! ## A126098.P17388633555104620314

`A117010(n+1)+1`
-/

namespace A126098.P17388633555104620314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117010 (n + 1) + 1

end

end A126098.P17388633555104620314

/-! ## A126098.P13818640486844481426

`sqrt(A136404(n+1))`
-/

namespace A126098.P13818640486844481426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A136404 (n + 1) : ℝ)

end

end A126098.P13818640486844481426

/-! ## A126098.P15089959885027722522

`root(A136404(n+1), A036453(n+1))`
-/

namespace A126098.P15089959885027722522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A136404 (n + 1) : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A126098.P15089959885027722522

/-! ## A126098.P3339437277511168221

`root(A136404(n+1), A001316(A001316(n)))`
-/

namespace A126098.P3339437277511168221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A136404 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A126098.P3339437277511168221

