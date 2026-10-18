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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C006
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A158000: a(n) = 338*n + 1.

The programs for A158000, the canonical program `A158000.P14516939560890834458` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158000 has offset 1).

The definition of A158000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `338*(n+1)+1` (program `A158000.P14516939560890834458`, by `A158000.P14516939560890834458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158000.P14516939560890834458

`338*(n+1)+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158000

/-- `338*(n+1)+1` -/
def P14516939560890834458.Spec : Prop :=
  ∀ n, (P14516939560890834458.a n : ℤ) = A158000 (n + 1)

theorem P14516939560890834458.correct : P14516939560890834458.Spec := by
  intro n
  simp only [A158000, Nat.add_sub_cancel]

end A158000

/-!
# A158001: Period 6: repeat [9, 10, 9, 4, 4, 1].

The programs for A158001, the canonical program `A158001.P17495190555428808471` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158001 has offset 1).

The definition of A158001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158001.P17495190555428808471

`a(n-6)` with `a(0)=9, a(1)=10, a(2)=9, a(3)=4, a(4)=4, a(5)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158001

/-- `a(n-6)` -/
def P17495190555428808471.Spec : Prop :=
  ∀ n, (P17495190555428808471.a n : ℤ) = A158001 (n + 1)

theorem P17495190555428808471.correct : P17495190555428808471.Spec := by
  intro n
  simp only [A158001, Nat.add_sub_cancel]

end A158001

/-!
# A158002: a(n) = 392*n + 1.

The programs for A158002, the canonical program `A158002.P14866779831553329845` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158002 has offset 0).

The definition of A158002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `392*n+1` (program `A158002.P14866779831553329845`, by `A158002.P14866779831553329845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158002.P14866779831553329845

`392*n+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158002

/-- `392*n+1` -/
def P14866779831553329845.Spec : Prop :=
  ∀ n, (P14866779831553329845.a n : ℤ) = A158002 n

theorem P14866779831553329845.correct : P14866779831553329845.Spec := by
  intro n
  simp only [A158002]

end A158002

/-!
# A158003: a(n) = 196*n^2 - n.

The programs for A158003, the canonical program `A158003.P7233755853787664310` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158003 has offset 1).

The definition of A158003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `196*(n+1)²-(n+1)` (program `A158003.P7233755853787664310`, by `A158003.P7233755853787664310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158003.P7233755853787664310

`196*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158003

/-- `196*(n+1)²-(n+1)` -/
def P7233755853787664310.Spec : Prop :=
  ∀ n, P7233755853787664310.a n = A158003 (n + 1)

theorem P7233755853787664310.correct : P7233755853787664310.Spec := by
  intro n
  simp only [A158003, Nat.add_sub_cancel]

end A158003

/-! ## A158003.P5268909221527598616

`(n+1)*A158225(n+1)`
-/

namespace A158003.P5268909221527598616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158225 (n + 1)

end

end A158003.P5268909221527598616

namespace A158003

/-- `(n+1)*A158225(n+1)` -/
def P5268909221527598616.Spec : Prop :=
  ∀ n, P5268909221527598616.a n = A158003 (n + 1)

end A158003

/-! ## A158003.P1917348909643685304

`(n+1)*(A158223(n+1)-2)`
-/

namespace A158003.P1917348909643685304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158223 (n + 1) - 2)

end

end A158003.P1917348909643685304

namespace A158003

/-- `(n+1)*(A158223(n+1)-2)` -/
def P1917348909643685304.Spec : Prop :=
  ∀ n, P1917348909643685304.a n = A158003 (n + 1)

end A158003

/-! ## A158003.P12429183388136219639

`lcm(A000027(n+1), A158225(n+1))`
-/

namespace A158003.P12429183388136219639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158225 (n + 1))

end

end A158003.P12429183388136219639

namespace A158003

/-- `lcm(A000027(n+1), A158225(n+1))` -/
def P12429183388136219639.Spec : Prop :=
  ∀ n, (P12429183388136219639.a n : ℤ) = A158003 (n + 1)

end A158003

/-! ## A158003.P13246528081217490110

`(n+1)*A157924(2*(n+1))`
-/

namespace A158003.P13246528081217490110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A157924 (2 * (n + 1))

end

end A158003.P13246528081217490110

namespace A158003

/-- `(n+1)*A157924(2*(n+1))` -/
def P13246528081217490110.Spec : Prop :=
  ∀ n, P13246528081217490110.a n = A158003 (n + 1)

end A158003

/-! ## A158003.P11573488690128600542

`(A157947(2*(n+1))-2)*(n+1)`
-/

namespace A158003.P11573488690128600542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157947 (2 * (n + 1)) - 2) * (n + 1 : ℤ)

end

end A158003.P11573488690128600542

namespace A158003

/-- `(A157947(2*(n+1))-2)*(n+1)` -/
def P11573488690128600542.Spec : Prop :=
  ∀ n, P11573488690128600542.a n = A158003 (n + 1)

end A158003

/-!
# A158004: a(n) = 392*n - 1.

The programs for A158004, the canonical program `A158004.P16405521428447164041` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158004 has offset 1).

The definition of A158004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `392*(n+1)-1` (program `A158004.P16405521428447164041`, by `A158004.P16405521428447164041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158004.P16405521428447164041

`392*(n+1)-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158004

/-- `392*(n+1)-1` -/
def P16405521428447164041.Spec : Prop :=
  ∀ n, P16405521428447164041.a n = A158004 (n + 1)

theorem P16405521428447164041.correct : P16405521428447164041.Spec := by
  intro n
  simp only [A158004, Nat.add_sub_cancel]

end A158004

/-!
# A158005: Numbers of pattern-matching permutations of (1234) for the permutations of {1, 2, ..., n} on n = 4, 5, 6, ... elements.

The programs for A158005, there is no canonical definition to state claims against.
-/

/-! ## A158005.P6404449619508053360

`A000142(n+4)-A005802(n+4)`
-/

namespace A158005.P6404449619508053360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 4) - A005802 (n + 4)

end

end A158005.P6404449619508053360

/-! ## A158005.P1807230248323459363

`A214152(A052905(n)+9)`
-/

namespace A158005.P1807230248323459363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A052905 n + 9).toNat

end

end A158005.P1807230248323459363

/-! ## A158005.P15807816816957761787

`A214152(A167614(n+2)+1)`
-/

namespace A158005.P15807816816957761787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A167614 (n + 2) + 1).toNat

end

end A158005.P15807816816957761787

/-! ## A158005.P14763904784499304746

`A214152(A166136(n+2)-2)`
-/

namespace A158005.P14763904784499304746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A166136 (n + 2) - 2).toNat

end

end A158005.P14763904784499304746

/-! ## A158005.P14385814827621136188

`A214152(A167487(n+2)-3)`
-/

namespace A158005.P14385814827621136188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A167487 (n + 2) - 3).toNat

end

end A158005.P14385814827621136188

/-! ## A158005.P9625144256244418660

`A214152(A034856(n+2)+6)`
-/

namespace A158005.P9625144256244418660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A034856 (n + 2) + 6).toNat

end

end A158005.P9625144256244418660

/-! ## A158005.P1004913781450317198

`A214152(A001972(2*(n+2))+4)`
-/

namespace A158005.P1004913781450317198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A001972 (2 * (n + 2)) + 4).toNat

end

end A158005.P1004913781450317198

/-! ## A158005.P8482961853602862517

`A214152(A166136(n+1)+1+n)`
-/

namespace A158005.P8482961853602862517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A158005.P8482961853602862517

/-! ## A158005.P9411793781092392289

`A214152(A000124(n+4)-(n+1))`
-/

namespace A158005.P9411793781092392289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A158005.P9411793781092392289

/-! ## A158005.P12940173345034532829

`A214152(Δ[A023545(n+1)-n²])`
-/

namespace A158005.P12940173345034532829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (f1 (n + 1) - f1 n).toNat

end

end A158005.P12940173345034532829

/-!
# A158007: Number of simple connected noneulerian graphs on n nodes.

The programs for A158007, there is no canonical definition to state claims against.
-/

/-! ## A158007.P15242060098173335062

`A001349(n+1)-A003049(n+1)`
-/

namespace A158007.P15242060098173335062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A003049 (n + 1)

end

end A158007.P15242060098173335062

/-! ## A158007.P9351179792009149765

`A201922(A000124(n))-A003049(n+1)`
-/

namespace A158007.P9351179792009149765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A003049 (n + 1)

end

end A158007.P9351179792009149765

/-! ## A158007.P16525556676369741706

`A201922(∑[A028310(n)])-A003049(n+1)`
-/

namespace A158007.P16525556676369741706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A003049 (n + 1)

end

end A158007.P16525556676369741706

/-! ## A158007.P17037340441074024770

`A048192(n+1)+A241843(n+1)-A003049(n+1)`
-/

namespace A158007.P17037340441074024770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A003049 (n + 1))

end

end A158007.P17037340441074024770

/-! ## A158007.P9817946552441678234

`A003216(n+1)+A126149(n+1)-A003049(n+1)`
-/

namespace A158007.P9817946552441678234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003216 (n + 1) + (A126149 (n + 1) - A003049 (n + 1))

end

end A158007.P9817946552441678234

/-!
# A158008: Positive integers for which Bauer's identical congruence holds.

The programs for A158008, there is no canonical definition to state claims against.
-/

/-! ## A158008.P11660359840225424975

`eq[gcd(2, n), A227550(A005127(n))]`
-/

namespace A158008.P11660359840225424975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 (A005127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158008.P11660359840225424975

/-! ## A158008.P11385995906400423843

`comp[A071830(n+2)%A064549(n+1)]`
-/

namespace A158008.P11385995906400423843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071830 (n + 2)) (A064549 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158008.P11385995906400423843

/-! ## A158008.P4842803266399612875

`eq[A002865(A005127(n)), A040001(n)]`
-/

namespace A158008.P4842803266399612875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A005127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158008.P4842803266399612875

/-! ## A158008.P14126908478548565401

`eq[A002264(A005127(n)), A059841(n)]`
-/

namespace A158008.P14126908478548565401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158008.P14126908478548565401

/-! ## A158008.P2395490289463853997

`eq[A003056(A005127(n)), A107279(n)]`
-/

namespace A158008.P2395490289463853997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158008.P2395490289463853997

/-! ## A158008.P9103812863751395018

`eq[A008620(A005127(n)), A134451(n)]`
-/

namespace A158008.P9103812863751395018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A005127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158008.P9103812863751395018

/-! ## A158008.P7560433227699402890

`eq[A000120(A141310(n)), A074206(n)]`
-/

namespace A158008.P7560433227699402890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A141310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158008.P7560433227699402890

/-! ## A158008.P8661324119522285774

`eq[A000120(A141310(n)), A104725(n)]`
-/

namespace A158008.P8661324119522285774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A141310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158008.P8661324119522285774

/-! ## A158008.P4686381959464842092

`eq[1, A008763(A005127(n))+A000035(n)]`
-/

namespace A158008.P4686381959464842092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A005127 n).toNat + A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158008.P4686381959464842092

/-! ## A158008.P854763320750065312

`eq[A071766(A059806(n+1)), A074206(n)]`
-/

namespace A158008.P854763320750065312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A059806 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158008.P854763320750065312

/-!
# A158010: a(n) = 256*n^2 - n.

The programs for A158010, the canonical program `A158010.P5576449187014649805` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158010 has offset 1).

The definition of A158010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `256*(n+1)²-(n+1)` (program `A158010.P5576449187014649805`, by `A158010.P5576449187014649805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158010.P5576449187014649805

`256*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158010

/-- `256*(n+1)²-(n+1)` -/
def P5576449187014649805.Spec : Prop :=
  ∀ n, P5576449187014649805.a n = A158010 (n + 1)

theorem P5576449187014649805.correct : P5576449187014649805.Spec := by
  intro n
  simp only [A158010, Nat.add_sub_cancel]

end A158010

/-! ## A158010.P833796370506980722

`(n+1)*A158250(n+1)`
-/

namespace A158010.P833796370506980722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158250 (n + 1)

end

end A158010.P833796370506980722

namespace A158010

/-- `(n+1)*A158250(n+1)` -/
def P833796370506980722.Spec : Prop :=
  ∀ n, P833796370506980722.a n = A158010 (n + 1)

end A158010

/-! ## A158010.P4745026017448095259

`(n+1)*(A158231(n+1)-2)`
-/

namespace A158010.P4745026017448095259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158231 (n + 1) - 2)

end

end A158010.P4745026017448095259

namespace A158010

/-- `(n+1)*(A158231(n+1)-2)` -/
def P4745026017448095259.Spec : Prop :=
  ∀ n, P4745026017448095259.a n = A158010 (n + 1)

end A158010

/-! ## A158010.P8330051939921457272

`lcm(A000027(n+1), A158250(n+1))`
-/

namespace A158010.P8330051939921457272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158250 (n + 1))

end

end A158010.P8330051939921457272

namespace A158010

/-- `lcm(A000027(n+1), A158250(n+1))` -/
def P8330051939921457272.Spec : Prop :=
  ∀ n, (P8330051939921457272.a n : ℤ) = A158010 (n + 1)

end A158010

/-! ## A158010.P5149745700869695040

`(n+1)*A157949(2*(n+1))`
-/

namespace A158010.P5149745700869695040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A157949 (2 * (n + 1))

end

end A158010.P5149745700869695040

namespace A158010

/-- `(n+1)*A157949(2*(n+1))` -/
def P5149745700869695040.Spec : Prop :=
  ∀ n, P5149745700869695040.a n = A158010 (n + 1)

end A158010

/-!
# A158011: a(n) = 512n - 1.

The programs for A158011, the canonical program `A158011.P5950555851175315157` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158011 has offset 1).

The definition of A158011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `512*(n+1)-1` (program `A158011.P5950555851175315157`, by `A158011.P5950555851175315157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158011.P5950555851175315157

`512*(n+1)-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158011

/-- `512*(n+1)-1` -/
def P5950555851175315157.Spec : Prop :=
  ∀ n, P5950555851175315157.a n = A158011 (n + 1)

theorem P5950555851175315157.correct : P5950555851175315157.Spec := by
  intro n
  simp only [A158011, Nat.add_sub_cancel]

end A158011

/-!
# A158012: A000796(n)*A000796(n+1) mod 9.

The programs for A158012, there is no canonical definition to state claims against.
-/

/-! ## A158012.P3146830708245893205

`(A000796(n+1)*A000796(n))%9`
-/

namespace A158012.P3146830708245893205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1 + 1) * A000796 (n + 1)) 9

end

end A158012.P3146830708245893205

/-! ## A158012.P6406575845538444208

`(Δ[A046974(n)]*A000796(n))%9`
-/

namespace A158012.P6406575845538444208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) * A000796 (n + 1)) 9

end

end A158012.P6406575845538444208

/-! ## A158012.P2910662132402932651

`((9-A030644(n))*Δ[A046974(n)])%9`
-/

namespace A158012.P2910662132402932651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((9 - A030644 (n + 1)) * (f1 (n + 1) - f1 n)) 9

end

end A158012.P2910662132402932651

/-! ## A158012.P13146335103533113840

`((A123152(n+1)-1)*Δ[A046974(n)])%9`
-/

namespace A158012.P13146335103533113840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A123152 (n + 1) - 1) * (f1 (n + 1) - f1 n)) 9

end

end A158012.P13146335103533113840

/-! ## A158012.P5774452291525071256

`A010878(Δ[A046974(n)]*A000796(n))`
-/

namespace A158012.P5774452291525071256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 ((f1 (n + 1) - f1 n) * A000796 (n + 1)).toNat

end

end A158012.P5774452291525071256

/-! ## A158012.P6296666532809259071

`(Δ[A046974(n)]*A010879(A065253(n+1)))%9`
-/

namespace A158012.P6296666532809259071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) * A010879 (A065253 (n + 1)).toNat) 9

end

end A158012.P6296666532809259071

/-! ## A158012.P14346278351656308228

`(Δ[A046974(n)]*A001355(Δ[n²]))%9`
-/

namespace A158012.P14346278351656308228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) * A001355 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat) 9

end

end A158012.P14346278351656308228

/-! ## A158012.P15409200388133729176

`(Δ[A046974(n)]*A110766(Δ[n²]))%9`
-/

namespace A158012.P15409200388133729176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) * A110766 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat) 9

end

end A158012.P15409200388133729176

/-! ## A158012.P11313131134524292336

`(A001355(2*n+1)*A001355(2*n+3))%9`
-/

namespace A158012.P11313131134524292336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001355 (2 * n + 1) * A001355 (2 * n + 3)) 9

end

end A158012.P11313131134524292336

/-! ## A158012.P15501317039409766259

`(Δ[A046974(n)]*Δ[A059582(n)])%9`
-/

namespace A158012.P15501317039409766259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)) 9

end

end A158012.P15501317039409766259

/-! ## A158012.P10268269129909843980

`(Δ[A059582(n+1)]*Δ[A059582(n)])%9`
-/

namespace A158012.P10268269129909843980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)) 9

end

end A158012.P10268269129909843980

/-!
# A158014: Primes p such that (p-1)/8 is also prime.

The programs for A158014, the canonical program `A158014.P12413246959562192546` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158014 has offset 1).

The definition of A158014 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023228, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158014.P12413246959562192546

`8*A023228(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A158014

/-- `8*A023228(n+1)+1` -/
def P12413246959562192546.Spec : Prop :=
  ∀ n, P12413246959562192546.a n = A158014 (n + 1)

theorem P12413246959562192546.correct : P12413246959562192546.Spec := by
  intro n
  simp only [A158014, Nat.add_sub_cancel]

end A158014

/-! ## A158014.P6930283591601511348

`p?[2*A001749(n+1)+1]`
-/

namespace A158014.P6930283591601511348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001749 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P6930283591601511348

namespace A158014

/-- `p?[2*A001749(n+1)+1]` -/
def P6930283591601511348.Spec : Prop :=
  ∀ n, P6930283591601511348.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P2506704510518407330

`p?[4*A100484(n+1)+1]`
-/

namespace A158014.P2506704510518407330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A100484 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P2506704510518407330

namespace A158014

/-- `p?[4*A100484(n+1)+1]` -/
def P2506704510518407330.Spec : Prop :=
  ∀ n, P2506704510518407330.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P3138816577490106707

`p?[8*A000040(n+1)+1]`
-/

namespace A158014.P3138816577490106707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P3138816577490106707

namespace A158014

/-- `p?[8*A000040(n+1)+1]` -/
def P3138816577490106707.Spec : Prop :=
  ∀ n, P3138816577490106707.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P6918414324628971458

`p?[4*(A072055(n+1)-1)+1]`
-/

namespace A158014.P6918414324628971458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A072055 (n + 1) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P6918414324628971458

namespace A158014

/-- `p?[4*(A072055(n+1)-1)+1]` -/
def P6918414324628971458.Spec : Prop :=
  ∀ n, P6918414324628971458.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P3630242886591738332

`p?[A138636(n+1)+A072055(n+1)]`
-/

namespace A158014.P3630242886591738332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1) + A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P3630242886591738332

namespace A158014

/-- `p?[A138636(n+1)+A072055(n+1)]` -/
def P3630242886591738332.Spec : Prop :=
  ∀ n, P3630242886591738332.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P17038384443985730932

`p?[A072055(n+1)+2*A001748(n+1)]`
-/

namespace A158014.P17038384443985730932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + 2 * A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P17038384443985730932

namespace A158014

/-- `p?[A072055(n+1)+2*A001748(n+1)]` -/
def P17038384443985730932.Spec : Prop :=
  ∀ n, P17038384443985730932.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P15800598543747365712

`p?[8*A008578(n+1)+1]`
-/

namespace A158014.P15800598543747365712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008578 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P15800598543747365712

namespace A158014

/-- `p?[8*A008578(n+1)+1]` -/
def P15800598543747365712.Spec : Prop :=
  ∀ n, P15800598543747365712.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P18142179747962575600

`p?[8*record[A020639(n+1)]+1]`
-/

namespace A158014.P18142179747962575600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P18142179747962575600

namespace A158014

/-- `p?[8*record[A020639(n+1)]+1]` -/
def P18142179747962575600.Spec : Prop :=
  ∀ n, P18142179747962575600.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P9701497766607193057

`record[A006530(8*A000040(n+1)+1)]`
-/

namespace A158014.P9701497766607193057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158014.P9701497766607193057

namespace A158014

/-- `record[A006530(8*A000040(n+1)+1)]` -/
def P9701497766607193057.Spec : Prop :=
  ∀ n, P9701497766607193057.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P5243312888217764919

`p?[8*record[A014963(n+1)]+1]`
-/

namespace A158014.P5243312888217764919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P5243312888217764919

namespace A158014

/-- `p?[8*record[A014963(n+1)]+1]` -/
def P5243312888217764919.Spec : Prop :=
  ∀ n, P5243312888217764919.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P18040594732299859051

`A017077(A023228(n+1))`
-/

namespace A158014.P18040594732299859051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A023228 (n + 1)).toNat

end

end A158014.P18040594732299859051

namespace A158014

/-- `A017077(A023228(n+1))` -/
def P18040594732299859051.Spec : Prop :=
  ∀ n, P18040594732299859051.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P13478465659255536557

`p?[A017077(A000040(n+1))]`
-/

namespace A158014.P13478465659255536557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P13478465659255536557

namespace A158014

/-- `p?[A017077(A000040(n+1))]` -/
def P13478465659255536557.Spec : Prop :=
  ∀ n, P13478465659255536557.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P11905387536937773691

`p?[A022144(p?[A064429(n)])+1]`
-/

namespace A158014.P11905387536937773691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P11905387536937773691

namespace A158014

/-- `p?[A022144(p?[A064429(n)])+1]` -/
def P11905387536937773691.Spec : Prop :=
  ∀ n, P11905387536937773691.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P8666845304882775667

`p?[A022144(p?[A246425(n)])+1]`
-/

namespace A158014.P8666845304882775667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P8666845304882775667

namespace A158014

/-- `p?[A022144(p?[A246425(n)])+1]` -/
def P8666845304882775667.Spec : Prop :=
  ∀ n, P8666845304882775667.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P4112148174265121988

`p?[A022144(p?[A344180(n)])+1]`
-/

namespace A158014.P4112148174265121988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P4112148174265121988

namespace A158014

/-- `p?[A022144(p?[A344180(n)])+1]` -/
def P4112148174265121988.Spec : Prop :=
  ∀ n, P4112148174265121988.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P10226759519644192464

`p?[A004768(p?[A014681(n)]-1)]`
-/

namespace A158014.P10226759519644192464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P10226759519644192464

namespace A158014

/-- `p?[A004768(p?[A014681(n)]-1)]` -/
def P10226759519644192464.Spec : Prop :=
  ∀ n, P10226759519644192464.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P17529824863145004291

`p?[A004768(n*A010051(n+1))]`
-/

namespace A158014.P17529824863145004291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 ((n : ℤ) * A010051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P17529824863145004291

namespace A158014

/-- `p?[A004768(n*A010051(n+1))]` -/
def P17529824863145004291.Spec : Prop :=
  ∀ n, P17529824863145004291.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P898837862595065068

`p?[(A004771(n)+2)*A001222(n+1)]`
-/

namespace A158014.P898837862595065068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n + 2) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158014.P898837862595065068

namespace A158014

/-- `p?[(A004771(n)+2)*A001222(n+1)]` -/
def P898837862595065068.Spec : Prop :=
  ∀ n, P898837862595065068.a n = A158014 (n + 1)

end A158014

/-! ## A158014.P4320728121728849599

`record[A006530(16*A014963(n+2)+2)]`
-/

namespace A158014.P4320728121728849599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (16 * A014963 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158014.P4320728121728849599

namespace A158014

/-- `record[A006530(16*A014963(n+2)+2)]` -/
def P4320728121728849599.Spec : Prop :=
  ∀ n, P4320728121728849599.a n = A158014 (n + 1)

end A158014

/-!
# A158015: Primes p such that 6*p-1 is also prime.

The programs for A158015, the canonical program `A158015.P7047536618919471622` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158015 has offset 1).

The definition of A158015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158015.P7047536618919471622

`p?[A024898(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A158015

/-- `p?[A024898(n+1)]` -/
def P7047536618919471622.Spec : Prop :=
  ∀ n, P7047536618919471622.a n = A158015 (n + 1)

theorem P7047536618919471622.correct : P7047536618919471622.Spec := by
  intro n
  simp only [A158015, Nat.add_sub_cancel]

end A158015

/-! ## A158015.P5954361127933888121

`p?[A059325(n+1)+1]`
-/

namespace A158015.P5954361127933888121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158015.P5954361127933888121

namespace A158015

/-- `p?[A059325(n+1)+1]` -/
def P5954361127933888121.Spec : Prop :=
  ∀ n, P5954361127933888121.a n = A158015 (n + 1)

end A158015

/-! ## A158015.P6740233452228786605

`p?[A153134(n+1)-1]`
-/

namespace A158015.P6740233452228786605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158015.P6740233452228786605

namespace A158015

/-- `p?[A153134(n+1)-1]` -/
def P6740233452228786605.Spec : Prop :=
  ∀ n, P6740233452228786605.a n = A158015 (n + 1)

end A158015

/-! ## A158015.P11749381649948756274

`p?[∑[A358565(n+2)]+1]`
-/

namespace A158015.P11749381649948756274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358565 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158015.P11749381649948756274

namespace A158015

/-- `p?[∑[A358565(n+2)]+1]` -/
def P11749381649948756274.Spec : Prop :=
  ∀ n, P11749381649948756274.a n = A158015 (n + 1)

end A158015

/-! ## A158015.P9879343824880689626

`record[A006530(A087370(n+2))]`
-/

namespace A158015.P9879343824880689626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087370 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158015.P9879343824880689626

namespace A158015

/-- `record[A006530(A087370(n+2))]` -/
def P9879343824880689626.Spec : Prop :=
  ∀ n, P9879343824880689626.a n = A158015 (n + 1)

end A158015

/-! ## A158015.P15487575498218071206

`filter[A024898(n+1), A010051(#)]`
-/

namespace A158015.P15487575498218071206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158015.P15487575498218071206

namespace A158015

/-- `filter[A024898(n+1), A010051(#)]` -/
def P15487575498218071206.Spec : Prop :=
  ∀ n, P15487575498218071206.a n = A158015 (n + 1)

end A158015

/-! ## A158015.P2367124215092576444

`∩[A024898(n+1), A042988(n)]`
-/

namespace A158015.P2367124215092576444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P2367124215092576444

namespace A158015

/-- `∩[A024898(n+1), A042988(n)]` -/
def P2367124215092576444.Spec : Prop :=
  ∀ n, (P2367124215092576444.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P14472687791878535292

`record[A006530(2*A024898(n+1))]`
-/

namespace A158015.P14472687791878535292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A024898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158015.P14472687791878535292

namespace A158015

/-- `record[A006530(2*A024898(n+1))]` -/
def P14472687791878535292.Spec : Prop :=
  ∀ n, P14472687791878535292.a n = A158015 (n + 1)

end A158015

/-! ## A158015.P18047630590753777446

`∩[A000040(n+1), A024898(n+1)]`
-/

namespace A158015.P18047630590753777446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P18047630590753777446

namespace A158015

/-- `∩[A000040(n+1), A024898(n+1)]` -/
def P18047630590753777446.Spec : Prop :=
  ∀ n, (P18047630590753777446.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P9217081505592018870

`∩[A024898(n+1), A040159(n+1)]`
-/

namespace A158015.P9217081505592018870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P9217081505592018870

namespace A158015

/-- `∩[A024898(n+1), A040159(n+1)]` -/
def P9217081505592018870.Spec : Prop :=
  ∀ n, (P9217081505592018870.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P10761974813949432295

`∩[A024898(n+1), A040161(n+1)]`
-/

namespace A158015.P10761974813949432295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P10761974813949432295

namespace A158015

/-- `∩[A024898(n+1), A040161(n+1)]` -/
def P10761974813949432295.Spec : Prop :=
  ∀ n, (P10761974813949432295.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P2501430444912004530

`∩[A024898(n+1), A040165(n+1)]`
-/

namespace A158015.P2501430444912004530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P2501430444912004530

namespace A158015

/-- `∩[A024898(n+1), A040165(n+1)]` -/
def P2501430444912004530.Spec : Prop :=
  ∀ n, (P2501430444912004530.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P9922223778841564053

`∩[A024898(n+1), A040169(n+1)]`
-/

namespace A158015.P9922223778841564053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P9922223778841564053

namespace A158015

/-- `∩[A024898(n+1), A040169(n+1)]` -/
def P9922223778841564053.Spec : Prop :=
  ∀ n, (P9922223778841564053.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P5629022765713607626

`∩[A024898(n+1), A040171(n+1)]`
-/

namespace A158015.P5629022765713607626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P5629022765713607626

namespace A158015

/-- `∩[A024898(n+1), A040171(n+1)]` -/
def P5629022765713607626.Spec : Prop :=
  ∀ n, (P5629022765713607626.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P13244112803664591889

`∩[A024898(n+1), A040177(n+1)]`
-/

namespace A158015.P13244112803664591889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P13244112803664591889

namespace A158015

/-- `∩[A024898(n+1), A040177(n+1)]` -/
def P13244112803664591889.Spec : Prop :=
  ∀ n, (P13244112803664591889.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P1991864166763461862

`∩[A024898(n+1), A040179(n+1)]`
-/

namespace A158015.P1991864166763461862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P1991864166763461862

namespace A158015

/-- `∩[A024898(n+1), A040179(n+1)]` -/
def P1991864166763461862.Spec : Prop :=
  ∀ n, (P1991864166763461862.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P10014599449990318675

`∩[A024898(n+1), A040184(n+1)]`
-/

namespace A158015.P10014599449990318675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P10014599449990318675

namespace A158015

/-- `∩[A024898(n+1), A040184(n+1)]` -/
def P10014599449990318675.Spec : Prop :=
  ∀ n, (P10014599449990318675.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P15808539543795253261

`∩[A024898(n+1), A040970(n+1)]`
-/

namespace A158015.P15808539543795253261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P15808539543795253261

namespace A158015

/-- `∩[A024898(n+1), A040970(n+1)]` -/
def P15808539543795253261.Spec : Prop :=
  ∀ n, (P15808539543795253261.a n : ℤ) = A158015 (n + 1)

end A158015

/-! ## A158015.P13606199904008656216

`∩[A024898(n+1), A040972(n+1)]`
-/

namespace A158015.P13606199904008656216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158015.P13606199904008656216

namespace A158015

/-- `∩[A024898(n+1), A040972(n+1)]` -/
def P13606199904008656216.Spec : Prop :=
  ∀ n, (P13606199904008656216.a n : ℤ) = A158015 (n + 1)

end A158015

/-!
# A158016: Primes p such that 8*p-1 is also prime.

The programs for A158016, the canonical program `A158016.P9281002551474068050` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158016 has offset 1).

The definition of A158016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158016.P9281002551474068050

`p?[A005122(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158016

/-- `p?[A005122(n+1)]` -/
def P9281002551474068050.Spec : Prop :=
  ∀ n, P9281002551474068050.a n = A158016 (n + 1)

theorem P9281002551474068050.correct : P9281002551474068050.Spec := by
  intro n
  simp only [A158016, Nat.add_sub_cancel]

end A158016

/-! ## A158016.P7088527165014899344

`p?[A139487(n+1)+1]`
-/

namespace A158016.P7088527165014899344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158016.P7088527165014899344

namespace A158016

/-- `p?[A139487(n+1)+1]` -/
def P7088527165014899344.Spec : Prop :=
  ∀ n, P7088527165014899344.a n = A158016 (n + 1)

end A158016

/-! ## A158016.P801546238713870152

`p?[A153766(n+1)-1]`
-/

namespace A158016.P801546238713870152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158016.P801546238713870152

namespace A158016

/-- `p?[A153766(n+1)-1]` -/
def P801546238713870152.Spec : Prop :=
  ∀ n, P801546238713870152.a n = A158016 (n + 1)

end A158016

/-! ## A158016.P17843255033453186180

`p?[ceil(A007522(n+1)/8)]`
-/

namespace A158016.P17843255033453186180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007522 (n + 1) : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158016.P17843255033453186180

namespace A158016

/-- `p?[ceil(A007522(n+1)/8)]` -/
def P17843255033453186180.Spec : Prop :=
  ∀ n, P17843255033453186180.a n = A158016 (n + 1)

end A158016

/-! ## A158016.P8947265770922330974

`p?[round(A045382(n+1)/8)]`
-/

namespace A158016.P8947265770922330974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045382 (n + 1) : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158016.P8947265770922330974

namespace A158016

/-- `p?[round(A045382(n+1)/8)]` -/
def P8947265770922330974.Spec : Prop :=
  ∀ n, P8947265770922330974.a n = A158016 (n + 1)

end A158016

/-! ## A158016.P17167348165684419594

`p?[ceil(A045382(n+2)/8)]`
-/

namespace A158016.P17167348165684419594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045382 (n + 2) : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158016.P17167348165684419594

namespace A158016

/-- `p?[ceil(A045382(n+2)/8)]` -/
def P17167348165684419594.Spec : Prop :=
  ∀ n, P17167348165684419594.a n = A158016 (n + 1)

end A158016

/-! ## A158016.P4146860052431271472

`record[A020639(A005122(n+2))]`
-/

namespace A158016.P4146860052431271472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005122 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158016.P4146860052431271472

namespace A158016

/-- `record[A020639(A005122(n+2))]` -/
def P4146860052431271472.Spec : Prop :=
  ∀ n, P4146860052431271472.a n = A158016 (n + 1)

end A158016

/-! ## A158016.P10427009074152105262

`filter[A005122(n+1), A010051(#)]`
-/

namespace A158016.P10427009074152105262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158016.P10427009074152105262

namespace A158016

/-- `filter[A005122(n+1), A010051(#)]` -/
def P10427009074152105262.Spec : Prop :=
  ∀ n, P10427009074152105262.a n = A158016 (n + 1)

end A158016

/-! ## A158016.P8507358264817353417

`record[A020639(A139487(n+2)+1)]`
-/

namespace A158016.P8507358264817353417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139487 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158016.P8507358264817353417

namespace A158016

/-- `record[A020639(A139487(n+2)+1)]` -/
def P8507358264817353417.Spec : Prop :=
  ∀ n, P8507358264817353417.a n = A158016 (n + 1)

end A158016

/-! ## A158016.P6574648532996694723

`∩[A000040(n+1), A005122(n+1)]`
-/

namespace A158016.P6574648532996694723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158016.P6574648532996694723

namespace A158016

/-- `∩[A000040(n+1), A005122(n+1)]` -/
def P6574648532996694723.Spec : Prop :=
  ∀ n, (P6574648532996694723.a n : ℤ) = A158016 (n + 1)

end A158016

/-! ## A158016.P14019933650712611298

`∩[A004139(n+1), A005122(n+1)]`
-/

namespace A158016.P14019933650712611298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158016.P14019933650712611298

namespace A158016

/-- `∩[A004139(n+1), A005122(n+1)]` -/
def P14019933650712611298.Spec : Prop :=
  ∀ n, (P14019933650712611298.a n : ℤ) = A158016 (n + 1)

end A158016

/-! ## A158016.P18319118679351760620

`∩[A005122(n+1), A007645(n+1)]`
-/

namespace A158016.P18319118679351760620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158016.P18319118679351760620

namespace A158016

/-- `∩[A005122(n+1), A007645(n+1)]` -/
def P18319118679351760620.Spec : Prop :=
  ∀ n, (P18319118679351760620.a n : ℤ) = A158016 (n + 1)

end A158016

/-! ## A158016.P13120964614645989944

`∩[A005122(n+1), A040116(n+1)]`
-/

namespace A158016.P13120964614645989944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158016.P13120964614645989944

namespace A158016

/-- `∩[A005122(n+1), A040116(n+1)]` -/
def P13120964614645989944.Spec : Prop :=
  ∀ n, (P13120964614645989944.a n : ℤ) = A158016 (n + 1)

end A158016

/-! ## A158016.P7205709785026659456

`∩[A005122(n+1), A042966(n+1)]`
-/

namespace A158016.P7205709785026659456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158016.P7205709785026659456

namespace A158016

/-- `∩[A005122(n+1), A042966(n+1)]` -/
def P7205709785026659456.Spec : Prop :=
  ∀ n, (P7205709785026659456.a n : ℤ) = A158016 (n + 1)

end A158016

/-! ## A158016.P17009135737286505074

`∩[A005122(n+1), A042997(n+1)]`
-/

namespace A158016.P17009135737286505074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158016.P17009135737286505074

namespace A158016

/-- `∩[A005122(n+1), A042997(n+1)]` -/
def P17009135737286505074.Spec : Prop :=
  ∀ n, (P17009135737286505074.a n : ℤ) = A158016 (n + 1)

end A158016

/-! ## A158016.P13720008676454761063

`∩[A005122(n+1), A045319(n+1)]`
-/

namespace A158016.P13720008676454761063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158016.P13720008676454761063

namespace A158016

/-- `∩[A005122(n+1), A045319(n+1)]` -/
def P13720008676454761063.Spec : Prop :=
  ∀ n, (P13720008676454761063.a n : ℤ) = A158016 (n + 1)

end A158016

/-! ## A158016.P49151274016529419

`∩[A005122(n+1), A045331(n+1)]`
-/

namespace A158016.P49151274016529419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158016.P49151274016529419

namespace A158016

/-- `∩[A005122(n+1), A045331(n+1)]` -/
def P49151274016529419.Spec : Prop :=
  ∀ n, (P49151274016529419.a n : ℤ) = A158016 (n + 1)

end A158016

/-! ## A158016.P6862648832768341156

`∩[A005122(n+1), A045405(n+1)]`
-/

namespace A158016.P6862648832768341156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158016.P6862648832768341156

namespace A158016

/-- `∩[A005122(n+1), A045405(n+1)]` -/
def P6862648832768341156.Spec : Prop :=
  ∀ n, (P6862648832768341156.a n : ℤ) = A158016 (n + 1)

end A158016

/-! ## A158016.P5048181340422842692

`∩[A005122(n+1), A045428(n+1)]`
-/

namespace A158016.P5048181340422842692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158016.P5048181340422842692

namespace A158016

/-- `∩[A005122(n+1), A045428(n+1)]` -/
def P5048181340422842692.Spec : Prop :=
  ∀ n, (P5048181340422842692.a n : ℤ) = A158016 (n + 1)

end A158016

/-!
# A158017: Primes p such that 10*p-1 is also prime.

The programs for A158017, the canonical program `A158017.P9242020065271411351` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158017 has offset 1).

The definition of A158017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158017.P9242020065271411351

`p?[A105042(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158017

/-- `p?[A105042(n+1)]` -/
def P9242020065271411351.Spec : Prop :=
  ∀ n, P9242020065271411351.a n = A158017 (n + 1)

theorem P9242020065271411351.correct : P9242020065271411351.Spec := by
  intro n
  simp only [A158017, Nat.add_sub_cancel]

end A158017

/-! ## A158017.P13593939447103517571

`p?[A102700(n+1)+1]`
-/

namespace A158017.P13593939447103517571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158017.P13593939447103517571

namespace A158017

/-- `p?[A102700(n+1)+1]` -/
def P13593939447103517571.Spec : Prop :=
  ∀ n, P13593939447103517571.a n = A158017 (n + 1)

end A158017

/-! ## A158017.P13923522431557442795

`record[A006530(A153355(n+1))]`
-/

namespace A158017.P13923522431557442795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153355 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158017.P13923522431557442795

namespace A158017

/-- `record[A006530(A153355(n+1))]` -/
def P13923522431557442795.Spec : Prop :=
  ∀ n, P13923522431557442795.a n = A158017 (n + 1)

end A158017

/-! ## A158017.P5661053105874033308

`record[A020639(A105042(n+3))]`
-/

namespace A158017.P5661053105874033308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A105042 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158017.P5661053105874033308

namespace A158017

/-- `record[A020639(A105042(n+3))]` -/
def P5661053105874033308.Spec : Prop :=
  ∀ n, P5661053105874033308.a n = A158017 (n + 1)

end A158017

/-! ## A158017.P3426451203832468219

`filter[A105042(n+1), A010051(#)]`
-/

namespace A158017.P3426451203832468219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158017.P3426451203832468219

namespace A158017

/-- `filter[A105042(n+1), A010051(#)]` -/
def P3426451203832468219.Spec : Prop :=
  ∀ n, P3426451203832468219.a n = A158017 (n + 1)

end A158017

/-! ## A158017.P7184223399618497460

`record[A006530(A024897(n+1)+1)]`
-/

namespace A158017.P7184223399618497460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024897 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158017.P7184223399618497460

namespace A158017

/-- `record[A006530(A024897(n+1)+1)]` -/
def P7184223399618497460.Spec : Prop :=
  ∀ n, P7184223399618497460.a n = A158017 (n + 1)

end A158017

/-! ## A158017.P17658911161675620982

`record[A006530(A102700(n+1)+1)]`
-/

namespace A158017.P17658911161675620982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102700 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158017.P17658911161675620982

namespace A158017

/-- `record[A006530(A102700(n+1)+1)]` -/
def P17658911161675620982.Spec : Prop :=
  ∀ n, P17658911161675620982.a n = A158017 (n + 1)

end A158017

/-! ## A158017.P8236198168617764387

`record[A020639(A102700(n+1)+1)]`
-/

namespace A158017.P8236198168617764387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A102700 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158017.P8236198168617764387

namespace A158017

/-- `record[A020639(A102700(n+1)+1)]` -/
def P8236198168617764387.Spec : Prop :=
  ∀ n, P8236198168617764387.a n = A158017 (n + 1)

end A158017

/-! ## A158017.P8965659913354359669

`∩[A000040(n+1), A105042(n+1)]`
-/

namespace A158017.P8965659913354359669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P8965659913354359669

namespace A158017

/-- `∩[A000040(n+1), A105042(n+1)]` -/
def P8965659913354359669.Spec : Prop :=
  ∀ n, (P8965659913354359669.a n : ℤ) = A158017 (n + 1)

end A158017

/-! ## A158017.P3396530901144898224

`∩[A008578(n+1), A105042(n+1)]`
-/

namespace A158017.P3396530901144898224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P3396530901144898224

namespace A158017

/-- `∩[A008578(n+1), A105042(n+1)]` -/
def P3396530901144898224.Spec : Prop :=
  ∀ n, (P3396530901144898224.a n : ℤ) = A158017 (n + 1)

end A158017

/-! ## A158017.P17247561137303470798

`∩[A025584(n+1), A105042(n+1)]`
-/

namespace A158017.P17247561137303470798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P17247561137303470798

namespace A158017

/-- `∩[A025584(n+1), A105042(n+1)]` -/
def P17247561137303470798.Spec : Prop :=
  ∀ n, (P17247561137303470798.a n : ℤ) = A158017 (n + 1)

end A158017

/-! ## A158017.P16228563581351131996

`∩[A040028(n+1), A105042(n+1)]`
-/

namespace A158017.P16228563581351131996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P16228563581351131996

namespace A158017

/-- `∩[A040028(n+1), A105042(n+1)]` -/
def P16228563581351131996.Spec : Prop :=
  ∀ n, (P16228563581351131996.a n : ℤ) = A158017 (n + 1)

end A158017

/-! ## A158017.P5823666802846001224

`∩[A040036(n+1), A105042(n+1)]`
-/

namespace A158017.P5823666802846001224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P5823666802846001224

namespace A158017

/-- `∩[A040036(n+1), A105042(n+1)]` -/
def P5823666802846001224.Spec : Prop :=
  ∀ n, (P5823666802846001224.a n : ℤ) = A158017 (n + 1)

end A158017

/-! ## A158017.P10938223528662668215

`∩[A040044(n+1), A105042(n+1)]`
-/

namespace A158017.P10938223528662668215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P10938223528662668215

namespace A158017

/-- `∩[A040044(n+1), A105042(n+1)]` -/
def P10938223528662668215.Spec : Prop :=
  ∀ n, (P10938223528662668215.a n : ℤ) = A158017 (n + 1)

end A158017

/-! ## A158017.P9646197776939685856

`∩[A040046(n+1), A105042(n+1)]`
-/

namespace A158017.P9646197776939685856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P9646197776939685856

namespace A158017

/-- `∩[A040046(n+1), A105042(n+1)]` -/
def P9646197776939685856.Spec : Prop :=
  ∀ n, (P9646197776939685856.a n : ℤ) = A158017 (n + 1)

end A158017

/-! ## A158017.P17102512468027613082

`∩[A040049(n+1), A105042(n+1)]`
-/

namespace A158017.P17102512468027613082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P17102512468027613082

namespace A158017

/-- `∩[A040049(n+1), A105042(n+1)]` -/
def P17102512468027613082.Spec : Prop :=
  ∀ n, (P17102512468027613082.a n : ℤ) = A158017 (n + 1)

end A158017

/-! ## A158017.P16242480784515930259

`∩[A040054(n+1), A105042(n+1)]`
-/

namespace A158017.P16242480784515930259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P16242480784515930259

namespace A158017

/-- `∩[A040054(n+1), A105042(n+1)]` -/
def P16242480784515930259.Spec : Prop :=
  ∀ n, (P16242480784515930259.a n : ℤ) = A158017 (n + 1)

end A158017

/-! ## A158017.P12181015495476310197

`∩[A040060(n+1), A105042(n+1)]`
-/

namespace A158017.P12181015495476310197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P12181015495476310197

namespace A158017

/-- `∩[A040060(n+1), A105042(n+1)]` -/
def P12181015495476310197.Spec : Prop :=
  ∀ n, (P12181015495476310197.a n : ℤ) = A158017 (n + 1)

end A158017

/-! ## A158017.P16623207602607778398

`∩[A040062(n+1), A105042(n+1)]`
-/

namespace A158017.P16623207602607778398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158017.P16623207602607778398

namespace A158017

/-- `∩[A040062(n+1), A105042(n+1)]` -/
def P16623207602607778398.Spec : Prop :=
  ∀ n, (P16623207602607778398.a n : ℤ) = A158017 (n + 1)

end A158017

/-!
# A158018: Primes p such that (p - 1)/12 is also prime.

The programs for A158018, the canonical program `A158018.P3768148225298653912` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158018 has offset 1).

The definition of A158018 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075704, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158018.P3768148225298653912

`12*A075704(n)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158018

/-- `12*A075704(n)+1` -/
def P3768148225298653912.Spec : Prop :=
  ∀ n, P3768148225298653912.a n = A158018 (n + 1)

theorem P3768148225298653912.correct : P3768148225298653912.Spec := by
  intro n
  simp only [A158018, Nat.add_sub_cancel]

end A158018

/-! ## A158018.P12597054545002999451

`p?[2*A138636(n+1)+1]`
-/

namespace A158018.P12597054545002999451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138636 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P12597054545002999451

namespace A158018

/-- `p?[2*A138636(n+1)+1]` -/
def P12597054545002999451.Spec : Prop :=
  ∀ n, P12597054545002999451.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P1970161941689828694

`p?[3*A001749(n+1)+1]`
-/

namespace A158018.P1970161941689828694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001749 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P1970161941689828694

namespace A158018

/-- `p?[3*A001749(n+1)+1]` -/
def P1970161941689828694.Spec : Prop :=
  ∀ n, P1970161941689828694.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P7869161801724791391

`p?[4*A001748(n+1)+1]`
-/

namespace A158018.P7869161801724791391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001748 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P7869161801724791391

namespace A158018

/-- `p?[4*A001748(n+1)+1]` -/
def P7869161801724791391.Spec : Prop :=
  ∀ n, P7869161801724791391.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P4177235881089164509

`p?[6*A100484(n+1)+1]`
-/

namespace A158018.P4177235881089164509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A100484 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P4177235881089164509

namespace A158018

/-- `p?[6*A100484(n+1)+1]` -/
def P4177235881089164509.Spec : Prop :=
  ∀ n, P4177235881089164509.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P132037091537772160

`p?[12*A000040(n+1)+1]`
-/

namespace A158018.P132037091537772160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P132037091537772160

namespace A158018

/-- `p?[12*A000040(n+1)+1]` -/
def P132037091537772160.Spec : Prop :=
  ∀ n, P132037091537772160.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P3006055402019743409

`p?[12*record[A006530(n+2)]+1]`
-/

namespace A158018.P3006055402019743409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P3006055402019743409

namespace A158018

/-- `p?[12*record[A006530(n+2)]+1]` -/
def P3006055402019743409.Spec : Prop :=
  ∀ n, P3006055402019743409.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P14419425604190857192

`p?[6*(A072055(n+1)-1)+1]`
-/

namespace A158018.P14419425604190857192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A072055 (n + 1) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P14419425604190857192

namespace A158018

/-- `p?[6*(A072055(n+1)-1)+1]` -/
def P14419425604190857192.Spec : Prop :=
  ∀ n, P14419425604190857192.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P8174446375958224123

`p?[12*(A008864(n+1)-1)+1]`
-/

namespace A158018.P8174446375958224123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A008864 (n + 1) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P8174446375958224123

namespace A158018

/-- `p?[12*(A008864(n+1)-1)+1]` -/
def P8174446375958224123.Spec : Prop :=
  ∀ n, P8174446375958224123.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P12186303519199307701

`p?[12*(A040976(n+1)+2)+1]`
-/

namespace A158018.P12186303519199307701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A040976 (n + 1) + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P12186303519199307701

namespace A158018

/-- `p?[12*(A040976(n+1)+2)+1]` -/
def P12186303519199307701.Spec : Prop :=
  ∀ n, P12186303519199307701.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P14350195467947456733

`p?[A017533(p?[2*n+1])]`
-/

namespace A158018.P14350195467947456733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P14350195467947456733

namespace A158018

/-- `p?[A017533(p?[2*n+1])]` -/
def P14350195467947456733.Spec : Prop :=
  ∀ n, P14350195467947456733.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P791732631243858608

`p?[12*record[A014963(n+2)]+1]`
-/

namespace A158018.P791732631243858608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P791732631243858608

namespace A158018

/-- `p?[12*record[A014963(n+2)]+1]` -/
def P791732631243858608.Spec : Prop :=
  ∀ n, P791732631243858608.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P6627716689036230381

`p?[char[A020639(n+2)]+12*n]`
-/

namespace A158018.P6627716689036230381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 12 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A158018.P6627716689036230381

namespace A158018

/-- `p?[char[A020639(n+2)]+12*n]` -/
def P6627716689036230381.Spec : Prop :=
  ∀ n, (P6627716689036230381.a n : ℤ) = A158018 (n + 1)

end A158018

/-! ## A158018.P2487678187892668768

`A017533(A075704(n))`
-/

namespace A158018.P2487678187892668768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A075704 n).toNat

end

end A158018.P2487678187892668768

namespace A158018

/-- `A017533(A075704(n))` -/
def P2487678187892668768.Spec : Prop :=
  ∀ n, P2487678187892668768.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P726953124286343929

`p?[A017533(A000040(n+1))]`
-/

namespace A158018.P726953124286343929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P726953124286343929

namespace A158018

/-- `p?[A017533(A000040(n+1))]` -/
def P726953124286343929.Spec : Prop :=
  ∀ n, P726953124286343929.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P4930574455978617592

`p?[A017533(A008578(n+2))]`
-/

namespace A158018.P4930574455978617592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P4930574455978617592

namespace A158018

/-- `p?[A017533(A008578(n+2))]` -/
def P4930574455978617592.Spec : Prop :=
  ∀ n, P4930574455978617592.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P14421850311941641331

`p?[A017545(p?[A004273(n)])-1]`
-/

namespace A158018.P14421850311941641331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P14421850311941641331

namespace A158018

/-- `p?[A017545(p?[A004273(n)])-1]` -/
def P14421850311941641331.Spec : Prop :=
  ∀ n, P14421850311941641331.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P13968329065063873698

`p?[A017653(A006093(n+1))+2]`
-/

namespace A158018.P13968329065063873698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (A006093 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P13968329065063873698

namespace A158018

/-- `p?[A017653(A006093(n+1))+2]` -/
def P13968329065063873698.Spec : Prop :=
  ∀ n, P13968329065063873698.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P14218557706973960055

`p?[A017653(A068499(n+1))+2]`
-/

namespace A158018.P14218557706973960055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (A068499 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158018.P14218557706973960055

namespace A158018

/-- `p?[A017653(A068499(n+1))+2]` -/
def P14218557706973960055.Spec : Prop :=
  ∀ n, P14218557706973960055.a n = A158018 (n + 1)

end A158018

/-! ## A158018.P10338064430620458838

`A016921(2*A075704(n))`
-/

namespace A158018.P10338064430620458838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (2 * A075704 n).toNat

end

end A158018.P10338064430620458838

namespace A158018

/-- `A016921(2*A075704(n))` -/
def P10338064430620458838.Spec : Prop :=
  ∀ n, P10338064430620458838.a n = A158018 (n + 1)

end A158018

/-!
# A158019: Numbers such that (n-1)/2 and 10*n-1 are both prime.

The programs for A158019, the canonical program `A158019.P16095416846168074272` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158019 has offset 1).

The definition of A158019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 805 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158019.P16095416846168074272

`∩[A072055(n+1), A105042(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A158019

/-- `∩[A072055(n+1), A105042(n+1)]` -/
def P16095416846168074272.Spec : Prop :=
  ∀ n, (P16095416846168074272.a n : ℤ) = A158019 (n + 1)

theorem P16095416846168074272.correct : P16095416846168074272.Spec := by
  intro n
  simp only [A158019, Nat.add_sub_cancel]

end A158019

/-! ## A158019.P13059570389125606455

`2*p?[A006370(A102700(n+1))]+1`
-/

namespace A158019.P13059570389125606455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A102700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A158019.P13059570389125606455

namespace A158019

/-- `2*p?[A006370(A102700(n+1))]+1` -/
def P13059570389125606455.Spec : Prop :=
  ∀ n, P13059570389125606455.a n = A158019 (n + 1)

end A158019

/-! ## A158019.P1667386433164981320

`2*p?[A029578(A102700(n+2))]+1`
-/

namespace A158019.P1667386433164981320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A102700 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A158019.P1667386433164981320

namespace A158019

/-- `2*p?[A029578(A102700(n+2))]+1` -/
def P1667386433164981320.Spec : Prop :=
  ∀ n, P1667386433164981320.a n = A158019 (n + 1)

end A158019

/-! ## A158019.P16928333722331855738

`A005408(p?[A006370(A102700(n+1))])`
-/

namespace A158019.P16928333722331855738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A102700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158019.P16928333722331855738

namespace A158019

/-- `A005408(p?[A006370(A102700(n+1))])` -/
def P16928333722331855738.Spec : Prop :=
  ∀ n, P16928333722331855738.a n = A158019 (n + 1)

end A158019

/-! ## A158019.P10062349250542761330

`A005408(p?[A029578(A102700(n+1))])`
-/

namespace A158019.P10062349250542761330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A102700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158019.P10062349250542761330

namespace A158019

/-- `A005408(p?[A029578(A102700(n+1))])` -/
def P10062349250542761330.Spec : Prop :=
  ∀ n, P10062349250542761330.a n = A158019 (n + 1)

end A158019

/-! ## A158019.P8484002384820795675

`A005408(p?[A057979(A105042(n+1))])`
-/

namespace A158019.P8484002384820795675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A105042 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158019.P8484002384820795675

namespace A158019

/-- `A005408(p?[A057979(A105042(n+1))])` -/
def P8484002384820795675.Spec : Prop :=
  ∀ n, P8484002384820795675.a n = A158019 (n + 1)

end A158019

/-! ## A158019.P13640992298873974419

`A005408(p?[A097140(A102700(n+1))])`
-/

namespace A158019.P13640992298873974419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A102700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158019.P13640992298873974419

namespace A158019

/-- `A005408(p?[A097140(A102700(n+1))])` -/
def P13640992298873974419.Spec : Prop :=
  ∀ n, P13640992298873974419.a n = A158019 (n + 1)

end A158019

/-! ## A158019.P14366479272629835538

`A005408(p?[A142150(A102700(n+1))])`
-/

namespace A158019.P14366479272629835538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A102700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158019.P14366479272629835538

namespace A158019

/-- `A005408(p?[A142150(A102700(n+1))])` -/
def P14366479272629835538.Spec : Prop :=
  ∀ n, P14366479272629835538.a n = A158019 (n + 1)

end A158019

/-!
# A158020: Triangle of coefficients in expansion of (-1-x)^floor(n/2)(1-x)^ceiling(n/2).

The programs for A158020, the canonical program `A158020.P16120457712402033176` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158020 has offset 0).

The definition of A158020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158020.P16120457712402033176

`A033999(A083920(n))*A051160(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A158020

/-- `A033999(A083920(n))*A051160(n)` -/
def P16120457712402033176.Spec : Prop :=
  ∀ n, P16120457712402033176.a n = A158020 n

theorem P16120457712402033176.correct : P16120457712402033176.Spec := by
  intro n
  simp only [A158020]

end A158020

/-! ## A158020.P13941953156313083786

`A033999(A061579(n))*A051160(n)`
-/

namespace A158020.P13941953156313083786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061579 n).toNat * A051160 n

end

end A158020.P13941953156313083786

namespace A158020

/-- `A033999(A061579(n))*A051160(n)` -/
def P13941953156313083786.Spec : Prop :=
  ∀ n, P13941953156313083786.a n = A158020 n

end A158020

/-! ## A158020.P767829071337097827

`A051160(n)*A062157(A038722(n+1))`
-/

namespace A158020.P767829071337097827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051160 n * A062157 (A038722 (n + 1)).toNat

end

end A158020.P767829071337097827

namespace A158020

/-- `A051160(n)*A062157(A038722(n+1))` -/
def P767829071337097827.Spec : Prop :=
  ∀ n, P767829071337097827.a n = A158020 n

end A158020

/-! ## A158020.P9799859115408419475

`A051160(A061579(n))/A033999(A002262(n))`
-/

namespace A158020.P9799859115408419475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051160 (A061579 n).toNat : ℚ) / (A033999 (A002262 n).toNat : ℚ)

end

end A158020.P9799859115408419475

namespace A158020

/-- `A051160(A061579(n))/A033999(A002262(n))` -/
def P9799859115408419475.Spec : Prop :=
  ∀ n, P9799859115408419475.a n = (A158020 n : ℚ)

end A158020

/-! ## A158020.P11101100700026341757

`A033999(A061579(n))*A259875(A056537(n+1))`
-/

namespace A158020.P11101100700026341757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061579 n).toNat * A259875 (A056537 (n + 1)).toNat

end

end A158020.P11101100700026341757

namespace A158020

/-- `A033999(A061579(n))*A259875(A056537(n+1))` -/
def P11101100700026341757.Spec : Prop :=
  ∀ n, P11101100700026341757.a n = A158020 n

end A158020

/-!
# A158021: Primes such that p, 10*p-1 and (p-1)/2 are all prime.

The programs for A158021, the canonical program `A158021.P9448806863383179494` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158021 has offset 1).

The definition of A158021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158021.P3398565991458024721

`∩[A005385(n+1), A158017(n+1)]`
-/

namespace A158021.P3398565991458024721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P3398565991458024721

namespace A158021

/-- `∩[A005385(n+1), A158017(n+1)]` -/
def P3398565991458024721.Spec : Prop :=
  ∀ n, (P3398565991458024721.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P9448806863383179494

`∩[A065966(n+1), A158017(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A158021

/-- `∩[A065966(n+1), A158017(n+1)]` -/
def P9448806863383179494.Spec : Prop :=
  ∀ n, (P9448806863383179494.a n : ℤ) = A158021 (n + 1)

theorem P9448806863383179494.correct : P9448806863383179494.Spec := by
  intro n
  simp only [A158021, Nat.add_sub_cancel]

end A158021

/-! ## A158021.P4001787377577300954

`∩[A005385(n+1), A158019(n+1)]`
-/

namespace A158021.P4001787377577300954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P4001787377577300954

namespace A158021

/-- `∩[A005385(n+1), A158019(n+1)]` -/
def P4001787377577300954.Spec : Prop :=
  ∀ n, (P4001787377577300954.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P297737082996053964

`∩[A048184(n+1), A158019(n+1)]`
-/

namespace A158021.P297737082996053964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P297737082996053964

namespace A158021

/-- `∩[A048184(n+1), A158019(n+1)]` -/
def P297737082996053964.Spec : Prop :=
  ∀ n, (P297737082996053964.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P13778812968431558909

`∩[A058500(n+1), A158019(n+1)]`
-/

namespace A158021.P13778812968431558909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P13778812968431558909

namespace A158021

/-- `∩[A058500(n+1), A158019(n+1)]` -/
def P13778812968431558909.Spec : Prop :=
  ∀ n, (P13778812968431558909.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P14022517463480492974

`∩[A065966(n+1), A158019(n+1)]`
-/

namespace A158021.P14022517463480492974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P14022517463480492974

namespace A158021

/-- `∩[A065966(n+1), A158019(n+1)]` -/
def P14022517463480492974.Spec : Prop :=
  ∀ n, (P14022517463480492974.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P9124802941700069011

`∩[A067466(n+1), A158019(n+1)]`
-/

namespace A158021.P9124802941700069011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P9124802941700069011

namespace A158021

/-- `∩[A067466(n+1), A158019(n+1)]` -/
def P9124802941700069011.Spec : Prop :=
  ∀ n, (P9124802941700069011.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P15861159116428750713

`∩[A074781(n+1), A158019(n+1)]`
-/

namespace A158021.P15861159116428750713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P15861159116428750713

namespace A158021

/-- `∩[A074781(n+1), A158019(n+1)]` -/
def P15861159116428750713.Spec : Prop :=
  ∀ n, (P15861159116428750713.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P13922590574475095323

`∩[A077500(n+1), A158019(n+1)]`
-/

namespace A158021.P13922590574475095323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P13922590574475095323

namespace A158021

/-- `∩[A077500(n+1), A158019(n+1)]` -/
def P13922590574475095323.Spec : Prop :=
  ∀ n, (P13922590574475095323.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P13074099749051975476

`∩[A079148(n+1), A158019(n+1)]`
-/

namespace A158021.P13074099749051975476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P13074099749051975476

namespace A158021

/-- `∩[A079148(n+1), A158019(n+1)]` -/
def P13074099749051975476.Spec : Prop :=
  ∀ n, (P13074099749051975476.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P14775569881524540183

`∩[A079149(n+1), A158019(n+1)]`
-/

namespace A158021.P14775569881524540183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P14775569881524540183

namespace A158021

/-- `∩[A079149(n+1), A158019(n+1)]` -/
def P14775569881524540183.Spec : Prop :=
  ∀ n, (P14775569881524540183.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P16155301081631367070

`∩[A084441(n+1), A158019(n+1)]`
-/

namespace A158021.P16155301081631367070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P16155301081631367070

namespace A158021

/-- `∩[A084441(n+1), A158019(n+1)]` -/
def P16155301081631367070.Spec : Prop :=
  ∀ n, (P16155301081631367070.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P126481961373221353

`∩[A090865(n+1), A158019(n+1)]`
-/

namespace A158021.P126481961373221353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P126481961373221353

namespace A158021

/-- `∩[A090865(n+1), A158019(n+1)]` -/
def P126481961373221353.Spec : Prop :=
  ∀ n, (P126481961373221353.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P4058402904062469921

`∩[A103203(n+1), A158019(n+1)]`
-/

namespace A158021.P4058402904062469921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P4058402904062469921

namespace A158021

/-- `∩[A103203(n+1), A158019(n+1)]` -/
def P4058402904062469921.Spec : Prop :=
  ∀ n, (P4058402904062469921.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P668954038398419013

`∩[A158017(n+1), A158019(n+1)]`
-/

namespace A158021.P668954038398419013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P668954038398419013

namespace A158021

/-- `∩[A158017(n+1), A158019(n+1)]` -/
def P668954038398419013.Spec : Prop :=
  ∀ n, (P668954038398419013.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P15597892316750870700

`∩[A158019(n+1), A161897(n+1)]`
-/

namespace A158021.P15597892316750870700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P15597892316750870700

namespace A158021

/-- `∩[A158019(n+1), A161897(n+1)]` -/
def P15597892316750870700.Spec : Prop :=
  ∀ n, (P15597892316750870700.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P8196571926327409318

`∩[A158019(n+1), A167609(n+1)]`
-/

namespace A158021.P8196571926327409318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P8196571926327409318

namespace A158021

/-- `∩[A158019(n+1), A167609(n+1)]` -/
def P8196571926327409318.Spec : Prop :=
  ∀ n, (P8196571926327409318.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P13373425346686837075

`∩[A158019(n+1), A175625(n+1)]`
-/

namespace A158021.P13373425346686837075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P13373425346686837075

namespace A158021

/-- `∩[A158019(n+1), A175625(n+1)]` -/
def P13373425346686837075.Spec : Prop :=
  ∀ n, (P13373425346686837075.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P16441845889179676706

`∩[A158019(n+1), A175942(n+1)]`
-/

namespace A158021.P16441845889179676706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P16441845889179676706

namespace A158021

/-- `∩[A158019(n+1), A175942(n+1)]` -/
def P16441845889179676706.Spec : Prop :=
  ∀ n, (P16441845889179676706.a n : ℤ) = A158021 (n + 1)

end A158021

/-! ## A158021.P10640529024555629487

`∩[A294074(n+1), A158019(n+1)]`
-/

namespace A158021.P10640529024555629487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P10640529024555629487

namespace A158021

/-- `∩[A294074(n+1), A158019(n+1)]` -/
def P10640529024555629487.Spec : Prop :=
  ∀ n, (P10640529024555629487.a n : ℤ) = A158021 (n + 1)

end A158021

/-!
# A158022: Integers k such that all the digits needed to write the consecutive nonnegative integers from 0 to k fill exactly a square (no holes, no overlaps).

The programs for A158022, there is no canonical definition to state claims against.
-/

/-! ## A158022.P5639752961583110845

`eq[0, A053188(A117804(n+1))]`
-/

namespace A158022.P5639752961583110845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A117804 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158022.P5639752961583110845

/-! ## A158022.P16912913798584036853

`lt[A000007(n), A000122(A117804(n+1))]`
-/

namespace A158022.P16912913798584036853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A117804 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158022.P16912913798584036853

/-! ## A158022.P14498374520874041141

`lt[A000035(n), A000122(A117804(n+1))]`
-/

namespace A158022.P14498374520874041141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A117804 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158022.P14498374520874041141

/-! ## A158022.P7993840258630018198

`lt[A010052(n), A000122(A117804(n+1))]`
-/

namespace A158022.P7993840258630018198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A117804 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158022.P7993840258630018198

/-! ## A158022.P898727805437617347

`lt[A057427(n), A000122(A117804(n+1))]`
-/

namespace A158022.P898727805437617347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A117804 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158022.P898727805437617347

/-!
# A158023: Sides of squares which are filled exactly (no holes, no overlaps) by the digits needed to write a subsequence of consecutive nonnegative integers starting with 0.

The programs for A158023, there is no canonical definition to state claims against.
-/

/-! ## A158023.P9555773878218686749

`sqrt(∩[A117804(n+1), n²])`
-/

namespace A158023.P9555773878218686749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A158023.P9555773878218686749

/-! ## A158023.P6553407930709206996

`record[A037213(A117804(n+1))]`
-/

namespace A158023.P6553407930709206996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A117804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158023.P6553407930709206996

/-! ## A158023.P16242321851647417223

`∑[A040001(A016778(n)%A032555(n+1))]`
-/

namespace A158023.P16242321851647417223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Int.tmod (A016778 n) (A032555 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158023.P16242321851647417223

/-! ## A158023.P18419585930530822200

`∑[A014709(A228693(n)+18)]`
-/

namespace A158023.P18419585930530822200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A228693 n + 18).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158023.P18419585930530822200

/-! ## A158023.P11795984015568607081

`∑[A355741(A097856(2*(n+1)))]`
-/

namespace A158023.P11795984015568607081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A097856 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158023.P11795984015568607081

/-!
# A158024: Primes p such that all the digits needed to write the consecutive Primes from 2 to p fill exactly a square (no holes, no overlaps).

The programs for A158024, there is no canonical definition to state claims against.
-/

/-! ## A158024.P7564393093058561220

`p?[∑[A317056(A029023(n))]]`
-/

namespace A158024.P7564393093058561220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317056 (A029023 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158024.P7564393093058561220

/-! ## A158024.P3436876112996209186

`p?[A325337(A163059(n+1))]`
-/

namespace A158024.P3436876112996209186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (A163059 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158024.P3436876112996209186

/-!
# A158025: Sides of squares which are filled exactly (no holes, no overlaps) by the digits needed to write a subsequence of consecutive Primes starting with 2.

The programs for A158025, there is no canonical definition to state claims against.
-/

/-! ## A158025.P4833132912525727602

`sqrt(∩[A068670(n+1), n²])`
-/

namespace A158025.P4833132912525727602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A158025.P4833132912525727602

/-! ## A158025.P18362857689470650979

`∑[gcd(2, ∑[A116629(n+1)])]`
-/

namespace A158025.P18362857689470650979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116629 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158025.P18362857689470650979

/-! ## A158025.P13335760640415075213

`∑[A182617(3*n)%2+1]`
-/

namespace A158025.P13335760640415075213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182617 (3 * n)) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158025.P13335760640415075213

/-! ## A158025.P10567443072571377134

`A101605(2^n)+comp[3*n]`
-/

namespace A158025.P10567443072571377134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (2 ^ n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A158025.P10567443072571377134

/-! ## A158025.P1714871326042684538

`lt[A211798(3*(n+1)), lcm(45, n)]`
-/

namespace A158025.P1714871326042684538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211798 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 45 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158025.P1714871326042684538

/-!
# A158026: Fibonacci numbers f such that all the digits needed to write the consecutive Fibonacci numbers from 0 to f fill exactly a square (no holes, no overlaps).

The programs for A158026, there is no canonical definition to state claims against.
-/

/-! ## A158026.P14203168141579272045

`A212804(Δ[A324697(2^n)])`
-/

namespace A158026.P14203168141579272045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (f1 (n + 1) - f1 n).toNat

end

end A158026.P14203168141579272045

/-!
# A158028: Square numbers s such that all the digits needed to write the consecutive square numbers from 0 to s fill exactly a square (no holes, no overlaps).

The programs for A158028, there is no canonical definition to state claims against.
-/

/-! ## A158028.P14351664646188460258

`(3-A175039(∑[n+2]))²`
-/

namespace A158028.P14351664646188460258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A175039 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A158028.P14351664646188460258

/-! ## A158028.P16488053760511424751

`A086520(Δ[A309336(n)])²`
-/

namespace A158028.P16488053760511424751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A158028.P16488053760511424751

/-!
# A158029: Sides of squares which are filled exactly (no holes, no overlaps) by the digits needed to write a subsequence of consecutive square numbers, starting with 0.

The programs for A158029, there is no canonical definition to state claims against.
-/

/-! ## A158029.P11579387666394599638

`∑[A296150(A339849(2*comp[n²]))]`
-/

namespace A158029.P11579387666394599638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A339849 (2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158029.P11579387666394599638

/-! ## A158029.P10233499159817198890

`lt[A000041(2*n), A061554(A345912(n+1))]`
-/

namespace A158029.P10233499159817198890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A345912 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158029.P10233499159817198890

/-! ## A158029.P6136086511701500002

`∑[gcd(A003462(n), A008526(n))]`
-/

namespace A158029.P6136086511701500002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003462 n) (A008526 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158029.P6136086511701500002

/-! ## A158029.P459672032288129864

`∑[gcd(A361198(n+1), A361220(n+1))]`
-/

namespace A158029.P459672032288129864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A361198 (n + 1)) (A361220 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158029.P459672032288129864

/-!
# A158030: Triangular numbers t such that all the digits needed to write the consecutive triangular numbers from 0 to t fill exactly an equilateral triangle (no holes, no overlaps).

The programs for A158030, there is no canonical definition to state claims against.
-/

/-! ## A158030.P7273082093283178381

`eq[A010054(n), A247503(A191711(n+1))]`
-/

namespace A158030.P7273082093283178381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A191711 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158030.P7273082093283178381

/-! ## A158030.P18086854941161613278

`eq[A172431(n+1), A247503(A191711(n+1))]`
-/

namespace A158030.P18086854941161613278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A191711 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158030.P18086854941161613278

/-!
# A158032: Coefficients of the polynomial from factoring (x^167+1)/(x+1) modulo 2 gives: p(x)=1 + x + x^4 + x^6 + x^8 + x^10 + x^12 + x^13 + x^17 + x^19 + x^23 + x^24 + x^25 + x^26 + x^27 + x^29 + x^31 + x^32 + x^33 + x^35 + x^36 + x^40 + x^42 + x^45 + x^46 + x^47 + x^49 + x^50 + x^52 + x^53 + x^56 + x^59 + x^60 + x^62 + x^64 + x^67 + x^70 + x^71 + x^73 + x^76 + x^78 + x^81 + x^83.

The programs for A158032, there is no canonical definition to state claims against.
-/

/-! ## A158032.P15197145224167239550

`A170963(n+3)-A170963(A242474(n+5))`
-/

namespace A158032.P15197145224167239550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170963 (n + 3) - A170963 (A242474 (n + 5)).toNat

end

end A158032.P15197145224167239550

/-! ## A158032.P1466691304968135964

`A008682(A032766(n))-A029260(A187829(n+1))`
-/

namespace A158032.P1466691304968135964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (A032766 n).toNat - A029260 (A187829 (n + 1)).toNat

end

end A158032.P1466691304968135964

/-! ## A158032.P4723322348366760335

`(-1)^∑[n]-A014093(A077168(n))`
-/

namespace A158032.P4723322348366760335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) - A014093 (A077168 n).toNat

end

end A158032.P4723322348366760335

/-!
# A158033: a(n) = sigma_(Fibonacci(n)) (n).

The programs for A158033, there is no canonical definition to state claims against.
-/

/-! ## A158033.P12257247081568965471

`∑{d}[n+1, #^A000045(n+1)]`
-/

namespace A158033.P12257247081568965471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000045 (n + 1) : ℤ)

end

end A158033.P12257247081568965471

/-! ## A158033.P8558408723867214258

`∑{d}[n+1, #^A132634(n+1)]`
-/

namespace A158033.P8558408723867214258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A132634 (n + 1) : ℤ)

end

end A158033.P8558408723867214258

/-! ## A158033.P17337043092669988060

`∑{d}[n+1, #^A212804(n+2)]`
-/

namespace A158033.P17337043092669988060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A212804 (n + 2) : ℤ)

end

end A158033.P17337043092669988060

/-! ## A158033.P13772148227684595004

`∑{d}[xor(n, -1), #^A079977(2*n)]`
-/

namespace A158033.P13772148227684595004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A079977 (2 * n) : ℤ)

end

end A158033.P13772148227684595004

/-! ## A158033.P6866745827232234552

`∑{d}[A132031(n+1), #^A217737(n+1)]`
-/

namespace A158033.P6866745827232234552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132031 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A217737 (n + 1) : ℤ)

end

end A158033.P6866745827232234552

/-!
# A158034: Integers n for which f = (4^n - 2^n + 8n^2 - 2) / (2n * (2n + 1)) is an integer.

The programs for A158034, there is no canonical definition to state claims against.
-/

/-! ## A158034.P16233699494152460514

`floor(A158035(n+1)/2)`
-/

namespace A158034.P16233699494152460514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158035 (n + 1) : ℚ) / 2⌋

end

end A158034.P16233699494152460514

/-! ## A158034.P3236667009995450736

`A000265((A158035(n+1)-1)/2)`
-/

namespace A158034.P3236667009995450736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A158035 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A158034.P3236667009995450736

/-! ## A158034.P11693289630725898644

`A000265(A158035(n+1)-1)`
-/

namespace A158034.P11693289630725898644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A158035 (n + 1) - 1).toNat

end

end A158034.P11693289630725898644

/-! ## A158034.P5417083614414255580

`A014682(A158035(n+1)-1)`
-/

namespace A158034.P5417083614414255580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A158035 (n + 1) - 1).toNat

end

end A158034.P5417083614414255580

/-! ## A158034.P16817478310741671878

`A000265(xor(1, A158035(n+1)))`
-/

namespace A158034.P16817478310741671878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (A158035 (n + 1))).toNat

end

end A158034.P16817478310741671878

/-! ## A158034.P16919201274896228291

`A014682(xor(1, A158035(n+1)))`
-/

namespace A158034.P16919201274896228291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A158035 (n + 1))).toNat

end

end A158034.P16919201274896228291

/-! ## A158034.P13635418572380450608

`A000265(A000010(A158035(n+1)))`
-/

namespace A158034.P13635418572380450608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000010 (A158035 (n + 1)).toNat).toNat

end

end A158034.P13635418572380450608

/-! ## A158034.P2560990866867900321

`A000010(A158035(n+1))/A078311(A028234(n+1))`
-/

namespace A158034.P2560990866867900321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A158035 (n + 1)).toNat : ℚ) / (A078311 (A028234 (n + 1)).toNat : ℚ)

end

end A158034.P2560990866867900321

/-! ## A158034.P8005181416721483723

`A302792(A158035(n+1)-1)`
-/

namespace A158034.P8005181416721483723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A158035 (n + 1) - 1).toNat

end

end A158034.P8005181416721483723

/-! ## A158034.P8761277210377719263

`A302792(xor(1, A158035(n+1)))`
-/

namespace A158034.P8761277210377719263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (Int.xor 1 (A158035 (n + 1))).toNat

end

end A158034.P8761277210377719263

/-!
# A158035: a(n) = 2*A158034(n) + 1, prime numbers p for which f = (2^p - 2^((p - 1) / 2 + 1) + 4p^2 - 8p) / (2p^2 - 2p) is an integer.

The programs for A158035, there is no canonical definition to state claims against.
-/

/-! ## A158035.P2392730382162524624

`2*A158034(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158035.P2392730382162524624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158034 (n + 1) + 1

end

end A158035.P2392730382162524624

/-! ## A158035.P18250806248113755189

`A000265(A158034(n+1)+A158034(n+1)+1)`
-/

namespace A158035.P18250806248113755189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A158034 (n + 1) + (A158034 (n + 1) + 1)).toNat

end

end A158035.P18250806248113755189

/-! ## A158035.P14992528751392994377

`A006530(A158034(n+1)+A158034(n+1)+1)`
-/

namespace A158035.P14992528751392994377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158034 (n + 1) + (A158034 (n + 1) + 1)).toNat

end

end A158035.P14992528751392994377

/-! ## A158035.P10235455674469093503

`A020639(A158034(n+1)+A158034(n+1)+1)`
-/

namespace A158035.P10235455674469093503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158034 (n + 1) + (A158034 (n + 1) + 1)).toNat

end

end A158035.P10235455674469093503

/-! ## A158035.P643017859817025231

`A000203(A158034(n+1)+A158034(n+1)+1)-1`
-/

namespace A158035.P643017859817025231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A158034 (n + 1) + A158034 (n + 1) + 1).toNat - 1

end

end A158035.P643017859817025231

/-! ## A158035.P4679725782841147360

`A014601(A158034(n+1))`
-/

namespace A158035.P4679725782841147360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A158034 (n + 1)).toNat

end

end A158035.P4679725782841147360

/-! ## A158035.P15150131684983650156

`A014963(A158034(n+1)+A158034(n+1)+1)`
-/

namespace A158035.P15150131684983650156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A158034 (n + 1) + (A158034 (n + 1) + 1)).toNat

end

end A158035.P15150131684983650156

/-!
# A158037: A106044 sorted and duplicates removed.

The programs for A158037, there is no canonical definition to state claims against.
-/

/-! ## A158037.P945370821580431677

`comp[(n%n!)²]`
-/

namespace A158037.P945370821580431677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % Nat.factorial n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A158037.P945370821580431677

/-! ## A158037.P7568912590659674711

`comp[floor(3*sqrt(n))²]`
-/

namespace A158037.P7568912590659674711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * Real.sqrt (n : ℝ)⌋ ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158037.P7568912590659674711

/-! ## A158037.P15748511013894190772

`∪[∑[3^n], comp[n²]]`
-/

namespace A158037.P15748511013894190772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A158037.P15748511013894190772

/-! ## A158037.P916249764636277834

`comp[(n+2)*or(4, n)]+1`
-/

namespace A158037.P916249764636277834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.lor 4 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A158037.P916249764636277834

/-! ## A158037.P6240047182800549029

`comp[record[(3-n)²]-1]+1`
-/

namespace A158037.P6240047182800549029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A158037.P6240047182800549029

/-! ## A158037.P2932385925959378769

`lt[char[(n+3)²], acot(n-1)]`
-/

namespace A158037.P2932385925959378769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f3 j) n

end

end A158037.P2932385925959378769

/-! ## A158037.P5382427806810154782

`lt[∏{d}[n, #-(n-1)], n+1]`
-/

namespace A158037.P5382427806810154782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), ((d : ℤ) - ((n : ℤ) - 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A158037.P5382427806810154782

/-! ## A158037.P10924755766803356957

`eq[A037213(n), A364055(n)]`
-/

namespace A158037.P10924755766803356957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158037.P10924755766803356957

/-!
# A158038: Difference between n-th prime and next cube.

The programs for A158038, the canonical program `A158038.P9757458246362349300` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158038 has offset 1).

The definition of A158038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158038.P9757458246362349300

`A333884(A000040(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158038

/-- `A333884(A000040(n+1))` -/
def P9757458246362349300.Spec : Prop :=
  ∀ n, P9757458246362349300.a n = A158038 (n + 1)

theorem P9757458246362349300.correct : P9757458246362349300.Spec := by
  intro n
  simp only [A158038, Nat.add_sub_cancel]

end A158038

/-! ## A158038.P6547031431076576343

`A333884(A008578(n+2))`
-/

namespace A158038.P6547031431076576343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A008578 (n + 2)).toNat

end

end A158038.P6547031431076576343

namespace A158038

/-- `A333884(A008578(n+2))` -/
def P6547031431076576343.Spec : Prop :=
  ∀ n, P6547031431076576343.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P18001868782216484811

`A333884(A182986(n+2))`
-/

namespace A158038.P18001868782216484811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A182986 (n + 2)).toNat

end

end A158038.P18001868782216484811

namespace A158038

/-- `A333884(A182986(n+2))` -/
def P18001868782216484811.Spec : Prop :=
  ∀ n, P18001868782216484811.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P4770295374305787713

`A333884(eq[1, A003415(n)])`
-/

namespace A158038.P4770295374305787713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A158038.P4770295374305787713

namespace A158038

/-- `A333884(eq[1, A003415(n)])` -/
def P4770295374305787713.Spec : Prop :=
  ∀ n, P4770295374305787713.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P10830226112628191898

`A333884(sqrt(A001248(n+1)))`
-/

namespace A158038.P10830226112628191898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A158038.P10830226112628191898

namespace A158038

/-- `A333884(sqrt(A001248(n+1)))` -/
def P10830226112628191898.Spec : Prop :=
  ∀ n, P10830226112628191898.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P93746648784849361

`A333884(record[A006530(n+2)])`
-/

namespace A158038.P93746648784849361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158038.P93746648784849361

namespace A158038

/-- `A333884(record[A006530(n+2)])` -/
def P93746648784849361.Spec : Prop :=
  ∀ n, P93746648784849361.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P1251636515471625529

`A333884(record[A014963(n+2)])`
-/

namespace A158038.P1251636515471625529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158038.P1251636515471625529

namespace A158038

/-- `A333884(record[A014963(n+2)])` -/
def P1251636515471625529.Spec : Prop :=
  ∀ n, P1251636515471625529.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P6053742021740325482

`A333884(record[A020639(n+2)])`
-/

namespace A158038.P6053742021740325482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158038.P6053742021740325482

namespace A158038

/-- `A333884(record[A020639(n+2)])` -/
def P6053742021740325482.Spec : Prop :=
  ∀ n, P6053742021740325482.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P16290689703871523518

`A333884(p?[A175787(n+1)])`
-/

namespace A158038.P16290689703871523518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158038.P16290689703871523518

namespace A158038

/-- `A333884(p?[A175787(n+1)])` -/
def P16290689703871523518.Spec : Prop :=
  ∀ n, P16290689703871523518.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P17391361854616141855

`A333884(eq[1, A053989(n+1)])`
-/

namespace A158038.P17391361854616141855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A158038.P17391361854616141855

namespace A158038

/-- `A333884(eq[1, A053989(n+1)])` -/
def P17391361854616141855.Spec : Prop :=
  ∀ n, P17391361854616141855.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P14766417530413025569

`A333884(eq[1, A010051(n+1)]+1)`
-/

namespace A158038.P14766417530413025569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A158038.P14766417530413025569

namespace A158038

/-- `A333884(eq[1, A010051(n+1)]+1)` -/
def P14766417530413025569.Spec : Prop :=
  ∀ n, P14766417530413025569.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P2815996075870280551

`A145446(n+1)-A000040(n+1)`
-/

namespace A158038.P2815996075870280551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145446 (n + 1) - A000040 (n + 1)

end

end A158038.P2815996075870280551

namespace A158038

/-- `A145446(n+1)-A000040(n+1)` -/
def P2815996075870280551.Spec : Prop :=
  ∀ n, P2815996075870280551.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P3847141336626947130

`A333884(A033286(n+1)/(n+1))`
-/

namespace A158038.P3847141336626947130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (SequenceMachineLib.roundAway ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A158038.P3847141336626947130

namespace A158038

/-- `A333884(A033286(n+1)/(n+1))` -/
def P3847141336626947130.Spec : Prop :=
  ∀ n, P3847141336626947130.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P18173740953217751917

`A145446(n+1)-record[A093074(n+1)]`
-/

namespace A158038.P18173740953217751917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145446 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158038.P18173740953217751917

namespace A158038

/-- `A145446(n+1)-record[A093074(n+1)]` -/
def P18173740953217751917.Spec : Prop :=
  ∀ n, P18173740953217751917.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P3305755638217355246

`A048763(p?[A000040(n+1)])-A000040(n+1)`
-/

namespace A158038.P3305755638217355246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A000040 (n + 1)

end

end A158038.P3305755638217355246

namespace A158038

/-- `A048763(p?[A000040(n+1)])-A000040(n+1)` -/
def P3305755638217355246.Spec : Prop :=
  ∀ n, P3305755638217355246.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P3632437030463883156

`A048763(A000040(n+1)+1)-A000040(n+1)`
-/

namespace A158038.P3632437030463883156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A000040 (n + 1) + 1).toNat - A000040 (n + 1)

end

end A158038.P3632437030463883156

namespace A158038

/-- `A048763(A000040(n+1)+1)-A000040(n+1)` -/
def P3632437030463883156.Spec : Prop :=
  ∀ n, P3632437030463883156.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P859909280434369607

`A048763(A008864(n+1))+1-A008864(n+1)`
-/

namespace A158038.P859909280434369607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A008864 (n + 1)).toNat + (1 - A008864 (n + 1))

end

end A158038.P859909280434369607

namespace A158038

/-- `A048763(A008864(n+1))+1-A008864(n+1)` -/
def P859909280434369607.Spec : Prop :=
  ∀ n, P859909280434369607.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P7138628647416348870

`A145445(n+1)+A145446(n+1)-A229067(n+1)`
-/

namespace A158038.P7138628647416348870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145445 (n + 1) + (A145446 (n + 1) - A229067 (n + 1))

end

end A158038.P7138628647416348870

namespace A158038

/-- `A145445(n+1)+A145446(n+1)-A229067(n+1)` -/
def P7138628647416348870.Spec : Prop :=
  ∀ n, P7138628647416348870.a n = A158038 (n + 1)

end A158038

/-! ## A158038.P9688357538896053249

`A333884(A006530(A033286(n+1)))`
-/

namespace A158038.P9688357538896053249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A006530 (A033286 (n + 1)).toNat).toNat

end

end A158038.P9688357538896053249

namespace A158038

/-- `A333884(A006530(A033286(n+1)))` -/
def P9688357538896053249.Spec : Prop :=
  ∀ n, P9688357538896053249.a n = A158038 (n + 1)

end A158038

/-!
# A158045: Determinant of power series with alternate signs of gamma matrix with determinant 2!.

The programs for A158045, there is no canonical definition to state claims against.
-/

/-! ## A158045.P8820816345098004365

`A213723(ceil(sqrt(A163171(n))))`
-/

namespace A158045.P8820816345098004365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213723 ⌈Real.sqrt (A163171 n : ℝ)⌉.toNat

end

end A158045.P8820816345098004365

/-!
# A158052: Largest integer power m (with 0 to stand for infinity) for which a representation of the form n = k^m exists (for some k >= 1) multiplied by -1 when k is prime.

The programs for A158052, the canonical program `A158052.P13602650078186940392` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158052 has offset 1).

The definition of A158052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158052.P13602650078186940392

`A052409(n+1)-2*A100995(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A158052

/-- `A052409(n+1)-2*A100995(n+1)` -/
def P13602650078186940392.Spec : Prop :=
  ∀ n, P13602650078186940392.a n = A158052 (n + 1)

theorem P13602650078186940392.correct : P13602650078186940392.Spec := by
  intro n
  simp only [A158052, Nat.add_sub_cancel]

end A158052

/-! ## A158052.P17368480992865213947

`A052409(n+1)-A005843(A100995(n+1))`
-/

namespace A158052.P17368480992865213947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) - A005843 (A100995 (n + 1)).toNat

end

end A158052.P17368480992865213947

namespace A158052

/-- `A052409(n+1)-A005843(A100995(n+1))` -/
def P17368480992865213947.Spec : Prop :=
  ∀ n, P17368480992865213947.a n = A158052 (n + 1)

end A158052

/-! ## A158052.P3968721940697963157

`A008683(A014963(n+1))*A052409(n+1)`
-/

namespace A158052.P3968721940697963157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (n + 1)).toNat * A052409 (n + 1)

end

end A158052.P3968721940697963157

namespace A158052

/-- `A008683(A014963(n+1))*A052409(n+1)` -/
def P3968721940697963157.Spec : Prop :=
  ∀ n, P3968721940697963157.a n = A158052 (n + 1)

end A158052

/-! ## A158052.P8619731418940427913

`A052409(n+1)*A076479(A100994(n+1))`
-/

namespace A158052.P8619731418940427913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) * A076479 (A100994 (n + 1)).toNat

end

end A158052.P8619731418940427913

namespace A158052

/-- `A052409(n+1)*A076479(A100994(n+1))` -/
def P8619731418940427913.Spec : Prop :=
  ∀ n, P8619731418940427913.a n = A158052 (n + 1)

end A158052

/-! ## A158052.P5499297124785476501

`A052409(n+1)/A008683(A014963(A046523(n+1)))`
-/

namespace A158052.P5499297124785476501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052409 (n + 1) : ℚ) / (A008683 (A014963 (A046523 (n + 1)).toNat).toNat : ℚ)

end

end A158052.P5499297124785476501

namespace A158052

/-- `A052409(n+1)/A008683(A014963(A046523(n+1)))` -/
def P5499297124785476501.Spec : Prop :=
  ∀ n, P5499297124785476501.a n = (A158052 (n + 1) : ℚ)

end A158052

/-! ## A158052.P16907026812253832604

`A052409(n+1)-A100995((n+1)²)`
-/

namespace A158052.P16907026812253832604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) - A100995 ((n + 1) ^ 2)

end

end A158052.P16907026812253832604

namespace A158052

/-- `A052409(n+1)-A100995((n+1)²)` -/
def P16907026812253832604.Spec : Prop :=
  ∀ n, P16907026812253832604.a n = A158052 (n + 1)

end A158052

/-! ## A158052.P15172124152410040479

`A052409(n+1)-A052409(A100994(n+1)²)`
-/

namespace A158052.P15172124152410040479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) - A052409 (A100994 (n + 1) ^ 2).toNat

end

end A158052.P15172124152410040479

namespace A158052

/-- `A052409(n+1)-A052409(A100994(n+1)²)` -/
def P15172124152410040479.Spec : Prop :=
  ∀ n, P15172124152410040479.a n = A158052 (n + 1)

end A158052

/-!
# A158053: G.f.: A(x) = exp( Sum_{n>=1} (1 + 2^n*x*A(x))^n * x^n/n ).

The programs for A158053, there is no canonical definition to state claims against.
-/

/-! ## A158053.P2034170553487645231

`A020913(A072850(n+1)+A000261(n+1))`
-/

namespace A158053.P2034170553487645231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020913 (A072850 (n + 1) + A000261 (n + 1)).toNat

end

end A158053.P2034170553487645231

/-! ## A158053.P2900237978310015190

`A105670(A073155(n))`
-/

namespace A158053.P2900237978310015190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (A073155 n).toNat

end

end A158053.P2900237978310015190

/-!
# A158054: a(1)=2, a(n+1) is the smallest prime > n*(sum of decimal digits of a(n)).

The programs for A158054, there is no canonical definition to state claims against.
-/

/-! ## A158054.P17800841396783074763

`A066169(n*A007953(a(n-1)))` with `a(0)=2`
-/

namespace A158054.P17800841396783074763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A066169 ((n : ℤ) * A007953 (a (n - 1)).toNat).toNat

end

end A158054.P17800841396783074763

/-! ## A158054.P13036342248612423086

`A151800(n*A007953(a(n-1)))` with `a(0)=2`
-/

namespace A158054.P13036342248612423086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 ((n : ℤ) * A007953 (a (n - 1)).toNat).toNat

end

end A158054.P13036342248612423086

/-! ## A158054.P14253378022179352806

`A007918(n*A007953(a(n-1)))` with `a(0)=2, a(1)=3`
-/

namespace A158054.P14253378022179352806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A007918 ((n : ℤ) * A007953 (a (n - 1)).toNat).toNat

end

end A158054.P14253378022179352806

/-! ## A158054.P10287143108940230548

`A159477(n*A007953(a(n-1)))` with `a(0)=2, a(1)=3`
-/

namespace A158054.P10287143108940230548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A159477 ((n : ℤ) * A007953 (a (n - 1)).toNat).toNat

end

end A158054.P10287143108940230548

/-!
# A158055: a(1)=2, a(n+1) is the smallest prime > n*first digit of a(n).

The programs for A158055, the canonical program `A158055.P15997520740979597074` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158055 has offset 1).

The definition of A158055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158055.P15997520740979597074

`A151800(A000030(a(n-1))*A028310(n))` with `a(0)=2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A158055

/-- `A151800(A000030(a(n-1))*A028310(n))` -/
def P15997520740979597074.Spec : Prop :=
  ∀ n, P15997520740979597074.a n = A158055 (n + 1)

theorem P15997520740979597074.correct : P15997520740979597074.Spec := by
  intro n
  simp only [A158055, Nat.add_sub_cancel]

end A158055

/-!
# A158056: a(n) = 16*n^2 + 2*n.

The programs for A158056, the canonical program `A158056.P16840013752449040690` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158056 has offset 1).

The definition of A158056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(n+1)²+2*(n+1)` (program `A158056.P16840013752449040690`, by `A158056.P16840013752449040690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158056.P16840013752449040690

`16*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158056

/-- `16*(n+1)²+2*(n+1)` -/
def P16840013752449040690.Spec : Prop :=
  ∀ n, (P16840013752449040690.a n : ℤ) = A158056 (n + 1)

theorem P16840013752449040690.correct : P16840013752449040690.Spec := by
  intro n
  simp only [A158056, Nat.add_sub_cancel]

end A158056

/-! ## A158056.P9627390119542165052

`C(8*n+9, 2)/2`
-/

namespace A158056.P9627390119542165052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (8 * n + 9) 2 : ℚ) / 2

end

end A158056.P9627390119542165052

namespace A158056

/-- `C(8*n+9, 2)/2` -/
def P9627390119542165052.Spec : Prop :=
  ∀ n, P9627390119542165052.a n = (A158056 (n + 1) : ℚ)

end A158056

/-! ## A158056.P2516585293589772218

`abs(∑[a(n-1)+32])` with `a(0)=18`
-/

namespace A158056.P2516585293589772218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158056.P2516585293589772218

namespace A158056

/-- `abs(∑[a(n-1)+32])` -/
def P2516585293589772218.Spec : Prop :=
  ∀ n, (P2516585293589772218.a n : ℤ) = A158056 (n + 1)

end A158056

/-! ## A158056.P14388314516546105312

`floor(∑[a(n-1)+32])` with `a(0)=18`

`floor` is left out, it is the identity on integers.
-/

namespace A158056.P14388314516546105312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158056.P14388314516546105312

namespace A158056

/-- `floor(∑[a(n-1)+32])` -/
def P14388314516546105312.Spec : Prop :=
  ∀ n, (P14388314516546105312.a n : ℤ) = A158056 (n + 1)

end A158056

/-! ## A158056.P16399472778351667595

`round(∑[a(n-1)+32])` with `a(0)=18`

`round` is left out, it is the identity on integers.
-/

namespace A158056.P16399472778351667595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158056.P16399472778351667595

namespace A158056

/-- `round(∑[a(n-1)+32])` -/
def P16399472778351667595.Spec : Prop :=
  ∀ n, (P16399472778351667595.a n : ℤ) = A158056 (n + 1)

end A158056

/-! ## A158056.P7089611779212976637

`(n+1)*Δ[C(4*n+3, 2)]`
-/

namespace A158056.P7089611779212976637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A158056.P7089611779212976637

namespace A158056

/-- `(n+1)*Δ[C(4*n+3, 2)]` -/
def P7089611779212976637.Spec : Prop :=
  ∀ n, P7089611779212976637.a n = A158056 (n + 1)

end A158056

/-! ## A158056.P11449411985432840197

`record[(n+2)*(lcm(4, n+3)-3)]`
-/

namespace A158056.P11449411985432840197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((Nat.lcm 4 (n + 3) : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158056.P11449411985432840197

namespace A158056

/-- `record[(n+2)*(lcm(4, n+3)-3)]` -/
def P11449411985432840197.Spec : Prop :=
  ∀ n, P11449411985432840197.a n = A158056 (n + 1)

end A158056

/-! ## A158056.P7274801469227391205

`2*(A081585(n+1)+n)`
-/

namespace A158056.P7274801469227391205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081585 (n + 1) + (n : ℤ))

end

end A158056.P7274801469227391205

namespace A158056

/-- `2*(A081585(n+1)+n)` -/
def P7274801469227391205.Spec : Prop :=
  ∀ n, P7274801469227391205.a n = A158056 (n + 1)

end A158056

/-! ## A158056.P8860174802217140934

`(n+1)*(A125169(n)+3)`
-/

namespace A158056.P8860174802217140934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A125169 n + 3)

end

end A158056.P8860174802217140934

namespace A158056

/-- `(n+1)*(A125169(n)+3)` -/
def P8860174802217140934.Spec : Prop :=
  ∀ n, P8860174802217140934.a n = A158056 (n + 1)

end A158056

/-! ## A158056.P6266510590997528204

`2*(n+1)*A004768(n)`
-/

namespace A158056.P6266510590997528204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A004768 n)

end

end A158056.P6266510590997528204

namespace A158056

/-- `2*(n+1)*A004768(n)` -/
def P6266510590997528204.Spec : Prop :=
  ∀ n, P6266510590997528204.a n = A158056 (n + 1)

end A158056

/-!
# A158057: First differences of A051870: 16*n + 1.

The programs for A158057, the canonical program `A158057.P1501325603255949209` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158057 has offset 0).

The definition of A158057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n+1` (program `A158057.P1501325603255949209`, by `A158057.P1501325603255949209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158057.P1501325603255949209

`16*n+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158057

/-- `16*n+1` -/
def P1501325603255949209.Spec : Prop :=
  ∀ n, (P1501325603255949209.a n : ℤ) = A158057 n

theorem P1501325603255949209.correct : P1501325603255949209.Spec := by
  intro n
  simp only [A158057]

end A158057

/-!
# A158058: a(n) = 16*n^2 - 2*n.

The programs for A158058, the canonical program `A158058.P14909818304514455316` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158058 has offset 1).

The definition of A158058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(n+1)²-2*(n+1)` (program `A158058.P14909818304514455316`, by `A158058.P14909818304514455316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158058.P14909818304514455316

`16*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158058

/-- `16*(n+1)²-2*(n+1)` -/
def P14909818304514455316.Spec : Prop :=
  ∀ n, P14909818304514455316.a n = A158058 (n + 1)

theorem P14909818304514455316.correct : P14909818304514455316.Spec := by
  intro n
  simp only [A158058, Nat.add_sub_cancel]

end A158058

/-! ## A158058.P6336470545019299181

`C(8*(n+1), 2)/2`
-/

namespace A158058.P6336470545019299181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (8 * (n + 1)) 2 : ℚ) / 2

end

end A158058.P6336470545019299181

namespace A158058

/-- `C(8*(n+1), 2)/2` -/
def P6336470545019299181.Spec : Prop :=
  ∀ n, P6336470545019299181.a n = (A158058 (n + 1) : ℚ)

end A158058

/-! ## A158058.P7985280751013070963

`abs(∑[a(n-1)+32])` with `a(0)=14`
-/

namespace A158058.P7985280751013070963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158058.P7985280751013070963

namespace A158058

/-- `abs(∑[a(n-1)+32])` -/
def P7985280751013070963.Spec : Prop :=
  ∀ n, (P7985280751013070963.a n : ℤ) = A158058 (n + 1)

end A158058

/-! ## A158058.P17927739592261039354

`round(∑[a(n-1)+32])` with `a(0)=14`

`round` is left out, it is the identity on integers.
-/

namespace A158058.P17927739592261039354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158058.P17927739592261039354

namespace A158058

/-- `round(∑[a(n-1)+32])` -/
def P17927739592261039354.Spec : Prop :=
  ∀ n, (P17927739592261039354.a n : ℤ) = A158058 (n + 1)

end A158058

/-! ## A158058.P4423122928770993883

`2*(n+1)*record[xor(7, n)]`
-/

namespace A158058.P4423122928770993883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158058.P4423122928770993883

namespace A158058

/-- `2*(n+1)*record[xor(7, n)]` -/
def P4423122928770993883.Spec : Prop :=
  ∀ n, (P4423122928770993883.a n : ℤ) = A158058 (n + 1)

end A158058

/-! ## A158058.P5835424811606113515

`(n+1)*Δ[C(4*n+2, 2)]`
-/

namespace A158058.P5835424811606113515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A158058.P5835424811606113515

namespace A158058

/-- `(n+1)*Δ[C(4*n+2, 2)]` -/
def P5835424811606113515.Spec : Prop :=
  ∀ n, P5835424811606113515.a n = A158058 (n + 1)

end A158058

/-! ## A158058.P3899393319257755981

`record[(n+2)*(lcm(4, n+3)-5)]`
-/

namespace A158058.P3899393319257755981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((Nat.lcm 4 (n + 3) : ℤ) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158058.P3899393319257755981

namespace A158058

/-- `record[(n+2)*(lcm(4, n+3)-5)]` -/
def P3899393319257755981.Spec : Prop :=
  ∀ n, P3899393319257755981.a n = A158058 (n + 1)

end A158058

/-! ## A158058.P1627235344578809976

`lcm(6*n+7+2*n, 2*(n+1))`
-/

namespace A158058.P1627235344578809976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (6 * n + 7 + 2 * n) (2 * (n + 1))

end

end A158058.P1627235344578809976

namespace A158058

/-- `lcm(6*n+7+2*n, 2*(n+1))` -/
def P1627235344578809976.Spec : Prop :=
  ∀ n, (P1627235344578809976.a n : ℤ) = A158058 (n + 1)

end A158058

/-! ## A158058.P1125727878339517579

`(n+1)*(A082285(n)+1)`
-/

namespace A158058.P1125727878339517579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A082285 n + 1)

end

end A158058.P1125727878339517579

namespace A158058

/-- `(n+1)*(A082285(n)+1)` -/
def P1125727878339517579.Spec : Prop :=
  ∀ n, P1125727878339517579.a n = A158058 (n + 1)

end A158058

/-! ## A158058.P17111673032071477047

`(n+1)*(A125169(n)-1)`
-/

namespace A158058.P17111673032071477047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A125169 n - 1)

end

end A158058.P17111673032071477047

namespace A158058

/-- `(n+1)*(A125169(n)-1)` -/
def P17111673032071477047.Spec : Prop :=
  ∀ n, P17111673032071477047.a n = A158058 (n + 1)

end A158058

/-! ## A158058.P3211166849706396240

`(n+1)*(A106839(n)+3)`
-/

namespace A158058.P3211166849706396240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A106839 n + 3)

end

end A158058.P3211166849706396240

namespace A158058

/-- `(n+1)*(A106839(n)+3)` -/
def P3211166849706396240.Spec : Prop :=
  ∀ n, P3211166849706396240.a n = A158058 (n + 1)

end A158058

/-! ## A158058.P16492902874105453313

`2*(A157914(n+1)-n)`
-/

namespace A158058.P16492902874105453313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157914 (n + 1) - (n : ℤ))

end

end A158058.P16492902874105453313

namespace A158058

/-- `2*(A157914(n+1)-n)` -/
def P16492902874105453313.Spec : Prop :=
  ∀ n, P16492902874105453313.a n = A158058 (n + 1)

end A158058

/-! ## A158058.P10108631178456893430

`2*(n+1)*A004771(n)`
-/

namespace A158058.P10108631178456893430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A004771 n)

end

end A158058.P10108631178456893430

namespace A158058

/-- `2*(n+1)*A004771(n)` -/
def P10108631178456893430.Spec : Prop :=
  ∀ n, P10108631178456893430.a n = A158058 (n + 1)

end A158058

/-! ## A158058.P4011981193920737061

`(n+1)*(A098502(n+1)+2)`
-/

namespace A158058.P4011981193920737061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A098502 (n + 1) + 2)

end

end A158058.P4011981193920737061

namespace A158058

/-- `(n+1)*(A098502(n+1)+2)` -/
def P4011981193920737061.Spec : Prop :=
  ∀ n, P4011981193920737061.a n = A158058 (n + 1)

end A158058

/-!
# A158059: a(1)=2, a(n+1) is the smallest prime >= n*sum of digits of a(n).

The programs for A158059, there is no canonical definition to state claims against.
-/

/-! ## A158059.P1881828843840909864

`A007918(n*A007953(a(n-1)))` with `a(0)=2`
-/

namespace A158059.P1881828843840909864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 ((n : ℤ) * A007953 (a (n - 1)).toNat).toNat

end

end A158059.P1881828843840909864

/-! ## A158059.P10907449900498264086

`A066169(n*A007953(a(n-1)))` with `a(0)=2, a(1)=2`
-/

namespace A158059.P10907449900498264086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A066169 ((n : ℤ) * A007953 (a (n - 1)).toNat).toNat

end

end A158059.P10907449900498264086

/-! ## A158059.P13072474331911705639

`A151800(n*A007953(a(n-1)))` with `a(0)=2, a(1)=2`
-/

namespace A158059.P13072474331911705639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A151800 ((n : ℤ) * A007953 (a (n - 1)).toNat).toNat

end

end A158059.P13072474331911705639

/-! ## A158059.P1563892441409138924

`A159477(n*A007953(a(n-1)))` with `a(0)=2`
-/

namespace A158059.P1563892441409138924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A159477 ((n : ℤ) * A007953 (a (n - 1)).toNat).toNat

end

end A158059.P1563892441409138924

/-!
# A158060: a(n) = 25*n + 1.

The programs for A158060, the canonical program `A158060.P3137405967941569339` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158060 has offset 1).

The definition of A158060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*(n+1)+1` (program `A158060.P3137405967941569339`, by `A158060.P3137405967941569339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158060.P3137405967941569339

`25*(n+1)+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158060

/-- `25*(n+1)+1` -/
def P3137405967941569339.Spec : Prop :=
  ∀ n, (P3137405967941569339.a n : ℤ) = A158060 (n + 1)

theorem P3137405967941569339.correct : P3137405967941569339.Spec := by
  intro n
  simp only [A158060, Nat.add_sub_cancel]

end A158060

/-!
# A158061: a(1)=2, a(n+1) is the smallest prime > n^smallest digit of a(n).

The programs for A158061, there is no canonical definition to state claims against.
-/

/-! ## A158061.P1884685997950211081

`A007918(n^A286150(n))`
-/

namespace A158061.P1884685997950211081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A286150 n : ℤ))).toNat

end

end A158061.P1884685997950211081

/-! ## A158061.P17911521185232102620

`A151800(n^A286150(n))`
-/

namespace A158061.P17911521185232102620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A286150 n : ℤ))).toNat

end

end A158061.P17911521185232102620

/-!
# A158062: a(n) = 36*n^2 - 2*n.

The programs for A158062, the canonical program `A158062.P12572423085323088459` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158062 has offset 1).

The definition of A158062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²-2*(n+1)` (program `A158062.P12572423085323088459`, by `A158062.P12572423085323088459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158062.P12572423085323088459

`36*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158062

/-- `36*(n+1)²-2*(n+1)` -/
def P12572423085323088459.Spec : Prop :=
  ∀ n, P12572423085323088459.a n = A158062 (n + 1)

theorem P12572423085323088459.correct : P12572423085323088459.Spec := by
  intro n
  simp only [A158062, Nat.add_sub_cancel]

end A158062

/-! ## A158062.P9205571785078619549

`Δ[(n+1)*A396290(n)]`
-/

namespace A158062.P9205571785078619549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A396290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158062.P9205571785078619549

namespace A158062

/-- `Δ[(n+1)*A396290(n)]` -/
def P9205571785078619549.Spec : Prop :=
  ∀ n, P9205571785078619549.a n = A158062 (n + 1)

end A158062

/-! ## A158062.P14728039867180571092

`(n+1)*(A350055(n)-1)`
-/

namespace A158062.P14728039867180571092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A350055 n - 1)

end

end A158062.P14728039867180571092

namespace A158062

/-- `(n+1)*(A350055(n)-1)` -/
def P14728039867180571092.Spec : Prop :=
  ∀ n, P14728039867180571092.a n = A158062 (n + 1)

end A158062

/-! ## A158062.P8033498390923122683

`2*(A157910(n+1)-n)`
-/

namespace A158062.P8033498390923122683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157910 (n + 1) - (n : ℤ))

end

end A158062.P8033498390923122683

namespace A158062

/-- `2*(A157910(n+1)-n)` -/
def P8033498390923122683.Spec : Prop :=
  ∀ n, P8033498390923122683.a n = A158062 (n + 1)

end A158062

/-! ## A158062.P12751718499148131281

`2*(A178574(n+1)+n+1)`
-/

namespace A158062.P12751718499148131281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A178574 (n + 1) + (n + 1 : ℤ))

end

end A158062.P12751718499148131281

namespace A158062

/-- `2*(A178574(n+1)+n+1)` -/
def P12751718499148131281.Spec : Prop :=
  ∀ n, P12751718499148131281.a n = A158062 (n + 1)

end A158062

/-! ## A158062.P3847771956572096266

`2*(A195321(n+1)-(n+1))`
-/

namespace A158062.P3847771956572096266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A195321 (n + 1) - (n + 1 : ℤ))

end

end A158062.P3847771956572096266

namespace A158062

/-- `2*(A195321(n+1)-(n+1))` -/
def P3847771956572096266.Spec : Prop :=
  ∀ n, P3847771956572096266.a n = A158062 (n + 1)

end A158062

/-! ## A158062.P6911513291537998637

`2*(A157889(n+1)-(n+2))`
-/

namespace A158062.P6911513291537998637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157889 (n + 1) - (n + 2 : ℤ))

end

end A158062.P6911513291537998637

namespace A158062

/-- `2*(A157889(n+1)-(n+2))` -/
def P6911513291537998637.Spec : Prop :=
  ∀ n, P6911513291537998637.a n = A158062 (n + 1)

end A158062

/-! ## A158062.P6664230816729672620

`(n+1)*(A158065(n+1)-3)`
-/

namespace A158062.P6664230816729672620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158065 (n + 1) - 3)

end

end A158062.P6664230816729672620

namespace A158062

/-- `(n+1)*(A158065(n+1)-3)` -/
def P6664230816729672620.Spec : Prop :=
  ∀ n, P6664230816729672620.a n = A158062 (n + 1)

end A158062

/-! ## A158062.P16461013652976449433

`(n+1)*(A209876(n+1)+4)`
-/

namespace A158062.P16461013652976449433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A209876 (n + 1) + 4)

end

end A158062.P16461013652976449433

namespace A158062

/-- `(n+1)*(A209876(n+1)+4)` -/
def P16461013652976449433.Spec : Prop :=
  ∀ n, P16461013652976449433.a n = A158062 (n + 1)

end A158062

/-! ## A158062.P2867696597019575591

`2*(n+1)*A239129(n+1)`
-/

namespace A158062.P2867696597019575591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A239129 (n + 1))

end

end A158062.P2867696597019575591

namespace A158062

/-- `2*(n+1)*A239129(n+1)` -/
def P2867696597019575591.Spec : Prop :=
  ∀ n, P2867696597019575591.a n = A158062 (n + 1)

end A158062

/-! ## A158062.P5176768454685488059

`(9*A004767(n)+7)*(n+1)`
-/

namespace A158062.P5176768454685488059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * A004767 n + 7) * (n + 1 : ℤ)

end

end A158062.P5176768454685488059

namespace A158062

/-- `(9*A004767(n)+7)*(n+1)` -/
def P5176768454685488059.Spec : Prop :=
  ∀ n, P5176768454685488059.a n = A158062 (n + 1)

end A158062

/-!
# A158064: a(n) = 36*n^2 + 2*n.

The programs for A158064, the canonical program `A158064.P8219905870905658626` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158064 has offset 1).

The definition of A158064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²+2*(n+1)` (program `A158064.P8219905870905658626`, by `A158064.P8219905870905658626.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158064.P8219905870905658626

`36*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158064

/-- `36*(n+1)²+2*(n+1)` -/
def P8219905870905658626.Spec : Prop :=
  ∀ n, (P8219905870905658626.a n : ℤ) = A158064 (n + 1)

theorem P8219905870905658626.correct : P8219905870905658626.Spec := by
  intro n
  simp only [A158064, Nat.add_sub_cancel]

end A158064

/-! ## A158064.P9019676945274902796

`2*(A157889(n+1)+n)`
-/

namespace A158064.P9019676945274902796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157889 (n + 1) + (n : ℤ))

end

end A158064.P9019676945274902796

namespace A158064

/-- `2*(A157889(n+1)+n)` -/
def P9019676945274902796.Spec : Prop :=
  ∀ n, P9019676945274902796.a n = A158064 (n + 1)

end A158064

/-! ## A158064.P12358218354647657523

`(n+1)*(A350055(n)+3)`
-/

namespace A158064.P12358218354647657523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A350055 n + 3)

end

end A158064.P12358218354647657523

namespace A158064

/-- `(n+1)*(A350055(n)+3)` -/
def P12358218354647657523.Spec : Prop :=
  ∀ n, P12358218354647657523.a n = A158064 (n + 1)

end A158064

/-! ## A158064.P7214274225652328957

`(n+1)*(A158065(n+1)+1)`
-/

namespace A158064.P7214274225652328957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158065 (n + 1) + 1)

end

end A158064.P7214274225652328957

namespace A158064

/-- `(n+1)*(A158065(n+1)+1)` -/
def P7214274225652328957.Spec : Prop :=
  ∀ n, P7214274225652328957.a n = A158064 (n + 1)

end A158064

/-! ## A158064.P10404196356873650537

`2*(A195321(n+1)+n+1)`
-/

namespace A158064.P10404196356873650537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A195321 (n + 1) + (n + 1 : ℤ))

end

end A158064.P10404196356873650537

namespace A158064

/-- `2*(A195321(n+1)+n+1)` -/
def P10404196356873650537.Spec : Prop :=
  ∀ n, P10404196356873650537.a n = A158064 (n + 1)

end A158064

/-! ## A158064.P9773943430950560084

`2*(A157910(n+1)+n+2)`
-/

namespace A158064.P9773943430950560084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157910 (n + 1) + (n + 2 : ℤ))

end

end A158064.P9773943430950560084

namespace A158064

/-- `2*(A157910(n+1)+n+2)` -/
def P9773943430950560084.Spec : Prop :=
  ∀ n, P9773943430950560084.a n = A158064 (n + 1)

end A158064

/-! ## A158064.P8173020527414297054

`(3*Δ[3*A046092(n)]+2)*(n+1)`
-/

namespace A158064.P8173020527414297054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (f1 (n + 1) - f1 n) + 2) * (n + 1 : ℤ)

end

end A158064.P8173020527414297054

namespace A158064

/-- `(3*Δ[3*A046092(n)]+2)*(n+1)` -/
def P8173020527414297054.Spec : Prop :=
  ∀ n, P8173020527414297054.a n = A158064 (n + 1)

end A158064

/-!
# A158065: a(n) = 36*n + 1.

The programs for A158065, the canonical program `A158065.P14397513440059553790` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158065 has offset 1).

The definition of A158065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)+1` (program `A158065.P14397513440059553790`, by `A158065.P14397513440059553790.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158065.P14397513440059553790

`36*(n+1)+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158065

/-- `36*(n+1)+1` -/
def P14397513440059553790.Spec : Prop :=
  ∀ n, (P14397513440059553790.a n : ℤ) = A158065 (n + 1)

theorem P14397513440059553790.correct : P14397513440059553790.Spec := by
  intro n
  simp only [A158065, Nat.add_sub_cancel]

end A158065

/-!
# A158066: a(n) = 49*n + 1.

The programs for A158066, the canonical program `A158066.P2753047191672300220` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158066 has offset 1).

The definition of A158066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+1)+1` (program `A158066.P2753047191672300220`, by `A158066.P2753047191672300220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158066.P2753047191672300220

`49*(n+1)+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158066

/-- `49*(n+1)+1` -/
def P2753047191672300220.Spec : Prop :=
  ∀ n, (P2753047191672300220.a n : ℤ) = A158066 (n + 1)

theorem P2753047191672300220.correct : P2753047191672300220.Spec := by
  intro n
  simp only [A158066, Nat.add_sub_cancel]

end A158066

/-!
# A158067: a(n) = 64*n^2 - 2*n.

The programs for A158067, the canonical program `A158067.P15568386419510494438` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158067 has offset 1).

The definition of A158067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)²-2*(n+1)` (program `A158067.P15568386419510494438`, by `A158067.P15568386419510494438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158067.P15568386419510494438

`64*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158067

/-- `64*(n+1)²-2*(n+1)` -/
def P15568386419510494438.Spec : Prop :=
  ∀ n, P15568386419510494438.a n = A158067 (n + 1)

theorem P15568386419510494438.correct : P15568386419510494438.Spec := by
  intro n
  simp only [A158067, Nat.add_sub_cancel]

end A158067

/-! ## A158067.P8856764906934410501

`C(32*(n+1), 2)/8`
-/

namespace A158067.P8856764906934410501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (32 * (n + 1)) 2 : ℚ) / 8

end

end A158067.P8856764906934410501

namespace A158067

/-- `C(32*(n+1), 2)/8` -/
def P8856764906934410501.Spec : Prop :=
  ∀ n, P8856764906934410501.a n = (A158067 (n + 1) : ℚ)

end A158067

/-! ## A158067.P13730458975599458642

`2*(A158563(n+1)-n)`
-/

namespace A158067.P13730458975599458642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158563 (n + 1) - (n : ℤ))

end

end A158067.P13730458975599458642

namespace A158067

/-- `2*(A158563(n+1)-n)` -/
def P13730458975599458642.Spec : Prop :=
  ∀ n, P13730458975599458642.a n = A158067 (n + 1)

end A158067

/-! ## A158067.P697113328168431343

`(n+1)*(A158071(n+1)-3)`
-/

namespace A158067.P697113328168431343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158071 (n + 1) - 3)

end

end A158067.P697113328168431343

namespace A158067

/-- `(n+1)*(A158071(n+1)-3)` -/
def P697113328168431343.Spec : Prop :=
  ∀ n, P697113328168431343.a n = A158067 (n + 1)

end A158067

/-! ## A158067.P11574423867489738380

`2*(A158575(n+1)-(n+2))`
-/

namespace A158067.P11574423867489738380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158575 (n + 1) - (n + 2 : ℤ))

end

end A158067.P11574423867489738380

namespace A158067

/-- `2*(A158575(n+1)-(n+2))` -/
def P11574423867489738380.Spec : Prop :=
  ∀ n, P11574423867489738380.a n = A158067 (n + 1)

end A158067

/-! ## A158067.P9478638689178877561

`2*(n+1)*A239128(n+1)`
-/

namespace A158067.P9478638689178877561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A239128 (n + 1))

end

end A158067.P9478638689178877561

namespace A158067

/-- `2*(n+1)*A239128(n+1)` -/
def P9478638689178877561.Spec : Prop :=
  ∀ n, P9478638689178877561.a n = A158067 (n + 1)

end A158067

/-!
# A158068: Period 6: repeat [1, 2, 2, 1, 5, 5].

The programs for A158068, the canonical program `A158068.P8028405190075324607` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158068 has offset 0).

The definition of A158068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158068.P8028405190075324607

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1, a(4)=5`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158068

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P8028405190075324607.Spec : Prop :=
  ∀ n, P8028405190075324607.a n = A158068 n

theorem P8028405190075324607.correct : P8028405190075324607.Spec := by
  intro n
  simp only [A158068]

end A158068

/-!
# A158069: Primes p such that sum of digits of p - first digit of p is not prime.

The programs for A158069, there is no canonical definition to state claims against.
-/

/-! ## A158069.P17418954160710055958

`eq[A003415(n), A086257(A023916(n))]`
-/

namespace A158069.P17418954160710055958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 (A023916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158069.P17418954160710055958

/-! ## A158069.P14453977736037943702

`p?[∪[A038872(n+1), A349279(n+1)]]`
-/

namespace A158069.P14453977736037943702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349279 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A158069.P14453977736037943702

/-!
# A158070: a(n) = 64*n^2 + 2*n.

The programs for A158070, the canonical program `A158070.P11407784734891459078` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158070 has offset 0).

The definition of A158070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*n²+2*n` (program `A158070.P11407784734891459078`, by `A158070.P11407784734891459078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158070.P11407784734891459078

`64*n²+2*n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158070

/-- `64*n²+2*n` -/
def P11407784734891459078.Spec : Prop :=
  ∀ n, (P11407784734891459078.a n : ℤ) = A158070 n

theorem P11407784734891459078.correct : P11407784734891459078.Spec := by
  intro n
  simp only [A158070]

end A158070

/-! ## A158070.P276661287379345440

`n*(A152691(n)+2)`
-/

namespace A158070.P276661287379345440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152691 n + 2)

end

end A158070.P276661287379345440

namespace A158070

/-- `n*(A152691(n)+2)` -/
def P276661287379345440.Spec : Prop :=
  ∀ n, P276661287379345440.a n = A158070 n

end A158070

/-! ## A158070.P13535401094214480346

`2*(A244082(n)+n)`
-/

namespace A158070.P13535401094214480346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A244082 n + (n : ℤ))

end

end A158070.P13535401094214480346

namespace A158070

/-- `2*(A244082(n)+n)` -/
def P13535401094214480346.Spec : Prop :=
  ∀ n, P13535401094214480346.a n = A158070 n

end A158070

/-! ## A158070.P3392845266399129876

`n*A115295(n+1)`
-/

namespace A158070.P3392845266399129876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A115295 (n + 1)

end

end A158070.P3392845266399129876

namespace A158070

/-- `n*A115295(n+1)` -/
def P3392845266399129876.Spec : Prop :=
  ∀ n, P3392845266399129876.a n = A158070 n

end A158070

/-! ## A158070.P9877629484173826958

`2*n*A158057(2*n)`
-/

namespace A158070.P9877629484173826958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A158057 (2 * n)

end

end A158070.P9877629484173826958

namespace A158070

/-- `2*n*A158057(2*n)` -/
def P9877629484173826958.Spec : Prop :=
  ∀ n, P9877629484173826958.a n = A158070 n

end A158070

/-! ## A158070.P7065315771986840007

`A173511(4*n)`
-/

namespace A158070.P7065315771986840007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173511 (4 * n)

end

end A158070.P7065315771986840007

namespace A158070

/-- `A173511(4*n)` -/
def P7065315771986840007.Spec : Prop :=
  ∀ n, P7065315771986840007.a n = A158070 n

end A158070

/-! ## A158070.P11257347353361184681

`A157716(3*n+n+1)`
-/

namespace A158070.P11257347353361184681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157716 (3 * n + (n + 1))

end

end A158070.P11257347353361184681

namespace A158070

/-- `A157716(3*n+n+1)` -/
def P11257347353361184681.Spec : Prop :=
  ∀ n, P11257347353361184681.a n = A158070 n

end A158070

/-! ## A158070.P10255524135093753771

`n*A063116(A016813(n))`
-/

namespace A158070.P10255524135093753771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063116 (A016813 n).toNat

end

end A158070.P10255524135093753771

namespace A158070

/-- `n*A063116(A016813(n))` -/
def P10255524135093753771.Spec : Prop :=
  ∀ n, P10255524135093753771.a n = A158070 n

end A158070

/-! ## A158070.P9308213334261569612

`n*A016825(A008598(n))`
-/

namespace A158070.P9308213334261569612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016825 (A008598 n).toNat

end

end A158070.P9308213334261569612

namespace A158070

/-- `n*A016825(A008598(n))` -/
def P9308213334261569612.Spec : Prop :=
  ∀ n, P9308213334261569612.a n = A158070 n

end A158070

/-! ## A158070.P9656061946392883829

`n*A016825(A008590(2*n))`
-/

namespace A158070.P9656061946392883829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016825 (A008590 (2 * n)).toNat

end

end A158070.P9656061946392883829

namespace A158070

/-- `n*A016825(A008590(2*n))` -/
def P9656061946392883829.Spec : Prop :=
  ∀ n, P9656061946392883829.a n = A158070 n

end A158070

/-! ## A158070.P16722418166771590239

`n*A016825(A234275(2*n))`
-/

namespace A158070.P16722418166771590239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016825 (A234275 (2 * n)).toNat

end

end A158070.P16722418166771590239

namespace A158070

/-- `n*A016825(A234275(2*n))` -/
def P16722418166771590239.Spec : Prop :=
  ∀ n, P16722418166771590239.a n = A158070 n

end A158070

/-! ## A158070.P3300560263940023005

`A173562(8*n)`
-/

namespace A158070.P3300560263940023005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173562 (8 * n)

end

end A158070.P3300560263940023005

namespace A158070

/-- `A173562(8*n)` -/
def P3300560263940023005.Spec : Prop :=
  ∀ n, P3300560263940023005.a n = A158070 n

end A158070

/-! ## A158070.P4936976650325568365

`A139591(8*n)/2`
-/

namespace A158070.P4936976650325568365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139591 (8 * n) : ℚ) / 2

end

end A158070.P4936976650325568365

namespace A158070

/-- `A139591(8*n)/2` -/
def P4936976650325568365.Spec : Prop :=
  ∀ n, P4936976650325568365.a n = (A158070 n : ℚ)

end A158070

/-! ## A158070.P11377776591245877682

`n*A017089(8*n)`
-/

namespace A158070.P11377776591245877682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017089 (8 * n)

end

end A158070.P11377776591245877682

namespace A158070

/-- `n*A017089(8*n)` -/
def P11377776591245877682.Spec : Prop :=
  ∀ n, P11377776591245877682.a n = A158070 n

end A158070

/-! ## A158070.P2020560164745448184

`n*(A008590(A008590(n))+2)`
-/

namespace A158070.P2020560164745448184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008590 (A008590 n).toNat + 2)

end

end A158070.P2020560164745448184

namespace A158070

/-- `n*(A008590(A008590(n))+2)` -/
def P2020560164745448184.Spec : Prop :=
  ∀ n, P2020560164745448184.a n = A158070 n

end A158070

/-! ## A158070.P10797761982717395202

`2*n*A047452(A047452(2*n+1))`
-/

namespace A158070.P10797761982717395202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A047452 (A047452 (2 * n + 1)).toNat

end

end A158070.P10797761982717395202

namespace A158070

/-- `2*n*A047452(A047452(2*n+1))` -/
def P10797761982717395202.Spec : Prop :=
  ∀ n, P10797761982717395202.a n = A158070 n

end A158070

/-! ## A158070.P15420471780475602256

`2*n*A047461(A047461(2*n+1))`
-/

namespace A158070.P15420471780475602256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A047461 (A047461 (2 * n + 1)).toNat

end

end A158070.P15420471780475602256

namespace A158070

/-- `2*n*A047461(A047461(2*n+1))` -/
def P15420471780475602256.Spec : Prop :=
  ∀ n, P15420471780475602256.a n = A158070 n

end A158070

/-! ## A158070.P12836323834139986305

`2*n*A047471(A047471(2*n+1))`
-/

namespace A158070.P12836323834139986305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A047471 (A047471 (2 * n + 1)).toNat

end

end A158070.P12836323834139986305

namespace A158070

/-- `2*n*A047471(A047471(2*n+1))` -/
def P12836323834139986305.Spec : Prop :=
  ∀ n, P12836323834139986305.a n = A158070 n

end A158070

/-! ## A158070.P16120761335067650117

`A038709(4*4*n)`
-/

namespace A158070.P16120761335067650117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038709 (4 * (4 * n))

end

end A158070.P16120761335067650117

namespace A158070

/-- `A038709(4*4*n)` -/
def P16120761335067650117.Spec : Prop :=
  ∀ n, P16120761335067650117.a n = A158070 n

end A158070

/-! ## A158070.P8747123005128715532

`n*A047473(A017077(2*n))`
-/

namespace A158070.P8747123005128715532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A047473 (A017077 (2 * n)).toNat

end

end A158070.P8747123005128715532

namespace A158070

/-- `n*A047473(A017077(2*n))` -/
def P8747123005128715532.Spec : Prop :=
  ∀ n, P8747123005128715532.a n = A158070 n

end A158070

/-!
# A158071: a(n) = 64*n + 1.

The programs for A158071, the canonical program `A158071.P6996563464088219361` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158071 has offset 1).

The definition of A158071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)+1` (program `A158071.P6996563464088219361`, by `A158071.P6996563464088219361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158071.P6996563464088219361

`64*(n+1)+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158071

/-- `64*(n+1)+1` -/
def P6996563464088219361.Spec : Prop :=
  ∀ n, (P6996563464088219361.a n : ℤ) = A158071 (n + 1)

theorem P6996563464088219361.correct : P6996563464088219361.Spec := by
  intro n
  simp only [A158071, Nat.add_sub_cancel]

end A158071

/-!
# A158072: Primes p such that the sum of digits of p - the first digit of p is prime.

The programs for A158072, there is no canonical definition to state claims against.
-/

/-! ## A158072.P2769553154854907088

`A006530(A225385(n+1)*A227916(n+1))`
-/

namespace A158072.P2769553154854907088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225385 (n + 1) * A227916 (n + 1)).toNat

end

end A158072.P2769553154854907088

/-!
# A158074: Number of (directed) Hamiltonian cycles on a 3 X (2n) knight's tour graph.

The programs for A158074, there is no canonical definition to state claims against.
-/

/-! ## A158074.P6682880723681582505

`2*A070030(n+1)`
-/

namespace A158074.P6682880723681582505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070030 (n + 1)

end

end A158074.P6682880723681582505

/-! ## A158074.P3284789615245086612

`2*A169764(2*(n+1))`
-/

namespace A158074.P3284789615245086612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169764 (2 * (n + 1))

end

end A158074.P3284789615245086612

/-! ## A158074.P16508175107346499366

`A070030(root((n+1)², 2))+A070030(n+1)`
-/

namespace A158074.P16508175107346499366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ)))).toNat + A070030 (n + 1)

end

end A158074.P16508175107346499366

/-! ## A158074.P5406216373617131095

`A169764(n+2+n)+A169764(n+2+n)`
-/

namespace A158074.P5406216373617131095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169764 (n + 2 + n) + A169764 (n + 2 + n)

end

end A158074.P5406216373617131095

/-! ## A158074.P17244563436832820751

`A070030(-xor(n, -1))*A103420(4-C(n, n²))`
-/

namespace A158074.P17244563436832820751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (-Int.xor (n : ℤ) (-1)).toNat * A103420 (4 - Nat.choose n (n ^ 2))

end

end A158074.P17244563436832820751

/-! ## A158074.P10330645675179965835

`A070030(n+1)+A070030(n+1)/A054977(n)`
-/

namespace A158074.P10330645675179965835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070030 (n + 1) : ℚ) + (A070030 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A158074.P10330645675179965835

/-! ## A158074.P9193423860120404417

`lcm(A070030(n+1)+A070030(n+1), A033999(n))`
-/

namespace A158074.P9193423860120404417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070030 (n + 1) + A070030 (n + 1)) (A033999 n)

end

end A158074.P9193423860120404417

/-! ## A158074.P1198585943471716638

`and(A070030(n+1)+A070030(n+1), A057428(n))`
-/

namespace A158074.P1198585943471716638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070030 (n + 1) + A070030 (n + 1)) (A057428 n)

end

end A158074.P1198585943471716638

/-! ## A158074.P18308986372081409104

`A070030(n+1)+lcm(A055975(n+1), A070030(n+1))`
-/

namespace A158074.P18308986372081409104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070030 (n + 1) + (Int.lcm (A055975 (n + 1)) (A070030 (n + 1)) : ℤ)

end

end A158074.P18308986372081409104

/-!
# A158075: Prime numbers p such that (the largest digit of p) - (the smallest digit of p) is prime.

The programs for A158075, there is no canonical definition to state claims against.
-/

/-! ## A158075.P5686448695661938791

`A087593(lt[A341144(n), A003573(n+1)])`
-/

namespace A158075.P5686448695661938791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341144 (n + 30)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087593 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158075.P5686448695661938791

/-! ## A158075.P5247668026807030368

`A087593(lt[A087629(n+1), A087580(n+1)])`
-/

namespace A158075.P5247668026807030368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087593 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158075.P5247668026807030368

/-! ## A158075.P14672186088080386179

`A087593(lt[A338131(3*n), A338132(n+5)])`
-/

namespace A158075.P14672186088080386179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338131 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338132 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087593 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158075.P14672186088080386179

/-! ## A158075.P12732668635849505441

`A087593(comp[-a(and(n, n-1))])` with `a(0)=10`
-/

namespace A158075.P12732668635849505441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087593 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A158075.P12732668635849505441

/-! ## A158075.P10951326475695575938

`∩[A184431(n+1), A087593(n)]`
-/

namespace A158075.P10951326475695575938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158075.P10951326475695575938

/-!
# A158077: Denominator of Bernoulli(n, 1/6).

The programs for A158077, the canonical program `A158077.P7790536716201207724` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158077 has offset 0).

The definition of A158077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158077.P7790536716201207724

`lcm(3^n, A157782(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A158077

/-- `lcm(3^n, A157782(n))` -/
def P7790536716201207724.Spec : Prop :=
  ∀ n, (P7790536716201207724.a n : ℤ) = A158077 n

theorem P7790536716201207724.correct : P7790536716201207724.Spec := by
  intro n
  simp only [A158077]

end A158077

/-! ## A158077.P693658972664487535

`lcm(ceil(2^(n-1)), A158301(n))`
-/

namespace A158077.P693658972664487535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A158301 n)

end

end A158077.P693658972664487535

namespace A158077

/-- `lcm(ceil(2^(n-1)), A158301(n))` -/
def P693658972664487535.Spec : Prop :=
  ∀ n, (P693658972664487535.a n : ℤ) = A158077 n

end A158077

/-! ## A158077.P10787347215892207115

`lcm(A011782(n), A158207(n))`
-/

namespace A158077.P10787347215892207115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 n) (A158207 n)

end

end A158077.P10787347215892207115

namespace A158077

/-- `lcm(A011782(n), A158207(n))` -/
def P10787347215892207115.Spec : Prop :=
  ∀ n, (P10787347215892207115.a n : ℤ) = A158077 n

end A158077

/-! ## A158077.P16509506226030156174

`A000034(A289207(n))*A158207(n)`
-/

namespace A158077.P16509506226030156174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A289207 n).toNat * A158207 n

end

end A158077.P16509506226030156174

namespace A158077

/-- `A000034(A289207(n))*A158207(n)` -/
def P16509506226030156174.Spec : Prop :=
  ∀ n, P16509506226030156174.a n = A158077 n

end A158077

/-! ## A158077.P15637330018829141922

`A000034(A289207(n))²*A158301(n)`
-/

namespace A158077.P15637330018829141922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A289207 n).toNat ^ 2 * A158301 n

end

end A158077.P15637330018829141922

namespace A158077

/-- `A000034(A289207(n))²*A158301(n)` -/
def P15637330018829141922.Spec : Prop :=
  ∀ n, P15637330018829141922.a n = A158077 n

end A158077

/-! ## A158077.P12458686739974858521

`A000034(A233583(n+1))*A158207(n)`
-/

namespace A158077.P12458686739974858521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A233583 (n + 1)).toNat * A158207 n

end

end A158077.P12458686739974858521

namespace A158077

/-- `A000034(A233583(n+1))*A158207(n)` -/
def P12458686739974858521.Spec : Prop :=
  ∀ n, P12458686739974858521.a n = A158077 n

end A158077

/-! ## A158077.P17189272731581505668

`A158207(n)/A158301(n)*A158207(n)`
-/

namespace A158077.P17189272731581505668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158207 n : ℚ) / (A158301 n : ℚ) * (A158207 n : ℚ)

end

end A158077.P17189272731581505668

namespace A158077

/-- `A158207(n)/A158301(n)*A158207(n)` -/
def P17189272731581505668.Spec : Prop :=
  ∀ n, P17189272731581505668.a n = (A158077 n : ℚ)

end A158077

/-! ## A158077.P16309165944180921027

`A000034(A233583(n+1))²*A158301(n)`
-/

namespace A158077.P16309165944180921027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A233583 (n + 1)).toNat ^ 2 * A158301 n

end

end A158077.P16309165944180921027

namespace A158077

/-- `A000034(A233583(n+1))²*A158301(n)` -/
def P16309165944180921027.Spec : Prop :=
  ∀ n, P16309165944180921027.a n = A158077 n

end A158077

/-! ## A158077.P14314367044359628466

`A158207(n)²/A158301(n)`
-/

namespace A158077.P14314367044359628466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158207 n ^ 2 : ℚ) / (A158301 n : ℚ)

end

end A158077.P14314367044359628466

namespace A158077

/-- `A158207(n)²/A158301(n)` -/
def P14314367044359628466.Spec : Prop :=
  ∀ n, P14314367044359628466.a n = (A158077 n : ℚ)

end A158077

/-!
# A158078: G.f. 1/( (1 + x)^7*(1 -7*x +28*x^2 -84*x^3 +210*x^4 -462*x^5 +924*x^6 -1463*x^7 +1738*x^8 -1463*x^9 +924*x^10 -462*x^11 +210*x^12 -84*x^13 +28*x^14 -7*x^15 +x^16) ).

The programs for A158078, there is no canonical definition to state claims against.
-/

/-! ## A158078.P337875435706034136

`A000038(A000081(n))-A002289(n)`
-/

namespace A158078.P337875435706034136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A000081 n).toNat - A002289 n

end

end A158078.P337875435706034136

/-! ## A158078.P15749223516542648272

`A000038(A033487(n))-A002289(n)`
-/

namespace A158078.P15749223516542648272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033487 n).toNat - A002289 n

end

end A158078.P15749223516542648272

/-! ## A158078.P7628040151761538563

`A000122(A287101(n))-A002289(n)`
-/

namespace A158078.P7628040151761538563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A287101 n).toNat - A002289 n

end

end A158078.P7628040151761538563

/-! ## A158078.P15203027254770568685

`A000122(A288897(n))-A002289(n)`
-/

namespace A158078.P15203027254770568685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A288897 n).toNat - A002289 n

end

end A158078.P15203027254770568685

/-! ## A158078.P14448159033446580906

`A002289(n)*A033999(A048573(n))`
-/

namespace A158078.P14448159033446580906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002289 n * A033999 (A048573 n).toNat

end

end A158078.P14448159033446580906

/-!
# A158082: Squares whose decimal expansion contains no digit greater than 4.

The programs for A158082, there is no canonical definition to state claims against.
-/

/-! ## A158082.P10161975731106440646

`A158304(n+1)²`
-/

namespace A158082.P10161975731106440646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158304 (n + 1) ^ 2

end

end A158082.P10161975731106440646

/-! ## A158082.P11933104715326676590

`A158304(-xor(n, -1))^2`
-/

namespace A158082.P11933104715326676590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158304 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

end

end A158082.P11933104715326676590

/-! ## A158082.P15771721331485857519

`A158304(A000027(n+1))^2`
-/

namespace A158082.P15771721331485857519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158304 (A000027 (n + 1)).toNat ^ 2

end

end A158082.P15771721331485857519

/-! ## A158082.P2125482308540756886

`A158304(A000027(n+1))*A158304(n+1)`
-/

namespace A158082.P2125482308540756886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158304 (A000027 (n + 1)).toNat * A158304 (n + 1)

end

end A158082.P2125482308540756886

/-! ## A158082.P12564873386732649388

`A158304(n+1)^A000005(A107288(n+1))`
-/

namespace A158082.P12564873386732649388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158304 (n + 1) : ℚ) ^ (A000005 (A107288 (n + 1)).toNat : ℤ)

end

end A158082.P12564873386732649388

/-! ## A158082.P14775568461607416220

`A158304(n+1)^A000005(A111863(n+1))`
-/

namespace A158082.P14775568461607416220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158304 (n + 1) : ℚ) ^ (A000005 (A111863 (n + 1)).toNat : ℤ)

end

end A158082.P14775568461607416220

/-! ## A158082.P15078047939310331334

`A158304(n+1)^A000005(A151953(n+1))`
-/

namespace A158082.P15078047939310331334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158304 (n + 1) : ℚ) ^ (A000005 (A151953 (n + 1)).toNat : ℤ)

end

end A158082.P15078047939310331334

/-!
# A158083: a(n) = Fibonacci(n+3) for n < 5 and 9*n - 15 otherwise.

The programs for A158083, the canonical program `A158083.P3245638432221577202` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158083 has offset 0).

The definition of A158083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158083.P3245638432221577202

`9+a(n-1)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8, a(4)=13, a(5)=30`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158083

/-- `9+a(n-1)` -/
def P3245638432221577202.Spec : Prop :=
  ∀ n, (P3245638432221577202.a n : ℤ) = A158083 n

theorem P3245638432221577202.correct : P3245638432221577202.Spec := by
  intro n
  simp only [A158083]

end A158083

/-!
# A158084: Prime numbers, with a(1)=2, a(n+1) = least prime such that (sum of even digits of a(n)) < (sum of even digits of a(n+1)).

The programs for A158084, there is no canonical definition to state claims against.
-/

/-! ## A158084.P2078077166935180201

`p?[A246099(3*n+1)-A246103(n+1)]`
-/

namespace A158084.P2078077166935180201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246099 (3 * n + 1) - A246103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158084.P2078077166935180201

/-!
# A158085: Starting at a(1)=2, a(n) is the smallest prime larger than a(n-1) such that the sum of odd digits of a(n) is not smaller than the sum of odd digits of a(n-1).

The programs for A158085, there is no canonical definition to state claims against.
-/

/-! ## A158085.P5804956288726081785

`∩[A069709(n+1), A174876(n+1)]`
-/

namespace A158085.P5804956288726081785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158085.P5804956288726081785

/-! ## A158085.P17645773471804635470

`∩[A069709(n+1), A372281(n+1)]`
-/

namespace A158085.P17645773471804635470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158085.P17645773471804635470

/-! ## A158085.P5867787848948282275

`filter[A069802(n+1), A167850(#)]`
-/

namespace A158085.P5867787848948282275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167850 (f1 j).toNat = 1) n)

end

end A158085.P5867787848948282275

/-! ## A158085.P12903533333799362341

`filter[A069802(n+1), A167851(#)]`
-/

namespace A158085.P12903533333799362341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167851 (f1 j).toNat = 1) n)

end

end A158085.P12903533333799362341

/-!
# A158086: Number of occurrences of n as an entry in rows <= 2n of Losanitsch's triangle (A034851).

The programs for A158086, there is no canonical definition to state claims against.
-/

/-! ## A158086.P15541278086048684057

`A072909(p?[A123346(n)])+3`
-/

namespace A158086.P15541278086048684057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 3

end

end A158086.P15541278086048684057

/-! ## A158086.P1838912599075328755

`A276327(A000325(n))+3`
-/

namespace A158086.P1838912599075328755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276327 (A000325 n).toNat + 3

end

end A158086.P1838912599075328755

/-! ## A158086.P6770098640267371554

`A277735(A215928(n))+4`
-/

namespace A158086.P6770098640267371554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (A215928 n).toNat + 4

end

end A158086.P6770098640267371554

/-! ## A158086.P10001886755652824370

`A261209(A297321(3*n+1))+3`
-/

namespace A158086.P10001886755652824370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261209 (A297321 (3 * n + 1)).toNat + 3

end

end A158086.P10001886755652824370

/-! ## A158086.P5180436094483037788

`gcd(n+2, A202085(A302081(n+1))%5)+3`
-/

namespace A158086.P5180436094483037788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (Int.tmod (A202085 (A302081 (n + 1)).toNat) 5) + 3

end

end A158086.P5180436094483037788

/-!
# A158087: Prime numbers p such that largest digit of p / smallest digit of p = prime.

The programs for A158087, there is no canonical definition to state claims against.
-/

/-! ## A158087.P13464156891619483528

`∩[A134873(n+1), A358076(n+1)]`
-/

namespace A158087.P13464156891619483528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158087.P13464156891619483528

/-! ## A158087.P13884355923444840669

`∩[A162855(n+1), A187234(n+1)]`
-/

namespace A158087.P13884355923444840669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158087.P13884355923444840669

/-! ## A158087.P7151716814572229549

`∩[A011531(n+1), A359978(n+1)]`
-/

namespace A158087.P7151716814572229549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158087.P7151716814572229549

/-!
# A158089: Palindromic primes that contain at least one embedded palindromic prime by removing 1 or 2 digits.

The programs for A158089, there is no canonical definition to state claims against.
-/

/-! ## A158089.P1048917903764661515

`p?[A002113(eq[1, A033665(n)]+2)]`
-/

namespace A158089.P1048917903764661515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158089.P1048917903764661515

/-! ## A158089.P15401081491578622064

`p?[A033665(n)*A110751(n+1)]`
-/

namespace A158089.P15401081491578622064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n * A110751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158089.P15401081491578622064

/-! ## A158089.P1181319452190693510

`p?[A002113(n+2)*A033665(n)]`
-/

namespace A158089.P1181319452190693510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2) * A033665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158089.P1181319452190693510

/-! ## A158089.P18213855934390315930

`A085112(lt[A114320(n), A085123(n+1)])`
-/

namespace A158089.P18213855934390315930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085112 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158089.P18213855934390315930

/-!
# A158090: Period 9: repeat [0, 6, 0, 6, 0, 0, 3, 3, 0].

The programs for A158090, the canonical program `A158090.P16277661402978068912` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158090 has offset 0).

The definition of A158090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158090.P16277661402978068912

`a(n-9)` with `a(0)=0, a(1)=6, a(2)=0, a(3)=6, a(4)=0, a(5)=0, a(6)=3, a(7)=3, a(8)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158090

/-- `a(n-9)` -/
def P16277661402978068912.Spec : Prop :=
  ∀ n, (P16277661402978068912.a n : ℤ) = A158090 n

theorem P16277661402978068912.correct : P16277661402978068912.Spec := by
  intro n
  simp only [A158090]

end A158090

/-!
# A158092: Number of solutions to +- 1 +- 2^2 +- 3^2 +- 4^2 +- ... +- n^2 = 0.

The programs for A158092, there is no canonical definition to state claims against.
-/

/-! ## A158092.P13906545872488866514

`2*A083527(n+1)`
-/

namespace A158092.P13906545872488866514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083527 (n + 1)

end

end A158092.P13906545872488866514

/-! ## A158092.P14819982422678557519

`A083527(char[1]+1+n)+A083527(n+1)`
-/

namespace A158092.P14819982422678557519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083527 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A083527 (n + 1)

end

end A158092.P14819982422678557519

/-! ## A158092.P13656501390112175703

`A083527(n+1)+A083527(n+1)+A000007(n+1)`
-/

namespace A158092.P13656501390112175703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083527 (n + 1) + (A083527 (n + 1) + A000007 (n + 1))

end

end A158092.P13656501390112175703

/-! ## A158092.P12321573605243169547

`(A083527(n+1)+A083527(n+1))%A025591(n)`
-/

namespace A158092.P12321573605243169547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083527 (n + 1) + A083527 (n + 1)) (A025591 n)

end

end A158092.P12321573605243169547

/-! ## A158092.P8038982404783374843

`A083527(n+1)+A083527(n+1)%A005009(n)`
-/

namespace A158092.P8038982404783374843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083527 (n + 1) + Int.tmod (A083527 (n + 1)) (A005009 n)

end

end A158092.P8038982404783374843

/-! ## A158092.P12573336592068333943

`and(2, n)*A307877(n+1)`
-/

namespace A158092.P12573336592068333943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℤ) * A307877 (n + 1)

end

end A158092.P12573336592068333943

/-!
# A158094: G.f. Product_{n>=1} (1 + a(n)*x^n) = Sum_{n>=0} n!*x^n.

The programs for A158094, there is no canonical definition to state claims against.
-/

/-! ## A158094.P5643544183679348086

`A168246(n+1)+A007814(A057004(∑[n+2]))`
-/

namespace A158094.P5643544183679348086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168246 (n + 1) + A007814 (A057004 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A158094.P5643544183679348086

/-! ## A158094.P8286211334933232380

`∑[A257684(∏[n²/a(n-1)+3])]` with `a(0)=5, a(1)=1, a(2)=3`
-/

namespace A158094.P8286211334933232380
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [5, 1, 3] fun n f2 =>
  (n ^ 2 : ℚ) / f2 (n - 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158094.P8286211334933232380

/-!
# A158095: G.f.: A(x) = exp( Sum_{n>=1} 2*sigma(n,n-1)*x^n/n ).

The programs for A158095, there is no canonical definition to state claims against.
-/

/-! ## A158095.P5759470997975353107

`A347655(A094981(n))`
-/

namespace A158095.P5759470997975353107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (A094981 n).toNat

end

end A158095.P5759470997975353107

/-! ## A158095.P10674210142417936673

`∑[A306385(A255047(n))]`
-/

namespace A158095.P10674210142417936673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306385 (A255047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158095.P10674210142417936673

