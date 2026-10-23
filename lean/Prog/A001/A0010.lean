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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A001000: a(n) = least m such that if a/b < c/d where a,b,c,d are integers in [0,n], then a/b < k/m < c/d for some integer k.

The programs for A001000, the canonical program `A001000.P11683531770071818407` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001000 has offset 1).

The definition of A001000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001000.P1680990040494512457

`A033638(∑[2-char[A033638(n)]])`
-/

namespace A001000.P1680990040494512457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001000.P1680990040494512457

namespace A001000

/-- `A033638(∑[2-char[A033638(n)]])` -/
def P1680990040494512457.Spec : Prop :=
  ∀ n, P1680990040494512457.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P11683531770071818407

`A033638(A083479(n)+1+n)+C(2, n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001000

/-- `A033638(A083479(n)+1+n)+C(2, n+2)` -/
def P11683531770071818407.Spec : Prop :=
  ∀ n, P11683531770071818407.a n = A001000 (n + 1)

theorem P11683531770071818407.correct : P11683531770071818407.Spec := by
  intro n
  simp only [A001000, Nat.add_sub_cancel]

end A001000

/-! ## A001000.P11091672774734772267

`A033638(A254667(n+1)+A083479(n))`
-/

namespace A001000.P11091672774734772267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A254667 (n + 1) + A083479 n).toNat

end

end A001000.P11091672774734772267

namespace A001000

/-- `A033638(A254667(n+1)+A083479(n))` -/
def P11091672774734772267.Spec : Prop :=
  ∀ n, P11091672774734772267.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P4884112813712690542

`A033638(A083479(n)+1+n)+A000007(n)`
-/

namespace A001000.P4884112813712690542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A083479 n + 1 + (n : ℤ)).toNat + A000007 n

end

end A001000.P4884112813712690542

namespace A001000

/-- `A033638(A083479(n)+1+n)+A000007(n)` -/
def P4884112813712690542.Spec : Prop :=
  ∀ n, P4884112813712690542.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P16828464737419195970

`A071111(A254667(n+1))-A000007(n)`
-/

namespace A001000.P16828464737419195970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (A254667 (n + 1)).toNat - A000007 n

end

end A001000.P16828464737419195970

namespace A001000

/-- `A071111(A254667(n+1))-A000007(n)` -/
def P16828464737419195970.Spec : Prop :=
  ∀ n, P16828464737419195970.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P3193635474969538296

`A071111(A254667(n+1))-A036987(2*n)`
-/

namespace A001000.P3193635474969538296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (A254667 (n + 1)).toNat - A036987 (2 * n)

end

end A001000.P3193635474969538296

namespace A001000

/-- `A071111(A254667(n+1))-A036987(2*n)` -/
def P3193635474969538296.Spec : Prop :=
  ∀ n, P3193635474969538296.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P95070596536299700

`A071111(A254667(n+1))-A076141(7*n)`
-/

namespace A001000.P95070596536299700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (A254667 (n + 1)).toNat - A076141 (7 * n)

end

end A001000.P95070596536299700

namespace A001000

/-- `A071111(A254667(n+1))-A076141(7*n)` -/
def P95070596536299700.Spec : Prop :=
  ∀ n, P95070596536299700.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P5328487348875879181

`A071111(A254667(n+1))-A240025(A033638(n+2))`
-/

namespace A001000.P5328487348875879181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071111 (A254667 (n + 1)).toNat - A240025 (A033638 (n + 2)).toNat

end

end A001000.P5328487348875879181

namespace A001000

/-- `A071111(A254667(n+1))-A240025(A033638(n+2))` -/
def P5328487348875879181.Spec : Prop :=
  ∀ n, P5328487348875879181.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P11659832767430286466

`A000037(A033638(A083479(n)+n))`
-/

namespace A001000.P11659832767430286466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A033638 (A083479 n + (n : ℤ)).toNat).toNat

end

end A001000.P11659832767430286466

namespace A001000

/-- `A000037(A033638(A083479(n)+n))` -/
def P11659832767430286466.Spec : Prop :=
  ∀ n, P11659832767430286466.a n = A001000 (n + 1)

end A001000

/-! ## A001000.P2459861828266365239

`A033638(A248333(n)+2+n)`
-/

namespace A001000.P2459861828266365239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A248333 n + 2 + (n : ℤ)).toNat

end

end A001000.P2459861828266365239

namespace A001000

/-- `A033638(A248333(n)+2+n)` -/
def P2459861828266365239.Spec : Prop :=
  ∀ n, P2459861828266365239.a n = A001000 (n + 1)

end A001000

/-!
# A001001: Number of sublattices of index n in generic 3-dimensional lattice.

The programs for A001001, the canonical program `A001001.P14221911591443847044` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001001 has offset 1).

The definition of A001001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001001.P6269627772038116092

`∑{d}[n+1, A064987(#)]`
-/

namespace A001001.P6269627772038116092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d

end

end A001001.P6269627772038116092

namespace A001001

/-- `∑{d}[n+1, A064987(#)]` -/
def P6269627772038116092.Spec : Prop :=
  ∀ n, P6269627772038116092.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P14221911591443847044

`∑{d}[n+1, #*A000203(#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001001

/-- `∑{d}[n+1, #*A000203(#)]` -/
def P14221911591443847044.Spec : Prop :=
  ∀ n, P14221911591443847044.a n = A001001 (n + 1)

theorem P14221911591443847044.correct : P14221911591443847044.Spec := by
  intro n
  simp only [A001001, Nat.add_sub_cancel]

end A001001

/-! ## A001001.P11809585764292447900

`∑{d}[n+1, #*(A001065(#)+#)]`
-/

namespace A001001.P11809585764292447900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A001065 d + (d : ℤ))

end

end A001001.P11809585764292447900

namespace A001001

/-- `∑{d}[n+1, #*(A001065(#)+#)]` -/
def P11809585764292447900.Spec : Prop :=
  ∀ n, P11809585764292447900.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P6635441918701484146

`∑{d}[n+1, (n+1)/#*A001157(#)]`
-/

namespace A001001.P6635441918701484146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A001157 d : ℚ)

end

end A001001.P6635441918701484146

namespace A001001

/-- `∑{d}[n+1, (n+1)/#*A001157(#)]` -/
def P6635441918701484146.Spec : Prop :=
  ∀ n, P6635441918701484146.a n = (A001001 (n + 1) : ℚ)

end A001001

/-! ## A001001.P16837011035914430298

`A245484(n+1)+A064987(n+1)`
-/

namespace A001001.P16837011035914430298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245484 (n + 1) + A064987 (n + 1)

end

end A001001.P16837011035914430298

namespace A001001

/-- `A245484(n+1)+A064987(n+1)` -/
def P16837011035914430298.Spec : Prop :=
  ∀ n, P16837011035914430298.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P3188105859189060626

`A035316(n+1)*A365346(n+1)`
-/

namespace A001001.P3188105859189060626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) * A365346 (n + 1)

end

end A001001.P3188105859189060626

namespace A001001

/-- `A035316(n+1)*A365346(n+1)` -/
def P3188105859189060626.Spec : Prop :=
  ∀ n, P3188105859189060626.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P15759838490346709170

`A245773(n+1)+2*A245484(n+1)`
-/

namespace A001001.P15759838490346709170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245773 (n + 1) + 2 * A245484 (n + 1)

end

end A001001.P15759838490346709170

namespace A001001

/-- `A245773(n+1)+2*A245484(n+1)` -/
def P15759838490346709170.Spec : Prop :=
  ∀ n, P15759838490346709170.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P14960971618251792155

`2*A064987(n+1)-A245773(n+1)`
-/

namespace A001001.P14960971618251792155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064987 (n + 1) - A245773 (n + 1)

end

end A001001.P14960971618251792155

namespace A001001

/-- `2*A064987(n+1)-A245773(n+1)` -/
def P14960971618251792155.Spec : Prop :=
  ∀ n, P14960971618251792155.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P6438860407121274862

`∑{d}[n+1, A000010(#)*A007433((n+1)/#)]`
-/

namespace A001001.P6438860407121274862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007433 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P6438860407121274862

namespace A001001

/-- `∑{d}[n+1, A000010(#)*A007433((n+1)/#)]` -/
def P6438860407121274862.Spec : Prop :=
  ∀ n, P6438860407121274862.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P18039300889795116113

`∑{d}[n+1, A007429(#)*A007434((n+1)/#)]`
-/

namespace A001001.P18039300889795116113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P18039300889795116113

namespace A001001

/-- `∑{d}[n+1, A007429(#)*A007434((n+1)/#)]` -/
def P18039300889795116113.Spec : Prop :=
  ∀ n, P18039300889795116113.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P11450900465094134136

`∑{d}[n+1, A000082(#)*A035316((n+1)/#)]`
-/

namespace A001001.P11450900465094134136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P11450900465094134136

namespace A001001

/-- `∑{d}[n+1, A000082(#)*A035316((n+1)/#)]` -/
def P11450900465094134136.Spec : Prop :=
  ∀ n, P11450900465094134136.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P5576466631026048547

`∑{d}[n+1, A002618(#)*A060640((n+1)/#)]`
-/

namespace A001001.P5576466631026048547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P5576466631026048547

namespace A001001

/-- `∑{d}[n+1, A002618(#)*A060640((n+1)/#)]` -/
def P5576466631026048547.Spec : Prop :=
  ∀ n, P5576466631026048547.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P11499373112508646832

`∑{d}[n+1, A000005(#)*A069097((n+1)/#)]`
-/

namespace A001001.P11499373112508646832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P11499373112508646832

namespace A001001

/-- `∑{d}[n+1, A000005(#)*A069097((n+1)/#)]` -/
def P11499373112508646832.Spec : Prop :=
  ∀ n, P11499373112508646832.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P7980481086032551348

`∑{d}[n+1, A010057(#)*A060983((n+1)/#)]`
-/

namespace A001001.P7980481086032551348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010057 d * A060983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P7980481086032551348

namespace A001001

/-- `∑{d}[n+1, A010057(#)*A060983((n+1)/#)]` -/
def P7980481086032551348.Spec : Prop :=
  ∀ n, P7980481086032551348.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P8421916492168889851

`∑{d}[n+1, A000593(#)*A091519((n+1)/#)]`
-/

namespace A001001.P8421916492168889851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A091519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P8421916492168889851

namespace A001001

/-- `∑{d}[n+1, A000593(#)*A091519((n+1)/#)]` -/
def P8421916492168889851.Spec : Prop :=
  ∀ n, P8421916492168889851.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P2960199774975198879

`∑{d}[n+1, A038040(#)*A057660((n+1)/#)]`
-/

namespace A001001.P2960199774975198879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P2960199774975198879

namespace A001001

/-- `∑{d}[n+1, A038040(#)*A057660((n+1)/#)]` -/
def P2960199774975198879.Spec : Prop :=
  ∀ n, P2960199774975198879.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P1864913191438120364

`∑{d}[n+1, A034761(#)*A063445((n+1)/#)]`
-/

namespace A001001.P1864913191438120364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P1864913191438120364

namespace A001001

/-- `∑{d}[n+1, A034761(#)*A063445((n+1)/#)]` -/
def P1864913191438120364.Spec : Prop :=
  ∀ n, P1864913191438120364.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P12611580987373288963

`∑{d}[n+1, A061019(#)*A072861((n+1)/#)]`
-/

namespace A001001.P12611580987373288963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A072861 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P12611580987373288963

namespace A001001

/-- `∑{d}[n+1, A061019(#)*A072861((n+1)/#)]` -/
def P12611580987373288963.Spec : Prop :=
  ∀ n, P12611580987373288963.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P8210865577587149411

`∑{d}[n+1, A065958(#)*A076752((n+1)/#)]`
-/

namespace A001001.P8210865577587149411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P8210865577587149411

namespace A001001

/-- `∑{d}[n+1, A065958(#)*A076752((n+1)/#)]` -/
def P8210865577587149411.Spec : Prop :=
  ∀ n, P8210865577587149411.a n = A001001 (n + 1)

end A001001

/-! ## A001001.P684910806801884737

`∑{d}[n+1, A078306(#)*A091512((n+1)/#)]`
-/

namespace A001001.P684910806801884737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078306 d * A091512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001001.P684910806801884737

namespace A001001

/-- `∑{d}[n+1, A078306(#)*A091512((n+1)/#)]` -/
def P684910806801884737.Spec : Prop :=
  ∀ n, P684910806801884737.a n = A001001 (n + 1)

end A001001

/-!
# A001002: Number of dissections of a convex (n+2)-gon into triangles and quadrilaterals by nonintersecting diagonals.

The programs for A001002, there is no canonical definition to state claims against.
-/

/-! ## A001002.P6674562677980616003

`A188111(∑[n]+1)`
-/

namespace A001002.P6674562677980616003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188111 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001002.P6674562677980616003

/-! ## A001002.P13515360667116836854

`A038112(n)/(n+1)`
-/

namespace A001002.P13515360667116836854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038112 n : ℚ) / (n + 1 : ℚ)

end

end A001002.P13515360667116836854

/-! ## A001002.P18392116535734271055

`A378289(∑[n+1]+n)`
-/

namespace A001002.P18392116535734271055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378289 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001002.P18392116535734271055

/-! ## A001002.P5418591885682618677

`A037027(∑[4*n])/(n+1)`
-/

namespace A001002.P5418591885682618677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037027 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A001002.P5418591885682618677

/-! ## A001002.P18281230009903545686

`A038137(2*(n²+n))/(n+1)`
-/

namespace A001002.P18281230009903545686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038137 (2 * (n ^ 2 + n)) : ℚ) / (n + 1 : ℚ)

end

end A001002.P18281230009903545686

/-! ## A001002.P14203823645557643079

`record[gcd(A037012(n), A037027(n))]/(n+1)`
-/

namespace A001002.P14203823645557643079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A037027 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A001002.P14203823645557643079

/-! ## A001002.P4532535407117389

`A155161(2*(n+1)²)/(n+1)`
-/

namespace A001002.P4532535407117389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155161 (2 * (n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A001002.P4532535407117389

/-!
# A001003: Schroeder's second problem (generalized parentheses); also called super-Catalan numbers or little Schroeder numbers.

The programs for A001003, the canonical program `A001003.P3197254907760158298` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001003 has offset 0).

The definition of A001003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001003.P3652309286495105422

`3*a(n-1)+2*A065096(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001003.P3652309286495105422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1) + 2 * A065096 (n - 2)

end

end A001003.P3652309286495105422

namespace A001003

/-- `3*a(n-1)+2*A065096(n-2)` -/
def P3652309286495105422.Spec : Prop :=
  ∀ n, P3652309286495105422.a n = A001003 n

end A001003

/-! ## A001003.P3197254907760158298

`abs(A080243(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001003

/-- `abs(A080243(n))` -/
def P3197254907760158298.Spec : Prop :=
  ∀ n, P3197254907760158298.a n = A001003 n

theorem P3197254907760158298.correct : P3197254907760158298.Spec := by
  intro n
  simp only [A001003]

end A001003

/-! ## A001003.P3196595100042547147

`A104219(∑[n])`
-/

namespace A001003.P3196595100042547147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001003.P3196595100042547147

namespace A001003

/-- `A104219(∑[n])` -/
def P3196595100042547147.Spec : Prop :=
  ∀ n, P3196595100042547147.a n = A001003 n

end A001003

/-! ## A001003.P12560518849630693912

`A172094(∑[n])`
-/

namespace A001003.P12560518849630693912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001003.P12560518849630693912

namespace A001003

/-- `A172094(∑[n])` -/
def P12560518849630693912.Spec : Prop :=
  ∀ n, P12560518849630693912.a n = A001003 n

end A001003

/-! ## A001003.P7047031590098894582

`A186826(∑[n])`
-/

namespace A001003.P7047031590098894582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186826 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001003.P7047031590098894582

namespace A001003

/-- `A186826(∑[n])` -/
def P7047031590098894582.Spec : Prop :=
  ∀ n, P7047031590098894582.a n = A001003 n

end A001003

/-! ## A001003.P10870793147195703022

`A110440(C(n, 2))`
-/

namespace A001003.P10870793147195703022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110440 (Nat.choose n 2)

end

end A001003.P10870793147195703022

namespace A001003

/-- `A110440(C(n, 2))` -/
def P10870793147195703022.Spec : Prop :=
  ∀ n, P10870793147195703022.a n = A001003 n

end A001003

/-! ## A001003.P14615512828921270511

`A011117(∑[n]+n)`
-/

namespace A001003.P14615512828921270511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001003.P14615512828921270511

namespace A001003

/-- `A011117(∑[n]+n)` -/
def P14615512828921270511.Spec : Prop :=
  ∀ n, P14615512828921270511.a n = A001003 n

end A001003

/-! ## A001003.P16736753799472244429

`A110440(∑[n]-n)`
-/

namespace A001003.P16736753799472244429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110440 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A001003.P16736753799472244429

namespace A001003

/-- `A110440(∑[n]-n)` -/
def P16736753799472244429.Spec : Prop :=
  ∀ n, P16736753799472244429.a n = A001003 n

end A001003

/-! ## A001003.P17569349366097554438

`ceil(∑[A006319(n)/2])`
-/

namespace A001003.P17569349366097554438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006319 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A001003.P17569349366097554438

namespace A001003

/-- `ceil(∑[A006319(n)/2])` -/
def P17569349366097554438.Spec : Prop :=
  ∀ n, P17569349366097554438.a n = A001003 n

end A001003

/-! ## A001003.P8196989413414643837

`or(1, A011117(A000096(n)))`
-/

namespace A001003.P8196989413414643837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A011117 (A000096 n).toNat)

end

end A001003.P8196989413414643837

namespace A001003

/-- `or(1, A011117(A000096(n)))` -/
def P8196989413414643837.Spec : Prop :=
  ∀ n, P8196989413414643837.a n = A001003 n

end A001003

/-! ## A001003.P4175924894152436615

`A238112(n)+A155069(n)`
-/

namespace A001003.P4175924894152436615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238112 n + A155069 n

end

end A001003.P4175924894152436615

namespace A001003

/-- `A238112(n)+A155069(n)` -/
def P4175924894152436615.Spec : Prop :=
  ∀ n, P4175924894152436615.a n = A001003 n

end A001003

/-! ## A001003.P6211240354158747582

`A006319(n)-A238112(n)`
-/

namespace A001003.P6211240354158747582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n - A238112 n

end

end A001003.P6211240354158747582

namespace A001003

/-- `A006319(n)-A238112(n)` -/
def P6211240354158747582.Spec : Prop :=
  ∀ n, P6211240354158747582.a n = A001003 n

end A001003

/-! ## A001003.P7465347575555634844

`A033999(n)*A080243(n)`
-/

namespace A001003.P7465347575555634844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A080243 n

end

end A001003.P7465347575555634844

namespace A001003

/-- `A033999(n)*A080243(n)` -/
def P7465347575555634844.Spec : Prop :=
  ∀ n, P7465347575555634844.a n = A001003 n

end A001003

/-! ## A001003.P16128246550614060526

`gcd(A000038(n), A080243(n))`
-/

namespace A001003.P16128246550614060526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A080243 n)

end

end A001003.P16128246550614060526

namespace A001003

/-- `gcd(A000038(n), A080243(n))` -/
def P16128246550614060526.Spec : Prop :=
  ∀ n, (P16128246550614060526.a n : ℤ) = A001003 n

end A001003

/-! ## A001003.P453986578124548684

`lcm(A007318(∑[n]), A080243(n))`
-/

namespace A001003.P453986578124548684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A080243 n)

end

end A001003.P453986578124548684

namespace A001003

/-- `lcm(A007318(∑[n]), A080243(n))` -/
def P453986578124548684.Spec : Prop :=
  ∀ n, (P453986578124548684.a n : ℤ) = A001003 n

end A001003

/-! ## A001003.P15298421920794872535

`ceil(A006318(n)/2)`
-/

namespace A001003.P15298421920794872535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006318 n : ℚ) / 2⌉

end

end A001003.P15298421920794872535

namespace A001003

/-- `ceil(A006318(n)/2)` -/
def P15298421920794872535.Spec : Prop :=
  ∀ n, P15298421920794872535.a n = A001003 n

end A001003

/-! ## A001003.P10123236421506186380

`round(A238111(n)/4)`
-/

namespace A001003.P10123236421506186380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A238111 n : ℚ) / 4)

end

end A001003.P10123236421506186380

namespace A001003

/-- `round(A238111(n)/4)` -/
def P10123236421506186380.Spec : Prop :=
  ∀ n, P10123236421506186380.a n = A001003 n

end A001003

/-! ## A001003.P17185019927540785603

`Δ[floor(A176006(n)/2)]`
-/

namespace A001003.P17185019927540785603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176006 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001003.P17185019927540785603

namespace A001003

/-- `Δ[floor(A176006(n)/2)]` -/
def P17185019927540785603.Spec : Prop :=
  ∀ n, P17185019927540785603.a n = A001003 n

end A001003

/-! ## A001003.P10389783110176414291

`floor(A025240(n+1)/2)`
-/

namespace A001003.P10389783110176414291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025240 (n + 1) : ℚ) / 2⌋

end

end A001003.P10389783110176414291

namespace A001003

/-- `floor(A025240(n+1)/2)` -/
def P10389783110176414291.Spec : Prop :=
  ∀ n, P10389783110176414291.a n = A001003 n

end A001003

/-! ## A001003.P7469075047028359196

`floor(A035011(n)/2)+1`
-/

namespace A001003.P7469075047028359196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035011 n : ℚ) / 2⌋ + 1

end

end A001003.P7469075047028359196

namespace A001003

/-- `floor(A035011(n)/2)+1` -/
def P7469075047028359196.Spec : Prop :=
  ∀ n, P7469075047028359196.a n = A001003 n

end A001003

/-!
# A001004: Number of nonequivalent dissections of an (n+2)-gon by nonintersecting diagonals up to rotation and reflection.

The programs for A001004, there is no canonical definition to state claims against.
-/

/-! ## A001004.P13667732049064993682

`A220413(2*A149049(n))`
-/

namespace A001004.P13667732049064993682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (2 * A149049 n).toNat

end

end A001004.P13667732049064993682

/-! ## A001004.P18048587289781972355

`A220413(A149049(n)+A149049(n))`
-/

namespace A001004.P18048587289781972355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A149049 n + A149049 n).toNat

end

end A001004.P18048587289781972355

/-!
# A001005: Number of ways of partitioning n points on a circle into subsets only of sizes 2 and 3.

The programs for A001005, there is no canonical definition to state claims against.
-/

/-! ## A001005.P1156044893576602735

`abs(A321198(∑[n]))`
-/

namespace A001005.P1156044893576602735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321198 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A001005.P1156044893576602735

/-! ## A001005.P10421854641738948312

`A033999(n)*A321198(∑[n])`
-/

namespace A001005.P10421854641738948312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A321198 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001005.P10421854641738948312

/-! ## A001005.P16738325062818592887

`lcm(A153881(n+1), A321198(∑[n]))`
-/

namespace A001005.P16738325062818592887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A321198 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A001005.P16738325062818592887

/-! ## A001005.P1229355858429786335

`∑[A002448(n²)]*A321198(∑[n])`
-/

namespace A001005.P1229355858429786335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A321198 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A001005.P1229355858429786335

/-! ## A001005.P1908458355578608641

`A123578(A266549(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A001005.P1908458355578608641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123578 (A266549 (n + 1)).toNat - a (n - 1)

end

end A001005.P1908458355578608641

/-!
# A001006: Motzkin numbers: number of ways of drawing any number of nonintersecting chords joining n (labeled) points on a circle.

The programs for A001006, the canonical program `A001006.P11199602840237397285` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001006 has offset 0).

The definition of A001006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001006.P15030891595626115815

`a(n-1)+A002026(n-1)` with `a(0)=1`
-/

namespace A001006.P15030891595626115815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A002026 (n - 1)

end

end A001006.P15030891595626115815

namespace A001006

/-- `a(n-1)+A002026(n-1)` -/
def P15030891595626115815.Spec : Prop :=
  ∀ n, P15030891595626115815.a n = A001006 n

end A001006

/-! ## A001006.P13765675628973829053

`A107587(n)+A343386(n)`
-/

namespace A001006.P13765675628973829053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107587 n + A343386 n

end

end A001006.P13765675628973829053

namespace A001006

/-- `A107587(n)+A343386(n)` -/
def P13765675628973829053.Spec : Prop :=
  ∀ n, P13765675628973829053.a n = A001006 n

end A001006

/-! ## A001006.P8451646850590612468

`A005043(n)+A005043(n+1)`
-/

namespace A001006.P8451646850590612468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n + A005043 (n + 1)

end

end A001006.P8451646850590612468

namespace A001006

/-- `A005043(n)+A005043(n+1)` -/
def P8451646850590612468.Spec : Prop :=
  ∀ n, P8451646850590612468.a n = A001006 n

end A001006

/-! ## A001006.P584143560703970422

`2*A343386(n)+A343773(n)`
-/

namespace A001006.P584143560703970422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A343386 n + A343773 n

end

end A001006.P584143560703970422

namespace A001006

/-- `2*A343386(n)+A343773(n)` -/
def P584143560703970422.Spec : Prop :=
  ∀ n, P584143560703970422.a n = A001006 n

end A001006

/-! ## A001006.P16536483297808575704

`2*A107587(n)-A343773(n)`
-/

namespace A001006.P16536483297808575704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107587 n - A343773 n

end

end A001006.P16536483297808575704

namespace A001006

/-- `2*A107587(n)-A343773(n)` -/
def P16536483297808575704.Spec : Prop :=
  ∀ n, P16536483297808575704.a n = A001006 n

end A001006

/-! ## A001006.P12290249065132809486

`A007971(n+2)/2`
-/

namespace A001006.P12290249065132809486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007971 (n + 2) : ℚ) / 2

end

end A001006.P12290249065132809486

namespace A001006

/-- `A007971(n+2)/2` -/
def P12290249065132809486.Spec : Prop :=
  ∀ n, P12290249065132809486.a n = (A001006 n : ℚ)

end A001006

/-! ## A001006.P11199602840237397285

`((2*n+1)*a(n-1)+(3*n-3)*a(n-2))/(n+2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001006

/-- `((2*n+1)*a(n-1)+(3*n-3)*a(n-2))/(n+2)` -/
def P11199602840237397285.Spec : Prop :=
  ∀ n, P11199602840237397285.a n = (A001006 n : ℚ)

end A001006

/-! ## A001006.P16594436765258035513

`Δ[A097332(n)]`
-/

namespace A001006.P16594436765258035513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001006.P16594436765258035513

namespace A001006

/-- `Δ[A097332(n)]` -/
def P16594436765258035513.Spec : Prop :=
  ∀ n, P16594436765258035513.a n = A001006 n

end A001006

/-! ## A001006.P9489621435491456650

`A086246(n+2)`
-/

namespace A001006.P9489621435491456650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2)

end

end A001006.P9489621435491456650

namespace A001006

/-- `A086246(n+2)` -/
def P9489621435491456650.Spec : Prop :=
  ∀ n, P9489621435491456650.a n = A001006 n

end A001006

/-! ## A001006.P17563370325427189490

`A168049(n+2)`
-/

namespace A001006.P17563370325427189490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2)

end

end A001006.P17563370325427189490

namespace A001006

/-- `A168049(n+2)` -/
def P17563370325427189490.Spec : Prop :=
  ∀ n, P17563370325427189490.a n = A001006 n

end A001006

/-! ## A001006.P17458616429118047594

`abs(A166587(n+1))`
-/

namespace A001006.P17458616429118047594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)|

end

end A001006.P17458616429118047594

namespace A001006

/-- `abs(A166587(n+1))` -/
def P17458616429118047594.Spec : Prop :=
  ∀ n, P17458616429118047594.a n = A001006 n

end A001006

/-! ## A001006.P4408010455308570155

`abs(A168051(n+2))`
-/

namespace A001006.P4408010455308570155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168051 (n + 2)|

end

end A001006.P4408010455308570155

namespace A001006

/-- `abs(A168051(n+2))` -/
def P4408010455308570155.Spec : Prop :=
  ∀ n, P4408010455308570155.a n = A001006 n

end A001006

/-! ## A001006.P18128545950033376607

`abs(A292440(n+2))`
-/

namespace A001006.P18128545950033376607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292440 (n + 2)|

end

end A001006.P18128545950033376607

namespace A001006

/-- `abs(A292440(n+2))` -/
def P18128545950033376607.Spec : Prop :=
  ∀ n, P18128545950033376607.a n = A001006 n

end A001006

/-! ## A001006.P15353539262446474843

`∏[abs(ratio[A166587(n)])]`
-/

namespace A001006.P15353539262446474843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001006.P15353539262446474843

namespace A001006

/-- `∏[abs(ratio[A166587(n)])]` -/
def P15353539262446474843.Spec : Prop :=
  ∀ n, P15353539262446474843.a n = (A001006 n : ℚ)

end A001006

/-! ## A001006.P3306064199630239031

`∑[A002026(abs(1-n))]`
-/

namespace A001006.P3306064199630239031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001006.P3306064199630239031

namespace A001006

/-- `∑[A002026(abs(1-n))]` -/
def P3306064199630239031.Spec : Prop :=
  ∀ n, P3306064199630239031.a n = A001006 n

end A001006

/-! ## A001006.P13697860251256254145

`abs(Δ[A099323(n+1)])`
-/

namespace A001006.P13697860251256254145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001006.P13697860251256254145

namespace A001006

/-- `abs(Δ[A099323(n+1)])` -/
def P13697860251256254145.Spec : Prop :=
  ∀ n, P13697860251256254145.a n = A001006 n

end A001006

/-! ## A001006.P12112771891749264753

`abs(Δ[A366403(n+1)])`
-/

namespace A001006.P12112771891749264753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001006.P12112771891749264753

namespace A001006

/-- `abs(Δ[A366403(n+1)])` -/
def P12112771891749264753.Spec : Prop :=
  ∀ n, P12112771891749264753.a n = A001006 n

end A001006

/-! ## A001006.P2447249309075717320

`abs(Δ[A174297(n+2)])`
-/

namespace A001006.P2447249309075717320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174297 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001006.P2447249309075717320

namespace A001006

/-- `abs(Δ[A174297(n+2)])` -/
def P2447249309075717320.Spec : Prop :=
  ∀ n, P2447249309075717320.a n = A001006 n

end A001006

/-! ## A001006.P12712570782492462190

`∑[A105695(n+1)]+1`
-/

namespace A001006.P12712570782492462190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A001006.P12712570782492462190

namespace A001006

/-- `∑[A105695(n+1)]+1` -/
def P12712570782492462190.Spec : Prop :=
  ∀ n, P12712570782492462190.a n = A001006 n

end A001006

/-! ## A001006.P15218062374604864767

`A244884(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A001006.P15218062374604864767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A244884 n + a (n - 1)

end

end A001006.P15218062374604864767

namespace A001006

/-- `A244884(n)+a(n-1)` -/
def P15218062374604864767.Spec : Prop :=
  ∀ n, P15218062374604864767.a n = A001006 n

end A001006

/-!
# A001007: a(n) = ( Sum C(p,i); i=1,...,floor(2p/3) ) / p^2, where p = prime(n).

The programs for A001007, there is no canonical definition to state claims against.
-/

/-! ## A001007.P13674035552307284516

`∏{p}[A143281(3*n+1)², #]`
-/

namespace A001007.P13674035552307284516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143281 (3 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A001007.P13674035552307284516

/-!
# A001008: a(n) = numerator of harmonic number H(n) = Sum_{i=1..n} 1/i.

The programs for A001008, the canonical program `A001008.P14452720140578332173` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001008 has offset 1).

The definition of A001008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001008.P14452720140578332173

`A000254(n+1)/gcd(A000254(n+1), (n+1)!)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001008

/-- `A000254(n+1)/gcd(A000254(n+1), (n+1)!)` -/
def P14452720140578332173.Spec : Prop :=
  ∀ n, P14452720140578332173.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P16032147542221011127

`∑[1/(n+1)]*A002805(n+1)`
-/

namespace A001008.P16032147542221011127
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ)

end

end A001008.P16032147542221011127

namespace A001008

/-- `∑[1/(n+1)]*A002805(n+1)` -/
def P16032147542221011127.Spec : Prop :=
  ∀ n, P16032147542221011127.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P15583848746135393995

`A064169(n+1)+A002805(n+1)`
-/

namespace A001008.P15583848746135393995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064169 (n + 1) + A002805 (n + 1)

end

end A001008.P15583848746135393995

namespace A001008

/-- `A064169(n+1)+A002805(n+1)` -/
def P15583848746135393995.Spec : Prop :=
  ∀ n, P15583848746135393995.a n = A001008 (n + 1)

end A001008

/-! ## A001008.P17095772869751927776

`A064168(n+1)-A002805(n+1)`
-/

namespace A001008.P17095772869751927776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (n + 1) - A002805 (n + 1)

end

end A001008.P17095772869751927776

namespace A001008

/-- `A064168(n+1)-A002805(n+1)` -/
def P17095772869751927776.Spec : Prop :=
  ∀ n, P17095772869751927776.a n = A001008 (n + 1)

end A001008

/-! ## A001008.P12587658606996126229

`A060746(n+1)*A093818(n+1)`
-/

namespace A001008.P12587658606996126229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060746 (n + 1) * A093818 (n + 1)

end

end A001008.P12587658606996126229

namespace A001008

/-- `A060746(n+1)*A093818(n+1)` -/
def P12587658606996126229.Spec : Prop :=
  ∀ n, P12587658606996126229.a n = A001008 (n + 1)

end A001008

/-! ## A001008.P3845563803917649617

`A025529(n+1)/A110566(n+1)`
-/

namespace A001008.P3845563803917649617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A001008.P3845563803917649617

namespace A001008

/-- `A025529(n+1)/A110566(n+1)` -/
def P3845563803917649617.Spec : Prop :=
  ∀ n, P3845563803917649617.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P13208591230621950774

`A096617(n+1)/A120263(n+1)`
-/

namespace A001008.P13208591230621950774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (n + 1) : ℚ) / (A120263 (n + 1) : ℚ)

end

end A001008.P13208591230621950774

namespace A001008

/-- `A096617(n+1)/A120263(n+1)` -/
def P13208591230621950774.Spec : Prop :=
  ∀ n, P13208591230621950774.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P10081620377603706662

`A025529(n+1)/gcd(A003418(n), A025529(n+1))`
-/

namespace A001008.P10081620377603706662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (Int.gcd (A003418 n) (A025529 (n + 1)) : ℚ)

end

end A001008.P10081620377603706662

namespace A001008

/-- `A025529(n+1)/gcd(A003418(n), A025529(n+1))` -/
def P10081620377603706662.Spec : Prop :=
  ∀ n, P10081620377603706662.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P16107655003774315328

`A096617(n+1)/gcd(A096617(n+1), A103517(n))`
-/

namespace A001008.P16107655003774315328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (n + 1) : ℚ) / (Int.gcd (A096617 (n + 1)) (A103517 n) : ℚ)

end

end A001008.P16107655003774315328

namespace A001008

/-- `A096617(n+1)/gcd(A096617(n+1), A103517(n))` -/
def P16107655003774315328.Spec : Prop :=
  ∀ n, P16107655003774315328.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P17132442429192333232

`A002805(n+1)+A027457(n+1)/A110566(n+1)`
-/

namespace A001008.P17132442429192333232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) + (A027457 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

end

end A001008.P17132442429192333232

namespace A001008

/-- `A002805(n+1)+A027457(n+1)/A110566(n+1)` -/
def P17132442429192333232.Spec : Prop :=
  ∀ n, P17132442429192333232.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P2075773062164451855

`A002805(n+1)/A003418(n+1)*A025529(n+1)`
-/

namespace A001008.P2075773062164451855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) * (A025529 (n + 1) : ℚ)

end

end A001008.P2075773062164451855

namespace A001008

/-- `A002805(n+1)/A003418(n+1)*A025529(n+1)` -/
def P2075773062164451855.Spec : Prop :=
  ∀ n, P2075773062164451855.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P9746320341420619513

`gcd(A096617(n+1), A193758(n+2))`
-/

namespace A001008.P9746320341420619513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096617 (n + 1)) (A193758 (n + 2))

end

end A001008.P9746320341420619513

namespace A001008

/-- `gcd(A096617(n+1), A193758(n+2))` -/
def P9746320341420619513.Spec : Prop :=
  ∀ n, (P9746320341420619513.a n : ℤ) = A001008 (n + 1)

end A001008

/-! ## A001008.P6035643828056729283

`lcm(A000265(n+1), A096617(n+1))/A000265(n+1)`
-/

namespace A001008.P6035643828056729283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000265 (n + 1)) (A096617 (n + 1)) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A001008.P6035643828056729283

namespace A001008

/-- `lcm(A000265(n+1), A096617(n+1))/A000265(n+1)` -/
def P6035643828056729283.Spec : Prop :=
  ∀ n, P6035643828056729283.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P5755612756052703088

`lcm(A002547(n+1), A175441(n+1))`
-/

namespace A001008.P5755612756052703088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002547 (n + 1)) (A175441 (n + 1))

end

end A001008.P5755612756052703088

namespace A001008

/-- `lcm(A002547(n+1), A175441(n+1))` -/
def P5755612756052703088.Spec : Prop :=
  ∀ n, (P5755612756052703088.a n : ℤ) = A001008 (n + 1)

end A001008

/-! ## A001008.P2434800379721071416

`A213998(∑[n+2]-1)`
-/

namespace A001008.P2434800379721071416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A001008.P2434800379721071416

namespace A001008

/-- `A213998(∑[n+2]-1)` -/
def P2434800379721071416.Spec : Prop :=
  ∀ n, P2434800379721071416.a n = A001008 (n + 1)

end A001008

/-! ## A001008.P7634703057406895529

`A064167(n+1)/A002805(n+1)`
-/

namespace A001008.P7634703057406895529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064167 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A001008.P7634703057406895529

namespace A001008

/-- `A064167(n+1)/A002805(n+1)` -/
def P7634703057406895529.Spec : Prop :=
  ∀ n, P7634703057406895529.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P4203219227371644845

`A035048(2*(n+1))`
-/

namespace A001008.P4203219227371644845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035048 (2 * (n + 1))

end

end A001008.P4203219227371644845

namespace A001008

/-- `A035048(2*(n+1))` -/
def P4203219227371644845.Spec : Prop :=
  ∀ n, P4203219227371644845.a n = A001008 (n + 1)

end A001008

/-! ## A001008.P282362336556553972

`A002805(n+1)/A175455(n+1)*A025529(n+1)²`
-/

namespace A001008.P282362336556553972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A175455 (n + 1) : ℚ) * (A025529 (n + 1) ^ 2 : ℚ)

end

end A001008.P282362336556553972

namespace A001008

/-- `A002805(n+1)/A175455(n+1)*A025529(n+1)²` -/
def P282362336556553972.Spec : Prop :=
  ∀ n, P282362336556553972.a n = (A001008 (n + 1) : ℚ)

end A001008

/-! ## A001008.P5303844263714854785

`A175455(n+1)/(A110566(n+1)²*A002805(n+1))`
-/

namespace A001008.P5303844263714854785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175455 (n + 1) : ℚ) / (A110566 (n + 1) ^ 2 * A002805 (n + 1) : ℚ)

end

end A001008.P5303844263714854785

namespace A001008

/-- `A175455(n+1)/(A110566(n+1)²*A002805(n+1))` -/
def P5303844263714854785.Spec : Prop :=
  ∀ n, P5303844263714854785.a n = (A001008 (n + 1) : ℚ)

end A001008

/-!
# A001010: Number of symmetric foldings of a strip of n blank stamps.

The programs for A001010, there is no canonical definition to state claims against.
-/

/-! ## A001010.P10778022425707409143

`A274701(lcm(A072827(n+1), A108104(n)))`
-/

namespace A001010.P10778022425707409143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (Int.lcm (A072827 (n + 1)) (A108104 n))

end

end A001010.P10778022425707409143

/-!
# A001011: Number of ways to fold a strip of n blank stamps.

The programs for A001011, there is no canonical definition to state claims against.
-/

/-! ## A001011.P2777226387780223116

`A110655(A001010(n+1)+A000136(n+1))`
-/

namespace A001011.P2777226387780223116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A001010 (n + 1) + A000136 (n + 1)).toNat

end

end A001011.P2777226387780223116

/-! ## A001011.P8060599968074930125

`A131730(A001010(n+1)+A000136(n+1))`
-/

namespace A001011.P8060599968074930125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (A001010 (n + 1) + A000136 (n + 1)).toNat

end

end A001011.P8060599968074930125

/-! ## A001011.P14825581254580921904

`A110655(A001010(n+1)+(n+1)*A000682(n+1))`
-/

namespace A001011.P14825581254580921904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A001010 (n + 1) + (n + 1 : ℤ) * A000682 (n + 1)).toNat

end

end A001011.P14825581254580921904

/-! ## A001011.P13732685167525725876

`A131730(A001010(n+1)+(n+1)*A000682(n+1))`
-/

namespace A001011.P13732685167525725876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (A001010 (n + 1) + (n + 1 : ℤ) * A000682 (n + 1)).toNat

end

end A001011.P13732685167525725876

/-! ## A001011.P15737566956500643422

`A110655(A001010(n+1)+gcd(2, n+1)*A227167(n+1))`
-/

namespace A001011.P15737566956500643422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A001010 (n + 1) + (Nat.gcd 2 (n + 1) : ℤ) * A227167 (n + 1)).toNat

end

end A001011.P15737566956500643422

/-!
# A001013: Jordan-Polya numbers: products of factorial numbers A000142.

The programs for A001013, there is no canonical definition to state claims against.
-/

/-! ## A001013.P3739631497795560452

`A115746(n*a(floor(acot(n))))` with `a(0)=1`
-/

namespace A001013.P3739631497795560452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115746 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A001013.P3739631497795560452

/-! ## A001013.P16278096030035486180

`A115746(n-a(floor(acot(n)))+1)` with `a(0)=1`
-/

namespace A001013.P16278096030035486180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115746 ((n : ℤ) - a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat + 1).toNat

end

end A001013.P16278096030035486180

/-! ## A001013.P9668296440631519095

`A115746(abs(1-n)+1)^floor(atan(n+1))`
-/

namespace A001013.P9668296440631519095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115746 (|1 - (n : ℤ)| + 1).toNat : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A001013.P9668296440631519095

/-! ## A001013.P309292527170721185

`A115746(A028310(n))-C(2, n+2)`
-/

namespace A001013.P309292527170721185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115746 (A028310 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A001013.P309292527170721185

/-! ## A001013.P3494290477231405666

`∪[A115746(n+1), A344181(n+1)]`
-/

namespace A001013.P3494290477231405666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001013.P3494290477231405666

/-! ## A001013.P5709510107196515014

`∪[A344179(n+1), A344181(n+1)]`
-/

namespace A001013.P5709510107196515014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001013.P5709510107196515014

/-! ## A001013.P2222188485783478351

`record[(n+1)*A344438(n+1)]`
-/

namespace A001013.P2222188485783478351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A344438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001013.P2222188485783478351

/-! ## A001013.P11675147397197224783

`filter[A090958(n), A344438(#)]`
-/

namespace A001013.P11675147397197224783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n)

end

end A001013.P11675147397197224783

/-! ## A001013.P493920641270288105

`filter[A002473(n+1), A344438(#)]`
-/

namespace A001013.P493920641270288105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n)

end

end A001013.P493920641270288105

/-! ## A001013.P4337247400972963876

`filter[A005153(n+1), A344438(#)]`
-/

namespace A001013.P4337247400972963876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n)

end

end A001013.P4337247400972963876

/-!
# A001014: Sixth powers: a(n) = n^6.

The programs for A001014, the canonical program `A001014.P10270364271630987481` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001014 has offset 0).

The definition of A001014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6` (program `A001014.P10270364271630987481`, by `A001014.P10270364271630987481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001014.P10270364271630987481

`n^6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001014

/-- `n^6` -/
def P10270364271630987481.Spec : Prop :=
  ∀ n, (P10270364271630987481.a n : ℤ) = A001014 n

theorem P10270364271630987481.correct : P10270364271630987481.Spec := by
  intro n
  simp only [A001014]

end A001014

/-!
# A001015: Seventh powers: a(n) = n^7.

The programs for A001015, the canonical program `A001015.P16876498052081657174` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001015 has offset 0).

The definition of A001015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7` (program `A001015.P16876498052081657174`, by `A001015.P16876498052081657174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001015.P16876498052081657174

`n^7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001015

/-- `n^7` -/
def P16876498052081657174.Spec : Prop :=
  ∀ n, (P16876498052081657174.a n : ℤ) = A001015 n

theorem P16876498052081657174.correct : P16876498052081657174.Spec := by
  intro n
  simp only [A001015]

end A001015

/-!
# A001016: Eighth powers: a(n) = n^8.

The programs for A001016, the canonical program `A001016.P10257285112668202493` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001016 has offset 0).

The definition of A001016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8` (program `A001016.P10257285112668202493`, by `A001016.P10257285112668202493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001016.P10257285112668202493

`n^8`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001016

/-- `n^8` -/
def P10257285112668202493.Spec : Prop :=
  ∀ n, (P10257285112668202493.a n : ℤ) = A001016 n

theorem P10257285112668202493.correct : P10257285112668202493.Spec := by
  intro n
  simp only [A001016]

end A001016

/-!
# A001017: Ninth powers: a(n) = n^9.

The programs for A001017, the canonical program `A001017.P9152421289291957289` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001017 has offset 0).

The definition of A001017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9` (program `A001017.P9152421289291957289`, by `A001017.P9152421289291957289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001017.P9152421289291957289

`n^9`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001017

/-- `n^9` -/
def P9152421289291957289.Spec : Prop :=
  ∀ n, (P9152421289291957289.a n : ℤ) = A001017 n

theorem P9152421289291957289.correct : P9152421289291957289.Spec := by
  intro n
  simp only [A001017]

end A001017

/-!
# A001018: Powers of 8: a(n) = 8^n.

The programs for A001018, the canonical program `A001018.P5588564631493008987` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001018 has offset 0).

The definition of A001018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n` (program `A001018.P5588564631493008987`, by `A001018.P5588564631493008987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001018.P5588564631493008987

`8^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001018

/-- `8^n` -/
def P5588564631493008987.Spec : Prop :=
  ∀ n, (P5588564631493008987.a n : ℤ) = A001018 n

theorem P5588564631493008987.correct : P5588564631493008987.Spec := by
  intro n
  simp only [A001018]

end A001018

/-!
# A001019: Powers of 9: a(n) = 9^n.

The programs for A001019, the canonical program `A001019.P4632907595368420400` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001019 has offset 0).

The definition of A001019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n` (program `A001019.P4632907595368420400`, by `A001019.P4632907595368420400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001019.P4632907595368420400

`9^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001019

/-- `9^n` -/
def P4632907595368420400.Spec : Prop :=
  ∀ n, (P4632907595368420400.a n : ℤ) = A001019 n

theorem P4632907595368420400.correct : P4632907595368420400.Spec := by
  intro n
  simp only [A001019]

end A001019

/-!
# A001020: Powers of 11: a(n) = 11^n.

The programs for A001020, the canonical program `A001020.P6110418391945528251` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001020 has offset 0).

The definition of A001020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n` (program `A001020.P6110418391945528251`, by `A001020.P6110418391945528251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001020.P6110418391945528251

`11^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001020

/-- `11^n` -/
def P6110418391945528251.Spec : Prop :=
  ∀ n, (P6110418391945528251.a n : ℤ) = A001020 n

theorem P6110418391945528251.correct : P6110418391945528251.Spec := by
  intro n
  simp only [A001020]

end A001020

/-!
# A001021: Powers of 12: a(n) = 12^n.

The programs for A001021, the canonical program `A001021.P13459149055597848017` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001021 has offset 0).

The definition of A001021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n` (program `A001021.P13459149055597848017`, by `A001021.P13459149055597848017.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001021.P13459149055597848017

`12^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001021

/-- `12^n` -/
def P13459149055597848017.Spec : Prop :=
  ∀ n, (P13459149055597848017.a n : ℤ) = A001021 n

theorem P13459149055597848017.correct : P13459149055597848017.Spec := by
  intro n
  simp only [A001021]

end A001021

/-!
# A001022: Powers of 13: a(n) = 13^n.

The programs for A001022, the canonical program `A001022.P3547963708719749738` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001022 has offset 0).

The definition of A001022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13^n` (program `A001022.P3547963708719749738`, by `A001022.P3547963708719749738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001022.P3547963708719749738

`13^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001022

/-- `13^n` -/
def P3547963708719749738.Spec : Prop :=
  ∀ n, (P3547963708719749738.a n : ℤ) = A001022 n

theorem P3547963708719749738.correct : P3547963708719749738.Spec := by
  intro n
  simp only [A001022]

end A001022

/-!
# A001023: Powers of 14: a(n) = 14^n.

The programs for A001023, the canonical program `A001023.P6038982845282737124` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001023 has offset 0).

The definition of A001023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14^n` (program `A001023.P6038982845282737124`, by `A001023.P6038982845282737124.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001023.P6038982845282737124

`14^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001023

/-- `14^n` -/
def P6038982845282737124.Spec : Prop :=
  ∀ n, (P6038982845282737124.a n : ℤ) = A001023 n

theorem P6038982845282737124.correct : P6038982845282737124.Spec := by
  intro n
  simp only [A001023]

end A001023

/-!
# A001024: Powers of 15: a(n) = 15^n.

The programs for A001024, the canonical program `A001024.P4674574780989564658` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001024 has offset 0).

The definition of A001024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15^n` (program `A001024.P4674574780989564658`, by `A001024.P4674574780989564658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001024.P4674574780989564658

`15^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001024

/-- `15^n` -/
def P4674574780989564658.Spec : Prop :=
  ∀ n, (P4674574780989564658.a n : ℤ) = A001024 n

theorem P4674574780989564658.correct : P4674574780989564658.Spec := by
  intro n
  simp only [A001024]

end A001024

/-!
# A001025: Powers of 16: a(n) = 16^n.

The programs for A001025, the canonical program `A001025.P3316013991110943976` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001025 has offset 0).

The definition of A001025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16^n` (program `A001025.P3316013991110943976`, by `A001025.P3316013991110943976.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001025.P3316013991110943976

`16^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001025

/-- `16^n` -/
def P3316013991110943976.Spec : Prop :=
  ∀ n, (P3316013991110943976.a n : ℤ) = A001025 n

theorem P3316013991110943976.correct : P3316013991110943976.Spec := by
  intro n
  simp only [A001025]

end A001025

/-!
# A001026: Powers of 17: a(n) = 17^n.

The programs for A001026, the canonical program `A001026.P13069715525042150975` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001026 has offset 0).

The definition of A001026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17^n` (program `A001026.P13069715525042150975`, by `A001026.P13069715525042150975.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001026.P13069715525042150975

`17^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001026

/-- `17^n` -/
def P13069715525042150975.Spec : Prop :=
  ∀ n, (P13069715525042150975.a n : ℤ) = A001026 n

theorem P13069715525042150975.correct : P13069715525042150975.Spec := by
  intro n
  simp only [A001026]

end A001026

/-!
# A001027: Powers of 18: a(n) = 18^n.

The programs for A001027, the canonical program `A001027.P8202857041892658342` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001027 has offset 0).

The definition of A001027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18^n` (program `A001027.P8202857041892658342`, by `A001027.P8202857041892658342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001027.P8202857041892658342

`18^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001027

/-- `18^n` -/
def P8202857041892658342.Spec : Prop :=
  ∀ n, (P8202857041892658342.a n : ℤ) = A001027 n

theorem P8202857041892658342.correct : P8202857041892658342.Spec := by
  intro n
  simp only [A001027]

end A001027

/-!
# A001028: E.g.f. A(x) satisfies A'(x) = 1 + A(A(x)), with A(0) = 0.

The programs for A001028, there is no canonical definition to state claims against.
-/

/-! ## A001028.P8776547336118677682

`A396970(∑[n+2])`
-/

namespace A001028.P8776547336118677682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396970 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001028.P8776547336118677682

/-! ## A001028.P7838581646377088642

`or(A025443(A276313(n)), A135920(n))`
-/

namespace A001028.P7838581646377088642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025443 (A276313 n).toNat) (A135920 n)

end

end A001028.P7838581646377088642

/-!
# A001029: Powers of 19: a(n) = 19^n.

The programs for A001029, the canonical program `A001029.P392232542921323933` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001029 has offset 0).

The definition of A001029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19^n` (program `A001029.P392232542921323933`, by `A001029.P392232542921323933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001029.P392232542921323933

`19^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001029

/-- `19^n` -/
def P392232542921323933.Spec : Prop :=
  ∀ n, (P392232542921323933.a n : ℤ) = A001029 n

theorem P392232542921323933.correct : P392232542921323933.Spec := by
  intro n
  simp only [A001029]

end A001029

/-!
# A001031: Goldbach conjecture: a(n) = number of decompositions of 2n into sum of two primes (counting 1 as a prime).

The programs for A001031, there is no canonical definition to state claims against.
-/

/-! ## A001031.P17744933148912834767

`floor((A096139(n+1)+1)/2)`
-/

namespace A001031.P17744933148912834767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096139 (n + 1) + 1 : ℚ) / 2⌋

end

end A001031.P17744933148912834767

/-! ## A001031.P17680697282760654949

`A341945(2*(n+1))`
-/

namespace A001031.P17680697282760654949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (2 * (n + 1))

end

end A001031.P17680697282760654949

/-! ## A001031.P360785173211600880

`round(A096139(n+1)/2)`
-/

namespace A001031.P360785173211600880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A096139 (n + 1) : ℚ) / 2)

end

end A001031.P360785173211600880

/-! ## A001031.P7947072173895762682

`A110654(A096139(n+1))`
-/

namespace A001031.P7947072173895762682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A096139 (n + 1)).toNat

end

end A001031.P7947072173895762682

/-! ## A001031.P3064230597351851387

`A004526(A096139(n+1)+1)`
-/

namespace A001031.P3064230597351851387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A096139 (n + 1) + 1).toNat

end

end A001031.P3064230597351851387

/-! ## A001031.P10235844842563010326

`A123108(A096139(n+1)+1)`
-/

namespace A001031.P10235844842563010326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A096139 (n + 1) + 1).toNat

end

end A001031.P10235844842563010326

/-! ## A001031.P17744857483201780448

`A101808(n)+A002375(n+1)`
-/

namespace A001031.P17744857483201780448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n + A002375 (n + 1)

end

end A001031.P17744857483201780448

/-! ## A001031.P10228099657719917201

`A002265(2*(A096139(n+1)+1))`
-/

namespace A001031.P10228099657719917201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A096139 (n + 1) + 1)).toNat

end

end A001031.P10228099657719917201

/-! ## A001031.P11616766614336773302

`A004524(or(1, A096139(n+1)+1))`
-/

namespace A001031.P11616766614336773302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A096139 (n + 1) + 1)).toNat

end

end A001031.P11616766614336773302

/-! ## A001031.P82271210283998624

`A028242(or(1, A096139(n+1)+1))`
-/

namespace A001031.P82271210283998624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A096139 (n + 1) + 1)).toNat

end

end A001031.P82271210283998624

/-! ## A001031.P5417727677697313378

`A057979(or(1, A096139(n+1)+1))`
-/

namespace A001031.P5417727677697313378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.lor 1 (A096139 (n + 1) + 1)).toNat

end

end A001031.P5417727677697313378

/-! ## A001031.P3488005372158534270

`A154804(n+1)+A080339(n+1)`
-/

namespace A001031.P3488005372158534270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154804 (n + 1) + A080339 (n + 1)

end

end A001031.P3488005372158534270

/-! ## A001031.P15506067616617202198

`A096139(n+1)-A154804(n+1)`
-/

namespace A001031.P15506067616617202198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096139 (n + 1) - A154804 (n + 1)

end

end A001031.P15506067616617202198

/-! ## A001031.P16407163638478808693

`A002265(A096139(n+1)+A096139(n+1)+2)`
-/

namespace A001031.P16407163638478808693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A096139 (n + 1) + (A096139 (n + 1) + 2)).toNat

end

end A001031.P16407163638478808693

/-! ## A001031.P714323636548787399

`A061357(n+1)+A101264(n)+A080339(n+1)`
-/

namespace A001031.P714323636548787399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) + (A101264 n + A080339 (n + 1))

end

end A001031.P714323636548787399

/-! ## A001031.P15279441644552078780

`A045917(n+1)+A045917(n+2)-A171611(n+2)`
-/

namespace A001031.P15279441644552078780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) + (A045917 (n + 2) - A171611 (n + 2))

end

end A001031.P15279441644552078780

/-! ## A001031.P1205950494207253758

`ceil(A341982(2*(n+1))/2)`
-/

namespace A001031.P1205950494207253758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A341982 (2 * (n + 1)) : ℚ) / 2⌉

end

end A001031.P1205950494207253758

/-! ## A001031.P9417593687981628698

`A347622(A103517(n))`
-/

namespace A001031.P9417593687981628698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347622 (A103517 n).toNat

end

end A001031.P9417593687981628698

/-! ## A001031.P1536530434477802699

`A347622(A057543(n+1))`
-/

namespace A001031.P1536530434477802699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347622 (A057543 (n + 1)).toNat

end

end A001031.P1536530434477802699

/-! ## A001031.P18079059137076448852

`A347622(A163300(n+1))`
-/

namespace A001031.P18079059137076448852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347622 (A163300 (n + 1)).toNat

end

end A001031.P18079059137076448852

/-!
# A001032: Numbers k such that sum of squares of k consecutive integers >= 1 is a square.

The programs for A001032, there is no canonical definition to state claims against.
-/

/-! ## A001032.P6645992084454755715

`A185545(record[A237593(A285500(n+1))])`
-/

namespace A001032.P6645992084454755715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A285500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185545 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001032.P6645992084454755715

/-! ## A001032.P14508423277876869606

`record[A185545(n+1)%A276086(A052905(n))]`
-/

namespace A001032.P14508423277876869606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185545 (n + 1)) (A276086 (A052905 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001032.P14508423277876869606

/-! ## A001032.P2737298327324039098

`record[A185545(n+1)-A245552(A222153(n+1))]`
-/

namespace A001032.P2737298327324039098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185545 (n + 1) - A245552 (A222153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001032.P2737298327324039098

/-!
# A001034: Orders of noncyclic simple groups (without repetition).

The programs for A001034, there is no canonical definition to state claims against.
-/

/-! ## A001034.P13651876732150942836

`record[A109379(A142150(n)+1)]`
-/

namespace A001034.P13651876732150942836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 (A142150 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001034.P13651876732150942836

/-! ## A001034.P8078384597724734705

`record[A109379(A061395(n+2))]`
-/

namespace A001034.P8078384597724734705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 (A061395 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001034.P8078384597724734705

/-! ## A001034.P13489430440578458598

`A109379(comp[A000149(3*n)-1])`
-/

namespace A001034.P13489430440578458598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 (3 * n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A001034.P13489430440578458598

/-! ## A001034.P13445010307262831069

`record[A109379(n+1-and(28, A000196(n)))]`
-/

namespace A001034.P13445010307262831069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 ((n + 1 : ℤ) - Int.land 28 (A000196 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001034.P13445010307262831069

/-! ## A001034.P6733793436691485931

`record[A109379(A266216(n)+A000720(n+1))]`
-/

namespace A001034.P6733793436691485931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 (A266216 n + A000720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001034.P6733793436691485931

/-! ## A001034.P17300322518842889857

`record[A109379(n+1)%A109379(n+2)]`
-/

namespace A001034.P17300322518842889857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109379 (n + 1)) (A109379 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001034.P17300322518842889857

/-! ## A001034.P10121596457553517392

`record[A109379(n+1-A000196(n)²)]`
-/

namespace A001034.P10121596457553517392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 ((n + 1 : ℤ) - A000196 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001034.P10121596457553517392

/-! ## A001034.P13331006704852635070

`record[A109379(A028920(n))]`
-/

namespace A001034.P13331006704852635070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001034.P13331006704852635070

/-! ## A001034.P5002021306257129728

`record[A109379(A080786(n+1))]`
-/

namespace A001034.P5002021306257129728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 (A080786 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001034.P5002021306257129728

/-! ## A001034.P6280009701712300116

`record[A109379(n+1)/A214956(A214956(n+1))]`
-/

namespace A001034.P6280009701712300116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109379 (n + 1) : ℚ) / (A214956 (A214956 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001034.P6280009701712300116

/-!
# A001035: Number of partially ordered sets ("posets") with n labeled elements (or labeled acyclic transitive digraphs).

The programs for A001035, there is no canonical definition to state claims against.
-/

/-! ## A001035.P14350157716107168965

`A245767(∑[n])`
-/

namespace A001035.P14350157716107168965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245767 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001035.P14350157716107168965

/-! ## A001035.P9429993205907718987

`A280192(∑[n]+n)`
-/

namespace A001035.P9429993205907718987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280192 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001035.P9429993205907718987

/-! ## A001035.P1362234828523747987

`2*A105974(n)+1`
-/

namespace A001035.P1362234828523747987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105974 n + 1

end

end A001035.P1362234828523747987

/-! ## A001035.P764705145625622991

`A006059(n+1)/(n+1)`
-/

namespace A001035.P764705145625622991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006059 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001035.P764705145625622991

/-! ## A001035.P9686360695242608512

`A002824(n+2)/∑[n+1]`
-/

namespace A001035.P9686360695242608512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002824 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A001035.P9686360695242608512

/-!
# A001036: Partial sums of A001037, omitting A001037(1).

The programs for A001036, the canonical program `A001036.P12089511997625600617` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001036 has offset 1).

The definition of A001036 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062692, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001036.P12089511997625600617

`A062692(n+1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A001036

/-- `A062692(n+1)-1` -/
def P12089511997625600617.Spec : Prop :=
  ∀ n, P12089511997625600617.a n = A001036 (n + 1)

theorem P12089511997625600617.correct : P12089511997625600617.Spec := by
  intro n
  simp only [A001036, Nat.add_sub_cancel]

end A001036

/-! ## A001036.P17740920543289123635

`∑[A059966(n+1)]`
-/

namespace A001036.P17740920543289123635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001036.P17740920543289123635

namespace A001036

/-- `∑[A059966(n+1)]` -/
def P17740920543289123635.Spec : Prop :=
  ∀ n, P17740920543289123635.a n = A001036 (n + 1)

end A001036

/-! ## A001036.P189079544768858736

`A173270(n+1)-2`
-/

namespace A001036.P189079544768858736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 (n + 1) - 2

end

end A001036.P189079544768858736

namespace A001036

/-- `A173270(n+1)-2` -/
def P189079544768858736.Spec : Prop :=
  ∀ n, P189079544768858736.a n = A001036 (n + 1)

end A001036

/-! ## A001036.P1391509795555017852

`∑[A001037(n+1)]-1`
-/

namespace A001036.P1391509795555017852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001036.P1391509795555017852

namespace A001036

/-- `∑[A001037(n+1)]-1` -/
def P1391509795555017852.Spec : Prop :=
  ∀ n, P1391509795555017852.a n = A001036 (n + 1)

end A001036

/-! ## A001036.P6882451466902181994

`∑[A060477(n+1)]-2`
-/

namespace A001036.P6882451466902181994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A001036.P6882451466902181994

namespace A001036

/-- `∑[A060477(n+1)]-2` -/
def P6882451466902181994.Spec : Prop :=
  ∀ n, P6882451466902181994.a n = A001036 (n + 1)

end A001036

/-! ## A001036.P10313373420077656115

`∑[abs(Δ[A173270(n)])]-1`
-/

namespace A001036.P10313373420077656115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001036.P10313373420077656115

namespace A001036

/-- `∑[abs(Δ[A173270(n)])]-1` -/
def P10313373420077656115.Spec : Prop :=
  ∀ n, P10313373420077656115.a n = A001036 (n + 1)

end A001036

/-! ## A001036.P4171023921627756046

`∑[A001037((n+1)%(2*n+1))]`
-/

namespace A001036.P4171023921627756046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 ((n + 1) % (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001036.P4171023921627756046

namespace A001036

/-- `∑[A001037((n+1)%(2*n+1))]` -/
def P4171023921627756046.Spec : Prop :=
  ∀ n, P4171023921627756046.a n = A001036 (n + 1)

end A001036

/-! ## A001036.P1566995179700990833

`∑[A001037(A028310(n)+1)]`
-/

namespace A001036.P1566995179700990833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001036.P1566995179700990833

namespace A001036

/-- `∑[A001037(A028310(n)+1)]` -/
def P1566995179700990833.Spec : Prop :=
  ∀ n, P1566995179700990833.a n = A001036 (n + 1)

end A001036

/-! ## A001036.P17249706897989741419

`∑[A001037(n+1)^A008683(2*A000040(n+1))]`
-/

namespace A001036.P17249706897989741419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001036.P17249706897989741419

namespace A001036

/-- `∑[A001037(n+1)^A008683(2*A000040(n+1))]` -/
def P17249706897989741419.Spec : Prop :=
  ∀ n, P17249706897989741419.a n = (A001036 (n + 1) : ℚ)

end A001036

/-! ## A001036.P16628578908581757867

`∑[A038199(n+1)/(n+1)]`
-/

namespace A001036.P16628578908581757867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038199 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001036.P16628578908581757867

namespace A001036

/-- `∑[A038199(n+1)/(n+1)]` -/
def P16628578908581757867.Spec : Prop :=
  ∀ n, P16628578908581757867.a n = (A001036 (n + 1) : ℚ)

end A001036

/-!
# A001037: Number of degree-n irreducible polynomials over GF(2); number of n-bead necklaces with beads of 2 colors when turning over is not allowed and with primitive period n; number of binary Lyndon words of length n.

The programs for A001037, the canonical program `A001037.P3072020637183991904` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001037 has offset 0).

The definition of A001037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001037.P1700615536942136826

`∑{d}[n+1, A054154(#-1)]`
-/

namespace A001037.P1700615536942136826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054154 (d - 1)

end

end A001037.P1700615536942136826

namespace A001037

/-- `∑{d}[n+1, A054154(#-1)]` -/
def P1700615536942136826.Spec : Prop :=
  ∀ n, P1700615536942136826.a n = A001037 n

end A001037

/-! ## A001037.P4579263687853212901

`A059966(2-2%(n+1)+n)`
-/

namespace A001037.P4579263687853212901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (2 - ((2 % (n + 1) : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A001037.P4579263687853212901

namespace A001037

/-- `A059966(2-2%(n+1)+n)` -/
def P4579263687853212901.Spec : Prop :=
  ∀ n, P4579263687853212901.a n = A001037 n

end A001037

/-! ## A001037.P9204633210677206871

`A000031(n)-A066656(n)`
-/

namespace A001037.P9204633210677206871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A066656 n

end

end A001037.P9204633210677206871

namespace A001037

/-- `A000031(n)-A066656(n)` -/
def P9204633210677206871.Spec : Prop :=
  ∀ n, P9204633210677206871.a n = A001037 n

end A001037

/-! ## A001037.P13647117983671630558

`A059966(or(n, A069517(n+1)))`
-/

namespace A001037.P13647117983671630558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (Int.lor (n : ℤ) (A069517 (n + 1))).toNat

end

end A001037.P13647117983671630558

namespace A001037

/-- `A059966(or(n, A069517(n+1)))` -/
def P13647117983671630558.Spec : Prop :=
  ∀ n, P13647117983671630558.a n = A001037 n

end A001037

/-! ## A001037.P1801612580630869689

`∑{d}[n+1, A008683(#)*A054080((n+1)/#-1)]`
-/

namespace A001037.P1801612580630869689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054080 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A001037.P1801612580630869689

namespace A001037

/-- `∑{d}[n+1, A008683(#)*A054080((n+1)/#-1)]` -/
def P1801612580630869689.Spec : Prop :=
  ∀ n, P1801612580630869689.a n = A001037 n

end A001037

/-! ## A001037.P2261686828855306691

`A059966(A105348(A002088(n))+n)`
-/

namespace A001037.P2261686828855306691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (A105348 (A002088 n).toNat + (n : ℤ)).toNat

end

end A001037.P2261686828855306691

namespace A001037

/-- `A059966(A105348(A002088(n))+n)` -/
def P2261686828855306691.Spec : Prop :=
  ∀ n, P2261686828855306691.a n = A001037 n

end A001037

/-! ## A001037.P9236562356383340795

`A059966(A105348(A242663(n+1))+n)`
-/

namespace A001037.P9236562356383340795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (A105348 (A242663 (n + 1)).toNat + (n : ℤ)).toNat

end

end A001037.P9236562356383340795

namespace A001037

/-- `A059966(A105348(A242663(n+1))+n)` -/
def P9236562356383340795.Spec : Prop :=
  ∀ n, P9236562356383340795.a n = A001037 n

end A001037

/-! ## A001037.P14935900895901139246

`A059966(A023900(A299150(n+1))+n+1)`
-/

namespace A001037.P14935900895901139246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (A023900 (A299150 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A001037.P14935900895901139246

namespace A001037

/-- `A059966(A023900(A299150(n+1))+n+1)` -/
def P14935900895901139246.Spec : Prop :=
  ∀ n, P14935900895901139246.a n = A001037 n

end A001037

/-! ## A001037.P2466323273810449109

`A059966(and(2, A000051(n))+n)`
-/

namespace A001037.P2466323273810449109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (Int.land 2 (A000051 n) + (n : ℤ)).toNat

end

end A001037.P2466323273810449109

namespace A001037

/-- `A059966(and(2, A000051(n))+n)` -/
def P2466323273810449109.Spec : Prop :=
  ∀ n, P2466323273810449109.a n = A001037 n

end A001037

/-! ## A001037.P15410374150753584862

`A059966(and(3, A000079(n))+n)`
-/

namespace A001037.P15410374150753584862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (Int.land 3 (A000079 n) + (n : ℤ)).toNat

end

end A001037.P15410374150753584862

namespace A001037

/-- `A059966(and(3, A000079(n))+n)` -/
def P15410374150753584862.Spec : Prop :=
  ∀ n, P15410374150753584862.a n = A001037 n

end A001037

/-! ## A001037.P3072020637183991904

`A045664(n)/A253909(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A001037

/-- `A045664(n)/A253909(n)` -/
def P3072020637183991904.Spec : Prop :=
  ∀ n, P3072020637183991904.a n = (A001037 n : ℚ)

end A001037

/-! ## A001037.P6999086358377482025

`A045664(n)/(n-A004277(n))²`
-/

namespace A001037.P6999086358377482025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045664 n : ℚ) / (((n : ℤ) - A004277 n) ^ 2 : ℚ)

end

end A001037.P6999086358377482025

namespace A001037

/-- `A045664(n)/(n-A004277(n))²` -/
def P6999086358377482025.Spec : Prop :=
  ∀ n, P6999086358377482025.a n = (A001037 n : ℚ)

end A001037

/-! ## A001037.P2656691654120536517

`A059966(A105348(n²)+n)`
-/

namespace A001037.P2656691654120536517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (A105348 (n ^ 2) + (n : ℤ)).toNat

end

end A001037.P2656691654120536517

namespace A001037

/-- `A059966(A105348(n²)+n)` -/
def P2656691654120536517.Spec : Prop :=
  ∀ n, P2656691654120536517.a n = A001037 n

end A001037

/-! ## A001037.P6108143726257533439

`A123223(∑[n])`
-/

namespace A001037.P6108143726257533439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001037.P6108143726257533439

namespace A001037

/-- `A123223(∑[n])` -/
def P6108143726257533439.Spec : Prop :=
  ∀ n, P6108143726257533439.a n = A001037 n

end A001037

/-! ## A001037.P9460648907844998906

`A123223(A000217(n))%A099754(n)`
-/

namespace A001037.P9460648907844998906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123223 (A000217 n).toNat) (A099754 n)

end

end A001037.P9460648907844998906

namespace A001037

/-- `A123223(A000217(n))%A099754(n)` -/
def P9460648907844998906.Spec : Prop :=
  ∀ n, P9460648907844998906.a n = A001037 n

end A001037

/-! ## A001037.P3538818376257350319

`gcd(A027375(n), A123223(A000217(n)))`
-/

namespace A001037.P3538818376257350319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027375 n) (A123223 (A000217 n).toNat)

end

end A001037.P3538818376257350319

namespace A001037

/-- `gcd(A027375(n), A123223(A000217(n)))` -/
def P3538818376257350319.Spec : Prop :=
  ∀ n, (P3538818376257350319.a n : ℤ) = A001037 n

end A001037

/-! ## A001037.P6462268683252847973

`A040258(3*n+2)*A123223(A000217(n))`
-/

namespace A001037.P6462268683252847973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040258 (3 * n + 2) * A123223 (A000217 n).toNat

end

end A001037.P6462268683252847973

namespace A001037

/-- `A040258(3*n+2)*A123223(A000217(n))` -/
def P6462268683252847973.Spec : Prop :=
  ∀ n, P6462268683252847973.a n = A001037 n

end A001037

/-! ## A001037.P2354995020371147806

`and(A123223(A000217(n)), A180516(2*(n+1)))`
-/

namespace A001037.P2354995020371147806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123223 (A000217 n).toNat) (A180516 (2 * (n + 1)))

end

end A001037.P2354995020371147806

namespace A001037

/-- `and(A123223(A000217(n)), A180516(2*(n+1)))` -/
def P2354995020371147806.Spec : Prop :=
  ∀ n, P2354995020371147806.a n = A001037 n

end A001037

/-!
# A001039: a(n) = (p^p-1)/(p-1) where p = prime(n).

The programs for A001039, there is no canonical definition to state claims against.
-/

/-! ## A001039.P4008972871199075760

`record[A054767(n+2)]`
-/

namespace A001039.P4008972871199075760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001039.P4008972871199075760

/-! ## A001039.P3465185095256397186

`A023037(p?[comp[n²]])`
-/

namespace A001039.P3465185095256397186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023037 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A001039.P3465185095256397186

/-! ## A001039.P2898034437342500495

`A023037(A000040(n+1))`
-/

namespace A001039.P2898034437342500495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023037 (A000040 (n + 1)).toNat

end

end A001039.P2898034437342500495

/-! ## A001039.P1492373525510817369

`A023037(record[A006530(n+2)])`
-/

namespace A001039.P1492373525510817369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023037 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001039.P1492373525510817369

/-! ## A001039.P18254553619947883900

`record[A070518(A005117(n+2))]`
-/

namespace A001039.P18254553619947883900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070518 (A005117 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001039.P18254553619947883900

/-!
# A001040: a(n+1) = n*a(n) + a(n-1) with a(0)=0, a(1)=1.

The programs for A001040, there is no canonical definition to state claims against.
-/

/-! ## A001040.P15763587351922763946

`(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001040.P15763587351922763946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + a (n - 2)

end

end A001040.P15763587351922763946

/-! ## A001040.P10396716607336654373

`a(n-2)-(1-n)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A001040.P10396716607336654373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (1 - (n : ℤ)) * a (n - 1)

end

end A001040.P10396716607336654373

/-! ## A001040.P12378763500945043061

`A062323(∑[n]+1)`
-/

namespace A001040.P12378763500945043061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001040.P12378763500945043061

/-! ## A001040.P1606519919035075613

`∏[1/a(n-1)+n-1]-A001053(n)` with `a(0)=1`
-/

namespace A001040.P1606519919035075613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  1 / f1 (n - 1) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A001053 n : ℚ)

end

end A001040.P1606519919035075613

/-! ## A001040.P10701396194554819549

`A102038(n)-A001053(n)`
-/

namespace A001040.P10701396194554819549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102038 n - A001053 n

end

end A001040.P10701396194554819549

/-! ## A001040.P18267134666998544577

`cosh(A000038(n))*A062323(A000124(n))`
-/

namespace A001040.P18267134666998544577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A000038 n : ℝ) * (A062323 (A000124 n).toNat : ℝ)

end

end A001040.P18267134666998544577

/-! ## A001040.P17411607713949731270

`A062323(A000124(n))+A000007(n+1)`
-/

namespace A001040.P17411607713949731270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (A000124 n).toNat + A000007 (n + 1)

end

end A001040.P17411607713949731270

/-! ## A001040.P11340007513268966626

`A062323(A000124(n))+A000038(n+1)`
-/

namespace A001040.P11340007513268966626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (A000124 n).toNat + A000038 (n + 1)

end

end A001040.P11340007513268966626

/-! ## A001040.P18064023768198931585

`n*A062323(A000124(n))/A028310(n)`
-/

namespace A001040.P18064023768198931585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A062323 (A000124 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A001040.P18064023768198931585

/-!
# A001041: a(0)=12; thereafter a(n) = 12 times the product of the first n primes.

The programs for A001041, there is no canonical definition to state claims against.
-/

/-! ## A001041.P7175290525034883946

`12*A002110(n)`
-/

namespace A001041.P7175290525034883946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A002110 n

end

end A001041.P7175290525034883946

/-! ## A001041.P7914961753393682966

`12*∏[A008578(n+1)]`
-/

namespace A001041.P7914961753393682966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001041.P7914961753393682966

/-! ## A001041.P3642331186469076965

`a(n-1)*A000040(n)` with `a(0)=12`
-/

namespace A001041.P3642331186469076965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  a (n - 1) * A000040 n

end

end A001041.P3642331186469076965

/-! ## A001041.P9944656242504169381

`12*∏[record[A006530(n+1)]]`
-/

namespace A001041.P9944656242504169381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001041.P9944656242504169381

/-! ## A001041.P15389342327108365100

`12*∏[record[A014963(n+1)]]`
-/

namespace A001041.P15389342327108365100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001041.P15389342327108365100

/-! ## A001041.P5754635889821798238

`12*∏[record[A020639(n+1)]]`
-/

namespace A001041.P5754635889821798238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001041.P5754635889821798238

/-! ## A001041.P8670737903956571587

`12*∏[∏{d}[comp[A018252(n+1)], #]]`
-/

namespace A001041.P8670737903956571587
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001041.P8670737903956571587

/-! ## A001041.P11975686655290757379

`a(n-1)*A008864(n)-a(n-1)` with `a(0)=12`
-/

namespace A001041.P11975686655290757379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  a (n - 1) * A008864 n - a (n - 1)

end

end A001041.P11975686655290757379

/-! ## A001041.P16756610627094143353

`12*A056606(A004789(n))`
-/

namespace A001041.P16756610627094143353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A056606 (A004789 n).toNat

end

end A001041.P16756610627094143353

/-!
# A001042: a(n) = a(n-1)^2 - a(n-2)^2.

The programs for A001042, the canonical program `A001042.P11621951518056306959` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001042 has offset 0).

The definition of A001042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-2)²` (program `A001042.P11621951518056306959`, by `A001042.P11621951518056306959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001042.P11621951518056306959

`a(n-1)²-a(n-2)²` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001042

/-- `a(n-1)²-a(n-2)²` -/
def P11621951518056306959.Spec : Prop :=
  ∀ n, P11621951518056306959.a n = A001042 n

theorem P11621951518056306959.correct : P11621951518056306959.Spec := by
  intro n
  simp only [A001042]

end A001042

/-! ## A001042.P3753200174895641224

`a(n-1)^2-a(n-2)^2` with `a(0)=1, a(1)=2`
-/

namespace A001042.P3753200174895641224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ 2 - a (n - 2) ^ 2

end

end A001042.P3753200174895641224

namespace A001042

/-- `a(n-1)^2-a(n-2)^2` -/
def P3753200174895641224.Spec : Prop :=
  ∀ n, P3753200174895641224.a n = A001042 n

theorem P3753200174895641224.correct : P3753200174895641224.Spec := by
  intro n
  simp only [A001042, Nat.add_sub_cancel, A001042.P3753200174895641224.a, A001042.P11621951518056306959.a, SequenceMachineLib.memo_apply]

end A001042

/-! ## A001042.P14064487562855666281

`(a(n-1)+a(n-2))*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A001042.P14064487562855666281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) * (a (n - 1) - a (n - 2))

end

end A001042.P14064487562855666281

namespace A001042

/-- `(a(n-1)+a(n-2))*(a(n-1)-a(n-2))` -/
def P14064487562855666281.Spec : Prop :=
  ∀ n, P14064487562855666281.a n = A001042 n

theorem P14064487562855666281.correct : P14064487562855666281.Spec := by
  intro n
  simp only [A001042, Nat.add_sub_cancel, A001042.P14064487562855666281.a, A001042.P11621951518056306959.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001042

/-! ## A001042.P2948156756449115440

`a(n-1)*a(n-1)-a(n-2)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A001042.P2948156756449115440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a (n - 1) - a (n - 2) * a (n - 2)

end

end A001042.P2948156756449115440

namespace A001042

/-- `a(n-1)*a(n-1)-a(n-2)*a(n-2)` -/
def P2948156756449115440.Spec : Prop :=
  ∀ n, P2948156756449115440.a n = A001042 n

theorem P2948156756449115440.correct : P2948156756449115440.Spec := by
  intro n
  simp only [A001042, Nat.add_sub_cancel, A001042.P2948156756449115440.a, A001042.P11621951518056306959.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001042

/-! ## A001042.P9407325669595138695

`Δ[(a(A023443(n))-a(n-2))²]` with `a(0)=-2, a(1)=-1`
-/

namespace A001042.P9407325669595138695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, -1] fun n f1 =>
  (f1 (A023443 n).toNat - f1 (n - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001042.P9407325669595138695

namespace A001042

/-- `Δ[(a(A023443(n))-a(n-2))²]` -/
def P9407325669595138695.Spec : Prop :=
  ∀ n, P9407325669595138695.a n = A001042 n

end A001042

/-!
# A001043: Numbers that are the sum of 2 successive primes.

The programs for A001043, the canonical program `A001043.P18269783162673735460` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001043 has offset 1).

The definition of A001043 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001043.P18269783162673735460

`A000040(n+1)+A000040(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001043

/-- `A000040(n+1)+A000040(n+2)` -/
def P18269783162673735460.Spec : Prop :=
  ∀ n, P18269783162673735460.a n = A001043 (n + 1)

theorem P18269783162673735460.correct : P18269783162673735460.Spec := by
  intro n
  simp only [A001043, Nat.add_sub_cancel]

end A001043

/-! ## A001043.P11004605820724535900

`Δ[A061802(n)]`
-/

namespace A001043.P11004605820724535900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001043.P11004605820724535900

namespace A001043

/-- `Δ[A061802(n)]` -/
def P11004605820724535900.Spec : Prop :=
  ∀ n, P11004605820724535900.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P17345028979144439587

`A011974(n+2)`
-/

namespace A001043.P17345028979144439587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2)

end

end A001043.P17345028979144439587

namespace A001043

/-- `A011974(n+2)` -/
def P17345028979144439587.Spec : Prop :=
  ∀ n, P17345028979144439587.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P4392362309802385374

`∑[A075527(n)]+3`
-/

namespace A001043.P4392362309802385374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A001043.P4392362309802385374

namespace A001043

/-- `∑[A075527(n)]+3` -/
def P4392362309802385374.Spec : Prop :=
  ∀ n, P4392362309802385374.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P15284091121219884510

`A092949(n+1)-1`
-/

namespace A001043.P15284091121219884510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) - 1

end

end A001043.P15284091121219884510

namespace A001043

/-- `A092949(n+1)-1` -/
def P15284091121219884510.Spec : Prop :=
  ∀ n, P15284091121219884510.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P15478124899628271

`A031131(n)+a(n-1)` with `a(0)=5`
-/

namespace A001043.P15478124899628271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A031131 n + a (n - 1)

end

end A001043.P15478124899628271

namespace A001043

/-- `A031131(n)+a(n-1)` -/
def P15478124899628271.Spec : Prop :=
  ∀ n, P15478124899628271.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P13117438977681409721

`A096277(n)-a(n-1)` with `a(0)=5`
-/

namespace A001043.P13117438977681409721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A096277 n - a (n - 1)

end

end A001043.P13117438977681409721

namespace A001043

/-- `A096277(n)-a(n-1)` -/
def P13117438977681409721.Spec : Prop :=
  ∀ n, P13117438977681409721.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P3954426403037899173

`floor(sqrt(2*A069484(n+1)))`
-/

namespace A001043.P3954426403037899173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A069484 (n + 1))

end

end A001043.P3954426403037899173

namespace A001043

/-- `floor(sqrt(2*A069484(n+1)))` -/
def P3954426403037899173.Spec : Prop :=
  ∀ n, P3954426403037899173.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P11740936076739425678

`floor(2*sqrt(A123134(n+1)))`
-/

namespace A001043.P11740936076739425678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A123134 (n + 1) : ℝ)⌋

end

end A001043.P11740936076739425678

namespace A001043

/-- `floor(2*sqrt(A123134(n+1)))` -/
def P11740936076739425678.Spec : Prop :=
  ∀ n, P11740936076739425678.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P4532709680509084728

`ceil(2*sqrt(A006094(n+1)))`
-/

namespace A001043.P4532709680509084728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A006094 (n + 1) : ℝ)⌉

end

end A001043.P4532709680509084728

namespace A001043

/-- `ceil(2*sqrt(A006094(n+1)))` -/
def P4532709680509084728.Spec : Prop :=
  ∀ n, P4532709680509084728.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P12822440440036040785

`∑[A046930(n+1)+2]+2`
-/

namespace A001043.P12822440440036040785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A001043.P12822440440036040785

namespace A001043

/-- `∑[A046930(n+1)+2]+2` -/
def P12822440440036040785.Spec : Prop :=
  ∀ n, P12822440440036040785.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P5088346224675157596

`A108568(n+1)+2*n+3`
-/

namespace A001043.P5088346224675157596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108568 (n + 1) + (2 * n + 3 : ℤ)

end

end A001043.P5088346224675157596

namespace A001043

/-- `A108568(n+1)+2*n+3` -/
def P5088346224675157596.Spec : Prop :=
  ∀ n, P5088346224675157596.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P13890571073139776546

`A033287(n)-A062357(n+1)`
-/

namespace A001043.P13890571073139776546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n - A062357 (n + 1)

end

end A001043.P13890571073139776546

namespace A001043

/-- `A033287(n)-A062357(n+1)` -/
def P13890571073139776546.Spec : Prop :=
  ∀ n, P13890571073139776546.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P3359011822394749726

`A061802(n+1)-A061802(n)`
-/

namespace A001043.P3359011822394749726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 (n + 1) - A061802 n

end

end A001043.P3359011822394749726

namespace A001043

/-- `A061802(n+1)-A061802(n)` -/
def P3359011822394749726.Spec : Prop :=
  ∀ n, P3359011822394749726.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P17838988078861626791

`A007504(n+2)-A007504(n)`
-/

namespace A001043.P17838988078861626791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2) - A007504 n

end

end A001043.P17838988078861626791

namespace A001043

/-- `A007504(n+2)-A007504(n)` -/
def P17838988078861626791.Spec : Prop :=
  ∀ n, P17838988078861626791.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P14216839307999449811

`A014690(n+1)+A014689(n+1)`
-/

namespace A001043.P14216839307999449811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) + A014689 (n + 1)

end

end A001043.P14216839307999449811

namespace A001043

/-- `A014690(n+1)+A014689(n+1)` -/
def P14216839307999449811.Spec : Prop :=
  ∀ n, P14216839307999449811.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P13915860014758422460

`A048974(n+1)+A040976(n+1)`
-/

namespace A001043.P13915860014758422460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) + A040976 (n + 1)

end

end A001043.P13915860014758422460

namespace A001043

/-- `A048974(n+1)+A040976(n+1)` -/
def P13915860014758422460.Spec : Prop :=
  ∀ n, P13915860014758422460.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P3976661050103775570

`A100484(n+1)+A001223(n+1)`
-/

namespace A001043.P3976661050103775570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A001223 (n + 1)

end

end A001043.P3976661050103775570

namespace A001043

/-- `A100484(n+1)+A001223(n+1)` -/
def P3976661050103775570.Spec : Prop :=
  ∀ n, P3976661050103775570.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P2986154444628466468

`A072055(n+1)+A046933(n+1)`
-/

namespace A001043.P2986154444628466468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A046933 (n + 1)

end

end A001043.P2986154444628466468

namespace A001043

/-- `A072055(n+1)+A046933(n+1)` -/
def P2986154444628466468.Spec : Prop :=
  ∀ n, P2986154444628466468.a n = A001043 (n + 1)

end A001043

/-! ## A001043.P12885159148667930203

`A172022(n+1)+A014687(n+1)`
-/

namespace A001043.P12885159148667930203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172022 (n + 1) + A014687 (n + 1)

end

end A001043.P12885159148667930203

namespace A001043

/-- `A172022(n+1)+A014687(n+1)` -/
def P12885159148667930203.Spec : Prop :=
  ∀ n, P12885159148667930203.a n = A001043 (n + 1)

end A001043

/-!
# A001044: a(n) = (n!)^2.

The programs for A001044, the canonical program `A001044.P12042438856590203725` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001044 has offset 0).

The definition of A001044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²` (program `A001044.P12042438856590203725`, by `A001044.P12042438856590203725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001044.P12042438856590203725

`n!²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001044

/-- `n!²` -/
def P12042438856590203725.Spec : Prop :=
  ∀ n, (P12042438856590203725.a n : ℤ) = A001044 n

theorem P12042438856590203725.correct : P12042438856590203725.Spec := by
  intro n
  simp only [A001044]

end A001044

/-! ## A001044.P5196913499118992659

`n²*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A001044.P5196913499118992659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n ^ 2 * a (n - 1)

end

end A001044.P5196913499118992659

namespace A001044

/-- `n²*a(n-1)` -/
def P5196913499118992659.Spec : Prop :=
  ∀ n, (P5196913499118992659.a n : ℤ) = A001044 n

end A001044

/-! ## A001044.P17925354899174482559

`A000142(n)/A000079(n)*A000165(n)`
-/

namespace A001044.P17925354899174482559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A000165 n : ℚ)

end

end A001044.P17925354899174482559

namespace A001044

/-- `A000142(n)/A000079(n)*A000165(n)` -/
def P17925354899174482559.Spec : Prop :=
  ∀ n, P17925354899174482559.a n = (A001044 n : ℚ)

end A001044

/-! ## A001044.P5261817319903837645

`A000290(A000142(n))`
-/

namespace A001044.P5261817319903837645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000142 n).toNat

end

end A001044.P5261817319903837645

namespace A001044

/-- `A000290(A000142(n))` -/
def P5261817319903837645.Spec : Prop :=
  ∀ n, P5261817319903837645.a n = A001044 n

end A001044

/-! ## A001044.P6310148124134137711

`n!^2`
-/

namespace A001044.P6310148124134137711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

end

end A001044.P6310148124134137711

namespace A001044

/-- `n!^2` -/
def P6310148124134137711.Spec : Prop :=
  ∀ n, (P6310148124134137711.a n : ℤ) = A001044 n

theorem P6310148124134137711.correct : P6310148124134137711.Spec := by
  intro n
  simp only [A001044, Nat.add_sub_cancel, A001044.P6310148124134137711.a, A001044.P12042438856590203725.a, SequenceMachineLib.memo_apply]

end A001044

/-!
# A001045: Jacobsthal sequence (or Jacobsthal numbers): a(n) = a(n-1) + 2*a(n-2), with a(0) = 0, a(1) = 1; also a(n) = nearest integer to 2^n/3.

The programs for A001045, the canonical program `A001045.P7867134490160464591` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001045 has offset 0).

The definition of A001045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)` (program `A001045.P7867134490160464591`, by `A001045.P7867134490160464591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001045.P16664920270643399011

`2^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A001045.P16664920270643399011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A001045.P16664920270643399011

namespace A001045

/-- `2^(n-1)-a(n-1)` -/
def P16664920270643399011.Spec : Prop :=
  ∀ n, P16664920270643399011.a n = (A001045 n : ℚ)

end A001045

/-! ## A001045.P7867134490160464591

`a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001045

/-- `a(n-1)+2*a(n-2)` -/
def P7867134490160464591.Spec : Prop :=
  ∀ n, (P7867134490160464591.a n : ℤ) = A001045 n

theorem P7867134490160464591.correct : P7867134490160464591.Spec := by
  intro n
  simp only [A001045]

end A001045

/-! ## A001045.P8982934710049325011

`round(2^n/3)`
-/

namespace A001045.P8982934710049325011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

end

end A001045.P8982934710049325011

namespace A001045

/-- `round(2^n/3)` -/
def P8982934710049325011.Spec : Prop :=
  ∀ n, P8982934710049325011.a n = A001045 n

end A001045

/-! ## A001045.P16662871567740796067

`A005578(n+1)-A005578(n)`
-/

namespace A001045.P16662871567740796067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1) - A005578 n

end

end A001045.P16662871567740796067

namespace A001045

/-- `A005578(n+1)-A005578(n)` -/
def P16662871567740796067.Spec : Prop :=
  ∀ n, P16662871567740796067.a n = A001045 n

end A001045

/-! ## A001045.P2254520673188988559

`sqrt(A014551(n)²+(-1)^(n-1)*2^(n+2))/3`
-/

namespace A001045.P2254520673188988559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A014551 n ^ 2 : ℚ) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ (n + 2) : ℚ) : ℝ) / 3

end

end A001045.P2254520673188988559

namespace A001045

/-- `sqrt(A014551(n)²+(-1)^(n-1)*2^(n+2))/3` -/
def P2254520673188988559.Spec : Prop :=
  ∀ n, P2254520673188988559.a n = (A001045 n : ℝ)

end A001045

/-! ## A001045.P768420371877892811

`ogf(x/(1-x-2x^2))`
-/

namespace A001045.P768420371877892811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -2] n

end

end A001045.P768420371877892811

namespace A001045

/-- `ogf(x/(1-x-2x^2))` -/
def P768420371877892811.Spec : Prop :=
  ∀ n, P768420371877892811.a n = A001045 n

end A001045

/-! ## A001045.P16037412683112588756

`a(n-1)+lcm(2, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A001045.P16037412683112588756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.lcm 2 (a (n - 2))

end

end A001045.P16037412683112588756

namespace A001045

/-- `a(n-1)+lcm(2, a(n-2))` -/
def P16037412683112588756.Spec : Prop :=
  ∀ n, (P16037412683112588756.a n : ℤ) = A001045 n

end A001045

/-! ## A001045.P11897039566110274394

`1-2*((n-1)%2-a(n-1))` with `a(0)=0`
-/

namespace A001045.P11897039566110274394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - 2 * (Int.tmod ((n : ℤ) - 1) 2 - a (n - 1))

end

end A001045.P11897039566110274394

namespace A001045

/-- `1-2*((n-1)%2-a(n-1))` -/
def P11897039566110274394.Spec : Prop :=
  ∀ n, P11897039566110274394.a n = A001045 n

end A001045

/-! ## A001045.P7318916559383148580

`3*a(n-1)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A001045.P7318916559383148580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  3 * a (n - 1) - 4 * a (n - 3)

end

end A001045.P7318916559383148580

namespace A001045

/-- `3*a(n-1)-4*a(n-3)` -/
def P7318916559383148580.Spec : Prop :=
  ∀ n, P7318916559383148580.a n = A001045 n

end A001045

/-! ## A001045.P9116783259332990939

`a(n-1)+a(n-2)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001045.P9116783259332990939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2))

end

end A001045.P9116783259332990939

namespace A001045

/-- `a(n-1)+a(n-2)+a(n-2)` -/
def P9116783259332990939.Spec : Prop :=
  ∀ n, (P9116783259332990939.a n : ℤ) = A001045 n

theorem P9116783259332990939.correct : P9116783259332990939.Spec := by
  intro n
  simp only [A001045, Nat.add_sub_cancel, A001045.P9116783259332990939.a, A001045.P7867134490160464591.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001045

/-! ## A001045.P5037403718627139952

`a(n-1)-a(n-2)/(1/2-1)` with `a(0)=0, a(1)=1`
-/

namespace A001045.P5037403718627139952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 2 - 1)

end

end A001045.P5037403718627139952

namespace A001045

/-- `a(n-1)-a(n-2)/(1/2-1)` -/
def P5037403718627139952.Spec : Prop :=
  ∀ n, P5037403718627139952.a n = (A001045 n : ℚ)

end A001045

/-! ## A001045.P17618712876288893538

`A167030(n)+1`
-/

namespace A001045.P17618712876288893538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n + 1

end

end A001045.P17618712876288893538

namespace A001045

/-- `A167030(n)+1` -/
def P17618712876288893538.Spec : Prop :=
  ∀ n, P17618712876288893538.a n = A001045 n

end A001045

/-! ## A001045.P18364014707616731546

`A128209(n)-1`
-/

namespace A001045.P18364014707616731546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n - 1

end

end A001045.P18364014707616731546

namespace A001045

/-- `A128209(n)-1` -/
def P18364014707616731546.Spec : Prop :=
  ∀ n, P18364014707616731546.a n = A001045 n

end A001045

/-! ## A001045.P997547980468427760

`A153643(n)-2`
-/

namespace A001045.P997547980468427760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n - 2

end

end A001045.P997547980468427760

namespace A001045

/-- `A153643(n)-2` -/
def P997547980468427760.Spec : Prop :=
  ∀ n, P997547980468427760.a n = A001045 n

end A001045

/-! ## A001045.P15559398578510188667

`A328284(n+3)`
-/

namespace A001045.P15559398578510188667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (n + 3)

end

end A001045.P15559398578510188667

namespace A001045

/-- `A328284(n+3)` -/
def P15559398578510188667.Spec : Prop :=
  ∀ n, P15559398578510188667.a n = A001045 n

end A001045

/-! ## A001045.P6912621934454802047

`A133684(2*n)`
-/

namespace A001045.P6912621934454802047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * n)

end

end A001045.P6912621934454802047

namespace A001045

/-- `A133684(2*n)` -/
def P6912621934454802047.Spec : Prop :=
  ∀ n, P6912621934454802047.a n = A001045 n

end A001045

/-! ## A001045.P14162399778943209059

`A092808(xor(1, n))`
-/

namespace A001045.P14162399778943209059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 (Nat.xor 1 n)

end

end A001045.P14162399778943209059

namespace A001045

/-- `A092808(xor(1, n))` -/
def P14162399778943209059.Spec : Prop :=
  ∀ n, P14162399778943209059.a n = A001045 n

end A001045

/-!
# A001046: a(n) = n*(n-1)*a(n-1)/2 + a(n-2), a(0) = a(1) = 1.

The programs for A001046, the canonical program `A001046.P11080743542477981065` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001046 has offset 0).

The definition of A001046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001046.P11080743542477981065

`C(n, 2)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001046

/-- `C(n, 2)*a(n-1)+a(n-2)` -/
def P11080743542477981065.Spec : Prop :=
  ∀ n, (P11080743542477981065.a n : ℤ) = A001046 n

theorem P11080743542477981065.correct : P11080743542477981065.Spec := by
  intro n
  simp only [A001046]

end A001046

/-! ## A001046.P8613560978829301992

`n*(n-1)*a(n-1)/2+a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001046.P8613560978829301992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) * ((n : ℤ) - 1) : ℚ) * a (n - 1) / 2 + a (n - 2)

end

end A001046.P8613560978829301992

namespace A001046

/-- `n*(n-1)*a(n-1)/2+a(n-2)` -/
def P8613560978829301992.Spec : Prop :=
  ∀ n, P8613560978829301992.a n = (A001046 n : ℚ)

end A001046

/-! ## A001046.P1973740386320109707

`a(n-2)+(∑[n]-n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A001046.P1973740386320109707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * a (n - 1)

end

end A001046.P1973740386320109707

namespace A001046

/-- `a(n-2)+(∑[n]-n)*a(n-1)` -/
def P1973740386320109707.Spec : Prop :=
  ∀ n, P1973740386320109707.a n = A001046 n

end A001046

/-! ## A001046.P490068351944041945

`a(n-2)+a(n-1)*A179865(n)` with `a(0)=1, a(1)=1`
-/

namespace A001046.P490068351944041945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A179865 n

end

end A001046.P490068351944041945

namespace A001046

/-- `a(n-2)+a(n-1)*A179865(n)` -/
def P490068351944041945.Spec : Prop :=
  ∀ n, P490068351944041945.a n = A001046 n

end A001046

/-!
# A001047: a(n) = 3^n - 2^n.

The programs for A001047, the canonical program `A001047.P13659031121335709313` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001047 has offset 0).

The definition of A001047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-2^n` (program `A001047.P13659031121335709313`, by `A001047.P13659031121335709313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001047.P13659031121335709313

`3^n-2^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001047

/-- `3^n-2^n` -/
def P13659031121335709313.Spec : Prop :=
  ∀ n, P13659031121335709313.a n = A001047 n

theorem P13659031121335709313.correct : P13659031121335709313.Spec := by
  intro n
  simp only [A001047]

end A001047

/-! ## A001047.P14866198397240543301

`A056182(n)/2`
-/

namespace A001047.P14866198397240543301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 n : ℚ) / 2

end

end A001047.P14866198397240543301

namespace A001047

/-- `A056182(n)/2` -/
def P14866198397240543301.Spec : Prop :=
  ∀ n, P14866198397240543301.a n = (A001047 n : ℚ)

end A001047

/-! ## A001047.P4979356745724283051

`(A002783(n)-1)/2`
-/

namespace A001047.P4979356745724283051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002783 n - 1 : ℚ) / 2

end

end A001047.P4979356745724283051

namespace A001047

/-- `(A002783(n)-1)/2` -/
def P4979356745724283051.Spec : Prop :=
  ∀ n, P4979356745724283051.a n = (A001047 n : ℚ)

end A001047

/-! ## A001047.P7853536769252512257

`(A003063(n+2)-A003063(n+1))/2`
-/

namespace A001047.P7853536769252512257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003063 (n + 2) - A003063 (n + 1) : ℚ) / 2

end

end A001047.P7853536769252512257

namespace A001047

/-- `(A003063(n+2)-A003063(n+1))/2` -/
def P7853536769252512257.Spec : Prop :=
  ∀ n, P7853536769252512257.a n = (A001047 n : ℚ)

end A001047

/-! ## A001047.P595972901885995463

`ogf(x/(1-5x+6x^2))`
-/

namespace A001047.P595972901885995463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, 6] n

end

end A001047.P595972901885995463

namespace A001047

/-- `ogf(x/(1-5x+6x^2))` -/
def P595972901885995463.Spec : Prop :=
  ∀ n, P595972901885995463.a n = A001047 n

end A001047

/-! ## A001047.P4006312647933047298

`-(xor(-2, 3^n)+2^n)`
-/

namespace A001047.P4006312647933047298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-2) (3 ^ n : ℤ) + (2 ^ n : ℤ))

end

end A001047.P4006312647933047298

namespace A001047

/-- `-(xor(-2, 3^n)+2^n)` -/
def P4006312647933047298.Spec : Prop :=
  ∀ n, P4006312647933047298.a n = A001047 n

end A001047

/-! ## A001047.P248011065170896892

`floor(5*(a(n-1)-a(n-2))-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001047.P248011065170896892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 * (a (n - 1) - a (n - 2)) - a (n - 2)

end

end A001047.P248011065170896892

namespace A001047

/-- `floor(5*(a(n-1)-a(n-2))-a(n-2))` -/
def P248011065170896892.Spec : Prop :=
  ∀ n, P248011065170896892.a n = A001047 n

theorem P248011065170896892.correct : P248011065170896892.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A001047, Nat.add_sub_cancel, A001047.P248011065170896892.a, A001047.P13659031121335709313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A001047, Nat.add_sub_cancel, A001047.P248011065170896892.a, A001047.P13659031121335709313.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A001047

/-! ## A001047.P1181826763435850476

`Δ[A134063(n)]`
-/

namespace A001047.P1181826763435850476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001047.P1181826763435850476

namespace A001047

/-- `Δ[A134063(n)]` -/
def P1181826763435850476.Spec : Prop :=
  ∀ n, P1181826763435850476.a n = A001047 n

end A001047

/-! ## A001047.P4503107022282420125

`A304973(Δ[n²])`
-/

namespace A001047.P4503107022282420125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001047.P4503107022282420125

namespace A001047

/-- `A304973(Δ[n²])` -/
def P4503107022282420125.Spec : Prop :=
  ∀ n, P4503107022282420125.a n = A001047 n

end A001047

/-! ## A001047.P4277274732495718045

`record[Δ[A098293(n)]]`
-/

namespace A001047.P4277274732495718045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001047.P4277274732495718045

namespace A001047

/-- `record[Δ[A098293(n)]]` -/
def P4277274732495718045.Spec : Prop :=
  ∀ n, P4277274732495718045.a n = A001047 n

end A001047

/-! ## A001047.P9065048541924251553

`Δ[A000392(n+1)]`
-/

namespace A001047.P9065048541924251553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001047.P9065048541924251553

namespace A001047

/-- `Δ[A000392(n+1)]` -/
def P9065048541924251553.Spec : Prop :=
  ∀ n, P9065048541924251553.a n = A001047 n

end A001047

/-! ## A001047.P9142114971271335294

`Δ[A056509(Δ[n²])]`
-/

namespace A001047.P9142114971271335294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056509 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001047.P9142114971271335294

namespace A001047

/-- `Δ[A056509(Δ[n²])]` -/
def P9142114971271335294.Spec : Prop :=
  ∀ n, P9142114971271335294.a n = A001047 n

end A001047

/-! ## A001047.P1014428174650605153

`xor(A057427(n), A362316(n))`
-/

namespace A001047.P1014428174650605153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A362316 n)

end

end A001047.P1014428174650605153

namespace A001047

/-- `xor(A057427(n), A362316(n))` -/
def P1014428174650605153.Spec : Prop :=
  ∀ n, P1014428174650605153.a n = A001047 n

end A001047

/-! ## A001047.P17058420296739995257

`∑[A025192(n)-A011782(n)]`
-/

namespace A001047.P17058420296739995257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001047.P17058420296739995257

namespace A001047

/-- `∑[A025192(n)-A011782(n)]` -/
def P17058420296739995257.Spec : Prop :=
  ∀ n, P17058420296739995257.a n = A001047 n

end A001047

/-! ## A001047.P2972989936501777306

`A210448(n)/3`
-/

namespace A001047.P2972989936501777306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210448 n : ℚ) / 3

end

end A001047.P2972989936501777306

namespace A001047

/-- `A210448(n)/3` -/
def P2972989936501777306.Spec : Prop :=
  ∀ n, P2972989936501777306.a n = (A001047 n : ℚ)

end A001047

/-! ## A001047.P13641335646752522809

`A145563(n)/4`
-/

namespace A001047.P13641335646752522809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145563 n : ℚ) / 4

end

end A001047.P13641335646752522809

namespace A001047

/-- `A145563(n)/4` -/
def P13641335646752522809.Spec : Prop :=
  ∀ n, P13641335646752522809.a n = (A001047 n : ℚ)

end A001047

/-! ## A001047.P5813453115215031789

`Δ[A101052(n)/2]`
-/

namespace A001047.P5813453115215031789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101052 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001047.P5813453115215031789

namespace A001047

/-- `Δ[A101052(n)/2]` -/
def P5813453115215031789.Spec : Prop :=
  ∀ n, P5813453115215031789.a n = (A001047 n : ℚ)

end A001047

/-! ## A001047.P6526783968918829186

`Δ[A003063(n+1)/2]`
-/

namespace A001047.P6526783968918829186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003063 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001047.P6526783968918829186

namespace A001047

/-- `Δ[A003063(n+1)/2]` -/
def P6526783968918829186.Spec : Prop :=
  ∀ n, P6526783968918829186.a n = (A001047 n : ℚ)

end A001047

/-! ## A001047.P3470334147572362792

`Δ[A028243(n+1)/2]`
-/

namespace A001047.P3470334147572362792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001047.P3470334147572362792

namespace A001047

/-- `Δ[A028243(n+1)/2]` -/
def P3470334147572362792.Spec : Prop :=
  ∀ n, P3470334147572362792.a n = (A001047 n : ℚ)

end A001047

/-! ## A001047.P10932517173274902858

`Δ[A094033(n+1)/3]`
-/

namespace A001047.P10932517173274902858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094033 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001047.P10932517173274902858

namespace A001047

/-- `Δ[A094033(n+1)/3]` -/
def P10932517173274902858.Spec : Prop :=
  ∀ n, P10932517173274902858.a n = (A001047 n : ℚ)

end A001047

/-!
# A001048: a(n) = n! + (n-1)!.

The programs for A001048, the canonical program `A001048.P17874306345601623766` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001048 has offset 1).

The definition of A001048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!+n!` (program `A001048.P17874306345601623766`, by `A001048.P17874306345601623766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001048.P10670779994320947588

`(n+2)*n!`
-/

namespace A001048.P10670779994320947588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.factorial n

end

end A001048.P10670779994320947588

namespace A001048

/-- `(n+2)*n!` -/
def P10670779994320947588.Spec : Prop :=
  ∀ n, (P10670779994320947588.a n : ℤ) = A001048 (n + 1)

theorem P10670779994320947588.correct : P10670779994320947588.Spec := by
  intro n
  simp only [A001048, Nat.add_sub_cancel, A001048.P10670779994320947588.a, A001048.P17874306345601623766.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A001048

/-! ## A001048.P17874306345601623766

`(n+1)!+n!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001048

/-- `(n+1)!+n!` -/
def P17874306345601623766.Spec : Prop :=
  ∀ n, (P17874306345601623766.a n : ℤ) = A001048 (n + 1)

theorem P17874306345601623766.correct : P17874306345601623766.Spec := by
  intro n
  simp only [A001048, Nat.add_sub_cancel]

end A001048

/-! ## A001048.P12938746096066656218

`((n+1)²-(n+1)-2)*a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A001048.P12938746096066656218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) - 2) * a (n - 2)

end

end A001048.P12938746096066656218

namespace A001048

/-- `((n+1)²-(n+1)-2)*a(n-2)` -/
def P12938746096066656218.Spec : Prop :=
  ∀ n, P12938746096066656218.a n = A001048 (n + 1)

end A001048

/-! ## A001048.P4681541787426545856

`n*a(n-1)+(n-1)*a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A001048.P4681541787426545856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (n : ℤ) * a (n - 1) + ((n : ℤ) - 1) * a (n - 2)

end

end A001048.P4681541787426545856

namespace A001048

/-- `n*a(n-1)+(n-1)*a(n-2)` -/
def P4681541787426545856.Spec : Prop :=
  ∀ n, P4681541787426545856.a n = A001048 (n + 1)

end A001048

/-! ## A001048.P14235562763256579014

`n!*comp[n^7]`
-/

namespace A001048.P14235562763256579014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001048.P14235562763256579014

namespace A001048

/-- `n!*comp[n^7]` -/
def P14235562763256579014.Spec : Prop :=
  ∀ n, (P14235562763256579014.a n : ℤ) = A001048 (n + 1)

end A001048

/-! ## A001048.P14554579331076553946

`n!-Δ[-∑[n!]]`
-/

namespace A001048.P14554579331076553946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (f1 (n + 1) - f1 n)

end

end A001048.P14554579331076553946

namespace A001048

/-- `n!-Δ[-∑[n!]]` -/
def P14554579331076553946.Spec : Prop :=
  ∀ n, P14554579331076553946.a n = A001048 (n + 1)

end A001048

/-! ## A001048.P11007370616654028730

`∏[n+1]*ratio[n+1]`
-/

namespace A001048.P11007370616654028730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A001048.P11007370616654028730

namespace A001048

/-- `∏[n+1]*ratio[n+1]` -/
def P11007370616654028730.Spec : Prop :=
  ∀ n, P11007370616654028730.a n = (A001048 (n + 1) : ℚ)

end A001048

/-! ## A001048.P1854797247236605923

`abs((n-2-2*n)*n!)`
-/

namespace A001048.P1854797247236605923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 2 - (2 * n : ℤ)) * (Nat.factorial n : ℤ)|

end

end A001048.P1854797247236605923

namespace A001048

/-- `abs((n-2-2*n)*n!)` -/
def P1854797247236605923.Spec : Prop :=
  ∀ n, P1854797247236605923.a n = A001048 (n + 1)

end A001048

/-! ## A001048.P8146451541307002630

`-((n-2-2*n)*n!)`
-/

namespace A001048.P8146451541307002630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 2 - (2 * n : ℤ)) * (Nat.factorial n : ℤ))

end

end A001048.P8146451541307002630

namespace A001048

/-- `-((n-2-2*n)*n!)` -/
def P8146451541307002630.Spec : Prop :=
  ∀ n, P8146451541307002630.a n = A001048 (n + 1)

theorem P8146451541307002630.correct : P8146451541307002630.Spec := by
  intro n
  simp only [A001048, Nat.add_sub_cancel, A001048.P8146451541307002630.a, A001048.P17874306345601623766.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A001048

/-! ## A001048.P7841859647751151221

`∏[n+1]+∏[gcd(n, ∏[n+1])]`
-/

namespace A001048.P7841859647751151221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∏ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ∏ j ∈ Finset.range (n + 1), f2 j

end

end A001048.P7841859647751151221

namespace A001048

/-- `∏[n+1]+∏[gcd(n, ∏[n+1])]` -/
def P7841859647751151221.Spec : Prop :=
  ∀ n, (P7841859647751151221.a n : ℤ) = A001048 (n + 1)

end A001048

/-!
# A001051: Number of subgroups of order n in orthogonal group O(3).

The programs for A001051, there is no canonical definition to state claims against.
-/

/-! ## A001051.P5695508878145471006

`∑{e}[A051836(A103517(n)), #]^and(1, n)`
-/

namespace A001051.P5695508878145471006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (A103517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ Nat.land 1 n

end

end A001051.P5695508878145471006

/-!
# A001052: a(n) = n*(n-1)*a(n-1)/2 + a(n-2), a(0) = 1, a(1) = 2.

The programs for A001052, the canonical program `A001052.P4140060421672812606` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001052 has offset 0).

The definition of A001052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001052.P4140060421672812606

`C(n, 2)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001052

/-- `C(n, 2)*a(n-1)+a(n-2)` -/
def P4140060421672812606.Spec : Prop :=
  ∀ n, (P4140060421672812606.a n : ℤ) = A001052 n

theorem P4140060421672812606.correct : P4140060421672812606.Spec := by
  intro n
  simp only [A001052]

end A001052

/-! ## A001052.P11232235287918615335

`n*(n-1)*a(n-1)/2+a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001052.P11232235287918615335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n : ℤ) * ((n : ℤ) - 1) : ℚ) * a (n - 1) / 2 + a (n - 2)

end

end A001052.P11232235287918615335

namespace A001052

/-- `n*(n-1)*a(n-1)/2+a(n-2)` -/
def P11232235287918615335.Spec : Prop :=
  ∀ n, P11232235287918615335.a n = (A001052 n : ℚ)

end A001052

/-! ## A001052.P14252191218123228375

`a(n-2)+(∑[n]-n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A001052.P14252191218123228375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * a (n - 1)

end

end A001052.P14252191218123228375

namespace A001052

/-- `a(n-2)+(∑[n]-n)*a(n-1)` -/
def P14252191218123228375.Spec : Prop :=
  ∀ n, P14252191218123228375.a n = A001052 n

end A001052

/-! ## A001052.P5755947141599784071

`a(n-2)+a(n-1)*A179865(n)` with `a(0)=1, a(1)=2`
-/

namespace A001052.P5755947141599784071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A179865 n

end

end A001052.P5755947141599784071

namespace A001052

/-- `a(n-2)+a(n-1)*A179865(n)` -/
def P5755947141599784071.Spec : Prop :=
  ∀ n, P5755947141599784071.a n = A001052 n

end A001052

/-!
# A001053: a(n+1) = n*a(n) + a(n-1) with a(0)=1, a(1)=0.

The programs for A001053, the canonical program `A001053.P16042356240247814722` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001053 has offset 0).

The definition of A001053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001053.P16042356240247814722

`(n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001053

/-- `(n-1)*a(n-1)+a(n-2)` -/
def P16042356240247814722.Spec : Prop :=
  ∀ n, P16042356240247814722.a n = A001053 n

theorem P16042356240247814722.correct : P16042356240247814722.Spec := by
  intro n
  simp only [A001053]

end A001053

/-! ## A001053.P16223818179903187709

`a(n-2)-(1-n)*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A001053.P16223818179903187709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - (1 - (n : ℤ)) * a (n - 1)

end

end A001053.P16223818179903187709

namespace A001053

/-- `a(n-2)-(1-n)*a(n-1)` -/
def P16223818179903187709.Spec : Prop :=
  ∀ n, P16223818179903187709.a n = A001053 n

end A001053

/-! ## A001053.P11111983673428549347

`A062323(∑[n])`
-/

namespace A001053.P11111983673428549347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001053.P11111983673428549347

namespace A001053

/-- `A062323(∑[n])` -/
def P11111983673428549347.Spec : Prop :=
  ∀ n, P11111983673428549347.a n = A001053 n

end A001053

/-! ## A001053.P4895338033877837932

`∏[1/a(n-1)+n-1]-A001040(n)` with `a(0)=1`
-/

namespace A001053.P4895338033877837932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  1 / f1 (n - 1) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A001040 n : ℚ)

end

end A001053.P4895338033877837932

namespace A001053

/-- `∏[1/a(n-1)+n-1]-A001040(n)` -/
def P4895338033877837932.Spec : Prop :=
  ∀ n, P4895338033877837932.a n = (A001053 n : ℚ)

end A001053

/-! ## A001053.P6894939063228524573

`A102038(n)-A001040(n)`
-/

namespace A001053.P6894939063228524573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102038 n - A001040 n

end

end A001053.P6894939063228524573

namespace A001053

/-- `A102038(n)-A001040(n)` -/
def P6894939063228524573.Spec : Prop :=
  ∀ n, P6894939063228524573.a n = A001053 n

end A001053

/-! ## A001053.P10917613987036269444

`or(char[2], A062323(A000217(n)))`
-/

namespace A001053.P10917613987036269444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A062323 (A000217 n).toNat)

end

end A001053.P10917613987036269444

namespace A001053

/-- `or(char[2], A062323(A000217(n)))` -/
def P10917613987036269444.Spec : Prop :=
  ∀ n, P10917613987036269444.a n = A001053 n

end A001053

/-! ## A001053.P3706390919782499609

`A093858(n)-2*A001040(n)`
-/

namespace A001053.P3706390919782499609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093858 n - 2 * A001040 n

end

end A001053.P3706390919782499609

namespace A001053

/-- `A093858(n)-2*A001040(n)` -/
def P3706390919782499609.Spec : Prop :=
  ∀ n, P3706390919782499609.a n = A001053 n

end A001053

/-! ## A001053.P5451779622867644657

`A062323(A000217(n))+A010052(A016789(n))`
-/

namespace A001053.P5451779622867644657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (A000217 n).toNat + A010052 (A016789 n).toNat

end

end A001053.P5451779622867644657

namespace A001053

/-- `A062323(A000217(n))+A010052(A016789(n))` -/
def P5451779622867644657.Spec : Prop :=
  ∀ n, P5451779622867644657.a n = A001053 n

end A001053

/-!
# A001054: a(n) = a(n-1)*a(n-2) - 1.

The programs for A001054, the canonical program `A001054.P1151355045552776217` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001054 has offset 0).

The definition of A001054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)-1` (program `A001054.P1151355045552776217`, by `A001054.P1151355045552776217.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001054.P1151355045552776217

`a(n-1)*a(n-2)-1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001054

/-- `a(n-1)*a(n-2)-1` -/
def P1151355045552776217.Spec : Prop :=
  ∀ n, P1151355045552776217.a n = A001054 n

theorem P1151355045552776217.correct : P1151355045552776217.Spec := by
  intro n
  simp only [A001054]

end A001054

/-! ## A001054.P2443036498085782656

`a(n-2)/a(n-1)^(-1)-1` with `a(0)=0, a(1)=1`
-/

namespace A001054.P2443036498085782656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) / a (n - 1) ^ (-1 : ℤ) - 1

end

end A001054.P2443036498085782656

namespace A001054

/-- `a(n-2)/a(n-1)^(-1)-1` -/
def P2443036498085782656.Spec : Prop :=
  ∀ n, P2443036498085782656.a n = (A001054 n : ℚ)

end A001054

/-! ## A001054.P10139844326508993761

`a(n-1)/tan(acot(a(n-2)))-1` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A001054.P10139844326508993761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (a (n - 2))) - 1

end

end A001054.P10139844326508993761

namespace A001054

/-- `a(n-1)/tan(acot(a(n-2)))-1` -/
def P10139844326508993761.Spec : Prop :=
  ∀ n, P10139844326508993761.a n = (A001054 n : ℝ)

end A001054

/-! ## A001054.P14358601223397471319

`a(n-2)/(2/a(n-1)-1/a(n-1))-1` with `a(0)=0, a(1)=1`
-/

namespace A001054.P14358601223397471319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) / (2 / a (n - 1) - 1 / a (n - 1)) - 1

end

end A001054.P14358601223397471319

namespace A001054

/-- `a(n-2)/(2/a(n-1)-1/a(n-1))-1` -/
def P14358601223397471319.Spec : Prop :=
  ∀ n, P14358601223397471319.a n = (A001054 n : ℚ)

end A001054

/-!
# A001055: The multiplicative partition function: number of ways of factoring n with all factors greater than 1 (a(1) = 1 by convention).

The programs for A001055, there is no canonical definition to state claims against.
-/

/-! ## A001055.P13760015070147740515

`A028422(n+1)+1`
-/

namespace A001055.P13760015070147740515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + 1

end

end A001055.P13760015070147740515

/-! ## A001055.P15136097558308757177

`Δ[A096276(n)]`
-/

namespace A001055.P15136097558308757177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001055.P15136097558308757177

/-! ## A001055.P17585870934221605745

`∑{d}[n+1, A050370(#)]`
-/

namespace A001055.P17585870934221605745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 d

end

end A001055.P17585870934221605745

/-! ## A001055.P11127273178908058560

`A344368(n+1)/(n+1)`
-/

namespace A001055.P11127273178908058560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344368 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001055.P11127273178908058560

/-! ## A001055.P989869598745838443

`A050322(A101296(n+1))`
-/

namespace A001055.P989869598745838443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A101296 (n + 1)).toNat

end

end A001055.P989869598745838443

/-! ## A001055.P5535892235850083857

`A331049(A077462(n+1))`
-/

namespace A001055.P5535892235850083857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331049 (A077462 (n + 1)).toNat

end

end A001055.P5535892235850083857

/-! ## A001055.P17835429280920727021

`A318284(A181819(n+1))`
-/

namespace A001055.P17835429280920727021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181819 (n + 1)).toNat

end

end A001055.P17835429280920727021

/-! ## A001055.P206311145067364299

`A096276(n+1)-A096276(n)`
-/

namespace A001055.P206311145067364299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (n + 1) - A096276 n

end

end A001055.P206311145067364299

/-! ## A001055.P15159549969592596640

`A167688(n+1)+A033273(n+1)`
-/

namespace A001055.P15159549969592596640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (n + 1) + A033273 (n + 1)

end

end A001055.P15159549969592596640

/-! ## A001055.P8962565714431299623

`A319786(n+1)+A281116(n+1)`
-/

namespace A001055.P8962565714431299623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (n + 1) + A281116 (n + 1)

end

end A001055.P8962565714431299623

/-! ## A001055.P16194675461765805626

`A339890(n+1)+A339846(n+1)`
-/

namespace A001055.P16194675461765805626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (n + 1) + A339846 (n + 1)

end

end A001055.P16194675461765805626

/-! ## A001055.P14527855795345273776

`A057567(n+1)-A339564(n+1)`
-/

namespace A001055.P14527855795345273776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (n + 1) - A339564 (n + 1)

end

end A001055.P14527855795345273776

/-! ## A001055.P11281502171895560256

`A055212(n+1)+A167688(n+1)+1`
-/

namespace A001055.P11281502171895560256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) + (A167688 (n + 1) + 1)

end

end A001055.P11281502171895560256

/-! ## A001055.P17497241209393471858

`A316441(n+1)+2*A339890(n+1)`
-/

namespace A001055.P17497241209393471858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (n + 1) + 2 * A339890 (n + 1)

end

end A001055.P17497241209393471858

/-! ## A001055.P12603409016712461044

`∑{d}[n+1, A008683(#)*A057567((n+1)/#)]`
-/

namespace A001055.P12603409016712461044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A057567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001055.P12603409016712461044

/-! ## A001055.P16404601752874637501

`∑{d}[n+1, A116488(#)*A116489((n+1)/#)]`
-/

namespace A001055.P16404601752874637501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A116488 d * A116489 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001055.P16404601752874637501

/-! ## A001055.P927582676340818181

`∑{d}[n+1, A000688(#)*A322452((n+1)/#)]`
-/

namespace A001055.P927582676340818181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000688 d * A322452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001055.P927582676340818181

/-! ## A001055.P16803252491665667334

`∑{d}[n+1, A045778(#)*A347438((n+1)/#)]`
-/

namespace A001055.P16803252491665667334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A347438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001055.P16803252491665667334

/-! ## A001055.P3769505980679212118

`∑{d}[n+1, A114592(#)*A301830((n+1)/#)]`
-/

namespace A001055.P3769505980679212118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A301830 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001055.P3769505980679212118

/-! ## A001055.P12239531956185566141

`∑{d}[n+1, A065333(#)*A371244((n+1)/#)]`
-/

namespace A001055.P12239531956185566141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 d * A371244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001055.P12239531956185566141

/-!
# A001056: a(n) = a(n-1)*a(n-2) + 1, a(0) = 1, a(1) = 3.

The programs for A001056, the canonical program `A001056.P6271822875999176012` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001056 has offset 0).

The definition of A001056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+1` (program `A001056.P6271822875999176012`, by `A001056.P6271822875999176012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001056.P6271822875999176012

`a(n-1)*a(n-2)+1` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001056

/-- `a(n-1)*a(n-2)+1` -/
def P6271822875999176012.Spec : Prop :=
  ∀ n, (P6271822875999176012.a n : ℤ) = A001056 n

theorem P6271822875999176012.correct : P6271822875999176012.Spec := by
  intro n
  simp only [A001056]

end A001056

/-! ## A001056.P9718155192365874472

`lcm(a(n-1), a(n-2))+1` with `a(0)=1, a(1)=3`
-/

namespace A001056.P9718155192365874472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm (a (n - 1)) (a (n - 2)) + 1

end

end A001056.P9718155192365874472

namespace A001056

/-- `lcm(a(n-1), a(n-2))+1` -/
def P9718155192365874472.Spec : Prop :=
  ∀ n, (P9718155192365874472.a n : ℤ) = A001056 n

end A001056

/-! ## A001056.P10715429369837804069

`ceil(a(n-2)/acot(a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A001056.P10715429369837804069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈(a (n - 2) : ℝ) / SequenceMachineLib.acot (a (n - 1) : ℝ)⌉

end

end A001056.P10715429369837804069

namespace A001056

/-- `ceil(a(n-2)/acot(a(n-1)))` -/
def P10715429369837804069.Spec : Prop :=
  ∀ n, P10715429369837804069.a n = A001056 n

end A001056

/-! ## A001056.P10803457228570650591

`1-ceil(-a(n-1))*a(n-2)` with `a(0)=1, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A001056.P10803457228570650591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - (-a (n - 1)) * a (n - 2)

end

end A001056.P10803457228570650591

namespace A001056

/-- `1-ceil(-a(n-1))*a(n-2)` -/
def P10803457228570650591.Spec : Prop :=
  ∀ n, P10803457228570650591.a n = A001056 n

end A001056

/-! ## A001056.P11855274495847636002

`1-round(-a(n-1))*a(n-2)` with `a(0)=1, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A001056.P11855274495847636002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - (-a (n - 1)) * a (n - 2)

end

end A001056.P11855274495847636002

namespace A001056

/-- `1-round(-a(n-1))*a(n-2)` -/
def P11855274495847636002.Spec : Prop :=
  ∀ n, P11855274495847636002.a n = A001056 n

end A001056

/-!
# A001057: Canonical enumeration of integers: interleaved positive and negative integers with zero prepended.

The programs for A001057, the canonical program `A001057.P5698194758103254717` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001057 has offset 0).

The definition of A001057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001057.P5698194758103254717

`ceil(n/2)*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001057

/-- `ceil(n/2)*(-1)^(n+1)` -/
def P5698194758103254717.Spec : Prop :=
  ∀ n, P5698194758103254717.a n = A001057 n

theorem P5698194758103254717.correct : P5698194758103254717.Spec := by
  intro n
  simp only [A001057]

end A001057

/-! ## A001057.P7776511008094115451

`a(n-1)-n*(-1)^n` with `a(0)=0`
-/

namespace A001057.P7776511008094115451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℤ) * (-1) ^ n

end

end A001057.P7776511008094115451

namespace A001057

/-- `a(n-1)-n*(-1)^n` -/
def P7776511008094115451.Spec : Prop :=
  ∀ n, P7776511008094115451.a n = A001057 n

end A001057

/-! ## A001057.P7912577572136369098

`1-2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001057.P7912577572136369098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - 2 * a (n - 1) - a (n - 2)

end

end A001057.P7912577572136369098

namespace A001057

/-- `1-2*a(n-1)-a(n-2)` -/
def P7912577572136369098.Spec : Prop :=
  ∀ n, P7912577572136369098.a n = A001057 n

end A001057

/-! ## A001057.P9702831913371434042

`1-Δ[lcm(2, n)/2]`
-/

namespace A001057.P9702831913371434042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A001057.P9702831913371434042

namespace A001057

/-- `1-Δ[lcm(2, n)/2]` -/
def P9702831913371434042.Spec : Prop :=
  ∀ n, P9702831913371434042.a n = (A001057 n : ℚ)

end A001057

/-! ## A001057.P14595286137824441255

`1-Δ[n/gcd(2, n)]`
-/

namespace A001057.P14595286137824441255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A001057.P14595286137824441255

namespace A001057

/-- `1-Δ[n/gcd(2, n)]` -/
def P14595286137824441255.Spec : Prop :=
  ∀ n, P14595286137824441255.a n = (A001057 n : ℚ)

end A001057

/-! ## A001057.P4925011975776066956

`Δ[n%or(1, n)/2]`
-/

namespace A001057.P4925011975776066956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % Nat.lor 1 n : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001057.P4925011975776066956

namespace A001057

/-- `Δ[n%or(1, n)/2]` -/
def P4925011975776066956.Spec : Prop :=
  ∀ n, P4925011975776066956.a n = (A001057 n : ℚ)

end A001057

/-! ## A001057.P11403915244504255698

`Δ[C(or(1, n), n)/2]`
-/

namespace A001057.P11403915244504255698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001057.P11403915244504255698

namespace A001057

/-- `Δ[C(or(1, n), n)/2]` -/
def P11403915244504255698.Spec : Prop :=
  ∀ n, P11403915244504255698.a n = (A001057 n : ℚ)

end A001057

/-! ## A001057.P13077100116850549165

`∑[ogf(x/(1+2x+x^2))]`
-/

namespace A001057.P13077100116850549165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001057.P13077100116850549165

namespace A001057

/-- `∑[ogf(x/(1+2x+x^2))]` -/
def P13077100116850549165.Spec : Prop :=
  ∀ n, P13077100116850549165.a n = A001057 n

end A001057

/-! ## A001057.P8414111059216408716

`ogf(x/(1+x-x^2-x^3))`
-/

namespace A001057.P8414111059216408716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 1, -1, -1] n

end

end A001057.P8414111059216408716

namespace A001057

/-- `ogf(x/(1+x-x^2-x^3))` -/
def P8414111059216408716.Spec : Prop :=
  ∀ n, P8414111059216408716.a n = A001057 n

end A001057

/-! ## A001057.P4985092255670481927

`and(1, n)-a(n-1)` with `a(0)=0`
-/

namespace A001057.P4985092255670481927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.land 1 n : ℤ) - a (n - 1)

end

end A001057.P4985092255670481927

namespace A001057

/-- `and(1, n)-a(n-1)` -/
def P4985092255670481927.Spec : Prop :=
  ∀ n, P4985092255670481927.a n = A001057 n

end A001057

/-! ## A001057.P15094547343669090622

`1-Δ[gcd(n², C(n, 2))]`
-/

namespace A001057.P15094547343669090622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A001057.P15094547343669090622

namespace A001057

/-- `1-Δ[gcd(n², C(n, 2))]` -/
def P15094547343669090622.Spec : Prop :=
  ∀ n, P15094547343669090622.a n = A001057 n

end A001057

/-! ## A001057.P1524289466066370773

`floor(Δ[n/(and(1, n)+1)])`
-/

namespace A001057.P1524289466066370773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A001057.P1524289466066370773

namespace A001057

/-- `floor(Δ[n/(and(1, n)+1)])` -/
def P1524289466066370773.Spec : Prop :=
  ∀ n, P1524289466066370773.a n = A001057 n

end A001057

/-! ## A001057.P6928278930453704253

`round(1/2-a(n-1))` with `a(0)=0`
-/

namespace A001057.P6928278930453704253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((1 : ℚ) / 2 - (a (n - 1) : ℚ))

end

end A001057.P6928278930453704253

namespace A001057

/-- `round(1/2-a(n-1))` -/
def P6928278930453704253.Spec : Prop :=
  ∀ n, P6928278930453704253.a n = A001057 n

end A001057

/-! ## A001057.P2267030970348761926

`Δ[n/2*(n+1)%2]`
-/

namespace A001057.P2267030970348761926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (((n + 1) % 2 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001057.P2267030970348761926

namespace A001057

/-- `Δ[n/2*(n+1)%2]` -/
def P2267030970348761926.Spec : Prop :=
  ∀ n, P2267030970348761926.a n = (A001057 n : ℚ)

end A001057

/-! ## A001057.P2021790234373191815

`Δ[n*and(1, n+1)/2]`
-/

namespace A001057.P2021790234373191815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.land 1 (n + 1) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001057.P2021790234373191815

namespace A001057

/-- `Δ[n*and(1, n+1)/2]` -/
def P2021790234373191815.Spec : Prop :=
  ∀ n, P2021790234373191815.a n = (A001057 n : ℚ)

end A001057

/-! ## A001057.P8206198100408221057

`∑[n/(2*and(1, n)-1)]`
-/

namespace A001057.P8206198100408221057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((2 * Nat.land 1 n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001057.P8206198100408221057

namespace A001057

/-- `∑[n/(2*and(1, n)-1)]` -/
def P8206198100408221057.Spec : Prop :=
  ∀ n, P8206198100408221057.a n = (A001057 n : ℚ)

end A001057

/-! ## A001057.P17913614377461145545

`Δ[n*and(1, n-1)/2]`
-/

namespace A001057.P17913614377461145545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * Int.land 1 ((n : ℤ) - 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001057.P17913614377461145545

namespace A001057

/-- `Δ[n*and(1, n-1)/2]` -/
def P17913614377461145545.Spec : Prop :=
  ∀ n, P17913614377461145545.a n = (A001057 n : ℚ)

end A001057

/-! ## A001057.P7387691812697848467

`Δ[gcd(n+1, and(1, n))/2]`
-/

namespace A001057.P7387691812697848467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (Nat.land 1 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001057.P7387691812697848467

namespace A001057

/-- `Δ[gcd(n+1, and(1, n))/2]` -/
def P7387691812697848467.Spec : Prop :=
  ∀ n, P7387691812697848467.a n = (A001057 n : ℚ)

end A001057

/-! ## A001057.P9044210785090646762

`val(∑[n], n)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A001057.P9044210785090646762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) n : ℤ) - a (n - 1)

end

end A001057.P9044210785090646762

namespace A001057

/-- `val(∑[n], n)-a(n-1)` -/
def P9044210785090646762.Spec : Prop :=
  ∀ n, P9044210785090646762.a n = A001057 n

end A001057

/-! ## A001057.P1012274598724695403

`Δ[gcd(n+2, floor(n/2)+1)]`
-/

namespace A001057.P1012274598724695403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (⌊(n : ℚ) / 2⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A001057.P1012274598724695403

namespace A001057

/-- `Δ[gcd(n+2, floor(n/2)+1)]` -/
def P1012274598724695403.Spec : Prop :=
  ∀ n, P1012274598724695403.a n = A001057 n

end A001057

/-!
# A001059: Number of doubly labeled heap-ordered trees.

The programs for A001059, there is no canonical definition to state claims against.
-/

/-! ## A001059.P16718222924289837820

`A139252(A007840(n))`
-/

namespace A001059.P16718222924289837820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (A007840 n).toNat

end

end A001059.P16718222924289837820

/-!
# A001060: a(n) = a(n-1) + a(n-2) with a(0)=2, a(1)=5. Sometimes called the Evangelist Sequence.

The programs for A001060, the canonical program `A001060.P18002487221857472297` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001060 has offset 0).

The definition of A001060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)` (program `A001060.P18002487221857472297`, by `A001060.P18002487221857472297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001060.P18002487221857472297

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001060

/-- `a(n-1)+a(n-2)` -/
def P18002487221857472297.Spec : Prop :=
  ∀ n, (P18002487221857472297.a n : ℤ) = A001060 n

theorem P18002487221857472297.correct : P18002487221857472297.Spec := by
  intro n
  simp only [A001060]

end A001060

/-! ## A001060.P8909007460360379468

`ogf((2+3x)/(1-x-x^2))`
-/

namespace A001060.P8909007460360379468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -1, -1] n

end

end A001060.P8909007460360379468

namespace A001060

/-- `ogf((2+3x)/(1-x-x^2))` -/
def P8909007460360379468.Spec : Prop :=
  ∀ n, P8909007460360379468.a n = A001060 n

end A001060

/-! ## A001060.P4873355070127183552

`a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A001060.P4873355070127183552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A001060.P4873355070127183552

namespace A001060

/-- `a(n-1)-floor(-a(n-2))` -/
def P4873355070127183552.Spec : Prop :=
  ∀ n, P4873355070127183552.a n = A001060 n

end A001060

/-! ## A001060.P16466366886230367034

`a(n-1)-ceil(-a(n-2))` with `a(0)=2, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A001060.P16466366886230367034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A001060.P16466366886230367034

namespace A001060

/-- `a(n-1)-ceil(-a(n-2))` -/
def P16466366886230367034.Spec : Prop :=
  ∀ n, P16466366886230367034.a n = A001060 n

end A001060

/-! ## A001060.P2901467342626891105

`a(n-1)-round(-a(n-2))` with `a(0)=2, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A001060.P2901467342626891105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A001060.P2901467342626891105

namespace A001060

/-- `a(n-1)-round(-a(n-2))` -/
def P2901467342626891105.Spec : Prop :=
  ∀ n, P2901467342626891105.a n = A001060 n

end A001060

/-! ## A001060.P1393491345821954672

`a(n-1)-(char[1]-a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A001060.P1393491345821954672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A001060.P1393491345821954672

namespace A001060

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P1393491345821954672.Spec : Prop :=
  ∀ n, P1393491345821954672.a n = A001060 n

end A001060

/-! ## A001060.P438455278106030755

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=2, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A001060.P438455278106030755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A001060.P438455278106030755

namespace A001060

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P438455278106030755.Spec : Prop :=
  ∀ n, P438455278106030755.a n = A001060 n

end A001060

/-! ## A001060.P15988303694675615672

`A013655(n+1)`
-/

namespace A001060.P15988303694675615672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (n + 1)

end

end A001060.P15988303694675615672

namespace A001060

/-- `A013655(n+1)` -/
def P15988303694675615672.Spec : Prop :=
  ∀ n, P15988303694675615672.a n = A001060 n

end A001060

/-! ## A001060.P10526812120386459933

`A022318(n)+1`
-/

namespace A001060.P10526812120386459933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + 1

end

end A001060.P10526812120386459933

namespace A001060

/-- `A022318(n)+1` -/
def P10526812120386459933.Spec : Prop :=
  ∀ n, P10526812120386459933.a n = A001060 n

end A001060

/-! ## A001060.P10495201016023868184

`abs(Δ[A396201(n)])`
-/

namespace A001060.P10495201016023868184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001060.P10495201016023868184

namespace A001060

/-- `abs(Δ[A396201(n)])` -/
def P10495201016023868184.Spec : Prop :=
  ∀ n, P10495201016023868184.a n = A001060 n

end A001060

/-! ## A001060.P16026411383692790390

`A174562(Δ[n²])`
-/

namespace A001060.P16026411383692790390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174562 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001060.P16026411383692790390

namespace A001060

/-- `A174562(Δ[n²])` -/
def P16026411383692790390.Spec : Prop :=
  ∀ n, P16026411383692790390.a n = A001060 n

end A001060

/-! ## A001060.P16083026230527885572

`abs(A396201(n+2))`
-/

namespace A001060.P16083026230527885572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A396201 (n + 2)|

end

end A001060.P16083026230527885572

namespace A001060

/-- `abs(A396201(n+2))` -/
def P16083026230527885572.Spec : Prop :=
  ∀ n, P16083026230527885572.a n = A001060 n

end A001060

/-! ## A001060.P14131575423196397352

`A187890(n+3)-1`
-/

namespace A001060.P14131575423196397352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 3) - 1

end

end A001060.P14131575423196397352

namespace A001060

/-- `A187890(n+3)-1` -/
def P14131575423196397352.Spec : Prop :=
  ∀ n, P14131575423196397352.a n = A001060 n

end A001060

/-! ## A001060.P18198048258990691470

`∑[A013655(abs(1-n))]`
-/

namespace A001060.P18198048258990691470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001060.P18198048258990691470

namespace A001060

/-- `∑[A013655(abs(1-n))]` -/
def P18198048258990691470.Spec : Prop :=
  ∀ n, P18198048258990691470.a n = A001060 n

end A001060

/-! ## A001060.P9236432347166441821

`A013915(n+1)-(n+1)`
-/

namespace A001060.P9236432347166441821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013915 (n + 1) - (n + 1 : ℤ)

end

end A001060.P9236432347166441821

namespace A001060

/-- `A013915(n+1)-(n+1)` -/
def P9236432347166441821.Spec : Prop :=
  ∀ n, P9236432347166441821.a n = A001060 n

end A001060

/-! ## A001060.P11477308928746869712

`round((4-ϕ)*A000045(n+2))`
-/

namespace A001060.P11477308928746869712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 - Real.goldenRatio) * (A000045 (n + 2) : ℝ))

end

end A001060.P11477308928746869712

namespace A001060

/-- `round((4-ϕ)*A000045(n+2))` -/
def P11477308928746869712.Spec : Prop :=
  ∀ n, P11477308928746869712.a n = A001060 n

end A001060

/-! ## A001060.P9103747668798160045

`A022087(n)+A000032(n)`
-/

namespace A001060.P9103747668798160045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A000032 n

end

end A001060.P9103747668798160045

namespace A001060

/-- `A022087(n)+A000032(n)` -/
def P9103747668798160045.Spec : Prop :=
  ∀ n, P9103747668798160045.a n = A001060 n

end A001060

/-! ## A001060.P12654147743337133639

`A118658(n)+A022088(n)`
-/

namespace A001060.P12654147743337133639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022088 n

end

end A001060.P12654147743337133639

namespace A001060

/-- `A118658(n)+A022088(n)` -/
def P12654147743337133639.Spec : Prop :=
  ∀ n, P12654147743337133639.a n = A001060 n

end A001060

/-! ## A001060.P4101329815215852953

`A152163(n)+A022096(n)`
-/

namespace A001060.P4101329815215852953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022096 n

end

end A001060.P4101329815215852953

namespace A001060

/-- `A152163(n)+A022096(n)` -/
def P4101329815215852953.Spec : Prop :=
  ∀ n, P4101329815215852953.a n = A001060 n

end A001060

/-! ## A001060.P7519239526618555409

`A187893(n)+A001595(n)`
-/

namespace A001060.P7519239526618555409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A001595 n

end

end A001060.P7519239526618555409

namespace A001060

/-- `A187893(n)+A001595(n)` -/
def P7519239526618555409.Spec : Prop :=
  ∀ n, P7519239526618555409.a n = A001060 n

end A001060

/-!
# A001063: E.g.f. satisfies A'(x) = A(x/(1-x)).

The programs for A001063, there is no canonical definition to state claims against.
-/

/-! ## A001063.P15879693720640883487

`A355793(A217685(n))`
-/

namespace A001063.P15879693720640883487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355793 (A217685 n).toNat

end

end A001063.P15879693720640883487

/-! ## A001063.P5175987876184526588

`A343198(A151375(n+1))`
-/

namespace A001063.P5175987876184526588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343198 (A151375 (n + 1)).toNat

end

end A001063.P5175987876184526588

/-! ## A001063.P6813279466524584759

`A063195(A346220(n)+A003724(n))`
-/

namespace A001063.P6813279466524584759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A346220 n + A003724 n).toNat

end

end A001063.P6813279466524584759

/-!
# A001064: a(n) = a(n-1)*a(n-2) + a(n-3).

The programs for A001064, the canonical program `A001064.P5161793861734554814` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001064 has offset 0).

The definition of A001064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+a(n-3)` (program `A001064.P5161793861734554814`, by `A001064.P5161793861734554814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001064.P5161793861734554814

`a(n-1)*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001064

/-- `a(n-1)*a(n-2)+a(n-3)` -/
def P5161793861734554814.Spec : Prop :=
  ∀ n, (P5161793861734554814.a n : ℤ) = A001064 n

theorem P5161793861734554814.correct : P5161793861734554814.Spec := by
  intro n
  simp only [A001064]

end A001064

/-! ## A001064.P7422379777271926337

`a(n-3)+lcm(a(n-1), a(n-2))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A001064.P7422379777271926337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 3) + Nat.lcm (a (n - 1)) (a (n - 2))

end

end A001064.P7422379777271926337

namespace A001064

/-- `a(n-3)+lcm(a(n-1), a(n-2))` -/
def P7422379777271926337.Spec : Prop :=
  ∀ n, (P7422379777271926337.a n : ℤ) = A001064 n

end A001064

/-!
# A001065: Sum of proper divisors (or aliquot parts) of n: sum of divisors of n that are less than n.

The programs for A001065, the canonical program `A001065.P4097147489331274860` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001065 has offset 1).

The definition of A001065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001065.P4097147489331274860

`A000203(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001065

/-- `A000203(n+1)-(n+1)` -/
def P4097147489331274860.Spec : Prop :=
  ∀ n, P4097147489331274860.a n = A001065 (n + 1)

theorem P4097147489331274860.correct : P4097147489331274860.Spec := by
  intro n
  simp only [A001065, Nat.add_sub_cancel]

end A001065

/-! ## A001065.P5719712661104533999

`A006128(n+1)-A220477(n+1)-(n+1)`
-/

namespace A001065.P5719712661104533999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A220477 (n + 1) - (n + 1 : ℤ)

end

end A001065.P5719712661104533999

namespace A001065

/-- `A006128(n+1)-A220477(n+1)-(n+1)` -/
def P5719712661104533999.Spec : Prop :=
  ∀ n, P5719712661104533999.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P6687152999686971861

`∑{d}[n+1, #]-(n+1)`
-/

namespace A001065.P6687152999686971861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A001065.P6687152999686971861

namespace A001065

/-- `∑{d}[n+1, #]-(n+1)` -/
def P6687152999686971861.Spec : Prop :=
  ∀ n, P6687152999686971861.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P14945707361085826729

`∑{d}[n+1, #%(n+1)]`
-/

namespace A001065.P14945707361085826729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % (n + 1)

end

end A001065.P14945707361085826729

namespace A001065

/-- `∑{d}[n+1, #%(n+1)]` -/
def P14945707361085826729.Spec : Prop :=
  ∀ n, (P14945707361085826729.a n : ℤ) = A001065 (n + 1)

end A001065

/-! ## A001065.P14809473138804424146

`A091818(n+1)/2`
-/

namespace A001065.P14809473138804424146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2

end

end A001065.P14809473138804424146

namespace A001065

/-- `A091818(n+1)/2` -/
def P14809473138804424146.Spec : Prop :=
  ∀ n, P14809473138804424146.a n = (A001065 (n + 1) : ℚ)

end A001065

/-! ## A001065.P6693495934019072280

`A237588(n+1)+n`
-/

namespace A001065.P6693495934019072280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (n : ℤ)

end

end A001065.P6693495934019072280

namespace A001065

/-- `A237588(n+1)+n` -/
def P6693495934019072280.Spec : Prop :=
  ∀ n, P6693495934019072280.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P8722517882025474576

`A039653(n+1)-n`
-/

namespace A001065.P8722517882025474576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - (n : ℤ)

end

end A001065.P8722517882025474576

namespace A001065

/-- `A039653(n+1)-n` -/
def P8722517882025474576.Spec : Prop :=
  ∀ n, P8722517882025474576.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P1144801205891525679

`n-A235796(n+1)`
-/

namespace A001065.P1144801205891525679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A235796 (n + 1)

end

end A001065.P1144801205891525679

namespace A001065

/-- `n-A235796(n+1)` -/
def P1144801205891525679.Spec : Prop :=
  ∀ n, P1144801205891525679.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P2389963747277333671

`∑{d}[n+1, A051953(#)]`
-/

namespace A001065.P2389963747277333671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d

end

end A001065.P2389963747277333671

namespace A001065

/-- `∑{d}[n+1, A051953(#)]` -/
def P2389963747277333671.Spec : Prop :=
  ∀ n, P2389963747277333671.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P16245585266060328573

`floor(A294015(n+1)/2)`
-/

namespace A001065.P16245585266060328573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294015 (n + 1) : ℚ) / 2⌋

end

end A001065.P16245585266060328573

namespace A001065

/-- `floor(A294015(n+1)/2)` -/
def P16245585266060328573.Spec : Prop :=
  ∀ n, P16245585266060328573.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P14720547156774133156

`ceil(A062967(n+1)/2)`
-/

namespace A001065.P14720547156774133156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062967 (n + 1) : ℚ) / 2⌉

end

end A001065.P14720547156774133156

namespace A001065

/-- `ceil(A062967(n+1)/2)` -/
def P14720547156774133156.Spec : Prop :=
  ∀ n, P14720547156774133156.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P2924496225078735635

`∑[A340793(n+1)-1]`
-/

namespace A001065.P2924496225078735635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001065.P2924496225078735635

namespace A001065

/-- `∑[A340793(n+1)-1]` -/
def P2924496225078735635.Spec : Prop :=
  ∀ n, P2924496225078735635.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P12099540536457367025

`∑[n]-A024816(n+1)`
-/

namespace A001065.P12099540536457367025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A024816 (n + 1)

end

end A001065.P12099540536457367025

namespace A001065

/-- `∑[n]-A024816(n+1)` -/
def P12099540536457367025.Spec : Prop :=
  ∀ n, P12099540536457367025.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P4124327715024950932

`n+1-Δ[A111490(n)]`
-/

namespace A001065.P4124327715024950932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A001065.P4124327715024950932

namespace A001065

/-- `n+1-Δ[A111490(n)]` -/
def P4124327715024950932.Spec : Prop :=
  ∀ n, P4124327715024950932.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P8136016614112400130

`Δ[A160664(n)]-(n+1)`
-/

namespace A001065.P8136016614112400130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A001065.P8136016614112400130

namespace A001065

/-- `Δ[A160664(n)]-(n+1)` -/
def P8136016614112400130.Spec : Prop :=
  ∀ n, P8136016614112400130.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P14311829794376502834

`A033880(n+1)+1+n`
-/

namespace A001065.P14311829794376502834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + 1 + (n : ℤ)

end

end A001065.P14311829794376502834

namespace A001065

/-- `A033880(n+1)+1+n` -/
def P14311829794376502834.Spec : Prop :=
  ∀ n, P14311829794376502834.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P16023979659507504678

`1-A033879(n+1)+n`
-/

namespace A001065.P16023979659507504678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033879 (n + 1) + (n : ℤ)

end

end A001065.P16023979659507504678

namespace A001065

/-- `1-A033879(n+1)+n` -/
def P16023979659507504678.Spec : Prop :=
  ∀ n, P16023979659507504678.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P6071524173937085314

`A088580(n+1)-(n+2)`
-/

namespace A001065.P6071524173937085314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (n + 2 : ℤ)

end

end A001065.P6071524173937085314

namespace A001065

/-- `A088580(n+1)-(n+2)` -/
def P6071524173937085314.Spec : Prop :=
  ∀ n, P6071524173937085314.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P1919247709964162582

`xor(n+1, A318457(n+1))`
-/

namespace A001065.P1919247709964162582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A318457 (n + 1))

end

end A001065.P1919247709964162582

namespace A001065

/-- `xor(n+1, A318457(n+1))` -/
def P1919247709964162582.Spec : Prop :=
  ∀ n, P1919247709964162582.a n = A001065 (n + 1)

end A001065

/-! ## A001065.P2027173752178831862

`∑{d}[n+1, #-A000010(#)]`
-/

namespace A001065.P2027173752178831862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A000010 d)

end

end A001065.P2027173752178831862

namespace A001065

/-- `∑{d}[n+1, #-A000010(#)]` -/
def P2027173752178831862.Spec : Prop :=
  ∀ n, P2027173752178831862.a n = A001065 (n + 1)

end A001065

/-!
# A001066: Dimensions (sorted, with duplicates removed) of real simple Lie algebras.

The programs for A001066, there is no canonical definition to state claims against.
-/

/-! ## A001066.P7511612526934010326

`∪[2*A003038(n+1), A003038(n+1)]`
-/

namespace A001066.P7511612526934010326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001066.P7511612526934010326

/-!
# A001067: Numerator of Bernoulli(2*n)/(2*n).

The programs for A001067, there is no canonical definition to state claims against.
-/

/-! ## A001067.P5396092164817149382

`A060054(2*(n+1))`
-/

namespace A001067.P5396092164817149382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060054 (2 * (n + 1))

end

end A001067.P5396092164817149382

/-! ## A001067.P1102273570643369741

`A358625(2*(n+1))`
-/

namespace A001067.P1102273570643369741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358625 (2 * (n + 1))

end

end A001067.P1102273570643369741

/-! ## A001067.P18429490196143981876

`A000367(n+1)/A300711(n+1)`
-/

namespace A001067.P18429490196143981876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 (n + 1) : ℚ) / (A300711 (n + 1) : ℚ)

end

end A001067.P18429490196143981876

/-! ## A001067.P12597903346414140262

`A000367(n+1)/A300330(2*(n+1))`
-/

namespace A001067.P12597903346414140262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 (n + 1) : ℚ) / (A300330 (2 * (n + 1)) : ℚ)

end

end A001067.P12597903346414140262

/-! ## A001067.P5358072915694350324

`A000367(n+1)*A006953(n+1)/A164877(n+1)`
-/

namespace A001067.P5358072915694350324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 (n + 1) * A006953 (n + 1) : ℚ) / (A164877 (n + 1) : ℚ)

end

end A001067.P5358072915694350324

/-! ## A001067.P9753855913305767920

`A000367(n+1)*A036283(n+1)/A228838(n+1)`
-/

namespace A001067.P9753855913305767920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 (n + 1) * A036283 (n + 1) : ℚ) / (A228838 (n + 1) : ℚ)

end

end A001067.P9753855913305767920

/-!
# A001068: a(n) = floor(5*n/4), numbers that are congruent to {0, 1, 2, 3} mod 5.

The programs for A001068, the canonical program `A001068.P10019650998362085192` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001068 has offset 0).

The definition of A001068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*n/4)` (program `A001068.P10019650998362085192`, by `A001068.P10019650998362085192.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001068.P10019650998362085192

`floor(5*n/4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001068

/-- `floor(5*n/4)` -/
def P10019650998362085192.Spec : Prop :=
  ∀ n, P10019650998362085192.a n = A001068 n

theorem P10019650998362085192.correct : P10019650998362085192.Spec := by
  intro n
  simp only [A001068]

end A001068

/-! ## A001068.P8018350088870420988

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A001068.P8018350088870420988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 5] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A001068.P8018350088870420988

namespace A001068

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P8018350088870420988.Spec : Prop :=
  ∀ n, P8018350088870420988.a n = A001068 n

end A001068

/-! ## A001068.P11655122943478217234

`n+A002265(n)`
-/

namespace A001068.P11655122943478217234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A002265 n

end

end A001068.P11655122943478217234

namespace A001068

/-- `n+A002265(n)` -/
def P11655122943478217234.Spec : Prop :=
  ∀ n, P11655122943478217234.a n = A001068 n

end A001068

/-! ## A001068.P2448593562294812611

`comp[lcm(5, n)-1]`
-/

namespace A001068.P2448593562294812611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001068.P2448593562294812611

namespace A001068

/-- `comp[lcm(5, n)-1]` -/
def P2448593562294812611.Spec : Prop :=
  ∀ n, (P2448593562294812611.a n : ℤ) = A001068 n

end A001068

/-! ## A001068.P541847680054937841

`xor(-comp[5*n], -1)`
-/

namespace A001068.P541847680054937841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) (-1)

end

end A001068.P541847680054937841

namespace A001068

/-- `xor(-comp[5*n], -1)` -/
def P541847680054937841.Spec : Prop :=
  ∀ n, P541847680054937841.a n = A001068 n

end A001068

/-! ## A001068.P6388521840884528813

`and(5*n, -4)/4`
-/

namespace A001068.P6388521840884528813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (5 * n : ℤ) (-4) : ℚ) / 4

end

end A001068.P6388521840884528813

namespace A001068

/-- `and(5*n, -4)/4` -/
def P6388521840884528813.Spec : Prop :=
  ∀ n, P6388521840884528813.a n = (A001068 n : ℚ)

end A001068

/-! ## A001068.P15050134046710479793

`comp[5*xor(1, n)-1]`
-/

namespace A001068.P15050134046710479793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.xor 1 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001068.P15050134046710479793

namespace A001068

/-- `comp[5*xor(1, n)-1]` -/
def P15050134046710479793.Spec : Prop :=
  ∀ n, (P15050134046710479793.a n : ℤ) = A001068 n

end A001068

/-! ## A001068.P16831625147851338676

`comp[a(n-1)+5]` with `a(0)=4`
-/

namespace A001068.P16831625147851338676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001068.P16831625147851338676

namespace A001068

/-- `comp[a(n-1)+5]` -/
def P16831625147851338676.Spec : Prop :=
  ∀ n, (P16831625147851338676.a n : ℤ) = A001068 n

end A001068

/-! ## A001068.P520375441560350619

`and(n, -4)/4+n`
-/

namespace A001068.P520375441560350619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-4) : ℚ) / 4 + (n : ℚ)

end

end A001068.P520375441560350619

namespace A001068

/-- `and(n, -4)/4+n` -/
def P520375441560350619.Spec : Prop :=
  ∀ n, P520375441560350619.a n = (A001068 n : ℚ)

end A001068

/-! ## A001068.P2515528983054092431

`floor(or(1, n)/4)+n`
-/

namespace A001068.P2515528983054092431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) / 4⌋ + (n : ℤ)

end

end A001068.P2515528983054092431

namespace A001068

/-- `floor(or(1, n)/4)+n` -/
def P2515528983054092431.Spec : Prop :=
  ∀ n, P2515528983054092431.a n = A001068 n

end A001068

/-! ## A001068.P4901160635738301287

`floor(xor(1, n)/4)+n`
-/

namespace A001068.P4901160635738301287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n : ℚ) / 4⌋ + (n : ℤ)

end

end A001068.P4901160635738301287

namespace A001068

/-- `floor(xor(1, n)/4)+n` -/
def P4901160635738301287.Spec : Prop :=
  ∀ n, P4901160635738301287.a n = A001068 n

end A001068

/-! ## A001068.P11185282655099434147

`record[n/gcd(5, n+1)]`
-/

namespace A001068.P11185282655099434147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 5 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001068.P11185282655099434147

namespace A001068

/-- `record[n/gcd(5, n+1)]` -/
def P11185282655099434147.Spec : Prop :=
  ∀ n, P11185282655099434147.a n = (A001068 n : ℚ)

end A001068

/-! ## A001068.P14532204591532532814

`comp[n-(n+1)%5]`
-/

namespace A001068.P14532204591532532814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 1) % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001068.P14532204591532532814

namespace A001068

/-- `comp[n-(n+1)%5]` -/
def P14532204591532532814.Spec : Prop :=
  ∀ n, (P14532204591532532814.a n : ℤ) = A001068 n

end A001068

/-! ## A001068.P2987297952184567571

`record[n-val(n+1, 5)]`
-/

namespace A001068.P2987297952184567571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 1) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001068.P2987297952184567571

namespace A001068

/-- `record[n-val(n+1, 5)]` -/
def P2987297952184567571.Spec : Prop :=
  ∀ n, P2987297952184567571.a n = A001068 n

end A001068

/-! ## A001068.P11995167157770857155

`record[gcd(n, val(n+1, 5))]`
-/

namespace A001068.P11995167157770857155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (SequenceMachineLib.valuation (n + 1) 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001068.P11995167157770857155

namespace A001068

/-- `record[gcd(n, val(n+1, 5))]` -/
def P11995167157770857155.Spec : Prop :=
  ∀ n, (P11995167157770857155.a n : ℤ) = A001068 n

end A001068

/-! ## A001068.P12166129715749903647

`(5*n-n%4)/4`
-/

namespace A001068.P12166129715749903647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n : ℤ) - ((n % 4 : ℕ) : ℤ) : ℚ) / 4

end

end A001068.P12166129715749903647

namespace A001068

/-- `(5*n-n%4)/4` -/
def P12166129715749903647.Spec : Prop :=
  ∀ n, P12166129715749903647.a n = (A001068 n : ℚ)

end A001068

/-! ## A001068.P10481476904616053250

`eq[1, n^val(n+1, 5)]`
-/

namespace A001068.P10481476904616053250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001068.P10481476904616053250

namespace A001068

/-- `eq[1, n^val(n+1, 5)]` -/
def P10481476904616053250.Spec : Prop :=
  ∀ n, (P10481476904616053250.a n : ℤ) = A001068 n

end A001068

/-! ## A001068.P12989928404229121889

`lt[3*n, lcm(10, n+1)]`
-/

namespace A001068.P12989928404229121889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001068.P12989928404229121889

namespace A001068

/-- `lt[3*n, lcm(10, n+1)]` -/
def P12989928404229121889.Spec : Prop :=
  ∀ n, (P12989928404229121889.a n : ℤ) = A001068 n

end A001068

/-! ## A001068.P9254765784441659149

`lt[n^val(n+1, 5), 2]`
-/

namespace A001068.P9254765784441659149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n + 1) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001068.P9254765784441659149

namespace A001068

/-- `lt[n^val(n+1, 5), 2]` -/
def P9254765784441659149.Spec : Prop :=
  ∀ n, (P9254765784441659149.a n : ℤ) = A001068 n

end A001068

/-! ## A001068.P3781132846970184131

`a(n-4)+5` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A001068.P3781132846970184131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a (n - 4) + 5

end

end A001068.P3781132846970184131

namespace A001068

/-- `a(n-4)+5` -/
def P3781132846970184131.Spec : Prop :=
  ∀ n, (P3781132846970184131.a n : ℤ) = A001068 n

end A001068

/-!
# A001069: Log2*(n) (version 2): take log_2 of n this many times to get a number < 2.

The programs for A001069, there is no canonical definition to state claims against.
-/

/-! ## A001069.P14091951232321836495

`A010096(n+1)-1`
-/

namespace A001069.P14091951232321836495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010096 (n + 1) - 1

end

end A001069.P14091951232321836495

/-!
# A001070: Number of normalized Latin squares with second row even.

The programs for A001070, there is no canonical definition to state claims against.
-/

/-! ## A001070.P3134023183476921853

`A370588(A104431(n))`
-/

namespace A001070.P3134023183476921853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370588 (A104431 n).toNat

end

end A001070.P3134023183476921853

/-! ## A001070.P2788016464159410624

`A370588(A165137(n))`
-/

namespace A001070.P2788016464159410624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370588 (A165137 n).toNat

end

end A001070.P2788016464159410624

/-!
# A001071: Number of one-sided chessboard polyominoes with n cells.

The programs for A001071, there is no canonical definition to state claims against.
-/

/-! ## A001071.P4194498902742868204

`A121198(n+1)-A000010(A121198(n+4))%A030227(n)`
-/

namespace A001071.P4194498902742868204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121198 (n + 1) - Int.tmod (A000010 (A121198 (n + 4)).toNat) (A030227 n)

end

end A001071.P4194498902742868204

/-! ## A001071.P5131585288897701543

`A121198(n+1)-A075120(A000079(n))`
-/

namespace A001071.P5131585288897701543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121198 (n + 1) - A075120 (A000079 n).toNat

end

end A001071.P5131585288897701543

/-! ## A001071.P10567614687545638102

`xor(A112604(A002293(n)), A121198(n+1))`
-/

namespace A001071.P10567614687545638102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112604 (A002293 n).toNat) (A121198 (n + 1))

end

end A001071.P10567614687545638102

/-!
# A001072: Number of minimally 2-edge-connected non-isomorphic graphs with n nodes.

The programs for A001072, there is no canonical definition to state claims against.
-/

/-! ## A001072.P6461259542154801102

`A060208(or(2, A001894(n+4)))`
-/

namespace A001072.P6461259542154801102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060208 (Int.lor 2 (A001894 (n + 4))).toNat

end

end A001072.P6461259542154801102

/-! ## A001072.P13236818701286266445

`or(21%A077550(n), A206432(n))`
-/

namespace A001072.P13236818701286266445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod 21 (A077550 n)) (A206432 n)

end

end A001072.P13236818701286266445

/-! ## A001072.P16702315861434376849

`or(floor(n/(xor(n, n+1)+1)), A257639(A209005(n+1)))`
-/

namespace A001072.P16702315861434376849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ (A257639 (A209005 (n + 1)).toNat)

end

end A001072.P16702315861434376849

/-! ## A001072.P9069690964454786086

`A210567(n)+A025427(A000984(n))`
-/

namespace A001072.P9069690964454786086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210567 n + A025427 (A000984 n).toNat

end

end A001072.P9069690964454786086

/-!
# A001073: Label a 1-cm ruler with digits 1 cm wide.

The programs for A001073, there is no canonical definition to state claims against.
-/

/-! ## A001073.P839818164521578399

`A007376(lt[A143045(n+1), A143033(n+1)])`
-/

namespace A001073.P839818164521578399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A001073.P839818164521578399

/-! ## A001073.P15792768468947890336

`A007376(lt[A143045(n+1), A143035(n+1)])`
-/

namespace A001073.P15792768468947890336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A001073.P15792768468947890336

/-! ## A001073.P989924727738121961

`A007376(lt[A143045(n+1), A143036(n+1)])`
-/

namespace A001073.P989924727738121961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A001073.P989924727738121961

/-! ## A001073.P5921429200088973748

`A007376(lt[A143045(n+1), A328894(n+1)])`
-/

namespace A001073.P5921429200088973748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A001073.P5921429200088973748

/-! ## A001073.P15841211049194699477

`A007376(lt[A143045(n+1), A057335(3*(n+1))])`
-/

namespace A001073.P15841211049194699477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A001073.P15841211049194699477

/-!
# A001075: a(0) = 1, a(1) = 2, a(n) = 4*a(n-1) - a(n-2).

The programs for A001075, the canonical program `A001075.P11337327749206570882` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001075 has offset 0).

The definition of A001075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A001075.P11337327749206570882`, by `A001075.P11337327749206570882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001075.P11337327749206570882

`4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001075

/-- `4*a(n-1)-a(n-2)` -/
def P11337327749206570882.Spec : Prop :=
  ∀ n, P11337327749206570882.a n = A001075 n

theorem P11337327749206570882.correct : P11337327749206570882.Spec := by
  intro n
  simp only [A001075]

end A001075

/-! ## A001075.P8094375059506583813

`cosh(n*log(2+sqrt(3)))`
-/

namespace A001075.P8094375059506583813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((n : ℝ) * Real.log (2 + Real.sqrt (3 : ℝ)))

end

end A001075.P8094375059506583813

namespace A001075

/-- `cosh(n*log(2+sqrt(3)))` -/
def P8094375059506583813.Spec : Prop :=
  ∀ n, P8094375059506583813.a n = (A001075 n : ℝ)

end A001075

/-! ## A001075.P17006412567039072409

`ogf((1-2x)/(1-4x+x^2))`
-/

namespace A001075.P17006412567039072409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 1] n

end

end A001075.P17006412567039072409

namespace A001075

/-- `ogf((1-2x)/(1-4x+x^2))` -/
def P17006412567039072409.Spec : Prop :=
  ∀ n, P17006412567039072409.a n = A001075 n

end A001075

/-! ## A001075.P16859698018821168755

`floor((sqrt(3)+2)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A001075.P16859698018821168755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A001075.P16859698018821168755

namespace A001075

/-- `floor((sqrt(3)+2)*a(n-1))` -/
def P16859698018821168755.Spec : Prop :=
  ∀ n, P16859698018821168755.a n = A001075 n

end A001075

/-! ## A001075.P4320705814454529090

`-round(a(n-1)/(sqrt(3)-2))` with `a(0)=1, a(1)=2`
-/

namespace A001075.P4320705814454529090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  -SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A001075.P4320705814454529090

namespace A001075

/-- `-round(a(n-1)/(sqrt(3)-2))` -/
def P4320705814454529090.Spec : Prop :=
  ∀ n, P4320705814454529090.a n = A001075 n

end A001075

/-! ## A001075.P4703823528746855

`∑[lcm(4, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A001075.P4703823528746855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  (Int.lcm 4 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001075.P4703823528746855

namespace A001075

/-- `∑[lcm(4, a(n-1))-a(n-2)]` -/
def P4703823528746855.Spec : Prop :=
  ∀ n, P4703823528746855.a n = A001075 n

end A001075

/-! ## A001075.P208024278101351508

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A001075.P208024278101351508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A001075.P208024278101351508

namespace A001075

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P208024278101351508.Spec : Prop :=
  ∀ n, P208024278101351508.a n = (A001075 n : ℚ)

end A001075

/-! ## A001075.P15382792359752084469

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A001075.P15382792359752084469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A001075.P15382792359752084469

namespace A001075

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P15382792359752084469.Spec : Prop :=
  ∀ n, P15382792359752084469.a n = A001075 n

theorem P15382792359752084469.correct : P15382792359752084469.Spec := by
  intro n
  simp only [A001075, Nat.add_sub_cancel, A001075.P15382792359752084469.a, A001075.P11337327749206570882.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001075

/-! ## A001075.P17404803757624665957

`a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A001075.P17404803757624665957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A001075.P17404803757624665957

namespace A001075

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P17404803757624665957.Spec : Prop :=
  ∀ n, P17404803757624665957.a n = A001075 n

theorem P17404803757624665957.correct : P17404803757624665957.Spec := by
  intro n
  simp only [A001075, Nat.add_sub_cancel, A001075.P17404803757624665957.a, A001075.P11337327749206570882.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001075

/-! ## A001075.P3596475723818555196

`A092184(n)+1`
-/

namespace A001075.P3596475723818555196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n + 1

end

end A001075.P3596475723818555196

namespace A001075

/-- `A092184(n)+1` -/
def P3596475723818555196.Spec : Prop :=
  ∀ n, P3596475723818555196.a n = A001075 n

end A001075

/-! ## A001075.P13971888238963456450

`A121401(n)-1`
-/

namespace A001075.P13971888238963456450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n - 1

end

end A001075.P13971888238963456450

namespace A001075

/-- `A121401(n)-1` -/
def P13971888238963456450.Spec : Prop :=
  ∀ n, P13971888238963456450.a n = A001075 n

end A001075

/-! ## A001075.P16640834496183690891

`A002531(2*n)`
-/

namespace A001075.P16640834496183690891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n)

end

end A001075.P16640834496183690891

namespace A001075

/-- `A002531(2*n)` -/
def P16640834496183690891.Spec : Prop :=
  ∀ n, P16640834496183690891.a n = A001075 n

end A001075

/-! ## A001075.P2241470663532881239

`A005246(Δ[n²])`
-/

namespace A001075.P2241470663532881239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001075.P2241470663532881239

namespace A001075

/-- `A005246(Δ[n²])` -/
def P2241470663532881239.Spec : Prop :=
  ∀ n, P2241470663532881239.a n = A001075 n

end A001075

/-! ## A001075.P13346877029164958527

`record[Δ[A002530(n)]]`
-/

namespace A001075.P13346877029164958527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001075.P13346877029164958527

namespace A001075

/-- `record[Δ[A002530(n)]]` -/
def P13346877029164958527.Spec : Prop :=
  ∀ n, P13346877029164958527.a n = A001075 n

end A001075

/-! ## A001075.P4795299036278074413

`Δ[A107401(2*n)]`
-/

namespace A001075.P4795299036278074413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001075.P4795299036278074413

namespace A001075

/-- `Δ[A107401(2*n)]` -/
def P4795299036278074413.Spec : Prop :=
  ∀ n, P4795299036278074413.a n = A001075 n

end A001075

/-! ## A001075.P6886124591299762832

`abs(A108413(Δ[n²]))`
-/

namespace A001075.P6886124591299762832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A001075.P6886124591299762832

namespace A001075

/-- `abs(A108413(Δ[n²]))` -/
def P6886124591299762832.Spec : Prop :=
  ∀ n, P6886124591299762832.a n = A001075 n

end A001075

/-! ## A001075.P11011924519819350007

`A249578(3*n+1)`
-/

namespace A001075.P11011924519819350007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (3 * n + 1)

end

end A001075.P11011924519819350007

namespace A001075

/-- `A249578(3*n+1)` -/
def P11011924519819350007.Spec : Prop :=
  ∀ n, P11011924519819350007.a n = A001075 n

end A001075

/-! ## A001075.P133399981391919963

`∑[abs(A108413(2*n))]`
-/

namespace A001075.P133399981391919963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001075.P133399981391919963

namespace A001075

/-- `∑[abs(A108413(2*n))]` -/
def P133399981391919963.Spec : Prop :=
  ∀ n, P133399981391919963.a n = A001075 n

end A001075

/-! ## A001075.P16693745297562435775

`A001834(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A001075.P16693745297562435775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001834 (n - 1) + a (n - 1)

end

end A001075.P16693745297562435775

namespace A001075

/-- `A001834(n-1)+a(n-1)` -/
def P16693745297562435775.Spec : Prop :=
  ∀ n, P16693745297562435775.a n = A001075 n

end A001075

/-! ## A001075.P11295915254522879681

`A082841(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A001075.P11295915254522879681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082841 (n - 1) - a (n - 1)

end

end A001075.P11295915254522879681

namespace A001075

/-- `A082841(n-1)-a(n-1)` -/
def P11295915254522879681.Spec : Prop :=
  ∀ n, P11295915254522879681.a n = A001075 n

end A001075

/-!
# A001076: Denominators of continued fraction convergents to sqrt(5).

The programs for A001076, the canonical program `A001076.P17701824972558233071` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001076 has offset 0).

The definition of A001076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001076.P17701824972558233071

`4*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001076

/-- `4*a(n-1)+a(n-2)` -/
def P17701824972558233071.Spec : Prop :=
  ∀ n, (P17701824972558233071.a n : ℤ) = A001076 n

theorem P17701824972558233071.correct : P17701824972558233071.Spec := by
  intro n
  simp only [A001076]

end A001076

/-! ## A001076.P2018326719822206131

`A014445(n)/2`
-/

namespace A001076.P2018326719822206131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 n : ℚ) / 2

end

end A001076.P2018326719822206131

namespace A001076

/-- `A014445(n)/2` -/
def P2018326719822206131.Spec : Prop :=
  ∀ n, P2018326719822206131.a n = (A001076 n : ℚ)

end A001076

/-! ## A001076.P5822926976355607573

`a(n-1)+A110679(n-1)+A110679(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001076.P5822926976355607573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A110679 (n - 1) + A110679 (n - 2)

end

end A001076.P5822926976355607573

namespace A001076

/-- `a(n-1)+A110679(n-1)+A110679(n-2)` -/
def P5822926976355607573.Spec : Prop :=
  ∀ n, P5822926976355607573.a n = A001076 n

end A001076

/-! ## A001076.P10391191944571100739

`((2+sqrt(5))^n-(2-sqrt(5))^n)/(2*sqrt(5))`
-/

namespace A001076.P10391191944571100739
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (5 : ℝ)) ^ n - (2 - Real.sqrt (5 : ℝ)) ^ n) / (2 * Real.sqrt (5 : ℝ))

end

end A001076.P10391191944571100739

namespace A001076

/-- `((2+sqrt(5))^n-(2-sqrt(5))^n)/(2*sqrt(5))` -/
def P10391191944571100739.Spec : Prop :=
  ∀ n, P10391191944571100739.a n = (A001076 n : ℝ)

end A001076

/-! ## A001076.P9409782206227669436

`A048876(n)-A048875(n)`
-/

namespace A001076.P9409782206227669436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048876 n - A048875 n

end

end A001076.P9409782206227669436

namespace A001076

/-- `A048876(n)-A048875(n)` -/
def P9409782206227669436.Spec : Prop :=
  ∀ n, P9409782206227669436.a n = A001076 n

end A001076

/-! ## A001076.P3269691767850078893

`ogf(x/(1-4x-x^2))`
-/

namespace A001076.P3269691767850078893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, -1] n

end

end A001076.P3269691767850078893

namespace A001076

/-- `ogf(x/(1-4x-x^2))` -/
def P3269691767850078893.Spec : Prop :=
  ∀ n, P3269691767850078893.a n = A001076 n

end A001076

/-! ## A001076.P18299639527848359691

`round(ϕ^3*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001076.P18299639527848359691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ))

end

end A001076.P18299639527848359691

namespace A001076

/-- `round(ϕ^3*a(n-1))` -/
def P18299639527848359691.Spec : Prop :=
  ∀ n, P18299639527848359691.a n = A001076 n

end A001076

/-! ## A001076.P6508792796797471500

`a(n-2)+a(n-1)/(1/2)²` with `a(0)=0, a(1)=1`
-/

namespace A001076.P6508792796797471500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A001076.P6508792796797471500

namespace A001076

/-- `a(n-2)+a(n-1)/(1/2)²` -/
def P6508792796797471500.Spec : Prop :=
  ∀ n, P6508792796797471500.a n = (A001076 n : ℚ)

end A001076

/-! ## A001076.P14919694126289536763

`4-(4*(1-a(n-1))-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A001076.P14919694126289536763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - (4 * (1 - a (n - 1)) - a (n - 2))

end

end A001076.P14919694126289536763

namespace A001076

/-- `4-(4*(1-a(n-1))-a(n-2))` -/
def P14919694126289536763.Spec : Prop :=
  ∀ n, P14919694126289536763.a n = A001076 n

end A001076

/-! ## A001076.P12268182280072868810

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001076.P12268182280072868810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2))))

end

end A001076.P12268182280072868810

namespace A001076

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P12268182280072868810.Spec : Prop :=
  ∀ n, (P12268182280072868810.a n : ℤ) = A001076 n

theorem P12268182280072868810.correct : P12268182280072868810.Spec := by
  intro n
  simp only [A001076, Nat.add_sub_cancel, A001076.P12268182280072868810.a, A001076.P17701824972558233071.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001076

/-! ## A001076.P11918230056766710082

`A059973(2*n)`
-/

namespace A001076.P11918230056766710082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (2 * n)

end

end A001076.P11918230056766710082

namespace A001076

/-- `A059973(2*n)` -/
def P11918230056766710082.Spec : Prop :=
  ∀ n, P11918230056766710082.a n = A001076 n

end A001076

/-! ## A001076.P6461930668943552108

`A004695(3*n)`
-/

namespace A001076.P6461930668943552108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (3 * n)

end

end A001076.P6461930668943552108

namespace A001076

/-- `A004695(3*n)` -/
def P6461930668943552108.Spec : Prop :=
  ∀ n, P6461930668943552108.a n = A001076 n

end A001076

/-! ## A001076.P12763084703009780074

`A167808(3*n)`
-/

namespace A001076.P12763084703009780074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * n)

end

end A001076.P12763084703009780074

namespace A001076

/-- `A167808(3*n)` -/
def P12763084703009780074.Spec : Prop :=
  ∀ n, P12763084703009780074.a n = A001076 n

end A001076

/-! ## A001076.P16822878086260446016

`A173173(3*n)`
-/

namespace A001076.P16822878086260446016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (3 * n)

end

end A001076.P16822878086260446016

namespace A001076

/-- `A173173(3*n)` -/
def P16822878086260446016.Spec : Prop :=
  ∀ n, P16822878086260446016.a n = A001076 n

end A001076

/-! ## A001076.P14282383359078069500

`A293505(3*n)`
-/

namespace A001076.P14282383359078069500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293505 (3 * n)

end

end A001076.P14282383359078069500

namespace A001076

/-- `A293505(3*n)` -/
def P14282383359078069500.Spec : Prop :=
  ∀ n, P14282383359078069500.a n = A001076 n

end A001076

/-! ## A001076.P15466234701390915550

`A173673(6*n)`
-/

namespace A001076.P15466234701390915550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (6 * n)

end

end A001076.P15466234701390915550

namespace A001076

/-- `A173673(6*n)` -/
def P15466234701390915550.Spec : Prop :=
  ∀ n, P15466234701390915550.a n = A001076 n

end A001076

/-! ## A001076.P12306638787202064280

`∑[A102875(3*n)]`
-/

namespace A001076.P12306638787202064280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001076.P12306638787202064280

namespace A001076

/-- `∑[A102875(3*n)]` -/
def P12306638787202064280.Spec : Prop :=
  ∀ n, P12306638787202064280.a n = A001076 n

end A001076

/-! ## A001076.P12634265896063007520

`record[A102875(n)/2]`
-/

namespace A001076.P12634265896063007520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102875 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001076.P12634265896063007520

namespace A001076

/-- `record[A102875(n)/2]` -/
def P12634265896063007520.Spec : Prop :=
  ∀ n, P12634265896063007520.a n = (A001076 n : ℚ)

end A001076

/-! ## A001076.P17699081008108878070

`A147997(3*n)-1`
-/

namespace A001076.P17699081008108878070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (3 * n) - 1

end

end A001076.P17699081008108878070

namespace A001076

/-- `A147997(3*n)-1` -/
def P17699081008108878070.Spec : Prop :=
  ∀ n, P17699081008108878070.a n = A001076 n

end A001076

/-! ## A001076.P3301065039999648829

`A293014(3*n+2)`
-/

namespace A001076.P3301065039999648829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (3 * n + 2)

end

end A001076.P3301065039999648829

namespace A001076

/-- `A293014(3*n+2)` -/
def P3301065039999648829.Spec : Prop :=
  ∀ n, P3301065039999648829.a n = A001076 n

end A001076

/-!
# A001077: Numerators of continued fraction convergents to sqrt(5).

The programs for A001077, the canonical program `A001077.P9735676340896861968` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001077 has offset 0).

The definition of A001077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001077.P9735676340896861968

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001077

/-- `4*a(n-1)+a(n-2)` -/
def P9735676340896861968.Spec : Prop :=
  ∀ n, (P9735676340896861968.a n : ℤ) = A001077 n

theorem P9735676340896861968.correct : P9735676340896861968.Spec := by
  intro n
  simp only [A001077]

end A001077

/-! ## A001077.P4831369837390585421

`A014448(n)/2`
-/

namespace A001077.P4831369837390585421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014448 n : ℚ) / 2

end

end A001077.P4831369837390585421

namespace A001077

/-- `A014448(n)/2` -/
def P4831369837390585421.Spec : Prop :=
  ∀ n, P4831369837390585421.a n = (A001077 n : ℚ)

end A001077

/-! ## A001077.P5566350657529497849

`A000032(3*n)/2`
-/

namespace A001077.P5566350657529497849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * n) : ℚ) / 2

end

end A001077.P5566350657529497849

namespace A001077

/-- `A000032(3*n)/2` -/
def P5566350657529497849.Spec : Prop :=
  ∀ n, P5566350657529497849.a n = (A001077 n : ℚ)

end A001077

/-! ## A001077.P5100520891063920712

`A001076(n)+A015448(n)`
-/

namespace A001077.P5100520891063920712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n + A015448 n

end

end A001077.P5100520891063920712

namespace A001077

/-- `A001076(n)+A015448(n)` -/
def P5100520891063920712.Spec : Prop :=
  ∀ n, P5100520891063920712.a n = A001077 n

end A001077

/-! ## A001077.P17690592810344677524

`A097924(n)-A015448(n+1)`
-/

namespace A001077.P17690592810344677524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097924 n - A015448 (n + 1)

end

end A001077.P17690592810344677524

namespace A001077

/-- `A097924(n)-A015448(n+1)` -/
def P17690592810344677524.Spec : Prop :=
  ∀ n, P17690592810344677524.a n = A001077 n

end A001077

/-! ## A001077.P6831625950032307228

`A001076(n+1)-2*A001076(n)`
-/

namespace A001077.P6831625950032307228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) - 2 * A001076 n

end

end A001077.P6831625950032307228

namespace A001077

/-- `A001076(n+1)-2*A001076(n)` -/
def P6831625950032307228.Spec : Prop :=
  ∀ n, P6831625950032307228.a n = A001077 n

end A001077

/-! ## A001077.P13206918992416815361

`ogf((-1+2x)/(-1+4x+x^2))`
-/

namespace A001077.P13206918992416815361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, -1] n

end

end A001077.P13206918992416815361

namespace A001077

/-- `ogf((-1+2x)/(-1+4x+x^2))` -/
def P13206918992416815361.Spec : Prop :=
  ∀ n, P13206918992416815361.a n = A001077 n

end A001077

/-! ## A001077.P9109672896792902677

`round(ϕ^(3*n)/2)`
-/

namespace A001077.P9109672896792902677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (3 * n) / 2)

end

end A001077.P9109672896792902677

namespace A001077

/-- `round(ϕ^(3*n)/2)` -/
def P9109672896792902677.Spec : Prop :=
  ∀ n, P9109672896792902677.a n = A001077 n

end A001077

/-! ## A001077.P3587727790337949632

`round(ϕ^floor(3/acot(n)))/2`
-/

namespace A001077.P3587727790337949632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.goldenRatio ^ (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)) : ℚ) / 2

end

end A001077.P3587727790337949632

namespace A001077

/-- `round(ϕ^floor(3/acot(n)))/2` -/
def P3587727790337949632.Spec : Prop :=
  ∀ n, P3587727790337949632.a n = (A001077 n : ℚ)

end A001077

/-! ## A001077.P17746794997827599046

`a(n-2)+a(n-1)/(1/2)²` with `a(0)=1, a(1)=2`
-/

namespace A001077.P17746794997827599046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A001077.P17746794997827599046

namespace A001077

/-- `a(n-2)+a(n-1)/(1/2)²` -/
def P17746794997827599046.Spec : Prop :=
  ∀ n, P17746794997827599046.a n = (A001077 n : ℚ)

end A001077

/-! ## A001077.P6447854964223000903

`4-(4*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A001077.P6447854964223000903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (4 * (1 - a (n - 1)) - a (n - 2))

end

end A001077.P6447854964223000903

namespace A001077

/-- `4-(4*(1-a(n-1))-a(n-2))` -/
def P6447854964223000903.Spec : Prop :=
  ∀ n, P6447854964223000903.a n = A001077 n

end A001077

/-! ## A001077.P4476459204519694915

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A001077.P4476459204519694915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2))))

end

end A001077.P4476459204519694915

namespace A001077

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P4476459204519694915.Spec : Prop :=
  ∀ n, (P4476459204519694915.a n : ℤ) = A001077 n

theorem P4476459204519694915.correct : P4476459204519694915.Spec := by
  intro n
  simp only [A001077, Nat.add_sub_cancel, A001077.P4476459204519694915.a, A001077.P9735676340896861968.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001077

/-! ## A001077.P4378929764035051571

`A173495(3*n)`
-/

namespace A001077.P4378929764035051571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (3 * n)

end

end A001077.P4378929764035051571

namespace A001077

/-- `A173495(3*n)` -/
def P4378929764035051571.Spec : Prop :=
  ∀ n, P4378929764035051571.a n = A001077 n

end A001077

/-! ## A001077.P13668020073287072269

`A226956(3*n)`
-/

namespace A001077.P13668020073287072269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (3 * n)

end

end A001077.P13668020073287072269

namespace A001077

/-- `A226956(3*n)` -/
def P13668020073287072269.Spec : Prop :=
  ∀ n, P13668020073287072269.a n = A001077 n

end A001077

/-! ## A001077.P7464873018322190396

`A059973(Δ[n²])`
-/

namespace A001077.P7464873018322190396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001077.P7464873018322190396

namespace A001077

/-- `A059973(Δ[n²])` -/
def P7464873018322190396.Spec : Prop :=
  ∀ n, P7464873018322190396.a n = A001077 n

end A001077

/-! ## A001077.P14811970236271565555

`record[Δ[A167808(n)]]`
-/

namespace A001077.P14811970236271565555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001077.P14811970236271565555

namespace A001077

/-- `record[Δ[A167808(n)]]` -/
def P14811970236271565555.Spec : Prop :=
  ∀ n, P14811970236271565555.a n = A001077 n

end A001077

/-! ## A001077.P15339313521691326085

`ceil(A100233(n)/2)`
-/

namespace A001077.P15339313521691326085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100233 n : ℚ) / 2⌉

end

end A001077.P15339313521691326085

namespace A001077

/-- `ceil(A100233(n)/2)` -/
def P15339313521691326085.Spec : Prop :=
  ∀ n, P15339313521691326085.a n = A001077 n

end A001077

/-! ## A001077.P17144326158030952994

`∑[A329723(3*n)]`
-/

namespace A001077.P17144326158030952994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001077.P17144326158030952994

namespace A001077

/-- `∑[A329723(3*n)]` -/
def P17144326158030952994.Spec : Prop :=
  ∀ n, P17144326158030952994.a n = A001077 n

end A001077

/-! ## A001077.P8674601776919855571

`A245968(3*n)+1`
-/

namespace A001077.P8674601776919855571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (3 * n) + 1

end

end A001077.P8674601776919855571

namespace A001077

/-- `A245968(3*n)+1` -/
def P8674601776919855571.Spec : Prop :=
  ∀ n, P8674601776919855571.a n = A001077 n

end A001077

/-! ## A001077.P17969598566284049077

`floor(A000032(Δ[n²]+n-1)/2)`
-/

namespace A001077.P17969598566284049077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - 1)).toNat : ℚ) / 2⌋

end

end A001077.P17969598566284049077

namespace A001077

/-- `floor(A000032(Δ[n²]+n-1)/2)` -/
def P17969598566284049077.Spec : Prop :=
  ∀ n, P17969598566284049077.a n = A001077 n

end A001077

/-!
# A001078: a(n) = 10*a(n-1) - a(n-2) with a(0) = 0, a(1) = 2.

The programs for A001078, the canonical program `A001078.P5768478573712416427` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001078 has offset 0).

The definition of A001078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A001078.P5768478573712416427`, by `A001078.P5768478573712416427.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001078.P5768478573712416427

`10*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001078

/-- `10*a(n-1)-a(n-2)` -/
def P5768478573712416427.Spec : Prop :=
  ∀ n, P5768478573712416427.a n = A001078 n

theorem P5768478573712416427.correct : P5768478573712416427.Spec := by
  intro n
  simp only [A001078]

end A001078

/-! ## A001078.P4734838000904682648

`2*A004189(n)`
-/

namespace A001078.P4734838000904682648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004189 n

end

end A001078.P4734838000904682648

namespace A001078

/-- `2*A004189(n)` -/
def P4734838000904682648.Spec : Prop :=
  ∀ n, P4734838000904682648.a n = A001078 n

end A001078

/-! ## A001078.P6490443290476273732

`ogf(2x/(1-10x+x^2))`
-/

namespace A001078.P6490443290476273732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -10, 1] n

end

end A001078.P6490443290476273732

namespace A001078

/-- `ogf(2x/(1-10x+x^2))` -/
def P6490443290476273732.Spec : Prop :=
  ∀ n, P6490443290476273732.a n = A001078 n

end A001078

/-! ## A001078.P3414629821175524980

`A204519(3*n+2)`
-/

namespace A001078.P3414629821175524980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (3 * n + 2)

end

end A001078.P3414629821175524980

namespace A001078

/-- `A204519(3*n+2)` -/
def P3414629821175524980.Spec : Prop :=
  ∀ n, P3414629821175524980.a n = A001078 n

end A001078

/-! ## A001078.P13300897131731189141

`2*(∑[A072256(n)]-1)`
-/

namespace A001078.P13300897131731189141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A001078.P13300897131731189141

namespace A001078

/-- `2*(∑[A072256(n)]-1)` -/
def P13300897131731189141.Spec : Prop :=
  ∀ n, P13300897131731189141.a n = A001078 n

end A001078

/-! ## A001078.P6470818059984188054

`record[A204519(A152271(n)+n)]`
-/

namespace A001078.P6470818059984188054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204519 (A152271 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001078.P6470818059984188054

namespace A001078

/-- `record[A204519(A152271(n)+n)]` -/
def P6470818059984188054.Spec : Prop :=
  ∀ n, P6470818059984188054.a n = A001078 n

end A001078

/-! ## A001078.P16920902285192723717

`record[A000035(n)*A041007(n)]`
-/

namespace A001078.P16920902285192723717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001078.P16920902285192723717

namespace A001078

/-- `record[A000035(n)*A041007(n)]` -/
def P16920902285192723717.Spec : Prop :=
  ∀ n, P16920902285192723717.a n = A001078 n

end A001078

/-! ## A001078.P14135904805182536775

`record[lcm(A041007(n), A188510(n))]`
-/

namespace A001078.P14135904805182536775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041007 n) (A188510 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001078.P14135904805182536775

namespace A001078

/-- `record[lcm(A041007(n), A188510(n))]` -/
def P14135904805182536775.Spec : Prop :=
  ∀ n, (P14135904805182536775.a n : ℤ) = A001078 n

end A001078

/-! ## A001078.P38372128708730206

`A041007(A004273(n))*A057427(n)`
-/

namespace A001078.P38372128708730206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (A004273 n).toNat * A057427 n

end

end A001078.P38372128708730206

namespace A001078

/-- `A041007(A004273(n))*A057427(n)` -/
def P38372128708730206.Spec : Prop :=
  ∀ n, P38372128708730206.a n = A001078 n

end A001078

/-! ## A001078.P15990132205355436115

`lcm(A004189(n), A041007(A004273(n)))`
-/

namespace A001078.P15990132205355436115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004189 n) (A041007 (A004273 n).toNat)

end

end A001078.P15990132205355436115

namespace A001078

/-- `lcm(A004189(n), A041007(A004273(n)))` -/
def P15990132205355436115.Spec : Prop :=
  ∀ n, (P15990132205355436115.a n : ℤ) = A001078 n

end A001078

/-! ## A001078.P6682086577538769913

`A004189(n)+A004189(A005843(n)/2)`
-/

namespace A001078.P6682086577538769913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n + A004189 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat

end

end A001078.P6682086577538769913

namespace A001078

/-- `A004189(n)+A004189(A005843(n)/2)` -/
def P6682086577538769913.Spec : Prop :=
  ∀ n, P6682086577538769913.a n = A001078 n

end A001078

/-! ## A001078.P16047027048533086964

`A004189(n)+A004189(A005843(n)-n)`
-/

namespace A001078.P16047027048533086964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n + A004189 (A005843 n - (n : ℤ)).toNat

end

end A001078.P16047027048533086964

namespace A001078

/-- `A004189(n)+A004189(A005843(n)-n)` -/
def P16047027048533086964.Spec : Prop :=
  ∀ n, P16047027048533086964.a n = A001078 n

end A001078

/-! ## A001078.P6487076779993461761

`A004189(n)+or(A000035(n), A004189(n))`
-/

namespace A001078.P6487076779993461761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n + Int.lor (A000035 n) (A004189 n)

end

end A001078.P6487076779993461761

namespace A001078

/-- `A004189(n)+or(A000035(n), A004189(n))` -/
def P6487076779993461761.Spec : Prop :=
  ∀ n, P6487076779993461761.a n = A001078 n

end A001078

/-! ## A001078.P17915244011892819126

`A004189(n)+A004189(n%A222444(n+1))`
-/

namespace A001078.P17915244011892819126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n + A004189 (Int.tmod (n : ℤ) (A222444 (n + 1))).toNat

end

end A001078.P17915244011892819126

namespace A001078

/-- `A004189(n)+A004189(n%A222444(n+1))` -/
def P17915244011892819126.Spec : Prop :=
  ∀ n, P17915244011892819126.a n = A001078 n

end A001078

/-! ## A001078.P16596070944279240327

`A004189(n)+A004189(A002264(A016777(n)))`
-/

namespace A001078.P16596070944279240327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n + A004189 (A002264 (A016777 n).toNat).toNat

end

end A001078.P16596070944279240327

namespace A001078

/-- `A004189(n)+A004189(A002264(A016777(n)))` -/
def P16596070944279240327.Spec : Prop :=
  ∀ n, P16596070944279240327.a n = A001078 n

end A001078

/-! ## A001078.P15672976719632307215

`A122652(n)/2`
-/

namespace A001078.P15672976719632307215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122652 n : ℚ) / 2

end

end A001078.P15672976719632307215

namespace A001078

/-- `A122652(n)/2` -/
def P15672976719632307215.Spec : Prop :=
  ∀ n, P15672976719632307215.a n = (A001078 n : ℚ)

end A001078

/-! ## A001078.P17732617003015965610

`A122653(n)/3`
-/

namespace A001078.P17732617003015965610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122653 n : ℚ) / 3

end

end A001078.P17732617003015965610

namespace A001078

/-- `A122653(n)/3` -/
def P17732617003015965610.Spec : Prop :=
  ∀ n, P17732617003015965610.a n = (A001078 n : ℚ)

end A001078

/-! ## A001078.P9925168882312721005

`Δ[A072256(n)/4]`
-/

namespace A001078.P9925168882312721005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072256 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001078.P9925168882312721005

namespace A001078

/-- `Δ[A072256(n)/4]` -/
def P9925168882312721005.Spec : Prop :=
  ∀ n, P9925168882312721005.a n = (A001078 n : ℚ)

end A001078

/-! ## A001078.P14582578307857171154

`A001079(n)-A140780(n)`
-/

namespace A001078.P14582578307857171154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n - A140780 n

end

end A001078.P14582578307857171154

namespace A001078

/-- `A001079(n)-A140780(n)` -/
def P14582578307857171154.Spec : Prop :=
  ∀ n, P14582578307857171154.a n = A001078 n

end A001078

/-! ## A001078.P2252569035598055778

`A054320(n)-A138288(n)`
-/

namespace A001078.P2252569035598055778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n - A138288 n

end

end A001078.P2252569035598055778

namespace A001078

/-- `A054320(n)-A138288(n)` -/
def P2252569035598055778.Spec : Prop :=
  ∀ n, P2252569035598055778.a n = A001078 n

end A001078

/-!
# A001079: a(n) = 10*a(n-1) - a(n-2); a(0) = 1, a(1) = 5.

The programs for A001079, the canonical program `A001079.P5709941662240548588` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001079 has offset 0).

The definition of A001079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A001079.P5709941662240548588`, by `A001079.P5709941662240548588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001079.P5709941662240548588

`10*a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001079

/-- `10*a(n-1)-a(n-2)` -/
def P5709941662240548588.Spec : Prop :=
  ∀ n, P5709941662240548588.a n = A001079 n

theorem P5709941662240548588.correct : P5709941662240548588.Spec := by
  intro n
  simp only [A001079]

end A001079

/-! ## A001079.P2572754313022603957

`sqrt(1+24*A004189(n)²)`
-/

namespace A001079.P2572754313022603957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (1 + 24 * A004189 n ^ 2 : ℝ)

end

end A001079.P2572754313022603957

namespace A001079

/-- `sqrt(1+24*A004189(n)²)` -/
def P2572754313022603957.Spec : Prop :=
  ∀ n, P2572754313022603957.a n = (A001079 n : ℝ)

end A001079

/-! ## A001079.P16818039761755616104

`ogf((1-5x)/(1-10x+x^2))`
-/

namespace A001079.P16818039761755616104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -10, 1] n

end

end A001079.P16818039761755616104

namespace A001079

/-- `ogf((1-5x)/(1-10x+x^2))` -/
def P16818039761755616104.Spec : Prop :=
  ∀ n, P16818039761755616104.a n = A001079 n

end A001079

/-! ## A001079.P5979135914592869338

`((5+2*sqrt(6))^n+(5-2*sqrt(6))^n)/2`
-/

namespace A001079.P5979135914592869338
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 2 * Real.sqrt (6 : ℝ)) ^ n + (5 - 2 * Real.sqrt (6 : ℝ)) ^ n) / 2

end

end A001079.P5979135914592869338

namespace A001079

/-- `((5+2*sqrt(6))^n+(5-2*sqrt(6))^n)/2` -/
def P5979135914592869338.Spec : Prop :=
  ∀ n, P5979135914592869338.a n = (A001079 n : ℝ)

end A001079

/-! ## A001079.P13603113011668106851

`abs(A146311(n))`
-/

namespace A001079.P13603113011668106851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A146311 n|

end

end A001079.P13603113011668106851

namespace A001079

/-- `abs(A146311(n))` -/
def P13603113011668106851.Spec : Prop :=
  ∀ n, P13603113011668106851.a n = A001079 n

end A001079

/-! ## A001079.P10283914887251822474

`A080872(2*n)`
-/

namespace A001079.P10283914887251822474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (2 * n)

end

end A001079.P10283914887251822474

namespace A001079

/-- `A080872(2*n)` -/
def P10283914887251822474.Spec : Prop :=
  ∀ n, P10283914887251822474.a n = A001079 n

end A001079

/-! ## A001079.P278405853005733693

`ceil(A087799(n)/2)`
-/

namespace A001079.P278405853005733693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087799 n : ℚ) / 2⌉

end

end A001079.P278405853005733693

namespace A001079

/-- `ceil(A087799(n)/2)` -/
def P278405853005733693.Spec : Prop :=
  ∀ n, P278405853005733693.a n = A001079 n

end A001079

/-! ## A001079.P16902184645172779362

`2*A132596(n)+1`
-/

namespace A001079.P16902184645172779362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132596 n + 1

end

end A001079.P16902184645172779362

namespace A001079

/-- `2*A132596(n)+1` -/
def P16902184645172779362.Spec : Prop :=
  ∀ n, P16902184645172779362.a n = A001079 n

end A001079

/-! ## A001079.P6731120057773015554

`4*A098297(n)+1`
-/

namespace A001079.P6731120057773015554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A098297 n + 1

end

end A001079.P6731120057773015554

namespace A001079

/-- `4*A098297(n)+1` -/
def P6731120057773015554.Spec : Prop :=
  ∀ n, P6731120057773015554.a n = A001079 n

end A001079

/-! ## A001079.P5655322078953429870

`A204518(3*n+2)`
-/

namespace A001079.P5655322078953429870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204518 (3 * n + 2)

end

end A001079.P5655322078953429870

namespace A001079

/-- `A204518(3*n+2)` -/
def P5655322078953429870.Spec : Prop :=
  ∀ n, P5655322078953429870.a n = A001079 n

end A001079

/-! ## A001079.P12237638307597037179

`ceil(A138281(2*n)/2)`
-/

namespace A001079.P12237638307597037179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138281 (2 * n) : ℚ) / 2⌉

end

end A001079.P12237638307597037179

namespace A001079

/-- `ceil(A138281(2*n)/2)` -/
def P12237638307597037179.Spec : Prop :=
  ∀ n, P12237638307597037179.a n = A001079 n

end A001079

/-! ## A001079.P416708809952234042

`2*A171640(n+1)-1`
-/

namespace A001079.P416708809952234042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171640 (n + 1) - 1

end

end A001079.P416708809952234042

namespace A001079

/-- `2*A171640(n+1)-1` -/
def P416708809952234042.Spec : Prop :=
  ∀ n, P416708809952234042.a n = A001079 n

end A001079

/-! ## A001079.P307956248710478440

`record[A080872(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A001079.P307956248710478440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A080872 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001079.P307956248710478440

namespace A001079

/-- `record[A080872(C(n, a(n-1)))]` -/
def P307956248710478440.Spec : Prop :=
  ∀ n, P307956248710478440.a n = A001079 n

end A001079

/-! ## A001079.P6259473376901726181

`A142238(A004273(n))`
-/

namespace A001079.P6259473376901726181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142238 (A004273 n).toNat

end

end A001079.P6259473376901726181

namespace A001079

/-- `A142238(A004273(n))` -/
def P6259473376901726181.Spec : Prop :=
  ∀ n, P6259473376901726181.a n = A001079 n

end A001079

/-! ## A001079.P4674090845286143687

`A140780(n)+A001078(n)`
-/

namespace A001079.P4674090845286143687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140780 n + A001078 n

end

end A001079.P4674090845286143687

namespace A001079

/-- `A140780(n)+A001078(n)` -/
def P4674090845286143687.Spec : Prop :=
  ∀ n, P4674090845286143687.a n = A001079 n

end A001079

/-! ## A001079.P12241028324092721908

`A122652(n)+A072256(n)`
-/

namespace A001079.P12241028324092721908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122652 n + A072256 n

end

end A001079.P12241028324092721908

namespace A001079

/-- `A122652(n)+A072256(n)` -/
def P12241028324092721908.Spec : Prop :=
  ∀ n, P12241028324092721908.a n = A001079 n

end A001079

/-! ## A001079.P2075928870320189442

`A054320(n)-A122653(n)`
-/

namespace A001079.P2075928870320189442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n - A122653 n

end

end A001079.P2075928870320189442

namespace A001079

/-- `A054320(n)-A122653(n)` -/
def P2075928870320189442.Spec : Prop :=
  ∀ n, P2075928870320189442.a n = A001079 n

end A001079

/-! ## A001079.P8651265020724654672

`A138288(n)-A122652(n)`
-/

namespace A001079.P8651265020724654672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n - A122652 n

end

end A001079.P8651265020724654672

namespace A001079

/-- `A138288(n)-A122652(n)` -/
def P8651265020724654672.Spec : Prop :=
  ∀ n, P8651265020724654672.a n = A001079 n

end A001079

/-! ## A001079.P14358345259742528461

`A171640(n+1)+A132596(n)`
-/

namespace A001079.P14358345259742528461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171640 (n + 1) + A132596 n

end

end A001079.P14358345259742528461

namespace A001079

/-- `A171640(n+1)+A132596(n)` -/
def P14358345259742528461.Spec : Prop :=
  ∀ n, P14358345259742528461.a n = A001079 n

end A001079

/-! ## A001079.P17708845631052253418

`A072256(n)+2*A001078(n)`
-/

namespace A001079.P17708845631052253418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 n + 2 * A001078 n

end

end A001079.P17708845631052253418

namespace A001079

/-- `A072256(n)+2*A001078(n)` -/
def P17708845631052253418.Spec : Prop :=
  ∀ n, P17708845631052253418.a n = A001079 n

end A001079

/-!
# A001080: a(n) = 16*a(n-1) - a(n-2) with a(0) = 0, a(1) = 3.

The programs for A001080, the canonical program `A001080.P4242873644044324586` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001080 has offset 0).

The definition of A001080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-a(n-2)` (program `A001080.P4242873644044324586`, by `A001080.P4242873644044324586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001080.P4242873644044324586

`16*a(n-1)-a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001080

/-- `16*a(n-1)-a(n-2)` -/
def P4242873644044324586.Spec : Prop :=
  ∀ n, P4242873644044324586.a n = A001080 n

theorem P4242873644044324586.correct : P4242873644044324586.Spec := by
  intro n
  simp only [A001080]

end A001080

/-! ## A001080.P13527827545332434518

`ogf(3x/(1-16x+x^2))`
-/

namespace A001080.P13527827545332434518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -16, 1] n

end

end A001080.P13527827545332434518

namespace A001080

/-- `ogf(3x/(1-16x+x^2))` -/
def P13527827545332434518.Spec : Prop :=
  ∀ n, P13527827545332434518.a n = A001080 n

end A001080

/-! ## A001080.P3683972286571489538

`a(n-1)/(1/4)²-a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A001080.P3683972286571489538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - a (n - 2)

end

end A001080.P3683972286571489538

namespace A001080

/-- `a(n-1)/(1/4)²-a(n-2)` -/
def P3683972286571489538.Spec : Prop :=
  ∀ n, P3683972286571489538.a n = (A001080 n : ℚ)

end A001080

/-! ## A001080.P16567311796195419769

`sqrt(7)/14*((8+3*sqrt(7))^n-(8-3*sqrt(7))^n)`
-/

namespace A001080.P16567311796195419769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (7 : ℝ) / 14 * ((8 + 3 * Real.sqrt (7 : ℝ)) ^ n - (8 - 3 * Real.sqrt (7 : ℝ)) ^ n)

end

end A001080.P16567311796195419769

namespace A001080

/-- `sqrt(7)/14*((8+3*sqrt(7))^n-(8-3*sqrt(7))^n)` -/
def P16567311796195419769.Spec : Prop :=
  ∀ n, P16567311796195419769.a n = (A001080 n : ℝ)

end A001080

/-! ## A001080.P13727139319400411286

`A204517(3*n+2)`
-/

namespace A001080.P13727139319400411286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204517 (3 * n + 2)

end

end A001080.P13727139319400411286

namespace A001080

/-- `A204517(3*n+2)` -/
def P13727139319400411286.Spec : Prop :=
  ∀ n, P13727139319400411286.a n = A001080 n

end A001080

/-! ## A001080.P11783751796427917632

`record[n%2*A084069(n+1)]`
-/

namespace A001080.P11783751796427917632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A084069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001080.P11783751796427917632

namespace A001080

/-- `record[n%2*A084069(n+1)]` -/
def P11783751796427917632.Spec : Prop :=
  ∀ n, P11783751796427917632.a n = A001080 n

end A001080

/-! ## A001080.P5007332321043899113

`(A350925(n)-A350924(n))/2`
-/

namespace A001080.P5007332321043899113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350925 n - A350924 n : ℚ) / 2

end

end A001080.P5007332321043899113

namespace A001080

/-- `(A350925(n)-A350924(n))/2` -/
def P5007332321043899113.Spec : Prop :=
  ∀ n, P5007332321043899113.a n = (A001080 n : ℚ)

end A001080

/-! ## A001080.P3281706315197335869

`A307173(n+1)-A159678(n+1)`
-/

namespace A001080.P3281706315197335869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307173 (n + 1) - A159678 (n + 1)

end

end A001080.P3281706315197335869

namespace A001080

/-- `A307173(n+1)-A159678(n+1)` -/
def P3281706315197335869.Spec : Prop :=
  ∀ n, P3281706315197335869.a n = A001080 n

end A001080

/-! ## A001080.P2351420525389243984

`A202638(2*n+1)-A161852(2*n+1)`
-/

namespace A001080.P2351420525389243984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (2 * n + 1) - A161852 (2 * n + 1)

end

end A001080.P2351420525389243984

namespace A001080

/-- `A202638(2*n+1)-A161852(2*n+1)` -/
def P2351420525389243984.Spec : Prop :=
  ∀ n, P2351420525389243984.a n = A001080 n

end A001080

/-! ## A001080.P16891252315365250678

`A007751(n)+A073352(n)-A001081(n)`
-/

namespace A001080.P16891252315365250678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007751 n + (A073352 n - A001081 n)

end

end A001080.P16891252315365250678

namespace A001080

/-- `A007751(n)+A073352(n)-A001081(n)` -/
def P16891252315365250678.Spec : Prop :=
  ∀ n, P16891252315365250678.a n = A001080 n

end A001080

/-!
# A001081: a(n) = 16*a(n-1) - a(n-2).

The programs for A001081, the canonical program `A001081.P10681149803492547199` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001081 has offset 0).

The definition of A001081 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-a(n-2)` (program `A001081.P10681149803492547199`, by `A001081.P10681149803492547199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001081.P10681149803492547199

`16*a(n-1)-a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001081

/-- `16*a(n-1)-a(n-2)` -/
def P10681149803492547199.Spec : Prop :=
  ∀ n, P10681149803492547199.a n = A001081 n

theorem P10681149803492547199.correct : P10681149803492547199.Spec := by
  intro n
  simp only [A001081]

end A001081

/-! ## A001081.P16073479198478111195

`ogf((1-8x)/(1-16x+x^2))`
-/

namespace A001081.P16073479198478111195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -16, 1] n

end

end A001081.P16073479198478111195

namespace A001081

/-- `ogf((1-8x)/(1-16x+x^2))` -/
def P16073479198478111195.Spec : Prop :=
  ∀ n, P16073479198478111195.a n = A001081 n

end A001081

/-! ## A001081.P3421776478115710114

`floor((sqrt(63)+8)^n/2)+1`
-/

namespace A001081.P3421776478115710114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (63 : ℝ) + 8) ^ n / 2⌋ + 1

end

end A001081.P3421776478115710114

namespace A001081

/-- `floor((sqrt(63)+8)^n/2)+1` -/
def P3421776478115710114.Spec : Prop :=
  ∀ n, P3421776478115710114.a n = A001081 n

end A001081

/-! ## A001081.P8653508866619575754

`A090727(n)/2`
-/

namespace A001081.P8653508866619575754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090727 n : ℚ) / 2

end

end A001081.P8653508866619575754

namespace A001081

/-- `A090727(n)/2` -/
def P8653508866619575754.Spec : Prop :=
  ∀ n, P8653508866619575754.a n = (A001081 n : ℚ)

end A001081

/-! ## A001081.P6370607666717159407

`A204516(3*n+2)`
-/

namespace A001081.P6370607666717159407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204516 (3 * n + 2)

end

end A001081.P6370607666717159407

namespace A001081

/-- `A204516(3*n+2)` -/
def P6370607666717159407.Spec : Prop :=
  ∀ n, P6370607666717159407.a n = A001081 n

end A001081

/-! ## A001081.P17246198790882845203

`Δ[record[A077398(n)-A202638(n+1)]]`
-/

namespace A001081.P17246198790882845203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077398 n - A202638 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001081.P17246198790882845203

namespace A001081

/-- `Δ[record[A077398(n)-A202638(n+1)]]` -/
def P17246198790882845203.Spec : Prop :=
  ∀ n, P17246198790882845203.a n = A001081 n

end A001081

/-!
# A001082: Generalized octagonal numbers: k*(3*k-2), k=0, +- 1, +- 2, +-3, ...

The programs for A001082, the canonical program `A001082.P4738074818082100151` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001082 has offset 1).

The definition of A001082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001082.P4738074818082100151

`n²+n-ceil(n/2)²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001082

/-- `n²+n-ceil(n/2)²` -/
def P4738074818082100151.Spec : Prop :=
  ∀ n, P4738074818082100151.a n = A001082 (n + 1)

theorem P4738074818082100151.correct : P4738074818082100151.Spec := by
  intro n
  simp only [A001082, Nat.add_sub_cancel]

end A001082

/-! ## A001082.P16281726791742649738

`∑[n*gcd(2, n)]`
-/

namespace A001082.P16281726791742649738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P16281726791742649738

namespace A001082

/-- `∑[n*gcd(2, n)]` -/
def P16281726791742649738.Spec : Prop :=
  ∀ n, (P16281726791742649738.a n : ℤ) = A001082 (n + 1)

end A001082

/-! ## A001082.P5255143989058199266

`∑[n*(2-n%2)]`
-/

namespace A001082.P5255143989058199266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P5255143989058199266

namespace A001082

/-- `∑[n*(2-n%2)]` -/
def P5255143989058199266.Spec : Prop :=
  ∀ n, P5255143989058199266.a n = A001082 (n + 1)

end A001082

/-! ## A001082.P15100246311690045217

`∑[3*n-lcm(2, n)]`
-/

namespace A001082.P15100246311690045217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P15100246311690045217

namespace A001082

/-- `∑[3*n-lcm(2, n)]` -/
def P15100246311690045217.Spec : Prop :=
  ∀ n, P15100246311690045217.a n = A001082 (n + 1)

end A001082

/-! ## A001082.P13813815057304912267

`∑[n*(2-and(1, n))]`
-/

namespace A001082.P13813815057304912267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P13813815057304912267

namespace A001082

/-- `∑[n*(2-and(1, n))]` -/
def P13813815057304912267.Spec : Prop :=
  ∀ n, P13813815057304912267.a n = A001082 (n + 1)

end A001082

/-! ## A001082.P5938182228139370003

`∑[-(n*or(n, -2))]`
-/

namespace A001082.P5938182228139370003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor (n : ℤ) (-2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P5938182228139370003

namespace A001082

/-- `∑[-(n*or(n, -2))]` -/
def P5938182228139370003.Spec : Prop :=
  ∀ n, P5938182228139370003.a n = A001082 (n + 1)

end A001082

/-! ## A001082.P9014588039349138872

`∑[gcd(1-Δ[n²], n²)]`
-/

namespace A001082.P9014588039349138872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P9014588039349138872

namespace A001082

/-- `∑[gcd(1-Δ[n²], n²)]` -/
def P9014588039349138872.Spec : Prop :=
  ∀ n, (P9014588039349138872.a n : ℤ) = A001082 (n + 1)

end A001082

/-! ## A001082.P6921315884478559700

`∑[n*((n+1)%2+1)]`
-/

namespace A001082.P6921315884478559700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P6921315884478559700

namespace A001082

/-- `∑[n*((n+1)%2+1)]` -/
def P6921315884478559700.Spec : Prop :=
  ∀ n, (P6921315884478559700.a n : ℤ) = A001082 (n + 1)

end A001082

/-! ## A001082.P16742565099815349951

`∑[n*(and(1, n+1)+1)]`
-/

namespace A001082.P16742565099815349951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P16742565099815349951

namespace A001082

/-- `∑[n*(and(1, n+1)+1)]` -/
def P16742565099815349951.Spec : Prop :=
  ∀ n, (P16742565099815349951.a n : ℤ) = A001082 (n + 1)

end A001082

/-! ## A001082.P7456124631645280202

`∑[n/2^((1-n)%2)]`
-/

namespace A001082.P7456124631645280202
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P7456124631645280202

namespace A001082

/-- `∑[n/2^((1-n)%2)]` -/
def P7456124631645280202.Spec : Prop :=
  ∀ n, P7456124631645280202.a n = (A001082 (n + 1) : ℚ)

end A001082

/-! ## A001082.P12412267357682134979

`∑[2*n/2^and(1, n)]`
-/

namespace A001082.P12412267357682134979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (2 ^ Nat.land 1 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P12412267357682134979

namespace A001082

/-- `∑[2*n/2^and(1, n)]` -/
def P12412267357682134979.Spec : Prop :=
  ∀ n, P12412267357682134979.a n = (A001082 (n + 1) : ℚ)

end A001082

/-! ## A001082.P15596628545733207637

`∑[2*n/C(2, and(1, n))]`
-/

namespace A001082.P15596628545733207637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.choose 2 (Nat.land 1 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P15596628545733207637

namespace A001082

/-- `∑[2*n/C(2, and(1, n))]` -/
def P15596628545733207637.Spec : Prop :=
  ∀ n, P15596628545733207637.a n = (A001082 (n + 1) : ℚ)

end A001082

/-! ## A001082.P6309725108826753404

`∑[n*(or(1, n)-(n-1))]`
-/

namespace A001082.P6309725108826753404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P6309725108826753404

namespace A001082

/-- `∑[n*(or(1, n)-(n-1))]` -/
def P6309725108826753404.Spec : Prop :=
  ∀ n, P6309725108826753404.a n = A001082 (n + 1)

end A001082

/-! ## A001082.P17023863660303630663

`∑[xor(1, a(n-2))+3]` with `a(0)=0, a(1)=1`
-/

namespace A001082.P17023863660303630663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.xor 1 (f1 (n - 2)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P17023863660303630663

namespace A001082

/-- `∑[xor(1, a(n-2))+3]` -/
def P17023863660303630663.Spec : Prop :=
  ∀ n, (P17023863660303630663.a n : ℤ) = A001082 (n + 1)

end A001082

/-! ## A001082.P15195382316026160363

`∑[C(n, a(n-1))+n]` with `a(0)=0, a(1)=1`
-/

namespace A001082.P15195382316026160363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P15195382316026160363

namespace A001082

/-- `∑[C(n, a(n-1))+n]` -/
def P15195382316026160363.Spec : Prop :=
  ∀ n, (P15195382316026160363.a n : ℤ) = A001082 (n + 1)

end A001082

/-! ## A001082.P6756274253408489304

`∑[2*n/((2*n)%4)!]`
-/

namespace A001082.P6756274253408489304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.factorial (2 * n % 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P6756274253408489304

namespace A001082

/-- `∑[2*n/((2*n)%4)!]` -/
def P6756274253408489304.Spec : Prop :=
  ∀ n, P6756274253408489304.a n = (A001082 (n + 1) : ℚ)

end A001082

/-! ## A001082.P7934693692776482012

`∑[2*n/(2*and(1, n))!]`
-/

namespace A001082.P7934693692776482012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.factorial (2 * Nat.land 1 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P7934693692776482012

namespace A001082

/-- `∑[2*n/(2*and(1, n))!]` -/
def P7934693692776482012.Spec : Prop :=
  ∀ n, P7934693692776482012.a n = (A001082 (n + 1) : ℚ)

end A001082

/-! ## A001082.P15208298941948495440

`∑[n*∏[1/a(n-1)]]` with `a(0)=2`
-/

namespace A001082.P15208298941948495440
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  1 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P15208298941948495440

namespace A001082

/-- `∑[n*∏[1/a(n-1)]]` -/
def P15208298941948495440.Spec : Prop :=
  ∀ n, P15208298941948495440.a n = (A001082 (n + 1) : ℚ)

end A001082

/-! ## A001082.P6273744808175313836

`∑[lcm(n+1, 2*n)/(n+1)]`
-/

namespace A001082.P6273744808175313836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001082.P6273744808175313836

namespace A001082

/-- `∑[lcm(n+1, 2*n)/(n+1)]` -/
def P6273744808175313836.Spec : Prop :=
  ∀ n, P6273744808175313836.a n = (A001082 (n + 1) : ℚ)

end A001082

/-!
# A001083: Length of one version of Kolakoski sequence {A000002(i)} at n-th growth stage.

The programs for A001083, the canonical program `A001083.P5643140285671293949` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001083 has offset 1).

The definition of A001083 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001083.P5643140285671293949

`A054353(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001083

/-- `A054353(a(n-1))` -/
def P5643140285671293949.Spec : Prop :=
  ∀ n, P5643140285671293949.a n = A001083 (n + 1)

theorem P5643140285671293949.correct : P5643140285671293949.Spec := by
  intro n
  simp only [A001083, Nat.add_sub_cancel]

end A001083

/-! ## A001083.P6552410553760877194

`A042942(n-1)+a(floor(acot(n)²))` with `a(0)=1, a(1)=2`
-/

namespace A001083.P6552410553760877194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A042942 (n - 1) + a ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋.toNat

end

end A001083.P6552410553760877194

namespace A001083

/-- `A042942(n-1)+a(floor(acot(n)²))` -/
def P6552410553760877194.Spec : Prop :=
  ∀ n, P6552410553760877194.a n = A001083 (n + 1)

end A001083

/-! ## A001083.P8531851733042472975

`A042942(n-a(A000038(n)))+1` with `a(0)=1, a(1)=2`
-/

namespace A001083.P8531851733042472975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A042942 ((n : ℤ) - a (A000038 n).toNat).toNat + 1

end

end A001083.P8531851733042472975

namespace A001083

/-- `A042942(n-a(A000038(n)))+1` -/
def P8531851733042472975.Spec : Prop :=
  ∀ n, P8531851733042472975.a n = A001083 (n + 1)

end A001083

/-! ## A001083.P1937920976614966212

`A042942(n-1)+a(A141044(n)-1)` with `a(0)=1, a(1)=2`
-/

namespace A001083.P1937920976614966212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A042942 (n - 1) + a (A141044 n - 1).toNat

end

end A001083.P1937920976614966212

namespace A001083

/-- `A042942(n-1)+a(A141044(n)-1)` -/
def P1937920976614966212.Spec : Prop :=
  ∀ n, P1937920976614966212.a n = A001083 (n + 1)

end A001083

/-! ## A001083.P18190223312711037239

`A042942(n-1)+a(A000045(C(n-1, n)))` with `a(0)=1, a(1)=2`
-/

namespace A001083.P18190223312711037239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A042942 (n - 1) + a (A000045 (Nat.choose ((n : ℤ) - 1).toNat n)).toNat

end

end A001083.P18190223312711037239

namespace A001083

/-- `A042942(n-1)+a(A000045(C(n-1, n)))` -/
def P18190223312711037239.Spec : Prop :=
  ∀ n, P18190223312711037239.a n = A001083 (n + 1)

end A001083

/-! ## A001083.P13713105879846709916

`A042942(n-1)+1-a(A007318(and(3, -n)))%2` with `a(0)=1, a(1)=2`
-/

namespace A001083.P13713105879846709916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A042942 (n - 1) + 1 - Int.tmod (a (A007318 (Int.land 3 (-(n : ℤ))).toNat).toNat) 2

end

end A001083.P13713105879846709916

namespace A001083

/-- `A042942(n-1)+1-a(A007318(and(3, -n)))%2` -/
def P13713105879846709916.Spec : Prop :=
  ∀ n, P13713105879846709916.a n = A001083 (n + 1)

end A001083

/-! ## A001083.P12899013436188598699

`A042942(n-1)+A014963(n*(a((n+1)%2)+1)!)` with `a(0)=1, a(1)=2`
-/

namespace A001083.P12899013436188598699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A042942 (n - 1) + A014963 (n * Nat.factorial (a ((n + 1) % 2) + 1).toNat)

end

end A001083.P12899013436188598699

namespace A001083

/-- `A042942(n-1)+A014963(n*(a((n+1)%2)+1)!)` -/
def P12899013436188598699.Spec : Prop :=
  ∀ n, P12899013436188598699.a n = A001083 (n + 1)

end A001083

/-! ## A001083.P6433159880299205887

`A111123(n-3)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A001083.P6433159880299205887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A111123 (n - 3) + a (n - 1)

end

end A001083.P6433159880299205887

namespace A001083

/-- `A111123(n-3)+a(n-1)` -/
def P6433159880299205887.Spec : Prop :=
  ∀ n, P6433159880299205887.a n = A001083 (n + 1)

end A001083

/-!
# A001084: a(n) = 20*a(n-1) - a(n-2) with a(0) = 0, a(1) = 3.

The programs for A001084, the canonical program `A001084.P6963856093413227161` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001084 has offset 0).

The definition of A001084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-a(n-2)` (program `A001084.P6963856093413227161`, by `A001084.P6963856093413227161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001084.P6963856093413227161

`20*a(n-1)-a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001084

/-- `20*a(n-1)-a(n-2)` -/
def P6963856093413227161.Spec : Prop :=
  ∀ n, P6963856093413227161.a n = A001084 n

theorem P6963856093413227161.correct : P6963856093413227161.Spec := by
  intro n
  simp only [A001084]

end A001084

/-! ## A001084.P155990019621814591

`((10+3*sqrt(11))^n-(10-3*sqrt(11))^n)/(2*sqrt(11))`
-/

namespace A001084.P155990019621814591
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 + 3 * Real.sqrt (11 : ℝ)) ^ n - (10 - 3 * Real.sqrt (11 : ℝ)) ^ n) / (2 * Real.sqrt (11 : ℝ))

end

end A001084.P155990019621814591

namespace A001084

/-- `((10+3*sqrt(11))^n-(10-3*sqrt(11))^n)/(2*sqrt(11))` -/
def P155990019621814591.Spec : Prop :=
  ∀ n, P155990019621814591.a n = (A001084 n : ℝ)

end A001084

/-! ## A001084.P7858812405392815672

`ogf(3x/(1-20x+x^2))`
-/

namespace A001084.P7858812405392815672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -20, 1] n

end

end A001084.P7858812405392815672

namespace A001084

/-- `ogf(3x/(1-20x+x^2))` -/
def P7858812405392815672.Spec : Prop :=
  ∀ n, P7858812405392815672.a n = A001084 n

end A001084

/-! ## A001084.P4652599221342228153

`3*A075843(n)`
-/

namespace A001084.P4652599221342228153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A075843 n

end

end A001084.P4652599221342228153

namespace A001084

/-- `3*A075843(n)` -/
def P4652599221342228153.Spec : Prop :=
  ∀ n, P4652599221342228153.a n = A001084 n

end A001084

/-! ## A001084.P17658172814215533155

`floor(A001085(n)/sqrt(11))`
-/

namespace A001084.P17658172814215533155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001085 n : ℝ) / Real.sqrt (11 : ℝ)⌋

end

end A001084.P17658172814215533155

namespace A001084

/-- `floor(A001085(n)/sqrt(11))` -/
def P17658172814215533155.Spec : Prop :=
  ∀ n, P17658172814215533155.a n = A001084 n

end A001084

/-! ## A001084.P5231824395188829192

`3*record[and(1, n)*A041179(n)]`
-/

namespace A001084.P5231824395188829192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A041179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001084.P5231824395188829192

namespace A001084

/-- `3*record[and(1, n)*A041179(n)]` -/
def P5231824395188829192.Spec : Prop :=
  ∀ n, P5231824395188829192.a n = A001084 n

end A001084

/-! ## A001084.P8368255969616940901

`record[A000035(n)*A041015(n)]`
-/

namespace A001084.P8368255969616940901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001084.P8368255969616940901

namespace A001084

/-- `record[A000035(n)*A041015(n)]` -/
def P8368255969616940901.Spec : Prop :=
  ∀ n, P8368255969616940901.a n = A001084 n

end A001084

/-! ## A001084.P4360598483126878407

`A198947(2*n+1)-A001085(n)`
-/

namespace A001084.P4360598483126878407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198947 (2 * n + 1) - A001085 n

end

end A001084.P4360598483126878407

namespace A001084

/-- `A198947(2*n+1)-A001085(n)` -/
def P4360598483126878407.Spec : Prop :=
  ∀ n, P4360598483126878407.a n = A001084 n

end A001084

/-! ## A001084.P3821059600477121521

`A221763(2*n+1)-A198947(2*n+1)`
-/

namespace A001084.P3821059600477121521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221763 (2 * n + 1) - A198947 (2 * n + 1)

end

end A001084.P3821059600477121521

namespace A001084

/-- `A221763(2*n+1)-A198947(2*n+1)` -/
def P3821059600477121521.Spec : Prop :=
  ∀ n, P3821059600477121521.a n = A001084 n

end A001084

/-! ## A001084.P15138110714465534970

`A041015(A004273(n))-A000007(n)`
-/

namespace A001084.P15138110714465534970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041015 (A004273 n).toNat - A000007 n

end

end A001084.P15138110714465534970

namespace A001084

/-- `A041015(A004273(n))-A000007(n)` -/
def P15138110714465534970.Spec : Prop :=
  ∀ n, P15138110714465534970.a n = A001084 n

end A001084

/-!
# A001085: a(n) = 20*a(n-1) - a(n-2).

The programs for A001085, the canonical program `A001085.P9170597169267186961` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001085 has offset 0).

The definition of A001085 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-a(n-2)` (program `A001085.P9170597169267186961`, by `A001085.P9170597169267186961.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001085.P9170597169267186961

`20*a(n-1)-a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001085

/-- `20*a(n-1)-a(n-2)` -/
def P9170597169267186961.Spec : Prop :=
  ∀ n, P9170597169267186961.a n = A001085 n

theorem P9170597169267186961.correct : P9170597169267186961.Spec := by
  intro n
  simp only [A001085]

end A001085

/-! ## A001085.P9099976254467178488

`sqrt(99*A075843(n)²+1)`
-/

namespace A001085.P9099976254467178488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (99 * A075843 n ^ 2 + 1 : ℝ)

end

end A001085.P9099976254467178488

namespace A001085

/-- `sqrt(99*A075843(n)²+1)` -/
def P9099976254467178488.Spec : Prop :=
  ∀ n, P9099976254467178488.a n = (A001085 n : ℝ)

end A001085

/-! ## A001085.P8087175374225429681

`ogf((1-10x)/(1-20x+x^2))`
-/

namespace A001085.P8087175374225429681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10] [1, -20, 1] n

end

end A001085.P8087175374225429681

namespace A001085

/-- `ogf((1-10x)/(1-20x+x^2))` -/
def P8087175374225429681.Spec : Prop :=
  ∀ n, P8087175374225429681.a n = A001085 n

end A001085

/-! ## A001085.P10158900876948848781

`A131216(n)-a(n-1)` with `a(0)=1`
-/

namespace A001085.P10158900876948848781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131216 n - a (n - 1)

end

end A001085.P10158900876948848781

namespace A001085

/-- `A131216(n)-a(n-1)` -/
def P10158900876948848781.Spec : Prop :=
  ∀ n, P10158900876948848781.a n = A001085 n

end A001085

/-! ## A001085.P9330353871895045417

`A198947(2*n+1)-A001084(n)`
-/

namespace A001085.P9330353871895045417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198947 (2 * n + 1) - A001084 n

end

end A001085.P9330353871895045417

namespace A001085

/-- `A198947(2*n+1)-A001084(n)` -/
def P9330353871895045417.Spec : Prop :=
  ∀ n, P9330353871895045417.a n = A001085 n

end A001085

/-! ## A001085.P18276255139407747867

`A221763(2*n+1)-A075844(n)`
-/

namespace A001085.P18276255139407747867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221763 (2 * n + 1) - A075844 n

end

end A001085.P18276255139407747867

namespace A001085

/-- `A221763(2*n+1)-A075844(n)` -/
def P18276255139407747867.Spec : Prop :=
  ∀ n, P18276255139407747867.a n = A001085 n

end A001085

/-! ## A001085.P11262327445065347013

`A198947(2*n+1)+A198947(2*n+1)-A221763(2*n+1)`
-/

namespace A001085.P11262327445065347013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198947 (2 * n + 1) + (A198947 (2 * n + 1) - A221763 (2 * n + 1))

end

end A001085.P11262327445065347013

namespace A001085

/-- `A198947(2*n+1)+A198947(2*n+1)-A221763(2*n+1)` -/
def P11262327445065347013.Spec : Prop :=
  ∀ n, P11262327445065347013.a n = A001085 n

end A001085

/-! ## A001085.P8092603006733111248

`((10+3*sqrt(11))^n+(10-3*sqrt(11))^n)/2`
-/

namespace A001085.P8092603006733111248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 + 3 * Real.sqrt (11 : ℝ)) ^ n + (10 - 3 * Real.sqrt (11 : ℝ)) ^ n) / 2

end

end A001085.P8092603006733111248

namespace A001085

/-- `((10+3*sqrt(11))^n+(10-3*sqrt(11))^n)/2` -/
def P8092603006733111248.Spec : Prop :=
  ∀ n, P8092603006733111248.a n = (A001085 n : ℝ)

end A001085

/-! ## A001085.P15321841835579579464

`A075839(n+1)-3*A001084(n)`
-/

namespace A001085.P15321841835579579464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075839 (n + 1) - 3 * A001084 n

end

end A001085.P15321841835579579464

namespace A001085

/-- `A075839(n+1)-3*A001084(n)` -/
def P15321841835579579464.Spec : Prop :=
  ∀ n, P15321841835579579464.a n = A001085 n

end A001085

/-! ## A001085.P8787639366451557831

`A075839(n+1)-9*A075843(n)`
-/

namespace A001085.P8787639366451557831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075839 (n + 1) - 9 * A075843 n

end

end A001085.P8787639366451557831

namespace A001085

/-- `A075839(n+1)-9*A075843(n)` -/
def P8787639366451557831.Spec : Prop :=
  ∀ n, P8787639366451557831.a n = A001085 n

end A001085

/-!
# A001087: Related to S(n), the number of self-dual monotone Boolean functions of n variables (A001206): 2^n-th term is S(n).

The programs for A001087, there is no canonical definition to state claims against.
-/

/-! ## A001087.P13739378253601323023

`eq[1, A000120(A329561(n+1))]`
-/

namespace A001087.P13739378253601323023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A329561 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001087.P13739378253601323023

/-! ## A001087.P8692108124086569360

`eq[1, A038573(2*A329561(n+1))]`
-/

namespace A001087.P8692108124086569360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (2 * A329561 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001087.P8692108124086569360

/-! ## A001087.P2547290359355811792

`eq[A030101(A329561(n+1)), A054977(n)]`
-/

namespace A001087.P2547290359355811792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A329561 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001087.P2547290359355811792

/-! ## A001087.P6376931622256176119

`eq[A030101(A329561(n+1)), A158388(n)]`
-/

namespace A001087.P6376931622256176119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A329561 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001087.P6376931622256176119

/-! ## A001087.P2248615188291481996

`eq[A030101(A329561(n+1)), A304042(n)]`
-/

namespace A001087.P2248615188291481996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A329561 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001087.P2248615188291481996

/-!
# A001088: Product of totient function: a(n) = Product_{k=1..n} phi(k) (cf. A000010).

The programs for A001088, there is no canonical definition to state claims against.
-/

/-! ## A001088.P14473642908105870411

`∏[A054526(∑[n+3])]`
-/

namespace A001088.P14473642908105870411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001088.P14473642908105870411

/-! ## A001088.P13655285344303726721

`a(n-1)*A000010(n)` with `a(0)=1`
-/

namespace A001088.P13655285344303726721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000010 n

end

end A001088.P13655285344303726721

/-! ## A001088.P10248219034963168473

`a(n-1)*A225530(n)` with `a(0)=1, a(1)=1`
-/

namespace A001088.P10248219034963168473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A225530 n

end

end A001088.P10248219034963168473

/-! ## A001088.P352769700488921674

`a(n-1)*A384710(n)` with `a(0)=1, a(1)=1`
-/

namespace A001088.P352769700488921674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A384710 n

end

end A001088.P352769700488921674

/-! ## A001088.P8091724424140809268

`a(n-1)*A057828(n²)` with `a(0)=1`
-/

namespace A001088.P8091724424140809268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A057828 (n ^ 2)

end

end A001088.P8091724424140809268

/-! ## A001088.P9146207036388106321

`a(n-1)*A390752(n²)` with `a(0)=1`
-/

namespace A001088.P9146207036388106321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A390752 (n ^ 2)

end

end A001088.P9146207036388106321

/-! ## A001088.P9274120758987948472

`∏[A000010(A028310(n))]`
-/

namespace A001088.P9274120758987948472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001088.P9274120758987948472

/-! ## A001088.P17564451651709285188

`∏[A000010(A137734(n²))]`
-/

namespace A001088.P17564451651709285188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001088.P17564451651709285188

/-! ## A001088.P10295990745053295471

`A379149(∑[n]+n)`
-/

namespace A001088.P10295990745053295471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379149 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001088.P10295990745053295471

/-! ## A001088.P7357774466604350708

`∏[A000010(n+1)]/A000010(n+1)`
-/

namespace A001088.P7357774466604350708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A001088.P7357774466604350708

/-!
# A001089: Number of permutations of [n] containing exactly 2 increasing subsequences of length 3.

The programs for A001089, the canonical program `A001089.P12328376090641490040` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001089 has offset 0).

The definition of A001089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001089.P12328376090641490040

`A071741(n)-A071729(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A001089

/-- `A071741(n)-A071729(n)` -/
def P12328376090641490040.Spec : Prop :=
  ∀ n, P12328376090641490040.a n = A001089 n

theorem P12328376090641490040.correct : P12328376090641490040.Spec := by
  intro n
  simp only [A001089]

end A001089

/-! ## A001089.P16387806091537159817

`A071741(A000007(n)+n)%A071729(n)`
-/

namespace A001089.P16387806091537159817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071741 (A000007 n + (n : ℤ)).toNat) (A071729 n)

end

end A001089.P16387806091537159817

namespace A001089

/-- `A071741(A000007(n)+n)%A071729(n)` -/
def P16387806091537159817.Spec : Prop :=
  ∀ n, P16387806091537159817.a n = A001089 n

end A001089

/-! ## A001089.P18229200872254957042

`A071741(n)-(A071748(n+1)-A000108(n+2))`
-/

namespace A001089.P18229200872254957042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 n - (A071748 (n + 1) - A000108 (n + 2))

end

end A001089.P18229200872254957042

namespace A001089

/-- `A071741(n)-(A071748(n+1)-A000108(n+2))` -/
def P18229200872254957042.Spec : Prop :=
  ∀ n, P18229200872254957042.a n = A001089 n

end A001089

/-! ## A001089.P3756184015937965261

`A071741(n)-(A071719(n)+A071732(n)-A071722(n))`
-/

namespace A001089.P3756184015937965261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 n - (A071719 n + (A071732 n - A071722 n))

end

end A001089.P3756184015937965261

namespace A001089

/-- `A071741(n)-(A071719(n)+A071732(n)-A071722(n))` -/
def P3756184015937965261.Spec : Prop :=
  ∀ n, P3756184015937965261.a n = A001089 n

end A001089

/-! ## A001089.P16010143972959315450

`A071741(n)%A071729(A118759(n))`
-/

namespace A001089.P16010143972959315450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071741 n) (A071729 (A118759 n).toNat)

end

end A001089.P16010143972959315450

namespace A001089

/-- `A071741(n)%A071729(A118759(n))` -/
def P16010143972959315450.Spec : Prop :=
  ∀ n, P16010143972959315450.a n = A001089 n

end A001089

/-!
# A001090: a(n) = 8*a(n-1) - a(n-2); a(0) = 0, a(1) = 1.

The programs for A001090, the canonical program `A001090.P18442934862726773041` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001090 has offset 0).

The definition of A001090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-a(n-2)` (program `A001090.P18442934862726773041`, by `A001090.P18442934862726773041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001090.P18442934862726773041

`8*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001090

/-- `8*a(n-1)-a(n-2)` -/
def P18442934862726773041.Spec : Prop :=
  ∀ n, P18442934862726773041.a n = A001090 n

theorem P18442934862726773041.correct : P18442934862726773041.Spec := by
  intro n
  simp only [A001090]

end A001090

/-! ## A001090.P17543472629345386542

`A136325(n)/3`
-/

namespace A001090.P17543472629345386542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136325 n : ℚ) / 3

end

end A001090.P17543472629345386542

namespace A001090

/-- `A136325(n)/3` -/
def P17543472629345386542.Spec : Prop :=
  ∀ n, P17543472629345386542.a n = (A001090 n : ℚ)

end A001090

/-! ## A001090.P6663072676912385955

`((4+sqrt(15))^n-(4-sqrt(15))^n)/(2*sqrt(15))`
-/

namespace A001090.P6663072676912385955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (15 : ℝ)) ^ n - (4 - Real.sqrt (15 : ℝ)) ^ n) / (2 * Real.sqrt (15 : ℝ))

end

end A001090.P6663072676912385955

namespace A001090

/-- `((4+sqrt(15))^n-(4-sqrt(15))^n)/(2*sqrt(15))` -/
def P6663072676912385955.Spec : Prop :=
  ∀ n, P6663072676912385955.a n = (A001090 n : ℝ)

end A001090

/-! ## A001090.P12613995433712521050

`sqrt((A001091(n)²-1)/15)`
-/

namespace A001090.P12613995433712521050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A001091 n ^ 2 - 1 : ℚ) / 15 : ℝ)

end

end A001090.P12613995433712521050

namespace A001090

/-- `sqrt((A001091(n)²-1)/15)` -/
def P12613995433712521050.Spec : Prop :=
  ∀ n, P12613995433712521050.a n = (A001090 n : ℝ)

end A001090

/-!
# A001091: a(n) = 8*a(n-1) - a(n-2); a(0) = 1, a(1) = 4.

The programs for A001091, the canonical program `A001091.P16201814864229132762` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001091 has offset 0).

The definition of A001091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-a(n-2)` (program `A001091.P16201814864229132762`, by `A001091.P16201814864229132762.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001091.P16201814864229132762

`8*a(n-1)-a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001091

/-- `8*a(n-1)-a(n-2)` -/
def P16201814864229132762.Spec : Prop :=
  ∀ n, P16201814864229132762.a n = A001091 n

theorem P16201814864229132762.correct : P16201814864229132762.Spec := by
  intro n
  simp only [A001091]

end A001091

/-! ## A001091.P5856606655377630333

`((4+sqrt(15))^n+(4-sqrt(15))^n)/2`
-/

namespace A001091.P5856606655377630333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (15 : ℝ)) ^ n + (4 - Real.sqrt (15 : ℝ)) ^ n) / 2

end

end A001091.P5856606655377630333

namespace A001091

/-- `((4+sqrt(15))^n+(4-sqrt(15))^n)/2` -/
def P5856606655377630333.Spec : Prop :=
  ∀ n, P5856606655377630333.a n = (A001091 n : ℝ)

end A001091

/-! ## A001091.P18338232348696374208

`A001090(n+1)-4*A001090(n)`
-/

namespace A001091.P18338232348696374208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) - 4 * A001090 n

end

end A001091.P18338232348696374208

namespace A001091

/-- `A001090(n+1)-4*A001090(n)` -/
def P18338232348696374208.Spec : Prop :=
  ∀ n, P18338232348696374208.a n = A001091 n

end A001091

/-! ## A001091.P10630472934936521699

`sqrt(15*A001090(n)²+1)`
-/

namespace A001091.P10630472934936521699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (15 * A001090 n ^ 2 + 1 : ℝ)

end

end A001091.P10630472934936521699

namespace A001091

/-- `sqrt(15*A001090(n)²+1)` -/
def P10630472934936521699.Spec : Prop :=
  ∀ n, P10630472934936521699.a n = (A001091 n : ℝ)

end A001091

/-! ## A001091.P7282351064706195014

`ogf((1-4x)/(1-8x+x^2))`
-/

namespace A001091.P7282351064706195014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, 1] n

end

end A001091.P7282351064706195014

namespace A001091

/-- `ogf((1-4x)/(1-8x+x^2))` -/
def P7282351064706195014.Spec : Prop :=
  ∀ n, P7282351064706195014.a n = A001091 n

end A001091

/-! ## A001091.P17658000466397902911

`A080871(2*n)`
-/

namespace A001091.P17658000466397902911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (2 * n)

end

end A001091.P17658000466397902911

namespace A001091

/-- `A080871(2*n)` -/
def P17658000466397902911.Spec : Prop :=
  ∀ n, P17658000466397902911.a n = A001091 n

end A001091

/-! ## A001091.P2333781943954421686

`floor(A086903(n)/2)`
-/

namespace A001091.P2333781943954421686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086903 n : ℚ) / 2⌋

end

end A001091.P2333781943954421686

namespace A001091

/-- `floor(A086903(n)/2)` -/
def P2333781943954421686.Spec : Prop :=
  ∀ n, P2333781943954421686.a n = A001091 n

end A001091

/-! ## A001091.P7299474416265906449

`A248833(n)/5-1`
-/

namespace A001091.P7299474416265906449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248833 n : ℚ) / 5 - 1

end

end A001091.P7299474416265906449

namespace A001091

/-- `A248833(n)/5-1` -/
def P7299474416265906449.Spec : Prop :=
  ∀ n, P7299474416265906449.a n = (A001091 n : ℚ)

end A001091

/-! ## A001091.P2984387476300827332

`A144479(n)+A001090(n)`
-/

namespace A001091.P2984387476300827332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144479 n + A001090 n

end

end A001091.P2984387476300827332

namespace A001091

/-- `A144479(n)+A001090(n)` -/
def P2984387476300827332.Spec : Prop :=
  ∀ n, P2984387476300827332.a n = A001091 n

end A001091

/-! ## A001091.P10197822925554034017

`A105426(n)-A001090(n)`
-/

namespace A001091.P10197822925554034017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105426 n - A001090 n

end

end A001091.P10197822925554034017

namespace A001091

/-- `A105426(n)-A001090(n)` -/
def P10197822925554034017.Spec : Prop :=
  ∀ n, P10197822925554034017.a n = A001091 n

end A001091

/-! ## A001091.P2008930536614128950

`A070997(n)-A136325(n)`
-/

namespace A001091.P2008930536614128950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n - A136325 n

end

end A001091.P2008930536614128950

namespace A001091

/-- `A070997(n)-A136325(n)` -/
def P2008930536614128950.Spec : Prop :=
  ∀ n, P2008930536614128950.a n = A001091 n

end A001091

/-! ## A001091.P17644549520842263998

`Δ[A001090(n)]-A136325(n)`
-/

namespace A001091.P17644549520842263998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A136325 n

end

end A001091.P17644549520842263998

namespace A001091

/-- `Δ[A001090(n)]-A136325(n)` -/
def P17644549520842263998.Spec : Prop :=
  ∀ n, P17644549520842263998.a n = A001091 n

end A001091

/-! ## A001091.P1937942168767873204

`A341929(n)+2*A001090(n)`
-/

namespace A001091.P1937942168767873204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341929 n + 2 * A001090 n

end

end A001091.P1937942168767873204

namespace A001091

/-- `A341929(n)+2*A001090(n)` -/
def P1937942168767873204.Spec : Prop :=
  ∀ n, P1937942168767873204.a n = A001091 n

end A001091

/-! ## A001091.P14857500931608832762

`A077244(n)-2*A057080(n)`
-/

namespace A001091.P14857500931608832762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077244 n - 2 * A057080 n

end

end A001091.P14857500931608832762

namespace A001091

/-- `A077244(n)-2*A057080(n)` -/
def P14857500931608832762.Spec : Prop :=
  ∀ n, P14857500931608832762.a n = A001091 n

end A001091

/-! ## A001091.P10865869265593390510

`2*A077246(n)-A077244(n)`
-/

namespace A001091.P10865869265593390510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077246 n - A077244 n

end

end A001091.P10865869265593390510

namespace A001091

/-- `2*A077246(n)-A077244(n)` -/
def P10865869265593390510.Spec : Prop :=
  ∀ n, P10865869265593390510.a n = A001091 n

end A001091

/-! ## A001091.P14761492602930859713

`A041023(2*n)-A136325(n)`
-/

namespace A001091.P14761492602930859713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (2 * n) - A136325 n

end

end A001091.P14761492602930859713

namespace A001091

/-- `A041023(2*n)-A136325(n)` -/
def P14761492602930859713.Spec : Prop :=
  ∀ n, P14761492602930859713.a n = A001091 n

end A001091

/-! ## A001091.P4303218880563306116

`A341927(n)-2*A001090(n)`
-/

namespace A001091.P4303218880563306116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341927 n - 2 * A001090 n

end

end A001091.P4303218880563306116

namespace A001091

/-- `A341927(n)-2*A001090(n)` -/
def P4303218880563306116.Spec : Prop :=
  ∀ n, P4303218880563306116.a n = A001091 n

end A001091

/-! ## A001091.P10793897394899352991

`∑[A070997(n)]-A273053(n+1)`
-/

namespace A001091.P10793897394899352991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273053 (n + 1)

end

end A001091.P10793897394899352991

namespace A001091

/-- `∑[A070997(n)]-A273053(n+1)` -/
def P10793897394899352991.Spec : Prop :=
  ∀ n, P10793897394899352991.a n = A001091 n

end A001091

/-! ## A001091.P10390339526354573191

`Δ[(A136325(n)-A341929(n))/2]`
-/

namespace A001091.P10390339526354573191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136325 n - A341929 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001091.P10390339526354573191

namespace A001091

/-- `Δ[(A136325(n)-A341929(n))/2]` -/
def P10390339526354573191.Spec : Prop :=
  ∀ n, P10390339526354573191.a n = (A001091 n : ℚ)

end A001091

/-! ## A001091.P8085795328621603718

`A001090(n+1)-A273053(n+1)`
-/

namespace A001091.P8085795328621603718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) - A273053 (n + 1)

end

end A001091.P8085795328621603718

namespace A001091

/-- `A001090(n+1)-A273053(n+1)` -/
def P8085795328621603718.Spec : Prop :=
  ∀ n, P8085795328621603718.a n = A001091 n

end A001091

/-!
# A001092: Union of all numbers {p, q} where p and q are both primes or powers of primes and q = p+2.

The programs for A001092, there is no canonical definition to state claims against.
-/

/-! ## A001092.P8291530351909259596

`∪[A120431(n+1), A120432(n+1)+1]`
-/

namespace A001092.P8291530351909259596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001092.P8291530351909259596

/-! ## A001092.P6425684496124161459

`∪[A120431(n+1), A120431(n+2)+2]`
-/

namespace A001092.P6425684496124161459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001092.P6425684496124161459

/-! ## A001092.P18067399061065125405

`record[A117331(n+1)/A072491(A178763(n+1))]`
-/

namespace A001092.P18067399061065125405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117331 (n + 1) : ℚ) / (A072491 (A178763 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001092.P18067399061065125405

/-! ## A001092.P17559807316650911221

`record[A117331(n+1)%A117332(A117319(n+1))]`
-/

namespace A001092.P17559807316650911221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117331 (n + 1)) (A117332 (A117319 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001092.P17559807316650911221

/-! ## A001092.P15091215174904236587

`A074583(∑[∑[A172542(n)]])`
-/

namespace A001092.P15091215174904236587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172542 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001092.P15091215174904236587

/-!
# A001093: a(n) = n^3 + 1.

The programs for A001093, there is no canonical definition to state claims against.
-/

/-! ## A001093.P4413563749242753462

`(n-1)^3+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001093.P4413563749242753462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3 + 1

end

end A001093.P4413563749242753462

/-! ## A001093.P12716026863508427099

`floor(n/Δ[atan(n-2)])`
-/

namespace A001093.P12716026863508427099
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n : ℤ) - 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A001093.P12716026863508427099

/-! ## A001093.P1121367368371896469

`abs(xor(-1, (n-1)^3))`
-/

namespace A001093.P1121367368371896469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (((n : ℤ) - 1) ^ 3)|

end

end A001093.P1121367368371896469

/-! ## A001093.P12376957287710774622

`-xor(-1, (n-1)^3)`
-/

namespace A001093.P12376957287710774622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (((n : ℤ) - 1) ^ 3)

end

end A001093.P12376957287710774622

/-! ## A001093.P317965990438862845

`n*(or(2, (1-n)²)-n)`
-/

namespace A001093.P317965990438862845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.lor 2 ((1 - (n : ℤ)) ^ 2) - (n : ℤ))

end

end A001093.P317965990438862845

/-! ## A001093.P4072990369842123734

`n*(xor(2, (1-n)²)-n)`
-/

namespace A001093.P4072990369842123734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.xor 2 ((1 - (n : ℤ)) ^ 2) - (n : ℤ))

end

end A001093.P4072990369842123734

/-! ## A001093.P16065853373614560437

`n*(n^3)%(n²+3)`
-/

namespace A001093.P16065853373614560437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 3 % (n ^ 2 + 3))

end

end A001093.P16065853373614560437

/-! ## A001093.P16385654352151386530

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A001093.P16385654352151386530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001093.P16385654352151386530

/-! ## A001093.P11303954294977398175

`n*(lcm(2-n, n-1)+1)`
-/

namespace A001093.P11303954294977398175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Int.lcm (2 - (n : ℤ)) ((n : ℤ) - 1) + 1)

end

end A001093.P11303954294977398175

/-! ## A001093.P11521582857612831867

`n*or(1, (n-1)*(n-2))`
-/

namespace A001093.P11521582857612831867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 (((n : ℤ) - 1) * ((n : ℤ) - 2))

end

end A001093.P11521582857612831867

/-! ## A001093.P10073737087427504722

`n*xor(1, (n-1)*(n-2))`
-/

namespace A001093.P10073737087427504722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 (((n : ℤ) - 1) * ((n : ℤ) - 2))

end

end A001093.P10073737087427504722

/-! ## A001093.P3041921378838544890

`xor((n-1)^3, xor(n, n-1))`
-/

namespace A001093.P3041921378838544890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 1) ^ 3) (Int.xor (n : ℤ) ((n : ℤ) - 1))

end

end A001093.P3041921378838544890

/-! ## A001093.P14675705789828525487

`Δ[(C(n, 2)+1-n)²+n]`
-/

namespace A001093.P14675705789828525487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 + 1 : ℤ) - (n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001093.P14675705789828525487

/-! ## A001093.P10378012645788362521

`n*(7-∑[a(n-1)-2])` with `a(0)=4`
-/

namespace A001093.P10378012645788362521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (7 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001093.P10378012645788362521

/-! ## A001093.P12475094508231371067

`n*∑[ogf((1-2x+x^2+2x^3)/(1-2x+x^2))]`
-/

namespace A001093.P12475094508231371067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001093.P12475094508231371067

/-! ## A001093.P7543674449757617950

`lcm(n, n*(n*(n-2)-(n-3)))`
-/

namespace A001093.P7543674449757617950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 2) - ((n : ℤ) - 3)))

end

end A001093.P7543674449757617950

/-! ## A001093.P15079481713431086796

`((n-2)²+n-1)*gcd(n, 2*n)`
-/

namespace A001093.P15079481713431086796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) ^ 2 + ((n : ℤ) - 1)) * (Nat.gcd n (2 * n) : ℤ)

end

end A001093.P15079481713431086796

/-! ## A001093.P15256267296313558415

`n*(C(2*n, 2)-(n+3)*(n-1))`
-/

namespace A001093.P15256267296313558415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (2 * n) 2 : ℤ) - (n + 3 : ℤ) * ((n : ℤ) - 1))

end

end A001093.P15256267296313558415

/-! ## A001093.P13872248527977037511

`n*(and(1, 2*n+1)+(n-1)*(n-2))`
-/

namespace A001093.P13872248527977037511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.land 1 (2 * n + 1) : ℤ) + ((n : ℤ) - 1) * ((n : ℤ) - 2))

end

end A001093.P13872248527977037511

/-! ## A001093.P7075360586648346424

`n*A002061(abs(1-n))`
-/

namespace A001093.P7075360586648346424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002061 |1 - (n : ℤ)|.toNat

end

end A001093.P7075360586648346424

/-!
# A001094: a(n) = n + n*(n-1)*(n-2)*(n-3).

The programs for A001094, the canonical program `A001094.P17747753271672634050` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001094 has offset 0).

The definition of A001094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+n*(n-1)*(n-2)*(n-3)` (program `A001094.P17747753271672634050`, by `A001094.P17747753271672634050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001094.P16302896448499721474

`n+24*C(n, 4)`
-/

namespace A001094.P16302896448499721474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 24 * Nat.choose n 4

end

end A001094.P16302896448499721474

namespace A001094

/-- `n+24*C(n, 4)` -/
def P16302896448499721474.Spec : Prop :=
  ∀ n, (P16302896448499721474.a n : ℤ) = A001094 n

end A001094

/-! ## A001094.P17747753271672634050

`n+n*(n-1)*(n-2)*(n-3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001094

/-- `n+n*(n-1)*(n-2)*(n-3)` -/
def P17747753271672634050.Spec : Prop :=
  ∀ n, P17747753271672634050.a n = A001094 n

theorem P17747753271672634050.correct : P17747753271672634050.Spec := by
  intro n
  simp only [A001094]

end A001094

/-! ## A001094.P18025142540591764705

`(A052762(n)+n)%A173548(n+4)`
-/

namespace A001094.P18025142540591764705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052762 n + (n : ℤ)) (A173548 (n + 4))

end

end A001094.P18025142540591764705

namespace A001094

/-- `(A052762(n)+n)%A173548(n+4)` -/
def P18025142540591764705.Spec : Prop :=
  ∀ n, P18025142540591764705.a n = A001094 n

end A001094

/-! ## A001094.P7452030498179503936

`floor(Δ[A052787(n)/5]+n)`
-/

namespace A001094.P7452030498179503936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052787 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n + (n : ℚ)⌋

end

end A001094.P7452030498179503936

namespace A001094

/-- `floor(Δ[A052787(n)/5]+n)` -/
def P7452030498179503936.Spec : Prop :=
  ∀ n, P7452030498179503936.a n = A001094 n

end A001094

/-! ## A001094.P12227279762668094844

`round((Δ[A001095(n)]-1)/5+n)`
-/

namespace A001094.P12227279762668094844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n - 1 : ℚ) / 5 + (n : ℚ))

end

end A001094.P12227279762668094844

namespace A001094

/-- `round((Δ[A001095(n)]-1)/5+n)` -/
def P12227279762668094844.Spec : Prop :=
  ∀ n, P12227279762668094844.a n = A001094 n

end A001094

/-!
# A001095: a(n) = n + n*(n-1)*(n-2)*(n-3)*(n-4).

The programs for A001095, the canonical program `A001095.P5999656701398893294` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001095 has offset 0).

The definition of A001095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+n*(n-1)*(n-2)*(n-3)*(n-4)` (program `A001095.P5999656701398893294`, by `A001095.P5999656701398893294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001095.P14816478944203956599

`n+120*C(n, 5)`
-/

namespace A001095.P14816478944203956599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 120 * Nat.choose n 5

end

end A001095.P14816478944203956599

namespace A001095

/-- `n+120*C(n, 5)` -/
def P14816478944203956599.Spec : Prop :=
  ∀ n, (P14816478944203956599.a n : ℤ) = A001095 n

end A001095

/-! ## A001095.P5999656701398893294

`n+n*(n-1)*(n-2)*(n-3)*(n-4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001095

/-- `n+n*(n-1)*(n-2)*(n-3)*(n-4)` -/
def P5999656701398893294.Spec : Prop :=
  ∀ n, P5999656701398893294.a n = A001095 n

theorem P5999656701398893294.correct : P5999656701398893294.Spec := by
  intro n
  simp only [A001095]

end A001095

/-! ## A001095.P8262171841504560598

`lcm(n, n*(n-1-(2-n)²)²)`
-/

namespace A001095.P8262171841504560598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * ((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2)

end

end A001095.P8262171841504560598

namespace A001095

/-- `lcm(n, n*(n-1-(2-n)²)²)` -/
def P8262171841504560598.Spec : Prop :=
  ∀ n, (P8262171841504560598.a n : ℤ) = A001095 n

theorem P8262171841504560598.correct : P8262171841504560598.Spec := by
  intro n
  simp only [A001095, Nat.add_sub_cancel, A001095.P8262171841504560598.a, A001095.P5999656701398893294.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A001095

/-! ## A001095.P3912772246900779988

`gcd(A052787(n)+n, A000122(3*n+2))`
-/

namespace A001095.P3912772246900779988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052787 n + (n : ℤ)) (A000122 (3 * n + 2))

end

end A001095.P3912772246900779988

namespace A001095

/-- `gcd(A052787(n)+n, A000122(3*n+2))` -/
def P3912772246900779988.Spec : Prop :=
  ∀ n, (P3912772246900779988.a n : ℤ) = A001095 n

end A001095

/-! ## A001095.P576163454154719244

`(A052787(n)+n)%A206318(n+1)`
-/

namespace A001095.P576163454154719244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052787 n + (n : ℤ)) (A206318 (n + 1))

end

end A001095.P576163454154719244

namespace A001095

/-- `(A052787(n)+n)%A206318(n+1)` -/
def P576163454154719244.Spec : Prop :=
  ∀ n, P576163454154719244.a n = A001095 n

end A001095

/-!
# A001096: a(n) = n + n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5).

The programs for A001096, the canonical program `A001096.P17984634652378150633` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001096 has offset 0).

The definition of A001096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)` (program `A001096.P17984634652378150633`, by `A001096.P17984634652378150633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001096.P1754876946696035055

`n+720*C(n, 6)`
-/

namespace A001096.P1754876946696035055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 720 * Nat.choose n 6

end

end A001096.P1754876946696035055

namespace A001096

/-- `n+720*C(n, 6)` -/
def P1754876946696035055.Spec : Prop :=
  ∀ n, (P1754876946696035055.a n : ℤ) = A001096 n

end A001096

/-! ## A001096.P17984634652378150633

`n+n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001096

/-- `n+n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)` -/
def P17984634652378150633.Spec : Prop :=
  ∀ n, P17984634652378150633.a n = A001096 n

theorem P17984634652378150633.correct : P17984634652378150633.Spec := by
  intro n
  simp only [A001096]

end A001096

/-! ## A001096.P255976009137058241

`lcm(n, A053625(n)+n)`
-/

namespace A001096.P255976009137058241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A053625 n + (n : ℤ))

end

end A001096.P255976009137058241

namespace A001096

/-- `lcm(n, A053625(n)+n)` -/
def P255976009137058241.Spec : Prop :=
  ∀ n, (P255976009137058241.a n : ℤ) = A001096 n

end A001096

/-! ## A001096.P7601077298994435247

`abs((n-5)*A052787(n)+n)`
-/

namespace A001096.P7601077298994435247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 5) * A052787 n + (n : ℤ)|

end

end A001096.P7601077298994435247

namespace A001096

/-- `abs((n-5)*A052787(n)+n)` -/
def P7601077298994435247.Spec : Prop :=
  ∀ n, P7601077298994435247.a n = A001096 n

end A001096

/-! ## A001096.P13753151708227686932

`(A053625(n)+n)*A054977(n)`
-/

namespace A001096.P13753151708227686932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053625 n + (n : ℤ)) * A054977 n

end

end A001096.P13753151708227686932

namespace A001096

/-- `(A053625(n)+n)*A054977(n)` -/
def P13753151708227686932.Spec : Prop :=
  ∀ n, P13753151708227686932.a n = A001096 n

end A001096

/-! ## A001096.P4075947607979944585

`or(A053625(n)+n, A000035(n))`
-/

namespace A001096.P4075947607979944585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053625 n + (n : ℤ)) (A000035 n)

end

end A001096.P4075947607979944585

namespace A001096

/-- `or(A053625(n)+n, A000035(n))` -/
def P4075947607979944585.Spec : Prop :=
  ∀ n, P4075947607979944585.a n = A001096 n

end A001096

/-! ## A001096.P8254139657116059281

`floor(A053625(n)+A005843(n)/2)`
-/

namespace A001096.P8254139657116059281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053625 n : ℚ) + (A005843 n : ℚ) / 2⌋

end

end A001096.P8254139657116059281

namespace A001096

/-- `floor(A053625(n)+A005843(n)/2)` -/
def P8254139657116059281.Spec : Prop :=
  ∀ n, P8254139657116059281.a n = A001096 n

end A001096

/-! ## A001096.P10867002372342033869

`(A053625(n)+n)/A000038(n)!`
-/

namespace A001096.P10867002372342033869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053625 n + (n : ℤ) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A001096.P10867002372342033869

namespace A001096

/-- `(A053625(n)+n)/A000038(n)!` -/
def P10867002372342033869.Spec : Prop :=
  ∀ n, P10867002372342033869.a n = (A001096 n : ℚ)

end A001096

/-! ## A001096.P2005487414691876366

`gcd(A053625(n)+n, A000038(n+1))`
-/

namespace A001096.P2005487414691876366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053625 n + (n : ℤ)) (A000038 (n + 1))

end

end A001096.P2005487414691876366

namespace A001096

/-- `gcd(A053625(n)+n, A000038(n+1))` -/
def P2005487414691876366.Spec : Prop :=
  ∀ n, (P2005487414691876366.a n : ℤ) = A001096 n

end A001096

/-! ## A001096.P15056920746728544340

`or(A053625(n)+n, char[A077354(n+1)])`
-/

namespace A001096.P15056920746728544340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077354 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053625 n + (n : ℤ)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001096.P15056920746728544340

namespace A001096

/-- `or(A053625(n)+n, char[A077354(n+1)])` -/
def P15056920746728544340.Spec : Prop :=
  ∀ n, P15056920746728544340.a n = A001096 n

end A001096

/-! ## A001096.P16059752498046207431

`(A053625(n)+n)*A001221(A234095(n+1))`
-/

namespace A001096.P16059752498046207431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053625 n + (n : ℤ)) * A001221 (A234095 (n + 1)).toNat

end

end A001096.P16059752498046207431

namespace A001096

/-- `(A053625(n)+n)*A001221(A234095(n+1))` -/
def P16059752498046207431.Spec : Prop :=
  ∀ n, P16059752498046207431.a n = A001096 n

end A001096

/-! ## A001096.P12891622676407020114

`(A053625(n)+n)*A000035(A000040(n+1))`
-/

namespace A001096.P12891622676407020114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053625 n + (n : ℤ)) * A000035 (A000040 (n + 1)).toNat

end

end A001096.P12891622676407020114

namespace A001096

/-- `(A053625(n)+n)*A000035(A000040(n+1))` -/
def P12891622676407020114.Spec : Prop :=
  ∀ n, P12891622676407020114.a n = A001096 n

end A001096

/-! ## A001096.P14374947901553442155

`(A053625(n)+n)%Δ[A004254(n)]`
-/

namespace A001096.P14374947901553442155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053625 n + (n : ℤ)) (f1 (n + 1) - f1 n)

end

end A001096.P14374947901553442155

namespace A001096

/-- `(A053625(n)+n)%Δ[A004254(n)]` -/
def P14374947901553442155.Spec : Prop :=
  ∀ n, P14374947901553442155.a n = A001096 n

end A001096

/-!
# A001097: Twin primes.

The programs for A001097, the canonical program `A001097.P321733695451409135` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001097 has offset 1).

The definition of A001097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001097.P15440797091459228400

`A278972(n+1)/2`
-/

namespace A001097.P15440797091459228400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278972 (n + 1) : ℚ) / 2

end

end A001097.P15440797091459228400

namespace A001097

/-- `A278972(n+1)/2` -/
def P15440797091459228400.Spec : Prop :=
  ∀ n, P15440797091459228400.a n = (A001097 (n + 1) : ℚ)

end A001097

/-! ## A001097.P321733695451409135

`A280968(n)-a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A001097

/-- `A280968(n)-a(n-1)` -/
def P321733695451409135.Spec : Prop :=
  ∀ n, P321733695451409135.a n = A001097 (n + 1)

theorem P321733695451409135.correct : P321733695451409135.Spec := by
  intro n
  simp only [A001097, Nat.add_sub_cancel]

end A001097

/-! ## A001097.P15909818684671100781

`A161220(n+1)+2*(n+1)`
-/

namespace A001097.P15909818684671100781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161220 (n + 1) + (2 * (n + 1) : ℤ)

end

end A001097.P15909818684671100781

namespace A001097

/-- `A161220(n+1)+2*(n+1)` -/
def P15909818684671100781.Spec : Prop :=
  ∀ n, P15909818684671100781.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P10987146769205968990

`A265760(n+1)+A130706(n)`
-/

namespace A001097.P10987146769205968990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1) + A130706 n

end

end A001097.P10987146769205968990

namespace A001097

/-- `A265760(n+1)+A130706(n)` -/
def P10987146769205968990.Spec : Prop :=
  ∀ n, P10987146769205968990.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P2783156879180569374

`A161165(n+1)-A007510(n+1)`
-/

namespace A001097.P2783156879180569374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161165 (n + 1) - A007510 (n + 1)

end

end A001097.P2783156879180569374

namespace A001097

/-- `A161165(n+1)-A007510(n+1)` -/
def P2783156879180569374.Spec : Prop :=
  ∀ n, P2783156879180569374.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P7419665510621921275

`A280968(n+1)-A171688(n+1)`
-/

namespace A001097.P7419665510621921275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280968 (n + 1) - A171688 (n + 1)

end

end A001097.P7419665510621921275

namespace A001097

/-- `A280968(n+1)-A171688(n+1)` -/
def P7419665510621921275.Spec : Prop :=
  ∀ n, P7419665510621921275.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P18113410746960798531

`∪[A083841(n+1), A171688(n+1)]`
-/

namespace A001097.P18113410746960798531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001097.P18113410746960798531

namespace A001097

/-- `∪[A083841(n+1), A171688(n+1)]` -/
def P18113410746960798531.Spec : Prop :=
  ∀ n, (P18113410746960798531.a n : ℤ) = A001097 (n + 1)

end A001097

/-! ## A001097.P13187098143555915233

`A171821(n+2)`
-/

namespace A001097.P13187098143555915233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2)

end

end A001097.P13187098143555915233

namespace A001097

/-- `A171821(n+2)` -/
def P13187098143555915233.Spec : Prop :=
  ∀ n, P13187098143555915233.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P10381950728164997985

`A077800(A065475(n+1))`
-/

namespace A001097.P10381950728164997985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A065475 (n + 1)).toNat

end

end A001097.P10381950728164997985

namespace A001097

/-- `A077800(A065475(n+1))` -/
def P10381950728164997985.Spec : Prop :=
  ∀ n, P10381950728164997985.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P449362620295492711

`A077800(A326178(n+1))`
-/

namespace A001097.P449362620295492711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A326178 (n + 1)).toNat

end

end A001097.P449362620295492711

namespace A001097

/-- `A077800(A326178(n+1))` -/
def P449362620295492711.Spec : Prop :=
  ∀ n, P449362620295492711.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P3651185273759609231

`A077800(A181440(n+2))`
-/

namespace A001097.P3651185273759609231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A181440 (n + 2)).toNat

end

end A001097.P3651185273759609231

namespace A001097

/-- `A077800(A181440(n+2))` -/
def P3651185273759609231.Spec : Prop :=
  ∀ n, P3651185273759609231.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P17658408719262850470

`A077800(A184985(n+2))`
-/

namespace A001097.P17658408719262850470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A184985 (n + 2)).toNat

end

end A001097.P17658408719262850470

namespace A001097

/-- `A077800(A184985(n+2))` -/
def P17658408719262850470.Spec : Prop :=
  ∀ n, P17658408719262850470.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P11909421649300136714

`record[A077800(A293217(n+1))]`
-/

namespace A001097.P11909421649300136714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A293217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001097.P11909421649300136714

namespace A001097

/-- `record[A077800(A293217(n+1))]` -/
def P11909421649300136714.Spec : Prop :=
  ∀ n, P11909421649300136714.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P16853636896778345431

`record[A077800(A300827(n+1))]`
-/

namespace A001097.P16853636896778345431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A300827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001097.P16853636896778345431

namespace A001097

/-- `record[A077800(A300827(n+1))]` -/
def P16853636896778345431.Spec : Prop :=
  ∀ n, P16853636896778345431.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P11386027036069215982

`A077800(n+2-A109578(2*n+1))`
-/

namespace A001097.P11386027036069215982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 ((n + 2 : ℤ) - A109578 (2 * n + 1)).toNat

end

end A001097.P11386027036069215982

namespace A001097

/-- `A077800(n+2-A109578(2*n+1))` -/
def P11386027036069215982.Spec : Prop :=
  ∀ n, P11386027036069215982.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P6489489557899073522

`A077800(A105560(A105560(n+1))+n)`
-/

namespace A001097.P6489489557899073522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A105560 (A105560 (n + 1)).toNat + (n : ℤ)).toNat

end

end A001097.P6489489557899073522

namespace A001097

/-- `A077800(A105560(A105560(n+1))+n)` -/
def P6489489557899073522.Spec : Prop :=
  ∀ n, P6489489557899073522.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P3422374028207137966

`A099609(A009005(n+1))`
-/

namespace A001097.P3422374028207137966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (A009005 (n + 1)).toNat

end

end A001097.P3422374028207137966

namespace A001097

/-- `A099609(A009005(n+1))` -/
def P3422374028207137966.Spec : Prop :=
  ∀ n, P3422374028207137966.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P10791103496372718464

`A099609(A057544(n+2))`
-/

namespace A001097.P10791103496372718464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (A057544 (n + 2)).toNat

end

end A001097.P10791103496372718464

namespace A001097

/-- `A099609(A057544(n+2))` -/
def P10791103496372718464.Spec : Prop :=
  ∀ n, P10791103496372718464.a n = A001097 (n + 1)

end A001097

/-! ## A001097.P7120692239827723876

`A000040(A334142(n+1))`
-/

namespace A001097.P7120692239827723876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A334142 (n + 1)).toNat

end

end A001097.P7120692239827723876

namespace A001097

/-- `A000040(A334142(n+1))` -/
def P7120692239827723876.Spec : Prop :=
  ∀ n, P7120692239827723876.a n = A001097 (n + 1)

end A001097

/-!
# A001099: a(n) = n^n - a(n-1), with a(1) = 1.

The programs for A001099, the canonical program `A001099.P4553267375155591398` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001099 has offset 1).

The definition of A001099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)-a(n-1)` (program `A001099.P4553267375155591398`, by `A001099.P4553267375155591398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001099.P4553267375155591398

`(n+1)^(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001099

/-- `(n+1)^(n+1)-a(n-1)` -/
def P4553267375155591398.Spec : Prop :=
  ∀ n, P4553267375155591398.a n = A001099 (n + 1)

theorem P4553267375155591398.correct : P4553267375155591398.Spec := by
  intro n
  simp only [A001099, Nat.add_sub_cancel]

end A001099

/-! ## A001099.P14207428624667205462

`abs(∑[(-(n+1))^(n+1)])`
-/

namespace A001099.P14207428624667205462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A001099.P14207428624667205462

namespace A001099

/-- `abs(∑[(-(n+1))^(n+1)])` -/
def P14207428624667205462.Spec : Prop :=
  ∀ n, P14207428624667205462.a n = A001099 (n + 1)

end A001099

/-! ## A001099.P4762151895941297922

`Δ[a(n-2)+n^n]` with `a(0)=0, a(1)=1`
-/

namespace A001099.P4762151895941297922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A001099.P4762151895941297922

namespace A001099

/-- `Δ[a(n-2)+n^n]` -/
def P4762151895941297922.Spec : Prop :=
  ∀ n, P4762151895941297922.a n = A001099 (n + 1)

end A001099

/-! ## A001099.P17755865688043464848

`∑[Δ[n^n]-a(n-1)]` with `a(0)=1`
-/

namespace A001099.P17755865688043464848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001099.P17755865688043464848

namespace A001099

/-- `∑[Δ[n^n]-a(n-1)]` -/
def P17755865688043464848.Spec : Prop :=
  ∀ n, P17755865688043464848.a n = A001099 (n + 1)

end A001099

/-! ## A001099.P16382533138042706860

`record[(n-1)^(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A001099.P16382533138042706860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001099.P16382533138042706860

namespace A001099

/-- `record[(n-1)^(n-1)-a(n-1)]` -/
def P16382533138042706860.Spec : Prop :=
  ∀ n, P16382533138042706860.a n = (A001099 (n + 1) : ℚ)

end A001099

/-! ## A001099.P725794430714290735

`1-(a(n-1)-A048861(n+1))` with `a(0)=1`
-/

namespace A001099.P725794430714290735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - A048861 (n + 1))

end

end A001099.P725794430714290735

namespace A001099

/-- `1-(a(n-1)-A048861(n+1))` -/
def P725794430714290735.Spec : Prop :=
  ∀ n, P725794430714290735.a n = A001099 (n + 1)

end A001099

/-! ## A001099.P1093645549897498776

`gcd(A000038(n)/2, ∑[A177885(n+2)])`
-/

namespace A001099.P1093645549897498776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177885 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001099.P1093645549897498776

namespace A001099

/-- `gcd(A000038(n)/2, ∑[A177885(n+2)])` -/
def P1093645549897498776.Spec : Prop :=
  ∀ n, (P1093645549897498776.a n : ℤ) = A001099 (n + 1)

end A001099

