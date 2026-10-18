import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A058500: Primes of the form p*2^k + 1, where p is an odd prime and k > 0.

The programs for A058500, the canonical program `A058500.P11694654120924108376` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058500 has offset 1).

The definition of A058500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058500.P11694654120924108376

`∩[A067466(n+1), A074781(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A058500

/-- `∩[A067466(n+1), A074781(n+1)]` -/
def P11694654120924108376.Spec : Prop :=
  ∀ n, (P11694654120924108376.a n : ℤ) = A058500 (n + 1)

theorem P11694654120924108376.correct : P11694654120924108376.Spec := by
  intro n
  simp only [A058500, Nat.add_sub_cancel]

end A058500

/-! ## A058500.P7700697859856834116

`∩[A067466(n+1), A192864(n+1)]`
-/

namespace A058500.P7700697859856834116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P7700697859856834116

namespace A058500

/-- `∩[A067466(n+1), A192864(n+1)]` -/
def P7700697859856834116.Spec : Prop :=
  ∀ n, (P7700697859856834116.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P10671778146063621590

`p?[A066669(n+1)]`
-/

namespace A058500.P10671778146063621590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058500.P10671778146063621590

namespace A058500

/-- `p?[A066669(n+1)]` -/
def P10671778146063621590.Spec : Prop :=
  ∀ n, P10671778146063621590.a n = A058500 (n + 1)

end A058500

/-! ## A058500.P9564238568925062686

`∩[A066669(n+1), A067466(n+1)]`
-/

namespace A058500.P9564238568925062686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P9564238568925062686

namespace A058500

/-- `∩[A066669(n+1), A067466(n+1)]` -/
def P9564238568925062686.Spec : Prop :=
  ∀ n, (P9564238568925062686.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P10595487919662702086

`∩[A066669(n+1), A074781(n+1)]`
-/

namespace A058500.P10595487919662702086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P10595487919662702086

namespace A058500

/-- `∩[A066669(n+1), A074781(n+1)]` -/
def P10595487919662702086.Spec : Prop :=
  ∀ n, (P10595487919662702086.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P3932856504746646145

`∩[A066669(n+1), A077500(n+1)]`
-/

namespace A058500.P3932856504746646145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P3932856504746646145

namespace A058500

/-- `∩[A066669(n+1), A077500(n+1)]` -/
def P3932856504746646145.Spec : Prop :=
  ∀ n, (P3932856504746646145.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P15576288726402380692

`∩[A066669(n+1), A216885(n+1)]`
-/

namespace A058500.P15576288726402380692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P15576288726402380692

namespace A058500

/-- `∩[A066669(n+1), A216885(n+1)]` -/
def P15576288726402380692.Spec : Prop :=
  ∀ n, (P15576288726402380692.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P139370736146566624

`∩[A066669(n+1), A070303(n+1)]`
-/

namespace A058500.P139370736146566624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P139370736146566624

namespace A058500

/-- `∩[A066669(n+1), A070303(n+1)]` -/
def P139370736146566624.Spec : Prop :=
  ∀ n, (P139370736146566624.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P11307072480617355620

`∩[A004139(n+1), A066669(n+1)]`
-/

namespace A058500.P11307072480617355620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P11307072480617355620

namespace A058500

/-- `∩[A004139(n+1), A066669(n+1)]` -/
def P11307072480617355620.Spec : Prop :=
  ∀ n, (P11307072480617355620.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P9651828314145328952

`∩[A000040(n+1), A066669(n+1)]`
-/

namespace A058500.P9651828314145328952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P9651828314145328952

namespace A058500

/-- `∩[A000040(n+1), A066669(n+1)]` -/
def P9651828314145328952.Spec : Prop :=
  ∀ n, (P9651828314145328952.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P14829110627852903822

`∩[A006005(n+1), A066669(n+1)]`
-/

namespace A058500.P14829110627852903822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P14829110627852903822

namespace A058500

/-- `∩[A006005(n+1), A066669(n+1)]` -/
def P14829110627852903822.Spec : Prop :=
  ∀ n, (P14829110627852903822.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P11272019832100822848

`∩[A008578(n+1), A066669(n+1)]`
-/

namespace A058500.P11272019832100822848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P11272019832100822848

namespace A058500

/-- `∩[A008578(n+1), A066669(n+1)]` -/
def P11272019832100822848.Spec : Prop :=
  ∀ n, (P11272019832100822848.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P16618580046513454162

`∩[A045319(n+1), A066669(n+1)]`
-/

namespace A058500.P16618580046513454162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P16618580046513454162

namespace A058500

/-- `∩[A045319(n+1), A066669(n+1)]` -/
def P16618580046513454162.Spec : Prop :=
  ∀ n, (P16618580046513454162.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P9509558066526081341

`∩[A045344(n+1), A066669(n+1)]`
-/

namespace A058500.P9509558066526081341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P9509558066526081341

namespace A058500

/-- `∩[A045344(n+1), A066669(n+1)]` -/
def P9509558066526081341.Spec : Prop :=
  ∀ n, (P9509558066526081341.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P1781110830570249537

`∩[A065091(n+1), A066669(n+1)]`
-/

namespace A058500.P1781110830570249537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P1781110830570249537

namespace A058500

/-- `∩[A065091(n+1), A066669(n+1)]` -/
def P1781110830570249537.Spec : Prop :=
  ∀ n, (P1781110830570249537.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P9408822061728359169

`∩[A116974(n+1), A066669(n+1)]`
-/

namespace A058500.P9408822061728359169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P9408822061728359169

namespace A058500

/-- `∩[A116974(n+1), A066669(n+1)]` -/
def P9408822061728359169.Spec : Prop :=
  ∀ n, (P9408822061728359169.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P13251849204471518433

`∩[A161428(n+1), A066669(n+1)]`
-/

namespace A058500.P13251849204471518433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P13251849204471518433

namespace A058500

/-- `∩[A161428(n+1), A066669(n+1)]` -/
def P13251849204471518433.Spec : Prop :=
  ∀ n, (P13251849204471518433.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P1030810755378969030

`∩[A066669(n+1), A182986(n+1)]`
-/

namespace A058500.P1030810755378969030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P1030810755378969030

namespace A058500

/-- `∩[A066669(n+1), A182986(n+1)]` -/
def P1030810755378969030.Spec : Prop :=
  ∀ n, (P1030810755378969030.a n : ℤ) = A058500 (n + 1)

end A058500

/-! ## A058500.P9856480349253121486

`p?[A000040(n+1)*A010051(A057023(n+1))]`
-/

namespace A058500.P9856480349253121486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A010051 (A057023 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058500.P9856480349253121486

namespace A058500

/-- `p?[A000040(n+1)*A010051(A057023(n+1))]` -/
def P9856480349253121486.Spec : Prop :=
  ∀ n, P9856480349253121486.a n = A058500 (n + 1)

end A058500

/-! ## A058500.P17544858280143206882

`∩[A046022(n+1), A066669(n+1)]`
-/

namespace A058500.P17544858280143206882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058500.P17544858280143206882

namespace A058500

/-- `∩[A046022(n+1), A066669(n+1)]` -/
def P17544858280143206882.Spec : Prop :=
  ∀ n, (P17544858280143206882.a n : ℤ) = A058500 (n + 1)

end A058500

/-!
# A058501: Primes p such that largest odd factor of p-1 is not a prime (i.e., is composite or 1).

The programs for A058501, the canonical program `A058501.P405273937736052748` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058501 has offset 1).

The definition of A058501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058501.P405273937736052748

`p?[A010051(A057023(n+1))+A000040(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A058501

/-- `p?[A010051(A057023(n+1))+A000040(n+1)]` -/
def P405273937736052748.Spec : Prop :=
  ∀ n, P405273937736052748.a n = A058501 (n + 1)

theorem P405273937736052748.correct : P405273937736052748.Spec := by
  intro n
  simp only [A058501, Nat.add_sub_cancel]

end A058501

/-! ## A058501.P15272728594386476090

`p?[(n+2)*A005171(A000265(n+1))]`
-/

namespace A058501.P15272728594386476090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A005171 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058501.P15272728594386476090

namespace A058501

/-- `p?[(n+2)*A005171(A000265(n+1))]` -/
def P15272728594386476090.Spec : Prop :=
  ∀ n, P15272728594386476090.a n = A058501 (n + 1)

end A058501

/-! ## A058501.P7600171339129466807

`p?[A353671(n+1)+2+n]`
-/

namespace A058501.P7600171339129466807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353671 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058501.P7600171339129466807

namespace A058501

/-- `p?[A353671(n+1)+2+n]` -/
def P7600171339129466807.Spec : Prop :=
  ∀ n, P7600171339129466807.a n = A058501 (n + 1)

end A058501

/-! ## A058501.P16746139738866398854

`record[A020639(A353671(n+1)+2+n)]`
-/

namespace A058501.P16746139738866398854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A353671 (n + 1) + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058501.P16746139738866398854

namespace A058501

/-- `record[A020639(A353671(n+1)+2+n)]` -/
def P16746139738866398854.Spec : Prop :=
  ∀ n, P16746139738866398854.a n = A058501 (n + 1)

end A058501

/-! ## A058501.P1222687939909319130

`p?[(n+2)*A014963(A337333(n+1))]`
-/

namespace A058501.P1222687939909319130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A014963 (A337333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058501.P1222687939909319130

namespace A058501

/-- `p?[(n+2)*A014963(A337333(n+1))]` -/
def P1222687939909319130.Spec : Prop :=
  ∀ n, P1222687939909319130.a n = A058501 (n + 1)

end A058501

/-! ## A058501.P660942806121165988

`p?[comp[A066669(n+1)]]`
-/

namespace A058501.P660942806121165988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A058501.P660942806121165988

namespace A058501

/-- `p?[comp[A066669(n+1)]]` -/
def P660942806121165988.Spec : Prop :=
  ∀ n, (P660942806121165988.a n : ℤ) = A058501 (n + 1)

end A058501

/-! ## A058501.P16060382748630150159

`p?[A128059(A003602(n+1))+n+1]`
-/

namespace A058501.P16060382748630150159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A003602 (n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058501.P16060382748630150159

namespace A058501

/-- `p?[A128059(A003602(n+1))+n+1]` -/
def P16060382748630150159.Spec : Prop :=
  ∀ n, P16060382748630150159.a n = A058501 (n + 1)

end A058501

/-! ## A058501.P14689460172551498412

`p?[2-A010051(A028234(n+1))+n]`
-/

namespace A058501.P14689460172551498412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010051 (A028234 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058501.P14689460172551498412

namespace A058501

/-- `p?[2-A010051(A028234(n+1))+n]` -/
def P14689460172551498412.Spec : Prop :=
  ∀ n, P14689460172551498412.a n = A058501 (n + 1)

end A058501

/-! ## A058501.P7386492435868445917

`p?[gcd(n+2, A014061(A001227(n+1)))]`
-/

namespace A058501.P7386492435868445917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A014061 (A001227 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A058501.P7386492435868445917

namespace A058501

/-- `p?[gcd(n+2, A014061(A001227(n+1)))]` -/
def P7386492435868445917.Spec : Prop :=
  ∀ n, (P7386492435868445917.a n : ℤ) = A058501 (n + 1)

end A058501

/-! ## A058501.P7738684558381680710

`p?[A014963(A336652(n+1))+n+1]`
-/

namespace A058501.P7738684558381680710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A336652 (n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058501.P7738684558381680710

namespace A058501

/-- `p?[A014963(A336652(n+1))+n+1]` -/
def P7738684558381680710.Spec : Prop :=
  ∀ n, P7738684558381680710.a n = A058501 (n + 1)

end A058501

/-!
# A058507: McKay-Thompson series of class 14c for Monster.

The programs for A058507, there is no canonical definition to state claims against.
-/

/-! ## A058507.P4232147580121441682

`∑[A064295(3*n+2)-A289436(n+2)]`
-/

namespace A058507.P4232147580121441682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064295 (3 * n + 2) - A289436 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058507.P4232147580121441682

/-!
# A058514: McKay-Thompson series of class 16A for Monster.

The programs for A058514, there is no canonical definition to state claims against.
-/

/-! ## A058514.P3050901185960324536

`A073188(A055427(n))-A005251(n)`
-/

namespace A058514.P3050901185960324536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A055427 n).toNat - A005251 n

end

end A058514.P3050901185960324536

/-! ## A058514.P4740100038865110178

`A053270(3*n+1)-A291761(A068664(n+1))`
-/

namespace A058514.P4740100038865110178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053270 (3 * n + 1) - A291761 (A068664 (n + 1)).toNat

end

end A058514.P4740100038865110178

/-! ## A058514.P1769024102104111194

`A288521(A000041(2*n+1)^A114717(2*n+1))`
-/

namespace A058514.P1769024102104111194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288521 (SequenceMachineLib.roundAway ((A000041 (2 * n + 1) : ℚ) ^ (A114717 (2 * n + 1) : ℤ))).toNat

end

end A058514.P1769024102104111194

/-!
# A058515: GCD of totients of consecutive integers.

The programs for A058515, the canonical program `A058515.P4885720504449838139` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058515 has offset 1).

The definition of A058515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058515.P12923362852687725668

`A083542(n+1)/A066813(n+1)`
-/

namespace A058515.P12923362852687725668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083542 (n + 1) : ℚ) / (A066813 (n + 1) : ℚ)

end

end A058515.P12923362852687725668

namespace A058515

/-- `A083542(n+1)/A066813(n+1)` -/
def P12923362852687725668.Spec : Prop :=
  ∀ n, P12923362852687725668.a n = (A058515 (n + 1) : ℚ)

end A058515

/-! ## A058515.P4885720504449838139

`gcd(Δ[A002088(n)], A000010(n+2))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A058515

/-- `gcd(Δ[A002088(n)], A000010(n+2))` -/
def P4885720504449838139.Spec : Prop :=
  ∀ n, (P4885720504449838139.a n : ℤ) = A058515 (n + 1)

theorem P4885720504449838139.correct : P4885720504449838139.Spec := by
  intro n
  simp only [A058515, Nat.add_sub_cancel]

end A058515

/-! ## A058515.P1421050715969365356

`gcd(A000010(n+1), A057000(n+1))`
-/

namespace A058515.P1421050715969365356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A057000 (n + 1))

end

end A058515.P1421050715969365356

namespace A058515

/-- `gcd(A000010(n+1), A057000(n+1))` -/
def P1421050715969365356.Spec : Prop :=
  ∀ n, (P1421050715969365356.a n : ℤ) = A058515 (n + 1)

end A058515

/-! ## A058515.P17949880378595057148

`gcd(A066813(n+1), A092404(n+1))`
-/

namespace A058515.P17949880378595057148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066813 (n + 1)) (A092404 (n + 1))

end

end A058515.P17949880378595057148

namespace A058515

/-- `gcd(A066813(n+1), A092404(n+1))` -/
def P17949880378595057148.Spec : Prop :=
  ∀ n, (P17949880378595057148.a n : ℤ) = A058515 (n + 1)

end A058515

/-! ## A058515.P13894262625121573023

`gcd(A109606(n+1)+1, Δ[A000010(n+1)])`
-/

namespace A058515.P13894262625121573023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109606 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A058515.P13894262625121573023

namespace A058515

/-- `gcd(A109606(n+1)+1, Δ[A000010(n+1)])` -/
def P13894262625121573023.Spec : Prop :=
  ∀ n, (P13894262625121573023.a n : ℤ) = A058515 (n + 1)

end A058515

/-! ## A058515.P2507301254715086491

`gcd(1-A051953(n+1)+n, Δ[A005728(n+1)])`
-/

namespace A058515.P2507301254715086491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A051953 (n + 1) + (n : ℤ)) (f1 (n + 1) - f1 n)

end

end A058515.P2507301254715086491

namespace A058515

/-- `gcd(1-A051953(n+1)+n, Δ[A005728(n+1)])` -/
def P2507301254715086491.Spec : Prop :=
  ∀ n, (P2507301254715086491.a n : ℤ) = A058515 (n + 1)

end A058515

/-! ## A058515.P6325311779377670359

`A000010(n+1)/A066813(n+1)*A000010(n+2)`
-/

namespace A058515.P6325311779377670359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A066813 (n + 1) : ℚ) * (A000010 (n + 2) : ℚ)

end

end A058515.P6325311779377670359

namespace A058515

/-- `A000010(n+1)/A066813(n+1)*A000010(n+2)` -/
def P6325311779377670359.Spec : Prop :=
  ∀ n, P6325311779377670359.a n = (A058515 (n + 1) : ℚ)

end A058515

/-! ## A058515.P10364396982580008311

`sqrt(gcd(A127473(n+1), A127473(n+2)))`
-/

namespace A058515.P10364396982580008311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A127473 (n + 1)) (A127473 (n + 2)) : ℝ)

end

end A058515.P10364396982580008311

namespace A058515

/-- `sqrt(gcd(A127473(n+1), A127473(n+2)))` -/
def P10364396982580008311.Spec : Prop :=
  ∀ n, P10364396982580008311.a n = (A058515 (n + 1) : ℝ)

end A058515

/-! ## A058515.P13667220471631622726

`gcd(1-A039649(n+1), Δ[A039649(n+1)])`
-/

namespace A058515.P13667220471631622726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A039649 (n + 1)) (f1 (n + 1) - f1 n)

end

end A058515.P13667220471631622726

namespace A058515

/-- `gcd(1-A039649(n+1), Δ[A039649(n+1)])` -/
def P13667220471631622726.Spec : Prop :=
  ∀ n, (P13667220471631622726.a n : ℤ) = A058515 (n + 1)

end A058515

/-! ## A058515.P1883631509531707941

`gcd(n-A219428(n+1), Δ[n-A219428(n+1)])`
-/

namespace A058515.P1883631509531707941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A219428 (n + 1)) (f1 (n + 1) - f1 n)

end

end A058515.P1883631509531707941

namespace A058515

/-- `gcd(n-A219428(n+1), Δ[n-A219428(n+1)])` -/
def P1883631509531707941.Spec : Prop :=
  ∀ n, (P1883631509531707941.a n : ℤ) = A058515 (n + 1)

end A058515

/-! ## A058515.P3231318382192277644

`gcd(Δ[A067541(2*n+1)], A067541(2*n+1))`
-/

namespace A058515.P3231318382192277644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A067541 (2 * n + 1))

end

end A058515.P3231318382192277644

namespace A058515

/-- `gcd(Δ[A067541(2*n+1)], A067541(2*n+1))` -/
def P3231318382192277644.Spec : Prop :=
  ∀ n, (P3231318382192277644.a n : ℤ) = A058515 (n + 1)

end A058515

/-! ## A058515.P11264599289243881261

`gcd(A000010(n+1), Δ[A049633(n)])`
-/

namespace A058515.P11264599289243881261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (f1 (n + 1) - f1 n)

end

end A058515.P11264599289243881261

namespace A058515

/-- `gcd(A000010(n+1), Δ[A049633(n)])` -/
def P11264599289243881261.Spec : Prop :=
  ∀ n, (P11264599289243881261.a n : ℤ) = A058515 (n + 1)

end A058515

/-! ## A058515.P10197853483225006775

`gcd(Δ[A089929(2*(n+1))], A089929(2*(n+1)))`
-/

namespace A058515.P10197853483225006775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A089929 (2 * (n + 1)))

end

end A058515.P10197853483225006775

namespace A058515

/-- `gcd(Δ[A089929(2*(n+1))], A089929(2*(n+1)))` -/
def P10197853483225006775.Spec : Prop :=
  ∀ n, (P10197853483225006775.a n : ℤ) = A058515 (n + 1)

end A058515

/-! ## A058515.P14742568702743149038

`gcd(A054523(A000124(n)), A057000(n+1))`
-/

namespace A058515.P14742568702743149038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054523 (A000124 n).toNat) (A057000 (n + 1))

end

end A058515.P14742568702743149038

namespace A058515

/-- `gcd(A054523(A000124(n)), A057000(n+1))` -/
def P14742568702743149038.Spec : Prop :=
  ∀ n, (P14742568702743149038.a n : ℤ) = A058515 (n + 1)

end A058515

/-!
# A058517: Positive even numbers not of the form prime + 3^x.

The programs for A058517, there is no canonical definition to state claims against.
-/

/-! ## A058517.P11785461291471068332

`2*A350958(n+1)`
-/

namespace A058517.P11785461291471068332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350958 (n + 1)

end

end A058517.P11785461291471068332

/-! ## A058517.P1506474724420198734

`6*A350958(-xor(n, -1))/3`
-/

namespace A058517.P1506474724420198734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A350958 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 3)

end

end A058517.P1506474724420198734

/-! ## A058517.P1087206092273083751

`A004277(A350958(n+1))`
-/

namespace A058517.P1087206092273083751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A350958 (n + 1)).toNat

end

end A058517.P1087206092273083751

/-! ## A058517.P8501991311366034494

`A004275(A350958(n+1)+1)`
-/

namespace A058517.P8501991311366034494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A350958 (n + 1) + 1).toNat

end

end A058517.P8501991311366034494

/-! ## A058517.P12829274864291851994

`A005843(A350958(n-log2(1/2)))`
-/

namespace A058517.P12829274864291851994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A350958 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A058517.P12829274864291851994

/-! ## A058517.P16992339955021182748

`A004273(A350958(n+1)+1)-1`
-/

namespace A058517.P16992339955021182748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A350958 (n + 1) + 1).toNat - 1

end

end A058517.P16992339955021182748

/-! ## A058517.P7943354029900529168

`∩[A239321(n+1), A350629(n+1)]`
-/

namespace A058517.P7943354029900529168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058517.P7943354029900529168

/-! ## A058517.P15810586572582076091

`∏{d}[A005843(A350958(n+1)), A014963(#)]`
-/

namespace A058517.P15810586572582076091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A350958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A058517.P15810586572582076091

/-! ## A058517.P1499744355187324773

`A005843(A350958(n+1))%A000032(n+8)`
-/

namespace A058517.P1499744355187324773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A350958 (n + 1)).toNat) (A000032 (n + 8))

end

end A058517.P1499744355187324773

/-! ## A058517.P15955658657686787776

`∩[A125212(n+1), A350629(n+1)]`
-/

namespace A058517.P15955658657686787776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058517.P15955658657686787776

/-! ## A058517.P2973837067061264725

`A004273(A350958(n+1))+A007318(∑[n])`
-/

namespace A058517.P2973837067061264725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A350958 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058517.P2973837067061264725

/-!
# A058518: Number of forests of B-trees of order 3 with n labeled leaves.

The programs for A058518, there is no canonical definition to state claims against.
-/

/-! ## A058518.P14231402203452837731

`A122921(A193649(n)+A047080(n))`
-/

namespace A058518.P14231402203452837731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A193649 n + A047080 n).toNat

end

end A058518.P14231402203452837731

/-! ## A058518.P4798791043827783243

`A122921(A193649(n)+A073202(n))`
-/

namespace A058518.P4798791043827783243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A193649 n + A073202 n).toNat

end

end A058518.P4798791043827783243

/-! ## A058518.P2702749255832491762

`A122921(A193649(n)+A122921(n))`
-/

namespace A058518.P2702749255832491762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A193649 n + A122921 n).toNat

end

end A058518.P2702749255832491762

/-! ## A058518.P9314876319726361169

`floor(root(A003433(2*n+1), 9))`
-/

namespace A058518.P9314876319726361169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003433 (2 * n + 1) : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A058518.P9314876319726361169

/-! ## A058518.P10111316887988409522

`round(sqrt(ceil(A340314(n+1)/5)))`
-/

namespace A058518.P10111316887988409522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (⌈(A340314 (n + 1) : ℚ) / 5⌉ : ℝ))

end

end A058518.P10111316887988409522

/-!
# A058519: Number of directed cycles of B-trees of order 3 with n labeled leaves.

The programs for A058519, there is no canonical definition to state claims against.
-/

/-! ## A058519.P10476267452790503096

`floor(sqrt(n*A293994(n)))`
-/

namespace A058519.P10476267452790503096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n : ℤ) * A293994 n)

end

end A058519.P10476267452790503096

/-! ## A058519.P14153939695742517790

`A113220(A196118(n))`
-/

namespace A058519.P14153939695742517790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (A196118 n).toNat

end

end A058519.P14153939695742517790

/-! ## A058519.P11072979040066886377

`A347578(A245989(n))`
-/

namespace A058519.P11072979040066886377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A245989 n).toNat

end

end A058519.P11072979040066886377

/-! ## A058519.P15116834072434713098

`A113220(∑[A004111(n)])`
-/

namespace A058519.P15116834072434713098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058519.P15116834072434713098

/-! ## A058519.P18402289791470222291

`A305025(A100071(n+1))`
-/

namespace A058519.P18402289791470222291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305025 (A100071 (n + 1)).toNat

end

end A058519.P18402289791470222291

/-!
# A058520: Sequences of B-trees of order 3 with n labeled leaves.

The programs for A058520, there is no canonical definition to state claims against.
-/

/-! ## A058520.P15083099621560862209

`A054404(A131403(n)+A000196(n+1))`
-/

namespace A058520.P15083099621560862209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A131403 n + A000196 (n + 1)).toNat

end

end A058520.P15083099621560862209

/-! ## A058520.P17246279550548132255

`A054404(A131403(n)+A062300(n+1))`
-/

namespace A058520.P17246279550548132255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A131403 n + A062300 (n + 1)).toNat

end

end A058520.P17246279550548132255

/-! ## A058520.P10666901573026167127

`A054404(A243284(n+1)+A131403(n))`
-/

namespace A058520.P10666901573026167127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A243284 (n + 1) + A131403 n).toNat

end

end A058520.P10666901573026167127

/-! ## A058520.P4519592370975813836

`A054404(A131403(n)+A054404(n+2))`
-/

namespace A058520.P4519592370975813836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A131403 n + A054404 (n + 2)).toNat

end

end A058520.P4519592370975813836

/-! ## A058520.P18313663368155212721

`A172471(A149062(n))`
-/

namespace A058520.P18313663368155212721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A149062 n).toNat

end

end A058520.P18313663368155212721

/-!
# A058521: B-trees of order 5 with n labeled leaves.

The programs for A058521, there is no canonical definition to state claims against.
-/

/-! ## A058521.P521173087990924989

`A000194(A086880(n))`
-/

namespace A058521.P521173087990924989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A086880 n).toNat

end

end A058521.P521173087990924989

/-! ## A058521.P15504654164239469623

`A003059(A170941(n))`
-/

namespace A058521.P15504654164239469623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A170941 n).toNat

end

end A058521.P15504654164239469623

/-! ## A058521.P5016836831161994537

`A137734(A214198(n)+1)`
-/

namespace A058521.P5016836831161994537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A214198 n + 1).toNat

end

end A058521.P5016836831161994537

/-! ## A058521.P9739673767534976580

`A088141(A384630(n+1))`
-/

namespace A058521.P9739673767534976580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A384630 (n + 1)).toNat

end

end A058521.P9739673767534976580

/-! ## A058521.P7877428187404693559

`A322901(A188624(n+1))`
-/

namespace A058521.P7877428187404693559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (A188624 (n + 1)).toNat

end

end A058521.P7877428187404693559

/-!
# A058522: a(1) = a(2) = 1; a(n+2) = a(n+1) + a(n+1)^a(n).

The programs for A058522, there is no canonical definition to state claims against.
-/

/-! ## A058522.P12433214253238877309

`a(n-1)+a(n-1)^a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A058522.P12433214253238877309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 1) ^ a (n - 2)

end

end A058522.P12433214253238877309

/-!
# A058523: a(1) = a(2) = 1; a(n+2) = a(n+1) + a(n)^a(n+1).

The programs for A058523, there is no canonical definition to state claims against.
-/

/-! ## A058523.P16281077557194639973

`a(n-1)+(n-2)^a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A058523.P16281077557194639973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + ((n : ℤ) - 2 : ℝ) ^ (a (n - 1))

end

end A058523.P16281077557194639973

/-!
# A058526: McKay-Thompson series of class 16e for the Monster group.

The programs for A058526, there is no canonical definition to state claims against.
-/

/-! ## A058526.P231396087195661939

`A033999(n)*A112153(n)`
-/

namespace A058526.P231396087195661939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112153 n

end

end A058526.P231396087195661939

/-! ## A058526.P6924460166111123938

`A057077(n)*A112154(n)`
-/

namespace A058526.P6924460166111123938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112154 n

end

end A058526.P6924460166111123938

/-! ## A058526.P13046948516082219744

`A087960(n)*A112155(n)`
-/

namespace A058526.P13046948516082219744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112155 n

end

end A058526.P13046948516082219744

/-! ## A058526.P9240873188487539304

`A057077(n+1)*A112155(n)`
-/

namespace A058526.P9240873188487539304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112155 n

end

end A058526.P9240873188487539304

/-! ## A058526.P12422144032684576302

`A057077(2*n)*A112153(n)`
-/

namespace A058526.P12422144032684576302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A112153 n

end

end A058526.P12422144032684576302

/-! ## A058526.P18338560067525288128

`A087960(2*n)*A112153(n)`
-/

namespace A058526.P18338560067525288128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A112153 n

end

end A058526.P18338560067525288128

/-! ## A058526.P2460430686393825908

`A010892(3*n)*A112153(n)`
-/

namespace A058526.P2460430686393825908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A112153 n

end

end A058526.P2460430686393825908

/-! ## A058526.P15713249214443387907

`(n+1)/Δ[A001057(n)]*A112153(n)`
-/

namespace A058526.P15713249214443387907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ) * (A112153 n : ℚ)

end

end A058526.P15713249214443387907

/-! ## A058526.P7240007375055403050

`A112153(n)/A057077(A057077(n)+n)`
-/

namespace A058526.P7240007375055403050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112153 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A058526.P7240007375055403050

/-! ## A058526.P8744758226898668161

`A022601(n)/A112150(n)*A112153(n)`
-/

namespace A058526.P8744758226898668161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022601 n : ℚ) / (A112150 n : ℚ) * (A112153 n : ℚ)

end

end A058526.P8744758226898668161

/-! ## A058526.P10992152328995022775

`A058088(n)/A112145(n)*A112153(n)`
-/

namespace A058526.P10992152328995022775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058088 n : ℚ) / (A112145 n : ℚ) * (A112153 n : ℚ)

end

end A058526.P10992152328995022775

/-! ## A058526.P5535477971419653170

`A112153(n)/A087960(n²)`
-/

namespace A058526.P5535477971419653170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112153 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A058526.P5535477971419653170

/-!
# A058527: Number of 2n X 2n 0-1 matrices with n ones in each row and each column.

The programs for A058527, there is no canonical definition to state claims against.
-/

/-! ## A058527.P5349183539451715840

`A008300(∑[4*n])`
-/

namespace A058527.P5349183539451715840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008300 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058527.P5349183539451715840

/-!
# A058528: Number of n X n (0,1) matrices with all column and row sums equal to 4.

The programs for A058528, there is no canonical definition to state claims against.
-/

/-! ## A058528.P12441996870669093558

`(5*a(n-1))!` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A058528.P12441996870669093558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  Nat.factorial (5 * a (n - 1))

end

end A058528.P12441996870669093558

/-!
# A058529: Numbers whose prime factors are all congruent to +1 or -1 modulo 8.

The programs for A058529, there is no canonical definition to state claims against.
-/

/-! ## A058529.P6426663321720605246

`A253408(n+2)`
-/

namespace A058529.P6426663321720605246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 2)

end

end A058529.P6426663321720605246

/-! ## A058529.P5884302342241010283

`record[A000265(A057126(n+1))]`
-/

namespace A058529.P5884302342241010283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A057126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058529.P5884302342241010283

/-! ## A058529.P11436830016442951742

`filter[A057126(n+1), A187074(#)]`
-/

namespace A058529.P11436830016442951742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A058529.P11436830016442951742

/-! ## A058529.P3622008486144377119

`filter[A057126(n+1), A322980(#)]`
-/

namespace A058529.P3622008486144377119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A058529.P3622008486144377119

/-! ## A058529.P15506190653040589668

`filter[A057126(n+1), A372573(#)]`
-/

namespace A058529.P15506190653040589668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A058529.P15506190653040589668

/-! ## A058529.P236647139949979106

`filter[A057126(n+1), A372574(#)]`
-/

namespace A058529.P236647139949979106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A058529.P236647139949979106

/-! ## A058529.P15051566804376545796

`filter[A057126(n+1), A373136(#)]`
-/

namespace A058529.P15051566804376545796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A058529.P15051566804376545796

/-! ## A058529.P11710020383191543405

`filter[A057126(n+1), A093719(#)]`
-/

namespace A058529.P11710020383191543405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A058529.P11710020383191543405

/-! ## A058529.P13172280746121700625

`filter[A057126(n+1), A152822(#)]`
-/

namespace A058529.P13172280746121700625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A058529.P13172280746121700625

/-! ## A058529.P394804940154564645

`filter[A057126(n+1), A162289(#)]`
-/

namespace A058529.P394804940154564645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A058529.P394804940154564645

/-! ## A058529.P16129669306010270798

`filter[A057126(n+1), A320106(#)]`
-/

namespace A058529.P16129669306010270798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A058529.P16129669306010270798

/-! ## A058529.P12398194472225617545

`filter[A057126(n+1), A354354(#)]`
-/

namespace A058529.P12398194472225617545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A058529.P12398194472225617545

/-! ## A058529.P4644218307965504227

`filter[A057126(n+1), A035263(#)]`
-/

namespace A058529.P4644218307965504227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A058529.P4644218307965504227

/-! ## A058529.P10963623036866485064

`∩[A047522(n+1), A057126(n+1)]`
-/

namespace A058529.P10963623036866485064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058529.P10963623036866485064

/-! ## A058529.P6011671238327891300

`∩[A007775(n+1), A057126(n+1)]`
-/

namespace A058529.P6011671238327891300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058529.P6011671238327891300

/-! ## A058529.P13205291745294230425

`∩[A057126(n+1), A070191(n+1)]`
-/

namespace A058529.P13205291745294230425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058529.P13205291745294230425

/-! ## A058529.P17971995715652381268

`∩[A007310(n+1), A057126(n+1)]`
-/

namespace A058529.P17971995715652381268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058529.P17971995715652381268

/-! ## A058529.P12915712254254821360

`∩[A047478(n+1), A057126(n+1)]`
-/

namespace A058529.P12915712254254821360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058529.P12915712254254821360

/-! ## A058529.P6888601597523019608

`∩[A047523(n+1), A057126(n+1)]`
-/

namespace A058529.P6888601597523019608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058529.P6888601597523019608

/-! ## A058529.P3188008679666799628

`∩[A047529(n+1), A057126(n+1)]`
-/

namespace A058529.P3188008679666799628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058529.P3188008679666799628

/-!
# A058534: A 3-way generalization of series-parallel networks with n unlabeled edges.

The programs for A058534, there is no canonical definition to state claims against.
-/

/-! ## A058534.P3636560974232404967

`A008585(A292216(n))%A343472(3*n)`
-/

namespace A058534.P3636560974232404967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A292216 n).toNat) (A343472 (3 * n))

end

end A058534.P3636560974232404967

/-! ## A058534.P168068168062807292

`A111248(3^n)`
-/

namespace A058534.P168068168062807292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111248 (3 ^ n)

end

end A058534.P168068168062807292

/-! ## A058534.P797167357946308183

`record[A111248(A152714(n))]`
-/

namespace A058534.P797167357946308183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111248 (A152714 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058534.P797167357946308183

/-! ## A058534.P15303977941209163314

`record[A111248(A165824(n+1))]`
-/

namespace A058534.P15303977941209163314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111248 (A165824 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058534.P15303977941209163314

/-! ## A058534.P6511587763136844843

`A111248(A000244(n))%A000244(n)`
-/

namespace A058534.P6511587763136844843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111248 (A000244 n).toNat) (A000244 n)

end

end A058534.P6511587763136844843

/-!
# A058538: McKay-Thompson series of class 18c for Monster.

The programs for A058538, there is no canonical definition to state claims against.
-/

/-! ## A058538.P1075585903326435049

`A007262(n)/A131713(n)`
-/

namespace A058538.P1075585903326435049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007262 n : ℚ) / (A131713 n : ℚ)

end

end A058538.P1075585903326435049

/-! ## A058538.P2744462673667750732

`A132107(n)/A057079(n)`
-/

namespace A058538.P2744462673667750732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132107 n : ℚ) / (A057079 n : ℚ)

end

end A058538.P2744462673667750732

/-! ## A058538.P14291646820170120312

`abs(A007262(n)/A131534(n))`
-/

namespace A058538.P14291646820170120312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A007262 n : ℚ) / (A131534 n : ℚ)|

end

end A058538.P14291646820170120312

/-! ## A058538.P14905504458193098922

`A132107(n)/∑[A100051(n)]`
-/

namespace A058538.P14905504458193098922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132107 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A058538.P14905504458193098922

/-! ## A058538.P3871939855688718333

`A007262(n)/A101675(2*n)`
-/

namespace A058538.P3871939855688718333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007262 n : ℚ) / (A101675 (2 * n) : ℚ)

end

end A058538.P3871939855688718333

/-! ## A058538.P5208212424379493433

`A007262(n)/A089812(A000217(n))`
-/

namespace A058538.P5208212424379493433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007262 n : ℚ) / (A089812 (A000217 n).toNat : ℚ)

end

end A058538.P5208212424379493433

/-!
# A058540: Another 3-way generalization of series-parallel networks with n unlabeled edges.

The programs for A058540, there is no canonical definition to state claims against.
-/

/-! ## A058540.P14061058553605365995

`A008486(A058371(n))-floor(acot(n))`
-/

namespace A058540.P14061058553605365995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A058371 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A058540.P14061058553605365995

/-! ## A058540.P8118849168054018639

`A008486(A058371(n))-A000007(n)`
-/

namespace A058540.P8118849168054018639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A058371 n).toNat - A000007 n

end

end A058540.P8118849168054018639

/-! ## A058540.P15258513197046547173

`A008486(A058371(n))-A058348(n)`
-/

namespace A058540.P15258513197046547173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A058371 n).toNat - A058348 n

end

end A058540.P15258513197046547173

/-! ## A058540.P1129946981475292638

`A008486(A058371(n))-A321447(n)`
-/

namespace A058540.P1129946981475292638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A058371 n).toNat - A321447 n

end

end A058540.P1129946981475292638

/-! ## A058540.P11975903953604897170

`A008486(A058371(n))%A000165(n)`
-/

namespace A058540.P11975903953604897170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A058371 n).toNat) (A000165 n)

end

end A058540.P11975903953604897170

/-!
# A058541: Trajectory of 1 under map that sends x to 3x - sigma(x).

The programs for A058541, the canonical program `A058541.P10676030891438900090` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058541 has offset 0).

The definition of A058541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058541.P10676030891438900090

`A033885(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058541

/-- `A033885(a(n-1))` -/
def P10676030891438900090.Spec : Prop :=
  ∀ n, P10676030891438900090.a n = A058541 n

theorem P10676030891438900090.correct : P10676030891438900090.Spec := by
  intro n
  simp only [A058541]

end A058541

/-!
# A058543: McKay-Thompson series of class 18e for the Monster group.

The programs for A058543, there is no canonical definition to state claims against.
-/

/-! ## A058543.P7844961185448545390

`A033999(n)*A112173(n)`
-/

namespace A058543.P7844961185448545390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112173 n

end

end A058543.P7844961185448545390

/-! ## A058543.P11319343729051732790

`(A004442(n)-n)*A112173(n)`
-/

namespace A058543.P11319343729051732790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A112173 n

end

end A058543.P11319343729051732790

/-! ## A058543.P1966797519379706095

`(1-2*A000035(n))*A112173(n)`
-/

namespace A058543.P1966797519379706095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A112173 n

end

end A058543.P1966797519379706095

/-! ## A058543.P6163123328278058237

`A112173(n)*A309873(A266303(n))`
-/

namespace A058543.P6163123328278058237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112173 n * A309873 (A266303 n).toNat

end

end A058543.P6163123328278058237

/-!
# A058544: McKay-Thompson series of class 18f for the Monster group.

The programs for A058544, there is no canonical definition to state claims against.
-/

/-! ## A058544.P2009346307472816391

`A049347(n)*A112156(n)`
-/

namespace A058544.P2009346307472816391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112156 n

end

end A058544.P2009346307472816391

/-! ## A058544.P1025776975509414529

`A112156(n)*A257075(n)`
-/

namespace A058544.P1025776975509414529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112156 n * A257075 n

end

end A058544.P1025776975509414529

/-! ## A058544.P13579072867330355302

`Δ[A062756(n)]*A112156(n)`
-/

namespace A058544.P13579072867330355302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112156 n

end

end A058544.P13579072867330355302

/-! ## A058544.P12463846890356216372

`A112156(n)*A343785(n+1)`
-/

namespace A058544.P12463846890356216372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112156 n * A343785 (n + 1)

end

end A058544.P12463846890356216372

/-! ## A058544.P12329702717540291940

`(A061800(n)-n)*A112156(n)`
-/

namespace A058544.P12329702717540291940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061800 n - (n : ℤ)) * A112156 n

end

end A058544.P12329702717540291940

/-! ## A058544.P17119495852102941497

`Δ[A289813(n)]*A112156(n)`
-/

namespace A058544.P17119495852102941497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112156 n

end

end A058544.P17119495852102941497

/-! ## A058544.P15872482032286878718

`A112156(n)*A279907(A167614(n+1))`
-/

namespace A058544.P15872482032286878718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112156 n * A279907 (A167614 (n + 1)).toNat

end

end A058544.P15872482032286878718

/-!
# A058545: Trajectory of 23 under map that sends x to 3x - sigma(x), where sigma(x) is the sum of the divisors of x.

The programs for A058545, there is no canonical definition to state claims against.
-/

/-! ## A058545.P17024447111266994662

`3*a(n-1)-A000203(a(n-1))` with `a(0)=23`
-/

namespace A058545.P17024447111266994662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [23] fun n a =>
  3 * a (n - 1) - A000203 (a (n - 1)).toNat

end

end A058545.P17024447111266994662

/-! ## A058545.P4672004299630545648

`A033879(a(n-1))+a(n-1)` with `a(0)=23`
-/

namespace A058545.P4672004299630545648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [23] fun n a =>
  A033879 (a (n - 1)).toNat + a (n - 1)

end

end A058545.P4672004299630545648

/-! ## A058545.P13624112934471631774

`A033885(a(n-1))` with `a(0)=23`
-/

namespace A058545.P13624112934471631774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [23] fun n a =>
  A033885 (a (n - 1)).toNat

end

end A058545.P13624112934471631774

/-!
# A058547: Lexicographical-support sequence T(n,k), n,k nonnegative: total number of checks required by a "lexicographical" algorithm to find out which rows and columns of each of the n by k zero-one matrices are nonzero.

The programs for A058547, there is no canonical definition to state claims against.
-/

/-! ## A058547.P10411463013092238545

`A122314(A058347(n))`
-/

namespace A058547.P10411463013092238545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122314 (A058347 n).toNat

end

end A058547.P10411463013092238545

/-!
# A058550: Eisenstein series E_14(q) (alternate convention E_7(q)).

The programs for A058550, there is no canonical definition to state claims against.
-/

/-! ## A058550.P18350117757967553285

`A282549(n)-n*A008411(n)`
-/

namespace A058550.P18350117757967553285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282549 n - (n : ℤ) * A008411 n

end

end A058550.P18350117757967553285

/-! ## A058550.P7097252542193018748

`A282549(n)-n*(2*A008691(n)-A008700(n))`
-/

namespace A058550.P7097252542193018748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282549 n - (n : ℤ) * (2 * A008691 n - A008700 n)

end

end A058550.P7097252542193018748

/-! ## A058550.P2083570113450258715

`A282549(n)-n*(A008693(n)+A008688(n))/2`
-/

namespace A058550.P2083570113450258715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282549 n : ℚ) - (n : ℚ) * ((A008693 n + A008688 n : ℚ) / 2)

end

end A058550.P2083570113450258715

/-! ## A058550.P2940474167242635291

`A282549(n)-n*(2*A008690(n)-A008693(n))`
-/

namespace A058550.P2940474167242635291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282549 n - (n : ℤ) * (2 * A008690 n - A008693 n)

end

end A058550.P2940474167242635291

/-! ## A058550.P6778281831123567918

`A282549(n)-n*(A008688(n)+A008704(n)-A008691(n))`
-/

namespace A058550.P6778281831123567918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282549 n - (n : ℤ) * (A008688 n + (A008704 n - A008691 n))

end

end A058550.P6778281831123567918

/-!
# A058552: Numerators of q-expansion of Eisenstein series E_16(q).

The programs for A058552, there is no canonical definition to state claims against.
-/

/-! ## A058552.P44545492815660088

`A029829(n)^abs(A057428(n))`
-/

namespace A058552.P44545492815660088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029829 n : ℚ) ^ (|A057428 n| : ℤ)

end

end A058552.P44545492815660088

/-! ## A058552.P17370257471490875848

`A029829(n)^A001222(A066169(n+1))`
-/

namespace A058552.P17370257471490875848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029829 n : ℚ) ^ (A001222 (A066169 (n + 1)).toNat : ℤ)

end

end A058552.P17370257471490875848

/-! ## A058552.P6956654247824186441

`gcd(A008683(A000143(n)), A029829(n))`
-/

namespace A058552.P6956654247824186441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A000143 n).toNat) (A029829 n)

end

end A058552.P6956654247824186441

/-! ## A058552.P6669298679806268492

`and(A029829(n), A033999(A001045(n)))`
-/

namespace A058552.P6669298679806268492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029829 n) (A033999 (A001045 n).toNat)

end

end A058552.P6669298679806268492

/-!
# A058553: McKay-Thompson series of class 20D for Monster.

The programs for A058553, there is no canonical definition to state claims against.
-/

/-! ## A058553.P1259842676326358952

`A033999(n)*A112179(n)`
-/

namespace A058553.P1259842676326358952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112179 n

end

end A058553.P1259842676326358952

/-! ## A058553.P7627569426673473304

`A062157(n+1)*A112179(n)`
-/

namespace A058553.P7627569426673473304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A112179 n

end

end A058553.P7627569426673473304

/-! ## A058553.P6900626617679321245

`(1-2*A000035(n))*A112179(n)`
-/

namespace A058553.P6900626617679321245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A112179 n

end

end A058553.P6900626617679321245

/-! ## A058553.P258153309373429048

`A010892(A008486(n))*A112179(n)`
-/

namespace A058553.P258153309373429048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n).toNat * A112179 n

end

end A058553.P258153309373429048

/-!
# A058559: McKay-Thompson series of class 20d for Monster.

The programs for A058559, there is no canonical definition to state claims against.
-/

/-! ## A058559.P12898625157606155749

`A033999(n)*A112180(n)`
-/

namespace A058559.P12898625157606155749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112180 n

end

end A058559.P12898625157606155749

/-!
# A058561: A 3-way generalization of series-parallel networks with n labeled edges.

The programs for A058561, there is no canonical definition to state claims against.
-/

/-! ## A058561.P1009073701727930815

`A000225(n)%4*A000311(n)`
-/

namespace A058561.P1009073701727930815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 n) 4 * A000311 n

end

end A058561.P1009073701727930815

/-! ## A058561.P7329016289931664410

`gcd(3, A001147(n))*A000311(n)`
-/

namespace A058561.P7329016289931664410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A001147 n) : ℤ) * A000311 n

end

end A058561.P7329016289931664410

/-! ## A058561.P5818537644432907219

`(3*A000311(n))%A006351(n+1)`
-/

namespace A058561.P5818537644432907219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A000311 n) (A006351 (n + 1))

end

end A058561.P5818537644432907219

/-! ## A058561.P5577139038566977427

`A000311(n)*A152714(A000124(n))`
-/

namespace A058561.P5577139038566977427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A152714 (A000124 n).toNat

end

end A058561.P5577139038566977427

/-! ## A058561.P5007373468497883358

`A000311(n)*A083953(A034694(n+1))`
-/

namespace A058561.P5007373468497883358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A083953 (A034694 (n + 1)).toNat

end

end A058561.P5007373468497883358

/-!
# A058562: Another 3-way generalization of series-parallel networks with n labeled edges.

The programs for A058562, there is no canonical definition to state claims against.
-/

/-! ## A058562.P13257738265436962952

`A004273(A161314(5*2^n))`
-/

namespace A058562.P13257738265436962952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A161314 (5 * 2 ^ n)).toNat

end

end A058562.P13257738265436962952

/-! ## A058562.P529328229037818044

`A008486(A058575(n))-floor(acot(n))`
-/

namespace A058562.P529328229037818044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A058575 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A058562.P529328229037818044

/-!
# A058571: McKay-Thompson series of class 24A for Monster.

The programs for A058571, there is no canonical definition to state claims against.
-/

/-! ## A058571.P12558616896434611384

`abs(A058492(n))`
-/

namespace A058571.P12558616896434611384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058492 n|

end

end A058571.P12558616896434611384

/-! ## A058571.P9593972883170866429

`A033999(n)*A058492(n)`
-/

namespace A058571.P9593972883170866429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058492 n

end

end A058571.P9593972883170866429

/-! ## A058571.P6560312873854654413

`gcd(A000038(n), A058492(n))`
-/

namespace A058571.P6560312873854654413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A058492 n)

end

end A058571.P6560312873854654413

/-! ## A058571.P15066694543547863772

`lcm(A020985(n), A058492(n))`
-/

namespace A058571.P15066694543547863772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A058492 n)

end

end A058571.P15066694543547863772

/-! ## A058571.P3424398950897620460

`A058490(n)/A156215(n)*A058492(n)`
-/

namespace A058571.P3424398950897620460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058490 n : ℚ) / (A156215 n : ℚ) * (A058492 n : ℚ)

end

end A058571.P3424398950897620460

/-!
# A058574: McKay-Thompson series of class 24D for the Monster group.

The programs for A058574, there is no canonical definition to state claims against.
-/

/-! ## A058574.P1874468192895605383

`(-1)^n*A112165(n)`
-/

namespace A058574.P1874468192895605383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112165 n

end

end A058574.P1874468192895605383

/-! ## A058574.P6534889161299453818

`(1-and(2, n))*A112187(n)`
-/

namespace A058574.P6534889161299453818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A112187 n

end

end A058574.P6534889161299453818

/-! ## A058574.P3155182365669088890

`A057077(n)*A112187(n)`
-/

namespace A058574.P3155182365669088890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A112187 n

end

end A058574.P3155182365669088890

/-! ## A058574.P15537532403788112730

`A087960(n)*A112186(n)`
-/

namespace A058574.P15537532403788112730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112186 n

end

end A058574.P15537532403788112730

/-! ## A058574.P14239230863880495040

`A112165(n)/A033999(n)`
-/

namespace A058574.P14239230863880495040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112165 n : ℚ) / (A033999 n : ℚ)

end

end A058574.P14239230863880495040

/-! ## A058574.P530380434452410235

`A112165(n)/A057077(A057077(n)+n)`
-/

namespace A058574.P530380434452410235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112165 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A058574.P530380434452410235

/-! ## A058574.P5566507534072527792

`A057077(n+1)*A112186(n)`
-/

namespace A058574.P5566507534072527792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A112186 n

end

end A058574.P5566507534072527792

/-! ## A058574.P6458523238362955314

`A112165(n)/A057077(2*n)`
-/

namespace A058574.P6458523238362955314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112165 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A058574.P6458523238362955314

/-! ## A058574.P14659967232499401026

`A112165(n)/A087960(2*n)`
-/

namespace A058574.P14659967232499401026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112165 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A058574.P14659967232499401026

/-!
# A058575: The sequence S defined in A058562.

The programs for A058575, there is no canonical definition to state claims against.
-/

/-! ## A058575.P7054522659255411742

`floor(A058562(n)/3)`
-/

namespace A058575.P7054522659255411742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058562 n : ℚ) / 3⌋

end

end A058575.P7054522659255411742

/-! ## A058575.P17608065167523320237

`A058562(n-char[1])/3`
-/

namespace A058575.P17608065167523320237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058562 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / 3

end

end A058575.P17608065167523320237

/-! ## A058575.P18430186508145397377

`round(A058562(n)/A122553(n))`
-/

namespace A058575.P18430186508145397377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058562 n : ℚ) / (A122553 n : ℚ))

end

end A058575.P18430186508145397377

/-! ## A058575.P15348535211814769088

`A058562(n)/3*A068519(n+1)%2`
-/

namespace A058575.P15348535211814769088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058562 n : ℚ) / 3 * (Int.tmod (A068519 (n + 1)) 2 : ℚ)

end

end A058575.P15348535211814769088

/-! ## A058575.P13858922029685342741

`A058562(n)%A234291(n)/3`
-/

namespace A058575.P13858922029685342741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A058562 n) (A234291 n) : ℚ) / 3

end

end A058575.P13858922029685342741

/-!
# A058576: McKay-Thompson series of class 24F for Monster.

The programs for A058576, there is no canonical definition to state claims against.
-/

/-! ## A058576.P4755517865358195606

`record[A058587(n)]`
-/

namespace A058576.P4755517865358195606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058576.P4755517865358195606

/-! ## A058576.P15206232306311370452

`record[A112163(n)]`
-/

namespace A058576.P15206232306311370452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058576.P15206232306311370452

/-! ## A058576.P6865941298729870903

`A058587(2*n)`
-/

namespace A058576.P6865941298729870903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058587 (2 * n)

end

end A058576.P6865941298729870903

/-! ## A058576.P2474311460248732031

`A112163(2*n)`
-/

namespace A058576.P2474311460248732031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112163 (2 * n)

end

end A058576.P2474311460248732031

/-! ## A058576.P68865560136917267

`A112163(n+n)%(2^(n+1))`
-/

namespace A058576.P68865560136917267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112163 (n + n)) (2 ^ (n + 1) : ℤ)

end

end A058576.P68865560136917267

/-!
# A058577: a(n) = floor(e^sqrt(n)).

The programs for A058577, the canonical program `A058577.P5908962439577352928` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058577 has offset 1).

The definition of A058577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(e^sqrt(n+1))` (program `A058577.P9921263134570827682`, by `A058577.P9921263134570827682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058577.P5908962439577352928

`floor(exp(sqrt(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058577

/-- `floor(exp(sqrt(n+1)))` -/
def P5908962439577352928.Spec : Prop :=
  ∀ n, P5908962439577352928.a n = A058577 (n + 1)

theorem P5908962439577352928.correct : P5908962439577352928.Spec := by
  intro n
  simp only [A058577, Nat.add_sub_cancel]

end A058577

/-! ## A058577.P9921263134570827682

`floor(e^sqrt(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058577.P9921263134570827682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ (Real.sqrt (n + 1 : ℝ))⌋

end

end A058577.P9921263134570827682

namespace A058577

/-- `floor(e^sqrt(n+1))` -/
def P9921263134570827682.Spec : Prop :=
  ∀ n, P9921263134570827682.a n = A058577 (n + 1)

theorem P9921263134570827682.correct : P9921263134570827682.Spec := by
  intro n
  simp only [A058577, Nat.add_sub_cancel, A058577.P9921263134570827682.a, A058577.P5908962439577352928.a, SequenceMachineLib.memo_apply]
  try simp

end A058577

/-! ## A058577.P3362710535012472737

`record[floor(exp(sqrt(abs(1-n))))]`
-/

namespace A058577.P3362710535012472737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.sqrt (|1 - (n : ℤ)| : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058577.P3362710535012472737

namespace A058577

/-- `record[floor(exp(sqrt(abs(1-n))))]` -/
def P3362710535012472737.Spec : Prop :=
  ∀ n, P3362710535012472737.a n = A058577 (n + 1)

end A058577

/-!
# A058578: McKay-Thompson series of class 24H for Monster.

The programs for A058578, there is no canonical definition to state claims against.
-/

/-! ## A058578.P9100559031605176329

`A053616(A006456(3*n))+A000070(n)`
-/

namespace A058578.P9100559031605176329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A006456 (3 * n)).toNat + A000070 n

end

end A058578.P9100559031605176329

/-! ## A058578.P2942772243152921471

`A003056(A162980(2*(n+1))+A029862(2*n))`
-/

namespace A058578.P2942772243152921471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A162980 (2 * (n + 1)) + A029862 (2 * n)).toNat

end

end A058578.P2942772243152921471

/-! ## A058578.P11875948125341073064

`A239497(2*(n+2))-A188014(A119766(2*(n+2)))`
-/

namespace A058578.P11875948125341073064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239497 (2 * (n + 2)) - A188014 (A119766 (2 * (n + 2))).toNat

end

end A058578.P11875948125341073064

/-! ## A058578.P15461730405754431967

`A137414(n)+A252649(A137414(n))-A252649(n+1)`
-/

namespace A058578.P15461730405754431967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137414 n + (A252649 (A137414 n).toNat - A252649 (n + 1))

end

end A058578.P15461730405754431967

/-! ## A058578.P10568578637494976673

`A182942(A000070(n)-A054893(n))`
-/

namespace A058578.P10568578637494976673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182942 (A000070 n - A054893 n).toNat

end

end A058578.P10568578637494976673

/-!
# A058580: a(n) is the least natural number m such that the fractional part of m*(2^0.5) is less than 2^(-n).

The programs for A058580, there is no canonical definition to state claims against.
-/

/-! ## A058580.P3713032319686828525

`A079496(A077168(n-A002266(n)))`
-/

namespace A058580.P3713032319686828525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (A077168 ((n : ℤ) - A002266 n).toNat).toNat

end

end A058580.P3713032319686828525

/-! ## A058580.P8929153034626978797

`A079496(A077168(n-A027868(n)))`
-/

namespace A058580.P8929153034626978797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (A077168 ((n : ℤ) - A027868 n).toNat).toNat

end

end A058580.P8929153034626978797

/-! ## A058580.P4390791491277256695

`A000265(A079496(∑[A236862(n)]))`
-/

namespace A058580.P4390791491277256695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A079496 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A058580.P4390791491277256695

/-! ## A058580.P126037475324684171

`A079496(A187829(n+1)-A002266(n))`
-/

namespace A058580.P126037475324684171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (A187829 (n + 1) - A002266 n).toNat

end

end A058580.P126037475324684171

/-! ## A058580.P11089843257312216542

`A079496(A187829(n+1)-A027868(n))`
-/

namespace A058580.P11089843257312216542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (A187829 (n + 1) - A027868 n).toNat

end

end A058580.P11089843257312216542

/-!
# A058581: a(n) = (4*n^2 + 2*n - 3)*(2*n - 1)*n/3.

The programs for A058581, the canonical program `A058581.P14296048010821876461` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058581 has offset 0).

The definition of A058581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n²+2*n-3)*(2*n-1)*n/3` (program `A058581.P2448845540034761837`, by `A058581.P2448845540034761837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058581.P2448845540034761837

`(4*n²+2*n-3)*(2*n-1)*n/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058581.P2448845540034761837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 2 + 2 * n : ℤ) - 3 : ℚ) * (((2 * n : ℤ) - 1 : ℚ) * ((n : ℚ) / 3))

end

end A058581.P2448845540034761837

namespace A058581

/-- `(4*n²+2*n-3)*(2*n-1)*n/3` -/
def P2448845540034761837.Spec : Prop :=
  ∀ n, P2448845540034761837.a n = (A058581 n : ℚ)

theorem P2448845540034761837.correct : P2448845540034761837.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A058581, Nat.add_sub_cancel, A058581.P2448845540034761837.a, A058581.P14296048010821876461.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A058581, Nat.add_sub_cancel, A058581.P2448845540034761837.a, A058581.P14296048010821876461.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058581

/-! ## A058581.P14296048010821876461

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=34, a(3)=195, a(4)=644`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058581

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14296048010821876461.Spec : Prop :=
  ∀ n, P14296048010821876461.a n = A058581 n

theorem P14296048010821876461.correct : P14296048010821876461.Spec := by
  intro n
  simp only [A058581]

end A058581

/-! ## A058581.P11080456219485160355

`16*C(n², 2)/3+n`
-/

namespace A058581.P11080456219485160355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  16 * ((Nat.choose (n ^ 2) 2 : ℚ) / 3) + (n : ℚ)

end

end A058581.P11080456219485160355

namespace A058581

/-- `16*C(n², 2)/3+n` -/
def P11080456219485160355.Spec : Prop :=
  ∀ n, P11080456219485160355.a n = (A058581 n : ℚ)

end A058581

/-! ## A058581.P435172813874068629

`8*∑[C(2*n, 3)]+n`
-/

namespace A058581.P435172813874068629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A058581.P435172813874068629

namespace A058581

/-- `8*∑[C(2*n, 3)]+n` -/
def P435172813874068629.Spec : Prop :=
  ∀ n, (P435172813874068629.a n : ℤ) = A058581 n

end A058581

/-! ## A058581.P18096368090502796356

`4*4*∑[∑[∑[a(n-1)+4]]]+n` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A058581.P18096368090502796356
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j)) + n

end

end A058581.P18096368090502796356

namespace A058581

/-- `4*4*∑[∑[∑[a(n-1)+4]]]+n` -/
def P18096368090502796356.Spec : Prop :=
  ∀ n, (P18096368090502796356.a n : ℤ) = A058581 n

end A058581

/-! ## A058581.P498114227980118610

`4*A072819(n)+n`
-/

namespace A058581.P498114227980118610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A072819 n + (n : ℤ)

end

end A058581.P498114227980118610

namespace A058581

/-- `4*A072819(n)+n` -/
def P498114227980118610.Spec : Prop :=
  ∀ n, P498114227980118610.a n = A058581 n

end A058581

/-! ## A058581.P12087769631040056596

`n-n*A136264(n)`
-/

namespace A058581.P12087769631040056596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * A136264 n

end

end A058581.P12087769631040056596

namespace A058581

/-- `n-n*A136264(n)` -/
def P12087769631040056596.Spec : Prop :=
  ∀ n, P12087769631040056596.a n = A058581 n

end A058581

/-! ## A058581.P12099753576649627098

`A000447(n)*A005843(n)-A000384(n)`
-/

namespace A058581.P12099753576649627098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n * A005843 n - A000384 n

end

end A058581.P12099753576649627098

namespace A058581

/-- `A000447(n)*A005843(n)-A000384(n)` -/
def P12099753576649627098.Spec : Prop :=
  ∀ n, P12099753576649627098.a n = A058581 n

end A058581

/-! ## A058581.P2776000773817374494

`A007290(n+1)*8*n+n`
-/

namespace A058581.P2776000773817374494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (n + 1) * (8 * n : ℤ) + (n : ℤ)

end

end A058581.P2776000773817374494

namespace A058581

/-- `A007290(n+1)*8*n+n` -/
def P2776000773817374494.Spec : Prop :=
  ∀ n, P2776000773817374494.a n = A058581 n

end A058581

/-! ## A058581.P7017992475527833805

`A008911(2*n)+n*(1-2*n)`
-/

namespace A058581.P7017992475527833805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (2 * n) + (n : ℤ) * (1 - (2 * n : ℤ))

end

end A058581.P7017992475527833805

namespace A058581

/-- `A008911(2*n)+n*(1-2*n)` -/
def P7017992475527833805.Spec : Prop :=
  ∀ n, P7017992475527833805.a n = A058581 n

end A058581

/-! ## A058581.P10976369677410067172

`A329523(2*n)-A000217(2*n)`
-/

namespace A058581.P10976369677410067172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 (2 * n) - A000217 (2 * n)

end

end A058581.P10976369677410067172

namespace A058581

/-- `A329523(2*n)-A000217(2*n)` -/
def P10976369677410067172.Spec : Prop :=
  ∀ n, P10976369677410067172.a n = A058581 n

end A058581

/-! ## A058581.P15642331141197275438

`A326278(2*n)`
-/

namespace A058581.P15642331141197275438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326278 (2 * n)

end

end A058581.P15642331141197275438

namespace A058581

/-- `A326278(2*n)` -/
def P15642331141197275438.Spec : Prop :=
  ∀ n, P15642331141197275438.a n = A058581 n

end A058581

/-! ## A058581.P3400488374416656451

`A257055(2*n)-(2*n)²`
-/

namespace A058581.P3400488374416656451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 (2 * n) - ((2 * n) ^ 2 : ℤ)

end

end A058581.P3400488374416656451

namespace A058581

/-- `A257055(2*n)-(2*n)²` -/
def P3400488374416656451.Spec : Prop :=
  ∀ n, P3400488374416656451.a n = A058581 n

end A058581

/-! ## A058581.P3986856210225579165

`A007290(2*n)+A006325(2*n)`
-/

namespace A058581.P3986856210225579165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (2 * n) + A006325 (2 * n)

end

end A058581.P3986856210225579165

namespace A058581

/-- `A007290(2*n)+A006325(2*n)` -/
def P3986856210225579165.Spec : Prop :=
  ∀ n, P3986856210225579165.a n = A058581 n

end A058581

/-! ## A058581.P613617376834841535

`A117662(2*n)+A002415(2*n)`
-/

namespace A058581.P613617376834841535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 (2 * n) + A002415 (2 * n)

end

end A058581.P613617376834841535

namespace A058581

/-- `A117662(2*n)+A002415(2*n)` -/
def P613617376834841535.Spec : Prop :=
  ∀ n, P613617376834841535.a n = A058581 n

end A058581

/-! ## A058581.P6529234537242091975

`A326247(2*n)+A034827(2*n)`
-/

namespace A058581.P6529234537242091975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326247 (2 * n) + A034827 (2 * n)

end

end A058581.P6529234537242091975

namespace A058581

/-- `A326247(2*n)+A034827(2*n)` -/
def P6529234537242091975.Spec : Prop :=
  ∀ n, P6529234537242091975.a n = A058581 n

end A058581

/-! ## A058581.P12874936477530087988

`A006528(2*n)-A006008(2*n)`
-/

namespace A058581.P12874936477530087988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 (2 * n) - A006008 (2 * n)

end

end A058581.P12874936477530087988

namespace A058581

/-- `A006528(2*n)-A006008(2*n)` -/
def P12874936477530087988.Spec : Prop :=
  ∀ n, P12874936477530087988.a n = A058581 n

end A058581

/-! ## A058581.P1799666560069696379

`A071245(2*n)-A103290(2*n)`
-/

namespace A058581.P1799666560069696379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071245 (2 * n) - A103290 (2 * n)

end

end A058581.P1799666560069696379

namespace A058581

/-- `A071245(2*n)-A103290(2*n)` -/
def P1799666560069696379.Spec : Prop :=
  ∀ n, P1799666560069696379.a n = A058581 n

end A058581

/-! ## A058581.P2944379120401447442

`A239352(2*n)-A117662(2*n)`
-/

namespace A058581.P2944379120401447442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239352 (2 * n) - A117662 (2 * n)

end

end A058581.P2944379120401447442

namespace A058581

/-- `A239352(2*n)-A117662(2*n)` -/
def P2944379120401447442.Spec : Prop :=
  ∀ n, P2944379120401447442.a n = A058581 n

end A058581

/-! ## A058581.P17060097178537622963

`∑[A273316(2*n)]-A273316(2*n)`
-/

namespace A058581.P17060097178537622963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273316 (2 * n)

end

end A058581.P17060097178537622963

namespace A058581

/-- `∑[A273316(2*n)]-A273316(2*n)` -/
def P17060097178537622963.Spec : Prop :=
  ∀ n, P17060097178537622963.a n = A058581 n

end A058581

/-!
# A058582: Expansion of (1+3*x+4*x^2)/(1-4*x^2+4*x^4).

The programs for A058582, the canonical program `A058582.P7890681402605512508` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058582 has offset 0).

The definition of A058582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+4x^2)/(1-4x^2+4x^4))` (program `A058582.P7890681402605512508`, by `A058582.P7890681402605512508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058582.P8022887645033031847

`A032766(n+1)*A016116(n)`
-/

namespace A058582.P8022887645033031847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) * A016116 n

end

end A058582.P8022887645033031847

namespace A058582

/-- `A032766(n+1)*A016116(n)` -/
def P8022887645033031847.Spec : Prop :=
  ∀ n, P8022887645033031847.a n = A058582 n

end A058582

/-! ## A058582.P7890681402605512508

`ogf((1+3x+4x^2)/(1-4x^2+4x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058582

/-- `ogf((1+3x+4x^2)/(1-4x^2+4x^4))` -/
def P7890681402605512508.Spec : Prop :=
  ∀ n, P7890681402605512508.a n = A058582 n

theorem P7890681402605512508.correct : P7890681402605512508.Spec := by
  intro n
  simp only [A058582]

end A058582

/-! ## A058582.P5864106075814553367

`2^floor(n/2)*∑[n%2+1]`
-/

namespace A058582.P5864106075814553367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A058582.P5864106075814553367

namespace A058582

/-- `2^floor(n/2)*∑[n%2+1]` -/
def P5864106075814553367.Spec : Prop :=
  ∀ n, P5864106075814553367.a n = (A058582 n : ℚ)

end A058582

/-! ## A058582.P1471430456833591332

`2^floor(n/2)*∑[gcd(2, n+1)]`
-/

namespace A058582.P1471430456833591332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A058582.P1471430456833591332

namespace A058582

/-- `2^floor(n/2)*∑[gcd(2, n+1)]` -/
def P1471430456833591332.Spec : Prop :=
  ∀ n, P1471430456833591332.a n = (A058582 n : ℚ)

end A058582

/-! ## A058582.P17348115395482467098

`2^floor(n/2)*∑[and(1, n)+1]`
-/

namespace A058582.P17348115395482467098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A058582.P17348115395482467098

namespace A058582

/-- `2^floor(n/2)*∑[and(1, n)+1]` -/
def P17348115395482467098.Spec : Prop :=
  ∀ n, P17348115395482467098.a n = (A058582 n : ℚ)

end A058582

/-! ## A058582.P3654052324662501982

`2^floor(n/2)*∑[C(2, and(1, n))]`
-/

namespace A058582.P3654052324662501982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 1 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A058582.P3654052324662501982

namespace A058582

/-- `2^floor(n/2)*∑[C(2, and(1, n))]` -/
def P3654052324662501982.Spec : Prop :=
  ∀ n, P3654052324662501982.a n = (A058582 n : ℚ)

end A058582

/-! ## A058582.P1463296906528726797

`∑[4*(a(n-2)-a(n-4))]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=4`
-/

namespace A058582.P1463296906528726797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 4] fun n f1 =>
  4 * (f1 (n - 2) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058582.P1463296906528726797

namespace A058582

/-- `∑[4*(a(n-2)-a(n-4))]` -/
def P1463296906528726797.Spec : Prop :=
  ∀ n, P1463296906528726797.a n = A058582 n

end A058582

/-! ## A058582.P676538721104910065

`∑[A000034(n)]*A016116(n)`
-/

namespace A058582.P676538721104910065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 n

end

end A058582.P676538721104910065

namespace A058582

/-- `∑[A000034(n)]*A016116(n)` -/
def P676538721104910065.Spec : Prop :=
  ∀ n, P676538721104910065.a n = A058582 n

end A058582

/-! ## A058582.P5813027349494693670

`(A007494(n)+1)*A016116(n)`
-/

namespace A058582.P5813027349494693670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007494 n + 1) * A016116 n

end

end A058582.P5813027349494693670

namespace A058582

/-- `(A007494(n)+1)*A016116(n)` -/
def P5813027349494693670.Spec : Prop :=
  ∀ n, P5813027349494693670.a n = A058582 n

end A058582

/-! ## A058582.P9053321033459552398

`A080513(3*n)*A016116(n)`
-/

namespace A058582.P9053321033459552398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (3 * n) * A016116 n

end

end A058582.P9053321033459552398

namespace A058582

/-- `A080513(3*n)*A016116(n)` -/
def P9053321033459552398.Spec : Prop :=
  ∀ n, P9053321033459552398.a n = A058582 n

end A058582

/-! ## A058582.P1894813155538102283

`∑[A000035(n)+1]*A016116(n)`
-/

namespace A058582.P1894813155538102283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 n

end

end A058582.P1894813155538102283

namespace A058582

/-- `∑[A000035(n)+1]*A016116(n)` -/
def P1894813155538102283.Spec : Prop :=
  ∀ n, P1894813155538102283.a n = A058582 n

end A058582

/-! ## A058582.P15101053315574943225

`∑[A176895(2*n)]*A016116(n)`
-/

namespace A058582.P15101053315574943225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 n

end

end A058582.P15101053315574943225

namespace A058582

/-- `∑[A176895(2*n)]*A016116(n)` -/
def P15101053315574943225.Spec : Prop :=
  ∀ n, P15101053315574943225.a n = A058582 n

end A058582

/-! ## A058582.P708714541456101161

`A123684(n+1)*A164073(n+1)`
-/

namespace A058582.P708714541456101161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (n + 1) * A164073 (n + 1)

end

end A058582.P708714541456101161

namespace A058582

/-- `A123684(n+1)*A164073(n+1)` -/
def P708714541456101161.Spec : Prop :=
  ∀ n, P708714541456101161.a n = A058582 n

end A058582

/-! ## A058582.P10589199850431808464

`A002265(6*(n+1))*A016116(n)`
-/

namespace A058582.P10589199850431808464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * (n + 1)) * A016116 n

end

end A058582.P10589199850431808464

namespace A058582

/-- `A002265(6*(n+1))*A016116(n)` -/
def P10589199850431808464.Spec : Prop :=
  ∀ n, P10589199850431808464.a n = A058582 n

end A058582

/-! ## A058582.P4820199188966647983

`∑[A040242(5*n+2)]*A016116(n)`
-/

namespace A058582.P4820199188966647983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040242 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 n

end

end A058582.P4820199188966647983

namespace A058582

/-- `∑[A040242(5*n+2)]*A016116(n)` -/
def P4820199188966647983.Spec : Prop :=
  ∀ n, P4820199188966647983.a n = A058582 n

end A058582

/-! ## A058582.P3971575393407672614

`(lt[n+2, A130724(n)]-1)*A016116(n)`
-/

namespace A058582.P3971575393407672614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1) * A016116 n

end

end A058582.P3971575393407672614

namespace A058582

/-- `(lt[n+2, A130724(n)]-1)*A016116(n)` -/
def P3971575393407672614.Spec : Prop :=
  ∀ n, P3971575393407672614.a n = A058582 n

end A058582

/-! ## A058582.P224967377049408454

`(comp[2*n]-A002265(2*n))*A016116(n)`
-/

namespace A058582.P224967377049408454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A002265 (2 * n)) * A016116 n

end

end A058582.P224967377049408454

namespace A058582

/-- `(comp[2*n]-A002265(2*n))*A016116(n)` -/
def P224967377049408454.Spec : Prop :=
  ∀ n, P224967377049408454.a n = A058582 n

end A058582

/-! ## A058582.P2069559254157380210

`∑[A000034(n)]/A000034(n)*A060546(n)`
-/

namespace A058582.P2069559254157380210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ) * (A060546 n : ℚ)

end

end A058582.P2069559254157380210

namespace A058582

/-- `∑[A000034(n)]/A000034(n)*A060546(n)` -/
def P2069559254157380210.Spec : Prop :=
  ∀ n, P2069559254157380210.a n = (A058582 n : ℚ)

end A058582

/-! ## A058582.P4184627740757462378

`(A109613(n)+A028242(n+1))*A016116(n)`
-/

namespace A058582.P4184627740757462378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n + A028242 (n + 1)) * A016116 n

end

end A058582.P4184627740757462378

namespace A058582

/-- `(A109613(n)+A028242(n+1))*A016116(n)` -/
def P4184627740757462378.Spec : Prop :=
  ∀ n, P4184627740757462378.a n = A058582 n

end A058582

/-! ## A058582.P7881847896769439964

`∪[A130129(n), A167667(n)]`
-/

namespace A058582.P7881847896769439964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A058582.P7881847896769439964

namespace A058582

/-- `∪[A130129(n), A167667(n)]` -/
def P7881847896769439964.Spec : Prop :=
  ∀ n, (P7881847896769439964.a n : ℤ) = A058582 n

end A058582

/-!
# A058583: Max_{k=0..n} k!*|Stirling1(n,k)|.

The programs for A058583, there is no canonical definition to state claims against.
-/

/-! ## A058583.P16613218279131317011

`A028310(A052832(n))`
-/

namespace A058583.P16613218279131317011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A052832 n).toNat

end

end A058583.P16613218279131317011

/-! ## A058583.P8210662902248476775

`A131055(A052832(n)+1)`
-/

namespace A058583.P8210662902248476775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A052832 n + 1).toNat

end

end A058583.P8210662902248476775

/-! ## A058583.P13283535428600819401

`A185048(A052832(n)+1)`
-/

namespace A058583.P13283535428600819401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A052832 n + 1).toNat

end

end A058583.P13283535428600819401

/-!
# A058584: McKay-Thompson series of class 24a for Monster.

The programs for A058584, there is no canonical definition to state claims against.
-/

/-! ## A058584.P11023607209158024295

`A033999(n)*A058491(n)`
-/

namespace A058584.P11023607209158024295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058491 n

end

end A058584.P11023607209158024295

/-! ## A058584.P17903997898865949203

`A000038(n)-abs(A058491(n))`
-/

namespace A058584.P17903997898865949203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - |A058491 n|

end

end A058584.P17903997898865949203

/-! ## A058584.P6508353813598672611

`(A004442(n)-n)*A058491(n)`
-/

namespace A058584.P6508353813598672611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A058491 n

end

end A058584.P6508353813598672611

/-! ## A058584.P3880457448737293231

`A058491(n)*A253262(A016861(n))`
-/

namespace A058584.P3880457448737293231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058491 n * A253262 (A016861 n).toNat

end

end A058584.P3880457448737293231

/-!
# A058585: An approximation to A000084(n).

The programs for A058585, there is no canonical definition to state claims against.
-/

/-! ## A058585.P7708957949207138108

`∏{e}[(-5)^n, A001573(#)]`
-/

namespace A058585.P7708957949207138108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-5) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001573 (Nat.factorization (f1 n).natAbs p)

end

end A058585.P7708957949207138108

/-! ## A058585.P85481228336799211

`A001573(A274708(n²))`
-/

namespace A058585.P85481228336799211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001573 (A274708 (n ^ 2)).toNat

end

end A058585.P85481228336799211

/-! ## A058585.P4755490986094909908

`A001573(n^A348524(n))`
-/

namespace A058585.P4755490986094909908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001573 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A348524 n : ℤ))).toNat

end

end A058585.P4755490986094909908

/-! ## A058585.P10351801849825616563

`A001573(C(n, A348524(n)))`
-/

namespace A058585.P10351801849825616563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001573 (Nat.choose n (A348524 n).toNat)

end

end A058585.P10351801849825616563

/-! ## A058585.P17692655581353186068

`A001573(gcd(n, A065711(n+2)))`
-/

namespace A058585.P17692655581353186068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001573 (Int.gcd (n : ℤ) (A065711 (n + 2)))

end

end A058585.P17692655581353186068

/-!
# A058586: Numbers k such that 5*2^k + 3 is prime.

The programs for A058586, there is no canonical definition to state claims against.
-/

/-! ## A058586.P3072506543772921932

`A068713(n+1)+1`
-/

namespace A058586.P3072506543772921932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068713 (n + 1) + 1

end

end A058586.P3072506543772921932

/-! ## A058586.P3475333680327573821

`val(A068712(n+1)-3, 2)`
-/

namespace A058586.P3475333680327573821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A068712 (n + 1) - 3).toNat 2

end

end A058586.P3475333680327573821

/-! ## A058586.P14225756402159201349

`val(Δ[A068712(n+1)], 2)`
-/

namespace A058586.P14225756402159201349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A058586.P14225756402159201349

/-! ## A058586.P1742787903061530557

`eq[1, A247341(n)]+1`
-/

namespace A058586.P1742787903061530557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058586.P1742787903061530557

/-! ## A058586.P3174816499112656387

`record[A000027(n+1)/A247341(n)]`
-/

namespace A058586.P3174816499112656387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A247341 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058586.P3174816499112656387

/-!
# A058587: McKay-Thompson series of class 24d for Monster.

The programs for A058587, there is no canonical definition to state claims against.
-/

/-! ## A058587.P5428675312764339981

`A033999(n)*A112163(n)`
-/

namespace A058587.P5428675312764339981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112163 n

end

end A058587.P5428675312764339981

/-! ## A058587.P5938359883661748795

`(A004442(n)-n)*A112163(n)`
-/

namespace A058587.P5938359883661748795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A112163 n

end

end A058587.P5938359883661748795

/-! ## A058587.P133702830543631493

`A112163(n)*A309873(A007947(n+1))`
-/

namespace A058587.P133702830543631493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112163 n * A309873 (A007947 (n + 1)).toNat

end

end A058587.P133702830543631493

/-! ## A058587.P16977023870569865750

`A037861(Δ[A047221(n+2)])*A112163(n)`
-/

namespace A058587.P16977023870569865750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (f1 (n + 1) - f1 n).toNat * A112163 n

end

end A058587.P16977023870569865750

/-! ## A058587.P4356128429864832366

`A055975(A055975(n+1)+n)*A112163(n)`
-/

namespace A058587.P4356128429864832366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A055975 (n + 1) + (n : ℤ)).toNat * A112163 n

end

end A058587.P4356128429864832366

/-! ## A058587.P12410060234794911252

`A055975(2*n+1)*A112163(n)`
-/

namespace A058587.P12410060234794911252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) * A112163 n

end

end A058587.P12410060234794911252

/-! ## A058587.P7278099654151134591

`A105931(A134965(n+1))*A112163(n)`
-/

namespace A058587.P7278099654151134591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (A134965 (n + 1)).toNat * A112163 n

end

end A058587.P7278099654151134591

/-! ## A058587.P10821870693576164568

`A105931((n+1)²)*A112163(n)`
-/

namespace A058587.P10821870693576164568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 ((n + 1) ^ 2) * A112163 n

end

end A058587.P10821870693576164568

/-! ## A058587.P7262245066775470069

`A112163(n)*A309873(n²+1)`
-/

namespace A058587.P7262245066775470069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112163 n * A309873 (n ^ 2 + 1)

end

end A058587.P7262245066775470069

/-!
# A058588: Numbers k such that 5*2^k - 3 is prime.

The programs for A058588, there is no canonical definition to state claims against.
-/

/-! ## A058588.P6131936259866671916

`val(A173769(n+1)+3, 2)`
-/

namespace A058588.P6131936259866671916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173769 (n + 1) + 3).toNat 2

end

end A058588.P6131936259866671916

/-! ## A058588.P14694535812328481578

`A289207(round(log2(A173769(n+1))))`
-/

namespace A058588.P14694535812328481578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.roundAway (Real.logb 2 (A173769 (n + 1) : ℝ))).toNat

end

end A058588.P14694535812328481578

/-! ## A058588.P1027876344127895001

`eq[A046229(n+1), A046533(A214019(n+1))]`
-/

namespace A058588.P1027876344127895001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046533 (A214019 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058588.P1027876344127895001

/-!
# A058589: McKay-Thompson series of class 24f for Monster.

The programs for A058589, there is no canonical definition to state claims against.
-/

/-! ## A058589.P8492831150951266149

`A033999(n)*A112164(n)`
-/

namespace A058589.P8492831150951266149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112164 n

end

end A058589.P8492831150951266149

/-! ## A058589.P13164813313444098561

`A009001(2*n)*A112164(n)`
-/

namespace A058589.P13164813313444098561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A112164 n

end

end A058589.P13164813313444098561

/-! ## A058589.P18245357967877100506

`(A004442(n)-n)*A112164(n)`
-/

namespace A058589.P18245357967877100506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A112164 n

end

end A058589.P18245357967877100506

/-! ## A058589.P17836952880127243298

`(A014681(n+1)-(n+1))*A112164(n)`
-/

namespace A058589.P17836952880127243298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 (n + 1) - (n + 1 : ℤ)) * A112164 n

end

end A058589.P17836952880127243298

/-! ## A058589.P12978552204387082527

`A010892(3*n)*A112164(n)`
-/

namespace A058589.P12978552204387082527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A112164 n

end

end A058589.P12978552204387082527

/-!
# A058593: Numbers k such that 7*2^k - 3 is prime.

The programs for A058593, there is no canonical definition to state claims against.
-/

/-! ## A058593.P15719799188647140059

`val(Δ[A225582(n+1)], 2)`
-/

namespace A058593.P15719799188647140059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A058593.P15719799188647140059

/-! ## A058593.P52645558204761383

`lt[A001055(A027336(n)), A226613(n+1)]`
-/

namespace A058593.P52645558204761383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A027336 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A058593.P52645558204761383

/-!
# A058595: Numbers k such that 7*2^k + 5 is prime.

The programs for A058595, there is no canonical definition to state claims against.
-/

/-! ## A058595.P9407802172247406279

`or(A170898(A006372(n)), A172305(n))`
-/

namespace A058595.P9407802172247406279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A170898 (A006372 n).toNat) (A172305 n)

end

end A058595.P9407802172247406279

/-! ## A058595.P11542598532239231810

`A008576(eq[A000196(n), A273943(n)])`
-/

namespace A058595.P11542598532239231810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A058595.P11542598532239231810

/-! ## A058595.P2852643738308671689

`A038569(A293494(n+2))+A005843(n)`
-/

namespace A058595.P2852643738308671689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A293494 (n + 2)).toNat + A005843 n

end

end A058595.P2852643738308671689

/-!
# A058598: McKay-Thompson series of class 26a for Monster.

The programs for A058598, there is no canonical definition to state claims against.
-/

/-! ## A058598.P14806318613943429728

`∑[A081768(∏[A003958(n+1)])]`
-/

namespace A058598.P14806318613943429728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081768 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058598.P14806318613943429728

/-! ## A058598.P11609500862195031169

`A003415(n)+record[A353430(2*(n+1))]`
-/

namespace A058598.P11609500862195031169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058598.P11609500862195031169

/-! ## A058598.P2804508379656796283

`A363805(A148158(n+1))+A103580(n+1)`
-/

namespace A058598.P2804508379656796283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A148158 (n + 1)).toNat + A103580 (n + 1)

end

end A058598.P2804508379656796283

/-! ## A058598.P5509024384812394695

`A325817(A145131(3*n+4))+A145131(n)`
-/

namespace A058598.P5509024384812394695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (A145131 (3 * n + 4)).toNat + A145131 n

end

end A058598.P5509024384812394695

