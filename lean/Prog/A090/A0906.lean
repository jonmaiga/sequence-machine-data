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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
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
# A090600: Number of n-element groupoids with an identity, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A090600, there is no canonical definition to state claims against.
-/

/-! ## A090600.P1548538975680202324

`(A090601(n+1)+A090604(n+1))/2`
-/

namespace A090600.P1548538975680202324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090601 (n + 1) + A090604 (n + 1) : ℚ) / 2

end

end A090600.P1548538975680202324

/-!
# A090601: Number of n-element groupoids with an identity.

The programs for A090601, there is no canonical definition to state claims against.
-/

/-! ## A090601.P17240157464818772824

`2*A090600(n+1)-A090604(n+1)`
-/

namespace A090601.P17240157464818772824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090600 (n + 1) - A090604 (n + 1)

end

end A090601.P17240157464818772824

/-!
# A090602: Number of n-element labeled groupoids with an identity.

The programs for A090602, the canonical program `A090602.P1467229829015833437` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090602 has offset 0).

The definition of A090602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090602.P1467229829015833437

`n^((n-1)²+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090602

/-- `n^((n-1)²+1)` -/
def P1467229829015833437.Spec : Prop :=
  ∀ n, P1467229829015833437.a n = (A090602 n : ℚ)

end A090602

/-! ## A090602.P4276813214967551467

`floor(n^-xor(-1, (1-n)²))`
-/

namespace A090602.P4276813214967551467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (-Int.xor (-1) ((1 - (n : ℤ)) ^ 2) : ℤ)⌋

end

end A090602.P4276813214967551467

namespace A090602

/-- `floor(n^-xor(-1, (1-n)²))` -/
def P4276813214967551467.Spec : Prop :=
  ∀ n, P4276813214967551467.a n = A090602 n

end A090602

/-! ## A090602.P15605680423067001362

`ceil(n^-xor(-1, (1-n)²))`
-/

namespace A090602.P15605680423067001362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ (-Int.xor (-1) ((1 - (n : ℤ)) ^ 2) : ℤ)⌉

end

end A090602.P15605680423067001362

namespace A090602

/-- `ceil(n^-xor(-1, (1-n)²))` -/
def P15605680423067001362.Spec : Prop :=
  ∀ n, P15605680423067001362.a n = A090602 n

end A090602

/-! ## A090602.P374478660482155842

`round(n^-xor(-1, (1-n)²))`
-/

namespace A090602.P374478660482155842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (-Int.xor (-1) ((1 - (n : ℤ)) ^ 2) : ℤ))

end

end A090602.P374478660482155842

namespace A090602

/-- `round(n^-xor(-1, (1-n)²))` -/
def P374478660482155842.Spec : Prop :=
  ∀ n, P374478660482155842.a n = A090602 n

end A090602

/-! ## A090602.P7668004916793000644

`floor(n^ceil(acot(n-1)^-2))`
-/

namespace A090602.P7668004916793000644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ) ^ (-2 : ℤ)⌉ : ℤ)⌋

end

end A090602.P7668004916793000644

namespace A090602

/-- `floor(n^ceil(acot(n-1)^-2))` -/
def P7668004916793000644.Spec : Prop :=
  ∀ n, P7668004916793000644.a n = A090602 n

end A090602

/-!
# A090603: Number of n-element labeled groupoids with a fixed identity.

The programs for A090603, there is no canonical definition to state claims against.
-/

/-! ## A090603.P7975004412568802719

`(n+1)^n²`
-/

namespace A090603.P7975004412568802719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n ^ 2

end

end A090603.P7975004412568802719

/-! ## A090603.P10934762527932450143

`abs(xor(n, -1)^n²)`
-/

namespace A090603.P10934762527932450143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) ^ n ^ 2|

end

end A090603.P10934762527932450143

/-! ## A090603.P6768118446295148145

`record[(n-1)^(n-2)²]`
-/

namespace A090603.P6768118446295148145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) ^ (((n : ℤ) - 2) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090603.P6768118446295148145

/-! ## A090603.P4093292275855996729

`abs(xor(n, -1)^n^n)`
-/

namespace A090603.P4093292275855996729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.xor (n : ℤ) (-1) ^ n) ^ n|

end

end A090603.P4093292275855996729

/-! ## A090603.P1702988357700477984

`∑{digits}[n, (n+1)^(n*#)]`
-/

namespace A090603.P1702988357700477984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n + 1) ^ (n * x)).sum

end

end A090603.P1702988357700477984

/-!
# A090604: Number of n-element self-converse groupoids with an identity.

The programs for A090604, there is no canonical definition to state claims against.
-/

/-! ## A090604.P8841100223310749345

`2*A090600(n+1)-A090601(n+1)`
-/

namespace A090604.P8841100223310749345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090600 (n + 1) - A090601 (n + 1)

end

end A090604.P8841100223310749345

/-!
# A090605: Numbers m such that m-th prime is of the form 60*k+1.

The programs for A090605, the canonical program `A090605.P9514351185827622327` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090605 has offset 1).

The definition of A090605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090605.P9514351185827622327

`∩[A049511(n+1), A160594(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A090605

/-- `∩[A049511(n+1), A160594(n+1)]` -/
def P9514351185827622327.Spec : Prop :=
  ∀ n, (P9514351185827622327.a n : ℤ) = A090605 (n + 1)

theorem P9514351185827622327.correct : P9514351185827622327.Spec := by
  intro n
  simp only [A090605, Nat.add_sub_cancel]

end A090605

/-! ## A090605.P13475059161080352120

`A000720(A088955(n+1))`
-/

namespace A090605.P13475059161080352120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088955 (n + 1)).toNat

end

end A090605.P13475059161080352120

namespace A090605

/-- `A000720(A088955(n+1))` -/
def P13475059161080352120.Spec : Prop :=
  ∀ n, P13475059161080352120.a n = A090605 (n + 1)

end A090605

/-! ## A090605.P6634826010047392274

`A000720(p?[A128470(2*n)])`
-/

namespace A090605.P6634826010047392274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090605.P6634826010047392274

namespace A090605

/-- `A000720(p?[A128470(2*n)])` -/
def P6634826010047392274.Spec : Prop :=
  ∀ n, P6634826010047392274.a n = A090605 (n + 1)

end A090605

/-! ## A090605.P16508763585324307125

`A061395(p?[A128470(2*n)])`
-/

namespace A090605.P16508763585324307125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090605.P16508763585324307125

namespace A090605

/-- `A061395(p?[A128470(2*n)])` -/
def P16508763585324307125.Spec : Prop :=
  ∀ n, P16508763585324307125.a n = A090605 (n + 1)

end A090605

/-! ## A090605.P542968560571622729

`A000720(p?[A017281(6*n)])`
-/

namespace A090605.P542968560571622729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090605.P542968560571622729

namespace A090605

/-- `A000720(p?[A017281(6*n)])` -/
def P542968560571622729.Spec : Prop :=
  ∀ n, P542968560571622729.a n = A090605 (n + 1)

end A090605

/-! ## A090605.P3499484917107261934

`A000720(p?[A017533(5*(n+1))])`
-/

namespace A090605.P3499484917107261934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090605.P3499484917107261934

namespace A090605

/-- `A000720(p?[A017533(5*(n+1))])` -/
def P3499484917107261934.Spec : Prop :=
  ∀ n, P3499484917107261934.a n = A090605 (n + 1)

end A090605

/-! ## A090605.P12792143229811366917

`A000720(p?[A016777(A008602(n))])`
-/

namespace A090605.P12792143229811366917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A008602 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090605.P12792143229811366917

namespace A090605

/-- `A000720(p?[A016777(A008602(n))])` -/
def P12792143229811366917.Spec : Prop :=
  ∀ n, P12792143229811366917.a n = A090605 (n + 1)

end A090605

/-! ## A090605.P2016575825276321223

`A344616(p?[A128470(2*n)])`
-/

namespace A090605.P2016575825276321223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090605.P2016575825276321223

namespace A090605

/-- `A344616(p?[A128470(2*n)])` -/
def P2016575825276321223.Spec : Prop :=
  ∀ n, P2016575825276321223.a n = A090605 (n + 1)

end A090605

/-! ## A090605.P9243405232005685831

`A000720(p?[A005408(30*(n+1))])`
-/

namespace A090605.P9243405232005685831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (30 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090605.P9243405232005685831

namespace A090605

/-- `A000720(p?[A005408(30*(n+1))])` -/
def P9243405232005685831.Spec : Prop :=
  ∀ n, P9243405232005685831.a n = A090605 (n + 1)

end A090605

/-! ## A090605.P4470106818480787500

`A026233(p?[61*(n+1)-n])`
-/

namespace A090605.P4470106818480787500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090605.P4470106818480787500

namespace A090605

/-- `A026233(p?[61*(n+1)-n])` -/
def P4470106818480787500.Spec : Prop :=
  ∀ n, P4470106818480787500.a n = A090605 (n + 1)

end A090605

/-!
# A090606: A089144 indexed by A000040.

The programs for A090606, there is no canonical definition to state claims against.
-/

/-! ## A090606.P10006909156969744698

`A000720(A089144(n+1))`
-/

namespace A090606.P10006909156969744698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089144 (n + 1)).toNat

end

end A090606.P10006909156969744698

/-! ## A090606.P2182663749357759362

`record[A049084(A186243(n+1))]`
-/

namespace A090606.P2182663749357759362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A186243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090606.P2182663749357759362

/-! ## A090606.P14761207912875383859

`A003963(p?[A089144(n+1)])`
-/

namespace A090606.P14761207912875383859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090606.P14761207912875383859

/-! ## A090606.P2983134158238884308

`A026233(p?[A089144(n+1)])`
-/

namespace A090606.P2983134158238884308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090606.P2983134158238884308

/-! ## A090606.P3324445971361248560

`A049084(p?[A089144(n+1)])`
-/

namespace A090606.P3324445971361248560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090606.P3324445971361248560

/-! ## A090606.P6200261047518234017

`A055396(p?[A089144(n+1)])`
-/

namespace A090606.P6200261047518234017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090606.P6200261047518234017

/-! ## A090606.P4213555812277661832

`A000720(p?[A186243(n+1)])`
-/

namespace A090606.P4213555812277661832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090606.P4213555812277661832

/-! ## A090606.P11042981933862508150

`A003963(p?[A186243(n+1)])`
-/

namespace A090606.P11042981933862508150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090606.P11042981933862508150

/-! ## A090606.P16833985560266441644

`A026233(p?[A186243(n+1)])`
-/

namespace A090606.P16833985560266441644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090606.P16833985560266441644

/-! ## A090606.P9797998738108502372

`A241917(p?[A089144(n+1)])`
-/

namespace A090606.P9797998738108502372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090606.P9797998738108502372

/-!
# A090607: Primes of the form 6*p - 5 such that p and 6*p - 1 are primes.

The programs for A090607, there is no canonical definition to state claims against.
-/

/-! ## A090607.P10168083791495716600

`6*A089144(n+1)-5`
-/

namespace A090607.P10168083791495716600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A089144 (n + 1) - 5

end

end A090607.P10168083791495716600

/-! ## A090607.P986786510341314308

`A090609(n+1)-4`
-/

namespace A090607.P986786510341314308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090609 (n + 1) - 4

end

end A090607.P986786510341314308

/-! ## A090607.P3837756691129950022

`p?[A063639(n+2)-4]`
-/

namespace A090607.P3837756691129950022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090607.P3837756691129950022

/-! ## A090607.P9250554439654168169

`p?[A079150(n+5)-4]`
-/

namespace A090607.P9250554439654168169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079150 (n + 5) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090607.P9250554439654168169

/-! ## A090607.P2089841129697907646

`A000040(A090608(n+1))`
-/

namespace A090607.P2089841129697907646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A090608 (n + 1)).toNat

end

end A090607.P2089841129697907646

/-!
# A090608: A090607 indexed by A000040.

The programs for A090608, there is no canonical definition to state claims against.
-/

/-! ## A090608.P4197243831752442310

`A090610(n+1)-1`
-/

namespace A090608.P4197243831752442310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090610 (n + 1) - 1

end

end A090608.P4197243831752442310

/-! ## A090608.P16993997685286844305

`A023443(A090610(n+1))`
-/

namespace A090608.P16993997685286844305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A090610 (n + 1)).toNat

end

end A090608.P16993997685286844305

/-! ## A090608.P4617941737493091141

`record[A090610(A344180(n))-1]`
-/

namespace A090608.P4617941737493091141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090610 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090608.P4617941737493091141

/-! ## A090608.P1960719284638646556

`A023444(A090610(n+1)+1)`
-/

namespace A090608.P1960719284638646556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A090610 (n + 1) + 1).toNat

end

end A090608.P1960719284638646556

/-! ## A090608.P6992179932523874826

`A289207(A090610(n+1)+1)`
-/

namespace A090608.P6992179932523874826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A090610 (n + 1) + 1).toNat

end

end A090608.P6992179932523874826

/-! ## A090608.P14752578910365328173

`A020936(A090606(n+1))-1`
-/

namespace A090608.P14752578910365328173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020936 (A090606 (n + 1)).toNat - 1

end

end A090608.P14752578910365328173

/-! ## A090608.P14010165108852291637

`A023445(A090610(n+1)+2)`
-/

namespace A090608.P14010165108852291637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A090610 (n + 1) + 2).toNat

end

end A090608.P14010165108852291637

/-! ## A090608.P11925030174141077143

`A046667(2*A090610(n+1))`
-/

namespace A090608.P11925030174141077143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A090610 (n + 1)).toNat

end

end A090608.P11925030174141077143

/-! ## A090608.P18212884082032891583

`A060000(lcm((-1)^A000040(n+2), A090610(n+1)))`
-/

namespace A090608.P18212884082032891583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000040 (n + 2) : ℤ))) (A090610 (n + 1)))

end

end A090608.P18212884082032891583

/-! ## A090608.P811839240431991090

`A060000(and((-1)^A000040(n+2), A090610(n+1)))`
-/

namespace A090608.P811839240431991090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (Int.land (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000040 (n + 2) : ℤ))) (A090610 (n + 1))).toNat

end

end A090608.P811839240431991090

/-!
# A090609: Primes of the form 6*p - 1 such that p and 6*p - 5 are primes.

The programs for A090609, there is no canonical definition to state claims against.
-/

/-! ## A090609.P17586664240960022814

`6*A089144(n+1)-1`
-/

namespace A090609.P17586664240960022814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A089144 (n + 1) - 1

end

end A090609.P17586664240960022814

/-! ## A090609.P16239434383987224414

`A090607(n+1)+4`
-/

namespace A090609.P16239434383987224414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090607 (n + 1) + 4

end

end A090609.P16239434383987224414

/-! ## A090609.P2267410133858506363

`p?[A063639(n+2)-4]+4`
-/

namespace A090609.P2267410133858506363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A090609.P2267410133858506363

/-! ## A090609.P16611689189382035918

`A000040(A090610(n+1))`
-/

namespace A090609.P16611689189382035918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A090610 (n + 1)).toNat

end

end A090609.P16611689189382035918

/-! ## A090609.P1171877458833513632

`A045319(A090608(n+1))`
-/

namespace A090609.P1171877458833513632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A090608 (n + 1)).toNat

end

end A090609.P1171877458833513632

/-!
# A090610: A090609 indexed by A000040.

The programs for A090610, there is no canonical definition to state claims against.
-/

/-! ## A090610.P1459352727661923757

`A090608(n+1)+1`
-/

namespace A090610.P1459352727661923757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090608 (n + 1) + 1

end

end A090610.P1459352727661923757

/-! ## A090610.P3745833554023557294

`A020725(A090608(n+1))`
-/

namespace A090610.P3745833554023557294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A090608 (n + 1)).toNat

end

end A090610.P3745833554023557294

/-! ## A090610.P11906737892080988444

`A020936(A090606(n+1))`
-/

namespace A090610.P11906737892080988444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020936 (A090606 (n + 1)).toNat

end

end A090610.P11906737892080988444

/-! ## A090610.P8440029099909869873

`A099802(3*A089144(n+1))`
-/

namespace A090610.P8440029099909869873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (3 * A089144 (n + 1)).toNat

end

end A090610.P8440029099909869873

/-! ## A090610.P2359002128901775495

`A000720(6*A089144(n+1))`
-/

namespace A090610.P2359002128901775495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (6 * A089144 (n + 1)).toNat

end

end A090610.P2359002128901775495

/-!
# A090612: Numbers k such that the k-th prime is of the form 2*j^2 + 1.

The programs for A090612, there is no canonical definition to state claims against.
-/

/-! ## A090612.P655782931489475838

`eq[2, A069114(n+1)]+1`
-/

namespace A090612.P655782931489475838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069114 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090612.P655782931489475838

/-! ## A090612.P7336675125309171467

`A000720(p?[2*n²+1])`
-/

namespace A090612.P7336675125309171467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090612.P7336675125309171467

/-! ## A090612.P9268236072730335242

`A061395(p?[2*n²+1])`
-/

namespace A090612.P9268236072730335242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090612.P9268236072730335242

/-! ## A090612.P16228090142828695793

`A000720(or(1, p?[or(1, 2*n²)]))`
-/

namespace A090612.P16228090142828695793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A090612.P16228090142828695793

/-! ## A090612.P816592890494065876

`A061395(or(1, p?[or(1, 2*n²)]))`
-/

namespace A090612.P816592890494065876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A090612.P816592890494065876

/-!
# A090613: Numbers k such that the k-th prime is congruent to 3 mod 7.

The programs for A090613, the canonical program `A090613.P2640039288221416207` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090613 has offset 1).

The definition of A090613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1678 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090613.P2640039288221416207

`eq[3, A000040(n+1)%7]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090613

/-- `eq[3, A000040(n+1)%7]+1` -/
def P2640039288221416207.Spec : Prop :=
  ∀ n, (P2640039288221416207.a n : ℤ) = A090613 (n + 1)

theorem P2640039288221416207.correct : P2640039288221416207.Spec := by
  intro n
  simp only [A090613, Nat.add_sub_cancel]

end A090613

/-! ## A090613.P702163953030145752

`A000720(p?[7*n+3])`
-/

namespace A090613.P702163953030145752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090613.P702163953030145752

namespace A090613

/-- `A000720(p?[7*n+3])` -/
def P702163953030145752.Spec : Prop :=
  ∀ n, P702163953030145752.a n = A090613 (n + 1)

end A090613

/-! ## A090613.P10461594881960856495

`A000720(A045437(n+1))`
-/

namespace A090613.P10461594881960856495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045437 (n + 1)).toNat

end

end A090613.P10461594881960856495

namespace A090613

/-- `A000720(A045437(n+1))` -/
def P10461594881960856495.Spec : Prop :=
  ∀ n, P10461594881960856495.a n = A090613 (n + 1)

end A090613

/-! ## A090613.P8165289336684221600

`record[A263111(7*n+3)]`
-/

namespace A090613.P8165289336684221600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (7 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090613.P8165289336684221600

namespace A090613

/-- `record[A263111(7*n+3)]` -/
def P8165289336684221600.Spec : Prop :=
  ∀ n, P8165289336684221600.a n = A090613 (n + 1)

end A090613

/-! ## A090613.P17865100181717269272

`A316524(A045437(n+1)%A369240(n+1))`
-/

namespace A090613.P17865100181717269272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (Int.tmod (A045437 (n + 1)) (A369240 (n + 1))).toNat

end

end A090613.P17865100181717269272

namespace A090613

/-- `A316524(A045437(n+1)%A369240(n+1))` -/
def P17865100181717269272.Spec : Prop :=
  ∀ n, P17865100181717269272.a n = A090613 (n + 1)

end A090613

/-! ## A090613.P4037949885472722434

`record[A049084(7*n+3)]`
-/

namespace A090613.P4037949885472722434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (7 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090613.P4037949885472722434

namespace A090613

/-- `record[A049084(7*n+3)]` -/
def P4037949885472722434.Spec : Prop :=
  ∀ n, P4037949885472722434.a n = A090613 (n + 1)

end A090613

/-! ## A090613.P12925836047549280736

`record[A055396(7*n+3)]`
-/

namespace A090613.P12925836047549280736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (7 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090613.P12925836047549280736

namespace A090613

/-- `record[A055396(7*n+3)]` -/
def P12925836047549280736.Spec : Prop :=
  ∀ n, P12925836047549280736.a n = A090613 (n + 1)

end A090613

/-! ## A090613.P15717370179579965627

`record[A241917(7*n+3)]`
-/

namespace A090613.P15717370179579965627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (7 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090613.P15717370179579965627

namespace A090613

/-- `record[A241917(7*n+3)]` -/
def P15717370179579965627.Spec : Prop :=
  ∀ n, P15717370179579965627.a n = A090613 (n + 1)

end A090613

/-! ## A090613.P13786715117705297620

`record[A277697(7*n+3)]`
-/

namespace A090613.P13786715117705297620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (7 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090613.P13786715117705297620

namespace A090613

/-- `record[A277697(7*n+3)]` -/
def P13786715117705297620.Spec : Prop :=
  ∀ n, P13786715117705297620.a n = A090613 (n + 1)

end A090613

/-! ## A090613.P14325281610165685175

`record[A277707(7*n+3)]`
-/

namespace A090613.P14325281610165685175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (7 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090613.P14325281610165685175

namespace A090613

/-- `record[A277707(7*n+3)]` -/
def P14325281610165685175.Spec : Prop :=
  ∀ n, P14325281610165685175.a n = A090613 (n + 1)

end A090613

/-! ## A090613.P5798488469531704250

`A003963(p?[7*n+3])`
-/

namespace A090613.P5798488469531704250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090613.P5798488469531704250

namespace A090613

/-- `A003963(p?[7*n+3])` -/
def P5798488469531704250.Spec : Prop :=
  ∀ n, P5798488469531704250.a n = A090613 (n + 1)

end A090613

/-! ## A090613.P14692039483098221123

`A026233(p?[7*n+3])`
-/

namespace A090613.P14692039483098221123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090613.P14692039483098221123

namespace A090613

/-- `A026233(p?[7*n+3])` -/
def P14692039483098221123.Spec : Prop :=
  ∀ n, P14692039483098221123.a n = A090613 (n + 1)

end A090613

/-!
# A090614: Numbers n such that 14n+3 is prime.

The programs for A090614, the canonical program `A090614.P12269328603561590849` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090614 has offset 1).

The definition of A090614 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089033, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090614.P12269328603561590849

`A089033(n+1)/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A090614

/-- `A089033(n+1)/2` -/
def P12269328603561590849.Spec : Prop :=
  ∀ n, P12269328603561590849.a n = (A090614 (n + 1) : ℚ)

end A090614

/-! ## A090614.P14404310642614101889

`(A024903(n+1)-1)/2`
-/

namespace A090614.P14404310642614101889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024903 (n + 1) - 1 : ℚ) / 2

end

end A090614.P14404310642614101889

namespace A090614

/-- `(A024903(n+1)-1)/2` -/
def P14404310642614101889.Spec : Prop :=
  ∀ n, P14404310642614101889.a n = (A090614 (n + 1) : ℚ)

end A090614

/-! ## A090614.P10504646422022789027

`(A033868(n+1)-2)/2`
-/

namespace A090614.P10504646422022789027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033868 (n + 1) - 2 : ℚ) / 2

end

end A090614.P10504646422022789027

namespace A090614

/-- `(A033868(n+1)-2)/2` -/
def P10504646422022789027.Spec : Prop :=
  ∀ n, P10504646422022789027.a n = (A090614 (n + 1) : ℚ)

end A090614

/-! ## A090614.P2816652637492632544

`floor(A024903(n+1)/2)`
-/

namespace A090614.P2816652637492632544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024903 (n + 1) : ℚ) / 2⌋

end

end A090614.P2816652637492632544

namespace A090614

/-- `floor(A024903(n+1)/2)` -/
def P2816652637492632544.Spec : Prop :=
  ∀ n, P2816652637492632544.a n = A090614 (n + 1)

end A090614

/-! ## A090614.P8760120467984546926

`floor(A045437(n+1)/14)`
-/

namespace A090614.P8760120467984546926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045437 (n + 1) : ℚ) / 14⌋

end

end A090614.P8760120467984546926

namespace A090614

/-- `floor(A045437(n+1)/14)` -/
def P8760120467984546926.Spec : Prop :=
  ∀ n, P8760120467984546926.a n = A090614 (n + 1)

end A090614

/-! ## A090614.P10715104225151892302

`floor(A089033(-xor(n, -1))/2)`
-/

namespace A090614.P10715104225151892302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089033 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌋

end

end A090614.P10715104225151892302

namespace A090614

/-- `floor(A089033(-xor(n, -1))/2)` -/
def P10715104225151892302.Spec : Prop :=
  ∀ n, P10715104225151892302.a n = A090614 (n + 1)

end A090614

/-! ## A090614.P17390481645128533827

`A023445(A033868(n+1)/2+2)`
-/

namespace A090614.P17390481645128533827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (SequenceMachineLib.roundAway ((A033868 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A090614.P17390481645128533827

namespace A090614

/-- `A023445(A033868(n+1)/2+2)` -/
def P17390481645128533827.Spec : Prop :=
  ∀ n, P17390481645128533827.a n = A090614 (n + 1)

end A090614

/-! ## A090614.P11736894364151101602

`A046666(A033868(n+1))/2`
-/

namespace A090614.P11736894364151101602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046666 (A033868 (n + 1)).toNat : ℚ) / 2

end

end A090614.P11736894364151101602

namespace A090614

/-- `A046666(A033868(n+1))/2` -/
def P11736894364151101602.Spec : Prop :=
  ∀ n, P11736894364151101602.a n = (A090614 (n + 1) : ℚ)

end A090614

/-! ## A090614.P6423374740999687665

`eq[1, A001222(14*n+3)]`
-/

namespace A090614.P6423374740999687665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (14 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090614.P6423374740999687665

namespace A090614

/-- `eq[1, A001222(14*n+3)]` -/
def P6423374740999687665.Spec : Prop :=
  ∀ n, (P6423374740999687665.a n : ℤ) = A090614 (n + 1)

end A090614

/-! ## A090614.P2437751270213347321

`eq[2, A000005(14*n+3)]`
-/

namespace A090614.P2437751270213347321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (14 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090614.P2437751270213347321

namespace A090614

/-- `eq[2, A000005(14*n+3)]` -/
def P2437751270213347321.Spec : Prop :=
  ∀ n, (P2437751270213347321.a n : ℤ) = A090614 (n + 1)

end A090614

/-! ## A090614.P10841506213875096640

`lt[A001222(7*n+3), 2]/2`
-/

namespace A090614.P10841506213875096640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2

end

end A090614.P10841506213875096640

namespace A090614

/-- `lt[A001222(7*n+3), 2]/2` -/
def P10841506213875096640.Spec : Prop :=
  ∀ n, P10841506213875096640.a n = (A090614 (n + 1) : ℚ)

end A090614

/-! ## A090614.P3573891809344184273

`lt[A000005(13*n+n+3), 3]`
-/

namespace A090614.P3573891809344184273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (13 * n + (n + 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090614.P3573891809344184273

namespace A090614

/-- `lt[A000005(13*n+n+3), 3]` -/
def P3573891809344184273.Spec : Prop :=
  ∀ n, (P3573891809344184273.a n : ℤ) = A090614 (n + 1)

end A090614

/-! ## A090614.P11817379101211592344

`lt[A001222(7*n+7*n+3), 2]`
-/

namespace A090614.P11817379101211592344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + (7 * n + 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090614.P11817379101211592344

namespace A090614

/-- `lt[A001222(7*n+7*n+3), 2]` -/
def P11817379101211592344.Spec : Prop :=
  ∀ n, (P11817379101211592344.a n : ℤ) = A090614 (n + 1)

end A090614

/-! ## A090614.P2645065804911603390

`eq[1, A101264(A016993(n))]`
-/

namespace A090614.P2645065804911603390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A016993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090614.P2645065804911603390

namespace A090614

/-- `eq[1, A101264(A016993(n))]` -/
def P2645065804911603390.Spec : Prop :=
  ∀ n, (P2645065804911603390.a n : ℤ) = A090614 (n + 1)

end A090614

/-! ## A090614.P9801498774291149526

`eq[1, A101264(A016921(n)+n)]`
-/

namespace A090614.P9801498774291149526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A016921 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090614.P9801498774291149526

namespace A090614

/-- `eq[1, A101264(A016921(n)+n)]` -/
def P9801498774291149526.Spec : Prop :=
  ∀ n, (P9801498774291149526.a n : ℤ) = A090614 (n + 1)

end A090614

/-! ## A090614.P6445439551977184420

`A110654(A024903(n+1)-1)`
-/

namespace A090614.P6445439551977184420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A024903 (n + 1) - 1).toNat

end

end A090614.P6445439551977184420

namespace A090614

/-- `A110654(A024903(n+1)-1)` -/
def P6445439551977184420.Spec : Prop :=
  ∀ n, P6445439551977184420.a n = A090614 (n + 1)

end A090614

/-! ## A090614.P4288127690606980245

`A004524(A024903(n+1))`
-/

namespace A090614.P4288127690606980245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A024903 (n + 1)).toNat

end

end A090614.P4288127690606980245

namespace A090614

/-- `A004524(A024903(n+1))` -/
def P4288127690606980245.Spec : Prop :=
  ∀ n, P4288127690606980245.a n = A090614 (n + 1)

end A090614

/-! ## A090614.P12928084138035899421

`A046667(A033868(n+1))`
-/

namespace A090614.P12928084138035899421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A033868 (n + 1)).toNat

end

end A090614.P12928084138035899421

namespace A090614

/-- `A046667(A033868(n+1))` -/
def P12928084138035899421.Spec : Prop :=
  ∀ n, P12928084138035899421.a n = A090614 (n + 1)

end A090614

/-! ## A090614.P11400251009918983478

`A001281(A089033(n+1))`
-/

namespace A090614.P11400251009918983478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A089033 (n + 1)).toNat

end

end A090614.P11400251009918983478

namespace A090614

/-- `A001281(A089033(n+1))` -/
def P11400251009918983478.Spec : Prop :=
  ∀ n, P11400251009918983478.a n = A090614 (n + 1)

end A090614

/-! ## A090614.P17962180497377280360

`A244325(A033868(n+1)+1)`
-/

namespace A090614.P17962180497377280360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (A033868 (n + 1) + 1).toNat

end

end A090614.P17962180497377280360

namespace A090614

/-- `A244325(A033868(n+1)+1)` -/
def P17962180497377280360.Spec : Prop :=
  ∀ n, P17962180497377280360.a n = A090614 (n + 1)

end A090614

/-!
# A090615: Smallest member of sociable quadruples.

The programs for A090615, there is no canonical definition to state claims against.
-/

/-! ## A090615.P11229689886082583966

`∪[A003416(n+3), A222975(A077168(n))]`
-/

namespace A090615.P11229689886082583966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003416 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222975 (A077168 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090615.P11229689886082583966

/-! ## A090615.P9787918844179772431

`∪[A222975(A043319(n+1)), A003416(n+3)]`
-/

namespace A090615.P9787918844179772431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222975 (A043319 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003416 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090615.P9787918844179772431

/-! ## A090615.P16739727613821655797

`∪[A222975(n+1), A003416(A044917(n+2)+1)]`
-/

namespace A090615.P16739727613821655797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003416 (A044917 (n + 2) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090615.P16739727613821655797

/-! ## A090615.P11841378979170891169

`∪[A222975(n+1), A003416(A044917(n+3))]`
-/

namespace A090615.P11841378979170891169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003416 (A044917 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090615.P11841378979170891169

/-! ## A090615.P4721743416213974377

`A003416(A077168(n)+2)`
-/

namespace A090615.P4721743416213974377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003416 (A077168 n + 2).toNat

end

end A090615.P4721743416213974377

/-!
# A090616: Exponent of highest power of 4 dividing n!.

The programs for A090616, the canonical program `A090616.P15930574233409721932` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090616 has offset 0).

The definition of A090616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090616.P15930574233409721932

`floor(A011371(n)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090616

/-- `floor(A011371(n)/2)` -/
def P15930574233409721932.Spec : Prop :=
  ∀ n, P15930574233409721932.a n = A090616 n

theorem P15930574233409721932.correct : P15930574233409721932.Spec := by
  intro n
  simp only [A090616]

end A090616

/-! ## A090616.P14139151497985639056

`floor((∑[val(abs(1-n)+1, 2)]-1)/2)`
-/

namespace A090616.P14139151497985639056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 2⌋

end

end A090616.P14139151497985639056

namespace A090616

/-- `floor((∑[val(abs(1-n)+1, 2)]-1)/2)` -/
def P14139151497985639056.Spec : Prop :=
  ∀ n, P14139151497985639056.a n = A090616 n

end A090616

/-! ## A090616.P13901194196111956757

`floor(A227361(or(1, n))/2)`
-/

namespace A090616.P13901194196111956757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227361 (Nat.lor 1 n) : ℚ) / 2⌋

end

end A090616.P13901194196111956757

namespace A090616

/-- `floor(A227361(or(1, n))/2)` -/
def P13901194196111956757.Spec : Prop :=
  ∀ n, P13901194196111956757.a n = A090616 n

end A090616

/-! ## A090616.P14552323802176503773

`floor((n-A000120(n))/2)`
-/

namespace A090616.P14552323802176503773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A000120 n : ℚ) / 2⌋

end

end A090616.P14552323802176503773

namespace A090616

/-- `floor((n-A000120(n))/2)` -/
def P14552323802176503773.Spec : Prop :=
  ∀ n, P14552323802176503773.a n = A090616 n

end A090616

/-! ## A090616.P9508230278883170057

`floor((A005187(n)-n)/2)`
-/

namespace A090616.P9508230278883170057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005187 n - (n : ℤ) : ℚ) / 2⌋

end

end A090616.P9508230278883170057

namespace A090616

/-- `floor((A005187(n)-n)/2)` -/
def P9508230278883170057.Spec : Prop :=
  ∀ n, P9508230278883170057.a n = A090616 n

end A090616

/-! ## A090616.P6217467229199019683

`n-ceil(A092391(n)/2)`
-/

namespace A090616.P6217467229199019683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(A092391 n : ℚ) / 2⌉

end

end A090616.P6217467229199019683

namespace A090616

/-- `n-ceil(A092391(n)/2)` -/
def P6217467229199019683.Spec : Prop :=
  ∀ n, P6217467229199019683.a n = A090616 n

end A090616

/-! ## A090616.P4605451794337486835

`A004526(A011371(n))`
-/

namespace A090616.P4605451794337486835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011371 n).toNat

end

end A090616.P4605451794337486835

namespace A090616

/-- `A004526(A011371(n))` -/
def P4605451794337486835.Spec : Prop :=
  ∀ n, P4605451794337486835.a n = A090616 n

end A090616

/-! ## A090616.P16631300110639313848

`A004526(n-A000120(n))`
-/

namespace A090616.P16631300110639313848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A000120 n).toNat

end

end A090616.P16631300110639313848

namespace A090616

/-- `A004526(n-A000120(n))` -/
def P16631300110639313848.Spec : Prop :=
  ∀ n, P16631300110639313848.a n = A090616 n

end A090616

/-! ## A090616.P5470485963623218083

`A004526(A005187(n)-n)`
-/

namespace A090616.P5470485963623218083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005187 n - (n : ℤ)).toNat

end

end A090616.P5470485963623218083

namespace A090616

/-- `A004526(A005187(n)-n)` -/
def P5470485963623218083.Spec : Prop :=
  ∀ n, P5470485963623218083.a n = A090616 n

end A090616

/-! ## A090616.P15636738991513125525

`A110654(A011371(n)+1)-1`
-/

namespace A090616.P15636738991513125525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A011371 n + 1).toNat - 1

end

end A090616.P15636738991513125525

namespace A090616

/-- `A110654(A011371(n)+1)-1` -/
def P15636738991513125525.Spec : Prop :=
  ∀ n, P15636738991513125525.a n = A090616 n

end A090616

/-! ## A090616.P17134748139393127615

`A008619(n-A000120(n))-1`
-/

namespace A090616.P17134748139393127615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A000120 n).toNat - 1

end

end A090616.P17134748139393127615

namespace A090616

/-- `A008619(n-A000120(n))-1` -/
def P17134748139393127615.Spec : Prop :=
  ∀ n, P17134748139393127615.a n = A090616 n

end A090616

/-! ## A090616.P13848978759348772365

`A008619(A005187(n)-n)-1`
-/

namespace A090616.P13848978759348772365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005187 n - (n : ℤ)).toNat - 1

end

end A090616.P13848978759348772365

namespace A090616

/-- `A008619(A005187(n)-n)-1` -/
def P13848978759348772365.Spec : Prop :=
  ∀ n, P13848978759348772365.a n = A090616 n

end A090616

/-! ## A090616.P14260119403198466897

`A140106(2-A000120(n)+n)`
-/

namespace A090616.P14260119403198466897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 - A000120 n + (n : ℤ)).toNat

end

end A090616.P14260119403198466897

namespace A090616

/-- `A140106(2-A000120(n)+n)` -/
def P14260119403198466897.Spec : Prop :=
  ∀ n, P14260119403198466897.a n = A090616 n

end A090616

/-! ## A090616.P16647588966797318441

`A140106(2-(A000120(n)-n))`
-/

namespace A090616.P16647588966797318441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 - (A000120 n - (n : ℤ))).toNat

end

end A090616.P16647588966797318441

namespace A090616

/-- `A140106(2-(A000120(n)-n))` -/
def P16647588966797318441.Spec : Prop :=
  ∀ n, P16647588966797318441.a n = A090616 n

end A090616

/-! ## A090616.P16561268573018366569

`A052928(n-A000120(n))/2`
-/

namespace A090616.P16561268573018366569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052928 ((n : ℤ) - A000120 n).toNat : ℚ) / 2

end

end A090616.P16561268573018366569

namespace A090616

/-- `A052928(n-A000120(n))/2` -/
def P16561268573018366569.Spec : Prop :=
  ∀ n, P16561268573018366569.a n = (A090616 n : ℚ)

end A090616

/-! ## A090616.P8715037110437620078

`A052928(A005187(n)-n)/2`
-/

namespace A090616.P8715037110437620078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052928 (A005187 n - (n : ℤ)).toNat : ℚ) / 2

end

end A090616.P8715037110437620078

namespace A090616

/-- `A052928(A005187(n)-n)/2` -/
def P8715037110437620078.Spec : Prop :=
  ∀ n, P8715037110437620078.a n = (A090616 n : ℚ)

end A090616

/-! ## A090616.P14190176760278142631

`floor(∑[A007814(A302436(n))/2])`
-/

namespace A090616.P14190176760278142631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (A302436 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A090616.P14190176760278142631

namespace A090616

/-- `floor(∑[A007814(A302436(n))/2])` -/
def P14190176760278142631.Spec : Prop :=
  ∀ n, P14190176760278142631.a n = A090616 n

end A090616

/-! ## A090616.P17471127091227672311

`A004526(n+1-A063787(n+1))`
-/

namespace A090616.P17471127091227672311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) - A063787 (n + 1)).toNat

end

end A090616.P17471127091227672311

namespace A090616

/-- `A004526(n+1-A063787(n+1))` -/
def P17471127091227672311.Spec : Prop :=
  ∀ n, P17471127091227672311.a n = A090616 n

end A090616

/-! ## A090616.P6914657672559363097

`A004526(A005187(A004526(n)))`
-/

namespace A090616.P6914657672559363097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005187 (A004526 n).toNat).toNat

end

end A090616.P6914657672559363097

namespace A090616

/-- `A004526(A005187(A004526(n)))` -/
def P6914657672559363097.Spec : Prop :=
  ∀ n, P6914657672559363097.a n = A090616 n

end A090616

/-! ## A090616.P102787803199468230

`A230414(A219651(A005187(n)-n))`
-/

namespace A090616.P102787803199468230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 (A219651 (A005187 n - (n : ℤ)).toNat).toNat

end

end A090616.P102787803199468230

namespace A090616

/-- `A230414(A219651(A005187(n)-n))` -/
def P102787803199468230.Spec : Prop :=
  ∀ n, P102787803199468230.a n = A090616 n

end A090616

/-!
# A090617: Exponent of highest power of 8 dividing n!.

The programs for A090617, the canonical program `A090617.P14309982386090046365` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090617 has offset 0).

The definition of A090617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090617.P14309982386090046365

`floor(A011371(n)/3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090617

/-- `floor(A011371(n)/3)` -/
def P14309982386090046365.Spec : Prop :=
  ∀ n, P14309982386090046365.a n = A090617 n

theorem P14309982386090046365.correct : P14309982386090046365.Spec := by
  intro n
  simp only [A090617]

end A090617

/-! ## A090617.P6807012544582161636

`floor(∑[∑{e}[or(n, -n), #]]/3)`
-/

namespace A090617.P6807012544582161636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A090617.P6807012544582161636

namespace A090617

/-- `floor(∑[∑{e}[or(n, -n), #]]/3)` -/
def P6807012544582161636.Spec : Prop :=
  ∀ n, P6807012544582161636.a n = A090617 n

end A090617

/-! ## A090617.P3405492970050658120

`floor((∑[val(n+1, 2)]-val(n+1, 2))/3)`
-/

namespace A090617.P3405492970050658120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℚ) / 3⌋

end

end A090617.P3405492970050658120

namespace A090617

/-- `floor((∑[val(n+1, 2)]-val(n+1, 2))/3)` -/
def P3405492970050658120.Spec : Prop :=
  ∀ n, P3405492970050658120.a n = A090617 n

end A090617

/-! ## A090617.P10119114243030204927

`floor((n-A000120(n))/3)`
-/

namespace A090617.P10119114243030204927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A000120 n : ℚ) / 3⌋

end

end A090617.P10119114243030204927

namespace A090617

/-- `floor((n-A000120(n))/3)` -/
def P10119114243030204927.Spec : Prop :=
  ∀ n, P10119114243030204927.a n = A090617 n

end A090617

/-! ## A090617.P15198816593573386903

`floor((A005187(n)-n)/3)`
-/

namespace A090617.P15198816593573386903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005187 n - (n : ℤ) : ℚ) / 3⌋

end

end A090617.P15198816593573386903

namespace A090617

/-- `floor((A005187(n)-n)/3)` -/
def P15198816593573386903.Spec : Prop :=
  ∀ n, P15198816593573386903.a n = A090617 n

end A090617

/-! ## A090617.P11727201810685865857

`floor((n-log2(A001316(n)))/3)`
-/

namespace A090617.P11727201810685865857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) - Real.logb 2 (A001316 n : ℝ)) / 3⌋

end

end A090617.P11727201810685865857

namespace A090617

/-- `floor((n-log2(A001316(n)))/3)` -/
def P11727201810685865857.Spec : Prop :=
  ∀ n, P11727201810685865857.a n = A090617 n

end A090617

/-! ## A090617.P10473296034191460108

`A002264(∑[∑{e}[and(n, -n), #]])`
-/

namespace A090617.P10473296034191460108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090617.P10473296034191460108

namespace A090617

/-- `A002264(∑[∑{e}[and(n, -n), #]])` -/
def P10473296034191460108.Spec : Prop :=
  ∀ n, P10473296034191460108.a n = A090617 n

end A090617

/-! ## A090617.P16626530247538590107

`A002264(∑[∑{e}[or(n, -n), #]])`
-/

namespace A090617.P16626530247538590107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090617.P16626530247538590107

namespace A090617

/-- `A002264(∑[∑{e}[or(n, -n), #]])` -/
def P16626530247538590107.Spec : Prop :=
  ∀ n, P16626530247538590107.a n = A090617 n

end A090617

/-! ## A090617.P13918173526248004545

`A002264(A011371(n))`
-/

namespace A090617.P13918173526248004545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A011371 n).toNat

end

end A090617.P13918173526248004545

namespace A090617

/-- `A002264(A011371(n))` -/
def P13918173526248004545.Spec : Prop :=
  ∀ n, P13918173526248004545.a n = A090617 n

end A090617

/-! ## A090617.P15965482798190236976

`A002264(n-A000120(n))`
-/

namespace A090617.P15965482798190236976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n : ℤ) - A000120 n).toNat

end

end A090617.P15965482798190236976

namespace A090617

/-- `A002264(n-A000120(n))` -/
def P15965482798190236976.Spec : Prop :=
  ∀ n, P15965482798190236976.a n = A090617 n

end A090617

/-! ## A090617.P2567509491198840899

`A002264(A005187(n)-n)`
-/

namespace A090617.P2567509491198840899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005187 n - (n : ℤ)).toNat

end

end A090617.P2567509491198840899

namespace A090617

/-- `A002264(A005187(n)-n)` -/
def P2567509491198840899.Spec : Prop :=
  ∀ n, P2567509491198840899.a n = A090617 n

end A090617

/-! ## A090617.P6450428056928644484

`A002264(n-log2(A001316(n)))`
-/

namespace A090617.P6450428056928644484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 (A001316 n : ℝ))).toNat

end

end A090617.P6450428056928644484

namespace A090617

/-- `A002264(n-log2(A001316(n)))` -/
def P6450428056928644484.Spec : Prop :=
  ∀ n, P6450428056928644484.a n = A090617 n

end A090617

/-! ## A090617.P14416559118911341582

`A002264(n-∑[A088705(n)])`
-/

namespace A090617.P14416559118911341582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090617.P14416559118911341582

namespace A090617

/-- `A002264(n-∑[A088705(n)])` -/
def P14416559118911341582.Spec : Prop :=
  ∀ n, P14416559118911341582.a n = A090617 n

end A090617

/-! ## A090617.P12031255929237322088

`A008620(n-A000120(n))-1`
-/

namespace A090617.P12031255929237322088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) - A000120 n).toNat - 1

end

end A090617.P12031255929237322088

namespace A090617

/-- `A008620(n-A000120(n))-1` -/
def P12031255929237322088.Spec : Prop :=
  ∀ n, P12031255929237322088.a n = A090617 n

end A090617

/-! ## A090617.P8508296042864826434

`A004526(A004396(n-A000120(n)))`
-/

namespace A090617.P8508296042864826434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004396 ((n : ℤ) - A000120 n).toNat).toNat

end

end A090617.P8508296042864826434

namespace A090617

/-- `A004526(A004396(n-A000120(n)))` -/
def P8508296042864826434.Spec : Prop :=
  ∀ n, P8508296042864826434.a n = A090617 n

end A090617

/-! ## A090617.P4062975569635308643

`A011371(n)-A004523(A011371(n)+1)`
-/

namespace A090617.P4062975569635308643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A004523 (A011371 n + 1).toNat

end

end A090617.P4062975569635308643

namespace A090617

/-- `A011371(n)-A004523(A011371(n)+1)` -/
def P4062975569635308643.Spec : Prop :=
  ∀ n, P4062975569635308643.a n = A090617 n

end A090617

/-! ## A090617.P5344424076040616958

`floor((n-A001222(A286588(n)))/3)`
-/

namespace A090617.P5344424076040616958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A001222 (A286588 n).toNat : ℚ) / 3⌋

end

end A090617.P5344424076040616958

namespace A090617

/-- `floor((n-A001222(A286588(n)))/3)` -/
def P5344424076040616958.Spec : Prop :=
  ∀ n, P5344424076040616958.a n = A090617 n

end A090617

/-! ## A090617.P10150443872367164576

`A152467(2*A011371(n))`
-/

namespace A090617.P10150443872367164576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (2 * A011371 n).toNat

end

end A090617.P10150443872367164576

namespace A090617

/-- `A152467(2*A011371(n))` -/
def P10150443872367164576.Spec : Prop :=
  ∀ n, P10150443872367164576.a n = A090617 n

end A090617

/-! ## A090617.P17480655803425345957

`A152467(2*(n-A000120(n)))`
-/

namespace A090617.P17480655803425345957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (2 * ((n : ℤ) - A000120 n)).toNat

end

end A090617.P17480655803425345957

namespace A090617

/-- `A152467(2*(n-A000120(n)))` -/
def P17480655803425345957.Spec : Prop :=
  ∀ n, P17480655803425345957.a n = A090617 n

end A090617

/-! ## A090617.P18375599314614467355

`A152467(A011371(n)+A011371(n))`
-/

namespace A090617.P18375599314614467355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A011371 n + A011371 n).toNat

end

end A090617.P18375599314614467355

namespace A090617

/-- `A152467(A011371(n)+A011371(n))` -/
def P18375599314614467355.Spec : Prop :=
  ∀ n, P18375599314614467355.a n = A090617 n

end A090617

/-!
# A090618: Highest power of 9 dividing n!.

The programs for A090618, the canonical program `A090618.P16976939103436905752` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090618 has offset 0).

The definition of A090618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090618.P16976939103436905752

`floor(∑[val(abs(1-n)+1, 3)]/2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090618

/-- `floor(∑[val(abs(1-n)+1, 3)]/2)` -/
def P16976939103436905752.Spec : Prop :=
  ∀ n, P16976939103436905752.a n = A090618 n

theorem P16976939103436905752.correct : P16976939103436905752.Spec := by
  intro n
  simp only [A090618]

end A090618

/-! ## A090618.P666262713223172638

`floor(A054861(n)/2)`
-/

namespace A090618.P666262713223172638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054861 n : ℚ) / 2⌋

end

end A090618.P666262713223172638

namespace A090618

/-- `floor(A054861(n)/2)` -/
def P666262713223172638.Spec : Prop :=
  ∀ n, P666262713223172638.a n = A090618 n

end A090618

/-! ## A090618.P493635897961743142

`floor(A344853(n)/4)`
-/

namespace A090618.P493635897961743142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344853 n : ℚ) / 4⌋

end

end A090618.P493635897961743142

namespace A090618

/-- `floor(A344853(n)/4)` -/
def P493635897961743142.Spec : Prop :=
  ∀ n, P493635897961743142.a n = A090618 n

end A090618

/-! ## A090618.P13805791773813749134

`floor((A004128(n)-n)/2)`
-/

namespace A090618.P13805791773813749134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004128 n - (n : ℤ) : ℚ) / 2⌋

end

end A090618.P13805791773813749134

namespace A090618

/-- `floor((A004128(n)-n)/2)` -/
def P13805791773813749134.Spec : Prop :=
  ∀ n, P13805791773813749134.a n = A090618 n

end A090618

/-! ## A090618.P7037172715560819312

`floor((n-A089792(n))/2)`
-/

namespace A090618.P7037172715560819312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A089792 n : ℚ) / 2⌋

end

end A090618.P7037172715560819312

namespace A090618

/-- `floor((n-A089792(n))/2)` -/
def P7037172715560819312.Spec : Prop :=
  ∀ n, P7037172715560819312.a n = A090618 n

end A090618

/-! ## A090618.P1303151249991489003

`floor((n-A053735(n))/4)`
-/

namespace A090618.P1303151249991489003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A053735 n : ℚ) / 4⌋

end

end A090618.P1303151249991489003

namespace A090618

/-- `floor((n-A053735(n))/4)` -/
def P1303151249991489003.Spec : Prop :=
  ∀ n, P1303151249991489003.a n = A090618 n

end A090618

/-! ## A090618.P10863504884550140128

`floor((2*n-A230641(n))/4)`
-/

namespace A090618.P10863504884550140128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℤ) - A230641 n : ℚ) / 4⌋

end

end A090618.P10863504884550140128

namespace A090618

/-- `floor((2*n-A230641(n))/4)` -/
def P10863504884550140128.Spec : Prop :=
  ∀ n, P10863504884550140128.a n = A090618 n

end A090618

/-! ## A090618.P4911161972634282936

`floor((n-∑{digits}[A007089(n), #])/4)`
-/

namespace A090618.P4911161972634282936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 4⌋

end

end A090618.P4911161972634282936

namespace A090618

/-- `floor((n-∑{digits}[A007089(n), #])/4)` -/
def P4911161972634282936.Spec : Prop :=
  ∀ n, P4911161972634282936.a n = A090618 n

end A090618

/-! ## A090618.P7613929291940772822

`floor(2*∑[val(A004277(n), 3)]/4)`
-/

namespace A090618.P7613929291940772822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 n).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 4⌋

end

end A090618.P7613929291940772822

namespace A090618

/-- `floor(2*∑[val(A004277(n), 3)]/4)` -/
def P7613929291940772822.Spec : Prop :=
  ∀ n, P7613929291940772822.a n = A090618 n

end A090618

/-! ## A090618.P189983518491777274

`A004526(A054861(n))`
-/

namespace A090618.P189983518491777274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054861 n).toNat

end

end A090618.P189983518491777274

namespace A090618

/-- `A004526(A054861(n))` -/
def P189983518491777274.Spec : Prop :=
  ∀ n, P189983518491777274.a n = A090618 n

end A090618

/-! ## A090618.P7596708553417757993

`A002265(A344853(n))`
-/

namespace A090618.P7596708553417757993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A344853 n).toNat

end

end A090618.P7596708553417757993

namespace A090618

/-- `A002265(A344853(n))` -/
def P7596708553417757993.Spec : Prop :=
  ∀ n, P7596708553417757993.a n = A090618 n

end A090618

/-! ## A090618.P584484741440805313

`A002265(2*A054861(n))`
-/

namespace A090618.P584484741440805313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A054861 n).toNat

end

end A090618.P584484741440805313

namespace A090618

/-- `A002265(2*A054861(n))` -/
def P584484741440805313.Spec : Prop :=
  ∀ n, P584484741440805313.a n = A090618 n

end A090618

/-! ## A090618.P15026068296293326809

`A004526(A004128(n)-n)`
-/

namespace A090618.P15026068296293326809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004128 n - (n : ℤ)).toNat

end

end A090618.P15026068296293326809

namespace A090618

/-- `A004526(A004128(n)-n)` -/
def P15026068296293326809.Spec : Prop :=
  ∀ n, P15026068296293326809.a n = A090618 n

end A090618

/-! ## A090618.P16953276128007285824

`A002265(n-A053735(n))`
-/

namespace A090618.P16953276128007285824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n : ℤ) - A053735 n).toNat

end

end A090618.P16953276128007285824

namespace A090618

/-- `A002265(n-A053735(n))` -/
def P16953276128007285824.Spec : Prop :=
  ∀ n, P16953276128007285824.a n = A090618 n

end A090618

/-! ## A090618.P10371965027159095869

`A002265(A054861(n)+A054861(n)+1)`
-/

namespace A090618.P10371965027159095869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A054861 n + (A054861 n + 1)).toNat

end

end A090618.P10371965027159095869

namespace A090618

/-- `A002265(A054861(n)+A054861(n)+1)` -/
def P10371965027159095869.Spec : Prop :=
  ∀ n, P10371965027159095869.a n = A090618 n

end A090618

/-! ## A090618.P1624166186283716265

`floor((n-A000120(eq[0, A160382(n)]))/4)`
-/

namespace A090618.P1624166186283716265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 4⌋

end

end A090618.P1624166186283716265

namespace A090618

/-- `floor((n-A000120(eq[0, A160382(n)]))/4)` -/
def P1624166186283716265.Spec : Prop :=
  ∀ n, P1624166186283716265.a n = A090618 n

end A090618

/-! ## A090618.P4001455209464978254

`floor((n-A000120(lt[A160382(n), 1]))/4)`
-/

namespace A090618.P4001455209464978254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 4⌋

end

end A090618.P4001455209464978254

namespace A090618

/-- `floor((n-A000120(lt[A160382(n), 1]))/4)` -/
def P4001455209464978254.Spec : Prop :=
  ∀ n, P4001455209464978254.a n = A090618 n

end A090618

/-! ## A090618.P1854090229783906214

`floor((n-A000120(eq[0, A160381(n)]))/4)`
-/

namespace A090618.P1854090229783906214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 4⌋

end

end A090618.P1854090229783906214

namespace A090618

/-- `floor((n-A000120(eq[0, A160381(n)]))/4)` -/
def P1854090229783906214.Spec : Prop :=
  ∀ n, P1854090229783906214.a n = A090618 n

end A090618

/-! ## A090618.P1042397914304766694

`val(∏[gcd(n, ∏[gcd(3, n+1)])], 9)`
-/

namespace A090618.P1042397914304766694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j) 9

end

end A090618.P1042397914304766694

namespace A090618

/-- `val(∏[gcd(n, ∏[gcd(3, n+1)])], 9)` -/
def P1042397914304766694.Spec : Prop :=
  ∀ n, (P1042397914304766694.a n : ℤ) = A090618 n

end A090618

/-! ## A090618.P2305297357609575352

`val(A060828(n), 9)`
-/

namespace A090618.P2305297357609575352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060828 n).toNat 9

end

end A090618.P2305297357609575352

namespace A090618

/-- `val(A060828(n), 9)` -/
def P2305297357609575352.Spec : Prop :=
  ∀ n, (P2305297357609575352.a n : ℤ) = A090618 n

end A090618

/-!
# A090619: Highest power of 12 dividing n!.

The programs for A090619, there is no canonical definition to state claims against.
-/

/-! ## A090619.P13914703380394083804

`A090622(A253145(n+8)-9)%(n+1)`
-/

namespace A090619.P13914703380394083804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090622 (A253145 (n + 8) - 9).toNat) (n + 1 : ℤ)

end

end A090619.P13914703380394083804

/-! ## A090619.P11892692809459731042

`val(n!, 12)`
-/

namespace A090619.P11892692809459731042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial n) 12

end

end A090619.P11892692809459731042

/-! ## A090619.P9373729474874418616

`val(∏[round(1/acot(n))], 12)`
-/

namespace A090619.P9373729474874418616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 12

end

end A090619.P9373729474874418616

/-! ## A090619.P2932943149194891206

`val(∏[round(sqrt(n²+1))], 12)`
-/

namespace A090619.P2932943149194891206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 12

end

end A090619.P2932943149194891206

/-!
# A090620: Highest power of 13 dividing n!.

The programs for A090620, the canonical program `A090620.P440755148048645582` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090620 has offset 0).

The definition of A090620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090620.P440755148048645582

`a(n-1)+val(n, 13)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090620

/-- `a(n-1)+val(n, 13)` -/
def P440755148048645582.Spec : Prop :=
  ∀ n, (P440755148048645582.a n : ℤ) = A090620 n

theorem P440755148048645582.correct : P440755148048645582.Spec := by
  intro n
  simp only [A090620]

end A090620

/-! ## A090620.P17070064143316898110

`∑[val(abs(1-n)+1, 13)]`
-/

namespace A090620.P17070064143316898110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090620.P17070064143316898110

namespace A090620

/-- `∑[val(abs(1-n)+1, 13)]` -/
def P17070064143316898110.Spec : Prop :=
  ∀ n, (P17070064143316898110.a n : ℤ) = A090620 n

end A090620

/-! ## A090620.P205202978437924880

`∑[val(n+1, 13)]-val(n+1, 13)`
-/

namespace A090620.P205202978437924880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 13 : ℤ)

end

end A090620.P205202978437924880

namespace A090620

/-- `∑[val(n+1, 13)]-val(n+1, 13)` -/
def P205202978437924880.Spec : Prop :=
  ∀ n, P205202978437924880.a n = A090620 n

end A090620

/-! ## A090620.P9242021579261650598

`comp[A136773(n+1)]-n`
-/

namespace A090620.P9242021579261650598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A090620.P9242021579261650598

namespace A090620

/-- `comp[A136773(n+1)]-n` -/
def P9242021579261650598.Spec : Prop :=
  ∀ n, P9242021579261650598.a n = A090620 n

end A090620

/-! ## A090620.P15358375018156959359

`∑[∑{d}[n, A073424(A014963(#)+15)]]`
-/

namespace A090620.P15358375018156959359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A073424 (A014963 d + 15).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090620.P15358375018156959359

namespace A090620

/-- `∑[∑{d}[n, A073424(A014963(#)+15)]]` -/
def P15358375018156959359.Spec : Prop :=
  ∀ n, P15358375018156959359.a n = A090620 n

end A090620

/-! ## A090620.P16476865804512796186

`∑[∑{d}[n, A015868(A014963(#))]]`
-/

namespace A090620.P16476865804512796186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A015868 (A014963 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090620.P16476865804512796186

namespace A090620

/-- `∑[∑{d}[n, A015868(A014963(#))]]` -/
def P16476865804512796186.Spec : Prop :=
  ∀ n, P16476865804512796186.a n = A090620 n

end A090620

/-! ## A090620.P3695142516309340751

`and(A059498(n+1), A342696(n-A342696(n)))`
-/

namespace A090620.P3695142516309340751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059498 (n + 1)) (A342696 ((n : ℤ) - A342696 n).toNat)

end

end A090620.P3695142516309340751

namespace A090620

/-- `and(A059498(n+1), A342696(n-A342696(n)))` -/
def P3695142516309340751.Spec : Prop :=
  ∀ n, P3695142516309340751.a n = A090620 n

end A090620

/-! ## A090620.P444689355560691321

`and(A030494(n+1), A342696(n-A342696(n)))`
-/

namespace A090620.P444689355560691321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030494 (n + 1)) (A342696 ((n : ℤ) - A342696 n).toNat)

end

end A090620.P444689355560691321

namespace A090620

/-- `and(A030494(n+1), A342696(n-A342696(n)))` -/
def P444689355560691321.Spec : Prop :=
  ∀ n, P444689355560691321.a n = A090620 n

end A090620

/-! ## A090620.P3358976881786148427

`and(A072828(n+1), A342696(n-A342696(n)))`
-/

namespace A090620.P3358976881786148427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072828 (n + 1)) (A342696 ((n : ℤ) - A342696 n).toNat)

end

end A090620.P3358976881786148427

namespace A090620

/-- `and(A072828(n+1), A342696(n-A342696(n)))` -/
def P3358976881786148427.Spec : Prop :=
  ∀ n, P3358976881786148427.a n = A090620 n

end A090620

/-! ## A090620.P18231411177502049253

`and(A051684(n+1), A342696(n-A342696(n)))`
-/

namespace A090620.P18231411177502049253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051684 (n + 1)) (A342696 ((n : ℤ) - A342696 n).toNat)

end

end A090620.P18231411177502049253

namespace A090620

/-- `and(A051684(n+1), A342696(n-A342696(n)))` -/
def P18231411177502049253.Spec : Prop :=
  ∀ n, P18231411177502049253.a n = A090620 n

end A090620

/-! ## A090620.P17642330302350606518

`n-∑[A011583(n²)]`
-/

namespace A090620.P17642330302350606518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090620.P17642330302350606518

namespace A090620

/-- `n-∑[A011583(n²)]` -/
def P17642330302350606518.Spec : Prop :=
  ∀ n, P17642330302350606518.a n = A090620 n

end A090620

/-! ## A090620.P17708117799373821438

`n-∑[A070636(n²)]`
-/

namespace A090620.P17708117799373821438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070636 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090620.P17708117799373821438

namespace A090620

/-- `n-∑[A070636(n²)]` -/
def P17708117799373821438.Spec : Prop :=
  ∀ n, P17708117799373821438.a n = A090620 n

end A090620

/-!
# A090621: Exponent of highest power of 16 dividing n!.

The programs for A090621, the canonical program `A090621.P8657121778584496807` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090621 has offset 0).

The definition of A090621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090621.P8657121778584496807

`floor(A090616(n)/2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A090621

/-- `floor(A090616(n)/2)` -/
def P8657121778584496807.Spec : Prop :=
  ∀ n, P8657121778584496807.a n = A090621 n

theorem P8657121778584496807.correct : P8657121778584496807.Spec := by
  intro n
  simp only [A090621]

end A090621

/-! ## A090621.P7999213758583944191

`floor(A011371(n)/4)`
-/

namespace A090621.P7999213758583944191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011371 n : ℚ) / 4⌋

end

end A090621.P7999213758583944191

namespace A090621

/-- `floor(A011371(n)/4)` -/
def P7999213758583944191.Spec : Prop :=
  ∀ n, P7999213758583944191.a n = A090621 n

end A090621

/-! ## A090621.P13187197743148566023

`floor(∑[∑{e}[and(n, -n), #]/4])`
-/

namespace A090621.P13187197743148566023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A090621.P13187197743148566023

namespace A090621

/-- `floor(∑[∑{e}[and(n, -n), #]/4])` -/
def P13187197743148566023.Spec : Prop :=
  ∀ n, P13187197743148566023.a n = A090621 n

end A090621

/-! ## A090621.P3657718947644630020

`floor(∑[∑{e}[or(n, -n), #]/4])`
-/

namespace A090621.P3657718947644630020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A090621.P3657718947644630020

namespace A090621

/-- `floor(∑[∑{e}[or(n, -n), #]/4])` -/
def P3657718947644630020.Spec : Prop :=
  ∀ n, P3657718947644630020.a n = A090621 n

end A090621

/-! ## A090621.P11427007427142896813

`floor((∑[val(abs(1-n)+1, 2)]-1)/4)`
-/

namespace A090621.P11427007427142896813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 4⌋

end

end A090621.P11427007427142896813

namespace A090621

/-- `floor((∑[val(abs(1-n)+1, 2)]-1)/4)` -/
def P11427007427142896813.Spec : Prop :=
  ∀ n, P11427007427142896813.a n = A090621 n

end A090621

/-! ## A090621.P9960736406761380606

`floor((n-A000120(n))/4)`
-/

namespace A090621.P9960736406761380606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A000120 n : ℚ) / 4⌋

end

end A090621.P9960736406761380606

namespace A090621

/-- `floor((n-A000120(n))/4)` -/
def P9960736406761380606.Spec : Prop :=
  ∀ n, P9960736406761380606.a n = A090621 n

end A090621

/-! ## A090621.P6775961879489487893

`floor((A005187(n)-n)/4)`
-/

namespace A090621.P6775961879489487893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005187 n - (n : ℤ) : ℚ) / 4⌋

end

end A090621.P6775961879489487893

namespace A090621

/-- `floor((A005187(n)-n)/4)` -/
def P6775961879489487893.Spec : Prop :=
  ∀ n, P6775961879489487893.a n = A090621 n

end A090621

/-! ## A090621.P663018021050879690

`floor((n-log2(A001316(n)))/4)`
-/

namespace A090621.P663018021050879690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) - Real.logb 2 (A001316 n : ℝ)) / 4⌋

end

end A090621.P663018021050879690

namespace A090621

/-- `floor((n-log2(A001316(n)))/4)` -/
def P663018021050879690.Spec : Prop :=
  ∀ n, P663018021050879690.a n = A090621 n

end A090621

/-! ## A090621.P423079767166404396

`A002265(∑[∑{e}[and(n, -n), #]])`
-/

namespace A090621.P423079767166404396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090621.P423079767166404396

namespace A090621

/-- `A002265(∑[∑{e}[and(n, -n), #]])` -/
def P423079767166404396.Spec : Prop :=
  ∀ n, P423079767166404396.a n = A090621 n

end A090621

/-! ## A090621.P508912471261142393

`A002265(∑[∑{e}[xor(n, -n), #]]-n)`
-/

namespace A090621.P508912471261142393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A090621.P508912471261142393

namespace A090621

/-- `A002265(∑[∑{e}[xor(n, -n), #]]-n)` -/
def P508912471261142393.Spec : Prop :=
  ∀ n, P508912471261142393.a n = A090621 n

end A090621

/-! ## A090621.P10519367270918179012

`A002265(A011371(n))`
-/

namespace A090621.P10519367270918179012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A011371 n).toNat

end

end A090621.P10519367270918179012

namespace A090621

/-- `A002265(A011371(n))` -/
def P10519367270918179012.Spec : Prop :=
  ∀ n, P10519367270918179012.a n = A090621 n

end A090621

/-! ## A090621.P14462740829957777109

`A004526(A090616(n))`
-/

namespace A090621.P14462740829957777109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A090616 n).toNat

end

end A090621.P14462740829957777109

namespace A090621

/-- `A004526(A090616(n))` -/
def P14462740829957777109.Spec : Prop :=
  ∀ n, P14462740829957777109.a n = A090621 n

end A090621

/-! ## A090621.P15584631753390625998

`A002265(n-A000120(n))`
-/

namespace A090621.P15584631753390625998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n : ℤ) - A000120 n).toNat

end

end A090621.P15584631753390625998

namespace A090621

/-- `A002265(n-A000120(n))` -/
def P15584631753390625998.Spec : Prop :=
  ∀ n, P15584631753390625998.a n = A090621 n

end A090621

/-! ## A090621.P16087700613199681

`A002265(A005187(n)-n)`
-/

namespace A090621.P16087700613199681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005187 n - (n : ℤ)).toNat

end

end A090621.P16087700613199681

namespace A090621

/-- `A002265(A005187(n)-n)` -/
def P16087700613199681.Spec : Prop :=
  ∀ n, P16087700613199681.a n = A090621 n

end A090621

/-! ## A090621.P13099710258992291136

`floor((n-A001222(A071044(n)))/4)`
-/

namespace A090621.P13099710258992291136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A001222 (A071044 n).toNat : ℚ) / 4⌋

end

end A090621.P13099710258992291136

namespace A090621

/-- `floor((n-A001222(A071044(n)))/4)` -/
def P13099710258992291136.Spec : Prop :=
  ∀ n, P13099710258992291136.a n = A090621 n

end A090621

/-! ## A090621.P5981825890316004738

`A002265(A005187(A004526(n)))`
-/

namespace A090621.P5981825890316004738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005187 (A004526 n).toNat).toNat

end

end A090621.P5981825890316004738

namespace A090621

/-- `A002265(A005187(A004526(n)))` -/
def P5981825890316004738.Spec : Prop :=
  ∀ n, P5981825890316004738.a n = A090621 n

end A090621

/-! ## A090621.P3248840560455046983

`A004526(A004526(n-A000120(n)))`
-/

namespace A090621.P3248840560455046983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 ((n : ℤ) - A000120 n).toNat).toNat

end

end A090621.P3248840560455046983

namespace A090621

/-- `A004526(A004526(n-A000120(n)))` -/
def P3248840560455046983.Spec : Prop :=
  ∀ n, P3248840560455046983.a n = A090621 n

end A090621

/-! ## A090621.P16524716590694418530

`A004526(A004526(A005187(n)-n))`
-/

namespace A090621.P16524716590694418530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (A005187 n - (n : ℤ)).toNat).toNat

end

end A090621.P16524716590694418530

namespace A090621

/-- `A004526(A004526(A005187(n)-n))` -/
def P16524716590694418530.Spec : Prop :=
  ∀ n, P16524716590694418530.a n = A090621 n

end A090621

/-! ## A090621.P8876607979466627955

`A004526(A004526(n+1-A063787(n+1)))`
-/

namespace A090621.P8876607979466627955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 ((n + 1 : ℤ) - A063787 (n + 1)).toNat).toNat

end

end A090621.P8876607979466627955

namespace A090621

/-- `A004526(A004526(n+1-A063787(n+1)))` -/
def P8876607979466627955.Spec : Prop :=
  ∀ n, P8876607979466627955.a n = A090621 n

end A090621

/-! ## A090621.P13897812757288253599

`A002265(∑[A007814(n+1)]-A007814(n+1))`
-/

namespace A090621.P13897812757288253599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j - A007814 (n + 1)).toNat

end

end A090621.P13897812757288253599

namespace A090621

/-- `A002265(∑[A007814(n+1)]-A007814(n+1))` -/
def P13897812757288253599.Spec : Prop :=
  ∀ n, P13897812757288253599.a n = A090621 n

end A090621

/-!
# A090622: Square array read by antidiagonals of highest power of k dividing n! (with n,k>1).

The programs for A090622, there is no canonical definition to state claims against.
-/

/-! ## A090622.P3275161936265969087

`A101688(n)*A329720(A046776(n))`
-/

namespace A090622.P3275161936265969087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A329720 (A046776 n).toNat

end

end A090622.P3275161936265969087

/-! ## A090622.P11550999017260283885

`C(A329720(A046776(n)), A143983(n+1))`
-/

namespace A090622.P11550999017260283885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329720 (A046776 n).toNat).toNat (A143983 (n + 1)).toNat

end

end A090622.P11550999017260283885

/-! ## A090622.P4568261932035151471

`floor(A057983(n)/A057983(A061579(n)))`
-/

namespace A090622.P4568261932035151471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057983 n : ℚ) / (A057983 (A061579 n).toNat : ℚ)⌋

end

end A090622.P4568261932035151471

/-! ## A090622.P12727867049167418322

`A258651(n)+A115944(A219045(n+1))`
-/

namespace A090622.P12727867049167418322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 n + A115944 (A219045 (n + 1)).toNat

end

end A090622.P12727867049167418322

/-! ## A090622.P1897574962706638790

`C(A007302(A038752(n)), A004202(n+1)-(2*n+1))`
-/

namespace A090622.P1897574962706638790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007302 (A038752 n).toNat).toNat (A004202 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A090622.P1897574962706638790

/-!
# A090623: Triangle of T(n,k) = [n/k] + [n/k^2] + [n/k^3] + [n/k^4] + ... for n, k > 1.

The programs for A090623, there is no canonical definition to state claims against.
-/

/-! ## A090623.P16298199283745702688

`A381886(lt[2, A008305(n+1)])`
-/

namespace A090623.P16298199283745702688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090623.P16298199283745702688

/-! ## A090623.P15109109426557371221

`A381886(lt[2, A106683(n+1)])`
-/

namespace A090623.P15109109426557371221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090623.P15109109426557371221

/-! ## A090623.P17374407692297281628

`A025528(A102430(n+2)%A352831(2*n+3))`
-/

namespace A090623.P17374407692297281628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (Int.tmod (A102430 (n + 2)) (A352831 (2 * n + 3))).toNat

end

end A090623.P17374407692297281628

/-! ## A090623.P8619434415854927475

`A004396(A102430(n+2))%A212122(n+1)`
-/

namespace A090623.P8619434415854927475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 (A102430 (n + 2)).toNat) (A212122 (n + 1))

end

end A090623.P8619434415854927475

/-! ## A090623.P7390794085021852965

`A025528(A102430(n+2))%A166510(n)`
-/

namespace A090623.P7390794085021852965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025528 (A102430 (n + 2)).toNat) (A166510 n)

end

end A090623.P7390794085021852965

/-!
# A090624: If n = Product(pj^ej), i.e., written in its prime factorization, then a(n) = max_j{(pj-1)*ej}.

The programs for A090624, there is no canonical definition to state claims against.
-/

/-! ## A090624.P14668158520416070599

`round(A093896(n+2)/(n+3))`
-/

namespace A090624.P14668158520416070599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A093896 (n + 2) : ℚ) / (n + 3 : ℚ))

end

end A090624.P14668158520416070599

/-! ## A090624.P18151962783399588041

`floor((n+2)²/A117134(n+2))`
-/

namespace A090624.P18151962783399588041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) ^ 2 : ℚ) / (A117134 (n + 2) : ℚ)⌋

end

end A090624.P18151962783399588041

/-! ## A090624.P16488658069627255602

`A353862(A064554(n+2))`
-/

namespace A090624.P16488658069627255602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353862 (A064554 (n + 2)).toNat

end

end A090624.P16488658069627255602

/-! ## A090624.P4759240703828632578

`A353862(A290641(n+2))`
-/

namespace A090624.P4759240703828632578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353862 (A290641 (n + 2)).toNat

end

end A090624.P4759240703828632578

/-! ## A090624.P9934056389094044030

`A025492(A117926(n+2))-1`
-/

namespace A090624.P9934056389094044030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (A117926 (n + 2)).toNat - 1

end

end A090624.P9934056389094044030

/-!
# A090626: T(n,k) = if (k-th digit of pi) = (n-th digit of pi) then 1 else 0, 1<=k<=n (pi=3.14159... ), triangular array read by rows.

The programs for A090626, there is no canonical definition to state claims against.
-/

/-! ## A090626.P13785234446464008734

`A326072(A173050(n+1)+1)`
-/

namespace A090626.P13785234446464008734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326072 (A173050 (n + 1) + 1).toNat

end

end A090626.P13785234446464008734

/-! ## A090626.P9557866784230873488

`A254379(A050156(n)+1)`
-/

namespace A090626.P9557866784230873488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A050156 n + 1).toNat

end

end A090626.P9557866784230873488

/-! ## A090626.P11230845143142423537

`A205808(A205813(n+1)+7)`
-/

namespace A090626.P11230845143142423537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205808 (A205813 (n + 1) + 7).toNat

end

end A090626.P11230845143142423537

/-! ## A090626.P6109372780532221861

`A000007(A098504(n+1)%A285280(n+3))`
-/

namespace A090626.P6109372780532221861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A098504 (n + 1)) (A285280 (n + 3))).toNat

end

end A090626.P6109372780532221861

/-! ## A090626.P5021409291446233463

`A023531(lcm(n, A384944(n)))`
-/

namespace A090626.P5021409291446233463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (Int.lcm (n : ℤ) (A384944 n))

end

end A090626.P5021409291446233463

/-!
# A090627: Numbers belonging to both A077225 and A080797 (in the order in which they appear in A077225).

The programs for A090627, there is no canonical definition to state claims against.
-/

/-! ## A090627.P1308579231153451221

`A080797(eq[0, A080797(n)%3])`
-/

namespace A090627.P1308579231153451221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080797 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090627.P1308579231153451221

/-! ## A090627.P1151007450583128002

`filter[A077225(n), A021913(#)]`
-/

namespace A090627.P1151007450583128002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A090627.P1151007450583128002

/-! ## A090627.P10149712904020273541

`filter[A080797(n), A021913(#)]`
-/

namespace A090627.P10149712904020273541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A090627.P10149712904020273541

/-!
# A090629: a(n) = abs(numerator of 2n-th Bernoulli number) modulo 3.

The programs for A090629, the canonical program `A090629.P15624064582687193134` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090629 has offset 0).

The definition of A090629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090629.P10793370821629473184

`(A180315(n)%3)!`
-/

namespace A090629.P10793370821629473184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A180315 n) 3).toNat

end

end A090629.P10793370821629473184

namespace A090629

/-- `(A180315(n)%3)!` -/
def P10793370821629473184.Spec : Prop :=
  ∀ n, (P10793370821629473184.a n : ℤ) = A090629 n

end A090629

/-! ## A090629.P14395762988515431009

`gcd(2, A140816(n)+n)`
-/

namespace A090629.P14395762988515431009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A140816 n + (n : ℤ))

end

end A090629.P14395762988515431009

namespace A090629

/-- `gcd(2, A140816(n)+n)` -/
def P14395762988515431009.Spec : Prop :=
  ∀ n, (P14395762988515431009.a n : ℤ) = A090629 n

end A090629

/-! ## A090629.P15624064582687193134

`(dr(A141056(2*n))+1+n)%2+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A090629

/-- `(dr(A141056(2*n))+1+n)%2+1` -/
def P15624064582687193134.Spec : Prop :=
  ∀ n, (P15624064582687193134.a n : ℤ) = A090629 n

theorem P15624064582687193134.correct : P15624064582687193134.Spec := by
  intro n
  simp only [A090629]

end A090629

/-! ## A090629.P7480613327023168899

`A180315(A008486(n))%3`
-/

namespace A090629.P7480613327023168899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180315 (A008486 n).toNat) 3

end

end A090629.P7480613327023168899

namespace A090629

/-- `A180315(A008486(n))%3` -/
def P7480613327023168899.Spec : Prop :=
  ∀ n, P7480613327023168899.a n = A090629 n

end A090629

/-! ## A090629.P15804713937285681785

`A180315(A028310(n))%3`
-/

namespace A090629.P15804713937285681785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180315 (A028310 n).toNat) 3

end

end A090629.P15804713937285681785

namespace A090629

/-- `A180315(A028310(n))%3` -/
def P15804713937285681785.Spec : Prop :=
  ∀ n, P15804713937285681785.a n = A090629 n

end A090629

/-! ## A090629.P12808608244347349321

`A040001(A140816(n)+n)`
-/

namespace A090629.P12808608244347349321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A140816 n + (n : ℤ)).toNat

end

end A090629.P12808608244347349321

namespace A090629

/-- `A040001(A140816(n)+n)` -/
def P12808608244347349321.Spec : Prop :=
  ∀ n, P12808608244347349321.a n = A090629 n

end A090629

/-! ## A090629.P4360415179487832948

`A134451(A140816(n)+n)`
-/

namespace A090629.P4360415179487832948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A140816 n + (n : ℤ)).toNat

end

end A090629.P4360415179487832948

namespace A090629

/-- `A134451(A140816(n)+n)` -/
def P4360415179487832948.Spec : Prop :=
  ∀ n, P4360415179487832948.a n = A090629 n

end A090629

/-! ## A090629.P13006925763134633516

`xor(A010674(n), A140816(n))`
-/

namespace A090629.P13006925763134633516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A140816 n)

end

end A090629.P13006925763134633516

namespace A090629

/-- `xor(A010674(n), A140816(n))` -/
def P13006925763134633516.Spec : Prop :=
  ∀ n, P13006925763134633516.a n = A090629 n

end A090629

/-! ## A090629.P4615003570922622002

`A040001(xor(n, A140816(n)))`
-/

namespace A090629.P4615003570922622002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Int.xor (n : ℤ) (A140816 n)).toNat

end

end A090629.P4615003570922622002

namespace A090629

/-- `A040001(xor(n, A140816(n)))` -/
def P4615003570922622002.Spec : Prop :=
  ∀ n, P4615003570922622002.a n = A090629 n

end A090629

/-! ## A090629.P3055087994038575896

`A180315(A233583(n+1))%3`
-/

namespace A090629.P3055087994038575896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180315 (A233583 (n + 1)).toNat) 3

end

end A090629.P3055087994038575896

namespace A090629

/-- `A180315(A233583(n+1))%3` -/
def P3055087994038575896.Spec : Prop :=
  ∀ n, P3055087994038575896.a n = A090629 n

end A090629

/-! ## A090629.P7325019826233527655

`A000034(A140816(n)+1+n)`
-/

namespace A090629.P7325019826233527655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A140816 n + 1 + (n : ℤ)).toNat

end

end A090629.P7325019826233527655

namespace A090629

/-- `A000034(A140816(n)+1+n)` -/
def P7325019826233527655.Spec : Prop :=
  ∀ n, P7325019826233527655.a n = A090629 n

end A090629

/-! ## A090629.P9494524429250299139

`A000034(1-(A140816(n)-n))`
-/

namespace A090629.P9494524429250299139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (1 - (A140816 n - (n : ℤ))).toNat

end

end A090629.P9494524429250299139

namespace A090629

/-- `A000034(1-(A140816(n)-n))` -/
def P9494524429250299139.Spec : Prop :=
  ∀ n, P9494524429250299139.a n = A090629 n

end A090629

/-! ## A090629.P12704741976124011986

`2-A000035(A140816(n)+n)`
-/

namespace A090629.P12704741976124011986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000035 (A140816 n + (n : ℤ)).toNat

end

end A090629.P12704741976124011986

namespace A090629

/-- `2-A000035(A140816(n)+n)` -/
def P12704741976124011986.Spec : Prop :=
  ∀ n, P12704741976124011986.a n = A090629 n

end A090629

/-! ## A090629.P14622856807444300860

`A040001(2-(A140816(n)-n))`
-/

namespace A090629.P14622856807444300860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 - (A140816 n - (n : ℤ))).toNat

end

end A090629.P14622856807444300860

namespace A090629

/-- `A040001(2-(A140816(n)-n))` -/
def P14622856807444300860.Spec : Prop :=
  ∀ n, P14622856807444300860.a n = A090629 n

end A090629

/-! ## A090629.P13806522373152853669

`A000032(and(1, n-A140816(n)))`
-/

namespace A090629.P13806522373152853669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 1 ((n : ℤ) - A140816 n)).toNat

end

end A090629.P13806522373152853669

namespace A090629

/-- `A000032(and(1, n-A140816(n)))` -/
def P13806522373152853669.Spec : Prop :=
  ∀ n, P13806522373152853669.a n = A090629 n

end A090629

/-! ## A090629.P6347440153459839817

`gcd(4, A020639(xor(n, A140816(n))))`
-/

namespace A090629.P6347440153459839817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A020639 (Int.xor (n : ℤ) (A140816 n)).toNat)

end

end A090629.P6347440153459839817

namespace A090629

/-- `gcd(4, A020639(xor(n, A140816(n))))` -/
def P6347440153459839817.Spec : Prop :=
  ∀ n, (P6347440153459839817.a n : ℤ) = A090629 n

end A090629

/-! ## A090629.P12812613835784740296

`A000034(A002445(n)%9+n+1)`
-/

namespace A090629.P12812613835784740296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.tmod (A002445 n) 9 + (n + 1 : ℤ)).toNat

end

end A090629.P12812613835784740296

namespace A090629

/-- `A000034(A002445(n)%9+n+1)` -/
def P12812613835784740296.Spec : Prop :=
  ∀ n, P12812613835784740296.a n = A090629 n

end A090629

/-! ## A090629.P10437692012235428176

`A006530(gcd(A140816(n)-n, 2*n))`
-/

namespace A090629.P10437692012235428176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A140816 n - (n : ℤ)) (2 * n : ℤ))

end

end A090629.P10437692012235428176

namespace A090629

/-- `A006530(gcd(A140816(n)-n, 2*n))` -/
def P10437692012235428176.Spec : Prop :=
  ∀ n, P10437692012235428176.a n = A090629 n

end A090629

/-! ## A090629.P158134780632900951

`A040001((n-A140816(n))²)`
-/

namespace A090629.P158134780632900951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (((n : ℤ) - A140816 n) ^ 2).toNat

end

end A090629.P158134780632900951

namespace A090629

/-- `A040001((n-A140816(n))²)` -/
def P158134780632900951.Spec : Prop :=
  ∀ n, P158134780632900951.a n = A090629 n

end A090629

/-! ## A090629.P5652754404502116041

`A134451((n-A140816(n))²)`
-/

namespace A090629.P5652754404502116041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (((n : ℤ) - A140816 n) ^ 2).toNat

end

end A090629.P5652754404502116041

namespace A090629

/-- `A134451((n-A140816(n))²)` -/
def P5652754404502116041.Spec : Prop :=
  ∀ n, P5652754404502116041.a n = A090629 n

end A090629

/-!
# A090630: Greatest divisor d of n! such that d=m^k with k>1.

The programs for A090630, there is no canonical definition to state claims against.
-/

/-! ## A090630.P9578031129881512816

`n!/A251753(n)`
-/

namespace A090630.P9578031129881512816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A251753 n : ℚ)

end

end A090630.P9578031129881512816

/-! ## A090630.P12785785075365916611

`A000142(n)/A251753(n)`
-/

namespace A090630.P12785785075365916611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A251753 n : ℚ)

end

end A090630.P12785785075365916611

/-! ## A090630.P17944090936149441195

`Δ[A003422(n)]/A251753(n)`
-/

namespace A090630.P17944090936149441195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A251753 n : ℚ)

end

end A090630.P17944090936149441195

/-! ## A090630.P11233051071587626906

`A094587(A000124(n))/A251753(n)`
-/

namespace A090630.P11233051071587626906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A000124 n).toNat : ℚ) / (A251753 n : ℚ)

end

end A090630.P11233051071587626906

/-!
# A090631: Given n boxes labeled 1..n, such that box i weighs 2i grams and can support a total weight of i grams; a(n) = number of stacks of boxes that can be formed such that no box is squashed.

The programs for A090631, there is no canonical definition to state claims against.
-/

/-! ## A090631.P4560940375756620245

`∑[a(n-2)+a(floor(n/3))]` with `a(0)=1, a(1)=1`
-/

namespace A090631.P4560940375756620245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090631.P4560940375756620245

/-! ## A090631.P1037683152121808759

`∑[A005704(floor(n/2))]`
-/

namespace A090631.P1037683152121808759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090631.P1037683152121808759

/-! ## A090631.P11276499428243318102

`∑[A008650(comp[3*n])]`
-/

namespace A090631.P11276499428243318102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008650 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090631.P11276499428243318102

/-! ## A090631.P7659352898500613136

`∑[A062051(comp[3*n])]`
-/

namespace A090631.P7659352898500613136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090631.P7659352898500613136

/-! ## A090631.P14699947777009850606

`∑[A306727(∑[4*n-n%2])]`
-/

namespace A090631.P14699947777009850606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306727 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090631.P14699947777009850606

/-! ## A090631.P16770911757215441149

`A008650(comp[3*(n-1)])+a(n-1)` with `a(0)=1`
-/

namespace A090631.P16770911757215441149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008650 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + a (n - 1)

end

end A090631.P16770911757215441149

/-! ## A090631.P5998308104411766144

`∑[A005704(A123108(n))]-1`
-/

namespace A090631.P5998308104411766144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A090631.P5998308104411766144

/-!
# A090632: Given n boxes labeled 1..n, such that box i weighs 3i grams and can support a total weight of i grams; a(n) = number of stacks of boxes that can be formed such that no box is squashed.

The programs for A090632, there is no canonical definition to state claims against.
-/

/-! ## A090632.P13174341178789648095

`∑[A005705(floor(n/3))]`
-/

namespace A090632.P13174341178789648095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005705 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090632.P13174341178789648095

/-! ## A090632.P17192847956813912313

`∑[a(A002265(n))+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A090632.P17192847956813912313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (A002265 n).toNat + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090632.P17192847956813912313

/-! ## A090632.P7549883323032639773

`∑[A292477(A141214(floor(n/3)))]`
-/

namespace A090632.P7549883323032639773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (A141214 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090632.P7549883323032639773

/-! ## A090632.P6671019562466885306

`A005705(floor(n/3))+a(A023443(n))` with `a(0)=1`
-/

namespace A090632.P6671019562466885306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005705 ⌊(n : ℚ) / 3⌋.toNat + a (A023443 n).toNat

end

end A090632.P6671019562466885306

/-! ## A090632.P4101534861775348630

`A121373((2*n+3)²)+A117930(n)`
-/

namespace A090632.P4101534861775348630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((2 * n + 3) ^ 2) + A117930 n

end

end A090632.P4101534861775348630

/-!
# A090633: Start with the sequence [1, 1/2, 1/3, ..., 1/n]; form new sequence of n-1 terms by taking averages of successive terms; repeat until reach a single number F(n); a(n) = numerator of F(n).

The programs for A090633, the canonical program `A090633.P11231112395834428156` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090633 has offset 1).

The definition of A090633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090633.P10710239862125707552

`∏{d}[n+1, A064078(#)]`
-/

namespace A090633.P10710239862125707552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A064078 d

end

end A090633.P10710239862125707552

namespace A090633

/-- `∏{d}[n+1, A064078(#)]` -/
def P10710239862125707552.Spec : Prop :=
  ∀ n, P10710239862125707552.a n = A090633 (n + 1)

end A090633

/-! ## A090633.P11231112395834428156

`A126646(n)/A014491(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A090633

/-- `A126646(n)/A014491(n+1)` -/
def P11231112395834428156.Spec : Prop :=
  ∀ n, P11231112395834428156.a n = (A090633 (n + 1) : ℚ)

end A090633

/-! ## A090633.P10893002688197833901

`lcm(A069112(n+1), A116419(n))`
-/

namespace A090633.P10893002688197833901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069112 (n + 1)) (A116419 n)

end

end A090633.P10893002688197833901

namespace A090633

/-- `lcm(A069112(n+1), A116419(n))` -/
def P10893002688197833901.Spec : Prop :=
  ∀ n, (P10893002688197833901.a n : ℤ) = A090633 (n + 1)

end A090633

/-! ## A090633.P10680831639041018215

`∑[A000079(n)]/A014491(n+1)`
-/

namespace A090633.P10680831639041018215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014491 (n + 1) : ℚ)

end

end A090633.P10680831639041018215

namespace A090633

/-- `∑[A000079(n)]/A014491(n+1)` -/
def P10680831639041018215.Spec : Prop :=
  ∀ n, P10680831639041018215.a n = (A090633 (n + 1) : ℚ)

end A090633

/-! ## A090633.P6808672484128505537

`A000225(n+1)/A014491(n+1)`
-/

namespace A090633.P6808672484128505537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) : ℚ) / (A014491 (n + 1) : ℚ)

end

end A090633.P6808672484128505537

namespace A090633

/-- `A000225(n+1)/A014491(n+1)` -/
def P6808672484128505537.Spec : Prop :=
  ∀ n, P6808672484128505537.a n = (A090633 (n + 1) : ℚ)

end A090633

/-! ## A090633.P5677398959725984461

`A000225(n+1)/gcd(n+1, ∑[A000225(n)])`
-/

namespace A090633.P5677398959725984461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A090633.P5677398959725984461

namespace A090633

/-- `A000225(n+1)/gcd(n+1, ∑[A000225(n)])` -/
def P5677398959725984461.Spec : Prop :=
  ∀ n, P5677398959725984461.a n = (A090633 (n + 1) : ℚ)

end A090633

/-! ## A090633.P1549516973222737368

`A126646(n)/gcd(A000265(n+1), A126646(n))`
-/

namespace A090633.P1549516973222737368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (Int.gcd (A000265 (n + 1)) (A126646 n) : ℚ)

end

end A090633.P1549516973222737368

namespace A090633

/-- `A126646(n)/gcd(A000265(n+1), A126646(n))` -/
def P1549516973222737368.Spec : Prop :=
  ∀ n, P1549516973222737368.a n = (A090633 (n + 1) : ℚ)

end A090633

/-! ## A090633.P14063800458930589804

`A000225(n+1)/gcd(A000225(n+1), A026741(n+1))`
-/

namespace A090633.P14063800458930589804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) : ℚ) / (Int.gcd (A000225 (n + 1)) (A026741 (n + 1)) : ℚ)

end

end A090633.P14063800458930589804

namespace A090633

/-- `A000225(n+1)/gcd(A000225(n+1), A026741(n+1))` -/
def P14063800458930589804.Spec : Prop :=
  ∀ n, P14063800458930589804.a n = (A090633 (n + 1) : ℚ)

end A090633

/-! ## A090633.P12035687317140355592

`A077896(2*n)/gcd(A077896(2*n), A152271(2*n+1))`
-/

namespace A090633.P12035687317140355592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077896 (2 * n) : ℚ) / (Int.gcd (A077896 (2 * n)) (A152271 (2 * n + 1)) : ℚ)

end

end A090633.P12035687317140355592

namespace A090633

/-- `A077896(2*n)/gcd(A077896(2*n), A152271(2*n+1))` -/
def P12035687317140355592.Spec : Prop :=
  ∀ n, P12035687317140355592.a n = (A090633 (n + 1) : ℚ)

end A090633

/-! ## A090633.P4620101269538933234

`A095121(n+1)/gcd(A004277(n+1), A095121(n+1))`
-/

namespace A090633.P4620101269538933234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095121 (n + 1) : ℚ) / (Int.gcd (A004277 (n + 1)) (A095121 (n + 1)) : ℚ)

end

end A090633.P4620101269538933234

namespace A090633

/-- `A095121(n+1)/gcd(A004277(n+1), A095121(n+1))` -/
def P4620101269538933234.Spec : Prop :=
  ∀ n, P4620101269538933234.a n = (A090633 (n + 1) : ℚ)

end A090633

/-! ## A090633.P1151262450732847770

`lcm(n+1, ∑[2^n])/(n+1)`
-/

namespace A090633.P1151262450732847770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A090633.P1151262450732847770

namespace A090633

/-- `lcm(n+1, ∑[2^n])/(n+1)` -/
def P1151262450732847770.Spec : Prop :=
  ∀ n, P1151262450732847770.a n = (A090633 (n + 1) : ℚ)

end A090633

/-!
# A090634: Start with the sequence [1, 1/2, 1/3, ..., 1/n]; form new sequence of n-1 terms by taking averages of successive terms; repeat until reach a single number F(n); a(n) = denominator of F(n).

The programs for A090634, the canonical program `A090634.P4588373203180179203` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090634 has offset 1).

The definition of A090634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090634.P4273808198060522228

`A131135(n+1)/2`
-/

namespace A090634.P4273808198060522228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131135 (n + 1) : ℚ) / 2

end

end A090634.P4273808198060522228

namespace A090634

/-- `A131135(n+1)/2` -/
def P4273808198060522228.Spec : Prop :=
  ∀ n, P4273808198060522228.a n = (A090634 (n + 1) : ℚ)

end A090634

/-! ## A090634.P4588373203180179203

`∑[A001792(n)]/A014491(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A090634

/-- `∑[A001792(n)]/A014491(n+1)` -/
def P4588373203180179203.Spec : Prop :=
  ∀ n, P4588373203180179203.a n = (A090634 (n + 1) : ℚ)

end A090634

/-! ## A090634.P11583547405356412699

`(n+1)*A000079(n)/A014491(n+1)`
-/

namespace A090634.P11583547405356412699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000079 n : ℚ) / (A014491 (n + 1) : ℚ))

end

end A090634.P11583547405356412699

namespace A090634

/-- `(n+1)*A000079(n)/A014491(n+1)` -/
def P11583547405356412699.Spec : Prop :=
  ∀ n, P11583547405356412699.a n = (A090634 (n + 1) : ℚ)

end A090634

/-! ## A090634.P9869723176543620479

`A001787(n+1)/gcd(n+1, A000337(n))`
-/

namespace A090634.P9869723176543620479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000337 n) : ℚ)

end

end A090634.P9869723176543620479

namespace A090634

/-- `A001787(n+1)/gcd(n+1, A000337(n))` -/
def P9869723176543620479.Spec : Prop :=
  ∀ n, P9869723176543620479.a n = (A090634 (n + 1) : ℚ)

end A090634

/-! ## A090634.P10581021260556257590

`A001787(n+1)/gcd(A000225(n+1), A001787(n+1))`
-/

namespace A090634.P10581021260556257590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (n + 1) : ℚ) / (Int.gcd (A000225 (n + 1)) (A001787 (n + 1)) : ℚ)

end

end A090634.P10581021260556257590

namespace A090634

/-- `A001787(n+1)/gcd(A000225(n+1), A001787(n+1))` -/
def P10581021260556257590.Spec : Prop :=
  ∀ n, P10581021260556257590.a n = (A090634 (n + 1) : ℚ)

end A090634

/-! ## A090634.P3918179620453531145

`Δ[A000337(n)]/gcd(n+1, A000337(n))`
-/

namespace A090634.P3918179620453531145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (Int.gcd (n + 1 : ℤ) (A000337 n) : ℚ)

end

end A090634.P3918179620453531145

namespace A090634

/-- `Δ[A000337(n)]/gcd(n+1, A000337(n))` -/
def P3918179620453531145.Spec : Prop :=
  ∀ n, P3918179620453531145.a n = (A090634 (n + 1) : ℚ)

end A090634

/-!
# A090635: Trajectory of 63 under the map k -> A003415(k) (taking the arithmetic derivative).

The programs for A090635, there is no canonical definition to state claims against.
-/

/-! ## A090635.P15362876081555145421

`A348497(a(n-1))` with `a(0)=63`
-/

namespace A090635.P15362876081555145421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [63] fun n a =>
  A348497 (a (n - 1)).toNat

end

end A090635.P15362876081555145421

/-! ## A090635.P6638060169975769168

`A068346(a(n-2))` with `a(0)=63, a(1)=51`
-/

namespace A090635.P6638060169975769168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [63, 51] fun n a =>
  A068346 (a (n - 2)).toNat

end

end A090635.P6638060169975769168

/-! ## A090635.P6722817855689476625

`A003415(a(n-1))` with `a(0)=63`
-/

namespace A090635.P6722817855689476625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [63] fun n a =>
  A003415 (a (n - 1)).toNat

end

end A090635.P6722817855689476625

/-!
# A090636: Trajectory of 15 under the map k -> A003415(k) (taking the arithmetic derivative).

The programs for A090636, there is no canonical definition to state claims against.
-/

/-! ## A090636.P16284319488755533856

`A258651(eq[15, A002262(n)])`
-/

namespace A090636.P16284319488755533856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090636.P16284319488755533856

/-! ## A090636.P3939718490275462569

`A258651(eq[16, A002260(n+1)])`
-/

namespace A090636.P3939718490275462569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090636.P3939718490275462569

/-! ## A090636.P4285036289981093465

`A258651(eq[16, A135223(n+1)])`
-/

namespace A090636.P4285036289981093465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090636.P4285036289981093465

/-! ## A090636.P6107436926081870478

`A068346(a(n-2))` with `a(0)=15, a(1)=8`
-/

namespace A090636.P6107436926081870478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 8] fun n a =>
  A068346 (a (n - 2)).toNat

end

end A090636.P6107436926081870478

/-! ## A090636.P5447806999704707417

`A003415(a(n-1))` with `a(0)=15`
-/

namespace A090636.P5447806999704707417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A003415 (a (n - 1)).toNat

end

end A090636.P5447806999704707417

/-!
# A090637: Trajectory of 28 under the map k -> A003415(k) (taking the arithmetic derivative).

The programs for A090637, there is no canonical definition to state claims against.
-/

/-! ## A090637.P13989307467966074367

`record[C(A129150(n), A054977(n))]`
-/

namespace A090637.P13989307467966074367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129150 n).toNat (A054977 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090637.P13989307467966074367

/-! ## A090637.P14652276950235336691

`record[C(A129150(n), A329684(n+2))]`
-/

namespace A090637.P14652276950235336691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129150 n).toNat (A329684 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090637.P14652276950235336691

/-! ## A090637.P1657240637229199548

`C(A129150(2-A000038(n)+n), A054977(n))`
-/

namespace A090637.P1657240637229199548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129150 (2 - A000038 n + (n : ℤ)).toNat).toNat (A054977 n).toNat

end

end A090637.P1657240637229199548

/-! ## A090637.P8371214198095793971

`A258651(eq[28, A002262(n)])`
-/

namespace A090637.P8371214198095793971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090637.P8371214198095793971

/-! ## A090637.P18156363714340064326

`A129150(n+2)+A004016(A340018(2*n+5))`
-/

namespace A090637.P18156363714340064326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129150 (n + 2) + A004016 (A340018 (2 * n + 5)).toNat

end

end A090637.P18156363714340064326

/-!
# A090639: a(0) = 0; a(2n) = 3*a(n), a(2n+1) = a(n) + 1.

The programs for A090639, the canonical program `A090639.P11249680220507730796` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090639 has offset 0).

The definition of A090639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090639.P11249680220507730796

`n%2+gcd(3, n%2)*a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090639

/-- `n%2+gcd(3, n%2)*a(floor(n/2))` -/
def P11249680220507730796.Spec : Prop :=
  ∀ n, (P11249680220507730796.a n : ℤ) = A090639 n

theorem P11249680220507730796.correct : P11249680220507730796.Spec := by
  intro n
  simp only [A090639]

end A090639

/-! ## A090639.P16721849181437267054

`(a(floor(n/2))+2-gcd(2, n))*A010684(n+1)` with `a(0)=0`
-/

namespace A090639.P16721849181437267054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + (2 - (Nat.gcd 2 n : ℤ))) * A010684 (n + 1)

end

end A090639.P16721849181437267054

namespace A090639

/-- `(a(floor(n/2))+2-gcd(2, n))*A010684(n+1)` -/
def P16721849181437267054.Spec : Prop :=
  ∀ n, P16721849181437267054.a n = A090639 n

end A090639

/-! ## A090639.P16757272698845510200

`∑{d}[A005940(n+1), A090880(A014963(#))]`
-/

namespace A090639.P16757272698845510200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A090880 (A014963 d).toNat

end

end A090639.P16757272698845510200

namespace A090639

/-- `∑{d}[A005940(n+1), A090880(A014963(#))]` -/
def P16757272698845510200.Spec : Prop :=
  ∀ n, P16757272698845510200.a n = A090639 n

end A090639

/-! ## A090639.P13970938505815970881

`A090880(A005940(n+1))`
-/

namespace A090639.P13970938505815970881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (A005940 (n + 1)).toNat

end

end A090639.P13970938505815970881

namespace A090639

/-- `A090880(A005940(n+1))` -/
def P13970938505815970881.Spec : Prop :=
  ∀ n, P13970938505815970881.a n = A090639 n

end A090639

/-! ## A090639.P15350746016764908845

`A090880(A337375(n)*A337376(n))`
-/

namespace A090639.P15350746016764908845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (A337375 n * A337376 n).toNat

end

end A090639.P15350746016764908845

namespace A090639

/-- `A090880(A337375(n)*A337376(n))` -/
def P15350746016764908845.Spec : Prop :=
  ∀ n, P15350746016764908845.a n = A090639 n

end A090639

/-! ## A090639.P15212308933164039926

`A090880(A340362(n+1)+A324106(n+1))`
-/

namespace A090639.P15212308933164039926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A090639.P15212308933164039926

namespace A090639

/-- `A090880(A340362(n+1)+A324106(n+1))` -/
def P15212308933164039926.Spec : Prop :=
  ∀ n, P15212308933164039926.a n = A090639 n

end A090639

/-! ## A090639.P1136675041579245532

`A090880(A324641(n+1)-A324640(n+1))`
-/

namespace A090639.P1136675041579245532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A090639.P1136675041579245532

namespace A090639

/-- `A090880(A324641(n+1)-A324640(n+1))` -/
def P1136675041579245532.Spec : Prop :=
  ∀ n, P1136675041579245532.a n = A090639 n

end A090639

/-!
# A090640: a(0) = 0; a(2n) = 4*a(n), a(2n+1) = a(n) + 1.

The programs for A090640, the canonical program `A090640.P4723047412368190196` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090640 has offset 0).

The definition of A090640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090640.P4723047412368190196

`n%2+gcd(2, n)²*a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090640

/-- `n%2+gcd(2, n)²*a(floor(n/2))` -/
def P4723047412368190196.Spec : Prop :=
  ∀ n, (P4723047412368190196.a n : ℤ) = A090640 n

theorem P4723047412368190196.correct : P4723047412368190196.Spec := by
  intro n
  simp only [A090640]

end A090640

/-! ## A090640.P9366753753321737303

`A000035(n)+gcd(2, n)²*a(floor(n/2))` with `a(0)=0`
-/

namespace A090640.P9366753753321737303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000035 n + (Nat.gcd 2 n ^ 2 : ℤ) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A090640.P9366753753321737303

namespace A090640

/-- `A000035(n)+gcd(2, n)²*a(floor(n/2))` -/
def P9366753753321737303.Spec : Prop :=
  ∀ n, P9366753753321737303.a n = A090640 n

end A090640

/-! ## A090640.P17493153849757744600

`(a(floor(n/2))+(1-(-1)^n)/2)*A040005(n)` with `a(0)=0`
-/

namespace A090640.P17493153849757744600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ) / 2) * (A040005 n : ℚ)

end

end A090640.P17493153849757744600

namespace A090640

/-- `(a(floor(n/2))+(1-(-1)^n)/2)*A040005(n)` -/
def P17493153849757744600.Spec : Prop :=
  ∀ n, P17493153849757744600.a n = (A090640 n : ℚ)

end A090640

/-! ## A090640.P13188413436098863840

`∑{d}[A005940(n+1), A048675(A014963(#))²]`
-/

namespace A090640.P13188413436098863840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048675 (A014963 d).toNat ^ 2

end

end A090640.P13188413436098863840

namespace A090640

/-- `∑{d}[A005940(n+1), A048675(A014963(#))²]` -/
def P13188413436098863840.Spec : Prop :=
  ∀ n, P13188413436098863840.a n = A090640 n

end A090640

/-! ## A090640.P18293783359332290723

`A087808(A084471(Δ[n²]))-1`
-/

namespace A090640.P18293783359332290723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A084471 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - 1

end

end A090640.P18293783359332290723

namespace A090640

/-- `A087808(A084471(Δ[n²]))-1` -/
def P18293783359332290723.Spec : Prop :=
  ∀ n, P18293783359332290723.a n = A090640 n

end A090640

/-! ## A090640.P2534980233453106800

`1-4/2+A087808(A084471(2*n+1))`
-/

namespace A090640.P2534980233453106800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2 + (A087808 (A084471 (2 * n + 1)).toNat : ℚ)

end

end A090640.P2534980233453106800

namespace A090640

/-- `1-4/2+A087808(A084471(2*n+1))` -/
def P2534980233453106800.Spec : Prop :=
  ∀ n, P2534980233453106800.a n = (A090640 n : ℚ)

end A090640

/-! ## A090640.P770414712503473168

`A087808(A087808((2*∑[and(n, -n)²]+n)/3))`
-/

namespace A090640.P770414712503473168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A087808 (SequenceMachineLib.roundAway (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3)).toNat).toNat

end

end A090640.P770414712503473168

namespace A090640

/-- `A087808(A087808((2*∑[and(n, -n)²]+n)/3))` -/
def P770414712503473168.Spec : Prop :=
  ∀ n, P770414712503473168.a n = A090640 n

end A090640

/-! ## A090640.P13995240661941492590

`A087808(A087808(A000695(n)))`
-/

namespace A090640.P13995240661941492590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A087808 (A000695 n).toNat).toNat

end

end A090640.P13995240661941492590

namespace A090640

/-- `A087808(A087808(A000695(n)))` -/
def P13995240661941492590.Spec : Prop :=
  ∀ n, P13995240661941492590.a n = A090640 n

end A090640

/-! ## A090640.P15544347497694324662

`A087808(A087808(A054238(∑[n])))`
-/

namespace A090640.P15544347497694324662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A087808 (A054238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A090640.P15544347497694324662

namespace A090640

/-- `A087808(A087808(A054238(∑[n])))` -/
def P15544347497694324662.Spec : Prop :=
  ∀ n, P15544347497694324662.a n = A090640 n

end A090640

/-! ## A090640.P1209864292877079809

`∑{d}[A005940(n+1), A297108(#)²]`
-/

namespace A090640.P1209864292877079809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d ^ 2

end

end A090640.P1209864292877079809

namespace A090640

/-- `∑{d}[A005940(n+1), A297108(#)²]` -/
def P1209864292877079809.Spec : Prop :=
  ∀ n, P1209864292877079809.a n = A090640 n

end A090640

/-! ## A090640.P13313894157224792757

`A289506(A374717(n+1))`
-/

namespace A090640.P13313894157224792757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A374717 (n + 1)).toNat

end

end A090640.P13313894157224792757

namespace A090640

/-- `A289506(A374717(n+1))` -/
def P13313894157224792757.Spec : Prop :=
  ∀ n, P13313894157224792757.a n = A090640 n

end A090640

/-!
# A090641: Triangle read by rows: T(n,k) (n >= 0, 0 <= k <= n) giving number of solutions to the n-box stacking problem in which exactly k boxes are used in the stack.

The programs for A090641, there is no canonical definition to state claims against.
-/

/-! ## A090641.P15440423328421965200

`or(A021913(A156953(n)), A078802(n))`
-/

namespace A090641.P15440423328421965200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A021913 (A156953 n).toNat) (A078802 n)

end

end A090641.P15440423328421965200

/-! ## A090641.P16783107298852331312

`A028326(n)/2-A241458(A216274(n))`
-/

namespace A090641.P16783107298852331312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 - (A241458 (A216274 n).toNat : ℚ)

end

end A090641.P16783107298852331312

/-! ## A090641.P6578551339775806652

`or(A074201(A000040(n+1)), A078802(n))`
-/

namespace A090641.P6578551339775806652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074201 (A000040 (n + 1)).toNat) (A078802 n)

end

end A090641.P6578551339775806652

/-! ## A090641.P5341462901637764575

`or(A074201(A008578(n+2)), A078802(n))`
-/

namespace A090641.P5341462901637764575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074201 (A008578 (n + 2)).toNat) (A078802 n)

end

end A090641.P5341462901637764575

/-! ## A090641.P10585154497924887091

`ceil(A109128(n)/2)-A241458(A216274(n))`
-/

namespace A090641.P10585154497924887091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉ - A241458 (A216274 n).toNat

end

end A090641.P10585154497924887091

/-!
# A090642: Triangle read by rows: T(n,k) = binomial(n^2, k), 0 <= k <= n.

The programs for A090642, the canonical program `A090642.P761711418045384423` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090642 has offset 0).

The definition of A090642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090642.P761711418045384423

`C(A003056(n)², A002262(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090642

/-- `C(A003056(n)², A002262(n))` -/
def P761711418045384423.Spec : Prop :=
  ∀ n, (P761711418045384423.a n : ℤ) = A090642 n

theorem P761711418045384423.correct : P761711418045384423.Spec := by
  intro n
  simp only [A090642]

end A090642

/-! ## A090642.P18210170891107860804

`C(A003056(n)², log2(A059268(n)))`
-/

namespace A090642.P18210170891107860804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A090642.P18210170891107860804

namespace A090642

/-- `C(A003056(n)², log2(A059268(n)))` -/
def P18210170891107860804.Spec : Prop :=
  ∀ n, (P18210170891107860804.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P10398705326139414751

`C(A003056(n)², val(A175840(n), 2))`
-/

namespace A090642.P10398705326139414751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (SequenceMachineLib.valuation (A175840 n).toNat 2)

end

end A090642.P10398705326139414751

namespace A090642

/-- `C(A003056(n)², val(A175840(n), 2))` -/
def P10398705326139414751.Spec : Prop :=
  ∀ n, (P10398705326139414751.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P9666719374109754809

`C((n-A083920(n))², A002262(n))`
-/

namespace A090642.P9666719374109754809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n : ℤ) - A083920 n) ^ 2).toNat (A002262 n).toNat

end

end A090642.P9666719374109754809

namespace A090642

/-- `C((n-A083920(n))², A002262(n))` -/
def P9666719374109754809.Spec : Prop :=
  ∀ n, (P9666719374109754809.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P7824434327522107694

`C((n-A271439(n))², A002262(n))`
-/

namespace A090642.P7824434327522107694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n : ℤ) - A271439 n) ^ 2).toNat (A002262 n).toNat

end

end A090642.P7824434327522107694

namespace A090642

/-- `C((n-A271439(n))², A002262(n))` -/
def P7824434327522107694.Spec : Prop :=
  ∀ n, (P7824434327522107694.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P2531177798546443101

`C(A003056(n)², A057554(Δ[n²]))`
-/

namespace A090642.P2531177798546443101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A090642.P2531177798546443101

namespace A090642

/-- `C(A003056(n)², A057554(Δ[n²]))` -/
def P2531177798546443101.Spec : Prop :=
  ∀ n, (P2531177798546443101.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P16731325155846802551

`C((1-A002024(n+1))², A002262(n))`
-/

namespace A090642.P16731325155846802551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - A002024 (n + 1)) ^ 2).toNat (A002262 n).toNat

end

end A090642.P16731325155846802551

namespace A090642

/-- `C((1-A002024(n+1))², A002262(n))` -/
def P16731325155846802551.Spec : Prop :=
  ∀ n, (P16731325155846802551.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P12471852312970025047

`C(A003056(n)², A002260(n+1)-1)`
-/

namespace A090642.P12471852312970025047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A002260 (n + 1) - 1).toNat

end

end A090642.P12471852312970025047

namespace A090642

/-- `C(A003056(n)², A002260(n+1)-1)` -/
def P12471852312970025047.Spec : Prop :=
  ∀ n, (P12471852312970025047.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P17046655082126256404

`C(A003056(n)², 2*n-A061885(n))`
-/

namespace A090642.P17046655082126256404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat ((2 * n : ℤ) - A061885 n).toNat

end

end A090642.P17046655082126256404

namespace A090642

/-- `C(A003056(n)², 2*n-A061885(n))` -/
def P17046655082126256404.Spec : Prop :=
  ∀ n, (P17046655082126256404.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P8227115631886795000

`C(A003056(n)², A057555(2*n+1)-1)`
-/

namespace A090642.P8227115631886795000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A057555 (2 * n + 1) - 1).toNat

end

end A090642.P8227115631886795000

namespace A090642

/-- `C(A003056(n)², A057555(2*n+1)-1)` -/
def P8227115631886795000.Spec : Prop :=
  ∀ n, (P8227115631886795000.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P15471546821946872125

`C(A003056(n)², A057554(2*n+1)%63)`
-/

namespace A090642.P15471546821946872125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (Int.tmod (A057554 (2 * n + 1)) 63).toNat

end

end A090642.P15471546821946872125

namespace A090642

/-- `C(A003056(n)², A057554(2*n+1)%63)` -/
def P15471546821946872125.Spec : Prop :=
  ∀ n, (P15471546821946872125.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P18176563701795767427

`C(A133280(A057944(n)), A002262(n))`
-/

namespace A090642.P18176563701795767427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133280 (A057944 n).toNat).toNat (A002262 n).toNat

end

end A090642.P18176563701795767427

namespace A090642

/-- `C(A133280(A057944(n)), A002262(n))` -/
def P18176563701795767427.Spec : Prop :=
  ∀ n, (P18176563701795767427.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P9968205659710034235

`C(A133280(n-A002262(n)), A002262(n))`
-/

namespace A090642.P9968205659710034235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133280 ((n : ℤ) - A002262 n).toNat).toNat (A002262 n).toNat

end

end A090642.P9968205659710034235

namespace A090642

/-- `C(A133280(n-A002262(n)), A002262(n))` -/
def P9968205659710034235.Spec : Prop :=
  ∀ n, (P9968205659710034235.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P4312007193078971237

`C(A002262(A025581(n)+n)², A002262(n))`
-/

namespace A090642.P4312007193078971237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (A025581 n + (n : ℤ)).toNat ^ 2).toNat (A002262 n).toNat

end

end A090642.P4312007193078971237

namespace A090642

/-- `C(A002262(A025581(n)+n)², A002262(n))` -/
def P4312007193078971237.Spec : Prop :=
  ∀ n, (P4312007193078971237.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P12336733423052371073

`C(A003056(n)², A003056(n)-A025581(n))`
-/

namespace A090642.P12336733423052371073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A003056 n - A025581 n).toNat

end

end A090642.P12336733423052371073

namespace A090642

/-- `C(A003056(n)², A003056(n)-A025581(n))` -/
def P12336733423052371073.Spec : Prop :=
  ∀ n, (P12336733423052371073.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P2319698417709188772

`C(A051162(n-A002262(n))², A002262(n))`
-/

namespace A090642.P2319698417709188772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 ((n : ℤ) - A002262 n).toNat ^ 2).toNat (A002262 n).toNat

end

end A090642.P2319698417709188772

namespace A090642

/-- `C(A051162(n-A002262(n))², A002262(n))` -/
def P2319698417709188772.Spec : Prop :=
  ∀ n, (P2319698417709188772.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P11311545303013125976

`C(A003056(n)², A051162(n)-A003056(n))`
-/

namespace A090642.P11311545303013125976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A051162 n - A003056 n).toNat

end

end A090642.P11311545303013125976

namespace A090642

/-- `C(A003056(n)², A051162(n)-A003056(n))` -/
def P11311545303013125976.Spec : Prop :=
  ∀ n, (P11311545303013125976.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P15859922939305049313

`C(A134478(n-A002262(n))², A002262(n))`
-/

namespace A090642.P15859922939305049313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 ((n : ℤ) - A002262 n).toNat ^ 2).toNat (A002262 n).toNat

end

end A090642.P15859922939305049313

namespace A090642

/-- `C(A134478(n-A002262(n))², A002262(n))` -/
def P15859922939305049313.Spec : Prop :=
  ∀ n, (P15859922939305049313.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P6605553355826134201

`C(A003056(n)², A026100(A026098(n+1))-1)`
-/

namespace A090642.P6605553355826134201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A026100 (A026098 (n + 1)).toNat - 1).toNat

end

end A090642.P6605553355826134201

namespace A090642

/-- `C(A003056(n)², A026100(A026098(n+1))-1)` -/
def P6605553355826134201.Spec : Prop :=
  ∀ n, (P6605553355826134201.a n : ℤ) = A090642 n

end A090642

/-! ## A090642.P17663170563330442493

`C((A144257(n+1)+A002262(n))², A002262(n))`
-/

namespace A090642.P17663170563330442493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((A144257 (n + 1) + A002262 n) ^ 2).toNat (A002262 n).toNat

end

end A090642.P17663170563330442493

namespace A090642

/-- `C((A144257(n+1)+A002262(n))², A002262(n))` -/
def P17663170563330442493.Spec : Prop :=
  ∀ n, (P17663170563330442493.a n : ℤ) = A090642 n

end A090642

/-!
# A090643: a(n) = (-1)^(n+1)*(3/4)*(9^n-1)*B(2*n) where B(k) denotes the k-th Bernoulli number.

The programs for A090643, there is no canonical definition to state claims against.
-/

/-! ## A090643.P15019285782294479028

`abs(A083007(2*n)/2)`
-/

namespace A090643.P15019285782294479028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A083007 (2 * n) : ℚ) / 2|

end

end A090643.P15019285782294479028

/-! ## A090643.P11351225576870265440

`record[abs(A083007(n))/A280193(n)]`
-/

namespace A090643.P11351225576870265440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A083007 n| : ℚ) / (A280193 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090643.P11351225576870265440

/-!
# A090645: a(n)=(-1)^(n+1)*2*(16^n-1)*B(2n) where B(k) denotes the k-th Bernoulli number.

The programs for A090645, there is no canonical definition to state claims against.
-/

/-! ## A090645.P17636293671638922384

`abs(A083008(2*n)-A243963(2*n))`
-/

namespace A090645.P17636293671638922384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083008 (2 * n) - A243963 (2 * n)|

end

end A090645.P17636293671638922384

/-!
# A090648: a(n)=2*(4^n-1)/denominator(B(2n)) where B(k) denotes the k-th Bernoulli number.

The programs for A090648, the canonical program `A090648.P4535664779753439945` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090648 has offset 0).

The definition of A090648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090648.P627044625253858525

`A024036(n)/A001897(n)`
-/

namespace A090648.P627044625253858525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024036 n : ℚ) / (A001897 n : ℚ)

end

end A090648.P627044625253858525

namespace A090648

/-- `A024036(n)/A001897(n)` -/
def P627044625253858525.Spec : Prop :=
  ∀ n, P627044625253858525.a n = (A090648 n : ℚ)

end A090648

/-! ## A090648.P4535664779753439945

`A002450(n)/A177735(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A090648

/-- `A002450(n)/A177735(n)` -/
def P4535664779753439945.Spec : Prop :=
  ∀ n, P4535664779753439945.a n = (A090648 n : ℚ)

end A090648

/-! ## A090648.P16560964933159525168

`A020988(n)/A277087(n)`
-/

namespace A090648.P16560964933159525168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020988 n : ℚ) / (A277087 n : ℚ)

end

end A090648.P16560964933159525168

namespace A090648

/-- `A020988(n)/A277087(n)` -/
def P16560964933159525168.Spec : Prop :=
  ∀ n, P16560964933159525168.a n = (A090648 n : ℚ)

end A090648

/-! ## A090648.P12376720839016767742

`A002446(n)/A002445(n)`
-/

namespace A090648.P12376720839016767742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002446 n : ℚ) / (A002445 n : ℚ)

end

end A090648.P12376720839016767742

namespace A090648

/-- `A002446(n)/A002445(n)` -/
def P12376720839016767742.Spec : Prop :=
  ∀ n, P12376720839016767742.a n = (A090648 n : ℚ)

end A090648

/-! ## A090648.P17153930188856108869

`A002446(n)/A140814(n)`
-/

namespace A090648.P17153930188856108869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002446 n : ℚ) / (A140814 n : ℚ)

end

end A090648.P17153930188856108869

namespace A090648

/-- `A002446(n)/A140814(n)` -/
def P17153930188856108869.Spec : Prop :=
  ∀ n, P17153930188856108869.a n = (A090648 n : ℚ)

end A090648

/-! ## A090648.P7276047740651320403

`A000918(2*n+1)/A027642(2*n)`
-/

namespace A090648.P7276047740651320403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000918 (2 * n + 1) : ℚ) / (A027642 (2 * n) : ℚ)

end

end A090648.P7276047740651320403

namespace A090648

/-- `A000918(2*n+1)/A027642(2*n)` -/
def P7276047740651320403.Spec : Prop :=
  ∀ n, P7276047740651320403.a n = (A090648 n : ℚ)

end A090648

/-!
# A090649: Numbers k such that 9^k + 2 is prime.

The programs for A090649, there is no canonical definition to state claims against.
-/

/-! ## A090649.P3365151126599774174

`record[A273943(A051783(n+1))]`
-/

namespace A090649.P3365151126599774174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A051783 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090649.P3365151126599774174

/-! ## A090649.P8829435160181964468

`record[A025480(A051783(n+2))]`
-/

namespace A090649.P8829435160181964468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A051783 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090649.P8829435160181964468

/-! ## A090649.P10896147515290703275

`record[A001057(A051783(n+2)-1)]`
-/

namespace A090649.P10896147515290703275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A051783 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090649.P10896147515290703275

/-! ## A090649.P17485237083251402435

`lt[A127796(n), 3]`
-/

namespace A090649.P17485237083251402435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127796 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090649.P17485237083251402435

/-! ## A090649.P10185367816436265404

`eq[2, A127796(A028310(n))]`
-/

namespace A090649.P10185367816436265404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127796 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090649.P10185367816436265404

/-!
# A090650: a(n) = n^(n+6).

The programs for A090650, there is no canonical definition to state claims against.
-/

/-! ## A090650.P9398810925228445853

`(n+1)^(n+7)`
-/

namespace A090650.P9398810925228445853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 7)

end

end A090650.P9398810925228445853

/-! ## A090650.P5114398191735187204

`(n+1)*A008791(n+1)`
-/

namespace A090650.P5114398191735187204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008791 (n + 1)

end

end A090650.P5114398191735187204

/-! ## A090650.P9327323650652377328

`(n+1)²*A008790(n+1)`
-/

namespace A090650.P9327323650652377328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A008790 (n + 1)

end

end A090650.P9327323650652377328

/-! ## A090650.P16726033277185631980

`A000169(n+1)*A001015(n+1)`
-/

namespace A090650.P16726033277185631980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) * A001015 (n + 1)

end

end A090650.P16726033277185631980

/-! ## A090650.P15222924322871723264

`A000583((n+1)²)*A000272(n+1)`
-/

namespace A090650.P15222924322871723264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 ((n + 1) ^ 2) * A000272 (n + 1)

end

end A090650.P15222924322871723264

/-! ## A090650.P6678858165740357465

`A000578((n+1)²)*A000312(n+1)`
-/

namespace A090650.P6678858165740357465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ((n + 1) ^ 2) * A000312 (n + 1)

end

end A090650.P6678858165740357465

/-! ## A090650.P10287833060391188301

`(n+1)²*A000312(n+1)*A000583(n+1)`
-/

namespace A090650.P10287833060391188301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000312 (n + 1) * A000583 (n + 1)

end

end A090650.P10287833060391188301

/-! ## A090650.P3686190520816441089

`A000272(n+1)*A000583(n+1)*A000583(n+1)`
-/

namespace A090650.P3686190520816441089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) * A000583 (n + 1) * A000583 (n + 1)

end

end A090650.P3686190520816441089

/-! ## A090650.P10373445841845737448

`A000312(n+1)*A000578(n+1)*A000578(n+1)`
-/

namespace A090650.P10373445841845737448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) * A000578 (n + 1) * A000578 (n + 1)

end

end A090650.P10373445841845737448

/-! ## A090650.P10841974546036353402

`A007778(n+1)/A000272(n+1)*A008789(n+1)`
-/

namespace A090650.P10841974546036353402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007778 (n + 1) : ℚ) / (A000272 (n + 1) : ℚ) * (A008789 (n + 1) : ℚ)

end

end A090650.P10841974546036353402

/-!
# A090651: Perpetual calendar sequence: There are 14 basic year calendars, 7 for normal years and 7 for leap years. This sequence identifies the calendars for years 1901 through 2099, when it reinitializes because 2100 is not a leap year.

The programs for A090651, there is no canonical definition to state claims against.
-/

/-! ## A090651.P17056119260715371054

`A127376(A116386(2*n+1)+n)`
-/

namespace A090651.P17056119260715371054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127376 (A116386 (2 * n + 1) + (n : ℤ)).toNat

end

end A090651.P17056119260715371054

/-! ## A090651.P4799973077717840216

`A127376(A112820(n+1)+1)`
-/

namespace A090651.P4799973077717840216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127376 (A112820 (n + 1) + 1).toNat

end

end A090651.P4799973077717840216

/-! ## A090651.P11094639300166285635

`A127376(A112820(n+2))`
-/

namespace A090651.P11094639300166285635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127376 (A112820 (n + 2)).toNat

end

end A090651.P11094639300166285635

/-!
# A090652: Numbers all of whose prime factors end in 7.

The programs for A090652, there is no canonical definition to state claims against.
-/

/-! ## A090652.P6615365164646594343

`record[A000265(A004616(n+4))]`
-/

namespace A090652.P6615365164646594343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A004616 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090652.P6615365164646594343

/-! ## A090652.P18436416061093569424

`filter[A004616(n+1), A355450(#)]`
-/

namespace A090652.P18436416061093569424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A090652.P18436416061093569424

/-! ## A090652.P16040584429440235886

`filter[A004616(n+2), A373156(#)]`
-/

namespace A090652.P16040584429440235886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A090652.P16040584429440235886

/-! ## A090652.P4918987378137271722

`filter[A004616(n+2), A374134(#)]`
-/

namespace A090652.P4918987378137271722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A090652.P4918987378137271722

/-! ## A090652.P16201753332475903454

`filter[A004616(n+2), A093719(#)]`
-/

namespace A090652.P16201753332475903454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A090652.P16201753332475903454

/-! ## A090652.P2682132261246021782

`filter[A004616(n+2), A162289(#)]`
-/

namespace A090652.P2682132261246021782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A090652.P2682132261246021782

/-! ## A090652.P8706706015119597418

`filter[A004616(n+2), A320106(#)]`
-/

namespace A090652.P8706706015119597418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A090652.P8706706015119597418

/-! ## A090652.P10692802396478895066

`filter[A004616(n+2), A354354(#)]`
-/

namespace A090652.P10692802396478895066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A090652.P10692802396478895066

/-! ## A090652.P8907744635328178308

`filter[A004616(n+2), A356172(#)]`
-/

namespace A090652.P8907744635328178308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A090652.P8907744635328178308

/-! ## A090652.P12567136021260244964

`∩[A004616(n+1), A070884(n)]`
-/

namespace A090652.P12567136021260244964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090652.P12567136021260244964

/-! ## A090652.P15022734191154519705

`∩[A004616(n+1), A286265(n+1)]`
-/

namespace A090652.P15022734191154519705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090652.P15022734191154519705

/-! ## A090652.P7485481691211034112

`∩[A004616(n+1), A106571(n+1)]`
-/

namespace A090652.P7485481691211034112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090652.P7485481691211034112

/-! ## A090652.P14123141285733970380

`∩[A004616(n+1), A256387(n+1)]`
-/

namespace A090652.P14123141285733970380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090652.P14123141285733970380

/-! ## A090652.P6261446902968206217

`∩[A004616(n+1), A020742(n)]`
-/

namespace A090652.P6261446902968206217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090652.P6261446902968206217

/-! ## A090652.P15485257826174986579

`∩[A004616(n+1), A062545(n)]`
-/

namespace A090652.P15485257826174986579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090652.P15485257826174986579

/-! ## A090652.P18125889254728491363

`∩[A004616(n+1), A005818(n+1)]`
-/

namespace A090652.P18125889254728491363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090652.P18125889254728491363

/-! ## A090652.P3253305355433053358

`∩[A004616(n+1), A020735(n+1)]`
-/

namespace A090652.P3253305355433053358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090652.P3253305355433053358

/-! ## A090652.P2920195372418126470

`∩[A004616(n+1), A144396(n+1)]`
-/

namespace A090652.P2920195372418126470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090652.P2920195372418126470

/-! ## A090652.P9544306221291187689

`filter[A004616(n+1), A266070(#)]`
-/

namespace A090652.P9544306221291187689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A090652.P9544306221291187689

/-! ## A090652.P8345854748598622066

`filter[A004616(n+2), A000035(#)]`
-/

namespace A090652.P8345854748598622066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A090652.P8345854748598622066

/-!
# A090653: Number of bimagic series for cubes of order n.

The programs for A090653, there is no canonical definition to state claims against.
-/

/-! ## A090653.P10576033449937685455

`A076876(a(n-1))` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A090653.P10576033449937685455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  A076876 (a (n - 1)).toNat

end

end A090653.P10576033449937685455

/-!
# A090654: Decimal expansion of 4 + 2*sqrt(6).

The programs for A090654, there is no canonical definition to state claims against.
-/

/-! ## A090654.P13135419429494496176

`A010480(C(2, n+2)+n)`
-/

namespace A090654.P13135419429494496176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010480 (Nat.choose 2 (n + 2) + n + 1)

end

end A090654.P13135419429494496176

/-! ## A090654.P13706671310778137612

`A010480(A028310(n))`
-/

namespace A090654.P13706671310778137612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010480 ((A028310 n).toNat + 1)

end

end A090654.P13706671310778137612

/-! ## A090654.P17626733131258048314

`A010480(A000007(n)+n)`
-/

namespace A090654.P17626733131258048314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010480 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A090654.P17626733131258048314

/-! ## A090654.P9602447595728541913

`A010480(or(n, A000007(n)))`
-/

namespace A090654.P9602447595728541913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010480 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A090654.P9602447595728541913

/-! ## A090654.P15030182660598177591

`4/A040002(n)*A010480(n)`
-/

namespace A090654.P15030182660598177591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A040002 n : ℚ) * (A010480 (n + 1) : ℚ)

end

end A090654.P15030182660598177591

/-! ## A090654.P14353362769964511299

`A010480(n+2-A040001(2*n))`
-/

namespace A090654.P14353362769964511299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010480 (((n + 2 : ℤ) - A040001 (2 * n)).toNat + 1)

end

end A090654.P14353362769964511299

/-! ## A090654.P1425599124292721964

`A010689(n+1)+A010480(n)-A040019(n)`
-/

namespace A090654.P1425599124292721964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 (n + 1) + (A010480 (n + 1) - A040019 n)

end

end A090654.P1425599124292721964

/-! ## A090654.P15969628575798431091

`A010480(n+2-A106469(2*n))`
-/

namespace A090654.P15969628575798431091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010480 (((n + 2 : ℤ) - A106469 (2 * n)).toNat + 1)

end

end A090654.P15969628575798431091

/-! ## A090654.P9597939426506382106

`A010480(n+2-A382713(2*n))`
-/

namespace A090654.P9597939426506382106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010480 (((n + 2 : ℤ) - A382713 (2 * n)).toNat + 1)

end

end A090654.P9597939426506382106

/-!
# A090657: Triangle read by rows: T(n,k) = number of functions from [1,2,...,n] to [1,2,...,n] such that the image contains exactly k elements (0<=k<=n).

The programs for A090657, there is no canonical definition to state claims against.
-/

/-! ## A090657.P4508542495005101857

`A008279(n)*A048993(n)`
-/

namespace A090657.P4508542495005101857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A048993 n

end

end A090657.P4508542495005101857

/-! ## A090657.P1109359914296039666

`A007318(n)*A131689(n)`
-/

namespace A090657.P1109359914296039666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A131689 n

end

end A090657.P1109359914296039666

/-! ## A090657.P1747367166019100085

`A091918(n)*A131689(n)`
-/

namespace A090657.P1747367166019100085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A131689 n

end

end A090657.P1747367166019100085

/-! ## A090657.P16287058178891887722

`A131689(n)*A132749(n)`
-/

namespace A090657.P16287058178891887722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A132749 n

end

end A090657.P16287058178891887722

/-! ## A090657.P13393686105796030280

`A131689(n)*A135227(n)`
-/

namespace A090657.P13393686105796030280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A135227 n

end

end A090657.P13393686105796030280

/-! ## A090657.P7834061686217911255

`A134399(n)*A142071(n)`
-/

namespace A090657.P7834061686217911255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 n * A142071 n

end

end A090657.P7834061686217911255

/-! ## A090657.P2146440232480369306

`A131689(n)*A183154(n)`
-/

namespace A090657.P2146440232480369306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A183154 n

end

end A090657.P2146440232480369306

/-! ## A090657.P17177098933855077986

`A090683(n)*A233543(n)`
-/

namespace A090657.P17177098933855077986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090683 n * A233543 n

end

end A090657.P17177098933855077986

/-! ## A090657.P5982618561077838649

`A131689(n)*A206735(n)`
-/

namespace A090657.P5982618561077838649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A206735 n

end

end A090657.P5982618561077838649

/-! ## A090657.P766422568973110798

`A091917(n)*A278075(n)`
-/

namespace A090657.P766422568973110798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 n * A278075 n

end

end A090657.P766422568973110798

/-! ## A090657.P5335600623943711859

`A130595(n)*A278075(n)`
-/

namespace A090657.P5335600623943711859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A278075 n

end

end A090657.P5335600623943711859

/-! ## A090657.P13903816318807330804

`abs(A007318(n)*A278075(n))`
-/

namespace A090657.P13903816318807330804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007318 n * A278075 n|

end

end A090657.P13903816318807330804

/-! ## A090657.P13889082842735133740

`A008279(n)*A106800(A061579(n))`
-/

namespace A090657.P13889082842735133740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A106800 (A061579 n).toNat

end

end A090657.P13889082842735133740

/-! ## A090657.P1062599751146105948

`(A097805(n+1)+A097805(n))*A131689(n)`
-/

namespace A090657.P1062599751146105948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + A097805 n) * A131689 n

end

end A090657.P1062599751146105948

/-!
# A090658: Numbers n such that n-1 is a prime of the form 4k+3.

The programs for A090658, the canonical program `A090658.P13517223795634800117` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090658 has offset 1).

The definition of A090658 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090658.P13517223795634800117

`A087915(n+1)+A089257(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A090658

/-- `A087915(n+1)+A089257(n+1)` -/
def P13517223795634800117.Spec : Prop :=
  ∀ n, P13517223795634800117.a n = A090658 (n + 1)

theorem P13517223795634800117.correct : P13517223795634800117.Spec := by
  intro n
  simp only [A090658, Nat.add_sub_cancel]

end A090658

/-! ## A090658.P12441323335625039484

`A089193(n+1)+A089257(n+1)-5`
-/

namespace A090658.P12441323335625039484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1) + A089257 (n + 1) - 5

end

end A090658.P12441323335625039484

namespace A090658

/-- `A089193(n+1)+A089257(n+1)-5` -/
def P12441323335625039484.Spec : Prop :=
  ∀ n, P12441323335625039484.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P7994350894207589356

`p?[4*n-1]+1`
-/

namespace A090658.P7994350894207589356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A090658.P7994350894207589356

namespace A090658

/-- `p?[4*n-1]+1` -/
def P7994350894207589356.Spec : Prop :=
  ∀ n, P7994350894207589356.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P13227803634781209435

`∑{d}[p?[4*n-1], #]`
-/

namespace A090658.P13227803634781209435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A090658.P13227803634781209435

namespace A090658

/-- `∑{d}[p?[4*n-1], #]` -/
def P13227803634781209435.Spec : Prop :=
  ∀ n, (P13227803634781209435.a n : ℤ) = A090658 (n + 1)

end A090658

/-! ## A090658.P16223358312462829660

`A002145(n+1)+1`
-/

namespace A090658.P16223358312462829660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + 1

end

end A090658.P16223358312462829660

namespace A090658

/-- `A002145(n+1)+1` -/
def P16223358312462829660.Spec : Prop :=
  ∀ n, P16223358312462829660.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P11147207735984460513

`A089217(n+1)-1`
-/

namespace A090658.P11147207735984460513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089217 (n + 1) - 1

end

end A090658.P11147207735984460513

namespace A090658

/-- `A089217(n+1)-1` -/
def P11147207735984460513.Spec : Prop :=
  ∀ n, P11147207735984460513.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P797177087989222336

`4*A005099(n+1)`
-/

namespace A090658.P797177087989222336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005099 (n + 1)

end

end A090658.P797177087989222336

namespace A090658

/-- `4*A005099(n+1)` -/
def P797177087989222336.Spec : Prop :=
  ∀ n, P797177087989222336.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P13430937888183585381

`A339900(Δ[n²])+1`
-/

namespace A090658.P13430937888183585381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A090658.P13430937888183585381

namespace A090658

/-- `A339900(Δ[n²])+1` -/
def P13430937888183585381.Spec : Prop :=
  ∀ n, P13430937888183585381.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P6243358621841405280

`sqrt(A087691(n+1))+1`
-/

namespace A090658.P6243358621841405280
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087691 (n + 1) : ℝ) + 1

end

end A090658.P6243358621841405280

namespace A090658

/-- `sqrt(A087691(n+1))+1` -/
def P6243358621841405280.Spec : Prop :=
  ∀ n, P6243358621841405280.a n = (A090658 (n + 1) : ℝ)

end A090658

/-! ## A090658.P4246494854014497846

`2*(A104635(n+1)+1)`
-/

namespace A090658.P4246494854014497846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104635 (n + 1) + 1)

end

end A090658.P4246494854014497846

namespace A090658

/-- `2*(A104635(n+1)+1)` -/
def P4246494854014497846.Spec : Prop :=
  ∀ n, P4246494854014497846.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P14443555515187320411

`2*(A087915(n+1)+2)`
-/

namespace A090658.P14443555515187320411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A087915 (n + 1) + 2)

end

end A090658.P14443555515187320411

namespace A090658

/-- `2*(A087915(n+1)+2)` -/
def P14443555515187320411.Spec : Prop :=
  ∀ n, P14443555515187320411.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P6795863420232389598

`2*(A090670(n+1)-1)`
-/

namespace A090658.P6795863420232389598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A090670 (n + 1) - 1)

end

end A090658.P6795863420232389598

namespace A090658

/-- `2*(A090670(n+1)-1)` -/
def P6795863420232389598.Spec : Prop :=
  ∀ n, P6795863420232389598.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P16944615698733908868

`2*(A089257(n+1)-2)`
-/

namespace A090658.P16944615698733908868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089257 (n + 1) - 2)

end

end A090658.P16944615698733908868

namespace A090658

/-- `2*(A089257(n+1)-2)` -/
def P16944615698733908868.Spec : Prop :=
  ∀ n, P16944615698733908868.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P12949398943768303078

`4*(A095278(n+1)+1)`
-/

namespace A090658.P12949398943768303078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A095278 (n + 1) + 1)

end

end A090658.P12949398943768303078

namespace A090658

/-- `4*(A095278(n+1)+1)` -/
def P12949398943768303078.Spec : Prop :=
  ∀ n, P12949398943768303078.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P4708283460022344534

`2*(A089193(n+1)-3)`
-/

namespace A090658.P4708283460022344534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089193 (n + 1) - 3)

end

end A090658.P4708283460022344534

namespace A090658

/-- `2*(A089193(n+1)-3)` -/
def P4708283460022344534.Spec : Prop :=
  ∀ n, P4708283460022344534.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P10950671013497385763

`4*(A089986(n+1)+2)`
-/

namespace A090658.P10950671013497385763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A089986 (n + 1) + 2)

end

end A090658.P10950671013497385763

namespace A090658

/-- `4*(A089986(n+1)+2)` -/
def P10950671013497385763.Spec : Prop :=
  ∀ n, P10950671013497385763.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P616242763683985855

`4*(A156287(n+1)-1)`
-/

namespace A090658.P616242763683985855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A156287 (n + 1) - 1)

end

end A090658.P616242763683985855

namespace A090658

/-- `4*(A156287(n+1)-1)` -/
def P616242763683985855.Spec : Prop :=
  ∀ n, P616242763683985855.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P2668289529773707106

`A082075(n)+a(n-1)` with `a(0)=4`
-/

namespace A090658.P2668289529773707106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A082075 n + a (n - 1)

end

end A090658.P2668289529773707106

namespace A090658

/-- `A082075(n)+a(n-1)` -/
def P2668289529773707106.Spec : Prop :=
  ∀ n, P2668289529773707106.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P2591955241507487859

`A104635(n+1)+A090670(n+1)`
-/

namespace A090658.P2591955241507487859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) + A090670 (n + 1)

end

end A090658.P2591955241507487859

namespace A090658

/-- `A104635(n+1)+A090670(n+1)` -/
def P2591955241507487859.Spec : Prop :=
  ∀ n, P2591955241507487859.a n = A090658 (n + 1)

end A090658

/-! ## A090658.P4226224670812271788

`A190105(n+1)+A156287(n+1)`
-/

namespace A090658.P4226224670812271788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1) + A156287 (n + 1)

end

end A090658.P4226224670812271788

namespace A090658

/-- `A190105(n+1)+A156287(n+1)` -/
def P4226224670812271788.Spec : Prop :=
  ∀ n, P4226224670812271788.a n = A090658 (n + 1)

end A090658

/-!
# A090659: Odd composites with increasing proportion of nontrivial non-witnesses of compositeness by the Miller-Rabin primality test.

The programs for A090659, there is no canonical definition to state claims against.
-/

/-! ## A090659.P6102068438022709403

`filter[A141768(n+1), A379117(#)]`
-/

namespace A090659.P6102068438022709403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379117 (f1 j).toNat = 1) n)

end

end A090659.P6102068438022709403

/-!
# A090660: Numbers n such that n*nextprime((n-1)!)-nextprime(n!) < 0.

The programs for A090660, there is no canonical definition to state claims against.
-/

/-! ## A090660.P6500636808901582915

`A002981(n+3)+1`
-/

namespace A090660.P6500636808901582915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002981 (n + 3) + 1

end

end A090660.P6500636808901582915

/-! ## A090660.P1670505038656576378

`A020725(A002981(n+3))`
-/

namespace A090660.P1670505038656576378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002981 (n + 3)).toNat

end

end A090660.P1670505038656576378

/-! ## A090660.P9865105341028311498

`lt[A033932(n), n]+1`
-/

namespace A090660.P9865105341028311498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A090660.P9865105341028311498

/-! ## A090660.P16474598995344085615

`record[n+4-A033932(n+2)]`
-/

namespace A090660.P16474598995344085615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) - A033932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090660.P16474598995344085615

/-! ## A090660.P13057788129709062525

`record[(n+3)/A053714(n+2)]`
-/

namespace A090660.P13057788129709062525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A053714 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090660.P13057788129709062525

/-!
# A090661: Numbers n such that prevprime(n!) - n*prevprime((n-1)!) < 0.

The programs for A090661, there is no canonical definition to state claims against.
-/

/-! ## A090661.P7894169283788189010

`A002982(comp[A014138(n)])+1`
-/

namespace A090661.P7894169283788189010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A090661.P7894169283788189010

/-! ## A090661.P1570981699889127634

`A002982(comp[A049610(n)])+1`
-/

namespace A090661.P1570981699889127634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A090661.P1570981699889127634

/-! ## A090661.P16829350538473281649

`A002982(comp[A327030(n)])+1`
-/

namespace A090661.P16829350538473281649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327030 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A090661.P16829350538473281649

/-! ## A090661.P1765374948259373496

`A002982(comp[A336102(n)])+1`
-/

namespace A090661.P1765374948259373496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A090661.P1765374948259373496

/-! ## A090661.P1259735262491120382

`A002982(comp[A363725(n)])+1`
-/

namespace A090661.P1259735262491120382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363725 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A090661.P1259735262491120382

/-!
# A090663: Second term in continued fraction for the n-th root of n.

The programs for A090663, there is no canonical definition to state claims against.
-/

/-! ## A090663.P14185812308954740698

`floor((n+2)/log(comp[∑[n]]))`
-/

namespace A090663.P14185812308954740698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.log (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌋

end

end A090663.P14185812308954740698

/-! ## A090663.P3947257755224916185

`round(log(cosh(round((n+2)/log(n+2)))))`
-/

namespace A090663.P3947257755224916185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh (SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ)) : ℝ)))

end

end A090663.P3947257755224916185

/-! ## A090663.P14254739118296127264

`xor(-round((n+2)/log(n+2)), -1)`
-/

namespace A090663.P14254739118296127264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ))) (-1)

end

end A090663.P14254739118296127264

/-! ## A090663.P11509290068854231996

`and(round((n+2)/log(n+2))-1, -1)`
-/

namespace A090663.P11509290068854231996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ)) - 1) (-1)

end

end A090663.P11509290068854231996

/-! ## A090663.P12248552726326423822

`round((n+2)/log(n+2))-(n%2)!`
-/

namespace A090663.P12248552726326423822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ)) - (Nat.factorial (n % 2) : ℤ)

end

end A090663.P12248552726326423822

/-! ## A090663.P10946017779766099726

`round((n+2)/log(n+2))-char[xor(1, n)]`
-/

namespace A090663.P10946017779766099726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A090663.P10946017779766099726

/-! ## A090663.P5626715024715732906

`round((n+2)/log(n+2))-floor(atan(n))!`
-/

namespace A090663.P5626715024715732906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ)) - (Nat.factorial ⌊Real.arctan (n : ℝ)⌋.toNat : ℤ)

end

end A090663.P5626715024715732906

/-! ## A090663.P14376917947862316931

`round((n+2)/log(n+2))-floor(acot(n))!`
-/

namespace A090663.P14376917947862316931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ)) - (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ)

end

end A090663.P14376917947862316931

/-! ## A090663.P2065563284376356477

`round((n+2)/log(n+2))-gcd(n, xor(1, n))`
-/

namespace A090663.P2065563284376356477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ)) - (Nat.gcd n (Nat.xor 1 n) : ℤ)

end

end A090663.P2065563284376356477

/-! ## A090663.P12926041502898733607

`round((n+2)/log(n+2))-dr((-1)^n)`
-/

namespace A090663.P12926041502898733607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ)) - (SequenceMachineLib.digitalRoot ((-1) ^ n) : ℤ)

end

end A090663.P12926041502898733607

/-!
# A090665: Triangle read by rows: T(n,k) = number of preferential arrangements of n things where the first object has rank k.

The programs for A090665, there is no canonical definition to state claims against.
-/

/-! ## A090665.P10685093661527582861

`A054255(∑[char[∑[n]]]²-n)`
-/

namespace A090665.P10685093661527582861
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054255 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A090665.P10685093661527582861

/-! ## A090665.P7878280933764122619

`gcd(A000038(n), A054255(A038722(n+1)))`
-/

namespace A090665.P7878280933764122619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A054255 (A038722 (n + 1)).toNat)

end

end A090665.P7878280933764122619

/-! ## A090665.P10927708699418445073

`or(A000007(n), A054255(A038722(n+1)))`
-/

namespace A090665.P10927708699418445073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A054255 (A038722 (n + 1)).toNat)

end

end A090665.P10927708699418445073

/-! ## A090665.P17391057020047695635

`char[A193231(n)]*A054255(A038722(n+1))`
-/

namespace A090665.P17391057020047695635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054255 (A038722 (n + 1)).toNat

end

end A090665.P17391057020047695635

/-! ## A090665.P15696169774355856121

`A098108(2*n)+A054255(A038722(n+1))`
-/

namespace A090665.P15696169774355856121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (2 * n) + A054255 (A038722 (n + 1)).toNat

end

end A090665.P15696169774355856121

/-! ## A090665.P2493368868164953155

`A054255(A038722(n+1))+A035363(or(5, n))`
-/

namespace A090665.P2493368868164953155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054255 (A038722 (n + 1)).toNat + A035363 (Nat.lor 5 n)

end

end A090665.P2493368868164953155

/-! ## A090665.P4386818170498406060

`A054255(A038722(n+1))+A035363(2*n+1)`
-/

namespace A090665.P4386818170498406060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054255 (A038722 (n + 1)).toNat + A035363 (2 * n + 1)

end

end A090665.P4386818170498406060

/-! ## A090665.P13119139970753975860

`A088917(or(1, n+1))+A054255(A038722(n+1))`
-/

namespace A090665.P13119139970753975860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (Nat.lor 1 (n + 1)) + A054255 (A038722 (n + 1)).toNat

end

end A090665.P13119139970753975860

/-! ## A090665.P16130666546362046769

`A054255(A038722(n+1))+A008683(A013929(n+1))`
-/

namespace A090665.P16130666546362046769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054255 (A038722 (n + 1)).toNat + A008683 (A013929 (n + 1)).toNat

end

end A090665.P16130666546362046769

/-! ## A090665.P1731339324982302145

`A088917(A000040(n+2))+A054255(A038722(n+1))`
-/

namespace A090665.P1731339324982302145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (A000040 (n + 2)).toNat + A054255 (A038722 (n + 1)).toNat

end

end A090665.P1731339324982302145

/-! ## A090665.P13047564960762801159

`A014963(A315582(n))*A054255(A038722(n+1))`
-/

namespace A090665.P13047564960762801159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A315582 n).toNat * A054255 (A038722 (n + 1)).toNat

end

end A090665.P13047564960762801159

/-! ## A090665.P1229087124481984278

`A054255(A038722(n+1))%A240047(n+1)`
-/

namespace A090665.P1229087124481984278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054255 (A038722 (n + 1)).toNat) (A240047 (n + 1))

end

end A090665.P1229087124481984278

/-! ## A090665.P14314878042603460158

`A054255(A061579(n)+1)%A000051(n)`
-/

namespace A090665.P14314878042603460158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054255 (A061579 n + 1).toNat) (A000051 n)

end

end A090665.P14314878042603460158

/-! ## A090665.P11838515363178353494

`A054255(A002024(n+1)²-n)%A025242(n+4)`
-/

namespace A090665.P11838515363178353494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054255 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat) (A025242 (n + 4))

end

end A090665.P11838515363178353494

/-! ## A090665.P16414348826045940447

`A014963(A000217(n+6))*A054255(A038722(n+1))`
-/

namespace A090665.P16414348826045940447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A054255 (A038722 (n + 1)).toNat

end

end A090665.P16414348826045940447

/-!
# A090666: For each possible representation of n as n = 2*nb + 3*nu + K with nb, nu, K nonnegative integers, add numbers K, K+1, ..., 2*K except for 2*K-1 into a multiset. a(n) is the size of the resulting multiset minus the number of distinct numbers in it.

The programs for A090666, there is no canonical definition to state claims against.
-/

/-! ## A090666.P308783451830600194

`A347697(A194589(n))`
-/

namespace A090666.P308783451830600194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A194589 n).toNat

end

end A090666.P308783451830600194

/-! ## A090666.P8288097413010130239

`A002264(A241564(n+1))%A300419(2*n+3)`
-/

namespace A090666.P8288097413010130239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002264 (A241564 (n + 1)).toNat) (A300419 (2 * n + 3))

end

end A090666.P8288097413010130239

/-! ## A090666.P2156803000392084588

`A276611(C(A238395(n), 3))`
-/

namespace A090666.P2156803000392084588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (Nat.choose (A238395 n).toNat 3)

end

end A090666.P2156803000392084588

/-! ## A090666.P16165731453406144020

`A320278(A056005(n))-A011667(n)`
-/

namespace A090666.P16165731453406144020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A056005 n).toNat - A011667 n

end

end A090666.P16165731453406144020

/-! ## A090666.P16262140681688688269

`A344962(A060961(n))-A344180(n)`
-/

namespace A090666.P16262140681688688269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344962 (A060961 n).toNat - A344180 n

end

end A090666.P16262140681688688269

/-!
# A090667: Number of compositions of 3n with each part less than or equal to n.

The programs for A090667, there is no canonical definition to state claims against.
-/

/-! ## A090667.P3500704721343193621

`A048887(A139273(n)+1)`
-/

namespace A090667.P3500704721343193621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A139273 n + 1).toNat

end

end A090667.P3500704721343193621

/-! ## A090667.P2678823123426988575

`A048887(A085250(n)+1+n)`
-/

namespace A090667.P2678823123426988575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A085250 n + 1 + (n : ℤ)).toNat

end

end A090667.P2678823123426988575

/-! ## A090667.P8481659347905268499

`A048887(A081585(n)-A008585(n))`
-/

namespace A090667.P8481659347905268499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A081585 n - A008585 n).toNat

end

end A090667.P8481659347905268499

/-! ## A090667.P11037551470018212647

`A048887(A195018(n)-A056220(n))`
-/

namespace A090667.P11037551470018212647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A195018 n - A056220 n).toNat

end

end A090667.P11037551470018212647

/-! ## A090667.P10946063300398236584

`A048887(A081585(n)+n²-A028552(n))`
-/

namespace A090667.P10946063300398236584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A081585 n + (n ^ 2 : ℤ) - A028552 n).toNat

end

end A090667.P10946063300398236584

/-!
# A090668: a(n) = floor( prime(n)*(n-pi(n))/(pi(n)+1) ) where pi=A000720.

The programs for A090668, there is no canonical definition to state claims against.
-/

/-! ## A090668.P17191874946393580993

`A265247(A309586(n+1))+A000045(n)`
-/

namespace A090668.P17191874946393580993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265247 (A309586 (n + 1)).toNat + A000045 n

end

end A090668.P17191874946393580993

/-!
# A090669: Numbers k such that 7^k - 2 is a prime.

The programs for A090669, there is no canonical definition to state claims against.
-/

/-! ## A090669.P17667150064020675065

`eq[2, A013608(n+1)]+1`
-/

namespace A090669.P17667150064020675065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090669.P17667150064020675065

/-! ## A090669.P9860334431520941429

`A000027(lt[A013608(n+1), 3]+1)`
-/

namespace A090669.P9860334431520941429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013608 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A090669.P9860334431520941429

/-! ## A090669.P11397277786783478220

`record[A004277(n+1)/A013608(n+1)]`
-/

namespace A090669.P11397277786783478220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) : ℚ) / (A013608 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090669.P11397277786783478220

/-!
# A090670: Odd numbers k such that 2*k-3 is a prime of the form 4*j+3.

The programs for A090670, the canonical program `A090670.P8610966387605569098` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090670 has offset 1).

The definition of A090670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090670.P8610966387605569098

`A087915(n+1)+3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090670

/-- `A087915(n+1)+3` -/
def P8610966387605569098.Spec : Prop :=
  ∀ n, P8610966387605569098.a n = A090670 (n + 1)

theorem P8610966387605569098.correct : P8610966387605569098.Spec := by
  intro n
  simp only [A090670, Nat.add_sub_cancel]

end A090670

/-! ## A090670.P13348491413605509685

`(p?[4*n-1]+3)/2`
-/

namespace A090670.P13348491413605509685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℚ) / 2

end

end A090670.P13348491413605509685

namespace A090670

/-- `(p?[4*n-1]+3)/2` -/
def P13348491413605509685.Spec : Prop :=
  ∀ n, P13348491413605509685.a n = (A090670 (n + 1) : ℚ)

end A090670

/-! ## A090670.P5989853620139479194

`(p?[or(3, 3*(n+1))]+1)/2+1`
-/

namespace A090670.P5989853620139479194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (3 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 2 + 1

end

end A090670.P5989853620139479194

namespace A090670

/-- `(p?[or(3, 3*(n+1))]+1)/2+1` -/
def P5989853620139479194.Spec : Prop :=
  ∀ n, P5989853620139479194.a n = (A090670 (n + 1) : ℚ)

end A090670

/-! ## A090670.P17299276192183980421

`A089257(n+1)-1`
-/

namespace A090670.P17299276192183980421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089257 (n + 1) - 1

end

end A090670.P17299276192183980421

namespace A090670

/-- `A089257(n+1)-1` -/
def P17299276192183980421.Spec : Prop :=
  ∀ n, P17299276192183980421.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P15599137367727559480

`A104635(n+1)+2`
-/

namespace A090670.P15599137367727559480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) + 2

end

end A090670.P15599137367727559480

namespace A090670

/-- `A104635(n+1)+2` -/
def P15599137367727559480.Spec : Prop :=
  ∀ n, P15599137367727559480.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P17222073113306224694

`A089193(n+1)-2`
-/

namespace A090670.P17222073113306224694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1) - 2

end

end A090670.P17222073113306224694

namespace A090670

/-- `A089193(n+1)-2` -/
def P17222073113306224694.Spec : Prop :=
  ∀ n, P17222073113306224694.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P16694376927481330091

`2*A005099(n+1)+1`
-/

namespace A090670.P16694376927481330091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005099 (n + 1) + 1

end

end A090670.P16694376927481330091

namespace A090670

/-- `2*A005099(n+1)+1` -/
def P16694376927481330091.Spec : Prop :=
  ∀ n, P16694376927481330091.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P94134484122950112

`(A089217(n+1)+1)/2`
-/

namespace A090670.P94134484122950112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089217 (n + 1) + 1 : ℚ) / 2

end

end A090670.P94134484122950112

namespace A090670

/-- `(A089217(n+1)+1)/2` -/
def P94134484122950112.Spec : Prop :=
  ∀ n, P94134484122950112.a n = (A090670 (n + 1) : ℚ)

end A090670

/-! ## A090670.P14906617619643344368

`A090658(n+1)/2+1`
-/

namespace A090670.P14906617619643344368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090658 (n + 1) : ℚ) / 2 + 1

end

end A090670.P14906617619643344368

namespace A090670

/-- `A090658(n+1)/2+1` -/
def P14906617619643344368.Spec : Prop :=
  ∀ n, P14906617619643344368.a n = (A090670 (n + 1) : ℚ)

end A090670

/-! ## A090670.P335353993661303566

`2*A156287(n+1)-1`
-/

namespace A090670.P335353993661303566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156287 (n + 1) - 1

end

end A090670.P335353993661303566

namespace A090670

/-- `2*A156287(n+1)-1` -/
def P335353993661303566.Spec : Prop :=
  ∀ n, P335353993661303566.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P16635842195504899222

`2*A095278(n+1)+3`
-/

namespace A090670.P16635842195504899222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095278 (n + 1) + 3

end

end A090670.P16635842195504899222

namespace A090670

/-- `2*A095278(n+1)+3` -/
def P16635842195504899222.Spec : Prop :=
  ∀ n, P16635842195504899222.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P7041612542291073058

`(A002145(n+1)+3)/2`
-/

namespace A090670.P7041612542291073058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) + 3 : ℚ) / 2

end

end A090670.P7041612542291073058

namespace A090670

/-- `(A002145(n+1)+3)/2` -/
def P7041612542291073058.Spec : Prop :=
  ∀ n, P7041612542291073058.a n = (A090670 (n + 1) : ℚ)

end A090670

/-! ## A090670.P3319629229274119793

`2*A089986(n+1)+5`
-/

namespace A090670.P3319629229274119793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089986 (n + 1) + 5

end

end A090670.P3319629229274119793

namespace A090670

/-- `2*A089986(n+1)+5` -/
def P3319629229274119793.Spec : Prop :=
  ∀ n, P3319629229274119793.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P11992522437830264547

`A156287(n+1)+A005099(n+1)`
-/

namespace A090670.P11992522437830264547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) + A005099 (n + 1)

end

end A090670.P11992522437830264547

namespace A090670

/-- `A156287(n+1)+A005099(n+1)` -/
def P11992522437830264547.Spec : Prop :=
  ∀ n, P11992522437830264547.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P13904361321234262747

`A190105(n+1)-A089986(n+1)`
-/

namespace A090670.P13904361321234262747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1) - A089986 (n + 1)

end

end A090670.P13904361321234262747

namespace A090670

/-- `A190105(n+1)-A089986(n+1)` -/
def P13904361321234262747.Spec : Prop :=
  ∀ n, P13904361321234262747.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P7097734795516248300

`A002145(n+1)-(A089986(n+1)+A005099(n+1))`
-/

namespace A090670.P7097734795516248300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - (A089986 (n + 1) + A005099 (n + 1))

end

end A090670.P7097734795516248300

namespace A090670

/-- `A002145(n+1)-(A089986(n+1)+A005099(n+1))` -/
def P7097734795516248300.Spec : Prop :=
  ∀ n, P7097734795516248300.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P4193752461483628181

`A002145(n+1)-(A095278(n+1)+A095278(n+1))`
-/

namespace A090670.P4193752461483628181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - (A095278 (n + 1) + A095278 (n + 1))

end

end A090670.P4193752461483628181

namespace A090670

/-- `A002145(n+1)-(A095278(n+1)+A095278(n+1))` -/
def P4193752461483628181.Spec : Prop :=
  ∀ n, P4193752461483628181.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P3315127868862900572

`A002145(n+1)+A156287(n+1)-A190105(n+1)`
-/

namespace A090670.P3315127868862900572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + (A156287 (n + 1) - A190105 (n + 1))

end

end A090670.P3315127868862900572

namespace A090670

/-- `A002145(n+1)+A156287(n+1)-A190105(n+1)` -/
def P3315127868862900572.Spec : Prop :=
  ∀ n, P3315127868862900572.a n = A090670 (n + 1)

end A090670

/-! ## A090670.P4339381968928960822

`A281664(n+2)/2+2`
-/

namespace A090670.P4339381968928960822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281664 (n + 2) : ℚ) / 2 + 2

end

end A090670.P4339381968928960822

namespace A090670

/-- `A281664(n+2)/2+2` -/
def P4339381968928960822.Spec : Prop :=
  ∀ n, P4339381968928960822.a n = (A090670 (n + 1) : ℚ)

end A090670

/-! ## A090670.P18318399634069721972

`(A045326(n+2)+3)/2`
-/

namespace A090670.P18318399634069721972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045326 (n + 2) + 3 : ℚ) / 2

end

end A090670.P18318399634069721972

namespace A090670

/-- `(A045326(n+2)+3)/2` -/
def P18318399634069721972.Spec : Prop :=
  ∀ n, P18318399634069721972.a n = (A090670 (n + 1) : ℚ)

end A090670

/-!
# A090671: Decreases from 10^k - 1 down to 1, restarting at 10^(k+1) - 1, for k >= 1.

The programs for A090671, there is no canonical definition to state claims against.
-/

/-! ## A090671.P6425493469996109221

`A171397(∏{digits}[n+1, floor(#/10)+10]-(n+1))+floor(n/10)`
-/

namespace A090671.P6425493469996109221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ)).toNat + ⌊(n : ℚ) / 10⌋

end

end A090671.P6425493469996109221

/-!
# A090672: a(n) = (n^2-1)*n!/3.

The programs for A090672, there is no canonical definition to state claims against.
-/

/-! ## A090672.P2058038493349602712

`2*A005990(n+1)`
-/

namespace A090672.P2058038493349602712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005990 (n + 1)

end

end A090672.P2058038493349602712

/-! ## A090672.P15939966758906526807

`A052571(n+2)/3`
-/

namespace A090672.P15939966758906526807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052571 (n + 2) : ℚ) / 3

end

end A090672.P15939966758906526807

/-! ## A090672.P17827391019942704526

`n/3*(n+2)!`
-/

namespace A090672.P17827391019942704526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (Nat.factorial (n + 2) : ℚ)

end

end A090672.P17827391019942704526

/-! ## A090672.P8634442431847025097

`n/3*∏[n+2]`
-/

namespace A090672.P8634442431847025097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A090672.P8634442431847025097

/-! ## A090672.P11307631792276320762

`4*n!*∑[∑[n]]/2`
-/

namespace A090672.P11307631792276320762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℕ) : ℚ) / 2

end

end A090672.P11307631792276320762

/-! ## A090672.P14171682846137940227

`lcm(2*n!*∑[∑[n]], n!)`
-/

namespace A090672.P14171682846137940227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)) (Nat.factorial n)

end

end A090672.P14171682846137940227

/-! ## A090672.P9441231138893296340

`abs(n*(a(n-1)+(n+1)!))` with `a(0)=0`
-/

namespace A090672.P9441231138893296340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial (n + 1))

end

end A090672.P9441231138893296340

/-! ## A090672.P18010818009113911841

`floor(n*(a(n-1)+(n+1)!))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A090672.P18010818009113911841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial (n + 1))

end

end A090672.P18010818009113911841

/-! ## A090672.P15177971149237592897

`ceil(n*(a(n-1)+(n+1)!))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A090672.P15177971149237592897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial (n + 1))

end

end A090672.P15177971149237592897

/-! ## A090672.P16966683387036488763

`round(n*(a(n-1)+(n+1)!))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A090672.P16966683387036488763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial (n + 1))

end

end A090672.P16966683387036488763

/-!
# A090675: Denominators of rational coefficients in a series expansion of z! = Gamma(z+1), convergent for Re(z) >= 0, given as equation (21) in the referenced paper by Lanczos.

The programs for A090675, there is no canonical definition to state claims against.
-/

/-! ## A090675.P15744556616631097956

`A144618(n+1)/A322705(A259799(3*n+2))`
-/

namespace A090675.P15744556616631097956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144618 (n + 1) : ℚ) / (A322705 (A259799 (3 * n + 2)).toNat : ℚ)

end

end A090675.P15744556616631097956

/-!
# A090676: a(n) = round(n^3/12) - floor(n/4)*floor((n+2)/4).

The programs for A090676, there is no canonical definition to state claims against.
-/

/-! ## A090676.P15892673387367735790

`A347697(∑[abs(A163650(n))])`
-/

namespace A090676.P15892673387367735790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163650 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090676.P15892673387367735790

/-! ## A090676.P16747948856091015617

`∑[∑[A178695(A260443(n))]]`
-/

namespace A090676.P16747948856091015617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178695 (A260443 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090676.P16747948856091015617

/-! ## A090676.P3747066158680399106

`∑[∑[A134022(A328437(n))]]`
-/

namespace A090676.P3747066158680399106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A328437 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090676.P3747066158680399106

/-! ## A090676.P11937080849775566669

`∑[∑[A261084(A196265(n+1))]]`
-/

namespace A090676.P11937080849775566669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261084 (A196265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090676.P11937080849775566669

/-! ## A090676.P9591910742010938460

`∑[A324572(p?[A074278(n+1)])]`
-/

namespace A090676.P9591910742010938460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074278 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090676.P9591910742010938460

/-!
# A090677: Number of ways to partition n into sums of squares of primes.

The programs for A090677, there is no canonical definition to state claims against.
-/

/-! ## A090677.P6712794191910440897

`A353381((A280586(n)²+1)²)`
-/

namespace A090677.P6712794191910440897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 ((A280586 n ^ 2 + 1) ^ 2).toNat

end

end A090677.P6712794191910440897

/-! ## A090677.P11128380846529268864

`A001221(∑{d}[2^A280586(n), A129296(#)])`
-/

namespace A090677.P11128380846529268864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A280586 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A129296 d).toNat

end

end A090677.P11128380846529268864

/-! ## A090677.P2544479395094077787

`A132468(∑{d}[2^A280586(n), A129296(#)])`
-/

namespace A090677.P2544479395094077787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A280586 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132468 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A129296 d).toNat

end

end A090677.P2544479395094077787

/-! ## A090677.P1102966195014025143

`A001222(A000005(3^A280586(n)))`
-/

namespace A090677.P1102966195014025143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A280586 n : ℤ))).toNat).toNat

end

end A090677.P1102966195014025143

/-! ## A090677.P15459665324115348450

`∑{e}[A000005(3^A280586(n)), A000005(#)]`
-/

namespace A090677.P15459665324115348450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A280586 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A090677.P15459665324115348450

/-!
# A090678: a(n) = A088567(n) mod 2.

The programs for A090678, the canonical program `A090678.P5536893378797487758` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090678 has offset 0).

The definition of A090678 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110037, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090678.P5536893378797487758

`(-1)^floor(n/2)*A110037(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A090678

/-- `(-1)^floor(n/2)*A110037(n)` -/
def P5536893378797487758.Spec : Prop :=
  ∀ n, P5536893378797487758.a n = (A090678 n : ℚ)

end A090678

/-! ## A090678.P6136127087474652227

`xor(a(n-2), a(floor(n/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A090678.P6136127087474652227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Nat.xor (a (n - 2)) (a ⌊(n : ℚ) / 2⌋.toNat)

end

end A090678.P6136127087474652227

namespace A090678

/-- `xor(a(n-2), a(floor(n/2)))` -/
def P6136127087474652227.Spec : Prop :=
  ∀ n, (P6136127087474652227.a n : ℤ) = A090678 n

end A090678

/-! ## A090678.P12478070111755459485

`abs(a(floor(n/2))-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A090678.P12478070111755459485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  |a ⌊(n : ℚ) / 2⌋.toNat - a (n - 2)|

end

end A090678.P12478070111755459485

namespace A090678

/-- `abs(a(floor(n/2))-a(n-2))` -/
def P12478070111755459485.Spec : Prop :=
  ∀ n, P12478070111755459485.a n = A090678 n

end A090678

/-! ## A090678.P12658559228058878713

`(a(n-2)-a(floor(n/2)))²` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A090678.P12658559228058878713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 2) - a ⌊(n : ℚ) / 2⌋.toNat) ^ 2

end

end A090678.P12658559228058878713

namespace A090678

/-- `(a(n-2)-a(floor(n/2)))²` -/
def P12658559228058878713.Spec : Prop :=
  ∀ n, P12658559228058878713.a n = A090678 n

end A090678

/-! ## A090678.P13831158228148172825

`1-a(n-(a(floor(n/2))+1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A090678.P13831158228148172825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - a ((n : ℤ) - (a ⌊(n : ℚ) / 2⌋.toNat + 1)).toNat

end

end A090678.P13831158228148172825

namespace A090678

/-- `1-a(n-(a(floor(n/2))+1))` -/
def P13831158228148172825.Spec : Prop :=
  ∀ n, P13831158228148172825.a n = A090678 n

end A090678

/-! ## A090678.P4233835490846227298

`1-a(n-1-a(floor(n/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A090678.P4233835490846227298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - a ((n : ℤ) - 1 - a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A090678.P4233835490846227298

namespace A090678

/-- `1-a(n-1-a(floor(n/2)))` -/
def P4233835490846227298.Spec : Prop :=
  ∀ n, P4233835490846227298.a n = A090678 n

end A090678

/-! ## A090678.P10262658523630280324

`(a(n-2)+a(and(n, -2)/2))%2` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A090678.P10262658523630280324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 2) + a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat) % 2

end

end A090678.P10262658523630280324

namespace A090678

/-- `(a(n-2)+a(and(n, -2)/2))%2` -/
def P10262658523630280324.Spec : Prop :=
  ∀ n, (P10262658523630280324.a n : ℤ) = A090678 n

end A090678

/-! ## A090678.P811736661986983984

`round(a(ceil((n-1)/2))+a(n-2))%2` with `a(0)=1, a(1)=1, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A090678.P811736661986983984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat + a (n - 2)) % 2

end

end A090678.P811736661986983984

namespace A090678

/-- `round(a(ceil((n-1)/2))+a(n-2))%2` -/
def P811736661986983984.Spec : Prop :=
  ∀ n, (P811736661986983984.a n : ℤ) = A090678 n

end A090678

/-! ## A090678.P5407190133503836477

`abs(A110037(n))`
-/

namespace A090678.P5407190133503836477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110037 n|

end

end A090678.P5407190133503836477

namespace A090678

/-- `abs(A110037(n))` -/
def P5407190133503836477.Spec : Prop :=
  ∀ n, P5407190133503836477.a n = A090678 n

end A090678

/-! ## A090678.P16122886008625971660

`A088567(n)%2`
-/

namespace A090678.P16122886008625971660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088567 n) 2

end

end A090678.P16122886008625971660

namespace A090678

/-- `A088567(n)%2` -/
def P16122886008625971660.Spec : Prop :=
  ∀ n, P16122886008625971660.a n = A090678 n

end A090678

/-! ## A090678.P14344481152609956128

`A298414(n)%2`
-/

namespace A090678.P14344481152609956128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298414 n) 2

end

end A090678.P14344481152609956128

namespace A090678

/-- `A298414(n)%2` -/
def P14344481152609956128.Spec : Prop :=
  ∀ n, P14344481152609956128.a n = A090678 n

end A090678

/-! ## A090678.P5594332400437969640

`ceil(sin(exp(A006464(n))))`
-/

namespace A090678.P5594332400437969640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Real.exp (A006464 n : ℝ))⌉

end

end A090678.P5594332400437969640

namespace A090678

/-- `ceil(sin(exp(A006464(n))))` -/
def P5594332400437969640.Spec : Prop :=
  ∀ n, P5594332400437969640.a n = A090678 n

end A090678

/-! ## A090678.P10937460871188541562

`ceil(sin(A004200(n)!))`
-/

namespace A090678.P10937460871188541562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Nat.factorial (A004200 n).toNat : ℝ)⌉

end

end A090678.P10937460871188541562

namespace A090678

/-- `ceil(sin(A004200(n)!))` -/
def P10937460871188541562.Spec : Prop :=
  ∀ n, P10937460871188541562.a n = A090678 n

end A090678

/-! ## A090678.P9869189170961514789

`(A121241(n)+1)/2`
-/

namespace A090678.P9869189170961514789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121241 n + 1 : ℚ) / 2

end

end A090678.P9869189170961514789

namespace A090678

/-- `(A121241(n)+1)/2` -/
def P9869189170961514789.Spec : Prop :=
  ∀ n, P9869189170961514789.a n = (A090678 n : ℚ)

end A090678

/-! ## A090678.P9501267613791094597

`A242634(round(sqrt(n²+1)))%2`
-/

namespace A090678.P9501267613791094597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242634 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) 2

end

end A090678.P9501267613791094597

namespace A090678

/-- `A242634(round(sqrt(n²+1)))%2` -/
def P9501267613791094597.Spec : Prop :=
  ∀ n, P9501267613791094597.a n = A090678 n

end A090678

/-! ## A090678.P7740185838191366621

`A063524(a(n-2)+a(floor(n/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A090678.P7740185838191366621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A063524 (a (n - 2) + a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A090678.P7740185838191366621

namespace A090678

/-- `A063524(a(n-2)+a(floor(n/2)))` -/
def P7740185838191366621.Spec : Prop :=
  ∀ n, P7740185838191366621.a n = A090678 n

end A090678

/-! ## A090678.P3338494530073055587

`gcd(A000038(n), A110037(n))`
-/

namespace A090678.P3338494530073055587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110037 n)

end

end A090678.P3338494530073055587

namespace A090678

/-- `gcd(A000038(n), A110037(n))` -/
def P3338494530073055587.Spec : Prop :=
  ∀ n, (P3338494530073055587.a n : ℤ) = A090678 n

end A090678

/-! ## A090678.P4271957704479767909

`round(cos(1-A004200(n)))^A000010(n+1)`
-/

namespace A090678.P4271957704479767909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.cos (1 - A004200 n : ℝ)) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A090678.P4271957704479767909

namespace A090678

/-- `round(cos(1-A004200(n)))^A000010(n+1)` -/
def P4271957704479767909.Spec : Prop :=
  ∀ n, P4271957704479767909.a n = (A090678 n : ℚ)

end A090678

/-! ## A090678.P8663956651917905719

`(round(cos(1-A004200(n)))^A000040(n+1))²`
-/

namespace A090678.P8663956651917905719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.roundAway (Real.cos (1 - A004200 n : ℝ)) : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A090678.P8663956651917905719

namespace A090678

/-- `(round(cos(1-A004200(n)))^A000040(n+1))²` -/
def P8663956651917905719.Spec : Prop :=
  ∀ n, P8663956651917905719.a n = (A090678 n : ℚ)

end A090678

/-! ## A090678.P9054729553887357516

`and(A001222(A046027(n+1)), A088567(n))`
-/

namespace A090678.P9054729553887357516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A046027 (n + 1)).toNat) (A088567 n)

end

end A090678.P9054729553887357516

namespace A090678

/-- `and(A001222(A046027(n+1)), A088567(n))` -/
def P9054729553887357516.Spec : Prop :=
  ∀ n, P9054729553887357516.a n = A090678 n

end A090678

/-!
# A090679: Integer part of the hypotenuse of a right triangle with twin prime legs.

The programs for A090679, the canonical program `A090679.P15281543426046170081` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090679 has offset 1).

The definition of A090679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090679.P1238871983099161792

`floor(sqrt(A063533(n+1)))`
-/

namespace A090679.P1238871983099161792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A063533 (n + 1))

end

end A090679.P1238871983099161792

namespace A090679

/-- `floor(sqrt(A063533(n+1)))` -/
def P1238871983099161792.Spec : Prop :=
  ∀ n, P1238871983099161792.a n = A090679 (n + 1)

end A090679

/-! ## A090679.P3559925729517729924

`floor(sqrt(A184417(n+1)))`
-/

namespace A090679.P3559925729517729924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A184417 (n + 1))

end

end A090679.P3559925729517729924

namespace A090679

/-- `floor(sqrt(A184417(n+1)))` -/
def P3559925729517729924.Spec : Prop :=
  ∀ n, P3559925729517729924.a n = A090679 (n + 1)

end A090679

/-! ## A090679.P5516481913508689405

`floor(sqrt(A071142(n+1)+3))`
-/

namespace A090679.P5516481913508689405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A071142 (n + 1) + 3)

end

end A090679.P5516481913508689405

namespace A090679

/-- `floor(sqrt(A071142(n+1)+3))` -/
def P5516481913508689405.Spec : Prop :=
  ∀ n, P5516481913508689405.a n = A090679 (n + 1)

end A090679

/-! ## A090679.P14723858468716752822

`floor(sqrt(2*(A075369(n+1)+1)))`
-/

namespace A090679.P14723858468716752822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * (A075369 (n + 1) + 1))

end

end A090679.P14723858468716752822

namespace A090679

/-- `floor(sqrt(2*(A075369(n+1)+1)))` -/
def P14723858468716752822.Spec : Prop :=
  ∀ n, P14723858468716752822.a n = A090679 (n + 1)

end A090679

/-! ## A090679.P5417799821728943955

`floor(sqrt(2*(A037074(n+1)+2)))`
-/

namespace A090679.P5417799821728943955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * (A037074 (n + 1) + 2))

end

end A090679.P5417799821728943955

namespace A090679

/-- `floor(sqrt(2*(A037074(n+1)+2)))` -/
def P5417799821728943955.Spec : Prop :=
  ∀ n, P5417799821728943955.a n = A090679 (n + 1)

end A090679

/-! ## A090679.P287049881485383420

`floor(sqrt(2*A134020(n+2)+3))`
-/

namespace A090679.P287049881485383420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A134020 (n + 2) + 3)

end

end A090679.P287049881485383420

namespace A090679

/-- `floor(sqrt(2*A134020(n+2)+3))` -/
def P287049881485383420.Spec : Prop :=
  ∀ n, P287049881485383420.a n = A090679 (n + 1)

end A090679

/-! ## A090679.P15281543426046170081

`floor(sqrt(2*((1-p?[A000040(n+1)+2])²+1)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090679

/-- `floor(sqrt(2*((1-p?[A000040(n+1)+2])²+1)))` -/
def P15281543426046170081.Spec : Prop :=
  ∀ n, P15281543426046170081.a n = A090679 (n + 1)

theorem P15281543426046170081.correct : P15281543426046170081.Spec := by
  intro n
  simp only [A090679, Nat.add_sub_cancel]

end A090679

/-! ## A090679.P8163694365671017235

`A097431(A029707(n+1))`
-/

namespace A090679.P8163694365671017235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097431 (A029707 (n + 1)).toNat

end

end A090679.P8163694365671017235

namespace A090679

/-- `A097431(A029707(n+1))` -/
def P8163694365671017235.Spec : Prop :=
  ∀ n, P8163694365671017235.a n = A090679 (n + 1)

end A090679

/-! ## A090679.P17580739946219048183

`A001951(A014574(n+1))+char[2]`
-/

namespace A090679.P17580739946219048183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A014574 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A090679.P17580739946219048183

namespace A090679

/-- `A001951(A014574(n+1))+char[2]` -/
def P17580739946219048183.Spec : Prop :=
  ∀ n, P17580739946219048183.a n = A090679 (n + 1)

end A090679

/-! ## A090679.P8803095994949287654

`A185012(n)+A001951(A014574(n+1))`
-/

namespace A090679.P8803095994949287654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n + A001951 (A014574 (n + 1)).toNat

end

end A090679.P8803095994949287654

namespace A090679

/-- `A185012(n)+A001951(A014574(n+1))` -/
def P8803095994949287654.Spec : Prop :=
  ∀ n, P8803095994949287654.a n = A090679 (n + 1)

end A090679

/-! ## A090679.P17442878929960911631

`A049472(A054735(n+1)+char[2])`
-/

namespace A090679.P17442878929960911631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A054735 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A090679.P17442878929960911631

namespace A090679

/-- `A049472(A054735(n+1)+char[2])` -/
def P17442878929960911631.Spec : Prop :=
  ∀ n, P17442878929960911631.a n = A090679 (n + 1)

end A090679

/-!
# A090680: Number of primes p such that n < p < n+A033677(n).

The programs for A090680, there is no canonical definition to state claims against.
-/

/-! ## A090680.P8381064930357580386

`A167968(A263132(n+2)+1)`
-/

namespace A090680.P8381064930357580386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167968 (A263132 (n + 2) + 1).toNat

end

end A090680.P8381064930357580386

/-! ## A090680.P3003981357362853957

`A342789(A048676(n+2))`
-/

namespace A090680.P3003981357362853957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342789 (A048676 (n + 2)).toNat

end

end A090680.P3003981357362853957

/-! ## A090680.P7487378342835717079

`A083912(2^A075861(n+2))`
-/

namespace A090680.P7487378342835717079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A075861 (n + 2) : ℤ))).toNat

end

end A090680.P7487378342835717079

/-! ## A090680.P16625614608622783242

`ceil(A001222(A005179(n+2))/4)`
-/

namespace A090680.P16625614608622783242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001222 (A005179 (n + 2)).toNat : ℚ) / 4⌉

end

end A090680.P16625614608622783242

/-! ## A090680.P11898219624225574476

`A001221(xor(n+7, A081234(n+1)))`
-/

namespace A090680.P11898219624225574476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (n + 7 : ℤ) (A081234 (n + 1))).toNat

end

end A090680.P11898219624225574476

/-!
# A090681: Expansion of (sec(x/2)^2 + sech(x/2)^2)/2 in powers of x^4.

The programs for A090681, there is no canonical definition to state claims against.
-/

/-! ## A090681.P5564566221066414181

`A002425(2*n+1)`
-/

namespace A090681.P5564566221066414181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002425 (2 * n + 1)

end

end A090681.P5564566221066414181

/-! ## A090681.P16918860039999976660

`A012853(n)/2^(4*n+1)`
-/

namespace A090681.P16918860039999976660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012853 n : ℚ) / (2 ^ (4 * n + 1) : ℚ)

end

end A090681.P16918860039999976660

/-! ## A090681.P15886461316140454130

`abs(A012670(n)/2^(6*n+1))`
-/

namespace A090681.P15886461316140454130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A012670 n : ℚ) / (2 ^ (6 * n + 1) : ℚ)|

end

end A090681.P15886461316140454130

/-! ## A090681.P17173713195824773911

`A275994(Δ[n²])`
-/

namespace A090681.P17173713195824773911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275994 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A090681.P17173713195824773911

/-! ## A090681.P5973024957854276074

`A198631(4*n+1)`
-/

namespace A090681.P5973024957854276074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198631 (4 * n + 1)

end

end A090681.P5973024957854276074

/-!
# A090682: Integer part of one leg of a right triangle where the other leg and hypotenuse are twin primes.

The programs for A090682, the canonical program `A090682.P17764846344819148553` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090682 has offset 3).

The definition of A090682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090682.P8789237262242028710

`floor(sqrt(A111046(n+1)))`
-/

namespace A090682.P8789237262242028710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A111046 (n + 1))

end

end A090682.P8789237262242028710

namespace A090682

/-- `floor(sqrt(A111046(n+1)))` -/
def P8789237262242028710.Spec : Prop :=
  ∀ n, P8789237262242028710.a n = A090682 (n + 3)

end A090682

/-! ## A090682.P11754821046786258916

`floor(2*sqrt(A014574(n+1)))`
-/

namespace A090682.P11754821046786258916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A014574 (n + 1) : ℝ)⌋

end

end A090682.P11754821046786258916

namespace A090682

/-- `floor(2*sqrt(A014574(n+1)))` -/
def P11754821046786258916.Spec : Prop :=
  ∀ n, P11754821046786258916.a n = A090682 (n + 3)

end A090682

/-! ## A090682.P993955070895572764

`floor(sqrt(2*A054735(n+1)))`
-/

namespace A090682.P993955070895572764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A054735 (n + 1))

end

end A090682.P993955070895572764

namespace A090682

/-- `floor(sqrt(2*A054735(n+1)))` -/
def P993955070895572764.Spec : Prop :=
  ∀ n, P993955070895572764.a n = A090682 (n + 3)

end A090682

/-! ## A090682.P2809928272701084415

`floor(sqrt(8*A040040(n+1)))`
-/

namespace A090682.P2809928272701084415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (8 * A040040 (n + 1))

end

end A090682.P2809928272701084415

namespace A090682

/-- `floor(sqrt(8*A040040(n+1)))` -/
def P2809928272701084415.Spec : Prop :=
  ∀ n, P2809928272701084415.a n = A090682 (n + 3)

end A090682

/-! ## A090682.P9164924914531401813

`floor(sqrt(8*A168497(n+2)))`
-/

namespace A090682.P9164924914531401813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (8 * A168497 (n + 2))

end

end A090682.P9164924914531401813

namespace A090682

/-- `floor(sqrt(8*A168497(n+2)))` -/
def P9164924914531401813.Spec : Prop :=
  ∀ n, P9164924914531401813.a n = A090682 (n + 3)

end A090682

/-! ## A090682.P7616454182052309423

`floor(2*sqrt(sqrt(A075369(n+1))))`
-/

namespace A090682.P7616454182052309423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (Real.sqrt (A075369 (n + 1) : ℝ))⌋

end

end A090682.P7616454182052309423

namespace A090682

/-- `floor(2*sqrt(sqrt(A075369(n+1))))` -/
def P7616454182052309423.Spec : Prop :=
  ∀ n, P7616454182052309423.a n = A090682 (n + 3)

end A090682

/-! ## A090682.P4602691000979236059

`floor(2*sqrt(A001359(n+1)+1))`
-/

namespace A090682.P4602691000979236059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A001359 (n + 1) + 1 : ℝ)⌋

end

end A090682.P4602691000979236059

namespace A090682

/-- `floor(2*sqrt(A001359(n+1)+1))` -/
def P4602691000979236059.Spec : Prop :=
  ∀ n, P4602691000979236059.a n = A090682 (n + 3)

end A090682

/-! ## A090682.P14430724216124594664

`floor(2*sqrt(A006512(n+1)-1))`
-/

namespace A090682.P14430724216124594664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A006512 (n + 1) - 1 : ℝ)⌋

end

end A090682.P14430724216124594664

namespace A090682

/-- `floor(2*sqrt(A006512(n+1)-1))` -/
def P14430724216124594664.Spec : Prop :=
  ∀ n, P14430724216124594664.a n = A090682 (n + 3)

end A090682

/-! ## A090682.P4493838200655879750

`floor(sqrt(2*(A108605(n+1)+2)))`
-/

namespace A090682.P4493838200655879750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * (A108605 (n + 1) + 2))

end

end A090682.P4493838200655879750

namespace A090682

/-- `floor(sqrt(2*(A108605(n+1)+2)))` -/
def P4493838200655879750.Spec : Prop :=
  ∀ n, P4493838200655879750.a n = A090682 (n + 3)

end A090682

/-! ## A090682.P17764846344819148553

`floor(2*sqrt(p?[A000040(n+1)-2]+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090682

/-- `floor(2*sqrt(p?[A000040(n+1)-2]+1))` -/
def P17764846344819148553.Spec : Prop :=
  ∀ n, P17764846344819148553.a n = A090682 (n + 3)

theorem P17764846344819148553.correct : P17764846344819148553.Spec := by
  intro n
  simp only [A090682, Nat.add_sub_cancel]

end A090682

/-! ## A090682.P5421778751434254913

`A172471(A054735(n+1))`
-/

namespace A090682.P5421778751434254913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A054735 (n + 1)).toNat

end

end A090682.P5421778751434254913

namespace A090682

/-- `A172471(A054735(n+1))` -/
def P5421778751434254913.Spec : Prop :=
  ∀ n, P5421778751434254913.a n = A090682 (n + 3)

end A090682

/-!
# A090683: Triangle read by rows, defined by T(n,k) = C(n,k)*S2(n,k), 0 <= k <= n, where C(n,k) are the binomial coefficients and S2(n,k) are the Stirling numbers of the second kind.

The programs for A090683, there is no canonical definition to state claims against.
-/

/-! ## A090683.P11792269046481943127

`A007318(n)*A048993(n)`
-/

namespace A090683.P11792269046481943127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A048993 n

end

end A090683.P11792269046481943127

/-! ## A090683.P16223287828617043906

`A048993(n)*A091918(n)`
-/

namespace A090683.P16223287828617043906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A091918 n

end

end A090683.P16223287828617043906

/-! ## A090683.P7934840833764701529

`A048993(n)*A132749(n)`
-/

namespace A090683.P7934840833764701529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A132749 n

end

end A090683.P7934840833764701529

/-! ## A090683.P3692881070937393337

`A048993(n)*A135227(n)`
-/

namespace A090683.P3692881070937393337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A135227 n

end

end A090683.P3692881070937393337

/-! ## A090683.P13237045206476161932

`A048993(n)*A183154(n)`
-/

namespace A090683.P13237045206476161932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A183154 n

end

end A090683.P13237045206476161932

/-! ## A090683.P12903392676324590718

`A048993(n)*A206735(n)`
-/

namespace A090683.P12903392676324590718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A206735 n

end

end A090683.P12903392676324590718

/-! ## A090683.P18197090115533587194

`sqrt(A008459(n))*A048993(n)`
-/

namespace A090683.P18197090115533587194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A048993 n : ℝ)

end

end A090683.P18197090115533587194

/-! ## A090683.P8087454832607958071

`A007318(n)*A106800(A061579(n))`
-/

namespace A090683.P8087454832607958071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A106800 (A061579 n).toNat

end

end A090683.P8087454832607958071

/-! ## A090683.P11465921439719499095

`A106800(A061579(n))*A132749(n)`
-/

namespace A090683.P11465921439719499095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A061579 n).toNat * A132749 n

end

end A090683.P11465921439719499095

/-! ## A090683.P16836274034479548720

`A106800(A061579(n))*A135227(n)`
-/

namespace A090683.P16836274034479548720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A061579 n).toNat * A135227 n

end

end A090683.P16836274034479548720

/-! ## A090683.P16843613562570542300

`(A097805(n+1)+A097805(n))*A048993(n)`
-/

namespace A090683.P16843613562570542300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + A097805 n) * A048993 n

end

end A090683.P16843613562570542300

/-! ## A090683.P9040397966384376270

`A090657(n)/A233543(n)`
-/

namespace A090683.P9040397966384376270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A233543 n : ℚ)

end

end A090683.P9040397966384376270

/-! ## A090683.P2089679839224830152

`A090657(n)/A002262(n)!`
-/

namespace A090683.P2089679839224830152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A090683.P2089679839224830152

/-! ## A090683.P16573226896339869076

`A007318(n)/A008279(n)*A090657(n)`
-/

namespace A090683.P16573226896339869076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A008279 n : ℚ) * (A090657 n : ℚ)

end

end A090683.P16573226896339869076

/-!
# A090684: Primes of the form 8*k^2 - 1.

The programs for A090684, the canonical program `A090684.P12975898454914960534` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090684 has offset 1).

The definition of A090684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2008 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090684.P12975898454914960534

`A157914(A143827(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A090684

/-- `A157914(A143827(n+1))` -/
def P12975898454914960534.Spec : Prop :=
  ∀ n, P12975898454914960534.a n = A090684 (n + 1)

theorem P12975898454914960534.correct : P12975898454914960534.Spec := by
  intro n
  simp only [A090684, Nat.add_sub_cancel]

end A090684

/-! ## A090684.P12809330445225834541

`∩[A066436(n+1), A157914(n+1)]`
-/

namespace A090684.P12809330445225834541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P12809330445225834541

namespace A090684

/-- `∩[A066436(n+1), A157914(n+1)]` -/
def P12809330445225834541.Spec : Prop :=
  ∀ n, (P12809330445225834541.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P8848988510200315624

`∩[A157914(n+1), A256917(n+1)]`
-/

namespace A090684.P8848988510200315624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P8848988510200315624

namespace A090684

/-- `∩[A157914(n+1), A256917(n+1)]` -/
def P8848988510200315624.Spec : Prop :=
  ∀ n, (P8848988510200315624.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P12722337633107732869

`∩[A256917(n+1), A081585(n)-2]`
-/

namespace A090684.P12722337633107732869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P12722337633107732869

namespace A090684

/-- `∩[A256917(n+1), A081585(n)-2]` -/
def P12722337633107732869.Spec : Prop :=
  ∀ n, (P12722337633107732869.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P16896523829193595300

`∩[8*n²-1, A256917(n+2)]`
-/

namespace A090684.P16896523829193595300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P16896523829193595300

namespace A090684

/-- `∩[8*n²-1, A256917(n+2)]` -/
def P16896523829193595300.Spec : Prop :=
  ∀ n, (P16896523829193595300.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P12151390423309965433

`∩[A066436(n+1), A195605(n)]`
-/

namespace A090684.P12151390423309965433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P12151390423309965433

namespace A090684

/-- `∩[A066436(n+1), A195605(n)]` -/
def P12151390423309965433.Spec : Prop :=
  ∀ n, (P12151390423309965433.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P9303422187596470019

`∩[A066436(n+1), A077221(n)-1]`
-/

namespace A090684.P9303422187596470019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P9303422187596470019

namespace A090684

/-- `∩[A066436(n+1), A077221(n)-1]` -/
def P9303422187596470019.Spec : Prop :=
  ∀ n, (P9303422187596470019.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P12054213970586265811

`∩[A256917(n+1), A077221(n)-1]`
-/

namespace A090684.P12054213970586265811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P12054213970586265811

namespace A090684

/-- `∩[A256917(n+1), A077221(n)-1]` -/
def P12054213970586265811.Spec : Prop :=
  ∀ n, (P12054213970586265811.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P18413878991564224573

`∩[A066436(n+1), A387532(n+1)]`
-/

namespace A090684.P18413878991564224573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P18413878991564224573

namespace A090684

/-- `∩[A066436(n+1), A387532(n+1)]` -/
def P18413878991564224573.Spec : Prop :=
  ∀ n, (P18413878991564224573.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P4721651441698920213

`record[A059772(4*(n+1))]`
-/

namespace A090684.P4721651441698920213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090684.P4721651441698920213

namespace A090684

/-- `record[A059772(4*(n+1))]` -/
def P4721651441698920213.Spec : Prop :=
  ∀ n, P4721651441698920213.a n = A090684 (n + 1)

end A090684

/-! ## A090684.P8358149015176879362

`record[A164314(4*(n+1))]`
-/

namespace A090684.P8358149015176879362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090684.P8358149015176879362

namespace A090684

/-- `record[A164314(4*(n+1))]` -/
def P8358149015176879362.Spec : Prop :=
  ∀ n, P8358149015176879362.a n = A090684 (n + 1)

end A090684

/-! ## A090684.P8547731758302691966

`A047838(4*A143827(n+1))`
-/

namespace A090684.P8547731758302691966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (4 * A143827 (n + 1)).toNat

end

end A090684.P8547731758302691966

namespace A090684

/-- `A047838(4*A143827(n+1))` -/
def P8547731758302691966.Spec : Prop :=
  ∀ n, P8547731758302691966.a n = A090684 (n + 1)

end A090684

/-! ## A090684.P16000928981115779119

`A164314(4*A143827(n+1))`
-/

namespace A090684.P16000928981115779119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (4 * A143827 (n + 1)).toNat

end

end A090684.P16000928981115779119

namespace A090684

/-- `A164314(4*A143827(n+1))` -/
def P16000928981115779119.Spec : Prop :=
  ∀ n, P16000928981115779119.a n = A090684 (n + 1)

end A090684

/-! ## A090684.P16404078176923954581

`∩[A066436(n+1), A194274(n)-1]`
-/

namespace A090684.P16404078176923954581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P16404078176923954581

namespace A090684

/-- `∩[A066436(n+1), A194274(n)-1]` -/
def P16404078176923954581.Spec : Prop :=
  ∀ n, (P16404078176923954581.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P8420548587106927766

`∩[A066436(n+1), A359749(n+1)]`
-/

namespace A090684.P8420548587106927766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P8420548587106927766

namespace A090684

/-- `∩[A066436(n+1), A359749(n+1)]` -/
def P8420548587106927766.Spec : Prop :=
  ∀ n, (P8420548587106927766.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P17680975385780473003

`∩[A157914(n+1), A243009(n+1)]`
-/

namespace A090684.P17680975385780473003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P17680975385780473003

namespace A090684

/-- `∩[A157914(n+1), A243009(n+1)]` -/
def P17680975385780473003.Spec : Prop :=
  ∀ n, (P17680975385780473003.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P9278226308026043169

`∩[A243009(n+1), A077221(n)-1]`
-/

namespace A090684.P9278226308026043169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P9278226308026043169

namespace A090684

/-- `∩[A243009(n+1), A077221(n)-1]` -/
def P9278226308026043169.Spec : Prop :=
  ∀ n, (P9278226308026043169.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P12360584405671011323

`∩[A374482(n+1), A195605(n)]`
-/

namespace A090684.P12360584405671011323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090684.P12360584405671011323

namespace A090684

/-- `∩[A374482(n+1), A195605(n)]` -/
def P12360584405671011323.Spec : Prop :=
  ∀ n, (P12360584405671011323.a n : ℤ) = A090684 (n + 1)

end A090684

/-! ## A090684.P10857181584219164967

`p?[8*n²-1]`
-/

namespace A090684.P10857181584219164967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090684.P10857181584219164967

namespace A090684

/-- `p?[8*n²-1]` -/
def P10857181584219164967.Spec : Prop :=
  ∀ n, P10857181584219164967.a n = A090684 (n + 1)

end A090684

/-! ## A090684.P8685180740838075237

`or(1, p?[A157914(n+1)])`
-/

namespace A090684.P8685180740838075237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A090684.P8685180740838075237

namespace A090684

/-- `or(1, p?[A157914(n+1)])` -/
def P8685180740838075237.Spec : Prop :=
  ∀ n, P8685180740838075237.a n = A090684 (n + 1)

end A090684

/-!
# A090685: Primes of the form 8*k^2 + 1.

The programs for A090685, there is no canonical definition to state claims against.
-/

/-! ## A090685.P5799130511886380172

`A275543(2*A188549(n+1))`
-/

namespace A090685.P5799130511886380172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (2 * A188549 (n + 1)).toNat

end

end A090685.P5799130511886380172

/-! ## A090685.P16823536017590208397

`A090698(eq[2, gcd(2, A089001(n+1))]+1)`
-/

namespace A090685.P16823536017590208397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A089001 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A090685.P16823536017590208397

/-! ## A090685.P12434671603060502684

`A158740(A188549(n+1)/3)`
-/

namespace A090685.P12434671603060502684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158740 (SequenceMachineLib.roundAway ((A188549 (n + 1) : ℚ) / 3)).toNat

end

end A090685.P12434671603060502684

/-! ## A090685.P10683296870547729773

`∩[A090698(n+1), A158740(n)]`
-/

namespace A090685.P10683296870547729773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P10683296870547729773

/-! ## A090685.P7060000607128652764

`∩[A249410(n+1), A158740(n)]`
-/

namespace A090685.P7060000607128652764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P7060000607128652764

/-! ## A090685.P5146467183403917743

`∩[A256917(n+1), A158740(n)]`
-/

namespace A090685.P5146467183403917743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P5146467183403917743

/-! ## A090685.P6963785656278399534

`A081585(A188549(n+1))`
-/

namespace A090685.P6963785656278399534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 (A188549 (n + 1)).toNat

end

end A090685.P6963785656278399534

/-! ## A090685.P12293607719104977080

`∩[A090698(n+1), A081585(n)]`
-/

namespace A090685.P12293607719104977080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P12293607719104977080

/-! ## A090685.P6779617311050249295

`∩[A249410(n+1), A081585(n)]`
-/

namespace A090685.P6779617311050249295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P6779617311050249295

/-! ## A090685.P16992185025264694064

`∩[A256917(n+1), A081585(n)]`
-/

namespace A090685.P16992185025264694064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P16992185025264694064

/-! ## A090685.P18060020881950669069

`∩[A157914(n+1)+2, A256917(n+1)]`
-/

namespace A090685.P18060020881950669069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157914 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P18060020881950669069

/-! ## A090685.P12612313527431853617

`A008527(A188549(n+1))-A058281(A008588(n))`
-/

namespace A090685.P12612313527431853617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 (A188549 (n + 1)).toNat - A058281 (A008588 n).toNat

end

end A090685.P12612313527431853617

/-! ## A090685.P14733356682275804664

`A008527(A188549(n+1))-A304042(A237053(n))`
-/

namespace A090685.P14733356682275804664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 (A188549 (n + 1)).toNat - A304042 (A237053 n).toNat

end

end A090685.P14733356682275804664

/-! ## A090685.P17266409564470595418

`A008527(A188549(n+1))-A304042(A304042(n))`
-/

namespace A090685.P17266409564470595418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 (A188549 (n + 1)).toNat - A304042 (A304042 n).toNat

end

end A090685.P17266409564470595418

/-! ## A090685.P3797330177425331124

`∩[8*n²+1, A256917(n+2)]`
-/

namespace A090685.P3797330177425331124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P3797330177425331124

/-! ## A090685.P151985507245444601

`A058331(2*A188549(n+1))`
-/

namespace A090685.P151985507245444601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (2 * A188549 (n + 1)).toNat

end

end A090685.P151985507245444601

/-! ## A090685.P9659821401521463018

`∩[A090698(n+1), A394499(n+1)]`
-/

namespace A090685.P9659821401521463018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P9659821401521463018

/-! ## A090685.P16167503457844079745

`∩[A249410(n+1), A394499(n+1)]`
-/

namespace A090685.P16167503457844079745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P16167503457844079745

/-! ## A090685.P7804206865391112488

`∩[A256917(n+1), A394499(n+1)]`
-/

namespace A090685.P7804206865391112488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P7804206865391112488

/-! ## A090685.P6471970639889876038

`∩[A058331(2*n), A249410(n+1)]`
-/

namespace A090685.P6471970639889876038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090685.P6471970639889876038

/-!
# A090686: Primes of the form 6n^2 - 1.

The programs for A090686, there is no canonical definition to state claims against.
-/

/-! ## A090686.P12477136932090720126

`A140811(A143826(n+1))`
-/

namespace A090686.P12477136932090720126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 (A143826 (n + 1)).toNat

end

end A090686.P12477136932090720126

/-! ## A090686.P11839705050512692003

`A005897(lt[A209494(n+1), 4]+1)-3`
-/

namespace A090686.P11839705050512692003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209494 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 3

end

end A090686.P11839705050512692003

/-! ## A090686.P14976151293124617673

`p?[6*n²-1]`
-/

namespace A090686.P14976151293124617673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090686.P14976151293124617673

/-! ## A090686.P12633535043401383822

`or(1, p?[n*6*n-1])`
-/

namespace A090686.P12633535043401383822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (6 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A090686.P12633535043401383822

/-! ## A090686.P11504391827364888889

`∏{d}[p?[n*6*n-1], #]`
-/

namespace A090686.P11504391827364888889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (6 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A090686.P11504391827364888889

/-! ## A090686.P18066386671313558625

`∏{p}[p?[n*6*n-1], #]`
-/

namespace A090686.P18066386671313558625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (6 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A090686.P18066386671313558625

/-! ## A090686.P9852644591209134105

`∑{p}[p?[2*n*3*n-1], #]`
-/

namespace A090686.P9852644591209134105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * (3 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A090686.P9852644591209134105

/-! ## A090686.P13177491000791836930

`A007318(C(2, n+2))*p?[n*6*n-1]`
-/

namespace A090686.P13177491000791836930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (6 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090686.P13177491000791836930

/-! ## A090686.P5992876867475136982

`A007318(gcd(n, n+2))*p?[n*6*n-1]`
-/

namespace A090686.P5992876867475136982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (6 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090686.P5992876867475136982

/-! ## A090686.P1931792727033342245

`p?[A140811(n)]%A016936(n)`
-/

namespace A090686.P1931792727033342245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016936 n)

end

end A090686.P1931792727033342245

/-! ## A090686.P9935073990618240818

`lcm(p?[A140811(n)], A033999(n))`
-/

namespace A090686.P9935073990618240818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A090686.P9935073990618240818

/-! ## A090686.P17410293272471556989

`p?[A140811(n)]*char[A061601(n)]`
-/

namespace A090686.P17410293272471556989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A090686.P17410293272471556989

/-! ## A090686.P3264285966997462873

`A000007(n+1)+p?[A140811(n)]`
-/

namespace A090686.P3264285966997462873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090686.P3264285966997462873

/-! ## A090686.P6945977323919306667

`A000038(n+1)+p?[A140811(n)]`
-/

namespace A090686.P6945977323919306667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090686.P6945977323919306667

/-! ## A090686.P993811594104029604

`A000035(2*n)+p?[A140811(n)]`
-/

namespace A090686.P993811594104029604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090686.P993811594104029604

/-! ## A090686.P16057323467998468048

`p?[A005897(n)-3]*A057427(n+1)`
-/

namespace A090686.P16057323467998468048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057427 (n + 1)

end

end A090686.P16057323467998468048

/-! ## A090686.P16170773206992162726

`p?[A140811(n)]*A059841(2*(n+1))`
-/

namespace A090686.P16170773206992162726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A059841 (2 * (n + 1))

end

end A090686.P16170773206992162726

/-! ## A090686.P6454151351987096796

`p?[A005897(n)-3]/A007318(val(n+2, 5))`
-/

namespace A090686.P6454151351987096796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (SequenceMachineLib.valuation (n + 2) 5) : ℚ)

end

end A090686.P6454151351987096796

/-!
# A090687: Primes of the form 6*k^2 + 1.

The programs for A090687, there is no canonical definition to state claims against.
-/

/-! ## A090687.P15962994633376875520

`p?[6*n²+1]`
-/

namespace A090687.P15962994633376875520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A090687.P15962994633376875520

/-! ## A090687.P8702936823846312988

`or(1, p?[or(1, 6*n²)])`
-/

namespace A090687.P8702936823846312988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090687.P8702936823846312988

/-! ## A090687.P8988678229990942779

`or(1, p?[n*6*n+1])`
-/

namespace A090687.P8988678229990942779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090687.P8988678229990942779

/-! ## A090687.P10077466557588776219

`∏{d}[p?[n*6*n+1], #]`
-/

namespace A090687.P10077466557588776219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A090687.P10077466557588776219

/-! ## A090687.P5697158475013489879

`∑{p}[p?[n*6*n+1], #]`
-/

namespace A090687.P5697158475013489879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A090687.P5697158475013489879

/-! ## A090687.P5250591659453856798

`∏{p}[p?[n*6*n+1], #]`
-/

namespace A090687.P5250591659453856798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A090687.P5250591659453856798

/-! ## A090687.P3647297135835722434

`abs(p?[3*n*2*n+1]-2)+2`
-/

namespace A090687.P3647297135835722434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2| + 2

end

end A090687.P3647297135835722434

/-! ## A090687.P17298875343351513654

`lcm(p?[A227776(n)], A332433(n))`
-/

namespace A090687.P17298875343351513654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A332433 n)

end

end A090687.P17298875343351513654

/-! ## A090687.P4855003548359520309

`p?[A227776(n)]%A227780(n+1)`
-/

namespace A090687.P4855003548359520309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A227780 (n + 1))

end

end A090687.P4855003548359520309

/-! ## A090687.P8742772736042903366

`∩[A033199(n+1), A084672(n)]`
-/

namespace A090687.P8742772736042903366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084672 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090687.P8742772736042903366

/-!
# A090690: Repeated primes in first occurrence in the progression kx^2+1.

The programs for A090690, there is no canonical definition to state claims against.
-/

/-! ## A090690.P11934766545848811716

`p?[A111801(n+1)+5]`
-/

namespace A090690.P11934766545848811716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111801 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090690.P11934766545848811716

/-! ## A090690.P11316519180393878205

`p?[A306102(n+1)-11]`
-/

namespace A090690.P11316519180393878205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306102 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090690.P11316519180393878205

/-! ## A090690.P2481673830007669387

`p?[4*comp[2*(a(A039999(n))+1)]+1]` with `a(0)=1`
-/

namespace A090690.P2481673830007669387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * (f2 (A039999 n).toNat + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A090690.P2481673830007669387

/-! ## A090690.P4160846375347046126

`A028234(A048630(comp[∑[n]]))`
-/

namespace A090690.P4160846375347046126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A048630 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A090690.P4160846375347046126

/-! ## A090690.P9915731412852957282

`A002144(comp[∑[n]]%A128067(n+1))`
-/

namespace A090690.P9915731412852957282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A128067 (n + 1))).toNat

end

end A090690.P9915731412852957282

/-!
# A090692: Expansion of 2*(x^2-9*x+15) / ((1+x)*(1-3*x+x^2)).

The programs for A090692, the canonical program `A090692.P9623516979028734876` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090692 has offset 0).

The definition of A090692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090692.P9623516979028734876

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=30, a(1)=42, a(2)=146`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090692

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P9623516979028734876.Spec : Prop :=
  ∀ n, P9623516979028734876.a n = A090692 n

theorem P9623516979028734876.correct : P9623516979028734876.Spec := by
  intro n
  simp only [A090692]

end A090692

/-! ## A090692.P17168675653693102122

`A022137(2*n)+A022088(n+1)²`
-/

namespace A090692.P17168675653693102122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 (2 * n) + A022088 (n + 1) ^ 2

end

end A090692.P17168675653693102122

namespace A090692

/-- `A022137(2*n)+A022088(n+1)²` -/
def P17168675653693102122.Spec : Prop :=
  ∀ n, P17168675653693102122.a n = A090692 n

end A090692

/-! ## A090692.P2635431133982366927

`A055850(n+1)+A000032(n)*A022122(n+1)`
-/

namespace A090692.P2635431133982366927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055850 (n + 1) + A000032 n * A022122 (n + 1)

end

end A090692.P2635431133982366927

namespace A090692

/-- `A055850(n+1)+A000032(n)*A022122(n+1)` -/
def P2635431133982366927.Spec : Prop :=
  ∀ n, P2635431133982366927.a n = A090692 n

end A090692

/-! ## A090692.P844202697853422418

`A006355(2*n+1)+A022088(n+1)*A022112(n+1)`
-/

namespace A090692.P844202697853422418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (2 * n + 1) + A022088 (n + 1) * A022112 (n + 1)

end

end A090692.P844202697853422418

namespace A090692

/-- `A006355(2*n+1)+A022088(n+1)*A022112(n+1)` -/
def P844202697853422418.Spec : Prop :=
  ∀ n, P844202697853422418.a n = A090692 n

end A090692

/-! ## A090692.P6580763066140512185

`A022096(n+1)*A022112(n+1)-A022112(2*n+1)`
-/

namespace A090692.P6580763066140512185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 (n + 1) * A022112 (n + 1) - A022112 (2 * n + 1)

end

end A090692.P6580763066140512185

namespace A090692

/-- `A022096(n+1)*A022112(n+1)-A022112(2*n+1)` -/
def P6580763066140512185.Spec : Prop :=
  ∀ n, P6580763066140512185.a n = A090692 n

end A090692

/-! ## A090692.P10173098919224154754

`A265805(n+2)-A266706(n+4)`
-/

namespace A090692.P10173098919224154754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265805 (n + 2) - A266706 (n + 4)

end

end A090692.P10173098919224154754

namespace A090692

/-- `A265805(n+2)-A266706(n+4)` -/
def P10173098919224154754.Spec : Prop :=
  ∀ n, P10173098919224154754.a n = A090692 n

end A090692

/-!
# A090693: Positive numbers n such that n^2 - 2n + 2 is a prime.

The programs for A090693, the canonical program `A090693.P14905492316959680231` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090693 has offset 1).

The definition of A090693 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090693.P14905492316959680231

`A005574(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A090693

/-- `A005574(n+1)+1` -/
def P14905492316959680231.Spec : Prop :=
  ∀ n, P14905492316959680231.a n = A090693 (n + 1)

theorem P14905492316959680231.correct : P14905492316959680231.Spec := by
  intro n
  simp only [A090693, Nat.add_sub_cancel]

end A090693

/-! ## A090693.P11085816114560689024

`A089593(n+1)+2`
-/

namespace A090693.P11085816114560689024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1) + 2

end

end A090693.P11085816114560689024

namespace A090693

/-- `A089593(n+1)+2` -/
def P11085816114560689024.Spec : Prop :=
  ∀ n, P11085816114560689024.a n = A090693 (n + 1)

end A090693

/-! ## A090693.P9581274727263083329

`A059793(n)/2+1`
-/

namespace A090693.P9581274727263083329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059793 n : ℚ) / 2 + 1

end

end A090693.P9581274727263083329

namespace A090693

/-- `A059793(n)/2+1` -/
def P9581274727263083329.Spec : Prop :=
  ∀ n, P9581274727263083329.a n = (A090693 (n + 1) : ℚ)

end A090693

/-! ## A090693.P5595855021819897461

`ceil(sqrt(A002496(n+1)))`
-/

namespace A090693.P5595855021819897461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002496 (n + 1) : ℝ)⌉

end

end A090693.P5595855021819897461

namespace A090693

/-- `ceil(sqrt(A002496(n+1)))` -/
def P5595855021819897461.Spec : Prop :=
  ∀ n, P5595855021819897461.a n = A090693 (n + 1)

end A090693

/-! ## A090693.P12695960144012057206

`sqrt(A075408(n+1))+1`
-/

namespace A090693.P12695960144012057206
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075408 (n + 1) : ℝ) + 1

end

end A090693.P12695960144012057206

namespace A090693

/-- `sqrt(A075408(n+1))+1` -/
def P12695960144012057206.Spec : Prop :=
  ∀ n, P12695960144012057206.a n = (A090693 (n + 1) : ℝ)

end A090693

/-! ## A090693.P6425622468093836931

`A214516(n)+a(n-1)` with `a(0)=2`
-/

namespace A090693.P6425622468093836931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A214516 n + a (n - 1)

end

end A090693.P6425622468093836931

namespace A090693

/-- `A214516(n)+a(n-1)` -/
def P6425622468093836931.Spec : Prop :=
  ∀ n, P6425622468093836931.a n = A090693 (n + 1)

end A090693

/-! ## A090693.P6086781134281025066

`2*A001912(n+1)-A206400(n+1)`
-/

namespace A090693.P6086781134281025066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (n + 1) - A206400 (n + 1)

end

end A090693.P6086781134281025066

namespace A090693

/-- `2*A001912(n+1)-A206400(n+1)` -/
def P6086781134281025066.Spec : Prop :=
  ∀ n, P6086781134281025066.a n = A090693 (n + 1)

end A090693

/-! ## A090693.P4819087738413175097

`∑[A214516(n+1)]+2-A214516(n+1)`
-/

namespace A090693.P4819087738413175097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A214516 (n + 1))

end

end A090693.P4819087738413175097

namespace A090693

/-- `∑[A214516(n+1)]+2-A214516(n+1)` -/
def P4819087738413175097.Spec : Prop :=
  ∀ n, P4819087738413175097.a n = A090693 (n + 1)

end A090693

/-! ## A090693.P2369590951398367357

`(A382617(n+1)+A002496(n+1))/A002496(n+1)`
-/

namespace A090693.P2369590951398367357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382617 (n + 1) + A002496 (n + 1) : ℚ) / (A002496 (n + 1) : ℚ)

end

end A090693.P2369590951398367357

namespace A090693

/-- `(A382617(n+1)+A002496(n+1))/A002496(n+1)` -/
def P2369590951398367357.Spec : Prop :=
  ∀ n, P2369590951398367357.a n = (A090693 (n + 1) : ℚ)

end A090693

/-! ## A090693.P12270995764228842720

`ceil(sqrt(A163588(n+2)))`
-/

namespace A090693.P12270995764228842720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A163588 (n + 2) : ℝ)⌉

end

end A090693.P12270995764228842720

namespace A090693

/-- `ceil(sqrt(A163588(n+2)))` -/
def P12270995764228842720.Spec : Prop :=
  ∀ n, P12270995764228842720.a n = A090693 (n + 1)

end A090693

/-! ## A090693.P12920800151016276268

`eq[1, A295405(n+1)]+2`
-/

namespace A090693.P12920800151016276268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A090693.P12920800151016276268

namespace A090693

/-- `eq[1, A295405(n+1)]+2` -/
def P12920800151016276268.Spec : Prop :=
  ∀ n, (P12920800151016276268.a n : ℤ) = A090693 (n + 1)

end A090693

/-! ## A090693.P14003373875344372227

`record[gcd(n+2, A249122(n+1))]`
-/

namespace A090693.P14003373875344372227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A249122 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090693.P14003373875344372227

namespace A090693

/-- `record[gcd(n+2, A249122(n+1))]` -/
def P14003373875344372227.Spec : Prop :=
  ∀ n, (P14003373875344372227.a n : ℤ) = A090693 (n + 1)

end A090693

/-! ## A090693.P13969114672135136516

`floor(sqrt(A168024(n)))+1`
-/

namespace A090693.P13969114672135136516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A168024 n) + 1

end

end A090693.P13969114672135136516

namespace A090693

/-- `floor(sqrt(A168024(n)))+1` -/
def P13969114672135136516.Spec : Prop :=
  ∀ n, P13969114672135136516.a n = A090693 (n + 1)

end A090693

/-! ## A090693.P9275596976797792039

`eq[1, A053000(n)]+1`
-/

namespace A090693.P9275596976797792039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090693.P9275596976797792039

namespace A090693

/-- `eq[1, A053000(n)]+1` -/
def P9275596976797792039.Spec : Prop :=
  ∀ n, (P9275596976797792039.a n : ℤ) = A090693 (n + 1)

end A090693

/-! ## A090693.P16070694305016119111

`eq[1, A193330(n)]+1`
-/

namespace A090693.P16070694305016119111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090693.P16070694305016119111

namespace A090693

/-- `eq[1, A193330(n)]+1` -/
def P16070694305016119111.Spec : Prop :=
  ∀ n, (P16070694305016119111.a n : ℤ) = A090693 (n + 1)

end A090693

/-! ## A090693.P17440025995640483253

`eq[1, A284376(n)]+1`
-/

namespace A090693.P17440025995640483253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090693.P17440025995640483253

namespace A090693

/-- `eq[1, A284376(n)]+1` -/
def P17440025995640483253.Spec : Prop :=
  ∀ n, (P17440025995640483253.a n : ℤ) = A090693 (n + 1)

end A090693

/-! ## A090693.P10447008050124690220

`eq[2, A193432(n)]+1`
-/

namespace A090693.P10447008050124690220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090693.P10447008050124690220

namespace A090693

/-- `eq[2, A193432(n)]+1` -/
def P10447008050124690220.Spec : Prop :=
  ∀ n, (P10447008050124690220.a n : ℤ) = A090693 (n + 1)

end A090693

/-! ## A090693.P7628949308689969460

`eq[2, A278162(n)]+1`
-/

namespace A090693.P7628949308689969460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090693.P7628949308689969460

namespace A090693

/-- `eq[2, A278162(n)]+1` -/
def P7628949308689969460.Spec : Prop :=
  ∀ n, (P7628949308689969460.a n : ℤ) = A090693 (n + 1)

end A090693

/-! ## A090693.P18233655940515965720

`record[A247339(n+1)+1]`
-/

namespace A090693.P18233655940515965720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090693.P18233655940515965720

namespace A090693

/-- `record[A247339(n+1)+1]` -/
def P18233655940515965720.Spec : Prop :=
  ∀ n, P18233655940515965720.a n = A090693 (n + 1)

end A090693

/-! ## A090693.P8604605342375848421

`eq[n², A333169(n)]+1`
-/

namespace A090693.P8604605342375848421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090693.P8604605342375848421

namespace A090693

/-- `eq[n², A333169(n)]+1` -/
def P8604605342375848421.Spec : Prop :=
  ∀ n, (P8604605342375848421.a n : ℤ) = A090693 (n + 1)

end A090693

/-!
# A090694: Number of permutations with self-conjugate cycle types.

The programs for A090694, there is no canonical definition to state claims against.
-/

/-! ## A090694.P12931152495682232719

`A340598(n+1)*A341052(A000079(n))`
-/

namespace A090694.P12931152495682232719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340598 (n + 1) * A341052 (A000079 n).toNat

end

end A090694.P12931152495682232719

/-! ## A090694.P18248902417292690641

`A205825(n+1)%A000726(A277575(n+1))`
-/

namespace A090694.P18248902417292690641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205825 (n + 1)) (A000726 (A277575 (n + 1)).toNat)

end

end A090694.P18248902417292690641

/-!
# A090695: Integers which are not the sum of 2 integers A and B with AB+1 and AB-1 both primes. In other words, the product cannot be the middle integer of a Twin Prime pair.

The programs for A090695, there is no canonical definition to state claims against.
-/

/-! ## A090695.P4859926305931064664

`eq[0, A091182(n+1)]+1`
-/

namespace A090695.P4859926305931064664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091182 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090695.P4859926305931064664

/-! ## A090695.P12957253207060182962

`record[gcd(A000027(n+1), A091182(n+1))]`
-/

namespace A090695.P12957253207060182962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A091182 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090695.P12957253207060182962

/-! ## A090695.P6259892434046217485

`eq[A000007(n), A091182(A028310(n))]`
-/

namespace A090695.P6259892434046217485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091182 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090695.P6259892434046217485

/-! ## A090695.P6432231000837384059

`eq[A000038(n), A091182(A028310(n))]`
-/

namespace A090695.P6432231000837384059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091182 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090695.P6432231000837384059

/-! ## A090695.P3218085801209439718

`eq[A000007(n), A091182(A065033(2*n))]`
-/

namespace A090695.P3218085801209439718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091182 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090695.P3218085801209439718

/-!
# A090696: Numbers k such that k^2 - 11 is a prime.

The programs for A090696, there is no canonical definition to state claims against.
-/

/-! ## A090696.P17757868889776833172

`2*A091271(n+1)`
-/

namespace A090696.P17757868889776833172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091271 (n + 1)

end

end A090696.P17757868889776833172

/-! ## A090696.P17326362574828977295

`sqrt(A091272(n+1)+11)`
-/

namespace A090696.P17326362574828977295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A091272 (n + 1) + 11 : ℝ)

end

end A090696.P17326362574828977295

/-! ## A090696.P15647333666670053212

`A091271(A000027(n+1))+A091271(n+1)`
-/

namespace A090696.P15647333666670053212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091271 (A000027 (n + 1)).toNat + A091271 (n + 1)

end

end A090696.P15647333666670053212

/-! ## A090696.P984204270499888496

`A091271(n+1)+A091271(n+1)/A001222(A198273(n+1))`
-/

namespace A090696.P984204270499888496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091271 (n + 1) : ℚ) + (A091271 (n + 1) : ℚ) / (A001222 (A198273 (n + 1)).toNat : ℚ)

end

end A090696.P984204270499888496

/-! ## A090696.P3220052476608909997

`A000265(A091271(n+1)+A091271(n+1)+1)-1`
-/

namespace A090696.P3220052476608909997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A091271 (n + 1) + A091271 (n + 1) + 1).toNat - 1

end

end A090696.P3220052476608909997

/-! ## A090696.P14887564812735311725

`A004277(A091271(n+1))`
-/

namespace A090696.P14887564812735311725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A091271 (n + 1)).toNat

end

end A090696.P14887564812735311725

/-! ## A090696.P11311774881745635794

`sqrt(p?[n²-11]+11)`
-/

namespace A090696.P11311774881745635794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 11

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 11 : ℝ)

end

end A090696.P11311774881745635794

/-!
# A090697: Numbers n such that n^2/2 - 1 is a prime.

The programs for A090697, there is no canonical definition to state claims against.
-/

/-! ## A090697.P2512729570371427522

`2*A066049(n+1)`
-/

namespace A090697.P2512729570371427522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066049 (n + 1)

end

end A090697.P2512729570371427522

/-! ## A090697.P7023835052389486843

`A110558(n+1)/2`
-/

namespace A090697.P7023835052389486843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110558 (n + 1) : ℚ) / 2

end

end A090697.P7023835052389486843

/-! ## A090697.P4513155705628531926

`ceil(A066436(n+1)/A066049(n+1))`
-/

namespace A090697.P4513155705628531926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066436 (n + 1) : ℚ) / (A066049 (n + 1) : ℚ)⌉

end

end A090697.P4513155705628531926

/-! ## A090697.P12102195804709123806

`A066049(A000027(n+1))+A066049(n+1)`
-/

namespace A090697.P12102195804709123806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (A000027 (n + 1)).toNat + A066049 (n + 1)

end

end A090697.P12102195804709123806

/-! ## A090697.P359163783810509472

`A110558(n+1)-A066049(n+1)-A066049(n+1)`
-/

namespace A090697.P359163783810509472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110558 (n + 1) - A066049 (n + 1) - A066049 (n + 1)

end

end A090697.P359163783810509472

/-! ## A090697.P688405333980631260

`A066049(n+1)+record[A066049(A003602(n+1))]`
-/

namespace A090697.P688405333980631260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090697.P688405333980631260

/-! ## A090697.P18083458488878469114

`A066049(n+1)+record[A066049(A032742(n+1))]`
-/

namespace A090697.P18083458488878469114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090697.P18083458488878469114

/-! ## A090697.P15042130789154474665

`2*eq[2, A359438(n)]`
-/

namespace A090697.P15042130789154474665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090697.P15042130789154474665

/-! ## A090697.P1534447109144819603

`2*eq[2, A230362(n+2)]`
-/

namespace A090697.P1534447109144819603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090697.P1534447109144819603

/-! ## A090697.P7284009321908871559

`A004277(A066049(n+1))`
-/

namespace A090697.P7284009321908871559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A066049 (n + 1)).toNat

end

end A090697.P7284009321908871559

/-! ## A090697.P11504536810697164854

`A005843(eq[2, A230362(n+2)])`
-/

namespace A090697.P11504536810697164854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090697.P11504536810697164854

/-! ## A090697.P879314254412098569

`A103517(eq[2, A230362(n+1)]-2)`
-/

namespace A090697.P879314254412098569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2)

end

end A090697.P879314254412098569

/-! ## A090697.P18338535699109284707

`2*A160697(n+2)`
-/

namespace A090697.P18338535699109284707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160697 (n + 2)

end

end A090697.P18338535699109284707

/-! ## A090697.P5578549896099487734

`A004277(A160697(n+2))`
-/

namespace A090697.P5578549896099487734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A160697 (n + 2)).toNat

end

end A090697.P5578549896099487734

/-! ## A090697.P7954258021265943693

`A160697(n+2)+A066049(n+1)`
-/

namespace A090697.P7954258021265943693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160697 (n + 2) + A066049 (n + 1)

end

end A090697.P7954258021265943693

/-! ## A090697.P985784830052589021

`A110558(n+1)-A160697(n+2)-A160697(n+2)`
-/

namespace A090697.P985784830052589021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110558 (n + 1) - A160697 (n + 2) - A160697 (n + 2)

end

end A090697.P985784830052589021

/-! ## A090697.P13599337068953036932

`A029578(A066049(n+1)+A066049(n+1)+1)`
-/

namespace A090697.P13599337068953036932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A066049 (n + 1) + (A066049 (n + 1) + 1)).toNat

end

end A090697.P13599337068953036932

/-! ## A090697.P16338632495516558910

`A060000(A066049(n+1)+A066049(n+1)+1)`
-/

namespace A090697.P16338632495516558910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A066049 (n + 1) + (A066049 (n + 1) + 1)).toNat

end

end A090697.P16338632495516558910

/-! ## A090697.P9740249854681141670

`A001281(A110558(n+1))`
-/

namespace A090697.P9740249854681141670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A110558 (n + 1)).toNat

end

end A090697.P9740249854681141670

/-!
# A090698: Primes of the form 2*n^2+1.

The programs for A090698, there is no canonical definition to state claims against.
-/

/-! ## A090698.P16423917677486760595

`2*A236767(n+1)-1`
-/

namespace A090698.P16423917677486760595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236767 (n + 1) - 1

end

end A090698.P16423917677486760595

/-! ## A090698.P15716408658579465920

`2*A089001(n+1)²+1`
-/

namespace A090698.P15716408658579465920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089001 (n + 1) ^ 2 + 1

end

end A090698.P15716408658579465920

/-! ## A090698.P17157105430799698661

`A236767(n+1)+A089001(n+1)²`
-/

namespace A090698.P17157105430799698661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236767 (n + 1) + A089001 (n + 1) ^ 2

end

end A090698.P17157105430799698661

/-! ## A090698.P4533983870755428966

`A008836(A171637(n+2))+2*A236767(n+1)`
-/

namespace A090698.P4533983870755428966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A171637 (n + 2)).toNat + 2 * A236767 (n + 1)

end

end A090698.P4533983870755428966

/-! ## A090698.P17082866946689886854

`A058331(A089001(n+1))`
-/

namespace A090698.P17082866946689886854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (A089001 (n + 1)).toNat

end

end A090698.P17082866946689886854

/-! ## A090698.P2425010027129935393

`A058331(floor(sqrt(A236767(n+1))))`
-/

namespace A090698.P2425010027129935393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (Int.sqrt (A236767 (n + 1))).toNat

end

end A090698.P2425010027129935393

/-! ## A090698.P11980421129459239024

`∩[A249410(n+1), A058331(n)]`
-/

namespace A090698.P11980421129459239024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090698.P11980421129459239024

/-! ## A090698.P18251236156076526740

`∩[A256917(n+1), A058331(n)]`
-/

namespace A090698.P18251236156076526740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090698.P18251236156076526740

/-! ## A090698.P4767023592606752581

`∩[A256917(n+1), A056220(n)+2]`
-/

namespace A090698.P4767023592606752581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090698.P4767023592606752581

/-! ## A090698.P3817259731521079384

`∩[A155946(n+2)+2, A256917(n+2)]`
-/

namespace A090698.P3817259731521079384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155946 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090698.P3817259731521079384

/-! ## A090698.P17214698399362939361

`∩[A256917(n+1), A118002(n)]`
-/

namespace A090698.P17214698399362939361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118002 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090698.P17214698399362939361

/-! ## A090698.P9777638126412120242

`∩[A031940(n+1), A249410(n+1)]`
-/

namespace A090698.P9777638126412120242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090698.P9777638126412120242

/-! ## A090698.P5836389654853519257

`∩[A031940(n+1), A256917(n+1)]`
-/

namespace A090698.P5836389654853519257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090698.P5836389654853519257

/-! ## A090698.P28353512773698846

`∩[A080827(n+1), A256917(n+1)]`
-/

namespace A090698.P28353512773698846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090698.P28353512773698846

/-! ## A090698.P12209429887237466297

`∩[A074148(n+1)+2, A256917(n+1)]`
-/

namespace A090698.P12209429887237466297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090698.P12209429887237466297

/-! ## A090698.P10809740550799502389

`∩[A194274(n+1)-n, A256917(n+2)]`
-/

namespace A090698.P10809740550799502389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090698.P10809740550799502389

