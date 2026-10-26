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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A098100: Write each non-Fibonacci integer >0 on a single label. Put the labels in numerical order to form an infinite sequence L. Now consider the succession of single digits of A000045 (Fibonacci numbers): 1 1 2 3 5 8 1 3 2 1 3 4 5 5 8 9 1 4 4 2 3 3 3 7 7 6 1 0 9... The sequence S gives a rearrangement of the labels that reproduces the same succession of digits, subject to the constraint that the smallest label must be used that does not lead to a contradiction.

The programs for A098100, there is no canonical definition to state claims against.
-/

/-! ## A098100.P6034244758966986169

`A105967(30*C(n, 6)+n+1)`
-/

namespace A098100.P6034244758966986169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105967 (30 * Nat.choose n 6 + (n + 1))

end

end A098100.P6034244758966986169

/-! ## A098100.P13202093079864137393

`A105967(A100793(n))`
-/

namespace A098100.P13202093079864137393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105967 (A100793 n).toNat

end

end A098100.P13202093079864137393

/-!
# A098102: a(n) = 2^(prime(n) - 1) - 1 where prime(n) is the n-th prime.

The programs for A098102, the canonical program `A098102.P4278518476193835371` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098102 has offset 1).

The definition of A098102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098102.P4278518476193835371

`2^(A000040(n+1)-1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098102

/-- `2^(A000040(n+1)-1)-1` -/
def P4278518476193835371.Spec : Prop :=
  ∀ n, P4278518476193835371.a n = (A098102 (n + 1) : ℚ)

end A098102

/-! ## A098102.P12147379205019763620

`record[A100371(n+1)]`
-/

namespace A098102.P12147379205019763620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098102.P12147379205019763620

namespace A098102

/-- `record[A100371(n+1)]` -/
def P12147379205019763620.Spec : Prop :=
  ∀ n, P12147379205019763620.a n = A098102 (n + 1)

end A098102

/-! ## A098102.P10278416845928397924

`record[A226305(n+1)]`
-/

namespace A098102.P10278416845928397924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098102.P10278416845928397924

namespace A098102

/-- `record[A226305(n+1)]` -/
def P10278416845928397924.Spec : Prop :=
  ∀ n, P10278416845928397924.a n = A098102 (n + 1)

end A098102

/-! ## A098102.P14103746548747833566

`record[A130113(Δ[n²])]`
-/

namespace A098102.P14103746548747833566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130113 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098102.P14103746548747833566

namespace A098102

/-- `record[A130113(Δ[n²])]` -/
def P14103746548747833566.Spec : Prop :=
  ∀ n, P14103746548747833566.a n = A098102 (n + 1)

end A098102

/-! ## A098102.P16197280684110266814

`A061286(n+1)-1`
-/

namespace A098102.P16197280684110266814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061286 (n + 1) - 1

end

end A098102.P16197280684110266814

namespace A098102

/-- `A061286(n+1)-1` -/
def P16197280684110266814.Spec : Prop :=
  ∀ n, P16197280684110266814.a n = A098102 (n + 1)

end A098102

/-! ## A098102.P15227888136784213858

`A278741(n+1)-2`
-/

namespace A098102.P15227888136784213858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278741 (n + 1) - 2

end

end A098102.P15227888136784213858

namespace A098102

/-- `A278741(n+1)-2` -/
def P15227888136784213858.Spec : Prop :=
  ∀ n, P15227888136784213858.a n = A098102 (n + 1)

end A098102

/-! ## A098102.P16268990724562698834

`A229065(n+1)-4`
-/

namespace A098102.P16268990724562698834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229065 (n + 1) - 4

end

end A098102.P16268990724562698834

namespace A098102

/-- `A229065(n+1)-4` -/
def P16268990724562698834.Spec : Prop :=
  ∀ n, P16268990724562698834.a n = A098102 (n + 1)

end A098102

/-! ## A098102.P845337608395360454

`floor(A001348(n+1)/2)`
-/

namespace A098102.P845337608395360454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001348 (n + 1) : ℚ) / 2⌋

end

end A098102.P845337608395360454

namespace A098102

/-- `floor(A001348(n+1)/2)` -/
def P845337608395360454.Spec : Prop :=
  ∀ n, P845337608395360454.a n = A098102 (n + 1)

end A098102

/-! ## A098102.P1475224631312367215

`Δ[A080355(n+1)]-1`
-/

namespace A098102.P1475224631312367215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A098102.P1475224631312367215

namespace A098102

/-- `Δ[A080355(n+1)]-1` -/
def P1475224631312367215.Spec : Prop :=
  ∀ n, P1475224631312367215.a n = A098102 (n + 1)

end A098102

/-! ## A098102.P4500201740048102160

`record[A066781(n+1)-1]`
-/

namespace A098102.P4500201740048102160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098102.P4500201740048102160

namespace A098102

/-- `record[A066781(n+1)-1]` -/
def P4500201740048102160.Spec : Prop :=
  ∀ n, P4500201740048102160.a n = A098102 (n + 1)

end A098102

/-!
# A098104: Numbers of the form 7^p - p^7 where p is prime.

The programs for A098104, the canonical program `A098104.P6545190194559732645` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098104 has offset 1).

The definition of A098104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098104.P6545190194559732645

`7^A000040(n+1)-A000040(n+1)^7`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098104

/-- `7^A000040(n+1)-A000040(n+1)^7` -/
def P6545190194559732645.Spec : Prop :=
  ∀ n, P6545190194559732645.a n = (A098104 (n + 1) : ℚ)

end A098104

/-! ## A098104.P5020941109200767316

`A024082(p?[comp[n²]])`
-/

namespace A098104.P5020941109200767316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024082 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098104.P5020941109200767316

namespace A098104

/-- `A024082(p?[comp[n²]])` -/
def P5020941109200767316.Spec : Prop :=
  ∀ n, P5020941109200767316.a n = A098104 (n + 1)

end A098104

/-! ## A098104.P12152125446460810493

`A024082(A000040(n+1))`
-/

namespace A098104.P12152125446460810493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024082 (A000040 (n + 1)).toNat

end

end A098104.P12152125446460810493

namespace A098104

/-- `A024082(A000040(n+1))` -/
def P12152125446460810493.Spec : Prop :=
  ∀ n, P12152125446460810493.a n = A098104 (n + 1)

end A098104

/-! ## A098104.P1451829663342078196

`A024082(record[A006530(n+2)])`
-/

namespace A098104.P1451829663342078196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024082 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098104.P1451829663342078196

namespace A098104

/-- `A024082(record[A006530(n+2)])` -/
def P1451829663342078196.Spec : Prop :=
  ∀ n, P1451829663342078196.a n = A098104 (n + 1)

end A098104

/-! ## A098104.P8716566510131974730

`A024082(record[A014963(n+2)])`
-/

namespace A098104.P8716566510131974730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024082 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098104.P8716566510131974730

namespace A098104

/-- `A024082(record[A014963(n+2)])` -/
def P8716566510131974730.Spec : Prop :=
  ∀ n, P8716566510131974730.a n = A098104 (n + 1)

end A098104

/-!
# A098105: a(n) = 2^p - p^2 where p is the n-th prime.

The programs for A098105, the canonical program `A098105.P11288165012082170226` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098105 has offset 1).

The definition of A098105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098105.P11288165012082170226

`2^A000040(n+1)-A000040(n+1)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098105

/-- `2^A000040(n+1)-A000040(n+1)²` -/
def P11288165012082170226.Spec : Prop :=
  ∀ n, P11288165012082170226.a n = (A098105 (n + 1) : ℚ)

end A098105

/-! ## A098105.P8205022445201893288

`A024012(p?[comp[n²]])`
-/

namespace A098105.P8205022445201893288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098105.P8205022445201893288

namespace A098105

/-- `A024012(p?[comp[n²]])` -/
def P8205022445201893288.Spec : Prop :=
  ∀ n, P8205022445201893288.a n = A098105 (n + 1)

end A098105

/-! ## A098105.P6280764853079398856

`A024012(A000040(n+1))`
-/

namespace A098105.P6280764853079398856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 (A000040 (n + 1)).toNat

end

end A098105.P6280764853079398856

namespace A098105

/-- `A024012(A000040(n+1))` -/
def P6280764853079398856.Spec : Prop :=
  ∀ n, P6280764853079398856.a n = A098105 (n + 1)

end A098105

/-! ## A098105.P2093481766074981868

`A034785(n+1)-A001248(n+1)`
-/

namespace A098105.P2093481766074981868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) - A001248 (n + 1)

end

end A098105.P2093481766074981868

namespace A098105

/-- `A034785(n+1)-A001248(n+1)` -/
def P2093481766074981868.Spec : Prop :=
  ∀ n, P2093481766074981868.a n = A098105 (n + 1)

end A098105

/-! ## A098105.P6691767080574883573

`A098640(n+1)-A066872(n+1)`
-/

namespace A098105.P6691767080574883573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098640 (n + 1) - A066872 (n + 1)

end

end A098105.P6691767080574883573

namespace A098105

/-- `A098640(n+1)-A066872(n+1)` -/
def P6691767080574883573.Spec : Prop :=
  ∀ n, P6691767080574883573.a n = A098105 (n + 1)

end A098105

/-! ## A098105.P13263427967892514307

`A034785(n+1)-A000040(n+1)²`
-/

namespace A098105.P13263427967892514307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) - A000040 (n + 1) ^ 2

end

end A098105.P13263427967892514307

namespace A098105

/-- `A034785(n+1)-A000040(n+1)²` -/
def P13263427967892514307.Spec : Prop :=
  ∀ n, P13263427967892514307.a n = A098105 (n + 1)

end A098105

/-! ## A098105.P15398404740626936468

`record[2^A006530(n+2)]-record[A020639(n+2)²]`
-/

namespace A098105.P15398404740626936468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

end

end A098105.P15398404740626936468

namespace A098105

/-- `record[2^A006530(n+2)]-record[A020639(n+2)²]` -/
def P15398404740626936468.Spec : Prop :=
  ∀ n, P15398404740626936468.a n = (A098105 (n + 1) : ℚ)

end A098105

/-! ## A098105.P6519696572406140145

`record[2^A006530(n+2)]-p?[A018252(n+1)-7]²`
-/

namespace A098105.P6519696572406140145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2 : ℚ)

end

end A098105.P6519696572406140145

namespace A098105

/-- `record[2^A006530(n+2)]-p?[A018252(n+1)-7]²` -/
def P6519696572406140145.Spec : Prop :=
  ∀ n, P6519696572406140145.a n = (A098105 (n + 1) : ℚ)

end A098105

/-! ## A098105.P6817364847794824789

`record[2^A020639(n+2)]-p?[A018252(n+1)-7]²`
-/

namespace A098105.P6817364847794824789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A020639 (n + 2) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2 : ℚ)

end

end A098105.P6817364847794824789

namespace A098105

/-- `record[2^A020639(n+2)]-p?[A018252(n+1)-7]²` -/
def P6817364847794824789.Spec : Prop :=
  ∀ n, P6817364847794824789.a n = (A098105 (n + 1) : ℚ)

end A098105

/-! ## A098105.P13405991416574132946

`record[2^(A000010(n+1)+1)]-p?[A018252(n+1)-7]²`
-/

namespace A098105.P13405991416574132946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2 : ℚ)

end

end A098105.P13405991416574132946

namespace A098105

/-- `record[2^(A000010(n+1)+1)]-p?[A018252(n+1)-7]²` -/
def P13405991416574132946.Spec : Prop :=
  ∀ n, P13405991416574132946.a n = (A098105 (n + 1) : ℚ)

end A098105

/-!
# A098106: Hankel transform of sequence (b(n)) where b(n) = Sum_{i=0..n} binomial(2*i,i).

The programs for A098106, the canonical program `A098106.P4822648328663930188` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098106 has offset 0).

The definition of A098106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098106.P4822648328663930188

`ceil(2^(n-1)*A100052(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098106

/-- `ceil(2^(n-1)*A100052(n))` -/
def P4822648328663930188.Spec : Prop :=
  ∀ n, P4822648328663930188.a n = A098106 n

theorem P4822648328663930188.correct : P4822648328663930188.Spec := by
  intro n
  simp only [A098106]

end A098106

/-! ## A098106.P8367685588774127836

`A011782(n)*A100052(n)`
-/

namespace A098106.P8367685588774127836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A100052 n

end

end A098106.P8367685588774127836

namespace A098106

/-- `A011782(n)*A100052(n)` -/
def P8367685588774127836.Spec : Prop :=
  ∀ n, P8367685588774127836.a n = A098106 n

end A098106

/-! ## A098106.P5761473871538347882

`∑[A034008(n)]*A100052(n)`
-/

namespace A098106.P5761473871538347882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A100052 n

end

end A098106.P5761473871538347882

namespace A098106

/-- `∑[A034008(n)]*A100052(n)` -/
def P5761473871538347882.Spec : Prop :=
  ∀ n, P5761473871538347882.a n = A098106 n

end A098106

/-! ## A098106.P2586042744364565316

`Δ[A094373(n)]*A100052(n)`
-/

namespace A098106.P2586042744364565316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A100052 n

end

end A098106.P2586042744364565316

namespace A098106

/-- `Δ[A094373(n)]*A100052(n)` -/
def P2586042744364565316.Spec : Prop :=
  ∀ n, P2586042744364565316.a n = A098106 n

end A098106

/-! ## A098106.P10766290920327618251

`Δ[A131577(n)]*A100052(n)`
-/

namespace A098106.P10766290920327618251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A100052 n

end

end A098106.P10766290920327618251

namespace A098106

/-- `Δ[A131577(n)]*A100052(n)` -/
def P10766290920327618251.Spec : Prop :=
  ∀ n, P10766290920327618251.a n = A098106 n

end A098106

/-!
# A098107: Sum of all matrix elements M(i,j) = n!*(i/j), (i,j = 1..n).

The programs for A098107, there is no canonical definition to state claims against.
-/

/-! ## A098107.P13691405784393848406

`record[Δ[n*A067176(n)]]`
-/

namespace A098107.P13691405784393848406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098107.P13691405784393848406

/-! ## A098107.P10488052358006356502

`∑[n+1]*A000254(n+1)`
-/

namespace A098107.P10488052358006356502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000254 (n + 1)

end

end A098107.P10488052358006356502

/-! ## A098107.P14173310859990872208

`record[A080036(n)*A256589(n+1)]`
-/

namespace A098107.P14173310859990872208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n * A256589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098107.P14173310859990872208

/-! ## A098107.P8874022892837807702

`A000254(n+1)*A179865(n+2)`
-/

namespace A098107.P8874022892837807702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) * A179865 (n + 2)

end

end A098107.P8874022892837807702

/-! ## A098107.P314472428858223217

`abs(A000217(n+1)*A081048(n+1))`
-/

namespace A098107.P314472428858223217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (n + 1) * A081048 (n + 1)|

end

end A098107.P314472428858223217

/-! ## A098107.P15143502860977309118

`record[A059399(n+1)*A256589(n+1)]`
-/

namespace A098107.P15143502860977309118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (n + 1) * A256589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098107.P15143502860977309118

/-! ## A098107.P8819207326057880705

`A000254(n+1)/2*A002378(n+1)`
-/

namespace A098107.P8819207326057880705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (n + 1) : ℚ) / 2 * (A002378 (n + 1) : ℚ)

end

end A098107.P8819207326057880705

/-! ## A098107.P3718822073989537654

`A000217(n+1)*A094638(A000096(n+1))`
-/

namespace A098107.P3718822073989537654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A094638 (A000096 (n + 1)).toNat

end

end A098107.P3718822073989537654

/-! ## A098107.P7011076866710195955

`A000254(n+1)*A132393(A034856(n+2))`
-/

namespace A098107.P7011076866710195955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) * A132393 (A034856 (n + 2)).toNat

end

end A098107.P7011076866710195955

/-! ## A098107.P6938016270342383755

`A130534(A000124(n+1))*A179865(n+2)`
-/

namespace A098107.P6938016270342383755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A000124 (n + 1)).toNat * A179865 (n + 2)

end

end A098107.P6938016270342383755

/-!
# A098108: a(n) = 1 if n is an odd square, otherwise 0.

The programs for A098108, the canonical program `A098108.P9198718972153523697` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098108 has offset 0).

The definition of A098108 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098108.P9198718972153523697

`A000035(n)*A010052(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098108

/-- `A000035(n)*A010052(n)` -/
def P9198718972153523697.Spec : Prop :=
  ∀ n, P9198718972153523697.a n = A098108 n

theorem P9198718972153523697.correct : P9198718972153523697.Spec := by
  intro n
  simp only [A098108]

end A098108

/-! ## A098108.P14231484287320660807

`char[or(1, n)²]`
-/

namespace A098108.P14231484287320660807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A098108.P14231484287320660807

namespace A098108

/-- `char[or(1, n)²]` -/
def P14231484287320660807.Spec : Prop :=
  ∀ n, (P14231484287320660807.a n : ℤ) = A098108 n

end A098108

/-! ## A098108.P11928443236115018798

`and(n, char[n²])`
-/

namespace A098108.P11928443236115018798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f1 j = n then 1 else 0)

end

end A098108.P11928443236115018798

namespace A098108

/-- `and(n, char[n²])` -/
def P11928443236115018798.Spec : Prop :=
  ∀ n, (P11928443236115018798.a n : ℤ) = A098108 n

end A098108

/-! ## A098108.P18221519335119051094

`char[Δ[n²]²]`
-/

namespace A098108.P18221519335119051094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A098108.P18221519335119051094

namespace A098108

/-- `char[Δ[n²]²]` -/
def P18221519335119051094.Spec : Prop :=
  ∀ n, (P18221519335119051094.a n : ℤ) = A098108 n

end A098108

/-! ## A098108.P9259923495034546250

`n%(char[n²]+1)`
-/

namespace A098108.P9259923495034546250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A098108.P9259923495034546250

namespace A098108

/-- `n%(char[n²]+1)` -/
def P9259923495034546250.Spec : Prop :=
  ∀ n, (P9259923495034546250.a n : ℤ) = A098108 n

end A098108

/-! ## A098108.P14659871937005812745

`(∑{d}[n, n*#]%2)²`
-/

namespace A098108.P14659871937005812745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), n * d) % 2) ^ 2

end

end A098108.P14659871937005812745

namespace A098108

/-- `(∑{d}[n, n*#]%2)²` -/
def P14659871937005812745.Spec : Prop :=
  ∀ n, (P14659871937005812745.a n : ℤ) = A098108 n

end A098108

/-! ## A098108.P15298663199599920633

`((n*char[n²])%2)²`
-/

namespace A098108.P15298663199599920633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (if ∃ j, f1 j = n then 1 else 0) % 2) ^ 2

end

end A098108.P15298663199599920633

namespace A098108

/-- `((n*char[n²])%2)²` -/
def P15298663199599920633.Spec : Prop :=
  ∀ n, (P15298663199599920633.a n : ℤ) = A098108 n

end A098108

/-! ## A098108.P8795626573695247767

`and(1, ∑{d}[n, n*#])²`
-/

namespace A098108.P8795626573695247767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), n * d) ^ 2

end

end A098108.P8795626573695247767

namespace A098108

/-- `and(1, ∑{d}[n, n*#])²` -/
def P8795626573695247767.Spec : Prop :=
  ∀ n, (P8795626573695247767.a n : ℤ) = A098108 n

end A098108

/-! ## A098108.P6437145350868326088

`and(1, and(n, ∑{d}[n, #]))²`
-/

namespace A098108.P6437145350868326088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.land n (∑ d ∈ Nat.divisors (f1 n), d)) ^ 2

end

end A098108.P6437145350868326088

namespace A098108

/-- `and(1, and(n, ∑{d}[n, #]))²` -/
def P6437145350868326088.Spec : Prop :=
  ∀ n, (P6437145350868326088.a n : ℤ) = A098108 n

end A098108

/-! ## A098108.P4212224542334345861

`Δ[round(sinh(log(sqrt(n+1))))]`
-/

namespace A098108.P4212224542334345861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (Real.sqrt (n + 1 : ℝ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098108.P4212224542334345861

namespace A098108

/-- `Δ[round(sinh(log(sqrt(n+1))))]` -/
def P4212224542334345861.Spec : Prop :=
  ∀ n, P4212224542334345861.a n = A098108 n

end A098108

/-!
# A098109: a(n) is the least number k such that the number of divisors of k! exceeds 10^n.

The programs for A098109, there is no canonical definition to state claims against.
-/

/-! ## A098109.P12251999257229737193

`A061383(2*n+3)+A000005(A008776(n))`
-/

namespace A098109.P12251999257229737193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (2 * n + 3) + A000005 (A008776 n).toNat

end

end A098109.P12251999257229737193

/-! ## A098109.P11329501294195176184

`A320226(2*(n+2))-A345415(A206100(n))`
-/

namespace A098109.P11329501294195176184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320226 (2 * (n + 2)) - A345415 (A206100 n).toNat

end

end A098109.P11329501294195176184

/-! ## A098109.P4931645957274406033

`A325461(2*n+5)-A293162(A056325(n))`
-/

namespace A098109.P4931645957274406033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325461 (2 * n + 5) - A293162 (A056325 n).toNat

end

end A098109.P4931645957274406033

/-! ## A098109.P99940568303903007

`A351870(A351870(2*(n+1))+A059708(2*(n+2)))`
-/

namespace A098109.P99940568303903007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A351870 (2 * (n + 1)) + A059708 (2 * (n + 2))).toNat

end

end A098109.P99940568303903007

/-!
# A098111: Inverse binomial transform of A098149.

The programs for A098111, the canonical program `A098111.P4530505915535918141` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098111 has offset 0).

The definition of A098111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098111.P4530505915535918141

`5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098111

/-- `5*(a(n-1)-a(n-2))` -/
def P4530505915535918141.Spec : Prop :=
  ∀ n, P4530505915535918141.a n = A098111 n

theorem P4530505915535918141.correct : P4530505915535918141.Spec := by
  intro n
  simp only [A098111]

end A098111

/-! ## A098111.P17295723382239726969

`ogf((1-5x)/(1-5x+5x^2))`
-/

namespace A098111.P17295723382239726969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -5, 5] n

end

end A098111.P17295723382239726969

namespace A098111

/-- `ogf((1-5x)/(1-5x+5x^2))` -/
def P17295723382239726969.Spec : Prop :=
  ∀ n, P17295723382239726969.a n = A098111 n

end A098111

/-! ## A098111.P9627122052154212394

`(a(n-1)-a(n-2))/(1-4/5)` with `a(0)=1, a(1)=0`
-/

namespace A098111.P9627122052154212394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) - a (n - 2)) / (1 - (4 : ℚ) / 5)

end

end A098111.P9627122052154212394

namespace A098111

/-- `(a(n-1)-a(n-2))/(1-4/5)` -/
def P9627122052154212394.Spec : Prop :=
  ∀ n, P9627122052154212394.a n = (A098111 n : ℚ)

end A098111

/-! ## A098111.P15441568345892420190

`1-∑[A093131(n)]`
-/

namespace A098111.P15441568345892420190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098111.P15441568345892420190

namespace A098111

/-- `1-∑[A093131(n)]` -/
def P15441568345892420190.Spec : Prop :=
  ∀ n, P15441568345892420190.a n = A098111 n

end A098111

/-! ## A098111.P4575393929535931465

`∑[1-A112091(n)]+1`
-/

namespace A098111.P4575393929535931465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A112091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A098111.P4575393929535931465

namespace A098111

/-- `∑[1-A112091(n)]+1` -/
def P4575393929535931465.Spec : Prop :=
  ∀ n, P4575393929535931465.a n = A098111 n

end A098111

/-! ## A098111.P4970408080828822448

`a(n-1)-A030191(n-1)` with `a(0)=1`
-/

namespace A098111.P4970408080828822448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A030191 (n - 1)

end

end A098111.P4970408080828822448

namespace A098111

/-- `a(n-1)-A030191(n-1)` -/
def P4970408080828822448.Spec : Prop :=
  ∀ n, P4970408080828822448.a n = A098111 n

end A098111

/-! ## A098111.P10762952721083051093

`2*a(n-1)-A093129(n)` with `a(0)=1`
-/

namespace A098111.P10762952721083051093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A093129 n

end

end A098111.P10762952721083051093

namespace A098111

/-- `2*a(n-1)-A093129(n)` -/
def P10762952721083051093.Spec : Prop :=
  ∀ n, P10762952721083051093.a n = A098111 n

end A098111

/-! ## A098111.P8706117532202466142

`A020876(n)-A030191(n)`
-/

namespace A098111.P8706117532202466142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n - A030191 n

end

end A098111.P8706117532202466142

namespace A098111

/-- `A020876(n)-A030191(n)` -/
def P8706117532202466142.Spec : Prop :=
  ∀ n, P8706117532202466142.a n = A098111 n

end A098111

/-! ## A098111.P5264543241010845391

`A260304(n)-A081567(n)`
-/

namespace A098111.P5264543241010845391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260304 n - A081567 n

end

end A098111.P5264543241010845391

namespace A098111

/-- `A260304(n)-A081567(n)` -/
def P5264543241010845391.Spec : Prop :=
  ∀ n, P5264543241010845391.a n = A098111 n

end A098111

/-! ## A098111.P9544692450894554320

`A020876(n)-A093131(n+1)`
-/

namespace A098111.P9544692450894554320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n - A093131 (n + 1)

end

end A098111.P9544692450894554320

namespace A098111

/-- `A020876(n)-A093131(n+1)` -/
def P9544692450894554320.Spec : Prop :=
  ∀ n, P9544692450894554320.a n = A098111 n

end A098111

/-! ## A098111.P14156814610740250368

`A093129(n+1)-A030191(n)`
-/

namespace A098111.P14156814610740250368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (n + 1) - A030191 n

end

end A098111.P14156814610740250368

namespace A098111

/-- `A093129(n+1)-A030191(n)` -/
def P14156814610740250368.Spec : Prop :=
  ∀ n, P14156814610740250368.a n = A098111 n

end A098111

/-! ## A098111.P1564782069437584497

`A260304(n+1)-A020876(n)`
-/

namespace A098111.P1564782069437584497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260304 (n + 1) - A020876 n

end

end A098111.P1564782069437584497

namespace A098111

/-- `A260304(n+1)-A020876(n)` -/
def P1564782069437584497.Spec : Prop :=
  ∀ n, P1564782069437584497.a n = A098111 n

end A098111

/-! ## A098111.P8419755158006776721

`A093129(n)-2*A093131(n)`
-/

namespace A098111.P8419755158006776721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n - 2 * A093131 n

end

end A098111.P8419755158006776721

namespace A098111

/-- `A093129(n)-2*A093131(n)` -/
def P8419755158006776721.Spec : Prop :=
  ∀ n, P8419755158006776721.a n = A098111 n

end A098111

/-! ## A098111.P12554429683727413388

`A093129(n+1)-A093131(n+1)`
-/

namespace A098111.P12554429683727413388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (n + 1) - A093131 (n + 1)

end

end A098111.P12554429683727413388

namespace A098111

/-- `A093129(n+1)-A093131(n+1)` -/
def P12554429683727413388.Spec : Prop :=
  ∀ n, P12554429683727413388.a n = A098111 n

end A098111

/-! ## A098111.P13824857804668334001

`A260304(n+1)-A093129(n+1)`
-/

namespace A098111.P13824857804668334001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260304 (n + 1) - A093129 (n + 1)

end

end A098111.P13824857804668334001

namespace A098111

/-- `A260304(n+1)-A093129(n+1)` -/
def P13824857804668334001.Spec : Prop :=
  ∀ n, P13824857804668334001.a n = A098111 n

end A098111

/-! ## A098111.P16440057427569817184

`A081567(n+1)-2*A030191(n)`
-/

namespace A098111.P16440057427569817184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (n + 1) - 2 * A030191 n

end

end A098111.P16440057427569817184

namespace A098111

/-- `A081567(n+1)-2*A030191(n)` -/
def P16440057427569817184.Spec : Prop :=
  ∀ n, P16440057427569817184.a n = A098111 n

end A098111

/-! ## A098111.P6353056169864701012

`2*A093129(n)-A039717(n+1)`
-/

namespace A098111.P6353056169864701012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093129 n - A039717 (n + 1)

end

end A098111.P6353056169864701012

namespace A098111

/-- `2*A093129(n)-A039717(n+1)` -/
def P6353056169864701012.Spec : Prop :=
  ∀ n, P6353056169864701012.a n = A098111 n

end A098111

/-! ## A098111.P14197739406702252522

`A260304(n)-A178381(2*n+1)`
-/

namespace A098111.P14197739406702252522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260304 n - A178381 (2 * n + 1)

end

end A098111.P14197739406702252522

namespace A098111

/-- `A260304(n)-A178381(2*n+1)` -/
def P14197739406702252522.Spec : Prop :=
  ∀ n, P14197739406702252522.a n = A098111 n

end A098111

/-! ## A098111.P4263998808524471864

`A093131(n+1)-5*A093131(n)`
-/

namespace A098111.P4263998808524471864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 (n + 1) - 5 * A093131 n

end

end A098111.P4263998808524471864

namespace A098111

/-- `A093131(n+1)-5*A093131(n)` -/
def P4263998808524471864.Spec : Prop :=
  ∀ n, P4263998808524471864.a n = A098111 n

end A098111

/-! ## A098111.P1700474017181308016

`1-(A283842(n+1)+A000295(n+1))`
-/

namespace A098111.P1700474017181308016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A283842 (n + 1) + A000295 (n + 1))

end

end A098111.P1700474017181308016

namespace A098111

/-- `1-(A283842(n+1)+A000295(n+1))` -/
def P1700474017181308016.Spec : Prop :=
  ∀ n, P1700474017181308016.a n = A098111 n

end A098111

/-!
# A098116: a(n) = 3^(p-1) + (3^p - 1) where p is the n-th prime.

The programs for A098116, the canonical program `A098116.P12511167757325705874` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098116 has offset 1).

The definition of A098116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098116.P12511167757325705874

`3^(A000040(n+1)-1)+3^A000040(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098116

/-- `3^(A000040(n+1)-1)+3^A000040(n+1)-1` -/
def P12511167757325705874.Spec : Prop :=
  ∀ n, P12511167757325705874.a n = (A098116 (n + 1) : ℚ)

end A098116

/-! ## A098116.P7157034833681348534

`4*A121858(n+1)-1`
-/

namespace A098116.P7157034833681348534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A121858 (n + 1) - 1

end

end A098116.P7157034833681348534

namespace A098116

/-- `4*A121858(n+1)-1` -/
def P7157034833681348534.Spec : Prop :=
  ∀ n, P7157034833681348534.a n = A098116 (n + 1)

end A098116

/-! ## A098116.P13568396933694000983

`4*3^(A000040(n+1)-1)-1`
-/

namespace A098116.P13568396933694000983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (3 : ℚ) ^ (A000040 (n + 1) - 1 : ℤ) - 1

end

end A098116.P13568396933694000983

namespace A098116

/-- `4*3^(A000040(n+1)-1)-1` -/
def P13568396933694000983.Spec : Prop :=
  ∀ n, P13568396933694000983.a n = (A098116 (n + 1) : ℚ)

end A098116

/-! ## A098116.P16899678336795039382

`4*3^eq[2, A000005(n+1)]-1`
-/

namespace A098116.P16899678336795039382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A098116.P16899678336795039382

namespace A098116

/-- `4*3^eq[2, A000005(n+1)]-1` -/
def P16899678336795039382.Spec : Prop :=
  ∀ n, P16899678336795039382.a n = A098116 (n + 1)

end A098116

/-! ## A098116.P9885879446067461373

`A171498(A006093(n+1))`
-/

namespace A098116.P9885879446067461373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171498 (A006093 (n + 1)).toNat

end

end A098116.P9885879446067461373

namespace A098116

/-- `A171498(A006093(n+1))` -/
def P9885879446067461373.Spec : Prop :=
  ∀ n, P9885879446067461373.a n = A098116 (n + 1)

end A098116

/-!
# A098117: a(n) = 5^(prime(n) - 1) + 5^prime(n) - 1.

The programs for A098117, the canonical program `A098117.P10750374104259115939` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098117 has offset 1).

The definition of A098117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098117.P10750374104259115939

`A198764(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098117

/-- `A198764(A000040(n+1)-1)` -/
def P10750374104259115939.Spec : Prop :=
  ∀ n, P10750374104259115939.a n = A098117 (n + 1)

theorem P10750374104259115939.correct : P10750374104259115939.Spec := by
  intro n
  simp only [A098117, Nat.add_sub_cancel]

end A098117

/-! ## A098117.P10055113740124928002

`5^(A000040(n+1)-1)+5^A000040(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098117.P10055113740124928002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A000040 (n + 1) - 1 : ℤ) + (5 : ℚ) ^ (A000040 (n + 1) : ℤ) - 1

end

end A098117.P10055113740124928002

namespace A098117

/-- `5^(A000040(n+1)-1)+5^A000040(n+1)-1` -/
def P10055113740124928002.Spec : Prop :=
  ∀ n, P10055113740124928002.a n = (A098117 (n + 1) : ℚ)

end A098117

/-! ## A098117.P10109376151492104789

`A003948(Δ[A007504(n)])-1`
-/

namespace A098117.P10109376151492104789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 (f1 (n + 1) - f1 n).toNat - 1

end

end A098117.P10109376151492104789

namespace A098117

/-- `A003948(Δ[A007504(n)])-1` -/
def P10109376151492104789.Spec : Prop :=
  ∀ n, P10109376151492104789.a n = A098117 (n + 1)

end A098117

/-! ## A098117.P6645214302695741176

`A198764(record[A000010(n+1)])`
-/

namespace A098117.P6645214302695741176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198764 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098117.P6645214302695741176

namespace A098117

/-- `A198764(record[A000010(n+1)])` -/
def P6645214302695741176.Spec : Prop :=
  ∀ n, P6645214302695741176.a n = A098117 (n + 1)

end A098117

/-! ## A098117.P6487399153264879807

`A003948(A008578(n+2))-1`
-/

namespace A098117.P6487399153264879807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 (A008578 (n + 2)).toNat - 1

end

end A098117.P6487399153264879807

namespace A098117

/-- `A003948(A008578(n+2))-1` -/
def P6487399153264879807.Spec : Prop :=
  ∀ n, P6487399153264879807.a n = A098117 (n + 1)

end A098117

/-!
# A098118: a(n) = n!*[x^n] (log(x+1) * Sum_{j=0..n} C(2*n,j)*x^j).

The programs for A098118, there is no canonical definition to state claims against.
-/

/-! ## A098118.P2654574031036051413

`2/A000984(n+1)*A078791(n+1)`
-/

namespace A098118.P2654574031036051413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000984 (n + 1) : ℚ) * (A078791 (n + 1) : ℚ)

end

end A098118.P2654574031036051413

/-! ## A098118.P3683219543759521837

`A201546(n+1)/(n+1)!`
-/

namespace A098118.P3683219543759521837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201546 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A098118.P3683219543759521837

/-! ## A098118.P5758740006378509997

`A201546(n+1)/A000142(n+1)`
-/

namespace A098118.P5758740006378509997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201546 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A098118.P5758740006378509997

/-! ## A098118.P6026467343152839673

`A024167(2*(n+1))/Δ[A007489(n)]`
-/

namespace A098118.P6026467343152839673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (2 * (n + 1)) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A098118.P6026467343152839673

/-! ## A098118.P15741979692432370551

`A024167(2*(n+1))/A000142(n+1)`
-/

namespace A098118.P15741979692432370551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024167 (2 * (n + 1)) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A098118.P15741979692432370551

/-!
# A098120: Number of times n-th term of A025487 occurs in A073039.

The programs for A098120, there is no canonical definition to state claims against.
-/

/-! ## A098120.P13725724163894087347

`A064553(A003557(A181820(n+1)))`
-/

namespace A098120.P13725724163894087347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A003557 (A181820 (n + 1)).toNat).toNat

end

end A098120.P13725724163894087347

/-! ## A098120.P11321952062344072388

`A003557(lcm(A165900(n), A181820(n+1)))`
-/

namespace A098120.P11321952062344072388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.lcm (A165900 n) (A181820 (n + 1)))

end

end A098120.P11321952062344072388

/-! ## A098120.P13846690504474405373

`A000190(A001359(n+1)*A181820(n+1))`
-/

namespace A098120.P13846690504474405373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A001359 (n + 1) * A181820 (n + 1)).toNat

end

end A098120.P13846690504474405373

/-! ## A098120.P6705311657629240197

`A003557(A001359(n+1)*A181820(n+1))`
-/

namespace A098120.P6705311657629240197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A001359 (n + 1) * A181820 (n + 1)).toNat

end

end A098120.P6705311657629240197

/-! ## A098120.P5191254310287241793

`A000190(A006512(n+1)*A181820(n+1))`
-/

namespace A098120.P5191254310287241793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A006512 (n + 1) * A181820 (n + 1)).toNat

end

end A098120.P5191254310287241793

/-!
# A098121: Harshad numbers that are also perfect powers.

The programs for A098121, there is no canonical definition to state claims against.
-/

/-! ## A098121.P5131411626846339687

`∩[A001597(n+1), A005349(n+1)]`
-/

namespace A098121.P5131411626846339687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098121.P5131411626846339687

/-! ## A098121.P16122943512269478184

`∩[A005349(n+1), abs(A157985(n+1))]`
-/

namespace A098121.P16122943512269478184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098121.P16122943512269478184

/-! ## A098121.P1298780989691462522

`filter[A005349(n+1), A075802(#)]`
-/

namespace A098121.P1298780989691462522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A098121.P1298780989691462522

/-!
# A098122: Let (A,B)=(a(2*n),a(2*n+1)), then (A,B) is (even,odd), gcd(A,B)=1 and A^2 + B^2 = 5^n. Note: a(0)=0.

The programs for A098122, there is no canonical definition to state claims against.
-/

/-! ## A098122.P7686211578522566577

`abs(A292495(record[A245300(n)]))`
-/

namespace A098122.P7686211578522566577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292495 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A098122.P7686211578522566577

/-!
# A098123: Number of compositions of n with equal number of even and odd parts.

The programs for A098123, there is no canonical definition to state claims against.
-/

/-! ## A098123.P2495223563892566921

`A242498(A242477(char[1]+n))`
-/

namespace A098123.P2495223563892566921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A242477 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A098123.P2495223563892566921

/-! ## A098123.P16509666851040189202

`A242498(A242477(n))-char[1]`
-/

namespace A098123.P16509666851040189202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A242477 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A098123.P16509666851040189202

/-! ## A098123.P14772858112067572867

`A060576(n)*A242498(A242477(n))`
-/

namespace A098123.P14772858112067572867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A242498 (A242477 n).toNat

end

end A098123.P14772858112067572867

/-! ## A098123.P13255346097106267052

`A242498(A242477(n))%A074048(n)`
-/

namespace A098123.P13255346097106267052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242498 (A242477 n).toNat) (A074048 n)

end

end A098123.P13255346097106267052

/-! ## A098123.P2495895035210847461

`A274719(A055664(n+1))+A242498(A242477(n))`
-/

namespace A098123.P2495895035210847461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (A055664 (n + 1)).toNat + A242498 (A242477 n).toNat

end

end A098123.P2495895035210847461

/-!
# A098124: Number of compositions of n in which the largest part is equal to the number of parts.

The programs for A098124, there is no canonical definition to state claims against.
-/

/-! ## A098124.P16265203180027982092

`A077229(n+1)-A098125(n+1)`
-/

namespace A098124.P16265203180027982092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077229 (n + 1) - A098125 (n + 1)

end

end A098124.P16265203180027982092

/-! ## A098124.P179371562245712579

`A000079(n)-(A348125(n+1)+A098125(n+1))`
-/

namespace A098124.P179371562245712579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A348125 (n + 1) + A098125 (n + 1))

end

end A098124.P179371562245712579

/-! ## A098124.P1605558611197799545

`A011782(n+1)-(A348125(n+1)+A098125(n+1))`
-/

namespace A098124.P1605558611197799545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A348125 (n + 1) + A098125 (n + 1))

end

end A098124.P1605558611197799545

/-!
# A098125: Number of compositions of n where the largest part is less than the number of parts.

The programs for A098125, there is no canonical definition to state claims against.
-/

/-! ## A098125.P5139375023595096674

`A077229(n+1)-A098124(n+1)`
-/

namespace A098125.P5139375023595096674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077229 (n + 1) - A098124 (n + 1)

end

end A098125.P5139375023595096674

/-! ## A098125.P4829822929452423642

`A000079(n)-(A348125(n+1)+A098124(n+1))`
-/

namespace A098125.P4829822929452423642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A348125 (n + 1) + A098124 (n + 1))

end

end A098125.P4829822929452423642

/-! ## A098125.P1411944454225352488

`A011782(n+1)-(A348125(n+1)+A098124(n+1))`
-/

namespace A098125.P1411944454225352488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A348125 (n + 1) + A098124 (n + 1))

end

end A098125.P1411944454225352488

/-!
# A098127: Fibonacci sequence with a(1) = 7 and a(2) = 26.

The programs for A098127, the canonical program `A098127.P4294308950598038841` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098127 has offset 1).

The definition of A098127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098127.P4294308950598038841

`a(n-1)+a(n-2)` with `a(0)=7, a(1)=26`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098127

/-- `a(n-1)+a(n-2)` -/
def P4294308950598038841.Spec : Prop :=
  ∀ n, (P4294308950598038841.a n : ℤ) = A098127 (n + 1)

theorem P4294308950598038841.correct : P4294308950598038841.Spec := by
  intro n
  simp only [A098127, Nat.add_sub_cancel]

end A098127

/-! ## A098127.P11375860903398885675

`ogf((7+19x)/(1-x-x^2))`
-/

namespace A098127.P11375860903398885675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 19] [1, -1, -1] n

end

end A098127.P11375860903398885675

namespace A098127

/-- `ogf((7+19x)/(1-x-x^2))` -/
def P11375860903398885675.Spec : Prop :=
  ∀ n, P11375860903398885675.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P16295356289244817268

`A022371(n)+A020712(n)`
-/

namespace A098127.P16295356289244817268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022371 n + A020712 n

end

end A098127.P16295356289244817268

namespace A098127

/-- `A022371(n)+A020712(n)` -/
def P16295356289244817268.Spec : Prop :=
  ∀ n, P16295356289244817268.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P16990269050966681915

`A022130(n)+A022127(n)`
-/

namespace A098127.P16990269050966681915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022127 n

end

end A098127.P16990269050966681915

namespace A098127

/-- `A022130(n)+A022127(n)` -/
def P16990269050966681915.Spec : Prop :=
  ∀ n, P16990269050966681915.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P3207355383173576871

`A022132(n)+A022124(n)`
-/

namespace A098127.P3207355383173576871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n + A022124 n

end

end A098127.P3207355383173576871

namespace A098127

/-- `A022132(n)+A022124(n)` -/
def P3207355383173576871.Spec : Prop :=
  ∀ n, P3207355383173576871.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P17491974843132916979

`A022133(n)+A022123(n)`
-/

namespace A098127.P17491974843132916979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022133 n + A022123 n

end

end A098127.P17491974843132916979

namespace A098127

/-- `A022133(n)+A022123(n)` -/
def P17491974843132916979.Spec : Prop :=
  ∀ n, P17491974843132916979.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P12573941593500975477

`A022135(n)+A022120(n)`
-/

namespace A098127.P12573941593500975477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022135 n + A022120 n

end

end A098127.P12573941593500975477

namespace A098127

/-- `A022135(n)+A022120(n)` -/
def P12573941593500975477.Spec : Prop :=
  ∀ n, P12573941593500975477.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P11697129844451369110

`A022136(n)+A022117(n)`
-/

namespace A098127.P11697129844451369110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 n + A022117 n

end

end A098127.P11697129844451369110

namespace A098127

/-- `A022136(n)+A022117(n)` -/
def P11697129844451369110.Spec : Prop :=
  ∀ n, P11697129844451369110.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P14267222922573919537

`A022138(n)+A022116(n)`
-/

namespace A098127.P14267222922573919537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022138 n + A022116 n

end

end A098127.P14267222922573919537

namespace A098127

/-- `A022138(n)+A022116(n)` -/
def P14267222922573919537.Spec : Prop :=
  ∀ n, P14267222922573919537.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P7844595026954266372

`A022141(n)+A022114(n)`
-/

namespace A098127.P7844595026954266372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022141 n + A022114 n

end

end A098127.P7844595026954266372

namespace A098127

/-- `A022141(n)+A022114(n)` -/
def P7844595026954266372.Spec : Prop :=
  ∀ n, P7844595026954266372.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P10505656560616968299

`A022143(n)+A022113(n)`
-/

namespace A098127.P10505656560616968299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022143 n + A022113 n

end

end A098127.P10505656560616968299

namespace A098127

/-- `A022143(n)+A022113(n)` -/
def P10505656560616968299.Spec : Prop :=
  ∀ n, P10505656560616968299.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P7847242098472746535

`A022388(n)+A022103(n)`
-/

namespace A098127.P7847242098472746535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022388 n + A022103 n

end

end A098127.P7847242098472746535

namespace A098127

/-- `A022388(n)+A022103(n)` -/
def P7847242098472746535.Spec : Prop :=
  ∀ n, P7847242098472746535.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P14331957449400552320

`A022367(n)+A022140(n)`
-/

namespace A098127.P14331957449400552320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022140 n

end

end A098127.P14331957449400552320

namespace A098127

/-- `A022367(n)+A022140(n)` -/
def P14331957449400552320.Spec : Prop :=
  ∀ n, P14331957449400552320.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P15008796227518594443

`A022368(n)+A022139(n)`
-/

namespace A098127.P15008796227518594443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A022139 n

end

end A098127.P15008796227518594443

namespace A098127

/-- `A022368(n)+A022139(n)` -/
def P15008796227518594443.Spec : Prop :=
  ∀ n, P15008796227518594443.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P9334961010232618

`A022369(n)+A022137(n)`
-/

namespace A098127.P9334961010232618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022369 n + A022137 n

end

end A098127.P9334961010232618

namespace A098127

/-- `A022369(n)+A022137(n)` -/
def P9334961010232618.Spec : Prop :=
  ∀ n, P9334961010232618.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P3683997818054572766

`A022379(n)+A022134(n)`
-/

namespace A098127.P3683997818054572766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A022134 n

end

end A098127.P3683997818054572766

namespace A098127

/-- `A022379(n)+A022134(n)` -/
def P3683997818054572766.Spec : Prop :=
  ∀ n, P3683997818054572766.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P11811338112360804609

`A022381(n)+A022131(n)`
-/

namespace A098127.P11811338112360804609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022381 n + A022131 n

end

end A098127.P11811338112360804609

namespace A098127

/-- `A022381(n)+A022131(n)` -/
def P11811338112360804609.Spec : Prop :=
  ∀ n, P11811338112360804609.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P3090527144384133497

`A022382(n)+A022126(n)`
-/

namespace A098127.P3090527144384133497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n + A022126 n

end

end A098127.P3090527144384133497

namespace A098127

/-- `A022382(n)+A022126(n)` -/
def P3090527144384133497.Spec : Prop :=
  ∀ n, P3090527144384133497.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P8186704495709782581

`A022384(n)+A022121(n)`
-/

namespace A098127.P8186704495709782581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022384 n + A022121 n

end

end A098127.P8186704495709782581

namespace A098127

/-- `A022384(n)+A022121(n)` -/
def P8186704495709782581.Spec : Prop :=
  ∀ n, P8186704495709782581.a n = A098127 (n + 1)

end A098127

/-! ## A098127.P15882926371845234674

`A022389(n)+A022345(n)`
-/

namespace A098127.P15882926371845234674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022389 n + A022345 n

end

end A098127.P15882926371845234674

namespace A098127

/-- `A022389(n)+A022345(n)` -/
def P15882926371845234674.Spec : Prop :=
  ∀ n, P15882926371845234674.a n = A098127 (n + 1)

end A098127

/-!
# A098130: Concatenation of consecutive primes in the forward and reverse order.

The programs for A098130, there is no canonical definition to state claims against.
-/

/-! ## A098130.P18122678180056693296

`A138140(A070788(n+1)+1)`
-/

namespace A098130.P18122678180056693296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138140 (A070788 (n + 1) + 1).toNat

end

end A098130.P18122678180056693296

/-!
# A098131: Number of compositions of n where the smallest part is greater than or equal to the number of parts.

The programs for A098131, there is no canonical definition to state claims against.
-/

/-! ## A098131.P3042435474605194569

`gcd(C(2, n), ∑[A236310(n)])`
-/

namespace A098131.P3042435474605194569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098131.P3042435474605194569

/-! ## A098131.P8814768770111831180

`∑[A236310(abs(2-n)+2)]`
-/

namespace A098131.P8814768770111831180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236310 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098131.P8814768770111831180

/-! ## A098131.P3453936565917027095

`∑[A236310(char[1]+n)]+1`
-/

namespace A098131.P3453936565917027095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236310 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A098131.P3453936565917027095

/-! ## A098131.P5255009830271631540

`A000007(n)+∑[A236310(n)]`
-/

namespace A098131.P5255009830271631540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098131.P5255009830271631540

/-! ## A098131.P16325150634319982290

`xor(∑[A236310(n)], A000007(2*n))`
-/

namespace A098131.P16325150634319982290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 (2 * n))

end

end A098131.P16325150634319982290

/-! ## A098131.P10940226201454812118

`∑[A236310(n)]^A001221(A001316(n))`
-/

namespace A098131.P10940226201454812118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A098131.P10940226201454812118

/-! ## A098131.P10499227678412914920

`∑[A236310(n)]^A003415(A020639(n+1))`
-/

namespace A098131.P10499227678412914920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A003415 (A020639 (n + 1)).toNat : ℤ)

end

end A098131.P10499227678412914920

/-! ## A098131.P10069372860768598669

`A098133(A028310(n))+A098132(A028310(n))`
-/

namespace A098131.P10069372860768598669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098133 (A028310 n).toNat + A098132 (A028310 n).toNat

end

end A098131.P10069372860768598669

/-!
# A098132: Number of compositions of n where the smallest part is greater than the number of parts.

The programs for A098132, there is no canonical definition to state claims against.
-/

/-! ## A098132.P2395739308815263114

`Δ[A321481(n)]`
-/

namespace A098132.P2395739308815263114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098132.P2395739308815263114

/-! ## A098132.P13507859381133214110

`A321481(n+1)-A321481(n)`
-/

namespace A098132.P13507859381133214110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321481 (n + 1) - A321481 n

end

end A098132.P13507859381133214110

/-! ## A098132.P8365677679466334744

`record[A321481(A025480(n))]-A321481(n)`
-/

namespace A098132.P8365677679466334744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321481 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A321481 n

end

end A098132.P8365677679466334744

/-! ## A098132.P7066998697269990588

`A000079(n)-(A348124(n+1)+A098133(n+1))`
-/

namespace A098132.P7066998697269990588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A348124 (n + 1) + A098133 (n + 1))

end

end A098132.P7066998697269990588

/-! ## A098132.P1647030530788218605

`A011782(n+1)-(A348124(n+1)+A098133(n+1))`
-/

namespace A098132.P1647030530788218605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A348124 (n + 1) + A098133 (n + 1))

end

end A098132.P1647030530788218605

/-!
# A098133: Number of compositions of n in which the smallest part is equal to the number of parts.

The programs for A098133, there is no canonical definition to state claims against.
-/

/-! ## A098133.P9914861424527975053

`A098131(n+1)-A098132(n+1)`
-/

namespace A098133.P9914861424527975053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098131 (n + 1) - A098132 (n + 1)

end

end A098133.P9914861424527975053

/-! ## A098133.P11651839532932179480

`∑[A236310(n+1)]-A098132(n+1)`
-/

namespace A098133.P11651839532932179480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098132 (n + 1)

end

end A098133.P11651839532932179480

/-! ## A098133.P8273822463112769991

`A000079(n)-(A348124(n+1)+A098132(n+1))`
-/

namespace A098133.P8273822463112769991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A348124 (n + 1) + A098132 (n + 1))

end

end A098133.P8273822463112769991

/-! ## A098133.P14000749241626342741

`A011782(n+1)-(A348124(n+1)+A098132(n+1))`
-/

namespace A098133.P14000749241626342741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A348124 (n + 1) + A098132 (n + 1))

end

end A098133.P14000749241626342741

/-!
# A098137: a(n) = n^n + n^prime(n).

The programs for A098137, the canonical program `A098137.P17122769462180348508` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098137 has offset 1).

The definition of A098137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098137.P11716239963831018222

`(n+1)^(n+1)+(n+1)^A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098137.P11716239963831018222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) + (n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A098137.P11716239963831018222

namespace A098137

/-- `(n+1)^(n+1)+(n+1)^A000040(n+1)` -/
def P11716239963831018222.Spec : Prop :=
  ∀ n, P11716239963831018222.a n = (A098137 (n + 1) : ℚ)

end A098137

/-! ## A098137.P17122769462180348508

`A000312(n+1)+A062481(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098137

/-- `A000312(n+1)+A062481(n+1)` -/
def P17122769462180348508.Spec : Prop :=
  ∀ n, P17122769462180348508.a n = A098137 (n + 1)

theorem P17122769462180348508.correct : P17122769462180348508.Spec := by
  intro n
  simp only [A098137, Nat.add_sub_cancel]

end A098137

/-! ## A098137.P4714440856295293208

`(n+1)^(n+1)+(n+1)^record[A020639(n+2)]`
-/

namespace A098137.P4714440856295293208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) + (n + 1 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A098137.P4714440856295293208

namespace A098137

/-- `(n+1)^(n+1)+(n+1)^record[A020639(n+2)]` -/
def P4714440856295293208.Spec : Prop :=
  ∀ n, P4714440856295293208.a n = (A098137 (n + 1) : ℚ)

end A098137

/-! ## A098137.P1413000406748764043

`A000312(n+1)+(n+1)^A008578(n+2)`
-/

namespace A098137.P1413000406748764043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) : ℚ) + (n + 1 : ℚ) ^ (A008578 (n + 2) : ℤ)

end

end A098137.P1413000406748764043

namespace A098137

/-- `A000312(n+1)+(n+1)^A008578(n+2)` -/
def P1413000406748764043.Spec : Prop :=
  ∀ n, P1413000406748764043.a n = (A098137 (n + 1) : ℚ)

end A098137

/-! ## A098137.P13890574114021962661

`A000312(n+1)+(n+1)^A182986(n+2)`
-/

namespace A098137.P13890574114021962661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) : ℚ) + (n + 1 : ℚ) ^ (A182986 (n + 2) : ℤ)

end

end A098137.P13890574114021962661

namespace A098137

/-- `A000312(n+1)+(n+1)^A182986(n+2)` -/
def P13890574114021962661.Spec : Prop :=
  ∀ n, P13890574114021962661.a n = (A098137 (n + 1) : ℚ)

end A098137

/-!
# A098138: a(n) = p^n + n^p where p = prime(n).

The programs for A098138, the canonical program `A098138.P2903723394338854215` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098138 has offset 1).

The definition of A098138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098138.P2903723394338854215

`(n+1)^A000040(n+1)+A000040(n+1)^(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098138

/-- `(n+1)^A000040(n+1)+A000040(n+1)^(n+1)` -/
def P2903723394338854215.Spec : Prop :=
  ∀ n, P2903723394338854215.a n = (A098138 (n + 1) : ℚ)

end A098138

/-! ## A098138.P10800378406311514800

`A062481(n+1)+A062457(n+1)`
-/

namespace A098138.P10800378406311514800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1) + A062457 (n + 1)

end

end A098138.P10800378406311514800

namespace A098138

/-- `A062481(n+1)+A062457(n+1)` -/
def P10800378406311514800.Spec : Prop :=
  ∀ n, P10800378406311514800.a n = A098138 (n + 1)

end A098138

/-! ## A098138.P5636590506959329952

`A062481(n+1)+A069459(n+1)+1`
-/

namespace A098138.P5636590506959329952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1) + (A069459 (n + 1) + 1)

end

end A098138.P5636590506959329952

namespace A098138

/-- `A062481(n+1)+A069459(n+1)+1` -/
def P5636590506959329952.Spec : Prop :=
  ∀ n, P5636590506959329952.a n = A098138 (n + 1)

end A098138

/-! ## A098138.P10946990323187518173

`A062006(n+1)+A062481(n+1)-1`
-/

namespace A098138.P10946990323187518173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062006 (n + 1) + (A062481 (n + 1) - 1)

end

end A098138.P10946990323187518173

namespace A098138

/-- `A062006(n+1)+A062481(n+1)-1` -/
def P10946990323187518173.Spec : Prop :=
  ∀ n, P10946990323187518173.a n = A098138 (n + 1)

end A098138

/-! ## A098138.P6626711901897659255

`A062481(n+1)+A030291(n+1)^(n+1)`
-/

namespace A098138.P6626711901897659255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1) + A030291 (n + 1) ^ (n + 1)

end

end A098138.P6626711901897659255

namespace A098138

/-- `A062481(n+1)+A030291(n+1)^(n+1)` -/
def P6626711901897659255.Spec : Prop :=
  ∀ n, P6626711901897659255.a n = A098138 (n + 1)

end A098138

/-!
# A098139: a(n) = 2^p + 3^p + 5^p + 7^p where p = prime(n).

The programs for A098139, the canonical program `A098139.P4239818292891069069` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098139 has offset 1).

The definition of A098139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098139.P4239818292891069069

`2^A000040(n+1)+3^A000040(n+1)+5^A000040(n+1)+7^A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098139

/-- `2^A000040(n+1)+3^A000040(n+1)+5^A000040(n+1)+7^A000040(n+1)` -/
def P4239818292891069069.Spec : Prop :=
  ∀ n, P4239818292891069069.a n = (A098139 (n + 1) : ℚ)

end A098139

/-! ## A098139.P16208561714015676803

`A135168(Δ[A007504(n)])`
-/

namespace A098139.P16208561714015676803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135168 (f1 (n + 1) - f1 n).toNat

end

end A098139.P16208561714015676803

namespace A098139

/-- `A135168(Δ[A007504(n)])` -/
def P16208561714015676803.Spec : Prop :=
  ∀ n, P16208561714015676803.a n = A098139 (n + 1)

end A098139

/-! ## A098139.P12066376107012318372

`A135168(A000040(n+1))`
-/

namespace A098139.P12066376107012318372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135168 (A000040 (n + 1)).toNat

end

end A098139.P12066376107012318372

namespace A098139

/-- `A135168(A000040(n+1))` -/
def P12066376107012318372.Spec : Prop :=
  ∀ n, P12066376107012318372.a n = A098139 (n + 1)

end A098139

/-! ## A098139.P5445650986971079605

`A135168(∑[A075526(n)]+1)`
-/

namespace A098139.P5445650986971079605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135168 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A098139.P5445650986971079605

namespace A098139

/-- `A135168(∑[A075526(n)]+1)` -/
def P5445650986971079605.Spec : Prop :=
  ∀ n, P5445650986971079605.a n = A098139 (n + 1)

end A098139

/-! ## A098139.P16306164577190505107

`A135168(record[A006530(n+2)])`
-/

namespace A098139.P16306164577190505107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135168 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098139.P16306164577190505107

namespace A098139

/-- `A135168(record[A006530(n+2)])` -/
def P16306164577190505107.Spec : Prop :=
  ∀ n, P16306164577190505107.a n = A098139 (n + 1)

end A098139

/-!
# A098140: 63-gonal numbers: a(n) = n*(61*n - 59)/2.

The programs for A098140, the canonical program `A098140.P11143877648746033736` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098140 has offset 0).

The definition of A098140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(61*n-59)/2` (program `A098140.P7055785563504636899`, by `A098140.P7055785563504636899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098140.P7055785563504636899

`n*(61*n-59)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098140.P7055785563504636899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((61 * n : ℤ) - 59) : ℚ) / 2

end

end A098140.P7055785563504636899

namespace A098140

/-- `n*(61*n-59)/2` -/
def P7055785563504636899.Spec : Prop :=
  ∀ n, P7055785563504636899.a n = (A098140 n : ℚ)

theorem P7055785563504636899.correct : P7055785563504636899.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A098140, Nat.add_sub_cancel, A098140.P7055785563504636899.a, A098140.P11143877648746033736.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A098140, Nat.add_sub_cancel, A098140.P7055785563504636899.a, A098140.P11143877648746033736.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A098140

/-! ## A098140.P11143877648746033736

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=63`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098140

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11143877648746033736.Spec : Prop :=
  ∀ n, P11143877648746033736.a n = A098140 n

theorem P11143877648746033736.correct : P11143877648746033736.Spec := by
  intro n
  simp only [A098140]

end A098140

/-! ## A098140.P12224247266822457130

`61*C(n, 2)+n`
-/

namespace A098140.P12224247266822457130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * Nat.choose n 2 + n

end

end A098140.P12224247266822457130

namespace A098140

/-- `61*C(n, 2)+n` -/
def P12224247266822457130.Spec : Prop :=
  ∀ n, (P12224247266822457130.a n : ℤ) = A098140 n

end A098140

/-! ## A098140.P12752471103660386412

`∑[a(n-1)+61]` with `a(0)=0, a(1)=1`
-/

namespace A098140.P12752471103660386412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098140.P12752471103660386412

namespace A098140

/-- `∑[a(n-1)+61]` -/
def P12752471103660386412.Spec : Prop :=
  ∀ n, (P12752471103660386412.a n : ℤ) = A098140 n

end A098140

/-! ## A098140.P3525017773232211121

`A263228(n)-A140090(n)`
-/

namespace A098140.P3525017773232211121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263228 n - A140090 n

end

end A098140.P3525017773232211121

namespace A098140

/-- `A263228(n)-A140090(n)` -/
def P3525017773232211121.Spec : Prop :=
  ∀ n, P3525017773232211121.a n = A098140 n

end A098140

/-! ## A098140.P1681406791675980324

`A051873(n)+A098230(n)-A098923(n)`
-/

namespace A098140.P1681406791675980324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n + (A098230 n - A098923 n)

end

end A098140.P1681406791675980324

namespace A098140

/-- `A051873(n)+A098230(n)-A098923(n)` -/
def P1681406791675980324.Spec : Prop :=
  ∀ n, P1681406791675980324.a n = A098140 n

end A098140

/-! ## A098140.P5324530764545563268

`A282850(n)+A282851(n)-A001107(n)`
-/

namespace A098140.P5324530764545563268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282850 n + (A282851 n - A001107 n)

end

end A098140.P5324530764545563268

namespace A098140

/-- `A282850(n)+A282851(n)-A001107(n)` -/
def P5324530764545563268.Spec : Prop :=
  ∀ n, P5324530764545563268.a n = A098140 n

end A098140

/-! ## A098140.P18099363204764901846

`A261191(n)+A282854(n)-A051682(n)`
-/

namespace A098140.P18099363204764901846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261191 n + (A282854 n - A051682 n)

end

end A098140.P18099363204764901846

namespace A098140

/-- `A261191(n)+A282854(n)-A051682(n)` -/
def P18099363204764901846.Spec : Prop :=
  ∀ n, P18099363204764901846.a n = A098140 n

end A098140

/-! ## A098140.P16354199257453775518

`abs(A069132(n+1)-A069133(A004277(n)))`
-/

namespace A098140.P16354199257453775518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069132 (n + 1) - A069133 (A004277 n).toNat|

end

end A098140.P16354199257453775518

namespace A098140

/-- `abs(A069132(n+1)-A069133(A004277(n)))` -/
def P16354199257453775518.Spec : Prop :=
  ∀ n, P16354199257453775518.a n = A098140 n

end A098140

/-! ## A098140.P572103685515850084

`∑[record[and(n, A240350(n))]]`
-/

namespace A098140.P572103685515850084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A240350 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098140.P572103685515850084

namespace A098140

/-- `∑[record[and(n, A240350(n))]]` -/
def P572103685515850084.Spec : Prop :=
  ∀ n, P572103685515850084.a n = A098140 n

end A098140

/-!
# A098141: a(1)=1, then if n not a square a(n)=a(n-1) + n, if n a square then a(n)= a(n-1) - n.

The programs for A098141, the canonical program `A098141.P9593547582671812815` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098141 has offset 1).

The definition of A098141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098141.P6800921458432420744

`∑[(n+1)*(-1)^A070824(n+1)]`
-/

namespace A098141.P6800921458432420744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (A070824 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098141.P6800921458432420744

namespace A098141

/-- `∑[(n+1)*(-1)^A070824(n+1)]` -/
def P6800921458432420744.Spec : Prop :=
  ∀ n, P6800921458432420744.a n = (A098141 (n + 1) : ℚ)

end A098141

/-! ## A098141.P9593547582671812815

`∏{d}[n+1, -A014963(#)]+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A098141

/-- `∏{d}[n+1, -A014963(#)]+a(n-1)` -/
def P9593547582671812815.Spec : Prop :=
  ∀ n, P9593547582671812815.a n = A098141 (n + 1)

theorem P9593547582671812815.correct : P9593547582671812815.Spec := by
  intro n
  simp only [A098141, Nat.add_sub_cancel]

end A098141

/-! ## A098141.P2687713288179871250

`∑[(n+1)*A008683(a(A000122(n+1)))]` with `a(0)=1`
-/

namespace A098141.P2687713288179871250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * A008683 (f1 (A000122 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098141.P2687713288179871250

namespace A098141

/-- `∑[(n+1)*A008683(a(A000122(n+1)))]` -/
def P2687713288179871250.Spec : Prop :=
  ∀ n, P2687713288179871250.a n = A098141 (n + 1)

end A098141

/-! ## A098141.P1900965548685235909

`∑[(n+1)*A062242(a(A000122(n+1)))]` with `a(0)=1`
-/

namespace A098141.P1900965548685235909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * A062242 (f1 (A000122 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098141.P1900965548685235909

namespace A098141

/-- `∑[(n+1)*A062242(a(A000122(n+1)))]` -/
def P1900965548685235909.Spec : Prop :=
  ∀ n, P1900965548685235909.a n = A098141 (n + 1)

end A098141

/-! ## A098141.P2105125861584609350

`A108174(n+1)+2`
-/

namespace A098141.P2105125861584609350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108174 (n + 1) + 2

end

end A098141.P2105125861584609350

namespace A098141

/-- `A108174(n+1)+2` -/
def P2105125861584609350.Spec : Prop :=
  ∀ n, P2105125861584609350.a n = A098141 (n + 1)

end A098141

/-!
# A098142: Numbers n such that (p*(q-1)+(p-1)*q)/2 is prime, where p and q are consecutive odd primes, p

The programs for A098142, the canonical program `A098142.P9774141478526730411` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098142 has offset 1).

The definition of A098142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098142.P9774141478526730411

`eq[1, A099910(n+2)]+2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098142

/-- `eq[1, A099910(n+2)]+2` -/
def P9774141478526730411.Spec : Prop :=
  ∀ n, (P9774141478526730411.a n : ℤ) = A098142 (n + 1)

theorem P9774141478526730411.correct : P9774141478526730411.Spec := by
  intro n
  simp only [A098142, Nat.add_sub_cancel]

end A098142

/-! ## A098142.P2131778014331669239

`record[A020725(n+1)/A099910(n+2)]`
-/

namespace A098142.P2131778014331669239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (A099910 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098142.P2131778014331669239

namespace A098142

/-- `record[A020725(n+1)/A099910(n+2)]` -/
def P2131778014331669239.Spec : Prop :=
  ∀ n, P2131778014331669239.a n = (A098142 (n + 1) : ℚ)

end A098142

/-! ## A098142.P13994111589815068558

`record[A008619(2*(n+1))/A099910(n+2)]`
-/

namespace A098142.P13994111589815068558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * (n + 1)) : ℚ) / (A099910 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098142.P13994111589815068558

namespace A098142

/-- `record[A008619(2*(n+1))/A099910(n+2)]` -/
def P13994111589815068558.Spec : Prop :=
  ∀ n, P13994111589815068558.a n = (A098142 (n + 1) : ℚ)

end A098142

/-! ## A098142.P13137363840333195395

`record[A004525(2*(n+2))/A099910(n+2)]`
-/

namespace A098142.P13137363840333195395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (2 * (n + 2)) : ℚ) / (A099910 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098142.P13137363840333195395

namespace A098142

/-- `record[A004525(2*(n+2))/A099910(n+2)]` -/
def P13137363840333195395.Spec : Prop :=
  ∀ n, P13137363840333195395.a n = (A098142 (n + 1) : ℚ)

end A098142

/-! ## A098142.P14728462333687467305

`record[A123108(2*(n+2))/A099910(n+2)]`
-/

namespace A098142.P14728462333687467305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 (2 * (n + 2)) : ℚ) / (A099910 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098142.P14728462333687467305

namespace A098142

/-- `record[A123108(2*(n+2))/A099910(n+2)]` -/
def P14728462333687467305.Spec : Prop :=
  ∀ n, P14728462333687467305.a n = (A098142 (n + 1) : ℚ)

end A098142

/-! ## A098142.P9175691358924881281

`record[A115384(2*n+3)/A099910(n+2)]`
-/

namespace A098142.P9175691358924881281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115384 (2 * n + 3) : ℚ) / (A099910 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098142.P9175691358924881281

namespace A098142

/-- `record[A115384(2*n+3)/A099910(n+2)]` -/
def P9175691358924881281.Spec : Prop :=
  ∀ n, P9175691358924881281.a n = (A098142 (n + 1) : ℚ)

end A098142

/-! ## A098142.P6863207558695045230

`record[A004526(2*n+5)/A099910(n+2)]`
-/

namespace A098142.P6863207558695045230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (2 * n + 5) : ℚ) / (A099910 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098142.P6863207558695045230

namespace A098142

/-- `record[A004526(2*n+5)/A099910(n+2)]` -/
def P6863207558695045230.Spec : Prop :=
  ∀ n, P6863207558695045230.a n = (A098142 (n + 1) : ℚ)

end A098142

/-! ## A098142.P7831033026992737802

`record[A005408(n)/A099910(n+2)+1-n]`
-/

namespace A098142.P7831033026992737802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A099910 (n + 2) : ℚ) + (1 - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098142.P7831033026992737802

namespace A098142

/-- `record[A005408(n)/A099910(n+2)+1-n]` -/
def P7831033026992737802.Spec : Prop :=
  ∀ n, P7831033026992737802.a n = (A098142 (n + 1) : ℚ)

end A098142

/-! ## A098142.P16591949497142570512

`A080513(record[A005408(n)/A099910(n+2)])`
-/

namespace A098142.P16591949497142570512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A099910 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A098142.P16591949497142570512

namespace A098142

/-- `A080513(record[A005408(n)/A099910(n+2)])` -/
def P16591949497142570512.Spec : Prop :=
  ∀ n, P16591949497142570512.a n = A098142 (n + 1)

end A098142

/-! ## A098142.P1056894853844939660

`record[A165754(A165754(n))/A099910(n+2)]`
-/

namespace A098142.P1056894853844939660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165754 (A165754 n).toNat : ℚ) / (A099910 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098142.P1056894853844939660

namespace A098142

/-- `record[A165754(A165754(n))/A099910(n+2)]` -/
def P1056894853844939660.Spec : Prop :=
  ∀ n, P1056894853844939660.a n = (A098142 (n + 1) : ℚ)

end A098142

/-!
# A098144: a(n) = smallest number greater than a(n-1) having a largest proper divisor that is greater than and coprime to a(n-1); a(1) = 1.

The programs for A098144, there is no canonical definition to state claims against.
-/

/-! ## A098144.P11780923830588685288

`∑[gcd(A225613(n+1), A315345(n))]`
-/

namespace A098144.P11780923830588685288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225613 (n + 1)) (A315345 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098144.P11780923830588685288

/-! ## A098144.P4195950433439177760

`∑[gcd(A000040(n+1), A321329(3*n))]`
-/

namespace A098144.P4195950433439177760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A321329 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098144.P4195950433439177760

/-! ## A098144.P16965932232642237830

`∑[A093178(record[A295515(7*2^n-3)])]`
-/

namespace A098144.P16965932232642237830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (7 * 2 ^ n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098144.P16965932232642237830

/-!
# A098145: p + P(p) where p is the n-th prime and P(p) is the unrestricted partition number of p.

The programs for A098145, there is no canonical definition to state claims against.
-/

/-! ## A098145.P1118381761676036096

`A000040(n+1)+A000041(A000040(n+1))`
-/

namespace A098145.P1118381761676036096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000041 (A000040 (n + 1)).toNat

end

end A098145.P1118381761676036096

/-! ## A098145.P12141171591715577179

`A133041(p?[xor(1, n)+1])`
-/

namespace A098145.P12141171591715577179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098145.P12141171591715577179

/-! ## A098145.P12723092663495792979

`A133041(p?[abs(xor(1, -n))])`
-/

namespace A098145.P12723092663495792979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098145.P12723092663495792979

/-! ## A098145.P4257933574518246474

`A133041(p?[n-(-1)^n])`
-/

namespace A098145.P4257933574518246474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098145.P4257933574518246474

/-! ## A098145.P10925108755712494391

`A078392(p?[xor(1, n)+1])+1`
-/

namespace A098145.P10925108755712494391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078392 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A098145.P10925108755712494391

/-! ## A098145.P14376596877537202070

`A058698(n+1)+p?[ceil(2/acot(n))]`
-/

namespace A098145.P14376596877537202070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058698 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098145.P14376596877537202070

/-! ## A098145.P8277387287492074542

`A133041(A000040(n+1))`
-/

namespace A098145.P8277387287492074542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (A000040 (n + 1)).toNat

end

end A098145.P8277387287492074542

/-! ## A098145.P15879462703877897728

`A133041(A008578(n+2))`
-/

namespace A098145.P15879462703877897728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (A008578 (n + 2)).toNat

end

end A098145.P15879462703877897728

/-! ## A098145.P9678649225799387997

`A133041(A182986(n+2))`
-/

namespace A098145.P9678649225799387997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (A182986 (n + 2)).toNat

end

end A098145.P9678649225799387997

/-! ## A098145.P15332328672788847361

`A058698(n+1)+A000040(n+1)`
-/

namespace A098145.P15332328672788847361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058698 (n + 1) + A000040 (n + 1)

end

end A098145.P15332328672788847361

/-! ## A098145.P5148244384011564830

`A133041(A014688(n+1)-(n+1))`
-/

namespace A098145.P5148244384011564830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

end

end A098145.P5148244384011564830

/-! ## A098145.P14623589040144146656

`record[A342621(n+2)+A006530(n+2)]`
-/

namespace A098145.P14623589040144146656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342621 (n + 2) + A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098145.P14623589040144146656

/-! ## A098145.P11496454581535315885

`A133041(A007504(n+1)-A007504(n))`
-/

namespace A098145.P11496454581535315885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (A007504 (n + 1) - A007504 n).toNat

end

end A098145.P11496454581535315885

/-! ## A098145.P12855400746637521070

`A067747(2*n+1)+A000041(A067747(2*n+1))`
-/

namespace A098145.P12855400746637521070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) + A000041 (A067747 (2 * n + 1)).toNat

end

end A098145.P12855400746637521070

/-! ## A098145.P5598998313488366597

`A000040(n+1)+A182723(n+1)/A000040(n+1)`
-/

namespace A098145.P5598998313488366597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A182723 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A098145.P5598998313488366597

/-!
# A098146: First odd semiprime > 10^n.

The programs for A098146, there is no canonical definition to state claims against.
-/

/-! ## A098146.P16041507000449769206

`A098449(n+1)+A073911(A297200(n))`
-/

namespace A098146.P16041507000449769206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098449 (n + 1) + A073911 (A297200 n).toNat

end

end A098146.P16041507000449769206

/-!
# A098147: Difference between first odd semiprime > 10^n and 10^n.

The programs for A098147, there is no canonical definition to state claims against.
-/

/-! ## A098147.P17397978514596923907

`A098146(n+1)-10^(n+1)`
-/

namespace A098147.P17397978514596923907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098146 (n + 1) - (10 ^ (n + 1) : ℤ)

end

end A098147.P17397978514596923907

/-! ## A098147.P7631378960410810607

`A098146(n+1)%A033846(n+1)`
-/

namespace A098147.P7631378960410810607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098146 (n + 1)) (A033846 (n + 1))

end

end A098147.P7631378960410810607

/-! ## A098147.P15469371196950548584

`A033873(n+1)+A098146(n+1)-A003617(n+2)`
-/

namespace A098147.P15469371196950548584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 (n + 1) + (A098146 (n + 1) - A003617 (n + 2))

end

end A098147.P15469371196950548584

/-!
# A098149: a(0)=-1, a(1)=-1, a(n)=-3*a(n-1)-a(n-2) for n>1.

The programs for A098149, the canonical program `A098149.P13746271780212558307` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098149 has offset 0).

The definition of A098149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-3*a(n-1)-a(n-2)` (program `A098149.P13746271780212558307`, by `A098149.P13746271780212558307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098149.P13746271780212558307

`-3*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098149

/-- `-3*a(n-1)-a(n-2)` -/
def P13746271780212558307.Spec : Prop :=
  ∀ n, P13746271780212558307.a n = A098149 n

theorem P13746271780212558307.correct : P13746271780212558307.Spec := by
  intro n
  simp only [A098149]

end A098149

/-! ## A098149.P12307765888069794914

`ogf((-1-4x)/(1+3x+x^2))`
-/

namespace A098149.P12307765888069794914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -4] [1, 3, 1] n

end

end A098149.P12307765888069794914

namespace A098149

/-- `ogf((-1-4x)/(1+3x+x^2))` -/
def P12307765888069794914.Spec : Prop :=
  ∀ n, P12307765888069794914.a n = A098149 n

end A098149

/-! ## A098149.P9764890993256486072

`a(n-1)-(a(n-2)+4*a(n-1))` with `a(0)=-1, a(1)=-1`
-/

namespace A098149.P9764890993256486072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n a =>
  a (n - 1) - (a (n - 2) + 4 * a (n - 1))

end

end A098149.P9764890993256486072

namespace A098149

/-- `a(n-1)-(a(n-2)+4*a(n-1))` -/
def P9764890993256486072.Spec : Prop :=
  ∀ n, P9764890993256486072.a n = A098149 n

theorem P9764890993256486072.correct : P9764890993256486072.Spec := by
  intro n
  simp only [A098149, Nat.add_sub_cancel, A098149.P9764890993256486072.a, A098149.P13746271780212558307.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098149

/-! ## A098149.P4542485250193952163

`a(n-1)-4*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=-1`
-/

namespace A098149.P4542485250193952163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n a =>
  a (n - 1) - 4 * a (n - 1) - a (n - 2)

end

end A098149.P4542485250193952163

namespace A098149

/-- `a(n-1)-4*a(n-1)-a(n-2)` -/
def P4542485250193952163.Spec : Prop :=
  ∀ n, P4542485250193952163.a n = A098149 n

theorem P4542485250193952163.correct : P4542485250193952163.Spec := by
  intro n
  simp only [A098149, Nat.add_sub_cancel, A098149.P4542485250193952163.a, A098149.P13746271780212558307.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098149

/-! ## A098149.P3069710204368369405

`Δ[A061084(n)*A212804(n)]`
-/

namespace A098149.P3069710204368369405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098149.P3069710204368369405

namespace A098149

/-- `Δ[A061084(n)*A212804(n)]` -/
def P3069710204368369405.Spec : Prop :=
  ∀ n, P3069710204368369405.a n = A098149 n

end A098149

/-! ## A098149.P12697701749429475460

`1-A000032(n)*A061084(n)`
-/

namespace A098149.P12697701749429475460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000032 n * A061084 n

end

end A098149.P12697701749429475460

namespace A098149

/-- `1-A000032(n)*A061084(n)` -/
def P12697701749429475460.Spec : Prop :=
  ∀ n, P12697701749429475460.a n = A098149 n

end A098149

/-! ## A098149.P10502737336810880175

`Δ[Δ[A000045(n)]*A061084(n)]`
-/

namespace A098149.P10502737336810880175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098149.P10502737336810880175

namespace A098149

/-- `Δ[Δ[A000045(n)]*A061084(n)]` -/
def P10502737336810880175.Spec : Prop :=
  ∀ n, P10502737336810880175.a n = A098149 n

end A098149

/-! ## A098149.P11682430269592532805

`1-Δ[A001610(n)]*A061084(n)`
-/

namespace A098149.P11682430269592532805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) * A061084 n

end

end A098149.P11682430269592532805

namespace A098149

/-- `1-Δ[A001610(n)]*A061084(n)` -/
def P11682430269592532805.Spec : Prop :=
  ∀ n, P11682430269592532805.a n = A098149 n

end A098149

/-! ## A098149.P18116182982095791790

`Δ[(2-A112469(n))*A000032(n)]`
-/

namespace A098149.P18116182982095791790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A112469 n) * A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098149.P18116182982095791790

namespace A098149

/-- `Δ[(2-A112469(n))*A000032(n)]` -/
def P18116182982095791790.Spec : Prop :=
  ∀ n, P18116182982095791790.a n = A098149 n

end A098149

/-! ## A098149.P14657572953599319410

`A033999(n+1)*A061084(2*n)`
-/

namespace A098149.P14657572953599319410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A061084 (2 * n)

end

end A098149.P14657572953599319410

namespace A098149

/-- `A033999(n+1)*A061084(2*n)` -/
def P14657572953599319410.Spec : Prop :=
  ∀ n, P14657572953599319410.a n = A098149 n

end A098149

/-! ## A098149.P7418778873049765821

`1-Δ[A000204(n+1)]*A061084(n)`
-/

namespace A098149.P7418778873049765821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) * A061084 n

end

end A098149.P7418778873049765821

namespace A098149

/-- `1-Δ[A000204(n+1)]*A061084(n)` -/
def P7418778873049765821.Spec : Prop :=
  ∀ n, P7418778873049765821.a n = A098149 n

end A098149

/-! ## A098149.P627291070946664923

`(A066983(2*n+1)-A007492(2*(n+1)))*A033999(n+1)`
-/

namespace A098149.P627291070946664923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066983 (2 * n + 1) - A007492 (2 * (n + 1))) * A033999 (n + 1)

end

end A098149.P627291070946664923

namespace A098149

/-- `(A066983(2*n+1)-A007492(2*(n+1)))*A033999(n+1)` -/
def P627291070946664923.Spec : Prop :=
  ∀ n, P627291070946664923.a n = A098149 n

end A098149

/-!
# A098150: a(n) = 2(a(n-2) - a(n-1)) + a(n-3) where a(0)=-3, a(1)=11 & a(2)=-30.

The programs for A098150, the canonical program `A098150.P5857875234870262314` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098150 has offset 0).

The definition of A098150 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-2)-a(n-1))+a(n-3)` (program `A098150.P5857875234870262314`, by `A098150.P5857875234870262314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098150.P5857875234870262314

`2*(a(n-2)-a(n-1))+a(n-3)` with `a(0)=-3, a(1)=11, a(2)=-30`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098150

/-- `2*(a(n-2)-a(n-1))+a(n-3)` -/
def P5857875234870262314.Spec : Prop :=
  ∀ n, P5857875234870262314.a n = A098150 n

theorem P5857875234870262314.correct : P5857875234870262314.Spec := by
  intro n
  simp only [A098150]

end A098150

/-! ## A098150.P8914339496004759881

`(-1)^(n+1)*(3*A000032(2*n+1)-A000045(2*n))`
-/

namespace A098150.P8914339496004759881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (3 * A000032 (2 * n + 1) - A000045 (2 * n))

end

end A098150.P8914339496004759881

namespace A098150

/-- `(-1)^(n+1)*(3*A000032(2*n+1)-A000045(2*n))` -/
def P8914339496004759881.Spec : Prop :=
  ∀ n, P8914339496004759881.a n = A098150 n

end A098150

/-! ## A098150.P7633262267642521297

`ogf((-3+2x)/(1+3x+x^2))`
-/

namespace A098150.P7633262267642521297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, 2] [1, 3, 1] n

end

end A098150.P7633262267642521297

namespace A098150

/-- `ogf((-3+2x)/(1+3x+x^2))` -/
def P7633262267642521297.Spec : Prop :=
  ∀ n, P7633262267642521297.a n = A098150 n

end A098150

/-! ## A098150.P14828154745635681166

`-(A022121(2*n)*A033999(n))`
-/

namespace A098150.P14828154745635681166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A022121 (2 * n) * A033999 n)

end

end A098150.P14828154745635681166

namespace A098150

/-- `-(A022121(2*n)*A033999(n))` -/
def P14828154745635681166.Spec : Prop :=
  ∀ n, P14828154745635681166.a n = A098150 n

end A098150

/-! ## A098150.P4234324422975756933

`A022121(2*n)*A033999(n+1)`
-/

namespace A098150.P4234324422975756933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 (2 * n) * A033999 (n + 1)

end

end A098150.P4234324422975756933

namespace A098150

/-- `A022121(2*n)*A033999(n+1)` -/
def P4234324422975756933.Spec : Prop :=
  ∀ n, P4234324422975756933.a n = A098150 n

end A098150

/-! ## A098150.P1620538541341094653

`∑[A098149(n+1)]+2*A098149(n+1)`
-/

namespace A098150.P1620538541341094653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A098149 (n + 1)

end

end A098150.P1620538541341094653

namespace A098150

/-- `∑[A098149(n+1)]+2*A098149(n+1)` -/
def P1620538541341094653.Spec : Prop :=
  ∀ n, P1620538541341094653.a n = A098150 n

end A098150

/-! ## A098150.P12877209843483109630

`A219233(n+3)%A001060(Δ[n²])`
-/

namespace A098150.P12877209843483109630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219233 (n + 3)) (A001060 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A098150.P12877209843483109630

namespace A098150

/-- `A219233(n+3)%A001060(Δ[n²])` -/
def P12877209843483109630.Spec : Prop :=
  ∀ n, P12877209843483109630.a n = A098150 n

end A098150

/-!
# A098151: Number of partitions of 2*n with no part divisible by 3 and all odd parts occurring with even multiplicities.

The programs for A098151, there is no canonical definition to state claims against.
-/

/-! ## A098151.P18378384202093806540

`A071187(A071187(n+1))*A122928(n)`
-/

namespace A098151.P18378384202093806540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (A071187 (n + 1)).toNat * A122928 n

end

end A098151.P18378384202093806540

/-! ## A098151.P3178339460485804177

`abs(A132002(n))`
-/

namespace A098151.P3178339460485804177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132002 n|

end

end A098151.P3178339460485804177

/-! ## A098151.P5883387582031680394

`A033999(n)*A132002(n)`
-/

namespace A098151.P5883387582031680394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132002 n

end

end A098151.P5883387582031680394

/-! ## A098151.P11063875243718234790

`gcd(A000038(n), A132002(n))`
-/

namespace A098151.P11063875243718234790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A132002 n)

end

end A098151.P11063875243718234790

/-! ## A098151.P11333147188920119960

`lcm(A000034(n), A132002(n))`
-/

namespace A098151.P11333147188920119960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A132002 n)

end

end A098151.P11333147188920119960

/-! ## A098151.P4966122147131333375

`A122928(n)*A280560(2*n)`
-/

namespace A098151.P4966122147131333375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122928 n * A280560 (2 * n)

end

end A098151.P4966122147131333375

/-! ## A098151.P15123820089956300252

`A036453(2*n+1)*A122928(n)`
-/

namespace A098151.P15123820089956300252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A122928 n

end

end A098151.P15123820089956300252

/-! ## A098151.P13004905294052118713

`A132002(n)/A186924(n)*A261320(n)`
-/

namespace A098151.P13004905294052118713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132002 n : ℚ) / (A186924 n : ℚ) * (A261320 n : ℚ)

end

end A098151.P13004905294052118713

/-! ## A098151.P1106828652038445062

`record[A122792(n)]`
-/

namespace A098151.P1106828652038445062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098151.P1106828652038445062

/-! ## A098151.P14401534029430324383

`record[A252706(n)]`
-/

namespace A098151.P14401534029430324383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098151.P14401534029430324383

/-! ## A098151.P14521015235691211871

`A122792(3*n)`
-/

namespace A098151.P14521015235691211871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122792 (3 * n)

end

end A098151.P14521015235691211871

/-! ## A098151.P5384583217884267880

`A252706(3*n)`
-/

namespace A098151.P5384583217884267880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252706 (3 * n)

end

end A098151.P5384583217884267880

/-! ## A098151.P539959171412868446

`record[abs(A139136(n))]`
-/

namespace A098151.P539959171412868446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139136 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098151.P539959171412868446

/-! ## A098151.P2474579019729220605

`abs(A139136(3*n))`
-/

namespace A098151.P2474579019729220605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139136 (3 * n)|

end

end A098151.P2474579019729220605

/-! ## A098151.P14361995281963750802

`abs(A139137(3*n))`
-/

namespace A098151.P14361995281963750802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139137 (3 * n)|

end

end A098151.P14361995281963750802

/-! ## A098151.P12873594308126959755

`lcm(A014709(n), A139136(3*n))`
-/

namespace A098151.P12873594308126959755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A139136 (3 * n))

end

end A098151.P12873594308126959755

/-! ## A098151.P7948348556765867981

`record[gcd(A139136(n+1), A139136(n))]`
-/

namespace A098151.P7948348556765867981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139136 (n + 1)) (A139136 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098151.P7948348556765867981

/-! ## A098151.P2830300978459331751

`record[(A004442(n)-n)*A139137(n)]`
-/

namespace A098151.P2830300978459331751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A139137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098151.P2830300978459331751

/-! ## A098151.P7597303095262039020

`record[lcm(A139136(n+1), A139139(n+1))]`
-/

namespace A098151.P7597303095262039020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A139136 (n + 1)) (A139139 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098151.P7597303095262039020

/-!
# A098152: a(n) = a(n-1)^2 + n, with a(0)=0.

The programs for A098152, the canonical program `A098152.P5225239093118386827` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098152 has offset 0).

The definition of A098152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+n` (program `A098152.P5225239093118386827`, by `A098152.P5225239093118386827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098152.P5225239093118386827

`a(n-1)²+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098152

/-- `a(n-1)²+n` -/
def P5225239093118386827.Spec : Prop :=
  ∀ n, (P5225239093118386827.a n : ℤ) = A098152 n

theorem P5225239093118386827.correct : P5225239093118386827.Spec := by
  intro n
  simp only [A098152]

end A098152

/-! ## A098152.P11846308680601098261

`a(n-1)^2+n` with `a(0)=0`
-/

namespace A098152.P11846308680601098261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 + n

end

end A098152.P11846308680601098261

namespace A098152

/-- `a(n-1)^2+n` -/
def P11846308680601098261.Spec : Prop :=
  ∀ n, (P11846308680601098261.a n : ℤ) = A098152 n

theorem P11846308680601098261.correct : P11846308680601098261.Spec := by
  intro n
  simp only [A098152, Nat.add_sub_cancel, A098152.P11846308680601098261.a, A098152.P5225239093118386827.a, SequenceMachineLib.memo_apply]

end A098152

/-! ## A098152.P9378659093482794864

`2*n-(n-a(n-1)²)` with `a(0)=0`
-/

namespace A098152.P9378659093482794864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - a (n - 1) ^ 2)

end

end A098152.P9378659093482794864

namespace A098152

/-- `2*n-(n-a(n-1)²)` -/
def P9378659093482794864.Spec : Prop :=
  ∀ n, P9378659093482794864.a n = A098152 n

end A098152

/-! ## A098152.P6241279153357415080

`a(n-1)*a(n-1)+n` with `a(0)=0`
-/

namespace A098152.P6241279153357415080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * a (n - 1) + n

end

end A098152.P6241279153357415080

namespace A098152

/-- `a(n-1)*a(n-1)+n` -/
def P6241279153357415080.Spec : Prop :=
  ∀ n, (P6241279153357415080.a n : ℤ) = A098152 n

theorem P6241279153357415080.correct : P6241279153357415080.Spec := by
  intro n
  simp only [A098152, Nat.add_sub_cancel, A098152.P6241279153357415080.a, A098152.P5225239093118386827.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098152

/-! ## A098152.P2542915695441651015

`1-floor(1-a(n-1)²-n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A098152.P2542915695441651015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (1 - a (n - 1) ^ 2 - (n : ℤ))

end

end A098152.P2542915695441651015

namespace A098152

/-- `1-floor(1-a(n-1)²-n)` -/
def P2542915695441651015.Spec : Prop :=
  ∀ n, P2542915695441651015.a n = A098152 n

end A098152

/-!
# A098153: Summarize the previous term in binary (in increasing order).

The programs for A098153, there is no canonical definition to state claims against.
-/

/-! ## A098153.P6840031513087139818

`A203075(A036759(n+2))`
-/

namespace A098153.P6840031513087139818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203075 (A036759 (n + 2)).toNat

end

end A098153.P6840031513087139818

/-!
# A098154: Summarize the previous term in ternary (in increasing order).

The programs for A098154, there is no canonical definition to state claims against.
-/

/-! ## A098154.P4928948573685188957

`A089600(Δ[record[A103164(n)]])`
-/

namespace A098154.P4928948573685188957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089600 (f1 (n + 1) - f1 n).toNat

end

end A098154.P4928948573685188957

/-!
# A098156: Interleave n+1 and 2n+1 and take binomial transform.

The programs for A098156, the canonical program `A098156.P17131941534347252642` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098156 has offset 0).

The definition of A098156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098156.P10348490731476923558

`ogf((1-2x+x^2+x^3)/(1-4x+4x^2))`
-/

namespace A098156.P10348490731476923558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 1] [1, -4, 4] n

end

end A098156.P10348490731476923558

namespace A098156

/-- `ogf((1-2x+x^2+x^3)/(1-4x+4x^2))` -/
def P10348490731476923558.Spec : Prop :=
  ∀ n, P10348490731476923558.a n = A098156 n

end A098156

/-! ## A098156.P9160321347348941086

`char[3]+4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A098156.P9160321347348941086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 4 * (a (n - 1) - a (n - 2))

end

end A098156.P9160321347348941086

namespace A098156

/-- `char[3]+4*(a(n-1)-a(n-2))` -/
def P9160321347348941086.Spec : Prop :=
  ∀ n, P9160321347348941086.a n = A098156 n

end A098156

/-! ## A098156.P17131941534347252642

`A106472(n)-floor(2^(n-1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098156

/-- `A106472(n)-floor(2^(n-1))` -/
def P17131941534347252642.Spec : Prop :=
  ∀ n, P17131941534347252642.a n = A098156 n

theorem P17131941534347252642.correct : P17131941534347252642.Spec := by
  intro n
  simp only [A098156]

end A098156

/-! ## A098156.P15096280147195200595

`A057711(n)+A045891(n)`
-/

namespace A098156.P15096280147195200595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + A045891 n

end

end A098156.P15096280147195200595

namespace A098156

/-- `A057711(n)+A045891(n)` -/
def P15096280147195200595.Spec : Prop :=
  ∀ n, P15096280147195200595.a n = A098156 n

end A098156

/-! ## A098156.P10048193339357805517

`A139756(n)+A109975(n)`
-/

namespace A098156.P10048193339357805517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A109975 n

end

end A098156.P10048193339357805517

namespace A098156

/-- `A139756(n)+A109975(n)` -/
def P10048193339357805517.Spec : Prop :=
  ∀ n, P10048193339357805517.a n = A098156 n

end A098156

/-! ## A098156.P7253386108079966475

`A217988(n)+A038505(n)`
-/

namespace A098156.P7253386108079966475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217988 n + A038505 n

end

end A098156.P7253386108079966475

namespace A098156

/-- `A217988(n)+A038505(n)` -/
def P7253386108079966475.Spec : Prop :=
  ∀ n, P7253386108079966475.a n = A098156 n

end A098156

/-! ## A098156.P11942779416004132099

`A218009(n)+A038503(n)`
-/

namespace A098156.P11942779416004132099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218009 n + A038503 n

end

end A098156.P11942779416004132099

namespace A098156

/-- `A218009(n)+A038503(n)` -/
def P11942779416004132099.Spec : Prop :=
  ∀ n, P11942779416004132099.a n = A098156 n

end A098156

/-! ## A098156.P8473526726845708532

`A139756(n)+record[A034007(n)]`
-/

namespace A098156.P8473526726845708532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098156.P8473526726845708532

namespace A098156

/-- `A139756(n)+record[A034007(n)]` -/
def P8473526726845708532.Spec : Prop :=
  ∀ n, P8473526726845708532.a n = A098156 n

end A098156

/-! ## A098156.P1505712262761051730

`A266550(n+1)+A170881(n)`
-/

namespace A098156.P1505712262761051730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 1) + A170881 n

end

end A098156.P1505712262761051730

namespace A098156

/-- `A266550(n+1)+A170881(n)` -/
def P1505712262761051730.Spec : Prop :=
  ∀ n, P1505712262761051730.a n = A098156 n

end A098156

/-! ## A098156.P18377311008202832622

`A045891(n)+n*A166444(n)`
-/

namespace A098156.P18377311008202832622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n + (n : ℤ) * A166444 n

end

end A098156.P18377311008202832622

namespace A098156

/-- `A045891(n)+n*A166444(n)` -/
def P18377311008202832622.Spec : Prop :=
  ∀ n, P18377311008202832622.a n = A098156 n

end A098156

/-! ## A098156.P2323040986548110995

`A011782(n)+A106472(n)-A000079(n)`
-/

namespace A098156.P2323040986548110995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A106472 n - A000079 n)

end

end A098156.P2323040986548110995

namespace A098156

/-- `A011782(n)+A106472(n)-A000079(n)` -/
def P2323040986548110995.Spec : Prop :=
  ∀ n, P2323040986548110995.a n = A098156 n

end A098156

/-! ## A098156.P7863482942354405350

`A045623(n)+A109975(n)-A000079(n)`
-/

namespace A098156.P7863482942354405350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (A109975 n - A000079 n)

end

end A098156.P7863482942354405350

namespace A098156

/-- `A045623(n)+A109975(n)-A000079(n)` -/
def P7863482942354405350.Spec : Prop :=
  ∀ n, P7863482942354405350.a n = A098156 n

end A098156

/-! ## A098156.P12633981447015981165

`A045623(n)+A045623(n)-A111297(n)`
-/

namespace A098156.P12633981447015981165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (A045623 n - A111297 n)

end

end A098156.P12633981447015981165

namespace A098156

/-- `A045623(n)+A045623(n)-A111297(n)` -/
def P12633981447015981165.Spec : Prop :=
  ∀ n, P12633981447015981165.a n = A098156 n

end A098156

/-! ## A098156.P18053560076203186404

`A045623(n)+∑[A049610(n)]-A049610(n)`
-/

namespace A098156.P18053560076203186404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (∑ j ∈ Finset.range (n + 1), f1 j - A049610 n)

end

end A098156.P18053560076203186404

namespace A098156

/-- `A045623(n)+∑[A049610(n)]-A049610(n)` -/
def P18053560076203186404.Spec : Prop :=
  ∀ n, P18053560076203186404.a n = A098156 n

end A098156

/-! ## A098156.P7531150913744426570

`A011782(n)+A106472(n)-A011782(n+1)`
-/

namespace A098156.P7531150913744426570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A106472 n - A011782 (n + 1))

end

end A098156.P7531150913744426570

namespace A098156

/-- `A011782(n)+A106472(n)-A011782(n+1)` -/
def P7531150913744426570.Spec : Prop :=
  ∀ n, P7531150913744426570.a n = A098156 n

end A098156

/-! ## A098156.P18329916412967013948

`A109975(n+1)+A109975(n)-A000079(n+1)`
-/

namespace A098156.P18329916412967013948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 1) + (A109975 n - A000079 (n + 1))

end

end A098156.P18329916412967013948

namespace A098156

/-- `A109975(n+1)+A109975(n)-A000079(n+1)` -/
def P18329916412967013948.Spec : Prop :=
  ∀ n, P18329916412967013948.a n = A098156 n

end A098156

/-! ## A098156.P9711858085289807164

`Δ[A170881(n)]`
-/

namespace A098156.P9711858085289807164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098156.P9711858085289807164

namespace A098156

/-- `Δ[A170881(n)]` -/
def P9711858085289807164.Spec : Prop :=
  ∀ n, P9711858085289807164.a n = A098156 n

end A098156

/-! ## A098156.P11148674218061217358

`ceil(A133086(n)/2)`
-/

namespace A098156.P11148674218061217358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133086 n : ℚ) / 2⌉

end

end A098156.P11148674218061217358

namespace A098156

/-- `ceil(A133086(n)/2)` -/
def P11148674218061217358.Spec : Prop :=
  ∀ n, P11148674218061217358.a n = A098156 n

end A098156

/-! ## A098156.P245007278288340505

`A057711(n+1)-A049610(n)`
-/

namespace A098156.P245007278288340505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 1) - A049610 n

end

end A098156.P245007278288340505

namespace A098156

/-- `A057711(n+1)-A049610(n)` -/
def P245007278288340505.Spec : Prop :=
  ∀ n, P245007278288340505.a n = A098156 n

end A098156

/-!
# A098157: Triangle T(n,k) with diagonals T(n,n-k) = binomial(n+1,2k).

The programs for A098157, the canonical program `A098157.P15437423557707845265` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098157 has offset 0).

The definition of A098157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098157.P15437423557707845265

`C(row(n)+1, 2*(row(n)-col(n)))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098157

/-- `C(row(n)+1, 2*(row(n)-col(n)))` -/
def P15437423557707845265.Spec : Prop :=
  ∀ n, (P15437423557707845265.a n : ℤ) = A098157 n

theorem P15437423557707845265.correct : P15437423557707845265.Spec := by
  intro n
  simp only [A098157]

end A098157

/-! ## A098157.P6131218928474040991

`C(∑[char[∑[n]]], log2(A262616(n)))`
-/

namespace A098157.P6131218928474040991
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ))).toNat

end

end A098157.P6131218928474040991

namespace A098157

/-- `C(∑[char[∑[n]]], log2(A262616(n)))` -/
def P6131218928474040991.Spec : Prop :=
  ∀ n, (P6131218928474040991.a n : ℤ) = A098157 n

end A098157

/-! ## A098157.P10002502564080908564

`C(round(sqrt(2*(n+1))), A099375(n)-1)`
-/

namespace A098157.P10002502564080908564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat (A099375 n - 1).toNat

end

end A098157.P10002502564080908564

namespace A098157

/-- `C(round(sqrt(2*(n+1))), A099375(n)-1)` -/
def P10002502564080908564.Spec : Prop :=
  ∀ n, (P10002502564080908564.a n : ℤ) = A098157 n

end A098157

/-! ## A098157.P4439640968314401246

`C(floor(sqrt(2*(n+2))), 2*A025581(n))`
-/

namespace A098157.P4439640968314401246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.sqrt (2 * (n + 2))) (2 * A025581 n).toNat

end

end A098157.P4439640968314401246

namespace A098157

/-- `C(floor(sqrt(2*(n+2))), 2*A025581(n))` -/
def P4439640968314401246.Spec : Prop :=
  ∀ n, (P4439640968314401246.a n : ℤ) = A098157 n

end A098157

/-! ## A098157.P916121593840836223

`C(∑[char[∑[n]]], A005843(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A098157.P916121593840836223
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
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A005843 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))).toNat

end

end A098157.P916121593840836223

namespace A098157

/-- `C(∑[char[∑[n]]], A005843(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P916121593840836223.Spec : Prop :=
  ∀ n, (P916121593840836223.a n : ℤ) = A098157 n

end A098157

/-! ## A098157.P2830807548677564550

`A027935(n)+A027948(n)-A027935(n+1)`
-/

namespace A098157.P2830807548677564550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 n + (A027948 n - A027935 (n + 1))

end

end A098157.P2830807548677564550

namespace A098157

/-- `A027935(n)+A027948(n)-A027935(n+1)` -/
def P2830807548677564550.Spec : Prop :=
  ∀ n, P2830807548677564550.a n = A098157 n

end A098157

/-! ## A098157.P14951558550484313240

`A119900(n+1)+A098158(n)-A098158(n+1)`
-/

namespace A098157.P14951558550484313240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119900 (n + 1) + (A098158 n - A098158 (n + 1))

end

end A098157.P14951558550484313240

namespace A098157

/-- `A119900(n+1)+A098158(n)-A098158(n+1)` -/
def P14951558550484313240.Spec : Prop :=
  ∀ n, P14951558550484313240.a n = A098157 n

end A098157

/-! ## A098157.P2800926744631159829

`A098158(comp[∑[n]])`
-/

namespace A098157.P2800926744631159829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A098157.P2800926744631159829

namespace A098157

/-- `A098158(comp[∑[n]])` -/
def P2800926744631159829.Spec : Prop :=
  ∀ n, P2800926744631159829.a n = A098157 n

end A098157

/-! ## A098157.P7059222521566972742

`A202023(∑[char[∑[n]]]+∑[2*n]%comp[∑[n]])`
-/

namespace A098157.P7059222521566972742
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n)

end

end A098157.P7059222521566972742

namespace A098157

/-- `A202023(∑[char[∑[n]]]+∑[2*n]%comp[∑[n]])` -/
def P7059222521566972742.Spec : Prop :=
  ∀ n, P7059222521566972742.a n = A098157 n

end A098157

/-! ## A098157.P8138827428378884198

`A202023(∑[char[∑[n+1]]]+∑[char[∑[n]]]²-n)`
-/

namespace A098157.P8138827428378884198
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

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
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A098157.P8138827428378884198

namespace A098157

/-- `A202023(∑[char[∑[n+1]]]+∑[char[∑[n]]]²-n)` -/
def P8138827428378884198.Spec : Prop :=
  ∀ n, P8138827428378884198.a n = A098157 n

end A098157

/-! ## A098157.P7898351209117449751

`C(∑[char[∑[n]]], A053186(2*(n+1)))`
-/

namespace A098157.P7898351209117449751
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A053186 (2 * (n + 1))).toNat

end

end A098157.P7898351209117449751

namespace A098157

/-- `C(∑[char[∑[n]]], A053186(2*(n+1)))` -/
def P7898351209117449751.Spec : Prop :=
  ∀ n, (P7898351209117449751.a n : ℤ) = A098157 n

end A098157

/-! ## A098157.P11397131730022318362

`A103633(Δ[n²]+(n-comp[∑[n]])²)`
-/

namespace A098157.P11397131730022318362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2).toNat

end

end A098157.P11397131730022318362

namespace A098157

/-- `A103633(Δ[n²]+(n-comp[∑[n]])²)` -/
def P11397131730022318362.Spec : Prop :=
  ∀ n, P11397131730022318362.a n = A098157 n

end A098157

/-!
# A098158: Triangle T(n,k) with diagonals T(n,n-k) = binomial(n, 2*k).

The programs for A098158, the canonical program `A098158.P4607178019361314224` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098158 has offset 0).

The definition of A098158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098158.P4607178019361314224

`C(row(n), 2*(row(n)-col(n)))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098158

/-- `C(row(n), 2*(row(n)-col(n)))` -/
def P4607178019361314224.Spec : Prop :=
  ∀ n, (P4607178019361314224.a n : ℤ) = A098158 n

theorem P4607178019361314224.correct : P4607178019361314224.Spec := by
  intro n
  simp only [A098158]

end A098158

/-! ## A098158.P1277443028151384246

`A115951(n)/A068555(n)`
-/

namespace A098158.P1277443028151384246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A068555 n : ℚ)

end

end A098158.P1277443028151384246

namespace A098158

/-- `A115951(n)/A068555(n)` -/
def P1277443028151384246.Spec : Prop :=
  ∀ n, P1277443028151384246.a n = (A098158 n : ℚ)

end A098158

/-! ## A098158.P3194668105677661530

`A372873(n+1)/A116588(n)`
-/

namespace A098158.P3194668105677661530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372873 (n + 1) : ℚ) / (A116588 n : ℚ)

end

end A098158.P3194668105677661530

namespace A098158

/-- `A372873(n+1)/A116588(n)` -/
def P3194668105677661530.Spec : Prop :=
  ∀ n, P3194668105677661530.a n = (A098158 n : ℚ)

end A098158

/-! ## A098158.P2788732054483321922

`2*A119900(n)-A207543(n)`
-/

namespace A098158.P2788732054483321922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119900 n - A207543 n

end

end A098158.P2788732054483321922

namespace A098158

/-- `2*A119900(n)-A207543(n)` -/
def P2788732054483321922.Spec : Prop :=
  ∀ n, P2788732054483321922.a n = A098158 n

theorem P2788732054483321922.correct : P2788732054483321922.Spec := by
  intro n
  simp only [A098158, Nat.add_sub_cancel, A098158.P2788732054483321922.a, A098158.P4607178019361314224.a, A119900, A119900.P12631817968393924084.f1, A119900.P12631817968393924084.a, A207543, A207543.P2222567261959713361.a, A010054, A010054.P18347828677204923252.a, A099375, A099375.P13700148065993022910.a, A004736, A004736.P10337537277358081527.a, A005369, A005369.P10796159359873341658.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A098158

/-! ## A098158.P6308155905540013847

`C(A003056(n), A099375(n)-1)`
-/

namespace A098158.P6308155905540013847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A099375 n - 1).toNat

end

end A098158.P6308155905540013847

namespace A098158

/-- `C(A003056(n), A099375(n)-1)` -/
def P6308155905540013847.Spec : Prop :=
  ∀ n, (P6308155905540013847.a n : ℤ) = A098158 n

end A098158

/-! ## A098158.P7247612142090323823

`C(A003056(n), 2*A025581(n))`
-/

namespace A098158.P7247612142090323823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (2 * A025581 n).toNat

end

end A098158.P7247612142090323823

namespace A098158

/-- `C(A003056(n), 2*A025581(n))` -/
def P7247612142090323823.Spec : Prop :=
  ∀ n, (P7247612142090323823.a n : ℤ) = A098158 n

end A098158

/-! ## A098158.P8425327429102030856

`C(A003056(n+1), A185782(n+1))`
-/

namespace A098158.P8425327429102030856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 (n + 1)).toNat (A185782 (n + 1)).toNat

end

end A098158.P8425327429102030856

namespace A098158

/-- `C(A003056(n+1), A185782(n+1))` -/
def P8425327429102030856.Spec : Prop :=
  ∀ n, (P8425327429102030856.a n : ℤ) = A098158 n

end A098158

/-! ## A098158.P4536642055540099115

`C(A003056(n+1), 2*A057554(2*(n+1)))`
-/

namespace A098158.P4536642055540099115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 (n + 1)).toNat (2 * A057554 (2 * (n + 1))).toNat

end

end A098158.P4536642055540099115

namespace A098158

/-- `C(A003056(n+1), 2*A057554(2*(n+1)))` -/
def P4536642055540099115.Spec : Prop :=
  ∀ n, (P4536642055540099115.a n : ℤ) = A098158 n

end A098158

/-! ## A098158.P12109794739892674454

`A107131(n)/A000108(A025581(n))`
-/

namespace A098158.P12109794739892674454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107131 n : ℚ) / (A000108 (A025581 n).toNat : ℚ)

end

end A098158.P12109794739892674454

namespace A098158

/-- `A107131(n)/A000108(A025581(n))` -/
def P12109794739892674454.Spec : Prop :=
  ∀ n, P12109794739892674454.a n = (A098158 n : ℚ)

end A098158

/-! ## A098158.P5542014300908132069

`C(A003056(n), A005843(A025581(n)))`
-/

namespace A098158.P5542014300908132069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A005843 (A025581 n).toNat).toNat

end

end A098158.P5542014300908132069

namespace A098158

/-- `C(A003056(n), A005843(A025581(n)))` -/
def P5542014300908132069.Spec : Prop :=
  ∀ n, (P5542014300908132069.a n : ℤ) = A098158 n

end A098158

/-! ## A098158.P12399150494558161781

`C(A028310(A003056(n)), A185782(n+1))`
-/

namespace A098158.P12399150494558161781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 (A003056 n).toNat).toNat (A185782 (n + 1)).toNat

end

end A098158.P12399150494558161781

namespace A098158

/-- `C(A028310(A003056(n)), A185782(n+1))` -/
def P12399150494558161781.Spec : Prop :=
  ∀ n, (P12399150494558161781.a n : ℤ) = A098158 n

end A098158

/-! ## A098158.P16162490465949324918

`C(A025581(A057944(n)), 2*A025581(n))`
-/

namespace A098158.P16162490465949324918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 (A057944 n).toNat).toNat (2 * A025581 n).toNat

end

end A098158.P16162490465949324918

namespace A098158

/-- `C(A025581(A057944(n)), 2*A025581(n))` -/
def P16162490465949324918.Spec : Prop :=
  ∀ n, (P16162490465949324918.a n : ℤ) = A098158 n

end A098158

/-! ## A098158.P435679634463222384

`C(A003056(n), A005843(A057554(2*(n+1))))`
-/

namespace A098158.P435679634463222384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A005843 (A057554 (2 * (n + 1))).toNat).toNat

end

end A098158.P435679634463222384

namespace A098158

/-- `C(A003056(n), A005843(A057554(2*(n+1))))` -/
def P435679634463222384.Spec : Prop :=
  ∀ n, (P435679634463222384.a n : ℤ) = A098158 n

end A098158

/-! ## A098158.P18150331427756328620

`A202023(A061579(n))`
-/

namespace A098158.P18150331427756328620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (A061579 n).toNat

end

end A098158.P18150331427756328620

namespace A098158

/-- `A202023(A061579(n))` -/
def P18150331427756328620.Spec : Prop :=
  ∀ n, P18150331427756328620.a n = A098158 n

end A098158

/-! ## A098158.P5978862750649957911

`A202023(A038722(n+1)-1)`
-/

namespace A098158.P5978862750649957911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (A038722 (n + 1) - 1).toNat

end

end A098158.P5978862750649957911

namespace A098158

/-- `A202023(A038722(n+1)-1)` -/
def P5978862750649957911.Spec : Prop :=
  ∀ n, P5978862750649957911.a n = A098158 n

end A098158

/-! ## A098158.P18266567815624385597

`A202023(A038722(n+2))`
-/

namespace A098158.P18266567815624385597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (A038722 (n + 2)).toNat

end

end A098158.P18266567815624385597

namespace A098158

/-- `A202023(A038722(n+2))` -/
def P18266567815624385597.Spec : Prop :=
  ∀ n, P18266567815624385597.a n = A098158 n

end A098158

/-! ## A098158.P2161037176808773938

`gcd(A117411(n), A122848(n))`
-/

namespace A098158.P2161037176808773938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117411 n) (A122848 n)

end

end A098158.P2161037176808773938

namespace A098158

/-- `gcd(A117411(n), A122848(n))` -/
def P2161037176808773938.Spec : Prop :=
  ∀ n, (P2161037176808773938.a n : ℤ) = A098158 n

end A098158

/-! ## A098158.P5630787101453646857

`C(A000196(2*n+1)-1, A053186(2*n+1))`
-/

namespace A098158.P5630787101453646857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000196 (2 * n + 1) - 1).toNat (A053186 (2 * n + 1)).toNat

end

end A098158.P5630787101453646857

namespace A098158

/-- `C(A000196(2*n+1)-1, A053186(2*n+1))` -/
def P5630787101453646857.Spec : Prop :=
  ∀ n, (P5630787101453646857.a n : ℤ) = A098158 n

end A098158

/-! ## A098158.P1408982633157663720

`A152815(2*A063656(n))`
-/

namespace A098158.P1408982633157663720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (2 * A063656 n).toNat

end

end A098158.P1408982633157663720

namespace A098158

/-- `A152815(2*A063656(n))` -/
def P1408982633157663720.Spec : Prop :=
  ∀ n, P1408982633157663720.a n = A098158 n

end A098158

/-! ## A098158.P5122907445164899646

`A051159(A016825(n)-A002024(n+1))`
-/

namespace A098158.P5122907445164899646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A016825 n - A002024 (n + 1)).toNat

end

end A098158.P5122907445164899646

namespace A098158

/-- `A051159(A016825(n)-A002024(n+1))` -/
def P5122907445164899646.Spec : Prop :=
  ∀ n, P5122907445164899646.a n = A098158 n

end A098158

/-!
# A098159: Numbers n with property that when writing down all the nonnegative numbers from 0 to n one uses n odd digits.

The programs for A098159, there is no canonical definition to state claims against.
-/

/-! ## A098159.P3859608769088804920

`∑[gcd(16, 1-n%4)]`
-/

namespace A098159.P3859608769088804920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 16 (1 - ((n % 4 : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098159.P3859608769088804920

/-! ## A098159.P2977995825026117302

`a(n-4)+20` with `a(0)=1, a(1)=17, a(2)=18, a(3)=20`
-/

namespace A098159.P2977995825026117302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 17, 18, 20] fun n a =>
  a (n - 4) + 20

end

end A098159.P2977995825026117302

/-! ## A098159.P620444772997813102

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=16, a(2)=1, a(3)=2`
-/

namespace A098159.P620444772997813102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098159.P620444772997813102

/-! ## A098159.P2889408838147261347

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=16, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A098159.P2889408838147261347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098159.P2889408838147261347

/-! ## A098159.P2818553131188722916

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=16, a(2)=1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A098159.P2818553131188722916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098159.P2818553131188722916

/-!
# A098160: Numbers n with property that when writing down all the natural numbers from 0 to n one uses the same number of even and odd digits.

The programs for A098160, there is no canonical definition to state claims against.
-/

/-! ## A098160.P14154557594005297672

`record[A118763(A003100(n)+A000034(n))]`
-/

namespace A098160.P14154557594005297672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (A003100 n + A000034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098160.P14154557594005297672

/-! ## A098160.P10810960009994381918

`record[A118763(A118757(n)+A000034(n))]`
-/

namespace A098160.P10810960009994381918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (A118757 n + A000034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098160.P10810960009994381918

/-! ## A098160.P11148194135768614799

`record[A118763(A118758(n)+A000034(n))]`
-/

namespace A098160.P11148194135768614799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (A118758 n + A000034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098160.P11148194135768614799

/-! ## A098160.P15532633950826815151

`A118763(record[A118763(n)+A000034(n)])`
-/

namespace A098160.P15532633950826815151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098160.P15532633950826815151

/-! ## A098160.P7685306440098189021

`A003100(record[A118763(A118763(2*n+1))])`
-/

namespace A098160.P7685306440098189021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (A118763 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098160.P7685306440098189021

/-!
# A098162: a(n+1) = smallest number greater than a(n) having with a(n) a common divisor which is used before as such a common divisor at most once; a(1) = 1.

The programs for A098162, there is no canonical definition to state claims against.
-/

/-! ## A098162.P15000273847429537727

`∑[A117384(char[(n+1)²]+n+1)]`
-/

namespace A098162.P15000273847429537727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117384 ((if ∃ j, f2 j = n then 1 else 0) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098162.P15000273847429537727

/-! ## A098162.P6661608984784333867

`A003991(A117384(n+1)+∑[n])`
-/

namespace A098162.P6661608984784333867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A117384 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A098162.P6661608984784333867

/-! ## A098162.P11917336829673624439

`A003991(∑[A263919(n+1)+n])`
-/

namespace A098162.P11917336829673624439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263919 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098162.P11917336829673624439

/-! ## A098162.P15213249293233574180

`∑[A117384(n+1)-A037213(n)]`
-/

namespace A098162.P15213249293233574180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117384 (n + 1) - A037213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098162.P15213249293233574180

/-! ## A098162.P8094102233296308285

`∑[ceil((A127366(n)+1)/2)-A037213(n)]`
-/

namespace A098162.P8094102233296308285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127366 n + 1 : ℚ) / 2⌉ - A037213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098162.P8094102233296308285

/-! ## A098162.P7387146941105953555

`A004247(∑[n+1]-A117384(n+1))+n+1`
-/

namespace A098162.P7387146941105953555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A117384 (n + 1)).toNat + (n + 1 : ℤ)

end

end A098162.P7387146941105953555

/-! ## A098162.P3703260941331954014

`record[A002260(n+1)*A122797(A193738(n))]`
-/

namespace A098162.P3703260941331954014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A122797 (A193738 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098162.P3703260941331954014

/-! ## A098162.P15377397180212116879

`A002620(n+2)-A002620(A086520(n+1))`
-/

namespace A098162.P15377397180212116879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A002620 (A086520 (n + 1)).toNat

end

end A098162.P15377397180212116879

/-! ## A098162.P12531555192267922556

`A008619(A028391(n))*A080513(A028392(n))`
-/

namespace A098162.P12531555192267922556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A028391 n).toNat * A080513 (A028392 n).toNat

end

end A098162.P12531555192267922556

/-!
# A098165: Slowest increasing sequence where the last digit of n and the first digit of n+1 sum to 2.

The programs for A098165, there is no canonical definition to state claims against.
-/

/-! ## A098165.P6736220441105150470

`A007623(A349983(2^n))`
-/

namespace A098165.P6736220441105150470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A349983 (2 ^ n)).toNat

end

end A098165.P6736220441105150470

/-! ## A098165.P3623006462575350375

`A007623(record[A139024(2*n+1)])`
-/

namespace A098165.P3623006462575350375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139024 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098165.P3623006462575350375

/-! ## A098165.P15526585129875401382

`A007623(record[A162909(6*n+5)])`
-/

namespace A098165.P15526585129875401382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162909 (6 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098165.P15526585129875401382

/-!
# A098166: a(n) is the prime index of the Lesser Fortunate number A055211(n), or 0 if A055211(n) is not a prime.

The programs for A098166, there is no canonical definition to state claims against.
-/

/-! ## A098166.P849161393015764367

`A000720(A055211(n+2))`
-/

namespace A098166.P849161393015764367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A055211 (n + 2)).toNat

end

end A098166.P849161393015764367

/-! ## A098166.P10871201189866504184

`A061395(2*A055211(n+2))`
-/

namespace A098166.P10871201189866504184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A055211 (n + 2)).toNat

end

end A098166.P10871201189866504184

/-! ## A098166.P4610435929192570007

`A289508(A055211(n+2)%A001567(n+1))`
-/

namespace A098166.P4610435929192570007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.tmod (A055211 (n + 2)) (A001567 (n + 1))).toNat

end

end A098166.P4610435929192570007

/-! ## A098166.P14931415402338917652

`A289508(A055211(n+2))%A002145(n+1)`
-/

namespace A098166.P14931415402338917652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289508 (A055211 (n + 2)).toNat) (A002145 (n + 1))

end

end A098166.P14931415402338917652

/-! ## A098166.P13965580030196364115

`A344616(A000035(2*n+1)*A055211(n+2))`
-/

namespace A098166.P13965580030196364115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A000035 (2 * n + 1) * A055211 (n + 2)).toNat

end

end A098166.P13965580030196364115

/-! ## A098166.P1529390495710772772

`A289508(A055211(n+2)*A329682(3*n+2))`
-/

namespace A098166.P1529390495710772772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A055211 (n + 2) * A329682 (3 * n + 2)).toNat

end

end A098166.P1529390495710772772

/-! ## A098166.P5767099260241137240

`A036234(A055211(n+2)-1)`
-/

namespace A098166.P5767099260241137240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A055211 (n + 2) - 1).toNat

end

end A098166.P5767099260241137240

/-! ## A098166.P18257402340267324088

`A056239(or(1, A055211(n+2)))`
-/

namespace A098166.P18257402340267324088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A055211 (n + 2))).toNat

end

end A098166.P18257402340267324088

/-! ## A098166.P6552561380852239874

`A036234(xor(1, A055211(n+2)))`
-/

namespace A098166.P6552561380852239874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.xor 1 (A055211 (n + 2))).toNat

end

end A098166.P6552561380852239874

/-! ## A098166.P16328894442376388665

`A026233(A055211(n+2)+A000007(n))`
-/

namespace A098166.P16328894442376388665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A055211 (n + 2) + A000007 n).toNat

end

end A098166.P16328894442376388665

/-! ## A098166.P6126392912023294870

`A026233(A055211(n+2))%A167614(n+1)`
-/

namespace A098166.P6126392912023294870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026233 (A055211 (n + 2)).toNat) (A167614 (n + 1))

end

end A098166.P6126392912023294870

/-! ## A098166.P17266982712677576150

`A055211(n+2)-A026238(A055211(n+2)+1)`
-/

namespace A098166.P17266982712677576150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055211 (n + 2) - A026238 (A055211 (n + 2) + 1).toNat

end

end A098166.P17266982712677576150

/-! ## A098166.P63143393691068484

`A055211(n+2)-A026233(A055211(n+2)-1)`
-/

namespace A098166.P63143393691068484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055211 (n + 2) - A026233 (A055211 (n + 2) - 1).toNat

end

end A098166.P63143393691068484

/-! ## A098166.P4680327133069744880

`A049084(2*A055211(n+2)-A055211(n+2))`
-/

namespace A098166.P4680327133069744880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A055211 (n + 2) - A055211 (n + 2)).toNat

end

end A098166.P4680327133069744880

/-!
# A098167: Partial sums of A098166.

The programs for A098167, there is no canonical definition to state claims against.
-/

/-! ## A098167.P13605583820990025822

`∑[A098166(n+2)]`
-/

namespace A098167.P13605583820990025822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098166 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098167.P13605583820990025822

/-! ## A098167.P8083136890784156252

`∑[A000720(A055211(n+2))]`
-/

namespace A098167.P8083136890784156252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A055211 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098167.P8083136890784156252

/-! ## A098167.P4796615980162823155

`a(n-1)+A098166(n+2)+A000007(n)` with `a(0)=2`
-/

namespace A098167.P4796615980162823155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A098166 (n + 2) + A000007 n)

end

end A098167.P4796615980162823155

/-!
# A098168: Prime index j such that prime(j) = the n-th fortunate number, A005235(n).

The programs for A098168, there is no canonical definition to state claims against.
-/

/-! ## A098168.P16743713390044298978

`A348424(n+1)+1+n`
-/

namespace A098168.P16743713390044298978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348424 (n + 1) + 1 + (n : ℤ)

end

end A098168.P16743713390044298978

/-! ## A098168.P7175335571520076685

`A000720(A005235(n+1))`
-/

namespace A098168.P7175335571520076685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005235 (n + 1)).toNat

end

end A098168.P7175335571520076685

/-! ## A098168.P16934335744730913914

`A253558(A005235(1+n))`
-/

namespace A098168.P16934335744730913914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253558 (A005235 (1 + n)).toNat

end

end A098168.P16934335744730913914

/-! ## A098168.P12147690543398259520

`A204892(A281318(n+1))`
-/

namespace A098168.P12147690543398259520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A281318 (n + 1)).toNat

end

end A098168.P12147690543398259520

/-!
# A098169: a(n) = Sum_{i=1..n} A098168(i).

The programs for A098169, there is no canonical definition to state claims against.
-/

/-! ## A098169.P7679047456501607856

`∑[A098168(n+1)]`
-/

namespace A098169.P7679047456501607856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098169.P7679047456501607856

/-! ## A098169.P2230303546702089228

`∑[A348424(n+1)+1+n]`
-/

namespace A098169.P2230303546702089228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348424 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098169.P2230303546702089228

/-! ## A098169.P8078642449211768066

`∑[A000720(A005235(n+1))]`
-/

namespace A098169.P8078642449211768066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098169.P8078642449211768066

/-! ## A098169.P1454618998122586247

`∑[A204892(A281318(n+1))]`
-/

namespace A098169.P1454618998122586247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A281318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098169.P1454618998122586247

/-! ## A098169.P4123748098720799340

`∑[A061395(2*A005235(n+1))]`
-/

namespace A098169.P4123748098720799340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A005235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098169.P4123748098720799340

/-!
# A098170: Smallest prime p such that prime(n)#/2 + 2*p is prime where p > 3, except p=2 for n=1.

The programs for A098170, there is no canonical definition to state claims against.
-/

/-! ## A098170.P10868537084228854121

`A000040(A098171(n+1))`
-/

namespace A098170.P10868537084228854121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098171 (n + 1)).toNat

end

end A098170.P10868537084228854121

/-! ## A098170.P13603452401133538398

`A008578(A098171(n+1)+1)`
-/

namespace A098170.P13603452401133538398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A098171 (n + 1) + 1).toNat

end

end A098170.P13603452401133538398

/-! ## A098170.P4761824125105982499

`A073846(2*A098171(n+1))`
-/

namespace A098170.P4761824125105982499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A098171 (n + 1)).toNat

end

end A098170.P4761824125105982499

/-! ## A098170.P12143559876510869808

`∑{d}[A098171(n+1), A007444(#)]`
-/

namespace A098170.P12143559876510869808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A098170.P12143559876510869808

/-! ## A098170.P9854147546482961248

`A006005(A098171(n+1))+A000007(n)`
-/

namespace A098170.P9854147546482961248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A098171 (n + 1)).toNat + A000007 n

end

end A098170.P9854147546482961248

/-! ## A098170.P3979041440246870025

`A073582(A098171(n+1))/A178815(n+1)`
-/

namespace A098170.P3979041440246870025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073582 (A098171 (n + 1)).toNat : ℚ) / (A178815 (n + 1) : ℚ)

end

end A098170.P3979041440246870025

/-! ## A098170.P10773519102159815426

`A006005(A098171(n+1))+and(1, A000010(n+2))`
-/

namespace A098170.P10773519102159815426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A098171 (n + 1)).toNat + Int.land 1 (A000010 (n + 2))

end

end A098170.P10773519102159815426

/-! ## A098170.P13593563000719185095

`A001221(a(n-1))*A006005(A098171(n+1))` with `a(0)=2`
-/

namespace A098170.P13593563000719185095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001221 (a (n - 1)).toNat * A006005 (A098171 (n + 1)).toNat

end

end A098170.P13593563000719185095

/-! ## A098170.P16505861099561612040

`A086932(A008574(n))+A006005(A098171(n+1))`
-/

namespace A098170.P16505861099561612040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086932 (A008574 n).toNat + A006005 (A098171 (n + 1)).toNat

end

end A098170.P16505861099561612040

/-! ## A098170.P17423360609451747914

`A006005(A098171(n+1))*A014963(A016825(n))`
-/

namespace A098170.P17423360609451747914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A098171 (n + 1)).toNat * A014963 (A016825 n).toNat

end

end A098170.P17423360609451747914

/-!
# A098171: Least j such that P(n)#/2 + 2*P(j) is prime with j > 1 except j=1 for n=1.

The programs for A098171, there is no canonical definition to state claims against.
-/

/-! ## A098171.P11406171925838528510

`A000720(A098170(n+1))`
-/

namespace A098171.P11406171925838528510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A098170 (n + 1)).toNat

end

end A098171.P11406171925838528510

/-! ## A098171.P11263648831780731690

`A219109(A098170(n+1)+1)`
-/

namespace A098171.P11263648831780731690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A098170 (n + 1) + 1).toNat

end

end A098171.P11263648831780731690

/-!
# A098172: Triangle T(n,k) with diagonals T(n,n-k) = binomial(n,3k).

The programs for A098172, the canonical program `A098172.P17261309124347367625` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098172 has offset 0).

The definition of A098172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098172.P17261309124347367625

`C(row(n), 3*(row(n)-col(n)))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098172

/-- `C(row(n), 3*(row(n)-col(n)))` -/
def P17261309124347367625.Spec : Prop :=
  ∀ n, (P17261309124347367625.a n : ℤ) = A098172 n

theorem P17261309124347367625.correct : P17261309124347367625.Spec := by
  intro n
  simp only [A098172]

end A098172

/-! ## A098172.P4536882679445147871

`C(∑[char[∑[n+1]]], A008585(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A098172.P4536882679445147871
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

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
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A008585 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))).toNat

end

end A098172.P4536882679445147871

namespace A098172

/-- `C(∑[char[∑[n+1]]], A008585(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P4536882679445147871.Spec : Prop :=
  ∀ n, (P4536882679445147871.a n : ℤ) = A098172 n

end A098172

/-! ## A098172.P15745615236012495795

`C(A003056(n), 3*A025581(n))`
-/

namespace A098172.P15745615236012495795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (3 * A025581 n).toNat

end

end A098172.P15745615236012495795

namespace A098172

/-- `C(A003056(n), 3*A025581(n))` -/
def P15745615236012495795.Spec : Prop :=
  ∀ n, (P15745615236012495795.a n : ℤ) = A098172 n

end A098172

/-! ## A098172.P3938544123770674537

`C(A003056(n), A008585(A025581(n)))`
-/

namespace A098172.P3938544123770674537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A008585 (A025581 n).toNat).toNat

end

end A098172.P3938544123770674537

namespace A098172

/-- `C(A003056(n), A008585(A025581(n)))` -/
def P3938544123770674537.Spec : Prop :=
  ∀ n, (P3938544123770674537.a n : ℤ) = A098172 n

end A098172

/-! ## A098172.P12947986256858437903

`C(A003056(n), A047229(A099375(n)))`
-/

namespace A098172.P12947986256858437903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A047229 (A099375 n).toNat).toNat

end

end A098172.P12947986256858437903

namespace A098172

/-- `C(A003056(n), A047229(A099375(n)))` -/
def P12947986256858437903.Spec : Prop :=
  ∀ n, (P12947986256858437903.a n : ℤ) = A098172 n

end A098172

/-! ## A098172.P12263087171460385227

`A103633(A185869(n+1)-A004197(n))`
-/

namespace A098172.P12263087171460385227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (A185869 (n + 1) - A004197 n).toNat

end

end A098172.P12263087171460385227

namespace A098172

/-- `A103633(A185869(n+1)-A004197(n))` -/
def P12263087171460385227.Spec : Prop :=
  ∀ n, P12263087171460385227.a n = A098172 n

end A098172

/-! ## A098172.P12719803679739691375

`C(A003056(n), A001414(A140303(n)))`
-/

namespace A098172.P12719803679739691375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A001414 (A140303 n).toNat).toNat

end

end A098172.P12719803679739691375

namespace A098172

/-- `C(A003056(n), A001414(A140303(n)))` -/
def P12719803679739691375.Spec : Prop :=
  ∀ n, (P12719803679739691375.a n : ℤ) = A098172 n

end A098172

/-!
# A098173: Triangle T(n,k) with diagonals T(n,n-k) = binomial(n, 4k).

The programs for A098173, the canonical program `A098173.P14841641390946981512` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098173 has offset 0).

The definition of A098173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098173.P14841641390946981512

`C(row(n), 4*(row(n)-col(n)))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098173

/-- `C(row(n), 4*(row(n)-col(n)))` -/
def P14841641390946981512.Spec : Prop :=
  ∀ n, (P14841641390946981512.a n : ℤ) = A098173 n

theorem P14841641390946981512.correct : P14841641390946981512.Spec := by
  intro n
  simp only [A098173]

end A098173

/-! ## A098173.P2424599799350206631

`A098158(n-A004197(n))`
-/

namespace A098173.P2424599799350206631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 ((n : ℤ) - A004197 n).toNat

end

end A098173.P2424599799350206631

namespace A098173

/-- `A098158(n-A004197(n))` -/
def P2424599799350206631.Spec : Prop :=
  ∀ n, P2424599799350206631.a n = A098173 n

end A098173

/-! ## A098173.P17725440906159644280

`A098158(n-A048158(n+1))`
-/

namespace A098173.P17725440906159644280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 ((n : ℤ) - A048158 (n + 1)).toNat

end

end A098173.P17725440906159644280

namespace A098173

/-- `A098158(n-A048158(n+1))` -/
def P17725440906159644280.Spec : Prop :=
  ∀ n, P17725440906159644280.a n = A098173 n

end A098173

/-! ## A098173.P12158514089681588837

`C(A003056(n), 4*A025581(n))`
-/

namespace A098173.P12158514089681588837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (4 * A025581 n).toNat

end

end A098173.P12158514089681588837

namespace A098173

/-- `C(A003056(n), 4*A025581(n))` -/
def P12158514089681588837.Spec : Prop :=
  ∀ n, (P12158514089681588837.a n : ℤ) = A098173 n

end A098173

/-! ## A098173.P7577305354733430825

`A098158(1-A003983(n+1)+n)`
-/

namespace A098173.P7577305354733430825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (1 - A003983 (n + 1) + (n : ℤ)).toNat

end

end A098173.P7577305354733430825

namespace A098173

/-- `A098158(1-A003983(n+1)+n)` -/
def P7577305354733430825.Spec : Prop :=
  ∀ n, P7577305354733430825.a n = A098173 n

end A098173

/-! ## A098173.P718575130319909361

`A098158(A083920(n)+A003984(n))`
-/

namespace A098173.P718575130319909361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (A083920 n + A003984 n).toNat

end

end A098173.P718575130319909361

namespace A098173

/-- `A098158(A083920(n)+A003984(n))` -/
def P718575130319909361.Spec : Prop :=
  ∀ n, P718575130319909361.a n = A098173 n

end A098173

/-! ## A098173.P2362684125276016618

`A202023(A061579(n)+A004197(n))`
-/

namespace A098173.P2362684125276016618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (A061579 n + A004197 n).toNat

end

end A098173.P2362684125276016618

namespace A098173

/-- `A202023(A061579(n)+A004197(n))` -/
def P2362684125276016618.Spec : Prop :=
  ∀ n, P2362684125276016618.a n = A098173 n

end A098173

/-! ## A098173.P5161248649984052926

`A103633(A185869(n+1)-2*A004197(n))`
-/

namespace A098173.P5161248649984052926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (A185869 (n + 1) - 2 * A004197 n).toNat

end

end A098173.P5161248649984052926

namespace A098173

/-- `A103633(A185869(n+1)-2*A004197(n))` -/
def P5161248649984052926.Spec : Prop :=
  ∀ n, P5161248649984052926.a n = A098173 n

end A098173

/-! ## A098173.P12966778228572707171

`A103633(A185869(n+1)-A004197(n)-A004197(n))`
-/

namespace A098173.P12966778228572707171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (A185869 (n + 1) - A004197 n - A004197 n).toNat

end

end A098173.P12966778228572707171

namespace A098173

/-- `A103633(A185869(n+1)-A004197(n)-A004197(n))` -/
def P12966778228572707171.Spec : Prop :=
  ∀ n, P12966778228572707171.a n = A098173 n

end A098173

/-! ## A098173.P7652953636963606869

`C(A003056(n), 4*A089840(n))`
-/

namespace A098173.P7652953636963606869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (4 * A089840 n).toNat

end

end A098173.P7652953636963606869

namespace A098173

/-- `C(A003056(n), 4*A089840(n))` -/
def P7652953636963606869.Spec : Prop :=
  ∀ n, (P7652953636963606869.a n : ℤ) = A098173 n

end A098173

/-!
# A098175: Smallest power of n with initial digit = 1 in decimal representation.

The programs for A098175, there is no canonical definition to state claims against.
-/

/-! ## A098175.P4321204626092992757

`(n+1)^A098174(n+1)`
-/

namespace A098175.P4321204626092992757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A098174 (n + 1) : ℤ)

end

end A098175.P4321204626092992757

/-! ## A098175.P3651231270593525235

`(n+1)^A363683(∑[n+1])`
-/

namespace A098175.P3651231270593525235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A363683 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A098175.P3651231270593525235

/-!
# A098177: Start with the first n, which reads: "Prolong the sequence with n numbers having their parity opposed to n". Then read and obey the second n, then the third n, etc. This sequence is the slowest increasing one with such rule.

The programs for A098177, there is no canonical definition to state claims against.
-/

/-! ## A098177.P7290363115099186115

`A008611(round(6*n²/(n+1))+2)`
-/

namespace A098177.P7290363115099186115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((6 * n ^ 2 : ℚ) / (n + 1 : ℚ)) + 2).toNat

end

end A098177.P7290363115099186115

/-!
# A098178: Expansion of (1+x)(1-x+x^2)/((1-x)(1+x^2)).

The programs for A098178, the canonical program `A098178.P11312816957333077761` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098178 has offset 0).

The definition of A098178 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3)/(1-x+x^2-x^3))` (program `A098178.P11312816957333077761`, by `A098178.P11312816957333077761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098178.P5910862865870447026

`a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A098178.P5910862865870447026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1, 2] fun n a =>
  a (n - 4)

end

end A098178.P5910862865870447026

namespace A098178

/-- `a(n-4)` -/
def P5910862865870447026.Spec : Prop :=
  ∀ n, (P5910862865870447026.a n : ℤ) = A098178 n

end A098178

/-! ## A098178.P11312816957333077761

`ogf((1+x^3)/(1-x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098178

/-- `ogf((1+x^3)/(1-x+x^2-x^3))` -/
def P11312816957333077761.Spec : Prop :=
  ∀ n, P11312816957333077761.a n = A098178 n

theorem P11312816957333077761.correct : P11312816957333077761.Spec := by
  intro n
  simp only [A098178]

end A098178

/-!
# A098179: Expansion of (1-3*x+3*x^2)/(1-5*x+10*x^2-10*x^3+4*x^4).

The programs for A098179, the canonical program `A098179.P18111903450224872331` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098179 has offset 0).

The definition of A098179 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+3x^2)/(1-5x+10x^2-10x^3+4x^4))` (program `A098179.P18111903450224872331`, by `A098179.P18111903450224872331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098179.P13450825064353464885

`2^n+2^(n/2)*cos(π*n/4)-1`
-/

namespace A098179.P13450825064353464885
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) + (2 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * Real.cos (Real.pi * (n : ℝ) / 4) - 1

end

end A098179.P13450825064353464885

namespace A098179

/-- `2^n+2^(n/2)*cos(π*n/4)-1` -/
def P13450825064353464885.Spec : Prop :=
  ∀ n, P13450825064353464885.a n = (A098179 n : ℝ)

end A098179

/-! ## A098179.P18111903450224872331

`ogf((1-3x+3x^2)/(1-5x+10x^2-10x^3+4x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098179

/-- `ogf((1-3x+3x^2)/(1-5x+10x^2-10x^3+4x^4))` -/
def P18111903450224872331.Spec : Prop :=
  ∀ n, P18111903450224872331.a n = A098179 n

theorem P18111903450224872331.correct : P18111903450224872331.Spec := by
  intro n
  simp only [A098179]

end A098179

/-! ## A098179.P15363493944599775446

`5*a(n-1)-10*a(n-2)+10*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A098179.P15363493944599775446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 4 * a (n - 4)

end

end A098179.P15363493944599775446

namespace A098179

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-4*a(n-4)` -/
def P15363493944599775446.Spec : Prop :=
  ∀ n, P15363493944599775446.a n = A098179 n

end A098179

/-! ## A098179.P11676074644711495380

`∑[A038503(n+1)]`
-/

namespace A098179.P11676074644711495380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098179.P11676074644711495380

namespace A098179

/-- `∑[A038503(n+1)]` -/
def P11676074644711495380.Spec : Prop :=
  ∀ n, P11676074644711495380.a n = A098179 n

end A098179

/-! ## A098179.P17270281723152106253

`A038504(n+2)-1`
-/

namespace A098179.P17270281723152106253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 2) - 1

end

end A098179.P17270281723152106253

namespace A098179

/-- `A038504(n+2)-1` -/
def P17270281723152106253.Spec : Prop :=
  ∀ n, P17270281723152106253.a n = A098179 n

end A098179

/-! ## A098179.P842580231572394300

`record[abs(1-A038504(n))]`
-/

namespace A098179.P842580231572394300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A038504 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098179.P842580231572394300

namespace A098179

/-- `record[abs(1-A038504(n))]` -/
def P842580231572394300.Spec : Prop :=
  ∀ n, P842580231572394300.a n = A098179 n

end A098179

/-! ## A098179.P10435738897450215032

`∑[∑[A000749(n)]+1]`
-/

namespace A098179.P10435738897450215032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098179.P10435738897450215032

namespace A098179

/-- `∑[∑[A000749(n)]+1]` -/
def P10435738897450215032.Spec : Prop :=
  ∀ n, P10435738897450215032.a n = A098179 n

end A098179

/-! ## A098179.P12493719078244124701

`∑[abs(Δ[A038504(n+1)])]`
-/

namespace A098179.P12493719078244124701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098179.P12493719078244124701

namespace A098179

/-- `∑[abs(Δ[A038504(n+1)])]` -/
def P12493719078244124701.Spec : Prop :=
  ∀ n, P12493719078244124701.a n = A098179 n

end A098179

/-! ## A098179.P8229203743717391494

`∑[∑[A138569(2*n)]+1]`
-/

namespace A098179.P8229203743717391494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138569 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098179.P8229203743717391494

namespace A098179

/-- `∑[∑[A138569(2*n)]+1]` -/
def P8229203743717391494.Spec : Prop :=
  ∀ n, P8229203743717391494.a n = A098179 n

end A098179

/-! ## A098179.P3028552047420276046

`A146559(n)+A000225(n)`
-/

namespace A098179.P3028552047420276046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n + A000225 n

end

end A098179.P3028552047420276046

namespace A098179

/-- `A146559(n)+A000225(n)` -/
def P3028552047420276046.Spec : Prop :=
  ∀ n, P3028552047420276046.a n = A098179 n

end A098179

/-! ## A098179.P4831047010883502101

`A000225(n)+Δ[A009545(n)]`
-/

namespace A098179.P4831047010883502101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (f1 (n + 1) - f1 n)

end

end A098179.P4831047010883502101

namespace A098179

/-- `A000225(n)+Δ[A009545(n)]` -/
def P4831047010883502101.Spec : Prop :=
  ∀ n, P4831047010883502101.a n = A098179 n

end A098179

/-! ## A098179.P10828821017837901015

`∑[∑[A038503(n)]-A009545(n)]`
-/

namespace A098179.P10828821017837901015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098179.P10828821017837901015

namespace A098179

/-- `∑[∑[A038503(n)]-A009545(n)]` -/
def P10828821017837901015.Spec : Prop :=
  ∀ n, P10828821017837901015.a n = A098179 n

end A098179

/-! ## A098179.P9547545904478388478

`A000079(n)+Δ[A009545(n)]-1`
-/

namespace A098179.P9547545904478388478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (f1 (n + 1) - f1 n - 1)

end

end A098179.P9547545904478388478

namespace A098179

/-- `A000079(n)+Δ[A009545(n)]-1` -/
def P9547545904478388478.Spec : Prop :=
  ∀ n, P9547545904478388478.a n = A098179 n

end A098179

/-! ## A098179.P14376493097310511336

`A138231(2*n+1)+A000225(n)`
-/

namespace A098179.P14376493097310511336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * n + 1) + A000225 n

end

end A098179.P14376493097310511336

namespace A098179

/-- `A138231(2*n+1)+A000225(n)` -/
def P14376493097310511336.Spec : Prop :=
  ∀ n, P14376493097310511336.a n = A098179 n

end A098179

/-! ## A098179.P8724239401028771829

`A138231(2*n+1)+A131577(n+1)-1`
-/

namespace A098179.P8724239401028771829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * n + 1) + (A131577 (n + 1) - 1)

end

end A098179.P8724239401028771829

namespace A098179

/-- `A138231(2*n+1)+A131577(n+1)-1` -/
def P8724239401028771829.Spec : Prop :=
  ∀ n, P8724239401028771829.a n = A098179 n

end A098179

/-! ## A098179.P6564524464376407478

`A009545(n+1)+A000225(n)-A009545(n)`
-/

namespace A098179.P6564524464376407478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) + (A000225 n - A009545 n)

end

end A098179.P6564524464376407478

namespace A098179

/-- `A009545(n+1)+A000225(n)-A009545(n)` -/
def P6564524464376407478.Spec : Prop :=
  ∀ n, P6564524464376407478.a n = A098179 n

end A098179

/-! ## A098179.P4126064511543940071

`Δ[A038505(n+2)]-1`
-/

namespace A098179.P4126064511543940071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A098179.P4126064511543940071

namespace A098179

/-- `Δ[A038505(n+2)]-1` -/
def P4126064511543940071.Spec : Prop :=
  ∀ n, P4126064511543940071.a n = A098179 n

end A098179

/-! ## A098179.P11408315465424541466

`A131885(n+2)/2-1`
-/

namespace A098179.P11408315465424541466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131885 (n + 2) : ℚ) / 2 - 1

end

end A098179.P11408315465424541466

namespace A098179

/-- `A131885(n+2)/2-1` -/
def P11408315465424541466.Spec : Prop :=
  ∀ n, P11408315465424541466.a n = (A098179 n : ℚ)

end A098179

/-! ## A098179.P13931947723565616114

`A000225(n+1)-A000749(n+2)`
-/

namespace A098179.P13931947723565616114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A000749 (n + 2)

end

end A098179.P13931947723565616114

namespace A098179

/-- `A000225(n+1)-A000749(n+2)` -/
def P13931947723565616114.Spec : Prop :=
  ∀ n, P13931947723565616114.a n = A098179 n

end A098179

/-! ## A098179.P9614710764802587943

`A052551(2*n)-A000749(n+2)`
-/

namespace A098179.P9614710764802587943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (2 * n) - A000749 (n + 2)

end

end A098179.P9614710764802587943

namespace A098179

/-- `A052551(2*n)-A000749(n+2)` -/
def P9614710764802587943.Spec : Prop :=
  ∀ n, P9614710764802587943.a n = A098179 n

end A098179

/-!
# A098180: Odd numbers with twice the odd numbers repeated in order between them.

The programs for A098180, the canonical program `A098180.P11629086435957811381` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098180 has offset 0).

The definition of A098180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098180.P17484000419738336725

`(2*n+1-(-1)^((n+1)*(n+2)/2))/2`
-/

namespace A098180.P17484000419738336725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℝ) - (-1 : ℝ) ^ (((n + 1) * (n + 2) : ℚ) / 2 : ℝ)) / 2

end

end A098180.P17484000419738336725

namespace A098180

/-- `(2*n+1-(-1)^((n+1)*(n+2)/2))/2` -/
def P17484000419738336725.Spec : Prop :=
  ∀ n, P17484000419738336725.a n = (A098180 n : ℝ)

end A098180

/-! ## A098180.P299338755216147151

`sqrt(2)*sin(π*n/2+π/4)/2+n+1/2`
-/

namespace A098180.P299338755216147151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) * Real.sin (Real.pi * (n : ℝ) / 2 + Real.pi / 4) / 2 + (n : ℝ) + ((1 : ℚ) / 2 : ℝ)

end

end A098180.P299338755216147151

namespace A098180

/-- `sqrt(2)*sin(π*n/2+π/4)/2+n+1/2` -/
def P299338755216147151.Spec : Prop :=
  ∀ n, P299338755216147151.a n = (A098180 n : ℝ)

end A098180

/-! ## A098180.P11629086435957811381

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098180

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P11629086435957811381.Spec : Prop :=
  ∀ n, P11629086435957811381.a n = A098180 n

theorem P11629086435957811381.correct : P11629086435957811381.Spec := by
  intro n
  simp only [A098180]

end A098180

/-! ## A098180.P326720147611440359

`char[and(n, -3)]+n`
-/

namespace A098180.P326720147611440359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A098180.P326720147611440359

namespace A098180

/-- `char[and(n, -3)]+n` -/
def P326720147611440359.Spec : Prop :=
  ∀ n, (P326720147611440359.a n : ℤ) = A098180 n

end A098180

/-! ## A098180.P2241814769154148671

`ceil(cos(n%4)+n)`
-/

namespace A098180.P2241814769154148671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((n % 4 : ℕ) : ℝ) + (n : ℝ)⌉

end

end A098180.P2241814769154148671

namespace A098180

/-- `ceil(cos(n%4)+n)` -/
def P2241814769154148671.Spec : Prop :=
  ∀ n, P2241814769154148671.a n = A098180 n

end A098180

/-! ## A098180.P8052013464511146072

`char[comp[or(2, n)]]+n`
-/

namespace A098180.P8052013464511146072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A098180.P8052013464511146072

namespace A098180

/-- `char[comp[or(2, n)]]+n` -/
def P8052013464511146072.Spec : Prop :=
  ∀ n, (P8052013464511146072.a n : ℤ) = A098180 n

end A098180

/-! ## A098180.P10818420995953473011

`ceil(or(2, 5*n)/5)`
-/

namespace A098180.P10818420995953473011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 (5 * n) : ℚ) / 5⌉

end

end A098180.P10818420995953473011

namespace A098180

/-- `ceil(or(2, 5*n)/5)` -/
def P10818420995953473011.Spec : Prop :=
  ∀ n, P10818420995953473011.a n = A098180 n

end A098180

/-! ## A098180.P18386508344900909500

`ceil(xor(2, 5*n)/5)`
-/

namespace A098180.P18386508344900909500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 (5 * n) : ℚ) / 5⌉

end

end A098180.P18386508344900909500

namespace A098180

/-- `ceil(xor(2, 5*n)/5)` -/
def P18386508344900909500.Spec : Prop :=
  ∀ n, P18386508344900909500.a n = A098180 n

end A098180

/-! ## A098180.P15360287049666632417

`2-and(2, n)!+n`
-/

namespace A098180.P15360287049666632417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial (Nat.land 2 n) : ℤ) + (n : ℤ)

end

end A098180.P15360287049666632417

namespace A098180

/-- `2-and(2, n)!+n` -/
def P15360287049666632417.Spec : Prop :=
  ∀ n, P15360287049666632417.a n = A098180 n

end A098180

/-! ## A098180.P4285492709695638591

`2-(and(2, n)!-n)`
-/

namespace A098180.P4285492709695638591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.factorial (Nat.land 2 n) : ℤ) - (n : ℤ))

end

end A098180.P4285492709695638591

namespace A098180

/-- `2-(and(2, n)!-n)` -/
def P4285492709695638591.Spec : Prop :=
  ∀ n, P4285492709695638591.a n = A098180 n

end A098180

/-! ## A098180.P7199773187296174457

`C(2, and(2, n)²)+n`
-/

namespace A098180.P7199773187296174457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 2 n ^ 2) + n

end

end A098180.P7199773187296174457

namespace A098180

/-- `C(2, and(2, n)²)+n` -/
def P7199773187296174457.Spec : Prop :=
  ∀ n, (P7199773187296174457.a n : ℤ) = A098180 n

end A098180

/-! ## A098180.P10599626177913764281

`∑[n+1]%2+n`
-/

namespace A098180.P10599626177913764281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + n

end

end A098180.P10599626177913764281

namespace A098180

/-- `∑[n+1]%2+n` -/
def P10599626177913764281.Spec : Prop :=
  ∀ n, (P10599626177913764281.a n : ℤ) = A098180 n

end A098180

/-! ## A098180.P3859194708804795691

`and(1, ∑[n+1])+n`
-/

namespace A098180.P3859194708804795691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A098180.P3859194708804795691

namespace A098180

/-- `and(1, ∑[n+1])+n` -/
def P3859194708804795691.Spec : Prop :=
  ∀ n, (P3859194708804795691.a n : ℤ) = A098180 n

end A098180

/-! ## A098180.P14909186507693697394

`1-char[or(2, n)]+n`
-/

namespace A098180.P14909186507693697394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A098180.P14909186507693697394

namespace A098180

/-- `1-char[or(2, n)]+n` -/
def P14909186507693697394.Spec : Prop :=
  ∀ n, P14909186507693697394.a n = A098180 n

end A098180

/-! ## A098180.P654145834456144081

`1-(char[or(2, n)]-n)`
-/

namespace A098180.P654145834456144081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A098180.P654145834456144081

namespace A098180

/-- `1-(char[or(2, n)]-n)` -/
def P654145834456144081.Spec : Prop :=
  ∀ n, P654145834456144081.a n = A098180 n

end A098180

/-! ## A098180.P13102079009400256674

`C(and(n, -3), n)+n`
-/

namespace A098180.P13102079009400256674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-3)).toNat n + n

end

end A098180.P13102079009400256674

namespace A098180

/-- `C(and(n, -3), n)+n` -/
def P13102079009400256674.Spec : Prop :=
  ∀ n, (P13102079009400256674.a n : ℤ) = A098180 n

end A098180

/-! ## A098180.P9866803378227584041

`∑{e}[or(n, -3), #]+n`
-/

namespace A098180.P9866803378227584041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + n

end

end A098180.P9866803378227584041

namespace A098180

/-- `∑{e}[or(n, -3), #]+n` -/
def P9866803378227584041.Spec : Prop :=
  ∀ n, (P9866803378227584041.a n : ℤ) = A098180 n

end A098180

/-! ## A098180.P11931879857253307297

`∑[cos(n*asin(1))]+n`
-/

namespace A098180.P11931879857253307297
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℝ) * Real.arcsin (1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A098180.P11931879857253307297

namespace A098180

/-- `∑[cos(n*asin(1))]+n` -/
def P11931879857253307297.Spec : Prop :=
  ∀ n, P11931879857253307297.a n = (A098180 n : ℝ)

end A098180

/-! ## A098180.P11475599337095174178

`1-and(2, n)/2+n`
-/

namespace A098180.P11475599337095174178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℚ) / 2 + (n : ℚ)

end

end A098180.P11475599337095174178

namespace A098180

/-- `1-and(2, n)/2+n` -/
def P11475599337095174178.Spec : Prop :=
  ∀ n, P11475599337095174178.a n = (A098180 n : ℚ)

end A098180

/-! ## A098180.P1925531073077983

`and(2, n+2)/2+n`
-/

namespace A098180.P1925531073077983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (n + 2) : ℚ) / 2 + (n : ℚ)

end

end A098180.P1925531073077983

namespace A098180

/-- `and(2, n+2)/2+n` -/
def P1925531073077983.Spec : Prop :=
  ∀ n, P1925531073077983.a n = (A098180 n : ℚ)

end A098180

/-!
# A098181: Two consecutive odd numbers separated by multiples of four, repeated twice, between them, written in increasing order.

The programs for A098181, the canonical program `A098181.P9277033077450917774` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098181 has offset 0).

The definition of A098181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098181.P13100503044530245703

`(2*n+3-(-1)^ceil(n/2))/2`
-/

namespace A098181.P13100503044530245703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3 : ℚ) - (-1 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) / 2

end

end A098181.P13100503044530245703

namespace A098181

/-- `(2*n+3-(-1)^ceil(n/2))/2` -/
def P13100503044530245703.Spec : Prop :=
  ∀ n, P13100503044530245703.a n = (A098181 n : ℚ)

end A098181

/-! ## A098181.P4532196304667711112

`floor(C(n+3, 2)/2)-floor(C(n+1, 2)/2)`
-/

namespace A098181.P4532196304667711112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 2 : ℚ) / 2⌋ - ⌊(Nat.choose (n + 1) 2 : ℚ) / 2⌋

end

end A098181.P4532196304667711112

namespace A098181

/-- `floor(C(n+3, 2)/2)-floor(C(n+1, 2)/2)` -/
def P4532196304667711112.Spec : Prop :=
  ∀ n, P4532196304667711112.a n = A098181 n

end A098181

/-! ## A098181.P9277033077450917774

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098181

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P9277033077450917774.Spec : Prop :=
  ∀ n, P9277033077450917774.a n = A098181 n

theorem P9277033077450917774.correct : P9277033077450917774.Spec := by
  intro n
  simp only [A098181]

end A098181

/-! ## A098181.P748920987591433407

`∑[C(2, n%4)]`
-/

namespace A098181.P748920987591433407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P748920987591433407

namespace A098181

/-- `∑[C(2, n%4)]` -/
def P748920987591433407.Spec : Prop :=
  ∀ n, (P748920987591433407.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P12468565402346035595

`∑[C(2, and(3, n))]`
-/

namespace A098181.P12468565402346035595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P12468565402346035595

namespace A098181

/-- `∑[C(2, and(3, n))]` -/
def P12468565402346035595.Spec : Prop :=
  ∀ n, (P12468565402346035595.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P3125752518545828500

`∑[5%or(n, -4)]`
-/

namespace A098181.P3125752518545828500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (Int.lor (n : ℤ) (-4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P3125752518545828500

namespace A098181

/-- `∑[5%or(n, -4)]` -/
def P3125752518545828500.Spec : Prop :=
  ∀ n, P3125752518545828500.a n = A098181 n

end A098181

/-! ## A098181.P10862240806096275295

`∑[∑[1-and(2, n)]]`
-/

namespace A098181.P10862240806096275295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P10862240806096275295

namespace A098181

/-- `∑[∑[1-and(2, n)]]` -/
def P10862240806096275295.Spec : Prop :=
  ∀ n, P10862240806096275295.a n = A098181 n

end A098181

/-! ## A098181.P13926869560517240693

`∑[and(3, ∑[or(1, n)])]`
-/

namespace A098181.P13926869560517240693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P13926869560517240693

namespace A098181

/-- `∑[and(3, ∑[or(1, n)])]` -/
def P13926869560517240693.Spec : Prop :=
  ∀ n, (P13926869560517240693.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P2910794028766355174

`and(2, -n)!+n`
-/

namespace A098181.P2910794028766355174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (-(n : ℤ))).toNat + n

end

end A098181.P2910794028766355174

namespace A098181

/-- `and(2, -n)!+n` -/
def P2910794028766355174.Spec : Prop :=
  ∀ n, (P2910794028766355174.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P2023441354443703697

`∑[(n^3+1)%4]`
-/

namespace A098181.P2023441354443703697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + 1) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P2023441354443703697

namespace A098181

/-- `∑[(n^3+1)%4]` -/
def P2023441354443703697.Spec : Prop :=
  ∀ n, (P2023441354443703697.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P156404588303497246

`∑[and(3, n^3+1)]`
-/

namespace A098181.P156404588303497246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n ^ 3 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P156404588303497246

namespace A098181

/-- `∑[and(3, n^3+1)]` -/
def P156404588303497246.Spec : Prop :=
  ∀ n, (P156404588303497246.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P6681232879085650908

`∑[n]%2+1+n`
-/

namespace A098181.P6681232879085650908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 1 + n

end

end A098181.P6681232879085650908

namespace A098181

/-- `∑[n]%2+1+n` -/
def P6681232879085650908.Spec : Prop :=
  ∀ n, (P6681232879085650908.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P12980296176940702286

`gcd(2, ∑[n]+1)+n`
-/

namespace A098181.P12980296176940702286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + n

end

end A098181.P12980296176940702286

namespace A098181

/-- `gcd(2, ∑[n]+1)+n` -/
def P12980296176940702286.Spec : Prop :=
  ∀ n, (P12980296176940702286.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P11297350950168475239

`and(1, ∑[n])+1+n`
-/

namespace A098181.P11297350950168475239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + n

end

end A098181.P11297350950168475239

namespace A098181

/-- `and(1, ∑[n])+1+n` -/
def P11297350950168475239.Spec : Prop :=
  ∀ n, (P11297350950168475239.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P16629231340660508837

`∑[sqrt((3-n)²%8)]`
-/

namespace A098181.P16629231340660508837
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod ((3 - (n : ℤ)) ^ 2) 8 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P16629231340660508837

namespace A098181

/-- `∑[sqrt((3-n)²%8)]` -/
def P16629231340660508837.Spec : Prop :=
  ∀ n, P16629231340660508837.a n = (A098181 n : ℝ)

end A098181

/-! ## A098181.P9374015161696174542

`∑[∑[(-1)^C(n, 2)]]`
-/

namespace A098181.P9374015161696174542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P9374015161696174542

namespace A098181

/-- `∑[∑[(-1)^C(n, 2)]]` -/
def P9374015161696174542.Spec : Prop :=
  ∀ n, P9374015161696174542.a n = A098181 n

end A098181

/-! ## A098181.P17819912544099766685

`∑[sin(n*asin(1))+1]`
-/

namespace A098181.P17819912544099766685
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℝ) * Real.arcsin (1 : ℝ)) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P17819912544099766685

namespace A098181

/-- `∑[sin(n*asin(1))+1]` -/
def P17819912544099766685.Spec : Prop :=
  ∀ n, P17819912544099766685.a n = (A098181 n : ℝ)

end A098181

/-! ## A098181.P12789123311547259140

`∏{d}[and(2, -n), #]+n`
-/

namespace A098181.P12789123311547259140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d + n

end

end A098181.P12789123311547259140

namespace A098181

/-- `∏{d}[and(2, -n), #]+n` -/
def P12789123311547259140.Spec : Prop :=
  ∀ n, (P12789123311547259140.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P8469075966169166846

`∏{p}[and(2, -n), #]+n`
-/

namespace A098181.P8469075966169166846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + n

end

end A098181.P8469075966169166846

namespace A098181

/-- `∏{p}[and(2, -n), #]+n` -/
def P8469075966169166846.Spec : Prop :=
  ∀ n, (P8469075966169166846.a n : ℤ) = A098181 n

end A098181

/-! ## A098181.P686758437273347743

`∑[2-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A098181.P686758437273347743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098181.P686758437273347743

namespace A098181

/-- `∑[2-a(n-2)]` -/
def P686758437273347743.Spec : Prop :=
  ∀ n, P686758437273347743.a n = A098181 n

end A098181

/-!
# A098182: a(n) = 3*a(n-1) - a(n-2) + a(n-3), a(0)=1,a(1)=1,a(2)=3.

The programs for A098182, the canonical program `A098182.P10039713713618037216` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098182 has offset 0).

The definition of A098182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)+a(n-3)` (program `A098182.P10039713713618037216`, by `A098182.P10039713713618037216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098182.P10039713713618037216

`3*a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098182

/-- `3*a(n-1)-a(n-2)+a(n-3)` -/
def P10039713713618037216.Spec : Prop :=
  ∀ n, P10039713713618037216.a n = A098182 n

theorem P10039713713618037216.correct : P10039713713618037216.Spec := by
  intro n
  simp only [A098182]

end A098182

/-! ## A098182.P7737787638634749418

`ogf((1-2x+x^2)/(1-3x+x^2-x^3))`
-/

namespace A098182.P7737787638634749418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 1, -1] n

end

end A098182.P7737787638634749418

namespace A098182

/-- `ogf((1-2x+x^2)/(1-3x+x^2-x^3))` -/
def P7737787638634749418.Spec : Prop :=
  ∀ n, P7737787638634749418.a n = A098182 n

end A098182

/-! ## A098182.P1397617911590728380

`a(n-3)-(a(n-2)-3*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A098182.P1397617911590728380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 3) - (a (n - 2) - 3 * a (n - 1))

end

end A098182.P1397617911590728380

namespace A098182

/-- `a(n-3)-(a(n-2)-3*a(n-1))` -/
def P1397617911590728380.Spec : Prop :=
  ∀ n, P1397617911590728380.a n = A098182 n

end A098182

/-! ## A098182.P7191638110347234195

`Δ[Δ[A200752(n+1)]]`
-/

namespace A098182.P7191638110347234195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098182.P7191638110347234195

namespace A098182

/-- `Δ[Δ[A200752(n+1)]]` -/
def P7191638110347234195.Spec : Prop :=
  ∀ n, P7191638110347234195.a n = A098182 n

end A098182

/-! ## A098182.P11745178484528036461

`A200752(n+2)+A200752(n)`
-/

namespace A098182.P11745178484528036461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 (n + 2) + A200752 n

end

end A098182.P11745178484528036461

namespace A098182

/-- `A200752(n+2)+A200752(n)` -/
def P11745178484528036461.Spec : Prop :=
  ∀ n, P11745178484528036461.a n = A098182 n

end A098182

/-! ## A098182.P13531971423541548028

`Δ[A202207(n)-A200752(n)]-A202207(n)`
-/

namespace A098182.P13531971423541548028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202207 n - A200752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A202207 n

end

end A098182.P13531971423541548028

namespace A098182

/-- `Δ[A202207(n)-A200752(n)]-A202207(n)` -/
def P13531971423541548028.Spec : Prop :=
  ∀ n, P13531971423541548028.a n = A098182 n

end A098182

/-! ## A098182.P11198771366778129892

`A327821(n+1)+A102620(n+2)-A327821(n+2)`
-/

namespace A098182.P11198771366778129892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327821 (n + 1) + (A102620 (n + 2) - A327821 (n + 2))

end

end A098182.P11198771366778129892

namespace A098182

/-- `A327821(n+1)+A102620(n+2)-A327821(n+2)` -/
def P11198771366778129892.Spec : Prop :=
  ∀ n, P11198771366778129892.a n = A098182 n

end A098182

/-! ## A098182.P2621066542108115804

`A052907(3*n)/A000079(n)`
-/

namespace A098182.P2621066542108115804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052907 (3 * n) : ℚ) / (A000079 n : ℚ)

end

end A098182.P2621066542108115804

namespace A098182

/-- `A052907(3*n)/A000079(n)` -/
def P2621066542108115804.Spec : Prop :=
  ∀ n, P2621066542108115804.a n = (A098182 n : ℚ)

end A098182

/-!
# A098183: a(n) = 3*a(n-1) + a(n-3), a(0) = 1, a(1) = 1, a(2) = 4.

The programs for A098183, the canonical program `A098183.P6841517833286598056` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098183 has offset 0).

The definition of A098183 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-3)` (program `A098183.P6841517833286598056`, by `A098183.P6841517833286598056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098183.P6841517833286598056

`3*a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098183

/-- `3*a(n-1)+a(n-3)` -/
def P6841517833286598056.Spec : Prop :=
  ∀ n, (P6841517833286598056.a n : ℤ) = A098183 n

theorem P6841517833286598056.correct : P6841517833286598056.Spec := by
  intro n
  simp only [A098183]

end A098183

/-! ## A098183.P9238310866752279663

`ogf((1-2x+x^2)/(1-3x-x^3))`
-/

namespace A098183.P9238310866752279663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 0, -1] n

end

end A098183.P9238310866752279663

namespace A098183

/-- `ogf((1-2x+x^2)/(1-3x-x^3))` -/
def P9238310866752279663.Spec : Prop :=
  ∀ n, P9238310866752279663.a n = A098183 n

end A098183

/-! ## A098183.P3935327343784214684

`a(n-3)+lcm(3, a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A098183.P3935327343784214684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 3) + Nat.lcm 3 (a (n - 1))

end

end A098183.P3935327343784214684

namespace A098183

/-- `a(n-3)+lcm(3, a(n-1))` -/
def P3935327343784214684.Spec : Prop :=
  ∀ n, (P3935327343784214684.a n : ℤ) = A098183 n

end A098183

/-! ## A098183.P10045547851093019269

`a(n-1)+a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A098183.P10045547851093019269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 3)))

end

end A098183.P10045547851093019269

namespace A098183

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-3)` -/
def P10045547851093019269.Spec : Prop :=
  ∀ n, (P10045547851093019269.a n : ℤ) = A098183 n

theorem P10045547851093019269.correct : P10045547851093019269.Spec := by
  intro n
  simp only [A098183, Nat.add_sub_cancel, A098183.P10045547851093019269.a, A098183.P6841517833286598056.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098183

/-! ## A098183.P142999383685675763

`4*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A098183.P142999383685675763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  4 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A098183.P142999383685675763

namespace A098183

/-- `4*a(n-1)-(a(n-1)-a(n-3))` -/
def P142999383685675763.Spec : Prop :=
  ∀ n, P142999383685675763.a n = A098183 n

end A098183

/-! ## A098183.P16427010969298165782

`A183188(n)-A183188(n+2)%A183188(n+1)`
-/

namespace A098183.P16427010969298165782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183188 n - Int.tmod (A183188 (n + 2)) (A183188 (n + 1))

end

end A098183.P16427010969298165782

namespace A098183

/-- `A183188(n)-A183188(n+2)%A183188(n+1)` -/
def P16427010969298165782.Spec : Prop :=
  ∀ n, P16427010969298165782.a n = A098183 n

end A098183

/-!
# A098184: a(n) = 3a(n-1)+a(n-2)+a(n-3), a(0)=1, a(1)=1, a(2)=5.

The programs for A098184, the canonical program `A098184.P17930526991034150333` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098184 has offset 0).

The definition of A098184 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)+a(n-3)` (program `A098184.P17930526991034150333`, by `A098184.P17930526991034150333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098184.P17930526991034150333

`3*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098184

/-- `3*a(n-1)+a(n-2)+a(n-3)` -/
def P17930526991034150333.Spec : Prop :=
  ∀ n, (P17930526991034150333.a n : ℤ) = A098184 n

theorem P17930526991034150333.correct : P17930526991034150333.Spec := by
  intro n
  simp only [A098184]

end A098184

/-! ## A098184.P14588803443302005270

`ogf((-1+2x-x^2)/(-1+3x+x^2+x^3))`
-/

namespace A098184.P14588803443302005270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, -1, -1] n

end

end A098184.P14588803443302005270

namespace A098184

/-- `ogf((-1+2x-x^2)/(-1+3x+x^2+x^3))` -/
def P14588803443302005270.Spec : Prop :=
  ∀ n, P14588803443302005270.a n = A098184 n

end A098184

/-! ## A098184.P7950514900491219175

`Δ[A099463(n)]`
-/

namespace A098184.P7950514900491219175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098184.P7950514900491219175

namespace A098184

/-- `Δ[A099463(n)]` -/
def P7950514900491219175.Spec : Prop :=
  ∀ n, P7950514900491219175.a n = A098184 n

end A098184

/-! ## A098184.P3526518783350573257

`A000213(2*n)`
-/

namespace A098184.P3526518783350573257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (2 * n)

end

end A098184.P3526518783350573257

namespace A098184

/-- `A000213(2*n)` -/
def P3526518783350573257.Spec : Prop :=
  ∀ n, P3526518783350573257.a n = A098184 n

end A098184

/-! ## A098184.P1256442893934320932

`Δ[A000073(2*n)]`
-/

namespace A098184.P1256442893934320932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098184.P1256442893934320932

namespace A098184

/-- `Δ[A000073(2*n)]` -/
def P1256442893934320932.Spec : Prop :=
  ∀ n, P1256442893934320932.a n = A098184 n

end A098184

/-! ## A098184.P18446693214297013684

`Δ[A112476(2*n)]`
-/

namespace A098184.P18446693214297013684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098184.P18446693214297013684

namespace A098184

/-- `Δ[A112476(2*n)]` -/
def P18446693214297013684.Spec : Prop :=
  ∀ n, P18446693214297013684.a n = A098184 n

end A098184

/-! ## A098184.P11685145935345079737

`Δ[A114952(4*n)]`
-/

namespace A098184.P11685145935345079737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098184.P11685145935345079737

namespace A098184

/-- `Δ[A114952(4*n)]` -/
def P11685145935345079737.Spec : Prop :=
  ∀ n, P11685145935345079737.a n = A098184 n

end A098184

/-! ## A098184.P9911303178891057430

`A034804(3*n+2)`
-/

namespace A098184.P9911303178891057430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034804 (3 * n + 2)

end

end A098184.P9911303178891057430

namespace A098184

/-- `A034804(3*n+2)` -/
def P9911303178891057430.Spec : Prop :=
  ∀ n, P9911303178891057430.a n = A098184 n

end A098184

/-! ## A098184.P15498927463768119504

`Δ[A034803(3*(n+1))]`
-/

namespace A098184.P15498927463768119504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034803 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098184.P15498927463768119504

namespace A098184

/-- `Δ[A034803(3*(n+1))]` -/
def P15498927463768119504.Spec : Prop :=
  ∀ n, P15498927463768119504.a n = A098184 n

end A098184

/-! ## A098184.P11814854540862175224

`A034803(3*(n+1)+1)`
-/

namespace A098184.P11814854540862175224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034803 (3 * (n + 1) + 1)

end

end A098184.P11814854540862175224

namespace A098184

/-- `A034803(3*(n+1)+1)` -/
def P11814854540862175224.Spec : Prop :=
  ∀ n, P11814854540862175224.a n = A098184 n

end A098184

/-! ## A098184.P10893563658305550660

`2*A192804(2*n)-1`
-/

namespace A098184.P10893563658305550660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192804 (2 * n) - 1

end

end A098184.P10893563658305550660

namespace A098184

/-- `2*A192804(2*n)-1` -/
def P10893563658305550660.Spec : Prop :=
  ∀ n, P10893563658305550660.a n = A098184 n

end A098184

/-! ## A098184.P5411508746441616380

`A221652(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A098184.P5411508746441616380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A221652 n + a (n - 1)

end

end A098184.P5411508746441616380

namespace A098184

/-- `A221652(n)+a(n-1)` -/
def P5411508746441616380.Spec : Prop :=
  ∀ n, P5411508746441616380.a n = A098184 n

end A098184

/-! ## A098184.P10949442209826872935

`A326329(n)+A073717(n)`
-/

namespace A098184.P10949442209826872935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326329 n + A073717 n

end

end A098184.P10949442209826872935

namespace A098184

/-- `A326329(n)+A073717(n)` -/
def P10949442209826872935.Spec : Prop :=
  ∀ n, P10949442209826872935.a n = A098184 n

end A098184

/-! ## A098184.P16904604765301316126

`abs(Δ[A000073(A004277(n))])`
-/

namespace A098184.P16904604765301316126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A098184.P16904604765301316126

namespace A098184

/-- `abs(Δ[A000073(A004277(n))])` -/
def P16904604765301316126.Spec : Prop :=
  ∀ n, P16904604765301316126.a n = A098184 n

end A098184

/-! ## A098184.P133471808552416902

`A326329(n+1)+A326329(n)`
-/

namespace A098184.P133471808552416902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326329 (n + 1) + A326329 n

end

end A098184.P133471808552416902

namespace A098184

/-- `A326329(n+1)+A326329(n)` -/
def P133471808552416902.Spec : Prop :=
  ∀ n, P133471808552416902.a n = A098184 n

end A098184

/-! ## A098184.P10966138147041112686

`A099463(n+1)-A099463(n)`
-/

namespace A098184.P10966138147041112686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099463 (n + 1) - A099463 n

end

end A098184.P10966138147041112686

namespace A098184

/-- `A099463(n+1)-A099463(n)` -/
def P10966138147041112686.Spec : Prop :=
  ∀ n, P10966138147041112686.a n = A098184 n

end A098184

/-! ## A098184.P9194978604146834202

`A081172(2*n)+A000073(2*n)`
-/

namespace A098184.P9194978604146834202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (2 * n) + A000073 (2 * n)

end

end A098184.P9194978604146834202

namespace A098184

/-- `A081172(2*n)+A000073(2*n)` -/
def P9194978604146834202.Spec : Prop :=
  ∀ n, P9194978604146834202.a n = A098184 n

end A098184

/-! ## A098184.P12717023854652575829

`A275778(2*n)-A001590(2*n)`
-/

namespace A098184.P12717023854652575829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 (2 * n) - A001590 (2 * n)

end

end A098184.P12717023854652575829

namespace A098184

/-- `A275778(2*n)-A001590(2*n)` -/
def P12717023854652575829.Spec : Prop :=
  ∀ n, P12717023854652575829.a n = A098184 n

end A098184

/-! ## A098184.P12660589177443499963

`A001590(2*n+1)+A001590(2*n)`
-/

namespace A098184.P12660589177443499963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (2 * n + 1) + A001590 (2 * n)

end

end A098184.P12660589177443499963

namespace A098184

/-- `A001590(2*n+1)+A001590(2*n)` -/
def P12660589177443499963.Spec : Prop :=
  ∀ n, P12660589177443499963.a n = A098184 n

end A098184

/-!
# A098185: If f(x) = (sum of unitary proper divisors of x) = A063919(x) is iterated, the iteration may lead to a fixed point which is either equals 0 or it is from A002827, a unitary perfect number > 1: 6,60,90,87360... Here initial values are collected for which the iteration ends in a unitary perfect number > 1.

The programs for A098185, there is no canonical definition to state claims against.
-/

/-! ## A098185.P12601529725011409568

`eq[A097031(n+1), A318880(n+1)]+1`
-/

namespace A098185.P12601529725011409568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A098185.P12601529725011409568

/-! ## A098185.P5871194386075550367

`A014681(eq[A097031(n+1), A318880(n+1)])`
-/

namespace A098185.P5871194386075550367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098185.P5871194386075550367

/-! ## A098185.P11157544365825471272

`A020725(eq[A097031(n+1), A318880(n+1)])`
-/

namespace A098185.P11157544365825471272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098185.P11157544365825471272

/-! ## A098185.P12997532600852955084

`A100710(eq[A097031(n+1), A318880(n+1)])`
-/

namespace A098185.P12997532600852955084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100710 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098185.P12997532600852955084

/-! ## A098185.P12550021635497841445

`A153152(eq[A097031(n+1), A318880(n+1)])`
-/

namespace A098185.P12550021635497841445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098185.P12550021635497841445

/-!
# A098188: Irregular triangle with 4 columns which contains in each row the members of a 4-cycle under the map x->A063919(x), iteration of summing the proper-unitary divisors.

The programs for A098188, there is no canonical definition to state claims against.
-/

/-! ## A098188.P4745594143344821167

`A319902(∪[A007416(n+1), A056759(n+1)])`
-/

namespace A098188.P4745594143344821167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056759 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319902 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A098188.P4745594143344821167

/-! ## A098188.P126937880143682722

`A319902(∪[A056759(n+1), A181826(n+1)])`
-/

namespace A098188.P126937880143682722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181826 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319902 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A098188.P126937880143682722

/-! ## A098188.P12918811133680549938

`A319902(A346535(n+1))`
-/

namespace A098188.P12918811133680549938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319902 (A346535 (n + 1)).toNat

end

end A098188.P12918811133680549938

/-! ## A098188.P7719381896576278315

`A319902(A118600(n+1)+1)`
-/

namespace A098188.P7719381896576278315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319902 (A118600 (n + 1) + 1).toNat

end

end A098188.P7719381896576278315

/-!
# A098189: Sum of unitary divisors minus Euler phi: a(n) = A034448(n) - A000010(n).

The programs for A098189, the canonical program `A098189.P4675613756573831951` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098189 has offset 1).

The definition of A098189 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098189.P4675613756573831951

`A034448(n+1)-A000010(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A098189

/-- `A034448(n+1)-A000010(n+1)` -/
def P4675613756573831951.Spec : Prop :=
  ∀ n, P4675613756573831951.a n = A098189 (n + 1)

theorem P4675613756573831951.correct : P4675613756573831951.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel]

end A098189

/-! ## A098189.P2302430974550346719

`A034448(n+1)-Δ[A002088(n)]`
-/

namespace A098189.P2302430974550346719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (f1 (n + 1) - f1 n)

end

end A098189.P2302430974550346719

namespace A098189

/-- `A034448(n+1)-Δ[A002088(n)]` -/
def P2302430974550346719.Spec : Prop :=
  ∀ n, P2302430974550346719.a n = A098189 (n + 1)

end A098189

/-! ## A098189.P4199190332150671292

`A034448(n+1)-Δ[A005728(n)]`
-/

namespace A098189.P4199190332150671292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (f1 (n + 1) - f1 n)

end

end A098189.P4199190332150671292

namespace A098189

/-- `A034448(n+1)-Δ[A005728(n)]` -/
def P4199190332150671292.Spec : Prop :=
  ∀ n, P4199190332150671292.a n = A098189 (n + 1)

end A098189

/-! ## A098189.P5401027329059548433

`A063085(n+1)+A000005(n+1)`
-/

namespace A098189.P5401027329059548433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063085 (n + 1) + A000005 (n + 1)

end

end A098189.P5401027329059548433

namespace A098189

/-- `A063085(n+1)+A000005(n+1)` -/
def P5401027329059548433.Spec : Prop :=
  ∀ n, P5401027329059548433.a n = A098189 (n + 1)

theorem P5401027329059548433.correct : P5401027329059548433.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P5401027329059548433.a, A098189.P4675613756573831951.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A063085, A063085.P4754823976141225556.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A061468, A061468.P5735709615131522244.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P16228397937464098828

`A051953(n+1)+A034460(n+1)`
-/

namespace A098189.P16228397937464098828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A034460 (n + 1)

end

end A098189.P16228397937464098828

namespace A098189

/-- `A051953(n+1)+A034460(n+1)` -/
def P16228397937464098828.Spec : Prop :=
  ∀ n, P16228397937464098828.a n = A098189 (n + 1)

theorem P16228397937464098828.correct : P16228397937464098828.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P16228397937464098828.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A034460, A034460.P1958235575820581513.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P7749709273385172293

`A129468(n+1)+A053158(n+1)`
-/

namespace A098189.P7749709273385172293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1) + A053158 (n + 1)

end

end A098189.P7749709273385172293

namespace A098189

/-- `A129468(n+1)+A053158(n+1)` -/
def P7749709273385172293.Spec : Prop :=
  ∀ n, P7749709273385172293.a n = A098189 (n + 1)

theorem P7749709273385172293.correct : P7749709273385172293.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P7749709273385172293.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A053158, A053158.P11533641159092355549.a, A129468, A129468.P11362039589036067826.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P14403220144945239550

`A325814(n+1)+A228947(n+1)`
-/

namespace A098189.P14403220144945239550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1) + A228947 (n + 1)

end

end A098189.P14403220144945239550

namespace A098189

/-- `A325814(n+1)+A228947(n+1)` -/
def P14403220144945239550.Spec : Prop :=
  ∀ n, P14403220144945239550.a n = A098189 (n + 1)

theorem P14403220144945239550.correct : P14403220144945239550.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P14403220144945239550.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A228947, A228947.P1027786129053480284.a, A325814, A325814.P16316630090321165520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A048146, A048146.P9985884013456677192.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P7465687390585618984

`A051612(n+1)-A048146(n+1)`
-/

namespace A098189.P7465687390585618984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A048146 (n + 1)

end

end A098189.P7465687390585618984

namespace A098189

/-- `A051612(n+1)-A048146(n+1)` -/
def P7465687390585618984.Spec : Prop :=
  ∀ n, P7465687390585618984.a n = A098189 (n + 1)

theorem P7465687390585618984.correct : P7465687390585618984.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P7465687390585618984.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A051612, A051612.P4135239823752248514.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P10328599422018409785

`A064212(n+1)-A065387(n+1)`
-/

namespace A098189.P10328599422018409785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - A065387 (n + 1)

end

end A098189.P10328599422018409785

namespace A098189

/-- `A064212(n+1)-A065387(n+1)` -/
def P10328599422018409785.Spec : Prop :=
  ∀ n, P10328599422018409785.a n = A098189 (n + 1)

theorem P10328599422018409785.correct : P10328599422018409785.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P10328599422018409785.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A064212, A064212.P10229143328642602721.a, A065387, A065387.P11284875715279330998.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P17581388544069173885

`A345451(n+1)-A109606(n+1)`
-/

namespace A098189.P17581388544069173885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) - A109606 (n + 1)

end

end A098189.P17581388544069173885

namespace A098189

/-- `A345451(n+1)-A109606(n+1)` -/
def P17581388544069173885.Spec : Prop :=
  ∀ n, P17581388544069173885.a n = A098189 (n + 1)

theorem P17581388544069173885.correct : P17581388544069173885.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P17581388544069173885.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A109606, A109606.P2415810041766612210.a, A345451, A345451.P7254326500789221208.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P1370503118266666506

`A034448(n+1)+1-A039649(n+1)`
-/

namespace A098189.P1370503118266666506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (1 - A039649 (n + 1))

end

end A098189.P1370503118266666506

namespace A098189

/-- `A034448(n+1)+1-A039649(n+1)` -/
def P1370503118266666506.Spec : Prop :=
  ∀ n, P1370503118266666506.a n = A098189 (n + 1)

theorem P1370503118266666506.correct : P1370503118266666506.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P1370503118266666506.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P17085401791180955272

`A034448(n+1)-(A109606(n+1)+1)`
-/

namespace A098189.P17085401791180955272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (A109606 (n + 1) + 1)

end

end A098189.P17085401791180955272

namespace A098189

/-- `A034448(n+1)-(A109606(n+1)+1)` -/
def P17085401791180955272.Spec : Prop :=
  ∀ n, P17085401791180955272.a n = A098189 (n + 1)

theorem P17085401791180955272.correct : P17085401791180955272.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P17085401791180955272.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P10222239296816693394

`A034448(n+1)+A219428(n+1)-n`
-/

namespace A098189.P10222239296816693394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A219428 (n + 1) - (n : ℤ))

end

end A098189.P10222239296816693394

namespace A098189

/-- `A034448(n+1)+A219428(n+1)-n` -/
def P10222239296816693394.Spec : Prop :=
  ∀ n, P10222239296816693394.a n = A098189 (n + 1)

theorem P10222239296816693394.correct : P10222239296816693394.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P10222239296816693394.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P2400582258256257937

`A034448(n+1)-(1-A051953(n+1)+n)`
-/

namespace A098189.P2400582258256257937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (1 - A051953 (n + 1) + (n : ℤ))

end

end A098189.P2400582258256257937

namespace A098189

/-- `A034448(n+1)-(1-A051953(n+1)+n)` -/
def P2400582258256257937.Spec : Prop :=
  ∀ n, P2400582258256257937.a n = A098189 (n + 1)

theorem P2400582258256257937.correct : P2400582258256257937.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P2400582258256257937.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A034448, A034448.P17017727775393200719.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P13252621688388822124

`∑{d}[n+1, A046692(#)*A343824((n+1)/#)]`
-/

namespace A098189.P13252621688388822124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A343824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A098189.P13252621688388822124

namespace A098189

/-- `∑{d}[n+1, A046692(#)*A343824((n+1)/#)]` -/
def P13252621688388822124.Spec : Prop :=
  ∀ n, P13252621688388822124.a n = A098189 (n + 1)

end A098189

/-! ## A098189.P16073477122514162445

`A034448(n+1)-(n+1)/∏{p}[n+1, #]*A173557(n+1)`
-/

namespace A098189.P16073477122514162445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ)

end

end A098189.P16073477122514162445

namespace A098189

/-- `A034448(n+1)-(n+1)/∏{p}[n+1, #]*A173557(n+1)` -/
def P16073477122514162445.Spec : Prop :=
  ∀ n, P16073477122514162445.a n = (A098189 (n + 1) : ℚ)

end A098189

/-! ## A098189.P4119728192426081044

`A000203(n+1)-(A048146(n+1)+A000010(n+1))`
-/

namespace A098189.P4119728192426081044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A048146 (n + 1) + A000010 (n + 1))

end

end A098189.P4119728192426081044

namespace A098189

/-- `A000203(n+1)-(A048146(n+1)+A000010(n+1))` -/
def P4119728192426081044.Spec : Prop :=
  ∀ n, P4119728192426081044.a n = A098189 (n + 1)

theorem P4119728192426081044.correct : P4119728192426081044.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P4119728192426081044.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P2700942458092342134

`A064212(n+1)-(A000203(n+1)+A000010(n+1))`
-/

namespace A098189.P2700942458092342134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - (A000203 (n + 1) + A000010 (n + 1))

end

end A098189.P2700942458092342134

namespace A098189

/-- `A064212(n+1)-(A000203(n+1)+A000010(n+1))` -/
def P2700942458092342134.Spec : Prop :=
  ∀ n, P2700942458092342134.a n = A098189 (n + 1)

theorem P2700942458092342134.correct : P2700942458092342134.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P2700942458092342134.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A064212, A064212.P10229143328642602721.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-! ## A098189.P12137942376567607085

`A034448(n+1)+A051612(n+1)-A000203(n+1)`
-/

namespace A098189.P12137942376567607085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A051612 (n + 1) - A000203 (n + 1))

end

end A098189.P12137942376567607085

namespace A098189

/-- `A034448(n+1)+A051612(n+1)-A000203(n+1)` -/
def P12137942376567607085.Spec : Prop :=
  ∀ n, P12137942376567607085.a n = A098189 (n + 1)

theorem P12137942376567607085.correct : P12137942376567607085.Spec := by
  intro n
  simp only [A098189, Nat.add_sub_cancel, A098189.P12137942376567607085.a, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A051612, A051612.P4135239823752248514.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098189

/-!
# A098190: The length of the cycle reached for the map x->A098189(x) if started at n.

The programs for A098190, there is no canonical definition to state claims against.
-/

/-! ## A098190.P15771405968088198785

`gcd(A090706(n), A101693(n+1))`
-/

namespace A098190.P15771405968088198785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090706 n) (A101693 (n + 1))

end

end A098190.P15771405968088198785

/-! ## A098190.P17351035359624286065

`A006131(gcd(floor(n^(1/5)), A288605(n+1)))`
-/

namespace A098190.P17351035359624286065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (Int.gcd ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ (A288605 (n + 1)))

end

end A098190.P17351035359624286065

/-! ## A098190.P14584330866433564588

`A124551(gcd(A000051(n), A368109(2*n)))`
-/

namespace A098190.P14584330866433564588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124551 (Int.gcd (A000051 n) (A368109 (2 * n)))

end

end A098190.P14584330866433564588

/-! ## A098190.P1403855084944064199

`A127106(gcd(A239019(n+4), A291168(n)))`
-/

namespace A098190.P1403855084944064199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127106 (Int.gcd (A239019 (n + 4)) (A291168 n))

end

end A098190.P1403855084944064199

/-! ## A098190.P11563349814770203330

`and(A001844(A052375(n+1)), A097732(n))`
-/

namespace A098190.P11563349814770203330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 (A052375 (n + 1)).toNat) (A097732 n)

end

end A098190.P11563349814770203330

/-!
# A098194: Starting values x such that the map x -> A098189(x) enters any cycle of length 53.

The programs for A098194, there is no canonical definition to state claims against.
-/

/-! ## A098194.P1090082957781447414

`lt[5, A098190(n+1)]+1`
-/

namespace A098194.P1090082957781447414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A098194.P1090082957781447414

/-! ## A098194.P2591102872563987801

`lt[5, A098190(A028310(n))]`
-/

namespace A098194.P2591102872563987801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098190 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A098194.P2591102872563987801

/-! ## A098194.P10240722866971971764

`eq[1, A109066(A098190(n+1)+7)]+1`
-/

namespace A098194.P10240722866971971764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (A098190 (n + 1) + 7).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098194.P10240722866971971764

/-! ## A098194.P1731477528757353360

`eq[3, A336319(A098190(round(20/(n+1)+n))+1)]`
-/

namespace A098194.P1731477528757353360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336319 (A098190 (SequenceMachineLib.roundAway (20 / (n + 1 : ℚ) + (n : ℚ))).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098194.P1731477528757353360

/-! ## A098194.P14571980347606217950

`eq[2, A001222(A007318(A098190(n+2)))]+2`
-/

namespace A098194.P14571980347606217950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007318 (A098190 (n + 2)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A098194.P14571980347606217950

/-!
# A098197: Smallest number m such that the trajectory of m under iteration of cototient function[=A051953] contains exactly n distinct numbers (including m and the fixed point=0). Or: the required number of iterations[=operations,transitions] is n-1.

The programs for A098197, there is no canonical definition to state claims against.
-/

/-! ## A098197.P7657261335980168803

`eq[A321726(n), A324051(n+2)]`
-/

namespace A098197.P7657261335980168803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324051 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098197.P7657261335980168803

/-! ## A098197.P9302736146707706759

`eq[A324051(n+2), A353829(n)]`
-/

namespace A098197.P9302736146707706759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324051 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098197.P9302736146707706759

/-! ## A098197.P9551408981049405122

`eq[A324051(n+2)², A263273(n)²]`
-/

namespace A098197.P9551408981049405122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324051 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098197.P9551408981049405122

/-! ## A098197.P5072908099386131083

`record[A101278(3*n+1)%A286633(A120880(n))]`
-/

namespace A098197.P5072908099386131083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101278 (3 * n + 1)) (A286633 (A120880 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098197.P5072908099386131083

/-! ## A098197.P1203609081717991005

`lt[A056531(A070038(n+1)), A005117(3*n+2)]`
-/

namespace A098197.P1203609081717991005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056531 (A070038 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098197.P1203609081717991005

