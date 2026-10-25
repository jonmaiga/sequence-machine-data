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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A135600: Angled numbers with an internal digit as the vertex.

The programs for A135600, the canonical program `A135600.P14986103063977304718` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135600 has offset 1).

The definition of A135600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 900 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135600.P14986103063977304718

`A233583(A233583(n+5)+97)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135600

/-- `A233583(A233583(n+5)+97)` -/
def P14986103063977304718.Spec : Prop :=
  ∀ n, P14986103063977304718.a n = A135600 (n + 1)

theorem P14986103063977304718.correct : P14986103063977304718.Spec := by
  intro n
  simp only [A135600, Nat.add_sub_cancel]

end A135600

/-! ## A135600.P2257412896762917466

`A111220(A006881(3*n+1))+n`
-/

namespace A135600.P2257412896762917466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111220 (A006881 (3 * n + 1)).toNat + (n : ℤ)

end

end A135600.P2257412896762917466

namespace A135600

/-- `A111220(A006881(3*n+1))+n` -/
def P2257412896762917466.Spec : Prop :=
  ∀ n, P2257412896762917466.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P12343915136565063092

`A165831(A006881(3*n+2))+n`
-/

namespace A135600.P12343915136565063092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A006881 (3 * n + 2)).toNat + (n : ℤ)

end

end A135600.P12343915136565063092

namespace A135600

/-- `A165831(A006881(3*n+2))+n` -/
def P12343915136565063092.Spec : Prop :=
  ∀ n, P12343915136565063092.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P3650828631499394246

`A066135(A016825(3*n+1))²+n`
-/

namespace A135600.P3650828631499394246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (A016825 (3 * n + 1)).toNat ^ 2 + (n : ℤ)

end

end A135600.P3650828631499394246

namespace A135600

/-- `A066135(A016825(3*n+1))²+n` -/
def P3650828631499394246.Spec : Prop :=
  ∀ n, P3650828631499394246.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P3993573818523092145

`(A131295(A109053(2*(n+2)))²+1)²+n`
-/

namespace A135600.P3993573818523092145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131295 (A109053 (2 * (n + 2))).toNat ^ 2 + 1) ^ 2 + (n : ℤ)

end

end A135600.P3993573818523092145

namespace A135600

/-- `(A131295(A109053(2*(n+2)))²+1)²+n` -/
def P3993573818523092145.Spec : Prop :=
  ∀ n, P3993573818523092145.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P645983483587164693

`(A000120(A023691(n+1))+1)²+n`
-/

namespace A135600.P645983483587164693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 (A023691 (n + 1)).toNat + 1) ^ 2 + (n : ℤ)

end

end A135600.P645983483587164693

namespace A135600

/-- `(A000120(A023691(n+1))+1)²+n` -/
def P645983483587164693.Spec : Prop :=
  ∀ n, P645983483587164693.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P17780431492246291606

`A040091(A040106(n+1))²+n`
-/

namespace A135600.P17780431492246291606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040091 (A040106 (n + 1)).toNat ^ 2 + (n : ℤ)

end

end A135600.P17780431492246291606

namespace A135600

/-- `A040091(A040106(n+1))²+n` -/
def P17780431492246291606.Spec : Prop :=
  ∀ n, P17780431492246291606.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P17764342113391266559

`(5*A000005(A092395(n+1)))²+n`
-/

namespace A135600.P17764342113391266559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * A000005 (A092395 (n + 1)).toNat) ^ 2 + (n : ℤ)

end

end A135600.P17764342113391266559

namespace A135600

/-- `(5*A000005(A092395(n+1)))²+n` -/
def P17764342113391266559.Spec : Prop :=
  ∀ n, P17764342113391266559.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P14639486686335763093

`A040091(A040144(n+1))²+n`
-/

namespace A135600.P14639486686335763093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040091 (A040144 (n + 1)).toNat ^ 2 + (n : ℤ)

end

end A135600.P14639486686335763093

namespace A135600

/-- `A040091(A040144(n+1))²+n` -/
def P14639486686335763093.Spec : Prop :=
  ∀ n, P14639486686335763093.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P663852514314098376

`A040091(A040146(n+1))²+n`
-/

namespace A135600.P663852514314098376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040091 (A040146 (n + 1)).toNat ^ 2 + (n : ℤ)

end

end A135600.P663852514314098376

namespace A135600

/-- `A040091(A040146(n+1))²+n` -/
def P663852514314098376.Spec : Prop :=
  ∀ n, P663852514314098376.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P669598556633350553

`(A010732(A136437(3*n+4))+1)²+n`
-/

namespace A135600.P669598556633350553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010732 (A136437 (3 * n + 4)).toNat + 1) ^ 2 + (n : ℤ)

end

end A135600.P669598556633350553

namespace A135600

/-- `(A010732(A136437(3*n+4))+1)²+n` -/
def P669598556633350553.Spec : Prop :=
  ∀ n, P669598556633350553.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P5604513660218869063

`A040091(A040141(n+5))²+n`
-/

namespace A135600.P5604513660218869063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040091 (A040141 (n + 5)).toNat ^ 2 + (n : ℤ)

end

end A135600.P5604513660218869063

namespace A135600

/-- `A040091(A040141(n+5))²+n` -/
def P5604513660218869063.Spec : Prop :=
  ∀ n, P5604513660218869063.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P17443601643138887641

`C(ratio[A000079(n)]+3, 3)²+n`
-/

namespace A135600.P17443601643138887641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + 3)).toNat 3 ^ 2 + n

end

end A135600.P17443601643138887641

namespace A135600

/-- `C(ratio[A000079(n)]+3, 3)²+n` -/
def P17443601643138887641.Spec : Prop :=
  ∀ n, (P17443601643138887641.a n : ℤ) = A135600 (n + 1)

end A135600

/-! ## A135600.P9474101555497645048

`A329828(ratio[A000079(n)]+3)²+n`
-/

namespace A135600.P9474101555497645048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329828 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + 3)).toNat ^ 2 + (n : ℤ)

end

end A135600.P9474101555497645048

namespace A135600

/-- `A329828(ratio[A000079(n)]+3)²+n` -/
def P9474101555497645048.Spec : Prop :=
  ∀ n, P9474101555497645048.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P17842345845255331563

`(A000203(ratio[A000079(n)])²+1)²+n`
-/

namespace A135600.P17842345845255331563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat ^ 2 + 1) ^ 2 + (n : ℤ)

end

end A135600.P17842345845255331563

namespace A135600

/-- `(A000203(ratio[A000079(n)])²+1)²+n` -/
def P17842345845255331563.Spec : Prop :=
  ∀ n, P17842345845255331563.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P14267188549145477300

`A075505(ratio[A000079(n)]/2+1)²+n`
-/

namespace A135600.P14267188549145477300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075505 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2 + 1)).toNat ^ 2 + (n : ℤ)

end

end A135600.P14267188549145477300

namespace A135600

/-- `A075505(ratio[A000079(n)]/2+1)²+n` -/
def P14267188549145477300.Spec : Prop :=
  ∀ n, P14267188549145477300.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P18167350447918445323

`(A074828(ratio[A000079(n)]+7)²+1)²+n`
-/

namespace A135600.P18167350447918445323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074828 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + 7)).toNat ^ 2 + 1) ^ 2 + (n : ℤ)

end

end A135600.P18167350447918445323

namespace A135600

/-- `(A074828(ratio[A000079(n)]+7)²+1)²+n` -/
def P18167350447918445323.Spec : Prop :=
  ∀ n, P18167350447918445323.a n = A135600 (n + 1)

end A135600

/-! ## A135600.P17587336030262675468

`(10^(n+1))^(2/(n+1))+n`
-/

namespace A135600.P17587336030262675468
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℝ) ^ (2 / (n + 1 : ℚ) : ℝ) + (n : ℝ)

end

end A135600.P17587336030262675468

namespace A135600

/-- `(10^(n+1))^(2/(n+1))+n` -/
def P17587336030262675468.Spec : Prop :=
  ∀ n, P17587336030262675468.a n = (A135600 (n + 1) : ℝ)

end A135600

/-!
# A135601: Acute-angled numbers with an internal digit as the vertex.

The programs for A135601, there is no canonical definition to state claims against.
-/

/-! ## A135601.P14244564509442722193

`A355301(A277061(n+1)+92)`
-/

namespace A135601.P14244564509442722193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (A277061 (n + 1) + 92).toNat

end

end A135601.P14244564509442722193

/-! ## A135601.P12134141436893414062

`filter[A039393(n+1), A386313(#)]`
-/

namespace A135601.P12134141436893414062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A386313 (f1 j).toNat = 1) n)

end

end A135601.P12134141436893414062

/-! ## A135601.P15845387174239738784

`∩[A039393(n+1), A064164(n+1)]`
-/

namespace A135601.P15845387174239738784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135601.P15845387174239738784

/-! ## A135601.P1951195063138432999

`∩[A039393(n+1), A260992(n+1)]`
-/

namespace A135601.P1951195063138432999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135601.P1951195063138432999

/-! ## A135601.P13067828190413185301

`∩[A039393(n+1), A307973(n+1)]`
-/

namespace A135601.P13067828190413185301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135601.P13067828190413185301

/-!
# A135602: Right-angled numbers with an internal digit as the vertex.

The programs for A135602, there is no canonical definition to state claims against.
-/

/-! ## A135602.P5505147798422084538

`A090429(∑[n%2+2]+n)`
-/

namespace A135602.P5505147798422084538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090429 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A135602.P5505147798422084538

/-! ## A135602.P7452482968862369474

`A090429(A047276(n+1))`
-/

namespace A135602.P7452482968862369474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090429 (A047276 (n + 1)).toNat

end

end A135602.P7452482968862369474

/-! ## A135602.P751128809064419887

`A047813(A207954(n+10))`
-/

namespace A135602.P751128809064419887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A207954 (n + 10)).toNat

end

end A135602.P751128809064419887

/-! ## A135602.P1327844851209785110

`A056142(eq[1, A151950(n)])`
-/

namespace A135602.P1327844851209785110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135602.P1327844851209785110

/-! ## A135602.P7419190121890457637

`A056525(eq[1, A151950(n)])`
-/

namespace A135602.P7419190121890457637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135602.P7419190121890457637

/-!
# A135603: Obtuse-angled numbers with an internal digit as the vertex.

The programs for A135603, there is no canonical definition to state claims against.
-/

/-! ## A135603.P12050658630009741756

`A044866(n+1)-A335520(A068921(n))²`
-/

namespace A135603.P12050658630009741756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1) - A335520 (A068921 n).toNat ^ 2

end

end A135603.P12050658630009741756

/-! ## A135603.P15357321951612124853

`∩[A044866(n+1), A069838(n+1)]`
-/

namespace A135603.P15357321951612124853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135603.P15357321951612124853

/-! ## A135603.P9805965308005734444

`∩[A044866(n+1), A115843(n+1)]`
-/

namespace A135603.P9805965308005734444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135603.P9805965308005734444

/-! ## A135603.P17997695643308081385

`∩[A044866(n+1), A119028(n+1)]`
-/

namespace A135603.P17997695643308081385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135603.P17997695643308081385

/-! ## A135603.P11079404935378077970

`∩[A044866(n+1), A131862(n+1)]`
-/

namespace A135603.P11079404935378077970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135603.P11079404935378077970

/-!
# A135604: Self-describing sequence: 1 even digit between two odd, then 2 even digits between two odd, then 3 even digits, then 4, then 6... The length of each run of even digits is given by the sequence itself (the smallest available integer is used when needed). Zero is an even digit.

The programs for A135604, there is no canonical definition to state claims against.
-/

/-! ## A135604.P10134190869724860053

`lt[A043561(n), A102669(A111167(n))]`
-/

namespace A135604.P10134190869724860053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A111167 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135604.P10134190869724860053

/-! ## A135604.P6448517080460280596

`A029955(lt[A227550(n), n])`
-/

namespace A135604.P6448517080460280596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A135604.P6448517080460280596

/-! ## A135604.P11547479101432159226

`eq[A008292(A083544(n+1)), A055640(n)]`
-/

namespace A135604.P11547479101432159226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A083544 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135604.P11547479101432159226

/-! ## A135604.P2848916820952294667

`A052018(lt[A191702(n+1), A079454(n+1)])`
-/

namespace A135604.P2848916820952294667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135604.P2848916820952294667

/-!
# A135606: Nearest-neighbors of perfect numbers.

The programs for A135606, there is no canonical definition to state claims against.
-/

/-! ## A135606.P12773843502551699883

`A000396(∑[log2(gcd(2, n))])-(-1)^n`
-/

namespace A135606.P12773843502551699883
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (-1) ^ n

end

end A135606.P12773843502551699883

/-! ## A135606.P12483805668061597010

`∪[A135627(n+1), A135629(n+1)]`
-/

namespace A135606.P12483805668061597010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135606.P12483805668061597010

/-! ## A135606.P37805259066852771

`A000396(A008619(n))-A033999(n)`
-/

namespace A135606.P37805259066852771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (A008619 n).toNat - A033999 n

end

end A135606.P37805259066852771

/-! ## A135606.P8110522812764325208

`A033999(n+1)+A000396(A008619(n))`
-/

namespace A135606.P8110522812764325208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A000396 (A008619 n).toNat

end

end A135606.P8110522812764325208

/-!
# A135607: Floor of the area of a circle in terms of its circumference n.

The programs for A135607, the canonical program `A135607.P16978739446351322344` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135607 has offset 0).

The definition of A135607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135607.P16978739446351322344

`floor(n²/(4*π))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135607

/-- `floor(n²/(4*π))` -/
def P16978739446351322344.Spec : Prop :=
  ∀ n, P16978739446351322344.a n = A135607 n

theorem P16978739446351322344.correct : P16978739446351322344.Spec := by
  intro n
  simp only [A135607]

end A135607

/-! ## A135607.P6929638969718730791

`ceil((n/2)²/π)-char[A032742(n+1)]`
-/

namespace A135607.P6929638969718730791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 2) ^ 2 : ℝ) / Real.pi⌉ - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135607.P6929638969718730791

namespace A135607

/-- `ceil((n/2)²/π)-char[A032742(n+1)]` -/
def P6929638969718730791.Spec : Prop :=
  ∀ n, P6929638969718730791.a n = A135607 n

end A135607

/-! ## A135607.P6407133140033365936

`ceil((n/2)²/π)-A055640(A000120(n))`
-/

namespace A135607.P6407133140033365936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 2) ^ 2 : ℝ) / Real.pi⌉ - A055640 (A000120 n).toNat

end

end A135607.P6407133140033365936

namespace A135607

/-- `ceil((n/2)²/π)-A055640(A000120(n))` -/
def P6407133140033365936.Spec : Prop :=
  ∀ n, P6407133140033365936.a n = A135607 n

end A135607

/-! ## A135607.P12876511444321185219

`A004526(A004273(ceil((n/2)²/π)))`
-/

namespace A135607.P12876511444321185219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004273 ⌈(((n : ℚ) / 2) ^ 2 : ℝ) / Real.pi⌉.toNat).toNat

end

end A135607.P12876511444321185219

namespace A135607

/-- `A004526(A004273(ceil((n/2)²/π)))` -/
def P12876511444321185219.Spec : Prop :=
  ∀ n, P12876511444321185219.a n = A135607 n

end A135607

/-! ## A135607.P12542817284297968436

`A004526(A163985(ceil((n/2)²/π)))`
-/

namespace A135607.P12542817284297968436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A163985 ⌈(((n : ℚ) / 2) ^ 2 : ℝ) / Real.pi⌉.toNat).toNat

end

end A135607.P12542817284297968436

namespace A135607

/-- `A004526(A163985(ceil((n/2)²/π)))` -/
def P12542817284297968436.Spec : Prop :=
  ∀ n, P12542817284297968436.a n = A135607 n

end A135607

/-! ## A135607.P13332050632278844226

`A002265(floor(n²/π))`
-/

namespace A135607.P13332050632278844226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ⌊(n ^ 2 : ℝ) / Real.pi⌋.toNat

end

end A135607.P13332050632278844226

namespace A135607

/-- `A002265(floor(n²/π))` -/
def P13332050632278844226.Spec : Prop :=
  ∀ n, P13332050632278844226.a n = A135607 n

end A135607

/-! ## A135607.P865640310960544139

`A008621(floor(n*n/π))-1`
-/

namespace A135607.P865640310960544139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋.toNat - 1

end

end A135607.P865640310960544139

namespace A135607

/-- `A008621(floor(n*n/π))-1` -/
def P865640310960544139.Spec : Prop :=
  ∀ n, P865640310960544139.a n = A135607 n

end A135607

/-! ## A135607.P5206026293746856677

`A110657(or(3, A032616(n)))`
-/

namespace A135607.P5206026293746856677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.lor 3 (A032616 n)).toNat

end

end A135607.P5206026293746856677

namespace A135607

/-- `A110657(or(3, A032616(n)))` -/
def P5206026293746856677.Spec : Prop :=
  ∀ n, P5206026293746856677.a n = A135607 n

end A135607

/-! ## A135607.P3871162392194952854

`A004526(A004526(floor(n*n/π)))`
-/

namespace A135607.P3871162392194952854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋.toNat).toNat

end

end A135607.P3871162392194952854

namespace A135607

/-- `A004526(A004526(floor(n*n/π)))` -/
def P3871162392194952854.Spec : Prop :=
  ∀ n, P3871162392194952854.a n = A135607 n

end A135607

/-! ## A135607.P11291654318528614569

`A016303(A114567(n))+A008621(floor(n*n/π))`
-/

namespace A135607.P11291654318528614569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016303 (A114567 n).toNat + A008621 ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋.toNat

end

end A135607.P11291654318528614569

namespace A135607

/-- `A016303(A114567(n))+A008621(floor(n*n/π))` -/
def P11291654318528614569.Spec : Prop :=
  ∀ n, P11291654318528614569.a n = A135607 n

end A135607

/-!
# A135609: a(n) = (n!)^2 - n^n.

The programs for A135609, the canonical program `A135609.P5293298405316829330` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135609 has offset 0).

The definition of A135609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²-n^n` (program `A135609.P5293298405316829330`, by `A135609.P5293298405316829330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135609.P5293298405316829330

`n!²-n^n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135609

/-- `n!²-n^n` -/
def P5293298405316829330.Spec : Prop :=
  ∀ n, P5293298405316829330.a n = A135609 n

theorem P5293298405316829330.correct : P5293298405316829330.Spec := by
  intro n
  simp only [A135609]

end A135609

/-! ## A135609.P3548658496834177344

`A001044(n)-A000312(n)`
-/

namespace A135609.P3548658496834177344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 n - A000312 n

end

end A135609.P3548658496834177344

namespace A135609

/-- `A001044(n)-A000312(n)` -/
def P3548658496834177344.Spec : Prop :=
  ∀ n, P3548658496834177344.a n = A135609 n

theorem P3548658496834177344.correct : P3548658496834177344.Spec := by
  intro n
  simp only [A135609, Nat.add_sub_cancel, A135609.P3548658496834177344.a, A135609.P5293298405316829330.a, A000312, A000312.P3932771318196185165.a, A001044, A001044.P12042438856590203725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135609

/-! ## A135609.P11614649974723599926

`n!^2-n^n`
-/

namespace A135609.P11614649974723599926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) - (n ^ n : ℤ)

end

end A135609.P11614649974723599926

namespace A135609

/-- `n!^2-n^n` -/
def P11614649974723599926.Spec : Prop :=
  ∀ n, P11614649974723599926.a n = A135609 n

theorem P11614649974723599926.correct : P11614649974723599926.Spec := by
  intro n
  simp only [A135609, Nat.add_sub_cancel, A135609.P11614649974723599926.a, A135609.P5293298405316829330.a, SequenceMachineLib.memo_apply]

end A135609

/-! ## A135609.P61168372053283192

`∏[round(1/acot(n))]²-n^n`
-/

namespace A135609.P61168372053283192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n ^ n : ℤ)

end

end A135609.P61168372053283192

namespace A135609

/-- `∏[round(1/acot(n))]²-n^n` -/
def P61168372053283192.Spec : Prop :=
  ∀ n, P61168372053283192.a n = A135609 n

end A135609

/-! ## A135609.P12668475138170298428

`∏[ceil(abs(γ-n))]²-n^n`
-/

namespace A135609.P12668475138170298428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n ^ n : ℤ)

end

end A135609.P12668475138170298428

namespace A135609

/-- `∏[ceil(abs(γ-n))]²-n^n` -/
def P12668475138170298428.Spec : Prop :=
  ∀ n, P12668475138170298428.a n = A135609 n

end A135609

/-!
# A135610: Triangle read by rows: the k-th entry of row n is the number of particular connectivity requirements that a k-linked graph with n >= 2k vertices has to satisfy T(n,k) = (1/2) * n!/(k!*(n-2*k)!) where k runs from 1 to floor(n/2).

The programs for A135610, the canonical program `A135610.P10837418836104773190` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135610 has offset 1).

The definition of A135610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135610.P7971784341932008965

`A059344(comp[floor((n/2)²)])/2`
-/

namespace A135610.P7971784341932008965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059344 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A135610.P7971784341932008965

namespace A135610

/-- `A059344(comp[floor((n/2)²)])/2` -/
def P7971784341932008965.Spec : Prop :=
  ∀ n, P7971784341932008965.a n = (A135610 (n + 1) : ℚ)

end A135610

/-! ## A135610.P10837418836104773190

`floor(A059344(A049068(n+1))/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A135610

/-- `floor(A059344(A049068(n+1))/2)` -/
def P10837418836104773190.Spec : Prop :=
  ∀ n, P10837418836104773190.a n = A135610 (n + 1)

theorem P10837418836104773190.correct : P10837418836104773190.Spec := by
  intro n
  simp only [A135610, Nat.add_sub_cancel]

end A135610

/-! ## A135610.P13076873114590328206

`ceil(A059344(A049068(-xor(n, -1)))/2)`
-/

namespace A135610.P13076873114590328206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059344 (A049068 (-Int.xor (n : ℤ) (-1)).toNat).toNat : ℚ) / 2⌉

end

end A135610.P13076873114590328206

namespace A135610

/-- `ceil(A059344(A049068(-xor(n, -1)))/2)` -/
def P13076873114590328206.Spec : Prop :=
  ∀ n, P13076873114590328206.a n = A135610 (n + 1)

end A135610

/-! ## A135610.P13145845245572422180

`ceil(A059344(A049068(char[2]+1+n))/2)`
-/

namespace A135610.P13145845245572422180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059344 (A049068 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat : ℚ) / 2⌉

end

end A135610.P13145845245572422180

namespace A135610

/-- `ceil(A059344(A049068(char[2]+1+n))/2)` -/
def P13145845245572422180.Spec : Prop :=
  ∀ n, P13145845245572422180.a n = A135610 (n + 1)

end A135610

/-! ## A135610.P7823750492801444330

`A001147(A122197(n+1))*A210189(n+1)`
-/

namespace A135610.P7823750492801444330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A122197 (n + 1)).toNat * A210189 (n + 1)

end

end A135610.P7823750492801444330

namespace A135610

/-- `A001147(A122197(n+1))*A210189(n+1)` -/
def P7823750492801444330.Spec : Prop :=
  ∀ n, P7823750492801444330.a n = A135610 (n + 1)

end A135610

/-! ## A135610.P1082899736204257089

`(A059344(A049068(n+1))/2)^A178334(n)`
-/

namespace A135610.P1082899736204257089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A059344 (A049068 (n + 1)).toNat : ℚ) / 2) ^ (A178334 n : ℤ)

end

end A135610.P1082899736204257089

namespace A135610

/-- `(A059344(A049068(n+1))/2)^A178334(n)` -/
def P1082899736204257089.Spec : Prop :=
  ∀ n, P1082899736204257089.a n = (A135610 (n + 1) : ℚ)

end A135610

/-! ## A135610.P8899143491648459582

`A000079(A055087(n))*A100861(A049068(n+1))`
-/

namespace A135610.P8899143491648459582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055087 n).toNat * A100861 (A049068 (n + 1)).toNat

end

end A135610.P8899143491648459582

namespace A135610

/-- `A000079(A055087(n))*A100861(A049068(n+1))` -/
def P8899143491648459582.Spec : Prop :=
  ∀ n, P8899143491648459582.a n = A135610 (n + 1)

end A135610

/-! ## A135610.P2592062502608316231

`A059268(A091018(n))*A100861(A049068(n+1))`
-/

namespace A135610.P2592062502608316231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A100861 (A049068 (n + 1)).toNat

end

end A135610.P2592062502608316231

namespace A135610

/-- `A059268(A091018(n))*A100861(A049068(n+1))` -/
def P2592062502608316231.Spec : Prop :=
  ∀ n, P2592062502608316231.a n = A135610 (n + 1)

end A135610

/-! ## A135610.P13053958366397881519

`A011782(A122197(n+1))*A100861(A049068(n+1))`
-/

namespace A135610.P13053958366397881519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A122197 (n + 1)).toNat * A100861 (A049068 (n + 1)).toNat

end

end A135610.P13053958366397881519

namespace A135610

/-- `A011782(A122197(n+1))*A100861(A049068(n+1))` -/
def P13053958366397881519.Spec : Prop :=
  ∀ n, P13053958366397881519.a n = A135610 (n + 1)

end A135610

/-! ## A135610.P4132880508867255525

`2^A321800(A348674(n))*A059344(A049068(n+1))`
-/

namespace A135610.P4132880508867255525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A321800 (A348674 n).toNat : ℤ) * (A059344 (A049068 (n + 1)).toNat : ℚ)

end

end A135610.P4132880508867255525

namespace A135610

/-- `2^A321800(A348674(n))*A059344(A049068(n+1))` -/
def P4132880508867255525.Spec : Prop :=
  ∀ n, P4132880508867255525.a n = (A135610 (n + 1) : ℚ)

end A135610

/-!
# A135611: Decimal expansion of sqrt(2) + sqrt(3).

The programs for A135611, there is no canonical definition to state claims against.
-/

/-! ## A135611.P9321397545115605108

`A297701(n)-A152623(2*n)`
-/

namespace A135611.P9321397545115605108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297701 (n + 1) - A152623 (2 * n + 1)

end

end A135611.P9321397545115605108

/-!
# A135612: Even superperfect numbers divided by 2, written in base 2.

The programs for A135612, there is no canonical definition to state claims against.
-/

/-! ## A135612.P4053980192974125071

`A135651(n+1)/10`
-/

namespace A135612.P4053980192974125071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135651 (n + 1) : ℚ) / 10

end

end A135612.P4053980192974125071

/-! ## A135612.P13778805326407480229

`10^A153798(n+1)`
-/

namespace A135612.P13778805326407480229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A153798 (n + 1) : ℤ)

end

end A135612.P13778805326407480229

/-! ## A135612.P3558242567438757317

`10^log2(A134708(n+1))`
-/

namespace A135612.P3558242567438757317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 : ℝ) ^ (Real.logb 2 (A134708 (n + 1) : ℝ))

end

end A135612.P3558242567438757317

/-! ## A135612.P17093897336671393139

`10^(A090748(n+1)-1)`
-/

namespace A135612.P17093897336671393139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A090748 (n + 1) - 1 : ℤ)

end

end A135612.P17093897336671393139

/-! ## A135612.P16448723026334370984

`10^(A000043(n+1)-2)`
-/

namespace A135612.P16448723026334370984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A000043 (n + 1) - 2 : ℤ)

end

end A135612.P16448723026334370984

/-!
# A135613: Initial digit of Mersenne primes A000668.

The programs for A135613, there is no canonical definition to state claims against.
-/

/-! ## A135613.P1241165626808113203

`A134037(n+1)%10`
-/

namespace A135613.P1241165626808113203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134037 (n + 1)) 10

end

end A135613.P1241165626808113203

/-! ## A135613.P5910884182223390159

`floor(A138841(n+1)/10)`
-/

namespace A135613.P5910884182223390159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138841 (n + 1) : ℚ) / 10⌋

end

end A135613.P5910884182223390159

/-! ## A135613.P7424932786156976102

`A000030(A138841(n+1))`
-/

namespace A135613.P7424932786156976102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A138841 (n + 1)).toNat

end

end A135613.P7424932786156976102

/-! ## A135613.P3641534879949336959

`A000030(A138862(n+1))`
-/

namespace A135613.P3641534879949336959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A138862 (n + 1)).toNat

end

end A135613.P3641534879949336959

/-! ## A135613.P7161916434840803266

`A000030(A138863(n+1))`
-/

namespace A135613.P7161916434840803266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A138863 (n + 1)).toNat

end

end A135613.P7161916434840803266

/-!
# A135615: a(n) = number of positive divisors of (n+1) that are each the average of a positive divisor of n and a positive divisor of (n+2).

The programs for A135615, there is no canonical definition to state claims against.
-/

/-! ## A135615.P18404648597188458591

`A304036(n)+A035306(A085791(n)!)`
-/

namespace A135615.P18404648597188458591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n + A035306 (Nat.factorial (A085791 n).toNat)

end

end A135615.P18404648597188458591

/-! ## A135615.P6123607901666249916

`A340102(A228796(n+1))+A304036(n)`
-/

namespace A135615.P6123607901666249916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A228796 (n + 1)).toNat + A304036 n

end

end A135615.P6123607901666249916

/-! ## A135615.P6342949943548366761

`A304036(n)+A302150(A304036(A324663(n)))`
-/

namespace A135615.P6342949943548366761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n + A302150 (A304036 (A324663 n).toNat).toNat

end

end A135615.P6342949943548366761

/-! ## A135615.P3506597397541332285

`A091090(A051699(2*n))+A000005(A013632((2*n+1)*(n+1)²))`
-/

namespace A135615.P3506597397541332285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A051699 (2 * n)).toNat + A000005 (A013632 ((2 * n + 1) * (n + 1) ^ 2)).toNat

end

end A135615.P3506597397541332285

/-!
# A135616: Number of permutations p of {1,2,...,n} such that p(x) is a polynomial in x, modulo n, of degree at most 2, for x=1,2,3,...,n.

The programs for A135616, there is no canonical definition to state claims against.
-/

/-! ## A135616.P6438776613231365281

`(n+1)*A308828(n+1)`
-/

namespace A135616.P6438776613231365281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308828 (n + 1)

end

end A135616.P6438776613231365281

/-! ## A135616.P6566093351339173166

`gcd(n+1, lcm(2, ∑[n]))*A000010((n+1)²/∏{p}[n+1, #])`
-/

namespace A135616.P6566093351339173166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) * A000010 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A135616.P6566093351339173166

/-! ## A135616.P3947536013258705929

`(n+1)²/∏{p}[n+1, #]*A000010(gcd(C(n², 2), ∑[1-n]))`
-/

namespace A135616.P3947536013258705929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A000010 (Int.gcd (Nat.choose (n ^ 2) 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)) : ℚ)

end

end A135616.P3947536013258705929

/-! ## A135616.P5435372535561312027

`A000010((n+1)/and(2, n^3)!*(n+1)²/∏{p}[n+1, #])`
-/

namespace A135616.P5435372535561312027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.factorial (Nat.land 2 (n ^ 3)) : ℚ) * (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))).toNat

end

end A135616.P5435372535561312027

/-! ## A135616.P12689183712707785991

`(n+1)²/∏{p}[n+1, #]*A000010(gcd(2*(n+1), ∑[n+1]))`
-/

namespace A135616.P12689183712707785991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A000010 (Nat.gcd (2 * (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)) : ℚ)

end

end A135616.P12689183712707785991

/-!
# A135617: a(n) is the initial digit of n-th even perfect number.

The programs for A135617, there is no canonical definition to state claims against.
-/

/-! ## A135617.P12044358292359872799

`A000030(A138873(n+1))`
-/

namespace A135617.P12044358292359872799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A138873 (n + 1)).toNat

end

end A135617.P12044358292359872799

/-! ## A135617.P17438038842243972695

`A000030(A138875(n+1))`
-/

namespace A135617.P17438038842243972695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A138875 (n + 1)).toNat

end

end A135617.P17438038842243972695

/-! ## A135617.P10954258085718596996

`A000030(A138876(n+1))`
-/

namespace A135617.P10954258085718596996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A138876 (n + 1)).toNat

end

end A135617.P10954258085718596996

/-! ## A135617.P3839507774765734492

`A179635(A178333(n)+A138873(n+1))`
-/

namespace A135617.P3839507774765734492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (A178333 n + A138873 (n + 1)).toNat

end

end A135617.P3839507774765734492

/-! ## A135617.P806693188511285750

`A179635(or(A000038(n), A138873(n+1)))`
-/

namespace A135617.P806693188511285750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (Int.lor (A000038 n) (A138873 (n + 1))).toNat

end

end A135617.P806693188511285750

/-!
# A135618: Even Motzkin numbers divided by 2.

The programs for A135618, the canonical program `A135618.P17133991811513535197` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135618 has offset 1).

The definition of A135618 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134718, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135618.P17133991811513535197

`A134718(n+1)/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135618

/-- `A134718(n+1)/2` -/
def P17133991811513535197.Spec : Prop :=
  ∀ n, P17133991811513535197.a n = (A135618 (n + 1) : ℚ)

end A135618

/-! ## A135618.P4795274503929690317

`A001006(A081706(n+1))/2`
-/

namespace A135618.P4795274503929690317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 (A081706 (n + 1)).toNat : ℚ) / 2

end

end A135618.P4795274503929690317

namespace A135618

/-- `A001006(A081706(n+1))/2` -/
def P4795274503929690317.Spec : Prop :=
  ∀ n, P4795274503929690317.a n = (A135618 (n + 1) : ℚ)

end A135618

/-! ## A135618.P13968729670476301850

`A001006(lt[A039963(n), 1])/2`
-/

namespace A135618.P13968729670476301850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 2

end

end A135618.P13968729670476301850

namespace A135618

/-- `A001006(lt[A039963(n), 1])/2` -/
def P13968729670476301850.Spec : Prop :=
  ∀ n, P13968729670476301850.a n = (A135618 (n + 1) : ℚ)

end A135618

/-! ## A135618.P5691718953741258657

`A001006(lt[A245187(n), 1])/2`
-/

namespace A135618.P5691718953741258657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245187 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 2

end

end A135618.P5691718953741258657

namespace A135618

/-- `A001006(lt[A245187(n), 1])/2` -/
def P5691718953741258657.Spec : Prop :=
  ∀ n, P5691718953741258657.a n = (A135618 (n + 1) : ℚ)

end A135618

/-! ## A135618.P12425634325348147601

`abs(A166587(A344346(n+1))/2)`
-/

namespace A135618.P12425634325348147601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A166587 (A344346 (n + 1)).toNat : ℚ) / 2|

end

end A135618.P12425634325348147601

namespace A135618

/-- `abs(A166587(A344346(n+1))/2)` -/
def P12425634325348147601.Spec : Prop :=
  ∀ n, P12425634325348147601.a n = (A135618 (n + 1) : ℚ)

end A135618

/-! ## A135618.P11116277376043655480

`A153787(A081706(n+1))`
-/

namespace A135618.P11116277376043655480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153787 (A081706 (n + 1)).toNat

end

end A135618.P11116277376043655480

namespace A135618

/-- `A153787(A081706(n+1))` -/
def P11116277376043655480.Spec : Prop :=
  ∀ n, P11116277376043655480.a n = A135618 (n + 1)

end A135618

/-!
# A135619: Even Padovan numbers divided by 2.

The programs for A135619, the canonical program `A135619.P12431492879390114788` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135619 has offset 1).

The definition of A135619 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135619.P12431492879390114788

`A134720(n+1)/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135619

/-- `A134720(n+1)/2` -/
def P12431492879390114788.Spec : Prop :=
  ∀ n, P12431492879390114788.a n = (A135619 (n + 1) : ℚ)

end A135619

/-! ## A135619.P18039835395910858675

`A000931(A047350(n+1))/2`
-/

namespace A135619.P18039835395910858675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000931 (A047350 (n + 1)).toNat : ℚ) / 2

end

end A135619.P18039835395910858675

namespace A135619

/-- `A000931(A047350(n+1))/2` -/
def P18039835395910858675.Spec : Prop :=
  ∀ n, P18039835395910858675.a n = (A135619 (n + 1) : ℚ)

end A135619

/-! ## A135619.P2902792871164456756

`A078027(A047296(n+1))/2`
-/

namespace A135619.P2902792871164456756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078027 (A047296 (n + 1)).toNat : ℚ) / 2

end

end A135619.P2902792871164456756

namespace A135619

/-- `A078027(A047296(n+1))/2` -/
def P2902792871164456756.Spec : Prop :=
  ∀ n, P2902792871164456756.a n = (A135619 (n + 1) : ℚ)

end A135619

/-! ## A135619.P9255801243268300556

`A133034(A047321(n+2))/2`
-/

namespace A135619.P9255801243268300556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133034 (A047321 (n + 2)).toNat : ℚ) / 2

end

end A135619.P9255801243268300556

namespace A135619

/-- `A133034(A047321(n+2))/2` -/
def P9255801243268300556.Spec : Prop :=
  ∀ n, P9255801243268300556.a n = (A135619 (n + 1) : ℚ)

end A135619

/-! ## A135619.P12637633184868336182

`A000931(A047296(n+1)-2)/2`
-/

namespace A135619.P12637633184868336182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000931 (A047296 (n + 1) - 2).toNat : ℚ) / 2

end

end A135619.P12637633184868336182

namespace A135619

/-- `A000931(A047296(n+1)-2)/2` -/
def P12637633184868336182.Spec : Prop :=
  ∀ n, P12637633184868336182.a n = (A135619 (n + 1) : ℚ)

end A135619

/-! ## A135619.P17814122349312320303

`Δ[A000931(A047390(n+1))/2]`
-/

namespace A135619.P17814122349312320303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000931 (A047390 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135619.P17814122349312320303

namespace A135619

/-- `Δ[A000931(A047390(n+1))/2]` -/
def P17814122349312320303.Spec : Prop :=
  ∀ n, P17814122349312320303.a n = (A135619 (n + 1) : ℚ)

end A135619

/-! ## A135619.P540665213036748555

`A000931(∑[A011782(n)%7])/2`
-/

namespace A135619.P540665213036748555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n) 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A135619.P540665213036748555

namespace A135619

/-- `A000931(∑[A011782(n)%7])/2` -/
def P540665213036748555.Spec : Prop :=
  ∀ n, P540665213036748555.a n = (A135619 (n + 1) : ℚ)

end A135619

/-!
# A135620: a(n) = 2^(prime(n) - 2).

The programs for A135620, the canonical program `A135620.P7501931609771001337` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135620 has offset 1).

The definition of A135620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135620.P7501931609771001337

`A061286(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135620

/-- `A061286(n+1)/2` -/
def P7501931609771001337.Spec : Prop :=
  ∀ n, P7501931609771001337.a n = (A135620 (n + 1) : ℚ)

end A135620

/-! ## A135620.P17475355591005064658

`A034785(n+1)/4`
-/

namespace A135620.P17475355591005064658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034785 (n + 1) : ℚ) / 4

end

end A135620.P17475355591005064658

namespace A135620

/-- `A034785(n+1)/4` -/
def P17475355591005064658.Spec : Prop :=
  ∀ n, P17475355591005064658.a n = (A135620 (n + 1) : ℚ)

end A135620

/-! ## A135620.P8295036725343715974

`2^A040976(n+1)`
-/

namespace A135620.P8295036725343715974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A040976 (n + 1) : ℤ)

end

end A135620.P8295036725343715974

namespace A135620

/-- `2^A040976(n+1)` -/
def P8295036725343715974.Spec : Prop :=
  ∀ n, P8295036725343715974.a n = (A135620 (n + 1) : ℚ)

end A135620

/-! ## A135620.P18364733934738716805

`2^(A000040(n+1)-2)`
-/

namespace A135620.P18364733934738716805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000040 (n + 1) - 2 : ℤ)

end

end A135620.P18364733934738716805

namespace A135620

/-- `2^(A000040(n+1)-2)` -/
def P18364733934738716805.Spec : Prop :=
  ∀ n, P18364733934738716805.a n = (A135620 (n + 1) : ℚ)

end A135620

/-! ## A135620.P16367987009948593750

`record[2^∑{p}[n, #-2]]`
-/

namespace A135620.P16367987009948593750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135620.P16367987009948593750

namespace A135620

/-- `record[2^∑{p}[n, #-2]]` -/
def P16367987009948593750.Spec : Prop :=
  ∀ n, P16367987009948593750.a n = (A135620 (n + 1) : ℚ)

end A135620

/-! ## A135620.P503015315430904645

`record[∏{p}[n, 2^(#-2)]]`
-/

namespace A135620.P503015315430904645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 : ℚ) ^ ((p : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135620.P503015315430904645

namespace A135620

/-- `record[∏{p}[n, 2^(#-2)]]` -/
def P503015315430904645.Spec : Prop :=
  ∀ n, P503015315430904645.a n = (A135620 (n + 1) : ℚ)

end A135620

/-! ## A135620.P16183061833136927054

`2^(p?[comp[n²]]-2)`
-/

namespace A135620.P16183061833136927054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2 : ℤ)

end

end A135620.P16183061833136927054

namespace A135620

/-- `2^(p?[comp[n²]]-2)` -/
def P16183061833136927054.Spec : Prop :=
  ∀ n, P16183061833136927054.a n = (A135620 (n + 1) : ℚ)

end A135620

/-! ## A135620.P9969980886428614547

`2^eq[1, ∑{e}[n+2, #]]`
-/

namespace A135620.P9969980886428614547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135620.P9969980886428614547

namespace A135620

/-- `2^eq[1, ∑{e}[n+2, #]]` -/
def P9969980886428614547.Spec : Prop :=
  ∀ n, (P9969980886428614547.a n : ℤ) = A135620 (n + 1)

end A135620

/-! ## A135620.P5197778278595454299

`2^lt[∑{e}[n+2, #], 2]`
-/

namespace A135620.P5197778278595454299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A135620.P5197778278595454299

namespace A135620

/-- `2^lt[∑{e}[n+2, #], 2]` -/
def P5197778278595454299.Spec : Prop :=
  ∀ n, (P5197778278595454299.a n : ℤ) = A135620 (n + 1)

end A135620

/-! ## A135620.P10072634547596186003

`record[2^∑{p}[n+2, #]/4]`
-/

namespace A135620.P10072634547596186003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135620.P10072634547596186003

namespace A135620

/-- `record[2^∑{p}[n+2, #]/4]` -/
def P10072634547596186003.Spec : Prop :=
  ∀ n, P10072634547596186003.a n = (A135620 (n + 1) : ℚ)

end A135620

/-!
# A135621: Number of prime factors of 11^n + 2 (counted with multiplicity).

The programs for A135621, there is no canonical definition to state claims against.
-/

/-! ## A135621.P8485259291295903785

`A319695(A030105(A219045(n+1))-2)`
-/

namespace A135621.P8485259291295903785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (A030105 (A219045 (n + 1)).toNat - 2).toNat

end

end A135621.P8485259291295903785

/-!
# A135622: 16*Area^2 of integer triangles [A070080(n),A070081(n),A070082(n)].

The programs for A135622, there is no canonical definition to state claims against.
-/

/-! ## A135622.P1379043675024067554

`A316853(A376686(n+1)^A295679(2*n+1))`
-/

namespace A135622.P1379043675024067554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316853 (SequenceMachineLib.roundAway ((A376686 (n + 1) : ℚ) ^ (A295679 (2 * n + 1) : ℤ))).toNat

end

end A135622.P1379043675024067554

/-!
# A135623: Mersenne primes written backwards.

The programs for A135623, there is no canonical definition to state claims against.
-/

/-! ## A135623.P16034878925908238675

`A273092(A000043(n+1))`
-/

namespace A135623.P16034878925908238675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273092 (A000043 (n + 1)).toNat

end

end A135623.P16034878925908238675

/-! ## A135623.P18289086363585220445

`A273092(A366029(n+1))`
-/

namespace A135623.P18289086363585220445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273092 (A366029 (n + 1)).toNat

end

end A135623.P18289086363585220445

/-! ## A135623.P14781862035862922968

`A273092(eq[1, A059959(n)])`
-/

namespace A135623.P14781862035862922968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135623.P14781862035862922968

/-! ## A135623.P18365286713102304539

`A273092(A090748(n+1)+1)`
-/

namespace A135623.P18365286713102304539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273092 (A090748 (n + 1) + 1).toNat

end

end A135623.P18365286713102304539

/-! ## A135623.P17697658426850852799

`A273092(ceil(log2(A000668(n+1))))`
-/

namespace A135623.P17697658426850852799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273092 ⌈Real.logb 2 (A000668 (n + 1) : ℝ)⌉.toNat

end

end A135623.P17697658426850852799

/-!
# A135624: Perfect numbers written backwards.

The programs for A135624, there is no canonical definition to state claims against.
-/

/-! ## A135624.P1763945450972262234

`A135626(n+1)/A000396(n+1)`
-/

namespace A135624.P1763945450972262234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135626 (n + 1) : ℚ) / (A000396 (n + 1) : ℚ)

end

end A135624.P1763945450972262234

/-! ## A135624.P1544034814180211355

`A135626(n+1)/Δ[A185351(2^n)]`
-/

namespace A135624.P1544034814180211355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (2 ^ n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135626 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A135624.P1544034814180211355

/-! ## A135624.P13400977075566562469

`A135626(n+1)/(A135627(n+1)+1)`
-/

namespace A135624.P13400977075566562469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135626 (n + 1) : ℚ) / (A135627 (n + 1) + 1 : ℚ)

end

end A135624.P13400977075566562469

/-! ## A135624.P1081348462026299300

`A135626(n+1)/(A135629(n+1)-1)`
-/

namespace A135624.P1081348462026299300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135626 (n + 1) : ℚ) / (A135629 (n + 1) - 1 : ℚ)

end

end A135624.P1081348462026299300

/-! ## A135624.P1247902084112075066

`A135626(n+1)/(2*A133028(n+1))`
-/

namespace A135624.P1247902084112075066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135626 (n + 1) : ℚ) / (2 * A133028 (n + 1) : ℚ)

end

end A135624.P1247902084112075066

/-!
# A135625: Product of n-th Mersenne prime and n-th Mersenne prime written backwards.

The programs for A135625, there is no canonical definition to state claims against.
-/

/-! ## A135625.P4630607690850870758

`A000668(n+1)*A135623(n+1)`
-/

namespace A135625.P4630607690850870758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) * A135623 (n + 1)

end

end A135625.P4630607690850870758

/-! ## A135625.P9385247734537759071

`A000225(A000043(n+1))*A135623(n+1)`
-/

namespace A135625.P9385247734537759071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000043 (n + 1)).toNat * A135623 (n + 1)

end

end A135625.P9385247734537759071

/-! ## A135625.P14446680103784201613

`A000668(n+1)*A273092(A000043(n+1))`
-/

namespace A135625.P14446680103784201613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) * A273092 (A000043 (n + 1)).toNat

end

end A135625.P14446680103784201613

/-! ## A135625.P14971614599443969295

`A000668(n+1)*A273092(eq[1, A059959(n)])`
-/

namespace A135625.P14971614599443969295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) * A273092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135625.P14971614599443969295

/-! ## A135625.P11633970197787144608

`A000225(A000043(n+1))*A273092(A090748(n+1)+1)`
-/

namespace A135625.P11633970197787144608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000043 (n + 1)).toNat * A273092 (A090748 (n + 1) + 1).toNat

end

end A135625.P11633970197787144608

/-!
# A135626: Product of n-th perfect number and n-th perfect number written backwards.

The programs for A135626, there is no canonical definition to state claims against.
-/

/-! ## A135626.P11011299435108257867

`A000396(n+1)*A135624(n+1)`
-/

namespace A135626.P11011299435108257867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) * A135624 (n + 1)

end

end A135626.P11011299435108257867

/-! ## A135626.P7918518948948894384

`(A135627(n+1)+1)*A135624(n+1)`
-/

namespace A135626.P7918518948948894384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135627 (n + 1) + 1) * A135624 (n + 1)

end

end A135626.P7918518948948894384

/-!
# A135627: Perfect numbers minus 1.

The programs for A135627, there is no canonical definition to state claims against.
-/

/-! ## A135627.P2802623579654529181

`A000396(n+1)-1`
-/

namespace A135627.P2802623579654529181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) - 1

end

end A135627.P2802623579654529181

/-! ## A135627.P17006200283459041266

`A135629(n+1)-2`
-/

namespace A135627.P17006200283459041266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135629 (n + 1) - 2

end

end A135627.P17006200283459041266

/-! ## A135627.P9951204024403500685

`Δ[A185351(2^n)]-1`
-/

namespace A135627.P9951204024403500685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135627.P9951204024403500685

/-! ## A135627.P14870770754430647553

`2*A133067(n+1)+1`
-/

namespace A135627.P14870770754430647553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133067 (n + 1) + 1

end

end A135627.P14870770754430647553

/-! ## A135627.P17874023345970554780

`2*A133028(n+1)-1`
-/

namespace A135627.P17874023345970554780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133028 (n + 1) - 1

end

end A135627.P17874023345970554780

/-!
# A135628: Multiples of 28.

The programs for A135628, the canonical program `A135628.P7718528101982605374` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135628 has offset 0).

The definition of A135628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135628.P7718528101982605374

`28*n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135628

/-- `28*n` -/
def P7718528101982605374.Spec : Prop :=
  ∀ n, (P7718528101982605374.a n : ℤ) = A135628 n

theorem P7718528101982605374.correct : P7718528101982605374.Spec := by
  intro n
  simp only [A135628]

end A135628

/-!
# A135629: Perfect numbers plus 1.

The programs for A135629, there is no canonical definition to state claims against.
-/

/-! ## A135629.P12860392457120709014

`A000396(n+1)+1`
-/

namespace A135629.P12860392457120709014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) + 1

end

end A135629.P12860392457120709014

/-! ## A135629.P2231546648769918376

`A135627(n+1)+2`
-/

namespace A135629.P2231546648769918376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135627 (n + 1) + 2

end

end A135629.P2231546648769918376

/-! ## A135629.P13692019982330305007

`Δ[A185351(2^n)]+1`
-/

namespace A135629.P13692019982330305007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A135629.P13692019982330305007

/-! ## A135629.P12009670429358743603

`2*A133028(n+1)+1`
-/

namespace A135629.P12009670429358743603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133028 (n + 1) + 1

end

end A135629.P12009670429358743603

/-! ## A135629.P12342128880790653982

`A139256(n+1)/2+1`
-/

namespace A135629.P12342128880790653982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139256 (n + 1) : ℚ) / 2 + 1

end

end A135629.P12342128880790653982

/-!
# A135630: 2^(prime(n) - 2) - 1.

The programs for A135630, the canonical program `A135630.P7109827776379492340` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135630 has offset 1).

The definition of A135630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135630.P7109827776379492340

`A061286(n+1)/2-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135630

/-- `A061286(n+1)/2-1` -/
def P7109827776379492340.Spec : Prop :=
  ∀ n, P7109827776379492340.a n = (A135630 (n + 1) : ℚ)

end A135630

/-! ## A135630.P15398900779696252685

`2^A040976(n+1)-1`
-/

namespace A135630.P15398900779696252685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A040976 (n + 1) : ℤ) - 1

end

end A135630.P15398900779696252685

namespace A135630

/-- `2^A040976(n+1)-1` -/
def P15398900779696252685.Spec : Prop :=
  ∀ n, P15398900779696252685.a n = (A135630 (n + 1) : ℚ)

end A135630

/-! ## A135630.P18191845810386614428

`2^(A000040(n+1)-2)-1`
-/

namespace A135630.P18191845810386614428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000040 (n + 1) - 2 : ℤ) - 1

end

end A135630.P18191845810386614428

namespace A135630

/-- `2^(A000040(n+1)-2)-1` -/
def P18191845810386614428.Spec : Prop :=
  ∀ n, P18191845810386614428.a n = (A135630 (n + 1) : ℚ)

end A135630

/-! ## A135630.P340946309466070140

`Δ[A135482(n)]-1`
-/

namespace A135630.P340946309466070140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A135630.P340946309466070140

namespace A135630

/-- `Δ[A135482(n)]-1` -/
def P340946309466070140.Spec : Prop :=
  ∀ n, P340946309466070140.a n = A135630 (n + 1)

end A135630

/-! ## A135630.P2015436612328984765

`A135620(n+1)-1`
-/

namespace A135630.P2015436612328984765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135620 (n + 1) - 1

end

end A135630.P2015436612328984765

namespace A135630

/-- `A135620(n+1)-1` -/
def P2015436612328984765.Spec : Prop :=
  ∀ n, P2015436612328984765.a n = A135630 (n + 1)

end A135630

/-! ## A135630.P12311133323400863342

`(A098102(n+1)-1)/2`
-/

namespace A135630.P12311133323400863342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098102 (n + 1) - 1 : ℚ) / 2

end

end A135630.P12311133323400863342

namespace A135630

/-- `(A098102(n+1)-1)/2` -/
def P12311133323400863342.Spec : Prop :=
  ∀ n, P12311133323400863342.a n = (A135630 (n + 1) : ℚ)

end A135630

/-! ## A135630.P17561837402677954062

`(A241678(n+1)+1)/4`
-/

namespace A135630.P17561837402677954062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241678 (n + 1) + 1 : ℚ) / 4

end

end A135630.P17561837402677954062

namespace A135630

/-- `(A241678(n+1)+1)/4` -/
def P17561837402677954062.Spec : Prop :=
  ∀ n, P17561837402677954062.a n = (A135630 (n + 1) : ℚ)

end A135630

/-! ## A135630.P5066667617091290956

`A034785(n+1)/4-1`
-/

namespace A135630.P5066667617091290956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034785 (n + 1) : ℚ) / 4 - 1

end

end A135630.P5066667617091290956

namespace A135630

/-- `A034785(n+1)/4-1` -/
def P5066667617091290956.Spec : Prop :=
  ∀ n, P5066667617091290956.a n = (A135630 (n + 1) : ℚ)

end A135630

/-! ## A135630.P5791953333942202395

`(A241676(n+1)-1)/4`
-/

namespace A135630.P5791953333942202395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241676 (n + 1) - 1 : ℚ) / 4

end

end A135630.P5791953333942202395

namespace A135630

/-- `(A241676(n+1)-1)/4` -/
def P5791953333942202395.Spec : Prop :=
  ∀ n, P5791953333942202395.a n = (A135630 (n + 1) : ℚ)

end A135630

/-! ## A135630.P5154713671572938466

`(A278741(n+1)-3)/2`
-/

namespace A135630.P5154713671572938466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278741 (n + 1) - 3 : ℚ) / 2

end

end A135630.P5154713671572938466

namespace A135630

/-- `(A278741(n+1)-3)/2` -/
def P5154713671572938466.Spec : Prop :=
  ∀ n, P5154713671572938466.a n = (A135630 (n + 1) : ℚ)

end A135630

/-!
# A135631: Multiples of 31.

The programs for A135631, the canonical program `A135631.P8719546335045015581` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135631 has offset 0).

The definition of A135631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135631.P8719546335045015581

`31*n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135631

/-- `31*n` -/
def P8719546335045015581.Spec : Prop :=
  ∀ n, (P8719546335045015581.a n : ℤ) = A135631 n

theorem P8719546335045015581.correct : P8719546335045015581.Spec := by
  intro n
  simp only [A135631]

end A135631

/-!
# A135632: Nearest-neighbors of Mersenne primes.

The programs for A135632, there is no canonical definition to state claims against.
-/

/-! ## A135632.P17524500923421695641

`2*A135633(n+1)`
-/

namespace A135632.P17524500923421695641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135633 (n + 1)

end

end A135632.P17524500923421695641

/-! ## A135632.P2596937533757168310

`A000668(A008619(n))-A033999(n)`
-/

namespace A135632.P2596937533757168310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (A008619 n).toNat - A033999 n

end

end A135632.P2596937533757168310

/-! ## A135632.P15314225554412599083

`A033999(n+1)+A000668(A008619(n))`
-/

namespace A135632.P15314225554412599083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A000668 (A008619 n).toNat

end

end A135632.P15314225554412599083

/-! ## A135632.P12071520200203070614

`A135633(A028310(n+1))+A135633(n+1)`
-/

namespace A135632.P12071520200203070614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135633 (A028310 (n + 1)).toNat + A135633 (n + 1)

end

end A135632.P12071520200203070614

/-! ## A135632.P1961650882592657312

`A135633(A135579(n+1))+A135633(n+1)`
-/

namespace A135632.P1961650882592657312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135633 (A135579 (n + 1)).toNat + A135633 (n + 1)

end

end A135632.P1961650882592657312

/-!
# A135633: Nearest-neighbors of Mersenne primes, divided by 2.

The programs for A135633, there is no canonical definition to state claims against.
-/

/-! ## A135633.P227240703172218962

`A135632(n+1)/2`
-/

namespace A135633.P227240703172218962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135632 (n + 1) : ℚ) / 2

end

end A135633.P227240703172218962

/-! ## A135633.P4884763464826604872

`∪[A019279(n+1)-1, A019279(n+1)]`
-/

namespace A135633.P4884763464826604872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135633.P4884763464826604872

/-! ## A135633.P3483160485190389390

`∪[A019279(n+1), A054024(A019279(n+1))]`
-/

namespace A135633.P3483160485190389390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A019279 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135633.P3483160485190389390

/-! ## A135633.P2613116842224634275

`A004525(A135632(n+1))`
-/

namespace A135633.P2613116842224634275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A135632 (n + 1)).toNat

end

end A135633.P2613116842224634275

/-! ## A135633.P1772950187854735730

`A004526(A135632(n+1)+1)`
-/

namespace A135633.P1772950187854735730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A135632 (n + 1) + 1).toNat

end

end A135633.P1772950187854735730

/-!
# A135635: Triangle read by rows, constructed by the Pascal rule, with top entry 2, left edge = odd numbers, right edge = squares plus 1.

The programs for A135635, the canonical program `A135635.P9097632781227393920` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135635 has offset 1).

The definition of A135635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135635.P9040890999639576289

`A134636(A007401(n+1))-A029653(n)`
-/

namespace A135635.P9040890999639576289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 (A007401 (n + 1)).toNat - A029653 n

end

end A135635.P9040890999639576289

namespace A135635

/-- `A134636(A007401(n+1))-A029653(n)` -/
def P9040890999639576289.Spec : Prop :=
  ∀ n, P9040890999639576289.a n = A135635 (n + 1)

theorem P9040890999639576289.correct : P9040890999639576289.Spec := by
  intro n
  simp only [A135635, Nat.add_sub_cancel, A135635.P9040890999639576289.a, A135635.P9097632781227393920.a, A007401, A007401.P15765701893365026453.a, A028326, A028326.P16610217584664895500.a, A029653, A029653.P15740320911286042854.a, A097805, A097805.P1755176267250853107.a, A134636, A134636.P14217444213641303487.a, A007318, A007318.P302227728145965961.a, A028263, A028263.P3177418721069471964.a, A051632, A051632.P5030505018056849433.a, A014430, A014430.P11701806938926061192.a, A051631, A051631.P17531129287709021472.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A014410, A014410.P12420516935091573692.a, A028314, A028314.P1408064926550668039.a, A028327, A028327.P9835590816428302231.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135635

/-! ## A135635.P9097632781227393920

`A134636(A007401(n+1))+A097805(n)-A028326(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A135635

/-- `A134636(A007401(n+1))+A097805(n)-A028326(n)` -/
def P9097632781227393920.Spec : Prop :=
  ∀ n, P9097632781227393920.a n = A135635 (n + 1)

theorem P9097632781227393920.correct : P9097632781227393920.Spec := by
  intro n
  simp only [A135635, Nat.add_sub_cancel]

end A135635

/-! ## A135635.P14279469798775225813

`A134636(A007401(n+1))+A053207(n)-A134636(n)`
-/

namespace A135635.P14279469798775225813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 (A007401 (n + 1)).toNat + (A053207 n - A134636 n)

end

end A135635.P14279469798775225813

namespace A135635

/-- `A134636(A007401(n+1))+A053207(n)-A134636(n)` -/
def P14279469798775225813.Spec : Prop :=
  ∀ n, P14279469798775225813.a n = A135635 (n + 1)

end A135635

/-! ## A135635.P16828586266442799033

`A134636(A007401(n+1))-(A097805(n+1)+A007318(n))`
-/

namespace A135635.P16828586266442799033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 (A007401 (n + 1)).toNat - (A097805 (n + 1) + A007318 n)

end

end A135635.P16828586266442799033

namespace A135635

/-- `A134636(A007401(n+1))-(A097805(n+1)+A007318(n))` -/
def P16828586266442799033.Spec : Prop :=
  ∀ n, P16828586266442799033.a n = A135635 (n + 1)

end A135635

/-! ## A135635.P4212660339019471279

`A134636(A007401(n+1))-(A093560(n)-A097805(n+1))`
-/

namespace A135635.P4212660339019471279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 (A007401 (n + 1)).toNat - (A093560 n - A097805 (n + 1))

end

end A135635.P4212660339019471279

namespace A135635

/-- `A134636(A007401(n+1))-(A093560(n)-A097805(n+1))` -/
def P4212660339019471279.Spec : Prop :=
  ∀ n, P4212660339019471279.a n = A135635 (n + 1)

theorem P4212660339019471279.correct : P4212660339019471279.Spec := by
  intro n
  simp only [A135635, Nat.add_sub_cancel, A135635.P4212660339019471279.a, A135635.P9097632781227393920.a, A007401, A007401.P15765701893365026453.a, A028326, A028326.P16610217584664895500.a, A093560, A093560.P8767465861786318513.a, A097805, A097805.P1755176267250853107.a, A134636, A134636.P14217444213641303487.a, A007318, A007318.P302227728145965961.a, A028263, A028263.P3177418721069471964.a, A051632, A051632.P5030505018056849433.a, A112467, A112467.P7324981599467201497.f1, A112467.P7324981599467201497.a, A014430, A014430.P11701806938926061192.a, A051631, A051631.P17531129287709021472.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A014410, A014410.P12420516935091573692.a, A028314, A028314.P1408064926550668039.a, A028327, A028327.P9835590816428302231.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135635

/-! ## A135635.P7520091240218076577

`A134636(A007401(n+1))-(A093560(n)+A007318(n))/2`
-/

namespace A135635.P7520091240218076577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134636 (A007401 (n + 1)).toNat : ℚ) - (A093560 n + A007318 n : ℚ) / 2

end

end A135635.P7520091240218076577

namespace A135635

/-- `A134636(A007401(n+1))-(A093560(n)+A007318(n))/2` -/
def P7520091240218076577.Spec : Prop :=
  ∀ n, P7520091240218076577.a n = (A135635 (n + 1) : ℚ)

end A135635

/-!
# A135639: a(n) = 839*n.

The programs for A135639, the canonical program `A135639.P8096291751753090787` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135639 has offset 0).

The definition of A135639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `839*n` (program `A135639.P8096291751753090787`, by `A135639.P8096291751753090787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135639.P8096291751753090787

`839*n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135639

/-- `839*n` -/
def P8096291751753090787.Spec : Prop :=
  ∀ n, (P8096291751753090787.a n : ℤ) = A135639 n

theorem P8096291751753090787.correct : P8096291751753090787.Spec := by
  intro n
  simp only [A135639]

end A135639

/-!
# A135640: Powers of 839: a(n) = 839^n.

The programs for A135640, the canonical program `A135640.P5131565759111695233` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135640 has offset 0).

The definition of A135640 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `839^n` (program `A135640.P5131565759111695233`, by `A135640.P5131565759111695233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135640.P5131565759111695233

`839^n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135640

/-- `839^n` -/
def P5131565759111695233.Spec : Prop :=
  ∀ n, (P5131565759111695233.a n : ℤ) = A135640 n

theorem P5131565759111695233.correct : P5131565759111695233.Spec := by
  intro n
  simp only [A135640]

end A135640

/-!
# A135641: Convex numbers.

The programs for A135641, there is no canonical definition to state claims against.
-/

/-! ## A135641.P12685029658148640343

`record[A285717(n+1)+99]`
-/

namespace A135641.P12685029658148640343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285717 (n + 1) + 99

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135641.P12685029658148640343

/-! ## A135641.P11569873058431417143

`A134999(A020753(n+1))`
-/

namespace A135641.P11569873058431417143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134999 (A020753 (n + 1)).toNat

end

end A135641.P11569873058431417143

/-! ## A135641.P17622892879982124329

`A171120(A110429(n+1))`
-/

namespace A135641.P17622892879982124329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171120 (A110429 (n + 1 + 100)).toNat

end

end A135641.P17622892879982124329

/-! ## A135641.P7753808270486240468

`A171120(A020753(n+1)+10)`
-/

namespace A135641.P7753808270486240468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171120 (A020753 (n + 1) + 10).toNat

end

end A135641.P7753808270486240468

/-! ## A135641.P11820635078344910693

`∩[A032898(n+1), A267759(n+1)]`
-/

namespace A135641.P11820635078344910693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135641.P11820635078344910693

/-!
# A135643: Straight-line numbers > 99.

The programs for A135643, there is no canonical definition to state claims against.
-/

/-! ## A135643.P6425434092523864531

`A096457(A034840(n))`
-/

namespace A135643.P6425434092523864531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096457 (A034840 n).toNat

end

end A135643.P6425434092523864531

/-! ## A135643.P2977180911790928601

`A233583(A034840(n)+1)`
-/

namespace A135643.P2977180911790928601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A034840 n + 1).toNat

end

end A135643.P2977180911790928601

/-! ## A135643.P1166335316190639825

`∩[A034840(n), A248182(n)]`
-/

namespace A135643.P1166335316190639825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248182 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135643.P1166335316190639825

/-! ## A135643.P9938993111172320970

`∩[A034840(n), A280823(n+1)]`
-/

namespace A135643.P9938993111172320970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135643.P9938993111172320970

/-! ## A135643.P16155740293814202433

`∩[A034840(n), A324455(n+1)]`
-/

namespace A135643.P16155740293814202433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135643.P16155740293814202433

/-!
# A135646: a(m, n) is the number of coprime pairs (i, j) with 1 <= i <= m, 1 <= j <= n; table of a(m, n) read by antidiagonals.

The programs for A135646, there is no canonical definition to state claims against.
-/

/-! ## A135646.P15753690998709486314

`A295782(n+1)/4-1`
-/

namespace A135646.P15753690998709486314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295782 (n + 1) : ℚ) / 4 - 1

end

end A135646.P15753690998709486314

/-! ## A135646.P7444322988937596219

`A059169(A295782(n+1))`
-/

namespace A135646.P7444322988937596219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A295782 (n + 1)).toNat

end

end A135646.P7444322988937596219

/-! ## A135646.P16305910148081099614

`A002265(A295782(n+1)-1)`
-/

namespace A135646.P16305910148081099614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A295782 (n + 1) - 1).toNat

end

end A135646.P16305910148081099614

/-! ## A135646.P1826581544176213738

`A049687(lt[1, A049687(n)])-2`
-/

namespace A135646.P1826581544176213738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 2

end

end A135646.P1826581544176213738

/-! ## A135646.P8254528683555605552

`A110655(A295782(n+1)-1)-1`
-/

namespace A135646.P8254528683555605552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A295782 (n + 1) - 1).toNat - 1

end

end A135646.P8254528683555605552

/-!
# A135650: 

The programs for A135650, there is no canonical definition to state claims against.
-/

/-! ## A135650.P8757184638711173610

`A117293(n+1)*A135651(n+1)`
-/

namespace A135650.P8757184638711173610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117293 (n + 1) * A135651 (n + 1)

end

end A135650.P8757184638711173610

/-!
# A135651: Even superperfect numbers written in base 2.

The programs for A135651, there is no canonical definition to state claims against.
-/

/-! ## A135651.P7459280215417963536

`10*A135612(n+1)`
-/

namespace A135651.P7459280215417963536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A135612 (n + 1)

end

end A135651.P7459280215417963536

/-! ## A135651.P4882518494972477250

`10^A090748(n+1)`
-/

namespace A135651.P4882518494972477250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A090748 (n + 1) : ℤ)

end

end A135651.P4882518494972477250

/-! ## A135651.P8923018791772690962

`10^(A153798(n+1)+1)`
-/

namespace A135651.P8923018791772690962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A153798 (n + 1) + 1 : ℤ)

end

end A135651.P8923018791772690962

/-! ## A135651.P10904244653511083706

`10^A000010(A000043(n+1))`
-/

namespace A135651.P10904244653511083706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A000010 (A000043 (n + 1)).toNat : ℤ)

end

end A135651.P10904244653511083706

/-! ## A135651.P8571005747036029614

`10^A000010(eq[1, A126717(n)])`
-/

namespace A135651.P8571005747036029614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℤ)

end

end A135651.P8571005747036029614

/-!
# A135652: Divisors of 28 (the 2nd perfect number), written in base 2.

The programs for A135652, there is no canonical definition to state claims against.
-/

/-! ## A135652.P16786116675395982065

`A115846(floor((floor(n/5)+2)²/4)+n*(n+1)/2)`
-/

namespace A135652.P16786116675395982065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 (SequenceMachineLib.roundAway ((⌊((⌊(n : ℚ) / 5⌋ + 2) ^ 2 : ℚ) / 4⌋ : ℚ) + (n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A135652.P16786116675395982065

/-!
# A135653: Divisors of 496 (the 3rd perfect number), written in base 2.

The programs for A135653, there is no canonical definition to state claims against.
-/

/-! ## A135653.P14037762002417479181

`A007088(Δ[2^n-∏[∑[char[6*n]]]])`
-/

namespace A135653.P14037762002417479181
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n).toNat

end

end A135653.P14037762002417479181

/-! ## A135653.P11945649895924607773

`A185544(2*ceil(8^n/sqrt(∑[16^n])))`
-/

namespace A135653.P11945649895924607773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * ⌈(8 ^ n : ℝ) / Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉).toNat

end

end A135653.P11945649895924607773

/-! ## A135653.P15883366821233217648

`floor(10*a(n-1)/A272334(n+1)²)` with `a(0)=1`
-/

namespace A135653.P15883366821233217648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(10 * a (n - 1) : ℚ) / (A272334 (n + 1) ^ 2 : ℚ)⌋

end

end A135653.P15883366821233217648

/-! ## A135653.P1952770273633088744

`A309761(A025696(n))`
-/

namespace A135653.P1952770273633088744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A025696 n).toNat

end

end A135653.P1952770273633088744

/-! ## A135653.P8953480473681780657

`A309761(A025719(n))`
-/

namespace A135653.P8953480473681780657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A025719 n).toNat

end

end A135653.P8953480473681780657

/-!
# A135654: Divisors of 8128 (the 4th perfect number), written in base 2.

The programs for A135654, there is no canonical definition to state claims against.
-/

/-! ## A135654.P2169871981341063009

`A007088(ceil(2^(n-1/88)))`
-/

namespace A135654.P2169871981341063009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌈(2 : ℝ) ^ ((n : ℚ) - (1 : ℚ) / 88 : ℝ)⌉.toNat

end

end A135654.P2169871981341063009

/-! ## A135654.P3930420766446191476

`A309761(A033439(n+1)+1)`
-/

namespace A135654.P3930420766446191476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A033439 (n + 1) + 1).toNat

end

end A135654.P3930420766446191476

/-! ## A135654.P2634854501014594138

`A309761(A194082(n+1)+1)`
-/

namespace A135654.P2634854501014594138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A194082 (n + 1) + 1).toNat

end

end A135654.P2634854501014594138

/-! ## A135654.P666515865155436605

`A204095(A133024(n+1))/8`
-/

namespace A135654.P666515865155436605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 (A133024 (n + 1)).toNat : ℚ) / 8

end

end A135654.P666515865155436605

/-! ## A135654.P9488815720464807285

`A309761(∑[∑[A015716(n+1)]])`
-/

namespace A135654.P9488815720464807285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135654.P9488815720464807285

/-!
# A135655: Divisors of 33550336 (the 5th perfect number), written in base 2.

The programs for A135655, there is no canonical definition to state claims against.
-/

/-! ## A135655.P4695828187476730346

`A309761(A025716(n))`
-/

namespace A135655.P4695828187476730346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A025716 n).toNat

end

end A135655.P4695828187476730346

/-! ## A135655.P13120103977998288652

`A007088(A133025(n+1))`
-/

namespace A135655.P13120103977998288652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A133025 (n + 1)).toNat

end

end A135655.P13120103977998288652

/-! ## A135655.P16804681772295355132

`A007088(A000079(n)-A332640(n+1))`
-/

namespace A135655.P16804681772295355132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000079 n - A332640 (n + 1)).toNat

end

end A135655.P16804681772295355132

/-! ## A135655.P8983290368390876907

`A139707(A219615(n))`
-/

namespace A135655.P8983290368390876907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139707 (A219615 n).toNat

end

end A135655.P8983290368390876907

/-! ## A135655.P3091663440980155937

`A139709(Δ[Δ[A220051(n)]])`
-/

namespace A135655.P3091663440980155937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (f1 (n + 1) - f1 n).toNat

end

end A135655.P3091663440980155937

/-!
# A135656: 

The programs for A135656, there is no canonical definition to state claims against.
-/

/-! ## A135656.P2537139731794643366

`A117293(n+1)*A135612(n+1)`
-/

namespace A135656.P2537139731794643366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117293 (n + 1) * A135612 (n + 1)

end

end A135656.P2537139731794643366

/-! ## A135656.P4881777066828063248

`A117293(n+1)*A135651(n+1)/10`
-/

namespace A135656.P4881777066828063248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117293 (n + 1) * A135651 (n + 1) : ℚ) / 10

end

end A135656.P4881777066828063248

/-! ## A135656.P8530811430517321713

`lcm(10^A153798(n+1), A117293(n+1))`
-/

namespace A135656.P8530811430517321713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A153798 (n + 1) : ℤ))) (A117293 (n + 1))

end

end A135656.P8530811430517321713

/-!
# A135657: Nonprimes of the form 24n+7.

The programs for A135657, the canonical program `A135657.P17440851590307991758` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135657 has offset 1).

The definition of A135657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135657.P17440851590307991758

`A135659(comp[A139483(n+1)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A135657

/-- `A135659(comp[A139483(n+1)])` -/
def P17440851590307991758.Spec : Prop :=
  ∀ n, P17440851590307991758.a n = A135657 (n + 1)

theorem P17440851590307991758.correct : P17440851590307991758.Spec := by
  intro n
  simp only [A135657, Nat.add_sub_cancel]

end A135657

/-! ## A135657.P17467672090206518071

`filter[A135659(n), A373977(#)]`
-/

namespace A135657.P17467672090206518071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A135657.P17467672090206518071

namespace A135657

/-- `filter[A135659(n), A373977(#)]` -/
def P17467672090206518071.Spec : Prop :=
  ∀ n, P17467672090206518071.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P16289924354947269992

`filter[A135659(n), A373979(#)]`
-/

namespace A135657.P16289924354947269992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A135657.P16289924354947269992

namespace A135657

/-- `filter[A135659(n), A373979(#)]` -/
def P16289924354947269992.Spec : Prop :=
  ∀ n, P16289924354947269992.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P11768977888401256572

`filter[A140716(n+1), A373979(#)]`
-/

namespace A135657.P11768977888401256572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A135657.P11768977888401256572

namespace A135657

/-- `filter[A140716(n+1), A373979(#)]` -/
def P11768977888401256572.Spec : Prop :=
  ∀ n, P11768977888401256572.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P2538202471457264031

`filter[A017605(2*n), A373977(#)]`
-/

namespace A135657.P2538202471457264031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A135657.P2538202471457264031

namespace A135657

/-- `filter[A017605(2*n), A373977(#)]` -/
def P2538202471457264031.Spec : Prop :=
  ∀ n, P2538202471457264031.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P14662466169474135136

`filter[A017605(2*n), A373979(#)]`
-/

namespace A135657.P14662466169474135136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A135657.P14662466169474135136

namespace A135657

/-- `filter[A017605(2*n), A373979(#)]` -/
def P14662466169474135136.Spec : Prop :=
  ∀ n, P14662466169474135136.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P14774297709169060196

`∩[A091300(n+1), A135659(n)]`
-/

namespace A135657.P14774297709169060196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135657.P14774297709169060196

namespace A135657

/-- `∩[A091300(n+1), A135659(n)]` -/
def P14774297709169060196.Spec : Prop :=
  ∀ n, (P14774297709169060196.a n : ℤ) = A135657 (n + 1)

end A135657

/-! ## A135657.P6305551785261667744

`∩[8*n+A047521(n+2), A091300(n+2)]`
-/

namespace A135657.P6305551785261667744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) + A047521 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135657.P6305551785261667744

namespace A135657

/-- `∩[8*n+A047521(n+2), A091300(n+2)]` -/
def P6305551785261667744.Spec : Prop :=
  ∀ n, (P6305551785261667744.a n : ℤ) = A135657 (n + 1)

end A135657

/-! ## A135657.P12566959809746472634

`filter[A004771(n), A373977(#)]`
-/

namespace A135657.P12566959809746472634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A135657.P12566959809746472634

namespace A135657

/-- `filter[A004771(n), A373977(#)]` -/
def P12566959809746472634.Spec : Prop :=
  ∀ n, P12566959809746472634.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P6249327829768007845

`filter[A133655(n+1), A373977(#)]`
-/

namespace A135657.P6249327829768007845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A135657.P6249327829768007845

namespace A135657

/-- `filter[A133655(n+1), A373977(#)]` -/
def P6249327829768007845.Spec : Prop :=
  ∀ n, P6249327829768007845.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P15911186545272956857

`∩[A091300(n+1), A004771(n)]`
-/

namespace A135657.P15911186545272956857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135657.P15911186545272956857

namespace A135657

/-- `∩[A091300(n+1), A004771(n)]` -/
def P15911186545272956857.Spec : Prop :=
  ∀ n, (P15911186545272956857.a n : ℤ) = A135657 (n + 1)

end A135657

/-! ## A135657.P10990524959870596534

`∩[A091300(n+1), A017245(n)-n]`
-/

namespace A135657.P10990524959870596534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135657.P10990524959870596534

namespace A135657

/-- `∩[A091300(n+1), A017245(n)-n]` -/
def P10990524959870596534.Spec : Prop :=
  ∀ n, (P10990524959870596534.a n : ℤ) = A135657 (n + 1)

end A135657

/-! ## A135657.P1875185134799694110

`filter[A135659(n), A005171(#)]`
-/

namespace A135657.P1875185134799694110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A135657.P1875185134799694110

namespace A135657

/-- `filter[A135659(n), A005171(#)]` -/
def P1875185134799694110.Spec : Prop :=
  ∀ n, P1875185134799694110.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P11095441104299745377

`filter[A135659(n), A066247(#)]`
-/

namespace A135657.P11095441104299745377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A135657.P11095441104299745377

namespace A135657

/-- `filter[A135659(n), A066247(#)]` -/
def P11095441104299745377.Spec : Prop :=
  ∀ n, P11095441104299745377.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P8708826247172228858

`filter[A135659(n), A202238(#)]`
-/

namespace A135657.P8708826247172228858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A135657.P8708826247172228858

namespace A135657

/-- `filter[A135659(n), A202238(#)]` -/
def P8708826247172228858.Spec : Prop :=
  ∀ n, P8708826247172228858.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P15256282739841651400

`filter[A135659(n), A292438(#)]`
-/

namespace A135657.P15256282739841651400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A135657.P15256282739841651400

namespace A135657

/-- `filter[A135659(n), A292438(#)]` -/
def P15256282739841651400.Spec : Prop :=
  ∀ n, P15256282739841651400.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P2263638887128222639

`filter[A135659(n), A323162(#)]`
-/

namespace A135657.P2263638887128222639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A135657.P2263638887128222639

namespace A135657

/-- `filter[A135659(n), A323162(#)]` -/
def P2263638887128222639.Spec : Prop :=
  ∀ n, P2263638887128222639.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P4315650850269195552

`filter[A017605(2*n), A005171(#)]`
-/

namespace A135657.P4315650850269195552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A135657.P4315650850269195552

namespace A135657

/-- `filter[A017605(2*n), A005171(#)]` -/
def P4315650850269195552.Spec : Prop :=
  ∀ n, P4315650850269195552.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P11096164929807679286

`filter[A017605(2*n), A066247(#)]`
-/

namespace A135657.P11096164929807679286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A135657.P11096164929807679286

namespace A135657

/-- `filter[A017605(2*n), A066247(#)]` -/
def P11096164929807679286.Spec : Prop :=
  ∀ n, P11096164929807679286.a n = A135657 (n + 1)

end A135657

/-! ## A135657.P17173727163501733401

`filter[A017605(2*n), A202238(#)]`
-/

namespace A135657.P17173727163501733401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A135657.P17173727163501733401

namespace A135657

/-- `filter[A017605(2*n), A202238(#)]` -/
def P17173727163501733401.Spec : Prop :=
  ∀ n, P17173727163501733401.a n = A135657 (n + 1)

end A135657

/-!
# A135659: a(n) = 24*n + 7.

The programs for A135659, the canonical program `A135659.P7688879671155450693` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135659 has offset 0).

The definition of A135659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n+7` (program `A135659.P7688879671155450693`, by `A135659.P7688879671155450693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135659.P7688879671155450693

`24*n+7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135659

/-- `24*n+7` -/
def P7688879671155450693.Spec : Prop :=
  ∀ n, (P7688879671155450693.a n : ℤ) = A135659 n

theorem P7688879671155450693.correct : P7688879671155450693.Spec := by
  intro n
  simp only [A135659]

end A135659

/-!
# A135660: a(n) = ceiling(sqrt(n) - n^(1/3)).

The programs for A135660, the canonical program `A135660.P13095199892122428710` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135660 has offset 1).

The definition of A135660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n+1)-(n+1)^(1/3))` (program `A135660.P13095199892122428710`, by `A135660.P13095199892122428710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135660.P13095199892122428710

`ceil(sqrt(n+1)-(n+1)^(1/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135660

/-- `ceil(sqrt(n+1)-(n+1)^(1/3))` -/
def P13095199892122428710.Spec : Prop :=
  ∀ n, P13095199892122428710.a n = A135660 (n + 1)

theorem P13095199892122428710.correct : P13095199892122428710.Spec := by
  intro n
  simp only [A135660, Nat.add_sub_cancel]

end A135660

/-! ## A135660.P4938210788476918676

`A135671(A135661(n+1)+∑[char[n^3]])`
-/

namespace A135660.P4938210788476918676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135671 (A135661 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A135660.P4938210788476918676

namespace A135660

/-- `A135671(A135661(n+1)+∑[char[n^3]])` -/
def P4938210788476918676.Spec : Prop :=
  ∀ n, P4938210788476918676.a n = A135660 (n + 1)

end A135660

/-! ## A135660.P4109581318833323629

`A132913(n+1)+A135661(n+1)-A132914(n+1)`
-/

namespace A135660.P4109581318833323629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132913 (n + 1) + (A135661 (n + 1) - A132914 (n + 1))

end

end A135660.P4109581318833323629

namespace A135660

/-- `A132913(n+1)+A135661(n+1)-A132914(n+1)` -/
def P4109581318833323629.Spec : Prop :=
  ∀ n, P4109581318833323629.a n = A135660 (n + 1)

end A135660

/-! ## A135660.P9087786403960653339

`A135661(n+1)+A043545(A132336(n+1))`
-/

namespace A135660.P9087786403960653339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (n + 1) + A043545 (A132336 (n + 1)).toNat

end

end A135660.P9087786403960653339

namespace A135660

/-- `A135661(n+1)+A043545(A132336(n+1))` -/
def P9087786403960653339.Spec : Prop :=
  ∀ n, P9087786403960653339.a n = A135660 (n + 1)

end A135660

/-! ## A135660.P3689069076881480955

`A135661(n+1)+A043545(∑[(n+1)%A018871(n+1)])`
-/

namespace A135660.P3689069076881480955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A018871 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (n + 1) + A043545 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135660.P3689069076881480955

namespace A135660

/-- `A135661(n+1)+A043545(∑[(n+1)%A018871(n+1)])` -/
def P3689069076881480955.Spec : Prop :=
  ∀ n, P3689069076881480955.a n = A135660 (n + 1)

end A135660

/-! ## A135660.P16674818568512752250

`A259361(A303590(n+1)-A004273(n))`
-/

namespace A135660.P16674818568512752250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A303590 (n + 1) - A004273 n).toNat

end

end A135660.P16674818568512752250

namespace A135660

/-- `A259361(A303590(n+1)-A004273(n))` -/
def P16674818568512752250.Spec : Prop :=
  ∀ n, P16674818568512752250.a n = A135660 (n + 1)

end A135660

/-! ## A135660.P15884991687850901410

`A003056((2*(n+1))%A329999(n+1))`
-/

namespace A135660.P15884991687850901410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (2 * (n + 1) : ℤ) (A329999 (n + 1))).toNat

end

end A135660.P15884991687850901410

namespace A135660

/-- `A003056((2*(n+1))%A329999(n+1))` -/
def P15884991687850901410.Spec : Prop :=
  ∀ n, P15884991687850901410.a n = A135660 (n + 1)

end A135660

/-! ## A135660.P13563203646535568648

`A004218(A035371(n+1))`
-/

namespace A135660.P13563203646535568648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A035371 (n + 1)).toNat

end

end A135660.P13563203646535568648

namespace A135660

/-- `A004218(A035371(n+1))` -/
def P13563203646535568648.Spec : Prop :=
  ∀ n, P13563203646535568648.a n = A135660 (n + 1)

end A135660

/-! ## A135660.P3130530181271783253

`A004218(A238789(n+1))`
-/

namespace A135660.P3130530181271783253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A238789 (n + 1)).toNat

end

end A135660.P3130530181271783253

namespace A135660

/-- `A004218(A238789(n+1))` -/
def P3130530181271783253.Spec : Prop :=
  ∀ n, P3130530181271783253.a n = A135660 (n + 1)

end A135660

/-! ## A135660.P17501446135303931225

`A178489(A173691(n+1))`
-/

namespace A135660.P17501446135303931225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A173691 (n + 1)).toNat

end

end A135660.P17501446135303931225

namespace A135660

/-- `A178489(A173691(n+1))` -/
def P17501446135303931225.Spec : Prop :=
  ∀ n, P17501446135303931225.a n = A135660 (n + 1)

end A135660

/-!
# A135661: a(n) = floor(sqrt(n) - n^(1/3)).

The programs for A135661, the canonical program `A135661.P1420270082629918201` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135661 has offset 1).

The definition of A135661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n+1)-(n+1)^(1/3))` (program `A135661.P1420270082629918201`, by `A135661.P1420270082629918201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135661.P1420270082629918201

`floor(sqrt(n+1)-(n+1)^(1/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135661

/-- `floor(sqrt(n+1)-(n+1)^(1/3))` -/
def P1420270082629918201.Spec : Prop :=
  ∀ n, P1420270082629918201.a n = A135661 (n + 1)

theorem P1420270082629918201.correct : P1420270082629918201.Spec := by
  intro n
  simp only [A135661, Nat.add_sub_cancel]

end A135661

/-! ## A135661.P4850774986879142085

`A135672(A135660(n+1)+A048766(n+1))`
-/

namespace A135661.P4850774986879142085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (A135660 (n + 1) + A048766 (n + 1)).toNat

end

end A135661.P4850774986879142085

namespace A135661

/-- `A135672(A135660(n+1)+A048766(n+1))` -/
def P4850774986879142085.Spec : Prop :=
  ∀ n, P4850774986879142085.a n = A135661 (n + 1)

end A135661

/-! ## A135661.P12588423931076707335

`A132914(n+1)+A135660(n+1)-A132913(n+1)`
-/

namespace A135661.P12588423931076707335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132914 (n + 1) + (A135660 (n + 1) - A132913 (n + 1))

end

end A135661.P12588423931076707335

namespace A135661

/-- `A132914(n+1)+A135660(n+1)-A132913(n+1)` -/
def P12588423931076707335.Spec : Prop :=
  ∀ n, P12588423931076707335.a n = A135661 (n + 1)

end A135661

/-! ## A135661.P14917227831410243797

`∑[A008966(A055491(2*(n+9)))]`
-/

namespace A135661.P14917227831410243797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A055491 (2 * (n + 9))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135661.P14917227831410243797

namespace A135661

/-- `∑[A008966(A055491(2*(n+9)))]` -/
def P14917227831410243797.Spec : Prop :=
  ∀ n, P14917227831410243797.a n = A135661 (n + 1)

end A135661

/-! ## A135661.P4923084999019307538

`∑[floor(acot(A007968(2*(n+9))))]`
-/

namespace A135661.P4923084999019307538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A007968 (2 * (n + 9)) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135661.P4923084999019307538

namespace A135661

/-- `∑[floor(acot(A007968(2*(n+9))))]` -/
def P4923084999019307538.Spec : Prop :=
  ∀ n, P4923084999019307538.a n = A135661 (n + 1)

end A135661

/-! ## A135661.P3021639377789713082

`A095861(A095861(∑[n]+1)+a(n-1)²+1)` with `a(0)=0`
-/

namespace A135661.P3021639377789713082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A095861 (A095861 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + a (n - 1) ^ 2 + 1).toNat

end

end A135661.P3021639377789713082

namespace A135661

/-- `A095861(A095861(∑[n]+1)+a(n-1)²+1)` -/
def P3021639377789713082.Spec : Prop :=
  ∀ n, P3021639377789713082.a n = A135661 (n + 1)

end A135661

/-! ## A135661.P13645043731536835822

`A135660(n+1)-A043545(A132336(n+1))`
-/

namespace A135661.P13645043731536835822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (n + 1) - A043545 (A132336 (n + 1)).toNat

end

end A135661.P13645043731536835822

namespace A135661

/-- `A135660(n+1)-A043545(A132336(n+1))` -/
def P13645043731536835822.Spec : Prop :=
  ∀ n, P13645043731536835822.a n = A135661 (n + 1)

end A135661

/-! ## A135661.P17789056017670227125

`∑[A010054(A046691(A007913(n+9)))]`
-/

namespace A135661.P17789056017670227125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A046691 (A007913 (n + 9)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135661.P17789056017670227125

namespace A135661

/-- `∑[A010054(A046691(A007913(n+9)))]` -/
def P17789056017670227125.Spec : Prop :=
  ∀ n, P17789056017670227125.a n = A135661 (n + 1)

end A135661

/-! ## A135661.P11848119808002931960

`∑[val(A201144(n+8), A051173(n+9))]`
-/

namespace A135661.P11848119808002931960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A201144 (n + 8)).toNat (A051173 (n + 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135661.P11848119808002931960

namespace A135661

/-- `∑[val(A201144(n+8), A051173(n+9))]` -/
def P11848119808002931960.Spec : Prop :=
  ∀ n, (P11848119808002931960.a n : ℤ) = A135661 (n + 1)

end A135661

/-! ## A135661.P7218681964976038873

`A163858(A143091(n))`
-/

namespace A135661.P7218681964976038873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163858 (A143091 n).toNat

end

end A135661.P7218681964976038873

namespace A135661

/-- `A163858(A143091(n))` -/
def P7218681964976038873.Spec : Prop :=
  ∀ n, P7218681964976038873.a n = A135661 (n + 1)

end A135661

/-!
# A135662: a(n) = ceiling(sqrt(n) - n^(1/4)).

The programs for A135662, the canonical program `A135662.P8971042947389982472` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135662 has offset 1).

The definition of A135662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n+1)-(n+1)^(1/4))` (program `A135662.P8971042947389982472`, by `A135662.P8971042947389982472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135662.P8971042947389982472

`ceil(sqrt(n+1)-(n+1)^(1/4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135662

/-- `ceil(sqrt(n+1)-(n+1)^(1/4))` -/
def P8971042947389982472.Spec : Prop :=
  ∀ n, P8971042947389982472.a n = A135662 (n + 1)

theorem P8971042947389982472.correct : P8971042947389982472.Spec := by
  intro n
  simp only [A135662, Nat.add_sub_cancel]

end A135662

/-! ## A135662.P18229303237370504703

`A135660(A184419(n+1))`
-/

namespace A135662.P18229303237370504703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A184419 (n + 1)).toNat

end

end A135662.P18229303237370504703

namespace A135662

/-- `A135660(A184419(n+1))` -/
def P18229303237370504703.Spec : Prop :=
  ∀ n, P18229303237370504703.a n = A135662 (n + 1)

end A135662

/-! ## A135662.P15825828721110239151

`A135661(A184419(n+1))+A057427(n)`
-/

namespace A135662.P15825828721110239151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A184419 (n + 1)).toNat + A057427 n

end

end A135662.P15825828721110239151

namespace A135662

/-- `A135661(A184419(n+1))+A057427(n)` -/
def P15825828721110239151.Spec : Prop :=
  ∀ n, P15825828721110239151.a n = A135662 (n + 1)

end A135662

/-! ## A135662.P12658743306905129230

`A178334(n)+A135661(A184419(n+1))`
-/

namespace A135662.P12658743306905129230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A135661 (A184419 (n + 1)).toNat

end

end A135662.P12658743306905129230

namespace A135662

/-- `A178334(n)+A135661(A184419(n+1))` -/
def P12658743306905129230.Spec : Prop :=
  ∀ n, P12658743306905129230.a n = A135662 (n + 1)

end A135662

/-! ## A135662.P9411590568912728880

`A135661(A184419(n+1))-A057428(n)`
-/

namespace A135662.P9411590568912728880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A184419 (n + 1)).toNat - A057428 n

end

end A135662.P9411590568912728880

namespace A135662

/-- `A135661(A184419(n+1))-A057428(n)` -/
def P9411590568912728880.Spec : Prop :=
  ∀ n, P9411590568912728880.a n = A135662 (n + 1)

end A135662

/-! ## A135662.P1148987482389714003

`A135661(A184419(n+1))+1-A000007(n)`
-/

namespace A135662.P1148987482389714003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A184419 (n + 1)).toNat + (1 - A000007 n)

end

end A135662.P1148987482389714003

namespace A135662

/-- `A135661(A184419(n+1))+1-A000007(n)` -/
def P1148987482389714003.Spec : Prop :=
  ∀ n, P1148987482389714003.a n = A135662 (n + 1)

end A135662

/-! ## A135662.P5382510535648377814

`(A135661(A184419(n+1))+1)%A000070(n)`
-/

namespace A135662.P5382510535648377814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135661 (A184419 (n + 1)).toNat + 1) (A000070 n)

end

end A135662.P5382510535648377814

namespace A135662

/-- `(A135661(A184419(n+1))+1)%A000070(n)` -/
def P5382510535648377814.Spec : Prop :=
  ∀ n, P5382510535648377814.a n = A135662 (n + 1)

end A135662

/-! ## A135662.P2107214231830485287

`A135661(A184419(n+1))+A000040(n+1)%2`
-/

namespace A135662.P2107214231830485287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A184419 (n + 1)).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A135662.P2107214231830485287

namespace A135662

/-- `A135661(A184419(n+1))+A000040(n+1)%2` -/
def P2107214231830485287.Spec : Prop :=
  ∀ n, P2107214231830485287.a n = A135662 (n + 1)

end A135662

/-! ## A135662.P6806874017266065239

`A135661(A184419(n+1))+A001748(n+1)%2`
-/

namespace A135662.P6806874017266065239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A184419 (n + 1)).toNat + Int.tmod (A001748 (n + 1)) 2

end

end A135662.P6806874017266065239

namespace A135662

/-- `A135661(A184419(n+1))+A001748(n+1)%2` -/
def P6806874017266065239.Spec : Prop :=
  ∀ n, P6806874017266065239.a n = A135662 (n + 1)

end A135662

/-! ## A135662.P8357559734965747823

`A135661(A184419(n+1))+A001221(A001316(n))`
-/

namespace A135662.P8357559734965747823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A184419 (n + 1)).toNat + A001221 (A001316 n).toNat

end

end A135662.P8357559734965747823

namespace A135662

/-- `A135661(A184419(n+1))+A001221(A001316(n))` -/
def P8357559734965747823.Spec : Prop :=
  ∀ n, P8357559734965747823.a n = A135662 (n + 1)

end A135662

/-! ## A135662.P7548748037506638410

`A135661(A184419(n+1))+A000035(A000040(n+1))`
-/

namespace A135662.P7548748037506638410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A184419 (n + 1)).toNat + A000035 (A000040 (n + 1)).toNat

end

end A135662.P7548748037506638410

namespace A135662

/-- `A135661(A184419(n+1))+A000035(A000040(n+1))` -/
def P7548748037506638410.Spec : Prop :=
  ∀ n, P7548748037506638410.a n = A135662 (n + 1)

end A135662

/-! ## A135662.P17239961864896195320

`A135661(A184419(n+1))+A008683(2*A000040(n+1))`
-/

namespace A135662.P17239961864896195320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A184419 (n + 1)).toNat + A008683 (2 * A000040 (n + 1)).toNat

end

end A135662.P17239961864896195320

namespace A135662

/-- `A135661(A184419(n+1))+A008683(2*A000040(n+1))` -/
def P17239961864896195320.Spec : Prop :=
  ∀ n, P17239961864896195320.a n = A135662 (n + 1)

end A135662

/-!
# A135663: a(n) = floor(sqrt(n) - n^(1/4)).

The programs for A135663, the canonical program `A135663.P4412292929524803252` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135663 has offset 1).

The definition of A135663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n+1)-(n+1)^(1/4))` (program `A135663.P4412292929524803252`, by `A135663.P4412292929524803252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135663.P4412292929524803252

`floor(sqrt(n+1)-(n+1)^(1/4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135663

/-- `floor(sqrt(n+1)-(n+1)^(1/4))` -/
def P4412292929524803252.Spec : Prop :=
  ∀ n, P4412292929524803252.a n = A135663 (n + 1)

theorem P4412292929524803252.correct : P4412292929524803252.Spec := by
  intro n
  simp only [A135663, Nat.add_sub_cancel]

end A135663

/-! ## A135663.P12591179853974397037

`A135662(n+1)-A157928(A002377(n+1))`
-/

namespace A135663.P12591179853974397037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (n + 1) - A157928 (A002377 (n + 1)).toNat

end

end A135663.P12591179853974397037

namespace A135663

/-- `A135662(n+1)-A157928(A002377(n+1))` -/
def P12591179853974397037.Spec : Prop :=
  ∀ n, P12591179853974397037.a n = A135663 (n + 1)

end A135663

/-! ## A135663.P13362923333421742339

`A135662(n+1)-Δ[A139179(n)]`
-/

namespace A135663.P13362923333421742339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (n + 1) - (f1 (n + 1) - f1 n)

end

end A135663.P13362923333421742339

namespace A135663

/-- `A135662(n+1)-Δ[A139179(n)]` -/
def P13362923333421742339.Spec : Prop :=
  ∀ n, P13362923333421742339.a n = A135663 (n + 1)

end A135663

/-! ## A135663.P15538435371981845394

`A135662(n+1)+A139179(n)-A139179(n+1)`
-/

namespace A135663.P15538435371981845394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (n + 1) + (A139179 n - A139179 (n + 1))

end

end A135663.P15538435371981845394

namespace A135663

/-- `A135662(n+1)+A139179(n)-A139179(n+1)` -/
def P15538435371981845394.Spec : Prop :=
  ∀ n, P15538435371981845394.a n = A135663 (n + 1)

end A135663

/-! ## A135663.P6119539376816126912

`A135661(A184419(n+1)+A023969(n))`
-/

namespace A135663.P6119539376816126912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A184419 (n + 1) + A023969 n).toNat

end

end A135663.P6119539376816126912

namespace A135663

/-- `A135661(A184419(n+1)+A023969(n))` -/
def P6119539376816126912.Spec : Prop :=
  ∀ n, P6119539376816126912.a n = A135663 (n + 1)

end A135663

/-! ## A135663.P2943271676618837650

`A135661(A184419(n+1)+A065803(n+1))`
-/

namespace A135663.P2943271676618837650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A184419 (n + 1) + A065803 (n + 1)).toNat

end

end A135663.P2943271676618837650

namespace A135663

/-- `A135661(A184419(n+1)+A065803(n+1))` -/
def P2943271676618837650.Spec : Prop :=
  ∀ n, P2943271676618837650.a n = A135663 (n + 1)

end A135663

/-! ## A135663.P11685822996293248103

`A111856(A112232(n+1)+A111856(n+1))`
-/

namespace A135663.P11685822996293248103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111856 (A112232 (n + 1) + A111856 (n + 1)).toNat

end

end A135663.P11685822996293248103

namespace A135663

/-- `A111856(A112232(n+1)+A111856(n+1))` -/
def P11685822996293248103.Spec : Prop :=
  ∀ n, P11685822996293248103.a n = A135663 (n + 1)

end A135663

/-! ## A135663.P18432827382201696089

`A135661(A246046(n+1))`
-/

namespace A135663.P18432827382201696089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A246046 (n + 1)).toNat

end

end A135663.P18432827382201696089

namespace A135663

/-- `A135661(A246046(n+1))` -/
def P18432827382201696089.Spec : Prop :=
  ∀ n, P18432827382201696089.a n = A135663 (n + 1)

end A135663

/-! ## A135663.P12989955280475018327

`A000520(A373220(n))`
-/

namespace A135663.P12989955280475018327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000520 (A373220 n).toNat

end

end A135663.P12989955280475018327

namespace A135663

/-- `A000520(A373220(n))` -/
def P12989955280475018327.Spec : Prop :=
  ∀ n, P12989955280475018327.a n = A135663 (n + 1)

end A135663

/-! ## A135663.P298981710098729513

`A000520(A308283(n))`
-/

namespace A135663.P298981710098729513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000520 (A308283 n).toNat

end

end A135663.P298981710098729513

namespace A135663

/-- `A000520(A308283(n))` -/
def P298981710098729513.Spec : Prop :=
  ∀ n, P298981710098729513.a n = A135663 (n + 1)

end A135663

/-!
# A135664: a(n) = ceiling(sqrt(n) - n^(1/5)).

The programs for A135664, the canonical program `A135664.P4679892350451014715` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135664 has offset 1).

The definition of A135664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n+1)-(n+1)^(1/5))` (program `A135664.P4679892350451014715`, by `A135664.P4679892350451014715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135664.P4679892350451014715

`ceil(sqrt(n+1)-(n+1)^(1/5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135664

/-- `ceil(sqrt(n+1)-(n+1)^(1/5))` -/
def P4679892350451014715.Spec : Prop :=
  ∀ n, P4679892350451014715.a n = A135664 (n + 1)

theorem P4679892350451014715.correct : P4679892350451014715.Spec := by
  intro n
  simp only [A135664, Nat.add_sub_cancel]

end A135664

/-! ## A135664.P5984691103116965510

`A267537(A174221(3*n+4))+A135665(n+1)`
-/

namespace A135664.P5984691103116965510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (A174221 (3 * n + 4)).toNat + A135665 (n + 1)

end

end A135664.P5984691103116965510

namespace A135664

/-- `A267537(A174221(3*n+4))+A135665(n+1)` -/
def P5984691103116965510.Spec : Prop :=
  ∀ n, P5984691103116965510.a n = A135664 (n + 1)

end A135664

/-! ## A135664.P633218471120237922

`A135665(n+1)+A000035(A027697(n+1))`
-/

namespace A135664.P633218471120237922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (n + 1) + A000035 (A027697 (n + 1)).toNat

end

end A135664.P633218471120237922

namespace A135664

/-- `A135665(n+1)+A000035(A027697(n+1))` -/
def P633218471120237922.Spec : Prop :=
  ∀ n, P633218471120237922.a n = A135664 (n + 1)

end A135664

/-! ## A135664.P15434418131395185838

`A135665(n+1)+A032741(A008578(2*n+1))`
-/

namespace A135664.P15434418131395185838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (n + 1) + A032741 (A008578 (2 * n + 1)).toNat

end

end A135664.P15434418131395185838

namespace A135664

/-- `A135665(n+1)+A032741(A008578(2*n+1))` -/
def P15434418131395185838.Spec : Prop :=
  ∀ n, P15434418131395185838.a n = A135664 (n + 1)

end A135664

/-! ## A135664.P4191340214812392548

`A206442(A104272(n+1))+A135665(n+1)`
-/

namespace A135664.P4191340214812392548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206442 (A104272 (n + 1)).toNat + A135665 (n + 1)

end

end A135664.P4191340214812392548

namespace A135664

/-- `A206442(A104272(n+1))+A135665(n+1)` -/
def P4191340214812392548.Spec : Prop :=
  ∀ n, P4191340214812392548.a n = A135664 (n + 1)

end A135664

/-! ## A135664.P13511039865050444283

`A135665(n+1)+A000035(A033945(3*n+1))`
-/

namespace A135664.P13511039865050444283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (n + 1) + A000035 (A033945 (3 * n + 1)).toNat

end

end A135664.P13511039865050444283

namespace A135664

/-- `A135665(n+1)+A000035(A033945(3*n+1))` -/
def P13511039865050444283.Spec : Prop :=
  ∀ n, P13511039865050444283.a n = A135664 (n + 1)

end A135664

/-! ## A135664.P2701913414613521359

`A135665(n+1)+A023532(∑[n])`
-/

namespace A135664.P2701913414613521359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (n + 1) + A023532 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135664.P2701913414613521359

namespace A135664

/-- `A135665(n+1)+A023532(∑[n])` -/
def P2701913414613521359.Spec : Prop :=
  ∀ n, P2701913414613521359.a n = A135664 (n + 1)

end A135664

/-! ## A135664.P13562559280153284416

`A254606(A133263(n+1))+A135665(n+1)`
-/

namespace A135664.P13562559280153284416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254606 (A133263 (n + 1)).toNat + A135665 (n + 1)

end

end A135664.P13562559280153284416

namespace A135664

/-- `A254606(A133263(n+1))+A135665(n+1)` -/
def P13562559280153284416.Spec : Prop :=
  ∀ n, P13562559280153284416.a n = A135664 (n + 1)

end A135664

/-! ## A135664.P2967694277709522234

`A097430(A082453(n+1))`
-/

namespace A135664.P2967694277709522234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (A082453 (n + 1)).toNat

end

end A135664.P2967694277709522234

namespace A135664

/-- `A097430(A082453(n+1))` -/
def P2967694277709522234.Spec : Prop :=
  ∀ n, P2967694277709522234.a n = A135664 (n + 1)

end A135664

/-!
# A135665: a(n) = floor(sqrt(n) - n^(1/5)).

The programs for A135665, the canonical program `A135665.P5322962361795930316` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135665 has offset 1).

The definition of A135665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n+1)-(n+1)^(1/5))` (program `A135665.P5322962361795930316`, by `A135665.P5322962361795930316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135665.P5322962361795930316

`floor(sqrt(n+1)-(n+1)^(1/5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135665

/-- `floor(sqrt(n+1)-(n+1)^(1/5))` -/
def P5322962361795930316.Spec : Prop :=
  ∀ n, P5322962361795930316.a n = A135665 (n + 1)

theorem P5322962361795930316.correct : P5322962361795930316.Spec := by
  intro n
  simp only [A135665, Nat.add_sub_cancel]

end A135665

/-! ## A135665.P895688521582314548

`(A135664(n+1)-1)%A261175(n)`
-/

namespace A135665.P895688521582314548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135664 (n + 1) - 1) (A261175 n)

end

end A135665.P895688521582314548

namespace A135665

/-- `(A135664(n+1)-1)%A261175(n)` -/
def P895688521582314548.Spec : Prop :=
  ∀ n, P895688521582314548.a n = A135665 (n + 1)

end A135665

/-! ## A135665.P13467879475078490559

`∑{e}[A011782(A135664(n+1)), #]`
-/

namespace A135665.P13467879475078490559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A135664 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A135665.P13467879475078490559

namespace A135665

/-- `∑{e}[A011782(A135664(n+1)), #]` -/
def P13467879475078490559.Spec : Prop :=
  ∀ n, (P13467879475078490559.a n : ℤ) = A135665 (n + 1)

end A135665

/-! ## A135665.P3616834381417218525

`A135664(n+1)-A303838(A027748(n+1))`
-/

namespace A135665.P3616834381417218525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (n + 1) - A303838 (A027748 (n + 1)).toNat

end

end A135665.P3616834381417218525

namespace A135665

/-- `A135664(n+1)-A303838(A027748(n+1))` -/
def P3616834381417218525.Spec : Prop :=
  ∀ n, P3616834381417218525.a n = A135665 (n + 1)

end A135665

/-! ## A135665.P9217498062116788728

`A135664(n+1)-A267043(A141042(n+1))`
-/

namespace A135665.P9217498062116788728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (n + 1) - A267043 (A141042 (n + 1)).toNat

end

end A135665.P9217498062116788728

namespace A135665

/-- `A135664(n+1)-A267043(A141042(n+1))` -/
def P9217498062116788728.Spec : Prop :=
  ∀ n, P9217498062116788728.a n = A135665 (n + 1)

end A135665

/-! ## A135665.P5721151586240345220

`A211262(2^A135664(n+1))`
-/

namespace A135665.P5721151586240345220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211262 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A135664 (n + 1) : ℤ))).toNat

end

end A135665.P5721151586240345220

namespace A135665

/-- `A211262(2^A135664(n+1))` -/
def P5721151586240345220.Spec : Prop :=
  ∀ n, P5721151586240345220.a n = A135665 (n + 1)

end A135665

/-! ## A135665.P9723189873862599286

`A070198(n)%A028310(A135664(n+1))`
-/

namespace A135665.P9723189873862599286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A028310 (A135664 (n + 1)).toNat)

end

end A135665.P9723189873862599286

namespace A135665

/-- `A070198(n)%A028310(A135664(n+1))` -/
def P9723189873862599286.Spec : Prop :=
  ∀ n, P9723189873862599286.a n = A135665 (n + 1)

end A135665

/-! ## A135665.P14295212393362888401

`A135664(n+1)-A070198(n)/A070198(A028310(n))`
-/

namespace A135665.P14295212393362888401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135664 (n + 1) : ℚ) - (A070198 n : ℚ) / (A070198 (A028310 n).toNat : ℚ)

end

end A135665.P14295212393362888401

namespace A135665

/-- `A135664(n+1)-A070198(n)/A070198(A028310(n))` -/
def P14295212393362888401.Spec : Prop :=
  ∀ n, P14295212393362888401.a n = (A135665 (n + 1) : ℚ)

end A135665

/-! ## A135665.P4661241982509571184

`A135664(n+1)-A008683(A125215(n+1))`
-/

namespace A135665.P4661241982509571184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (n + 1) - A008683 (A125215 (n + 1)).toNat

end

end A135665.P4661241982509571184

namespace A135665

/-- `A135664(n+1)-A008683(A125215(n+1))` -/
def P4661241982509571184.Spec : Prop :=
  ∀ n, P4661241982509571184.a n = A135665 (n + 1)

end A135665

/-! ## A135665.P14039087516348397255

`A135664(n+1)+A008683(2*A125215(n+1))`
-/

namespace A135665.P14039087516348397255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (n + 1) + A008683 (2 * A125215 (n + 1)).toNat

end

end A135665.P14039087516348397255

namespace A135665

/-- `A135664(n+1)+A008683(2*A125215(n+1))` -/
def P14039087516348397255.Spec : Prop :=
  ∀ n, P14039087516348397255.a n = A135665 (n + 1)

end A135665

/-! ## A135665.P17256283270583547828

`A077429(A053263(n))`
-/

namespace A135665.P17256283270583547828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (A053263 n).toNat

end

end A135665.P17256283270583547828

namespace A135665

/-- `A077429(A053263(n))` -/
def P17256283270583547828.Spec : Prop :=
  ∀ n, P17256283270583547828.a n = A135665 (n + 1)

end A135665

/-!
# A135667: Least k such that k!! > prime(1)*prime(2)*...*prime(n) where prime(n) is the n-th prime.

The programs for A135667, there is no canonical definition to state claims against.
-/

/-! ## A135667.P17556954495032405999

`A002024(∑[A331912(3*n+2)]-A002378(n))`
-/

namespace A135667.P17556954495032405999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j - A002378 n).toNat

end

end A135667.P17556954495032405999

/-! ## A135667.P7966073677146478152

`A035100(A316475(n+1))+n`
-/

namespace A135667.P7966073677146478152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (A316475 (n + 1)).toNat + (n : ℤ)

end

end A135667.P7966073677146478152

/-! ## A135667.P7178489341462776531

`A336547(n+1)+A070939(A337665(n))`
-/

namespace A135667.P7178489341462776531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1) + A070939 (A337665 n).toNat

end

end A135667.P7178489341462776531

/-!
# A135668: a(n) = ceiling(n + sqrt(n)).

The programs for A135668, the canonical program `A135668.P8218061950587313652` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135668 has offset 1).

The definition of A135668 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n+1+sqrt(n+1))` (program `A135668.P8218061950587313652`, by `A135668.P8218061950587313652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135668.P8218061950587313652

`ceil(n+1+sqrt(n+1))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135668

/-- `ceil(n+1+sqrt(n+1))` -/
def P8218061950587313652.Spec : Prop :=
  ∀ n, P8218061950587313652.a n = A135668 (n + 1)

theorem P8218061950587313652.correct : P8218061950587313652.Spec := by
  intro n
  simp only [A135668, Nat.add_sub_cancel]

end A135668

/-! ## A135668.P1224747699351351986

`comp[2*C(n, 2)]+1`
-/

namespace A135668.P1224747699351351986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A135668.P1224747699351351986

namespace A135668

/-- `comp[2*C(n, 2)]+1` -/
def P1224747699351351986.Spec : Prop :=
  ∀ n, (P1224747699351351986.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P1184847980981851

`comp[lcm(n, n+1)]+1`
-/

namespace A135668.P1184847980981851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A135668.P1184847980981851

namespace A135668

/-- `comp[lcm(n, n+1)]+1` -/
def P1184847980981851.Spec : Prop :=
  ∀ n, (P1184847980981851.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P17259998068544779885

`comp[∑[comp[or(1, n)]]]+1`
-/

namespace A135668.P17259998068544779885
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A135668.P17259998068544779885

namespace A135668

/-- `comp[∑[comp[or(1, n)]]]+1` -/
def P17259998068544779885.Spec : Prop :=
  ∀ n, (P17259998068544779885.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P4740214604099065664

`comp[ceil(n/acot(n-1))]`
-/

namespace A135668.P4740214604099065664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A135668.P4740214604099065664

namespace A135668

/-- `comp[ceil(n/acot(n-1))]` -/
def P4740214604099065664.Spec : Prop :=
  ∀ n, (P4740214604099065664.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P7296989679097874177

`comp[∑[comp[or(1, comp[∑[n]])]]]`
-/

namespace A135668.P7296989679097874177
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A135668.P7296989679097874177

namespace A135668

/-- `comp[∑[comp[or(1, comp[∑[n]])]]]` -/
def P7296989679097874177.Spec : Prop :=
  ∀ n, (P7296989679097874177.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P1977251587656974404

`comp[∑[comp[xor(1, 2*(n+1))]]]`
-/

namespace A135668.P1977251587656974404
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A135668.P1977251587656974404

namespace A135668

/-- `comp[∑[comp[xor(1, 2*(n+1))]]]` -/
def P1977251587656974404.Spec : Prop :=
  ∀ n, (P1977251587656974404.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P12724453316360361681

`comp[∑[comp[a(n-1)+2]]]` with `a(0)=3`
-/

namespace A135668.P12724453316360361681
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f3 =>
  f3 (n - 1) + 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A135668.P12724453316360361681

namespace A135668

/-- `comp[∑[comp[a(n-1)+2]]]` -/
def P12724453316360361681.Spec : Prop :=
  ∀ n, (P12724453316360361681.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P1691618733310257511

`comp[∑[comp[gcd(2, n)+n+1]]]`
-/

namespace A135668.P1691618733310257511
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A135668.P1691618733310257511

namespace A135668

/-- `comp[∑[comp[gcd(2, n)+n+1]]]` -/
def P1691618733310257511.Spec : Prop :=
  ∀ n, (P1691618733310257511.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P18239813950017374153

`comp[∑[comp[and(n, n+1)+3]]]`
-/

namespace A135668.P18239813950017374153
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A135668.P18239813950017374153

namespace A135668

/-- `comp[∑[comp[and(n, n+1)+3]]]` -/
def P18239813950017374153.Spec : Prop :=
  ∀ n, (P18239813950017374153.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P14740487992112708390

`comp[∑[∪[2*n, (n+1)!]]]`
-/

namespace A135668.P14740487992112708390
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A135668.P14740487992112708390

namespace A135668

/-- `comp[∑[∪[2*n, (n+1)!]]]` -/
def P14740487992112708390.Spec : Prop :=
  ∀ n, (P14740487992112708390.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P7848945042907095196

`comp[∑[∪[2*n, ∏[n+1]]]]`
-/

namespace A135668.P7848945042907095196
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A135668.P7848945042907095196

namespace A135668

/-- `comp[∑[∪[2*n, ∏[n+1]]]]` -/
def P7848945042907095196.Spec : Prop :=
  ∀ n, (P7848945042907095196.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P2901265584381625668

`a(n-1)+char[n²]+1` with `a(0)=2`
-/

namespace A135668.P2901265584381625668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A135668.P2901265584381625668

namespace A135668

/-- `a(n-1)+char[n²]+1` -/
def P2901265584381625668.Spec : Prop :=
  ∀ n, (P2901265584381625668.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P7092627015973831895

`comp[(n+1)*n%(n+1)]+1`
-/

namespace A135668.P7092627015973831895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n % (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A135668.P7092627015973831895

namespace A135668

/-- `comp[(n+1)*n%(n+1)]+1` -/
def P7092627015973831895.Spec : Prop :=
  ∀ n, (P7092627015973831895.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P2982398998754105941

`A028392(n)+2`
-/

namespace A135668.P2982398998754105941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n + 2

end

end A135668.P2982398998754105941

namespace A135668

/-- `A028392(n)+2` -/
def P2982398998754105941.Spec : Prop :=
  ∀ n, P2982398998754105941.a n = A135668 (n + 1)

end A135668

/-! ## A135668.P18374888931875419934

`comp[∑[A004275(n)]]`
-/

namespace A135668.P18374888931875419934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A135668.P18374888931875419934

namespace A135668

/-- `comp[∑[A004275(n)]]` -/
def P18374888931875419934.Spec : Prop :=
  ∀ n, (P18374888931875419934.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P14175946503315879263

`∑[A010052(n)+1]`
-/

namespace A135668.P14175946503315879263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135668.P14175946503315879263

namespace A135668

/-- `∑[A010052(n)+1]` -/
def P14175946503315879263.Spec : Prop :=
  ∀ n, P14175946503315879263.a n = A135668 (n + 1)

end A135668

/-! ## A135668.P17125302343812708045

`∑[3-A169695(n)]`
-/

namespace A135668.P17125302343812708045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A169695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135668.P17125302343812708045

namespace A135668

/-- `∑[3-A169695(n)]` -/
def P17125302343812708045.Spec : Prop :=
  ∀ n, P17125302343812708045.a n = A135668 (n + 1)

end A135668

/-! ## A135668.P13892094656838821902

`comp[A002378(n)]+1`
-/

namespace A135668.P13892094656838821902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A135668.P13892094656838821902

namespace A135668

/-- `comp[A002378(n)]+1` -/
def P13892094656838821902.Spec : Prop :=
  ∀ n, (P13892094656838821902.a n : ℤ) = A135668 (n + 1)

end A135668

/-! ## A135668.P13351734032105608171

`comp[A038714(n)]+1`
-/

namespace A135668.P13351734032105608171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A135668.P13351734032105608171

namespace A135668

/-- `comp[A038714(n)]+1` -/
def P13351734032105608171.Spec : Prop :=
  ∀ n, (P13351734032105608171.a n : ℤ) = A135668 (n + 1)

end A135668

/-!
# A135671: a(n) = ceiling(n - n^(2/3)).

The programs for A135671, the canonical program `A135671.P18330161742074938182` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135671 has offset 1).

The definition of A135671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n+1-(n+1)^(2/3))` (program `A135671.P18330161742074938182`, by `A135671.P18330161742074938182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135671.P18330161742074938182

`ceil(n+1-(n+1)^(2/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135671

/-- `ceil(n+1-(n+1)^(2/3))` -/
def P18330161742074938182.Spec : Prop :=
  ∀ n, P18330161742074938182.a n = A135671 (n + 1)

theorem P18330161742074938182.correct : P18330161742074938182.Spec := by
  intro n
  simp only [A135671, Nat.add_sub_cancel]

end A135671

/-! ## A135671.P3993981383511685865

`∑[1-Δ[A100196(n)]]`
-/

namespace A135671.P3993981383511685865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P3993981383511685865

namespace A135671

/-- `∑[1-Δ[A100196(n)]]` -/
def P3993981383511685865.Spec : Prop :=
  ∀ n, P3993981383511685865.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P12300919255884986382

`n+1-Δ[A032514(n)]`
-/

namespace A135671.P12300919255884986382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A135671.P12300919255884986382

namespace A135671

/-- `n+1-Δ[A032514(n)]` -/
def P12300919255884986382.Spec : Prop :=
  ∀ n, P12300919255884986382.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P17971196397610562736

`1-A100196(n+1)+n`
-/

namespace A135671.P17971196397610562736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A100196 (n + 1) + (n : ℤ)

end

end A135671.P17971196397610562736

namespace A135671

/-- `1-A100196(n+1)+n` -/
def P17971196397610562736.Spec : Prop :=
  ∀ n, P17971196397610562736.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P9738189768824017925

`2-A077113(n+1)+n`
-/

namespace A135671.P9738189768824017925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A077113 (n + 1) + (n : ℤ)

end

end A135671.P9738189768824017925

namespace A135671

/-- `2-A077113(n+1)+n` -/
def P9738189768824017925.Spec : Prop :=
  ∀ n, P9738189768824017925.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P14095529473628157457

`2*(n+1)-A135674(n+1)`
-/

namespace A135671.P14095529473628157457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A135674 (n + 1)

end

end A135671.P14095529473628157457

namespace A135671

/-- `2*(n+1)-A135674(n+1)` -/
def P14095529473628157457.Spec : Prop :=
  ∀ n, P14095529473628157457.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P8026957627116663585

`∑[A000007(Δ[A100196(n)])]`
-/

namespace A135671.P8026957627116663585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P8026957627116663585

namespace A135671

/-- `∑[A000007(Δ[A100196(n)])]` -/
def P8026957627116663585.Spec : Prop :=
  ∀ n, P8026957627116663585.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P3059281614093424627

`∑[A003982(Δ[A100196(n)])]`
-/

namespace A135671.P3059281614093424627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P3059281614093424627

namespace A135671

/-- `∑[A003982(Δ[A100196(n)])]` -/
def P3059281614093424627.Spec : Prop :=
  ∀ n, P3059281614093424627.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P9862173557471155491

`∑[A004442(Δ[A100196(n)])]`
-/

namespace A135671.P9862173557471155491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P9862173557471155491

namespace A135671

/-- `∑[A004442(Δ[A100196(n)])]` -/
def P9862173557471155491.Spec : Prop :=
  ∀ n, P9862173557471155491.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P8650953850950849590

`∑[A005369(Δ[A100196(n)])]`
-/

namespace A135671.P8650953850950849590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P8650953850950849590

namespace A135671

/-- `∑[A005369(Δ[A100196(n)])]` -/
def P8650953850950849590.Spec : Prop :=
  ∀ n, P8650953850950849590.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P15969489819288369536

`∑[A006355(Δ[A100196(n)])]`
-/

namespace A135671.P15969489819288369536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P15969489819288369536

namespace A135671

/-- `∑[A006355(Δ[A100196(n)])]` -/
def P15969489819288369536.Spec : Prop :=
  ∀ n, P15969489819288369536.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P11823254171067088261

`∑[A008611(Δ[A100196(n)])]`
-/

namespace A135671.P11823254171067088261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P11823254171067088261

namespace A135671

/-- `∑[A008611(Δ[A100196(n)])]` -/
def P11823254171067088261.Spec : Prop :=
  ∀ n, P11823254171067088261.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P17036080429483342481

`∑[A008624(Δ[A100196(n)])]`
-/

namespace A135671.P17036080429483342481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P17036080429483342481

namespace A135671

/-- `∑[A008624(Δ[A100196(n)])]` -/
def P17036080429483342481.Spec : Prop :=
  ∀ n, P17036080429483342481.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P14451858408211332000

`∑[A008651(Δ[A100196(n)])]`
-/

namespace A135671.P14451858408211332000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P14451858408211332000

namespace A135671

/-- `∑[A008651(Δ[A100196(n)])]` -/
def P14451858408211332000.Spec : Prop :=
  ∀ n, P14451858408211332000.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P8343902860477859784

`∑[A009124(Δ[A100196(n)])]`
-/

namespace A135671.P8343902860477859784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009124 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P8343902860477859784

namespace A135671

/-- `∑[A009124(Δ[A100196(n)])]` -/
def P8343902860477859784.Spec : Prop :=
  ∀ n, P8343902860477859784.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P6973054021253307960

`∑[A010059(Δ[A100196(n)])]`
-/

namespace A135671.P6973054021253307960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P6973054021253307960

namespace A135671

/-- `∑[A010059(Δ[A100196(n)])]` -/
def P6973054021253307960.Spec : Prop :=
  ∀ n, P6973054021253307960.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P158066628688816564

`∑[A010087(Δ[A100196(n)])]`
-/

namespace A135671.P158066628688816564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010087 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P158066628688816564

namespace A135671

/-- `∑[A010087(Δ[A100196(n)])]` -/
def P158066628688816564.Spec : Prop :=
  ∀ n, P158066628688816564.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P6143901097496195166

`∑[A023925(Δ[A100196(n)])]`
-/

namespace A135671.P6143901097496195166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023925 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P6143901097496195166

namespace A135671

/-- `∑[A023925(Δ[A100196(n)])]` -/
def P6143901097496195166.Spec : Prop :=
  ∀ n, P6143901097496195166.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P5449032328095627872

`∑[A029168(Δ[A100196(n)])]`
-/

namespace A135671.P5449032328095627872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029168 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P5449032328095627872

namespace A135671

/-- `∑[A029168(Δ[A100196(n)])]` -/
def P5449032328095627872.Spec : Prop :=
  ∀ n, P5449032328095627872.a n = A135671 (n + 1)

end A135671

/-! ## A135671.P2323728704000073789

`∑[A029222(Δ[A100196(n)])]`
-/

namespace A135671.P2323728704000073789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135671.P2323728704000073789

namespace A135671

/-- `∑[A029222(Δ[A100196(n)])]` -/
def P2323728704000073789.Spec : Prop :=
  ∀ n, P2323728704000073789.a n = A135671 (n + 1)

end A135671

/-!
# A135672: a(n) = floor(n - n^(2/3)).

The programs for A135672, the canonical program `A135672.P12034222280985271492` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135672 has offset 1).

The definition of A135672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n+1-(n+1)^(2/3))` (program `A135672.P12034222280985271492`, by `A135672.P12034222280985271492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135672.P12034222280985271492

`floor(n+1-(n+1)^(2/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135672

/-- `floor(n+1-(n+1)^(2/3))` -/
def P12034222280985271492.Spec : Prop :=
  ∀ n, P12034222280985271492.a n = A135672 (n + 1)

theorem P12034222280985271492.correct : P12034222280985271492.Spec := by
  intro n
  simp only [A135672, Nat.add_sub_cancel]

end A135672

/-! ## A135672.P18240176600021228991

`∑[char[A185543(n+1)]]`
-/

namespace A135672.P18240176600021228991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185543 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135672.P18240176600021228991

namespace A135672

/-- `∑[char[A185543(n+1)]]` -/
def P18240176600021228991.Spec : Prop :=
  ∀ n, (P18240176600021228991.a n : ℤ) = A135672 (n + 1)

end A135672

/-! ## A135672.P6221801653579901425

`Δ[n²]-A186145(n+1)`
-/

namespace A135672.P6221801653579901425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A186145 (n + 1)

end

end A135672.P6221801653579901425

namespace A135672

/-- `Δ[n²]-A186145(n+1)` -/
def P6221801653579901425.Spec : Prop :=
  ∀ n, P6221801653579901425.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P16719244356178473588

`n+1-∑[char[A000093(n)]]`
-/

namespace A135672.P16719244356178473588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A135672.P16719244356178473588

namespace A135672

/-- `n+1-∑[char[A000093(n)]]` -/
def P16719244356178473588.Spec : Prop :=
  ∀ n, P16719244356178473588.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P7559243652045396639

`2*(n+1)-A135673(n+1)`
-/

namespace A135672.P7559243652045396639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A135673 (n + 1)

end

end A135672.P7559243652045396639

namespace A135672

/-- `2*(n+1)-A135673(n+1)` -/
def P7559243652045396639.Spec : Prop :=
  ∀ n, P7559243652045396639.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P9981240544366142647

`A079531(n+1)+A051953(n+1)`
-/

namespace A135672.P9981240544366142647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079531 (n + 1) + A051953 (n + 1)

end

end A135672.P9981240544366142647

namespace A135672

/-- `A079531(n+1)+A051953(n+1)` -/
def P9981240544366142647.Spec : Prop :=
  ∀ n, P9981240544366142647.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P5485995409092444164

`A163300(n+1)%A135673(n+1)`
-/

namespace A135672.P5485995409092444164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A135673 (n + 1))

end

end A135672.P5485995409092444164

namespace A135672

/-- `A163300(n+1)%A135673(n+1)` -/
def P5485995409092444164.Spec : Prop :=
  ∀ n, P5485995409092444164.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P1966026327844110546

`A000290(n+1)-(A186145(n+1)+A000290(n))`
-/

namespace A135672.P1966026327844110546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A186145 (n + 1) + A000290 n)

end

end A135672.P1966026327844110546

namespace A135672

/-- `A000290(n+1)-(A186145(n+1)+A000290(n))` -/
def P1966026327844110546.Spec : Prop :=
  ∀ n, P1966026327844110546.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P12176233098516099254

`A135668(n+1)+A028391(n)-A135673(n+1)`
-/

namespace A135672.P12176233098516099254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1) + (A028391 n - A135673 (n + 1))

end

end A135672.P12176233098516099254

namespace A135672

/-- `A135668(n+1)+A028391(n)-A135673(n+1)` -/
def P12176233098516099254.Spec : Prop :=
  ∀ n, P12176233098516099254.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P3591283812068142330

`A135671(n+1)+A135674(n+1)-A135673(n+1)`
-/

namespace A135672.P3591283812068142330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135671 (n + 1) + (A135674 (n + 1) - A135673 (n + 1))

end

end A135672.P3591283812068142330

namespace A135672

/-- `A135671(n+1)+A135674(n+1)-A135673(n+1)` -/
def P3591283812068142330.Spec : Prop :=
  ∀ n, P3591283812068142330.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P10563713662697451507

`A135671(n+1)+A135676(n+1)-A135675(n+1)`
-/

namespace A135672.P10563713662697451507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135671 (n + 1) + (A135676 (n + 1) - A135675 (n + 1))

end

end A135672.P10563713662697451507

namespace A135672

/-- `A135671(n+1)+A135676(n+1)-A135675(n+1)` -/
def P10563713662697451507.Spec : Prop :=
  ∀ n, P10563713662697451507.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P7135878476528010463

`A135677(n+1)-(A135675(n+1)+A135673(n+1))`
-/

namespace A135672.P7135878476528010463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (n + 1) - (A135675 (n + 1) + A135673 (n + 1))

end

end A135672.P7135878476528010463

namespace A135672

/-- `A135677(n+1)-(A135675(n+1)+A135673(n+1))` -/
def P7135878476528010463.Spec : Prop :=
  ∀ n, P7135878476528010463.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P11833663362527850381

`A135678(n+1)-(A135675(n+1)+A135674(n+1))`
-/

namespace A135672.P11833663362527850381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135678 (n + 1) - (A135675 (n + 1) + A135674 (n + 1))

end

end A135672.P11833663362527850381

namespace A135672

/-- `A135678(n+1)-(A135675(n+1)+A135674(n+1))` -/
def P11833663362527850381.Spec : Prop :=
  ∀ n, P11833663362527850381.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P13454178265133540033

`A135678(n+1)-(A135676(n+1)+A135673(n+1))`
-/

namespace A135672.P13454178265133540033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135678 (n + 1) - (A135676 (n + 1) + A135673 (n + 1))

end

end A135672.P13454178265133540033

namespace A135672

/-- `A135678(n+1)-(A135676(n+1)+A135673(n+1))` -/
def P13454178265133540033.Spec : Prop :=
  ∀ n, P13454178265133540033.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P17865135041234681508

`A020725(n+1)-A020725(A186145(n+1))+n`
-/

namespace A135672.P17865135041234681508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A020725 (A186145 (n + 1)).toNat + (n : ℤ)

end

end A135672.P17865135041234681508

namespace A135672

/-- `A020725(n+1)-A020725(A186145(n+1))+n` -/
def P17865135041234681508.Spec : Prop :=
  ∀ n, P17865135041234681508.a n = A135672 (n + 1)

end A135672

/-! ## A135672.P3720475186379119272

`1-A003059(A134917(n+1))+n`
-/

namespace A135672.P3720475186379119272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003059 (A134917 (n + 1)).toNat + (n : ℤ)

end

end A135672.P3720475186379119272

namespace A135672

/-- `1-A003059(A134917(n+1))+n` -/
def P3720475186379119272.Spec : Prop :=
  ∀ n, P3720475186379119272.a n = A135672 (n + 1)

end A135672

/-!
# A135673: Ceiling(n + n^(2/3)).

The programs for A135673, the canonical program `A135673.P10998090545570851599` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135673 has offset 1).

The definition of A135673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n+1+(n+1)^(2/3))` (program `A135673.P10998090545570851599`, by `A135673.P10998090545570851599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135673.P10998090545570851599

`ceil(n+1+(n+1)^(2/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135673

/-- `ceil(n+1+(n+1)^(2/3))` -/
def P10998090545570851599.Spec : Prop :=
  ∀ n, P10998090545570851599.a n = A135673 (n + 1)

theorem P10998090545570851599.correct : P10998090545570851599.Spec := by
  intro n
  simp only [A135673, Nat.add_sub_cancel]

end A135673

/-! ## A135673.P17454411260166886098

`A186145(n+1)+1`
-/

namespace A135673.P17454411260166886098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186145 (n + 1) + 1

end

end A135673.P17454411260166886098

namespace A135673

/-- `A186145(n+1)+1` -/
def P17454411260166886098.Spec : Prop :=
  ∀ n, P17454411260166886098.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P670328459186095667

`∑[char[A000093(n)]]+1+n`
-/

namespace A135673.P670328459186095667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A135673.P670328459186095667

namespace A135673

/-- `∑[char[A000093(n)]]+1+n` -/
def P670328459186095667.Spec : Prop :=
  ∀ n, (P670328459186095667.a n : ℤ) = A135673 (n + 1)

end A135673

/-! ## A135673.P2391365230238399112

`∑[char[∑[A035936(n)]]+1]+1`
-/

namespace A135673.P2391365230238399112
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135673.P2391365230238399112

namespace A135673

/-- `∑[char[∑[A035936(n)]]+1]+1` -/
def P2391365230238399112.Spec : Prop :=
  ∀ n, (P2391365230238399112.a n : ℤ) = A135673 (n + 1)

end A135673

/-! ## A135673.P12033970896152878193

`2*(n+1)-A135672(n+1)`
-/

namespace A135673.P12033970896152878193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A135672 (n + 1)

end

end A135673.P12033970896152878193

namespace A135673

/-- `2*(n+1)-A135672(n+1)` -/
def P12033970896152878193.Spec : Prop :=
  ∀ n, P12033970896152878193.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P13494386614118254506

`A121048(n+1)-A079531(n+1)`
-/

namespace A135673.P13494386614118254506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A079531 (n + 1)

end

end A135673.P13494386614118254506

namespace A135673

/-- `A121048(n+1)-A079531(n+1)` -/
def P13494386614118254506.Spec : Prop :=
  ∀ n, P13494386614118254506.a n = A135673 (n + 1)

theorem P13494386614118254506.correct : P13494386614118254506.Spec := by
  intro n
  simp only [A135673, Nat.add_sub_cancel, A135673.P13494386614118254506.a, A135673.P10998090545570851599.a, A079531, A079531.P14474375639325813386.a, A121048, A121048.P10222907602682812102.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135673

/-! ## A135673.P5264643406396611956

`A016789(n)-(A135672(n+1)+n)`
-/

namespace A135673.P5264643406396611956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A135672 (n + 1) + (n : ℤ))

end

end A135673.P5264643406396611956

namespace A135673

/-- `A016789(n)-(A135672(n+1)+n)` -/
def P5264643406396611956.Spec : Prop :=
  ∀ n, P5264643406396611956.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P14414939789154199644

`A064524(n+1)+A135674(n+1)-A064524(n)`
-/

namespace A135673.P14414939789154199644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 (n + 1) + (A135674 (n + 1) - A064524 n)

end

end A135673.P14414939789154199644

namespace A135673

/-- `A064524(n+1)+A135674(n+1)-A064524(n)` -/
def P14414939789154199644.Spec : Prop :=
  ∀ n, P14414939789154199644.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P9925517508181553097

`A135668(n+1)+A028391(n)-A135672(n+1)`
-/

namespace A135673.P9925517508181553097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1) + (A028391 n - A135672 (n + 1))

end

end A135673.P9925517508181553097

namespace A135673

/-- `A135668(n+1)+A028391(n)-A135672(n+1)` -/
def P9925517508181553097.Spec : Prop :=
  ∀ n, P9925517508181553097.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P11721939937523290393

`A135671(n+1)+A135674(n+1)-A135672(n+1)`
-/

namespace A135673.P11721939937523290393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135671 (n + 1) + (A135674 (n + 1) - A135672 (n + 1))

end

end A135673.P11721939937523290393

namespace A135673

/-- `A135671(n+1)+A135674(n+1)-A135672(n+1)` -/
def P11721939937523290393.Spec : Prop :=
  ∀ n, P11721939937523290393.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P11810057605652959333

`A135674(n+1)+A135675(n+1)-A135676(n+1)`
-/

namespace A135673.P11810057605652959333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135674 (n + 1) + (A135675 (n + 1) - A135676 (n + 1))

end

end A135673.P11810057605652959333

namespace A135673

/-- `A135674(n+1)+A135675(n+1)-A135676(n+1)` -/
def P11810057605652959333.Spec : Prop :=
  ∀ n, P11810057605652959333.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P15949791718524253155

`A135674(n+1)+A135677(n+1)-A135678(n+1)`
-/

namespace A135673.P15949791718524253155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135674 (n + 1) + (A135677 (n + 1) - A135678 (n + 1))

end

end A135673.P15949791718524253155

namespace A135673

/-- `A135674(n+1)+A135677(n+1)-A135678(n+1)` -/
def P15949791718524253155.Spec : Prop :=
  ∀ n, P15949791718524253155.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P12161548999099640933

`A135677(n+1)-(A135675(n+1)+A135672(n+1))`
-/

namespace A135673.P12161548999099640933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (n + 1) - (A135675 (n + 1) + A135672 (n + 1))

end

end A135673.P12161548999099640933

namespace A135673

/-- `A135677(n+1)-(A135675(n+1)+A135672(n+1))` -/
def P12161548999099640933.Spec : Prop :=
  ∀ n, P12161548999099640933.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P1136710515956529262

`A135677(n+1)-(A135676(n+1)+A135671(n+1))`
-/

namespace A135673.P1136710515956529262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (n + 1) - (A135676 (n + 1) + A135671 (n + 1))

end

end A135673.P1136710515956529262

namespace A135673

/-- `A135677(n+1)-(A135676(n+1)+A135671(n+1))` -/
def P1136710515956529262.Spec : Prop :=
  ∀ n, P1136710515956529262.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P15349121124686019449

`A135678(n+1)-(A135676(n+1)+A135672(n+1))`
-/

namespace A135673.P15349121124686019449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135678 (n + 1) - (A135676 (n + 1) + A135672 (n + 1))

end

end A135673.P15349121124686019449

namespace A135673

/-- `A135678(n+1)-(A135676(n+1)+A135672(n+1))` -/
def P15349121124686019449.Spec : Prop :=
  ∀ n, P15349121124686019449.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P8805808346583436906

`A028310(comp[floor(n*sqrt(n))+n])+1`
-/

namespace A135673.P8805808346583436906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A135673.P8805808346583436906

namespace A135673

/-- `A028310(comp[floor(n*sqrt(n))+n])+1` -/
def P8805808346583436906.Spec : Prop :=
  ∀ n, P8805808346583436906.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P6456902533334415104

`A020725(A186145(n+1))`
-/

namespace A135673.P6456902533334415104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A186145 (n + 1)).toNat

end

end A135673.P6456902533334415104

namespace A135673

/-- `A020725(A186145(n+1))` -/
def P6456902533334415104.Spec : Prop :=
  ∀ n, P6456902533334415104.a n = A135673 (n + 1)

end A135673

/-! ## A135673.P6239124543618861399

`A003059(A134917(n+1))+1+n`
-/

namespace A135673.P6239124543618861399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A134917 (n + 1)).toNat + 1 + (n : ℤ)

end

end A135673.P6239124543618861399

namespace A135673

/-- `A003059(A134917(n+1))+1+n` -/
def P6239124543618861399.Spec : Prop :=
  ∀ n, P6239124543618861399.a n = A135673 (n + 1)

end A135673

/-!
# A135674: a(n) = floor(n + n^(2/3)).

The programs for A135674, the canonical program `A135674.P11428241738415579341` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135674 has offset 1).

The definition of A135674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n+1+(n+1)^(2/3))` (program `A135674.P11428241738415579341`, by `A135674.P11428241738415579341.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135674.P11428241738415579341

`floor(n+1+(n+1)^(2/3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135674

/-- `floor(n+1+(n+1)^(2/3))` -/
def P11428241738415579341.Spec : Prop :=
  ∀ n, P11428241738415579341.a n = A135674 (n + 1)

theorem P11428241738415579341.correct : P11428241738415579341.Spec := by
  intro n
  simp only [A135674, Nat.add_sub_cancel]

end A135674

/-! ## A135674.P16586339140351243598

`n+1+A100196(n+1)`
-/

namespace A135674.P16586339140351243598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A100196 (n + 1)

end

end A135674.P16586339140351243598

namespace A135674

/-- `n+1+A100196(n+1)` -/
def P16586339140351243598.Spec : Prop :=
  ∀ n, P16586339140351243598.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P5867499514918175037

`A077113(n+1)+n`
-/

namespace A135674.P5867499514918175037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 (n + 1) + (n : ℤ)

end

end A135674.P5867499514918175037

namespace A135674

/-- `A077113(n+1)+n` -/
def P5867499514918175037.Spec : Prop :=
  ∀ n, P5867499514918175037.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P16881836470818239201

`∑[Δ[A100196(n)]+1]`
-/

namespace A135674.P16881836470818239201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P16881836470818239201

namespace A135674

/-- `∑[Δ[A100196(n)]+1]` -/
def P16881836470818239201.Spec : Prop :=
  ∀ n, P16881836470818239201.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P3488812541022255029

`Δ[A032514(n)]+1+n`
-/

namespace A135674.P3488812541022255029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A135674.P3488812541022255029

namespace A135674

/-- `Δ[A032514(n)]+1+n` -/
def P3488812541022255029.Spec : Prop :=
  ∀ n, P3488812541022255029.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P18365402916092004195

`2*(n+1)-A135671(n+1)`
-/

namespace A135674.P18365402916092004195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A135671 (n + 1)

end

end A135674.P18365402916092004195

namespace A135674

/-- `2*(n+1)-A135671(n+1)` -/
def P18365402916092004195.Spec : Prop :=
  ∀ n, P18365402916092004195.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P1191555683454646496

`∑[A000034(Δ[A100196(n)])]`
-/

namespace A135674.P1191555683454646496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P1191555683454646496

namespace A135674

/-- `∑[A000034(Δ[A100196(n)])]` -/
def P1191555683454646496.Spec : Prop :=
  ∀ n, P1191555683454646496.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P2928842143915858417

`∑[A000079(Δ[A100196(n)])]`
-/

namespace A135674.P2928842143915858417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P2928842143915858417

namespace A135674

/-- `∑[A000079(Δ[A100196(n)])]` -/
def P2928842143915858417.Spec : Prop :=
  ∀ n, P2928842143915858417.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P10492436089713509428

`∑[A000267(Δ[A100196(n)])]`
-/

namespace A135674.P10492436089713509428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P10492436089713509428

namespace A135674

/-- `∑[A000267(Δ[A100196(n)])]` -/
def P10492436089713509428.Spec : Prop :=
  ∀ n, P10492436089713509428.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P14248602939866672031

`∑[A076875(Δ[A100196(n)])]`
-/

namespace A135674.P14248602939866672031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076875 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P14248602939866672031

namespace A135674

/-- `∑[A076875(Δ[A100196(n)])]` -/
def P14248602939866672031.Spec : Prop :=
  ∀ n, P14248602939866672031.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P1624237755609671056

`∑[2-A000007(Δ[A100196(n)])]`
-/

namespace A135674.P1624237755609671056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000007 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P1624237755609671056

namespace A135674

/-- `∑[2-A000007(Δ[A100196(n)])]` -/
def P1624237755609671056.Spec : Prop :=
  ∀ n, P1624237755609671056.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P13266952084577220981

`∑[2-A003982(Δ[A100196(n)])]`
-/

namespace A135674.P13266952084577220981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003982 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P13266952084577220981

namespace A135674

/-- `∑[2-A003982(Δ[A100196(n)])]` -/
def P13266952084577220981.Spec : Prop :=
  ∀ n, P13266952084577220981.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P3971871916513178313

`∑[2-A004442(Δ[A100196(n)])]`
-/

namespace A135674.P3971871916513178313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A004442 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P3971871916513178313

namespace A135674

/-- `∑[2-A004442(Δ[A100196(n)])]` -/
def P3971871916513178313.Spec : Prop :=
  ∀ n, P3971871916513178313.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P10025531322544862421

`∑[2-A005369(Δ[A100196(n)])]`
-/

namespace A135674.P10025531322544862421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A005369 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P10025531322544862421

namespace A135674

/-- `∑[2-A005369(Δ[A100196(n)])]` -/
def P10025531322544862421.Spec : Prop :=
  ∀ n, P10025531322544862421.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P5571011954875097900

`∑[2-A006355(Δ[A100196(n)])]`
-/

namespace A135674.P5571011954875097900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006355 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P5571011954875097900

namespace A135674

/-- `∑[2-A006355(Δ[A100196(n)])]` -/
def P5571011954875097900.Spec : Prop :=
  ∀ n, P5571011954875097900.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P3133378664779338878

`∑[2-A008611(Δ[A100196(n)])]`
-/

namespace A135674.P3133378664779338878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008611 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135674.P3133378664779338878

namespace A135674

/-- `∑[2-A008611(Δ[A100196(n)])]` -/
def P3133378664779338878.Spec : Prop :=
  ∀ n, P3133378664779338878.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P4500160932821685196

`A032514(n+1)+1-A032514(n)+n`
-/

namespace A135674.P4500160932821685196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032514 (n + 1) + (1 - A032514 n + (n : ℤ))

end

end A135674.P4500160932821685196

namespace A135674

/-- `A032514(n+1)+1-A032514(n)+n` -/
def P4500160932821685196.Spec : Prop :=
  ∀ n, P4500160932821685196.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P17322526427984483265

`A135668(n+1)+A028391(n)-A135671(n+1)`
-/

namespace A135674.P17322526427984483265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1) + (A028391 n - A135671 (n + 1))

end

end A135674.P17322526427984483265

namespace A135674

/-- `A135668(n+1)+A028391(n)-A135671(n+1)` -/
def P17322526427984483265.Spec : Prop :=
  ∀ n, P17322526427984483265.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P10036274189227618740

`A028391(n+1)+A028392(n+1)-A135671(n+1)`
-/

namespace A135674.P10036274189227618740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (n + 1) + (A028392 (n + 1) - A135671 (n + 1))

end

end A135674.P10036274189227618740

namespace A135674

/-- `A028391(n+1)+A028392(n+1)-A135671(n+1)` -/
def P10036274189227618740.Spec : Prop :=
  ∀ n, P10036274189227618740.a n = A135674 (n + 1)

end A135674

/-! ## A135674.P16185296458813747327

`A135672(n+1)+A135673(n+1)-A135671(n+1)`
-/

namespace A135674.P16185296458813747327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (n + 1) + (A135673 (n + 1) - A135671 (n + 1))

end

end A135674.P16185296458813747327

namespace A135674

/-- `A135672(n+1)+A135673(n+1)-A135671(n+1)` -/
def P16185296458813747327.Spec : Prop :=
  ∀ n, P16185296458813747327.a n = A135674 (n + 1)

end A135674

/-!
# A135675: a(n) = ceiling(n^(4/3) - n).

The programs for A135675, the canonical program `A135675.P6615274164351022367` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135675 has offset 1).

The definition of A135675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^(4/3)-(n+1))` (program `A135675.P6615274164351022367`, by `A135675.P6615274164351022367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135675.P6615274164351022367

`ceil((n+1)^(4/3)-(n+1))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135675

/-- `ceil((n+1)^(4/3)-(n+1))` -/
def P6615274164351022367.Spec : Prop :=
  ∀ n, P6615274164351022367.a n = A135675 (n + 1)

theorem P6615274164351022367.correct : P6615274164351022367.Spec := by
  intro n
  simp only [A135675, Nat.add_sub_cancel]

end A135675

/-! ## A135675.P1986900746660072486

`A134917(n+1)-(n+1)`
-/

namespace A135675.P1986900746660072486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134917 (n + 1) - (n + 1 : ℤ)

end

end A135675.P1986900746660072486

namespace A135675

/-- `A134917(n+1)-(n+1)` -/
def P1986900746660072486.Spec : Prop :=
  ∀ n, P1986900746660072486.a n = A135675 (n + 1)

end A135675

/-! ## A135675.P13422047492500834575

`A135677(n+1)-2*(n+1)`
-/

namespace A135675.P13422047492500834575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (n + 1) - (2 * (n + 1) : ℤ)

end

end A135675.P13422047492500834575

namespace A135675

/-- `A135677(n+1)-2*(n+1)` -/
def P13422047492500834575.Spec : Prop :=
  ∀ n, P13422047492500834575.a n = A135675 (n + 1)

end A135675

/-! ## A135675.P8237191246904674665

`A064524(n+1)+A135676(n+1)-A064524(n)`
-/

namespace A135675.P8237191246904674665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 (n + 1) + (A135676 (n + 1) - A064524 n)

end

end A135675.P8237191246904674665

namespace A135675

/-- `A064524(n+1)+A135676(n+1)-A064524(n)` -/
def P8237191246904674665.Spec : Prop :=
  ∀ n, P8237191246904674665.a n = A135675 (n + 1)

end A135675

/-! ## A135675.P13579460138470146758

`A135671(n+1)+A135676(n+1)-A135672(n+1)`
-/

namespace A135675.P13579460138470146758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135671 (n + 1) + (A135676 (n + 1) - A135672 (n + 1))

end

end A135675.P13579460138470146758

namespace A135675

/-- `A135671(n+1)+A135676(n+1)-A135672(n+1)` -/
def P13579460138470146758.Spec : Prop :=
  ∀ n, P13579460138470146758.a n = A135675 (n + 1)

end A135675

/-! ## A135675.P4358131143771151317

`A135673(n+1)+A135676(n+1)-A135674(n+1)`
-/

namespace A135675.P4358131143771151317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135673 (n + 1) + (A135676 (n + 1) - A135674 (n + 1))

end

end A135675.P4358131143771151317

namespace A135675

/-- `A135673(n+1)+A135676(n+1)-A135674(n+1)` -/
def P4358131143771151317.Spec : Prop :=
  ∀ n, P4358131143771151317.a n = A135675 (n + 1)

end A135675

/-!
# A135676: a(n) = floor(n^(4/3) - n).

The programs for A135676, the canonical program `A135676.P9181217313399376432` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135676 has offset 1).

The definition of A135676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^(4/3)-(n+1))` (program `A135676.P9181217313399376432`, by `A135676.P9181217313399376432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135676.P9181217313399376432

`floor((n+1)^(4/3)-(n+1))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135676

/-- `floor((n+1)^(4/3)-(n+1))` -/
def P9181217313399376432.Spec : Prop :=
  ∀ n, P9181217313399376432.a n = A135676 (n + 1)

theorem P9181217313399376432.correct : P9181217313399376432.Spec := by
  intro n
  simp only [A135676, Nat.add_sub_cancel]

end A135676

/-! ## A135676.P16768386642294213806

`A135678(n+1)-2*(n+1)`
-/

namespace A135676.P16768386642294213806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135678 (n + 1) - (2 * (n + 1) : ℤ)

end

end A135676.P16768386642294213806

namespace A135676

/-- `A135678(n+1)-2*(n+1)` -/
def P16768386642294213806.Spec : Prop :=
  ∀ n, P16768386642294213806.a n = A135676 (n + 1)

end A135676

/-! ## A135676.P15961974152422457032

`A135678(n+1)-A016789(n)+n`
-/

namespace A135676.P15961974152422457032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135678 (n + 1) - A016789 n + (n : ℤ)

end

end A135676.P15961974152422457032

namespace A135676

/-- `A135678(n+1)-A016789(n)+n` -/
def P15961974152422457032.Spec : Prop :=
  ∀ n, P15961974152422457032.a n = A135676 (n + 1)

end A135676

/-! ## A135676.P7127123423952500326

`A135672(n+1)+A135675(n+1)-A135671(n+1)`
-/

namespace A135676.P7127123423952500326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (n + 1) + (A135675 (n + 1) - A135671 (n + 1))

end

end A135676.P7127123423952500326

namespace A135676

/-- `A135672(n+1)+A135675(n+1)-A135671(n+1)` -/
def P7127123423952500326.Spec : Prop :=
  ∀ n, P7127123423952500326.a n = A135676 (n + 1)

end A135676

/-! ## A135676.P10807783479588068153

`A135674(n+1)+A135675(n+1)-A135673(n+1)`
-/

namespace A135676.P10807783479588068153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135674 (n + 1) + (A135675 (n + 1) - A135673 (n + 1))

end

end A135676.P10807783479588068153

namespace A135676

/-- `A135674(n+1)+A135675(n+1)-A135673(n+1)` -/
def P10807783479588068153.Spec : Prop :=
  ∀ n, P10807783479588068153.a n = A135676 (n + 1)

end A135676

/-! ## A135676.P2984312321531196262

`A135677(n+1)-(A135673(n+1)+A135671(n+1))`
-/

namespace A135676.P2984312321531196262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (n + 1) - (A135673 (n + 1) + A135671 (n + 1))

end

end A135676.P2984312321531196262

namespace A135676

/-- `A135677(n+1)-(A135673(n+1)+A135671(n+1))` -/
def P2984312321531196262.Spec : Prop :=
  ∀ n, P2984312321531196262.a n = A135676 (n + 1)

end A135676

/-! ## A135676.P7665031106675273532

`A135675(n+1)+A135678(n+1)-A135677(n+1)`
-/

namespace A135676.P7665031106675273532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135675 (n + 1) + (A135678 (n + 1) - A135677 (n + 1))

end

end A135676.P7665031106675273532

namespace A135676

/-- `A135675(n+1)+A135678(n+1)-A135677(n+1)` -/
def P7665031106675273532.Spec : Prop :=
  ∀ n, P7665031106675273532.a n = A135676 (n + 1)

end A135676

/-! ## A135676.P10211176309558051120

`∑[Δ[A129011(n)]-1]`
-/

namespace A135676.P10211176309558051120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135676.P10211176309558051120

namespace A135676

/-- `∑[Δ[A129011(n)]-1]` -/
def P10211176309558051120.Spec : Prop :=
  ∀ n, P10211176309558051120.a n = A135676 (n + 1)

end A135676

/-! ## A135676.P17281497150936290060

`A129011(n+1)-(n+1)`
-/

namespace A135676.P17281497150936290060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 (n + 1) - (n + 1 : ℤ)

end

end A135676.P17281497150936290060

namespace A135676

/-- `A129011(n+1)-(n+1)` -/
def P17281497150936290060.Spec : Prop :=
  ∀ n, P17281497150936290060.a n = A135676 (n + 1)

end A135676

/-! ## A135676.P14476519320059894301

`A028391(A135675(n+1)+n)-A135671(n+1)`
-/

namespace A135676.P14476519320059894301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A135675 (n + 1) + (n : ℤ)).toNat - A135671 (n + 1)

end

end A135676.P14476519320059894301

namespace A135676

/-- `A028391(A135675(n+1)+n)-A135671(n+1)` -/
def P14476519320059894301.Spec : Prop :=
  ∀ n, P14476519320059894301.a n = A135676 (n + 1)

end A135676

/-! ## A135676.P2925028209425414215

`A028391(A135678(n+1)-(n+1))-A135671(n+1)`
-/

namespace A135676.P2925028209425414215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A135678 (n + 1) - (n + 1 : ℤ)).toNat - A135671 (n + 1)

end

end A135676.P2925028209425414215

namespace A135676

/-- `A028391(A135678(n+1)-(n+1))-A135671(n+1)` -/
def P2925028209425414215.Spec : Prop :=
  ∀ n, P2925028209425414215.a n = A135676 (n + 1)

end A135676

/-! ## A135676.P13913945548783067801

`A100196((n+1)²)-(n+1)`
-/

namespace A135676.P13913945548783067801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ((n + 1) ^ 2) - (n + 1 : ℤ)

end

end A135676.P13913945548783067801

namespace A135676

/-- `A100196((n+1)²)-(n+1)` -/
def P13913945548783067801.Spec : Prop :=
  ∀ n, P13913945548783067801.a n = A135676 (n + 1)

end A135676

/-!
# A135677: a(n) = ceiling(n^(4/3)+n).

The programs for A135677, the canonical program `A135677.P6928746537024799484` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135677 has offset 1).

The definition of A135677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^(4/3)+n+1)` (program `A135677.P6928746537024799484`, by `A135677.P6928746537024799484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135677.P6928746537024799484

`ceil((n+1)^(4/3)+n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135677

/-- `ceil((n+1)^(4/3)+n+1)` -/
def P6928746537024799484.Spec : Prop :=
  ∀ n, P6928746537024799484.a n = A135677 (n + 1)

theorem P6928746537024799484.correct : P6928746537024799484.Spec := by
  intro n
  simp only [A135677, Nat.add_sub_cancel]

end A135677

/-! ## A135677.P5883823209111760434

`A134917(n+1)+1+n`
-/

namespace A135677.P5883823209111760434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134917 (n + 1) + 1 + (n : ℤ)

end

end A135677.P5883823209111760434

namespace A135677

/-- `A134917(n+1)+1+n` -/
def P5883823209111760434.Spec : Prop :=
  ∀ n, P5883823209111760434.a n = A135677 (n + 1)

end A135677

/-! ## A135677.P5896501859226280810

`A135675(n+1)+2*(n+1)`
-/

namespace A135677.P5896501859226280810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135675 (n + 1) + (2 * (n + 1) : ℤ)

end

end A135677.P5896501859226280810

namespace A135677

/-- `A135675(n+1)+2*(n+1)` -/
def P5896501859226280810.Spec : Prop :=
  ∀ n, P5896501859226280810.a n = A135677 (n + 1)

end A135677

/-! ## A135677.P4894942373937281208

`A135668(n+1)+A135675(n+1)+A028391(n)`
-/

namespace A135677.P4894942373937281208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1) + (A135675 (n + 1) + A028391 n)

end

end A135677.P4894942373937281208

namespace A135677

/-- `A135668(n+1)+A135675(n+1)+A028391(n)` -/
def P4894942373937281208.Spec : Prop :=
  ∀ n, P4894942373937281208.a n = A135677 (n + 1)

end A135677

/-! ## A135677.P12843200104035920307

`A135671(n+1)+A135675(n+1)+A135674(n+1)`
-/

namespace A135677.P12843200104035920307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135671 (n + 1) + (A135675 (n + 1) + A135674 (n + 1))

end

end A135677.P12843200104035920307

namespace A135677

/-- `A135671(n+1)+A135675(n+1)+A135674(n+1)` -/
def P12843200104035920307.Spec : Prop :=
  ∀ n, P12843200104035920307.a n = A135677 (n + 1)

end A135677

/-! ## A135677.P4694015090975283156

`A135671(n+1)+A135676(n+1)+A135673(n+1)`
-/

namespace A135677.P4694015090975283156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135671 (n + 1) + (A135676 (n + 1) + A135673 (n + 1))

end

end A135677.P4694015090975283156

namespace A135677

/-- `A135671(n+1)+A135676(n+1)+A135673(n+1)` -/
def P4694015090975283156.Spec : Prop :=
  ∀ n, P4694015090975283156.a n = A135677 (n + 1)

end A135677

/-! ## A135677.P11262787043715388674

`A135672(n+1)+A135675(n+1)+A135673(n+1)`
-/

namespace A135677.P11262787043715388674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (n + 1) + (A135675 (n + 1) + A135673 (n + 1))

end

end A135677.P11262787043715388674

namespace A135677

/-- `A135672(n+1)+A135675(n+1)+A135673(n+1)` -/
def P11262787043715388674.Spec : Prop :=
  ∀ n, P11262787043715388674.a n = A135677 (n + 1)

end A135677

/-! ## A135677.P8866163931990194023

`A135673(n+1)+A135678(n+1)-A135674(n+1)`
-/

namespace A135677.P8866163931990194023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135673 (n + 1) + (A135678 (n + 1) - A135674 (n + 1))

end

end A135677.P8866163931990194023

namespace A135677

/-- `A135673(n+1)+A135678(n+1)-A135674(n+1)` -/
def P8866163931990194023.Spec : Prop :=
  ∀ n, P8866163931990194023.a n = A135677 (n + 1)

end A135677

/-! ## A135677.P4302397000528854465

`A135673(n+1)+A028391(A135675(n+1)+n)`
-/

namespace A135677.P4302397000528854465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135673 (n + 1) + A028391 (A135675 (n + 1) + (n : ℤ)).toNat

end

end A135677.P4302397000528854465

namespace A135677

/-- `A135673(n+1)+A028391(A135675(n+1)+n)` -/
def P4302397000528854465.Spec : Prop :=
  ∀ n, P4302397000528854465.a n = A135677 (n + 1)

end A135677

/-! ## A135677.P938371535911735127

`A061054(A134917(n+1))`
-/

namespace A135677.P938371535911735127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061054 (A134917 (n + 1)).toNat

end

end A135677.P938371535911735127

namespace A135677

/-- `A061054(A134917(n+1))` -/
def P938371535911735127.Spec : Prop :=
  ∀ n, P938371535911735127.a n = A135677 (n + 1)

end A135677

/-!
# A135678: Floor(n^(4/3)+n).

The programs for A135678, the canonical program `A135678.P10496671285708411244` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135678 has offset 1).

The definition of A135678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^(4/3)+n+1)` (program `A135678.P10496671285708411244`, by `A135678.P10496671285708411244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135678.P10496671285708411244

`floor((n+1)^(4/3)+n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135678

/-- `floor((n+1)^(4/3)+n+1)` -/
def P10496671285708411244.Spec : Prop :=
  ∀ n, P10496671285708411244.a n = A135678 (n + 1)

theorem P10496671285708411244.correct : P10496671285708411244.Spec := by
  intro n
  simp only [A135678, Nat.add_sub_cancel]

end A135678

/-! ## A135678.P4157119123375053992

`A135676(n+1)+2*(n+1)`
-/

namespace A135678.P4157119123375053992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135676 (n + 1) + (2 * (n + 1) : ℤ)

end

end A135678.P4157119123375053992

namespace A135678

/-- `A135676(n+1)+2*(n+1)` -/
def P4157119123375053992.Spec : Prop :=
  ∀ n, P4157119123375053992.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P5697511738845882325

`A134917(n+1)+Δ[A048766(n)]+n`
-/

namespace A135678.P5697511738845882325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134917 (n + 1) + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A135678.P5697511738845882325

namespace A135678

/-- `A134917(n+1)+Δ[A048766(n)]+n` -/
def P5697511738845882325.Spec : Prop :=
  ∀ n, P5697511738845882325.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P4471204725380956865

`A135668(n+1)+A135676(n+1)+A028391(n)`
-/

namespace A135678.P4471204725380956865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1) + (A135676 (n + 1) + A028391 n)

end

end A135678.P4471204725380956865

namespace A135678

/-- `A135668(n+1)+A135676(n+1)+A028391(n)` -/
def P4471204725380956865.Spec : Prop :=
  ∀ n, P4471204725380956865.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P12857956883990604777

`A135677(n+1)+A064524(n)-A064524(n+1)`
-/

namespace A135678.P12857956883990604777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (n + 1) + (A064524 n - A064524 (n + 1))

end

end A135678.P12857956883990604777

namespace A135678

/-- `A135677(n+1)+A064524(n)-A064524(n+1)` -/
def P12857956883990604777.Spec : Prop :=
  ∀ n, P12857956883990604777.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P4268959122199641817

`A135671(n+1)+A135676(n+1)+A135674(n+1)`
-/

namespace A135678.P4268959122199641817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135671 (n + 1) + (A135676 (n + 1) + A135674 (n + 1))

end

end A135678.P4268959122199641817

namespace A135678

/-- `A135671(n+1)+A135676(n+1)+A135674(n+1)` -/
def P4268959122199641817.Spec : Prop :=
  ∀ n, P4268959122199641817.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P2049820928375165928

`A135672(n+1)+A135675(n+1)+A135674(n+1)`
-/

namespace A135678.P2049820928375165928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (n + 1) + (A135675 (n + 1) + A135674 (n + 1))

end

end A135678.P2049820928375165928

namespace A135678

/-- `A135672(n+1)+A135675(n+1)+A135674(n+1)` -/
def P2049820928375165928.Spec : Prop :=
  ∀ n, P2049820928375165928.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P4207956269433494276

`A135672(n+1)+A135676(n+1)+A135673(n+1)`
-/

namespace A135678.P4207956269433494276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (n + 1) + (A135676 (n + 1) + A135673 (n + 1))

end

end A135678.P4207956269433494276

namespace A135678

/-- `A135672(n+1)+A135676(n+1)+A135673(n+1)` -/
def P4207956269433494276.Spec : Prop :=
  ∀ n, P4207956269433494276.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P9965904298426327451

`A135672(n+1)+A135677(n+1)-A135671(n+1)`
-/

namespace A135678.P9965904298426327451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135672 (n + 1) + (A135677 (n + 1) - A135671 (n + 1))

end

end A135678.P9965904298426327451

namespace A135678

/-- `A135672(n+1)+A135677(n+1)-A135671(n+1)` -/
def P9965904298426327451.Spec : Prop :=
  ∀ n, P9965904298426327451.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P7650549057795067209

`A135674(n+1)+A135677(n+1)-A135673(n+1)`
-/

namespace A135678.P7650549057795067209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135674 (n + 1) + (A135677 (n + 1) - A135673 (n + 1))

end

end A135678.P7650549057795067209

namespace A135678

/-- `A135674(n+1)+A135677(n+1)-A135673(n+1)` -/
def P7650549057795067209.Spec : Prop :=
  ∀ n, P7650549057795067209.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P7671762759125650688

`∑[Δ[A129011(n)]+1]`
-/

namespace A135678.P7671762759125650688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135678.P7671762759125650688

namespace A135678

/-- `∑[Δ[A129011(n)]+1]` -/
def P7671762759125650688.Spec : Prop :=
  ∀ n, P7671762759125650688.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P4257033767105879264

`A129011(n+1)+1+n`
-/

namespace A135678.P4257033767105879264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 (n + 1) + 1 + (n : ℤ)

end

end A135678.P4257033767105879264

namespace A135678

/-- `A129011(n+1)+1+n` -/
def P4257033767105879264.Spec : Prop :=
  ∀ n, P4257033767105879264.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P12014371389250735925

`A135674(n+1)+A028391(A135675(n+1)+n)`
-/

namespace A135678.P12014371389250735925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135674 (n + 1) + A028391 (A135675 (n + 1) + (n : ℤ)).toNat

end

end A135678.P12014371389250735925

namespace A135678

/-- `A135674(n+1)+A028391(A135675(n+1)+n)` -/
def P12014371389250735925.Spec : Prop :=
  ∀ n, P12014371389250735925.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P5867321701713965911

`A077113((n+1)²)+n`
-/

namespace A135678.P5867321701713965911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 ((n + 1) ^ 2) + (n : ℤ)

end

end A135678.P5867321701713965911

namespace A135678

/-- `A077113((n+1)²)+n` -/
def P5867321701713965911.Spec : Prop :=
  ∀ n, P5867321701713965911.a n = A135678 (n + 1)

end A135678

/-! ## A135678.P5933826433980089068

`A100196((n+1)²)+n+1`
-/

namespace A135678.P5933826433980089068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A135678.P5933826433980089068

namespace A135678

/-- `A100196((n+1)²)+n+1` -/
def P5933826433980089068.Spec : Prop :=
  ∀ n, P5933826433980089068.a n = A135678 (n + 1)

end A135678

/-!
# A135679: a(n) = n if n = 1 or if n is prime. Otherwise, a(n) = 2 if n is even and a(n) = 3 if n is odd.

The programs for A135679, there is no canonical definition to state claims against.
-/

/-! ## A135679.P9068214605405913028

`ceil((A020639(n+1)²+2*n)/(n+3))`
-/

namespace A135679.P9068214605405913028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (n + 1) ^ 2 + (2 * n : ℤ) : ℚ) / (n + 3 : ℚ)⌉

end

end A135679.P9068214605405913028

/-! ## A135679.P8984349041700439017

`A020639(gcd(n, A073758(n+1))+1)`
-/

namespace A135679.P8984349041700439017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n : ℤ) (A073758 (n + 1)) + 1)

end

end A135679.P8984349041700439017

/-! ## A135679.P1444500036565260895

`A020639(A008486(A020639(n+1))%(2*(n+1)))`
-/

namespace A135679.P1444500036565260895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A008486 (A020639 (n + 1)).toNat) (2 * (n + 1) : ℤ)).toNat

end

end A135679.P1444500036565260895

/-! ## A135679.P4744490517464700770

`A020639((n+1)*gcd(3, A000142(A000005(n+1))))`
-/

namespace A135679.P4744490517464700770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) * Int.gcd 3 (A000142 (A000005 (n + 1)).toNat))

end

end A135679.P4744490517464700770

/-! ## A135679.P4584153891226793109

`A066247(n+1)+A020639(A020639(n+1)-A066247(n+1))`
-/

namespace A135679.P4584153891226793109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) + A020639 (A020639 (n + 1) - A066247 (n + 1)).toNat

end

end A135679.P4584153891226793109

/-! ## A135679.P11391142766638695110

`A020639(A020639(n+1)*A056295(A000005(n+1)+1))`
-/

namespace A135679.P11391142766638695110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 1) * A056295 (A000005 (n + 1) + 1).toNat).toNat

end

end A135679.P11391142766638695110

/-! ## A135679.P6430922880328862939

`A020639((A073758(n+1)+A020639(n+1))*A020639(n+1))`
-/

namespace A135679.P6430922880328862939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((A073758 (n + 1) + A020639 (n + 1)) * A020639 (n + 1)).toNat

end

end A135679.P6430922880328862939

/-! ## A135679.P7516949598462224285

`A020639((n+1)*A032742(3^A001222(n+1)))`
-/

namespace A135679.P7516949598462224285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A032742 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat).toNat

end

end A135679.P7516949598462224285

/-! ## A135679.P18177252741696280364

`A020639((n+1)*A002426(A069157(n+1)))`
-/

namespace A135679.P18177252741696280364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A002426 (A069157 (n + 1)).toNat).toNat

end

end A135679.P18177252741696280364

/-!
# A135680: a(n) = n if n = 1 or if n is prime. Otherwise, n = 4 if n is even and n = 5 if n is odd.

The programs for A135680, there is no canonical definition to state claims against.
-/

/-! ## A135680.P4699664823533999102

`A135679(n+1)+2*A066247(n+1)`
-/

namespace A135680.P4699664823533999102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135679 (n + 1) + 2 * A066247 (n + 1)

end

end A135680.P4699664823533999102

/-! ## A135680.P2785493331703863455

`A135679(n+1)+A105700(A179312(n+1))`
-/

namespace A135680.P2785493331703863455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135679 (n + 1) + A105700 (A179312 (n + 1)).toNat

end

end A135680.P2785493331703863455

/-! ## A135680.P17447724322859138701

`A135679(n+1)+2*A001222(A014673(n+1))`
-/

namespace A135680.P17447724322859138701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135679 (n + 1) + 2 * A001222 (A014673 (n + 1)).toNat

end

end A135680.P17447724322859138701

/-! ## A135680.P10224685380819926955

`A135679(n+1)+A001222(A014673(n+1)²)`
-/

namespace A135680.P10224685380819926955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135679 (n + 1) + A001222 (A014673 (n + 1) ^ 2).toNat

end

end A135680.P10224685380819926955

/-! ## A135680.P3540203835599525239

`xor(A073758(A165824(n+1)), A135679(n+1))`
-/

namespace A135680.P3540203835599525239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A073758 (A165824 (n + 1)).toNat) (A135679 (n + 1))

end

end A135680.P3540203835599525239

/-! ## A135680.P6733537875848257642

`A135679(n+1)+A086134(A014673(n+1)²)`
-/

namespace A135680.P6733537875848257642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135679 (n + 1) + A086134 (A014673 (n + 1) ^ 2).toNat

end

end A135680.P6733537875848257642

/-! ## A135680.P6121701315020542472

`A135679(n+1)+A086134(A032742(n+1)²)`
-/

namespace A135680.P6121701315020542472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135679 (n + 1) + A086134 (A032742 (n + 1) ^ 2).toNat

end

end A135680.P6121701315020542472

/-! ## A135680.P13081359997198782645

`A135679(n+1)+A086134(A317545(n+1)²)`
-/

namespace A135680.P13081359997198782645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135679 (n + 1) + A086134 (A317545 (n + 1) ^ 2).toNat

end

end A135680.P13081359997198782645

/-! ## A135680.P2749183412834899233

`A135679(n+1)+A086134(A086134(n+1)²)`
-/

namespace A135680.P2749183412834899233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135679 (n + 1) + A086134 (A086134 (n + 1) ^ 2).toNat

end

end A135680.P2749183412834899233

/-!
# A135681: a(n)=n if n=prime. Otherwise, a(n)=4 if n is even and a(n)=1 if n is odd.

The programs for A135681, the canonical program `A135681.P17512842736067091502` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135681 has offset 1).

The definition of A135681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135681.P10312334550996118509

`gcd(A135680(n+1), A135682(n+1))`
-/

namespace A135681.P10312334550996118509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135680 (n + 1)) (A135682 (n + 1))

end

end A135681.P10312334550996118509

namespace A135681

/-- `gcd(A135680(n+1), A135682(n+1))` -/
def P10312334550996118509.Spec : Prop :=
  ∀ n, (P10312334550996118509.a n : ℤ) = A135681 (n + 1)

end A135681

/-! ## A135681.P18224530258025112895

`gcd(A130065(n+1), A383485(n+1))`
-/

namespace A135681.P18224530258025112895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130065 (n + 1)) (A383485 (n + 1))

end

end A135681.P18224530258025112895

namespace A135681

/-- `gcd(A130065(n+1), A383485(n+1))` -/
def P18224530258025112895.Spec : Prop :=
  ∀ n, (P18224530258025112895.a n : ℤ) = A135681 (n + 1)

end A135681

/-! ## A135681.P17512842736067091502

`gcd((2*A151800(n))², A062509(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A135681

/-- `gcd((2*A151800(n))², A062509(n+1))` -/
def P17512842736067091502.Spec : Prop :=
  ∀ n, (P17512842736067091502.a n : ℤ) = A135681 (n + 1)

theorem P17512842736067091502.correct : P17512842736067091502.Spec := by
  intro n
  simp only [A135681, Nat.add_sub_cancel]

end A135681

/-! ## A135681.P15505043855022424710

`A089026(A141310(n))²/A089026(n+1)`
-/

namespace A135681.P15505043855022424710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089026 (A141310 n).toNat ^ 2 : ℚ) / (A089026 (n + 1) : ℚ)

end

end A135681.P15505043855022424710

namespace A135681

/-- `A089026(A141310(n))²/A089026(n+1)` -/
def P15505043855022424710.Spec : Prop :=
  ∀ n, P15505043855022424710.a n = (A135681 (n + 1) : ℚ)

end A135681

/-! ## A135681.P12660117387845185866

`A135682(n+1)%A301289(A135679(n+1))`
-/

namespace A135681.P12660117387845185866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135682 (n + 1)) (A301289 (A135679 (n + 1)).toNat)

end

end A135681.P12660117387845185866

namespace A135681

/-- `A135682(n+1)%A301289(A135679(n+1))` -/
def P12660117387845185866.Spec : Prop :=
  ∀ n, P12660117387845185866.a n = A135681 (n + 1)

end A135681

/-! ## A135681.P3387802423148569372

`A089026(n+1)+A135680(n+1)-A089026(A135680(n+1))`
-/

namespace A135681.P3387802423148569372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) + (A135680 (n + 1) - A089026 (A135680 (n + 1)).toNat)

end

end A135681.P3387802423148569372

namespace A135681

/-- `A089026(n+1)+A135680(n+1)-A089026(A135680(n+1))` -/
def P3387802423148569372.Spec : Prop :=
  ∀ n, P3387802423148569372.a n = A135681 (n + 1)

end A135681

/-! ## A135681.P10655885648008165666

`A089026(n+1)+A135682(n+1)-A089026(A135682(n+1))`
-/

namespace A135681.P10655885648008165666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) + (A135682 (n + 1) - A089026 (A135682 (n + 1)).toNat)

end

end A135681.P10655885648008165666

namespace A135681

/-- `A089026(n+1)+A135682(n+1)-A089026(A135682(n+1))` -/
def P10655885648008165666.Spec : Prop :=
  ∀ n, P10655885648008165666.a n = A135681 (n + 1)

end A135681

/-! ## A135681.P2053101999156295525

`A135680(n+1)/A089026(A135680(n+1)/A089026(n+1))`
-/

namespace A135681.P2053101999156295525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135680 (n + 1) : ℚ) / (A089026 (SequenceMachineLib.roundAway ((A135680 (n + 1) : ℚ) / (A089026 (n + 1) : ℚ))).toNat : ℚ)

end

end A135681.P2053101999156295525

namespace A135681

/-- `A135680(n+1)/A089026(A135680(n+1)/A089026(n+1))` -/
def P2053101999156295525.Spec : Prop :=
  ∀ n, P2053101999156295525.a n = (A135681 (n + 1) : ℚ)

end A135681

/-! ## A135681.P5398333389915534485

`A135682(n+1)/A089026(A135682(n+1)/A089026(n+1))`
-/

namespace A135681.P5398333389915534485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135682 (n + 1) : ℚ) / (A089026 (SequenceMachineLib.roundAway ((A135682 (n + 1) : ℚ) / (A089026 (n + 1) : ℚ))).toNat : ℚ)

end

end A135681.P5398333389915534485

namespace A135681

/-- `A135682(n+1)/A089026(A135682(n+1)/A089026(n+1))` -/
def P5398333389915534485.Spec : Prop :=
  ∀ n, P5398333389915534485.a n = (A135681 (n + 1) : ℚ)

end A135681

/-! ## A135681.P1963379825043225867

`A020639(n+1)^A005359(A020639(n+1)%(n+1))`
-/

namespace A135681.P1963379825043225867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A005359 (Int.tmod (A020639 (n + 1)) (n + 1 : ℤ)).toNat : ℤ)

end

end A135681.P1963379825043225867

namespace A135681

/-- `A020639(n+1)^A005359(A020639(n+1)%(n+1))` -/
def P1963379825043225867.Spec : Prop :=
  ∀ n, P1963379825043225867.a n = (A135681 (n + 1) : ℚ)

end A135681

/-! ## A135681.P15503643728594169082

`A020639(A005171(n+1)+A020639(n+1)²)-A005171(n+1)`
-/

namespace A135681.P15503643728594169082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005171 (n + 1) + A020639 (n + 1) ^ 2).toNat - A005171 (n + 1)

end

end A135681.P15503643728594169082

namespace A135681

/-- `A020639(A005171(n+1)+A020639(n+1)²)-A005171(n+1)` -/
def P15503643728594169082.Spec : Prop :=
  ∀ n, P15503643728594169082.a n = A135681 (n + 1)

end A135681

/-! ## A135681.P4407603747198674630

`A038387(A103390(n+2))`
-/

namespace A135681.P4407603747198674630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (A103390 (n + 2)).toNat

end

end A135681.P4407603747198674630

namespace A135681

/-- `A038387(A103390(n+2))` -/
def P4407603747198674630.Spec : Prop :=
  ∀ n, P4407603747198674630.a n = A135681 (n + 1)

end A135681

/-! ## A135681.P16551376449165760185

`A135517(n²)²*A089026(n+1)`
-/

namespace A135681.P16551376449165760185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (n ^ 2) ^ 2 * A089026 (n + 1)

end

end A135681.P16551376449165760185

namespace A135681

/-- `A135517(n²)²*A089026(n+1)` -/
def P16551376449165760185.Spec : Prop :=
  ∀ n, P16551376449165760185.a n = A135681 (n + 1)

end A135681

/-!
# A135682: a(n)=n if n=1 or if n=prime. Otherwise, n=4 if n is even and n=7 if n is odd.

The programs for A135682, there is no canonical definition to state claims against.
-/

/-! ## A135682.P1249324066219577572

`A083245(lcm(A135679(n+1), A135680(n+1)))`
-/

namespace A135682.P1249324066219577572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (Int.lcm (A135679 (n + 1)) (A135680 (n + 1)))

end

end A135682.P1249324066219577572

/-! ## A135682.P198548310417331110

`A135680(or(A135679(n+1), A135680(n+1)))`
-/

namespace A135682.P198548310417331110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135680 (Int.lor (A135679 (n + 1)) (A135680 (n + 1))).toNat

end

end A135682.P198548310417331110

/-! ## A135682.P14745291077904629769

`A083245(2*A135680(n+1)-A135679(n+1))`
-/

namespace A135682.P14745291077904629769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (2 * A135680 (n + 1) - A135679 (n + 1)).toNat

end

end A135682.P14745291077904629769

/-! ## A135682.P14813578141430024442

`A135680(2*A135680(n+1)-A135679(n+1))`
-/

namespace A135682.P14813578141430024442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135680 (2 * A135680 (n + 1) - A135679 (n + 1)).toNat

end

end A135682.P14813578141430024442

/-! ## A135682.P6439195057923826888

`A083245(A135680(n+1)+A135680(n+1)-A135679(n+1))`
-/

namespace A135682.P6439195057923826888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083245 (A135680 (n + 1) + (A135680 (n + 1) - A135679 (n + 1))).toNat

end

end A135682.P6439195057923826888

/-! ## A135682.P2557060653155763449

`A135680(A135680(n+1)+A135680(n+1)-A135679(n+1))`
-/

namespace A135682.P2557060653155763449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135680 (A135680 (n + 1) + (A135680 (n + 1) - A135679 (n + 1))).toNat

end

end A135682.P2557060653155763449

/-! ## A135682.P15632535213885101168

`A135680(A135680(n+1)+2%A236937(n+1))`
-/

namespace A135682.P15632535213885101168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135680 (A135680 (n + 1) + Int.tmod 2 (A236937 (n + 1))).toNat

end

end A135682.P15632535213885101168

/-!
# A135684: a(n)=11 if n is a prime number. Otherwise, a(n)=n.

The programs for A135684, the canonical program `A135684.P5226085479409295214` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135684 has offset 1).

The definition of A135684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135684.P15391441056522935625

`xor(11, xor(11, n+1)*A005171(n+1))`
-/

namespace A135684.P15391441056522935625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 ((Nat.xor 11 (n + 1) : ℤ) * A005171 (n + 1))

end

end A135684.P15391441056522935625

namespace A135684

/-- `xor(11, xor(11, n+1)*A005171(n+1))` -/
def P15391441056522935625.Spec : Prop :=
  ∀ n, P15391441056522935625.a n = A135684 (n + 1)

end A135684

/-! ## A135684.P5226085479409295214

`(10-n)*A010051(n+1)+n+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135684

/-- `(10-n)*A010051(n+1)+n+1` -/
def P5226085479409295214.Spec : Prop :=
  ∀ n, P5226085479409295214.a n = A135684 (n + 1)

theorem P5226085479409295214.correct : P5226085479409295214.Spec := by
  intro n
  simp only [A135684, Nat.add_sub_cancel]

end A135684

/-! ## A135684.P18080769006853035487

`∑{d}[A061397(n+1), 6-#]+n+1`
-/

namespace A135684.P18080769006853035487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (6 - (d : ℤ)) + (n + 1 : ℤ)

end

end A135684.P18080769006853035487

namespace A135684

/-- `∑{d}[A061397(n+1), 6-#]+n+1` -/
def P18080769006853035487.Spec : Prop :=
  ∀ n, P18080769006853035487.a n = A135684 (n + 1)

end A135684

/-! ## A135684.P10214813893193636130

`A004452(A004452(n+1)*A005171(n+1))`
-/

namespace A135684.P10214813893193636130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004452 (A004452 (n + 1) * A005171 (n + 1)).toNat

end

end A135684.P10214813893193636130

namespace A135684

/-- `A004452(A004452(n+1)*A005171(n+1))` -/
def P10214813893193636130.Spec : Prop :=
  ∀ n, P10214813893193636130.a n = A135684 (n + 1)

end A135684

/-!
# A135685: Triangular sequence of the coefficients of the numerator of the rational recursive sequence for tan(n*y) with x = tan(y).

The programs for A135685, there is no canonical definition to state claims against.
-/

/-! ## A135685.P13246898525991745241

`A342561(A261515(ceil((n+1)/∏{p}[n+1, (n+1)/#]))+1)`
-/

namespace A135685.P13246898525991745241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342561 (A261515 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat + 1).toNat

end

end A135685.P13246898525991745241

/-! ## A135685.P7495986682433388488

`A193683(n)%∏{e}[A287468(n), A018247(#)]`
-/

namespace A135685.P7495986682433388488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193683 n) (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018247 (Nat.factorization (f1 n).natAbs p))

end

end A135685.P7495986682433388488

/-!
# A135686: a(n) = a(n-1) + A000045(n)*a(n-2), a(1) = 1, a(2) = 1.

The programs for A135686, the canonical program `A135686.P18015257705948421779` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135686 has offset 1).

The definition of A135686 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000045(n+1)*a(n-2)` (program `A135686.P18015257705948421779`, by `A135686.P18015257705948421779.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135686.P18015257705948421779

`a(n-1)+A000045(n+1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135686

/-- `a(n-1)+A000045(n+1)*a(n-2)` -/
def P18015257705948421779.Spec : Prop :=
  ∀ n, P18015257705948421779.a n = A135686 (n + 1)

theorem P18015257705948421779.correct : P18015257705948421779.Spec := by
  intro n
  simp only [A135686, Nat.add_sub_cancel]

end A135686

/-! ## A135686.P3467928169951138740

`∏[A000045(n+1)/a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A135686.P3467928169951138740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (A000045 (n + 1) : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135686.P3467928169951138740

namespace A135686

/-- `∏[A000045(n+1)/a(n-1)+1]` -/
def P3467928169951138740.Spec : Prop :=
  ∀ n, P3467928169951138740.a n = (A135686 (n + 1) : ℚ)

end A135686

/-! ## A135686.P11319696351604393668

`A166047(A192237(n+1))`
-/

namespace A135686.P11319696351604393668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166047 (A192237 (n + 1)).toNat

end

end A135686.P11319696351604393668

namespace A135686

/-- `A166047(A192237(n+1))` -/
def P11319696351604393668.Spec : Prop :=
  ∀ n, P11319696351604393668.a n = A135686 (n + 1)

end A135686

/-!
# A135687: a(n) = a(n-1) - A004001(n)*a(n-2), a(1) = 1, a(2) = 1.

The programs for A135687, the canonical program `A135687.P16842198993088872429` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135687 has offset 1).

The definition of A135687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-A004001(n+1)*a(n-2)` (program `A135687.P16842198993088872429`, by `A135687.P16842198993088872429.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135687.P16842198993088872429

`a(n-1)-A004001(n+1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135687

/-- `a(n-1)-A004001(n+1)*a(n-2)` -/
def P16842198993088872429.Spec : Prop :=
  ∀ n, P16842198993088872429.a n = A135687 (n + 1)

theorem P16842198993088872429.correct : P16842198993088872429.Spec := by
  intro n
  simp only [A135687, Nat.add_sub_cancel]

end A135687

/-!
# A135688: a(n) = A004001(n)*a(n-1) + a(n-2), for n > 2, with a(1) = a(2) = 1.

The programs for A135688, the canonical program `A135688.P5613016767241642201` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135688 has offset 1).

The definition of A135688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(n+1)*a(n-1)+a(n-2)` (program `A135688.P5613016767241642201`, by `A135688.P5613016767241642201.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135688.P5613016767241642201

`A004001(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135688

/-- `A004001(n+1)*a(n-1)+a(n-2)` -/
def P5613016767241642201.Spec : Prop :=
  ∀ n, P5613016767241642201.a n = A135688 (n + 1)

theorem P5613016767241642201.correct : P5613016767241642201.Spec := by
  intro n
  simp only [A135688, Nat.add_sub_cancel]

end A135688

/-! ## A135688.P17118374591636624842

`A105513(A006419(n))+round(sqrt(n+1))`
-/

namespace A135688.P17118374591636624842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105513 (A006419 n).toNat + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))

end

end A135688.P17118374591636624842

namespace A135688

/-- `A105513(A006419(n))+round(sqrt(n+1))` -/
def P17118374591636624842.Spec : Prop :=
  ∀ n, P17118374591636624842.a n = A135688 (n + 1)

end A135688

/-! ## A135688.P17765677889055292947

`A053693(A227845(n)+A034387(n+1))`
-/

namespace A135688.P17765677889055292947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053693 (A227845 n + A034387 (n + 1)).toNat

end

end A135688.P17765677889055292947

namespace A135688

/-- `A053693(A227845(n)+A034387(n+1))` -/
def P17765677889055292947.Spec : Prop :=
  ∀ n, P17765677889055292947.a n = A135688 (n + 1)

end A135688

/-!
# A135690: a(n) = a(n-2) - (a(n-1) - a(n-2)) if (n mod 2) = 0, otherwise a(n) = a(n-1) - (a(n-3) - a(n-4)), with a(0) = 0, a(1) = 1, a(2) = -1, a(3) = 2.

The programs for A135690, the canonical program `A135690.P8189763050900014003` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135690 has offset 0).

The definition of A135690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135690.P8189763050900014003

`2*(a(n-4)-2)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135690

/-- `2*(a(n-4)-2)` -/
def P8189763050900014003.Spec : Prop :=
  ∀ n, P8189763050900014003.a n = A135690 n

theorem P8189763050900014003.correct : P8189763050900014003.Spec := by
  intro n
  simp only [A135690]

end A135690

/-! ## A135690.P7364349454956786160

`a(n-4)+a(n-4)-4` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=2`
-/

namespace A135690.P7364349454956786160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 2] fun n a =>
  a (n - 4) + (a (n - 4) - 4)

end

end A135690.P7364349454956786160

namespace A135690

/-- `a(n-4)+a(n-4)-4` -/
def P7364349454956786160.Spec : Prop :=
  ∀ n, P7364349454956786160.a n = A135690 n

theorem P7364349454956786160.correct : P7364349454956786160.Spec := by
  intro n
  simp only [A135690, Nat.add_sub_cancel, A135690.P7364349454956786160.a, A135690.P8189763050900014003.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135690

/-! ## A135690.P11918273751661648654

`a(n-4)-(4-a(n-4))` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=2`
-/

namespace A135690.P11918273751661648654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 2] fun n a =>
  a (n - 4) - (4 - a (n - 4))

end

end A135690.P11918273751661648654

namespace A135690

/-- `a(n-4)-(4-a(n-4))` -/
def P11918273751661648654.Spec : Prop :=
  ∀ n, P11918273751661648654.a n = A135690 n

theorem P11918273751661648654.correct : P11918273751661648654.Spec := by
  intro n
  simp only [A135690, Nat.add_sub_cancel, A135690.P11918273751661648654.a, A135690.P8189763050900014003.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135690

/-!
# A135694: Period 6: repeat [1, -1, -1, -1, 0, 2].

The programs for A135694, the canonical program `A135694.P9656679266205361517` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135694 has offset 0).

The definition of A135694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135694.P9656679266205361517

`a(n-6)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=-1, a(4)=0, a(5)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135694

/-- `a(n-6)` -/
def P9656679266205361517.Spec : Prop :=
  ∀ n, P9656679266205361517.a n = A135694 n

theorem P9656679266205361517.correct : P9656679266205361517.Spec := by
  intro n
  simp only [A135694]

end A135694

/-!
# A135695: Period 6: repeat [-1, -1, -2, -2, 3, 3].

The programs for A135695, the canonical program `A135695.P7773305813136618257` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135695 has offset 0).

The definition of A135695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135695.P7773305813136618257

`a(n-6)` with `a(0)=-1, a(1)=-1, a(2)=-2, a(3)=-2, a(4)=3, a(5)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135695

/-- `a(n-6)` -/
def P7773305813136618257.Spec : Prop :=
  ∀ n, P7773305813136618257.a n = A135695 n

theorem P7773305813136618257.correct : P7773305813136618257.Spec := by
  intro n
  simp only [A135695]

end A135695

/-!
# A135696: Palindromes with odd number of digits formed from the reflected decimal expansion of e.

The programs for A135696, there is no canonical definition to state claims against.
-/

/-! ## A135696.P6029899826247210164

`A135634(Δ[n²])`
-/

namespace A135696.P6029899826247210164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135634 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A135696.P6029899826247210164

/-! ## A135696.P213656594376504151

`lcm(2, A135634(2*n+1))`
-/

namespace A135696.P213656594376504151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A135634 (2 * n + 1))

end

end A135696.P213656594376504151

/-! ## A135696.P11893981094713183870

`record[A135634((n+1)/2^val(n+1, 2))]`
-/

namespace A135696.P11893981094713183870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135696.P11893981094713183870

/-! ## A135696.P5668715863509442178

`record[A135634(A000265(n+1))]`
-/

namespace A135696.P5668715863509442178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135634 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135696.P5668715863509442178

/-! ## A135696.P14472034891066851366

`record[A135634(A070864(n+1))]`
-/

namespace A135696.P14472034891066851366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135634 (A070864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135696.P14472034891066851366

/-!
# A135698: Palindromes with odd number of digits formed from the reflected decimal expansion of Pi.

The programs for A135698, there is no canonical definition to state claims against.
-/

/-! ## A135698.P14735645398008302911

`A135697(Δ[n²])`
-/

namespace A135698.P14735645398008302911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A135698.P14735645398008302911

/-! ## A135698.P7866292855411595926

`or(1, A135697(A005408(n)))`
-/

namespace A135698.P7866292855411595926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A135697 (A005408 n).toNat)

end

end A135698.P7866292855411595926

/-! ## A135698.P7751011615151144772

`record[A135697(Δ[A001318(n)])]`
-/

namespace A135698.P7751011615151144772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135697 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135698.P7751011615151144772

/-! ## A135698.P14194324191586482943

`record[A135697(A000265(n+1))]`
-/

namespace A135698.P14194324191586482943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135697 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135698.P14194324191586482943

/-!
# A135699: Palindromes with odd number of digits formed from the reflected decimal expansion of golden ratio phi.

The programs for A135699, there is no canonical definition to state claims against.
-/

/-! ## A135699.P7597539579091553503

`A135700(Δ[n²])`
-/

namespace A135699.P7597539579091553503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135700 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A135699.P7597539579091553503

/-! ## A135699.P14236167425394428189

`record[A135700(A000265(n+1))]`
-/

namespace A135699.P14236167425394428189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135700 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135699.P14236167425394428189

/-! ## A135699.P1563865521997814100

`record[A135700(abs(A040026(n+1)))]`
-/

namespace A135699.P1563865521997814100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135700 |A040026 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135699.P1563865521997814100

/-! ## A135699.P4206446064829968597

`record[A135700(n+1)/A033999(n)]`
-/

namespace A135699.P4206446064829968597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135700 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135699.P4206446064829968597

/-! ## A135699.P14505723036776848626

`record[and(A115634(n), A135700(n+1))]`
-/

namespace A135699.P14505723036776848626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115634 n) (A135700 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135699.P14505723036776848626

