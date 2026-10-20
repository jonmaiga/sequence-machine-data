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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A030500: Position of n-th 4 in A030496.

The programs for A030500, there is no canonical definition to state claims against.
-/

/-! ## A030500.P3394656032402607900

`eq[4, A030496(n+1)]+1`
-/

namespace A030500.P3394656032402607900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030500.P3394656032402607900

/-! ## A030500.P6208175513321248690

`eq[2, A030496(A028310(n))-2]`
-/

namespace A030500.P6208175513321248690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030500.P6208175513321248690

/-! ## A030500.P3703308042031602456

`eq[4, A030496(A060000(n+1))]`
-/

namespace A030500.P3703308042031602456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030500.P3703308042031602456

/-! ## A030500.P317769915663607091

`eq[4, A030496(A000007(n)+n)]`
-/

namespace A030500.P317769915663607091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030500.P317769915663607091

/-! ## A030500.P8291496371841853340

`eq[4, A030496(A065033(2*n))]`
-/

namespace A030500.P8291496371841853340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030500.P8291496371841853340

/-! ## A030500.P8118364721901409991

`eq[4, A030496(A123108(2*n))]`
-/

namespace A030500.P8118364721901409991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030500.P8118364721901409991

/-! ## A030500.P1998452552051048634

`eq[4, A030496(A233583(n+1))]`
-/

namespace A030500.P1998452552051048634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030500.P1998452552051048634

/-!
# A030501: Position of n-th 5 in A030496.

The programs for A030501, there is no canonical definition to state claims against.
-/

/-! ## A030501.P7698843308404490184

`eq[5, A030496(n+1)]+1`
-/

namespace A030501.P7698843308404490184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030501.P7698843308404490184

/-! ## A030501.P1199838728040368891

`eq[5, A030496(A028310(n))]`
-/

namespace A030501.P1199838728040368891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030501.P1199838728040368891

/-! ## A030501.P8835005287141230102

`eq[5, A030496(A000007(n)+n)]`
-/

namespace A030501.P8835005287141230102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030501.P8835005287141230102

/-! ## A030501.P9626298831570659649

`eq[5, A030496(A065033(2*n))]`
-/

namespace A030501.P9626298831570659649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030501.P9626298831570659649

/-! ## A030501.P7037836300463090207

`eq[5, A030496(A123108(2*n))]`
-/

namespace A030501.P7037836300463090207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030501.P7037836300463090207

/-! ## A030501.P13344378294270028891

`eq[5, A030496(A233583(n+1))]`
-/

namespace A030501.P13344378294270028891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030501.P13344378294270028891

/-!
# A030502: n-th partial sum of A030496.

The programs for A030502, there is no canonical definition to state claims against.
-/

/-! ## A030502.P12503790941987002407

`∑[A030496(n+1)]`
-/

namespace A030502.P12503790941987002407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030502.P12503790941987002407

/-! ## A030502.P6101366532653113444

`A030496(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A030502.P6101366532653113444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030496 (n + 1) + a (A023443 n).toNat

end

end A030502.P6101366532653113444

/-! ## A030502.P8324868975358919572

`A030496(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A030502.P8324868975358919572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030496 (n + 1) + a (A028310 n - 1).toNat

end

end A030502.P8324868975358919572

/-! ## A030502.P4927481899319476274

`a(n-1)+A030496(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A030502.P4927481899319476274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A030496 (n + 1) + A000007 n)

end

end A030502.P4927481899319476274

/-! ## A030502.P6667869209726379100

`∑[dr(A030496(A008619(2*n)))]`
-/

namespace A030502.P6667869209726379100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030496 (A008619 (2 * n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030502.P6667869209726379100

/-! ## A030502.P1131906055318395894

`A254667(a(n-1))+A030496(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A030502.P1131906055318395894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A254667 (a (n - 1)).toNat + A030496 (n + 1)

end

end A030502.P1131906055318395894

/-!
# A030503: Graham-Sloane-type lower bound on the size of a ternary (n,3,3) constant-weight code.

The programs for A030503, the canonical program `A030503.P6477364905189183250` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030503 has offset 3).

The definition of A030503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030503.P6477364905189183250

`1+floor(8*C(n+3, 3)/(2*(n+3)+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030503

/-- `1+floor(8*C(n+3, 3)/(2*(n+3)+1))` -/
def P6477364905189183250.Spec : Prop :=
  ∀ n, P6477364905189183250.a n = A030503 (n + 3)

theorem P6477364905189183250.correct : P6477364905189183250.Spec := by
  intro n
  simp only [A030503, Nat.add_sub_cancel]

end A030503

/-! ## A030503.P17624712061173354801

`∑[∑[(n%3)!]]+1`
-/

namespace A030503.P17624712061173354801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A030503.P17624712061173354801

namespace A030503

/-- `∑[∑[(n%3)!]]+1` -/
def P17624712061173354801.Spec : Prop :=
  ∀ n, (P17624712061173354801.a n : ℤ) = A030503 (n + 3)

end A030503

/-! ## A030503.P8327896521116079941

`∑[a(n-3)+4]` with `a(0)=2, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A030503.P8327896521116079941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4, 5] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030503.P8327896521116079941

namespace A030503

/-- `∑[a(n-3)+4]` -/
def P8327896521116079941.Spec : Prop :=
  ∀ n, (P8327896521116079941.a n : ℤ) = A030503 (n + 3)

end A030503

/-! ## A030503.P9249401631064951658

`∑[∑[a(n-3)!]]` with `a(0)=2, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A030503.P9249401631064951658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2, 1] fun n f2 =>
  Nat.factorial (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030503.P9249401631064951658

namespace A030503

/-- `∑[∑[a(n-3)!]]` -/
def P9249401631064951658.Spec : Prop :=
  ∀ n, (P9249401631064951658.a n : ℤ) = A030503 (n + 3)

end A030503

/-! ## A030503.P8182556472202957832

`∑[floor(4*(n+1)/3)]+1`
-/

namespace A030503.P8182556472202957832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n + 1 : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A030503.P8182556472202957832

namespace A030503

/-- `∑[floor(4*(n+1)/3)]+1` -/
def P8182556472202957832.Spec : Prop :=
  ∀ n, P8182556472202957832.a n = A030503 (n + 3)

end A030503

/-! ## A030503.P10627833930979477256

`∑[∑[floor(a(n-3))]]` with `a(0)=2, a(1)=0, a(2)=2, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A030503.P10627833930979477256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2, 1, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030503.P10627833930979477256

namespace A030503

/-- `∑[∑[floor(a(n-3))]]` -/
def P10627833930979477256.Spec : Prop :=
  ∀ n, (P10627833930979477256.a n : ℤ) = A030503 (n + 3)

end A030503

/-! ## A030503.P13402913750278988514

`ceil((C(2*n+3, 2)+2)/3)`
-/

namespace A030503.P13402913750278988514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n + 3) 2 + 2 : ℚ) / 3⌉

end

end A030503.P13402913750278988514

namespace A030503

/-- `ceil((C(2*n+3, 2)+2)/3)` -/
def P13402913750278988514.Spec : Prop :=
  ∀ n, P13402913750278988514.a n = A030503 (n + 3)

end A030503

/-! ## A030503.P2942689628206723171

`∑[∑[gcd(2, a(n-3))]]` with `a(0)=2, a(1)=0, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A030503.P2942689628206723171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2, 1, 1] fun n f2 =>
  Nat.gcd 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030503.P2942689628206723171

namespace A030503

/-- `∑[∑[gcd(2, a(n-3))]]` -/
def P2942689628206723171.Spec : Prop :=
  ∀ n, (P2942689628206723171.a n : ℤ) = A030503 (n + 3)

end A030503

/-! ## A030503.P16648346493801942406

`∑[∑[a(n-3)%3]]` with `a(0)=2, a(1)=0, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A030503.P16648346493801942406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2, 1, 1] fun n f2 =>
  f2 (n - 3) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030503.P16648346493801942406

namespace A030503

/-- `∑[∑[a(n-3)%3]]` -/
def P16648346493801942406.Spec : Prop :=
  ∀ n, (P16648346493801942406.a n : ℤ) = A030503 (n + 3)

end A030503

/-! ## A030503.P4336366683367138987

`floor(a(n-1)+4*(n+1)/3)` with `a(0)=2`
-/

namespace A030503.P4336366683367138987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) + 4 * ((n + 1 : ℚ) / 3)⌋

end

end A030503.P4336366683367138987

namespace A030503

/-- `floor(a(n-1)+4*(n+1)/3)` -/
def P4336366683367138987.Spec : Prop :=
  ∀ n, P4336366683367138987.a n = A030503 (n + 3)

end A030503

/-! ## A030503.P6438761322980246968

`floor(a(n-1)+(n+4)/3+n)` with `a(0)=2`
-/

namespace A030503.P6438761322980246968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n + 4 : ℚ) / 3 + (n : ℚ)⌋

end

end A030503.P6438761322980246968

namespace A030503

/-- `floor(a(n-1)+(n+4)/3+n)` -/
def P6438761322980246968.Spec : Prop :=
  ∀ n, P6438761322980246968.a n = A030503 (n + 3)

end A030503

/-! ## A030503.P15039995037657321536

`∑[∑[a(n-3)^a(n-1)]]` with `a(0)=2, a(1)=0, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A030503.P15039995037657321536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2, 1, 1] fun n f2 =>
  f2 (n - 3) ^ f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030503.P15039995037657321536

namespace A030503

/-- `∑[∑[a(n-3)^a(n-1)]]` -/
def P15039995037657321536.Spec : Prop :=
  ∀ n, (P15039995037657321536.a n : ℤ) = A030503 (n + 3)

end A030503

/-! ## A030503.P14293869484144712858

`floor(2*n-(a(n-1)/n-2-a(n-1)))` with `a(0)=2`
-/

namespace A030503.P14293869484144712858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(2 * n : ℚ) - ((a (n - 1) : ℚ) / (n : ℚ) - 2 - (a (n - 1) : ℚ))⌋

end

end A030503.P14293869484144712858

namespace A030503

/-- `floor(2*n-(a(n-1)/n-2-a(n-1)))` -/
def P14293869484144712858.Spec : Prop :=
  ∀ n, P14293869484144712858.a n = A030503 (n + 3)

end A030503

/-! ## A030503.P15814589745594594015

`floor(n-(a(n-1)/n-2-a(n-1)-n))` with `a(0)=2`
-/

namespace A030503.P15814589745594594015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(n : ℚ) - ((a (n - 1) : ℚ) / (n : ℚ) - 2 - (a (n - 1) : ℚ) - (n : ℚ))⌋

end

end A030503.P15814589745594594015

namespace A030503

/-- `floor(n-(a(n-1)/n-2-a(n-1)-n))` -/
def P15814589745594594015.Spec : Prop :=
  ∀ n, P15814589745594594015.a n = A030503 (n + 3)

end A030503

/-! ## A030503.P9980300727962328203

`ceil((∑[A004767(n)]+1)/3)`
-/

namespace A030503.P9980300727962328203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 3⌉

end

end A030503.P9980300727962328203

namespace A030503

/-- `ceil((∑[A004767(n)]+1)/3)` -/
def P9980300727962328203.Spec : Prop :=
  ∀ n, P9980300727962328203.a n = A030503 (n + 3)

end A030503

/-! ## A030503.P16038397000894470796

`∑[floor(2*(A004277(n)+2)/3)]`
-/

namespace A030503.P16038397000894470796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (A004277 n + 2) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030503.P16038397000894470796

namespace A030503

/-- `∑[floor(2*(A004277(n)+2)/3)]` -/
def P16038397000894470796.Spec : Prop :=
  ∀ n, P16038397000894470796.a n = A030503 (n + 3)

end A030503

/-! ## A030503.P6106569981513843343

`ceil(A035597(n+1)/(2*n+1))`
-/

namespace A030503.P6106569981513843343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035597 (n + 1) : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A030503.P6106569981513843343

namespace A030503

/-- `ceil(A035597(n+1)/(2*n+1))` -/
def P6106569981513843343.Spec : Prop :=
  ∀ n, P6106569981513843343.a n = A030503 (n + 3)

end A030503

/-! ## A030503.P4527915760328436678

`ceil((A016777(n+1)+∑[4*n])/3)`
-/

namespace A030503.P4527915760328436678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016777 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 3⌉

end

end A030503.P4527915760328436678

namespace A030503

/-- `ceil((A016777(n+1)+∑[4*n])/3)` -/
def P4527915760328436678.Spec : Prop :=
  ∀ n, P4527915760328436678.a n = A030503 (n + 3)

end A030503

/-! ## A030503.P834914284665591959

`∑[A042965(A028310(n)+1)+1]`
-/

namespace A030503.P834914284665591959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A028310 n + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030503.P834914284665591959

namespace A030503

/-- `∑[A042965(A028310(n)+1)+1]` -/
def P834914284665591959.Spec : Prop :=
  ∀ n, P834914284665591959.a n = A030503 (n + 3)

end A030503

/-!
# A030504: Graham-Sloane-type lower bound on the size of a ternary (n,3,4) constant-weight code.

The programs for A030504, the canonical program `A030504.P7203939647102380521` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030504 has offset 4).

The definition of A030504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030504.P7203939647102380521

`ceil(A130810(n+4)/A130773(n+4))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030504

/-- `ceil(A130810(n+4)/A130773(n+4))` -/
def P7203939647102380521.Spec : Prop :=
  ∀ n, P7203939647102380521.a n = A030504 (n + 4)

theorem P7203939647102380521.correct : P7203939647102380521.Spec := by
  intro n
  simp only [A030504, Nat.add_sub_cancel]

end A030504

/-! ## A030504.P18324266200459905511

`A008651(A000124(2*(n+2))*A008587(n+1))`
-/

namespace A030504.P18324266200459905511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A000124 (2 * (n + 2)) * A008587 (n + 1)).toNat

end

end A030504.P18324266200459905511

namespace A030504

/-- `A008651(A000124(2*(n+2))*A008587(n+1))` -/
def P18324266200459905511.Spec : Prop :=
  ∀ n, P18324266200459905511.a n = A030504 (n + 4)

end A030504

/-! ## A030504.P2897740769427468364

`A008679(A001633(n+2)*A014206(2*(n+2)))`
-/

namespace A030504.P2897740769427468364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A001633 (n + 2) * A014206 (2 * (n + 2))).toNat

end

end A030504.P2897740769427468364

namespace A030504

/-- `A008679(A001633(n+2)*A014206(2*(n+2)))` -/
def P2897740769427468364.Spec : Prop :=
  ∀ n, P2897740769427468364.a n = A030504 (n + 4)

end A030504

/-!
# A030505: Graham-Sloane-type lower bound on the size of a ternary (n,3,5) constant-weight code.

The programs for A030505, there is no canonical definition to state claims against.
-/

/-! ## A030505.P2126805675981393462

`A390161(eq[4, A002262(n)]+1)`
-/

namespace A030505.P2126805675981393462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A030505.P2126805675981393462

/-! ## A030505.P14322417479280418925

`∑[∑[A175968(A095794(n+1))]]`
-/

namespace A030505.P14322417479280418925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175968 (A095794 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030505.P14322417479280418925

/-!
# A030506: Graham-Sloane-type lower bound on the size of a ternary (n,3,6) constant-weight code.

The programs for A030506, there is no canonical definition to state claims against.
-/

/-! ## A030506.P9641702887840381825

`A390161(A056115(n)+21)`
-/

namespace A030506.P9641702887840381825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390161 (A056115 n + 21).toNat

end

end A030506.P9641702887840381825

/-! ## A030506.P12619032162051485259

`A390161(A167499(n+4)+1)`
-/

namespace A030506.P12619032162051485259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390161 (A167499 (n + 4) + 1).toNat

end

end A030506.P12619032162051485259

/-!
# A030511: Graham-Sloane-type lower bound on the size of a ternary (n,3,3) constant-weight code.

The programs for A030511, the canonical program `A030511.P7069337766498911810` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030511 has offset 3).

The definition of A030511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030511.P7069337766498911810

`floor(2/3*(n+2)²)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030511

/-- `floor(2/3*(n+2)²)` -/
def P7069337766498911810.Spec : Prop :=
  ∀ n, P7069337766498911810.a n = A030511 (n + 3)

theorem P7069337766498911810.correct : P7069337766498911810.Spec := by
  intro n
  simp only [A030511, Nat.add_sub_cancel]

end A030511

/-! ## A030511.P4086225199299313676

`a(n-1)+2*floor((n+2)*2/3)` with `a(0)=2`
-/

namespace A030511.P4086225199299313676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * ⌊((n + 2) * 2 : ℚ) / 3⌋

end

end A030511.P4086225199299313676

namespace A030511

/-- `a(n-1)+2*floor((n+2)*2/3)` -/
def P4086225199299313676.Spec : Prop :=
  ∀ n, P4086225199299313676.a n = A030511 (n + 3)

end A030511

/-! ## A030511.P18218376071733537515

`2*A000212(n+2)`
-/

namespace A030511.P18218376071733537515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000212 (n + 2)

end

end A030511.P18218376071733537515

namespace A030511

/-- `2*A000212(n+2)` -/
def P18218376071733537515.Spec : Prop :=
  ∀ n, P18218376071733537515.a n = A030511 (n + 3)

end A030511

/-! ## A030511.P8757552661484711178

`∑[∑[∑[n+2]%3]]`
-/

namespace A030511.P8757552661484711178
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P8757552661484711178

namespace A030511

/-- `∑[∑[∑[n+2]%3]]` -/
def P8757552661484711178.Spec : Prop :=
  ∀ n, (P8757552661484711178.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P13508365765085602451

`∑[∑[3-gcd(3, n+1)]]`
-/

namespace A030511.P13508365765085602451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 3 (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P13508365765085602451

namespace A030511

/-- `∑[∑[3-gcd(3, n+1)]]` -/
def P13508365765085602451.Spec : Prop :=
  ∀ n, P13508365765085602451.a n = A030511 (n + 3)

end A030511

/-! ## A030511.P14802593571984588458

`∑[or(1, comp[4*n])+1]`
-/

namespace A030511.P14802593571984588458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P14802593571984588458

namespace A030511

/-- `∑[or(1, comp[4*n])+1]` -/
def P14802593571984588458.Spec : Prop :=
  ∀ n, (P14802593571984588458.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P7009047135289198596

`∑[a(n-3)+4]` with `a(0)=2, a(1)=4, a(2)=4`
-/

namespace A030511.P7009047135289198596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 4] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P7009047135289198596

namespace A030511

/-- `∑[a(n-3)+4]` -/
def P7009047135289198596.Spec : Prop :=
  ∀ n, (P7009047135289198596.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P17947606490720155593

`∑[∑[abs(a(n-3))]]` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A030511.P17947606490720155593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P17947606490720155593

namespace A030511

/-- `∑[∑[abs(a(n-3))]]` -/
def P17947606490720155593.Spec : Prop :=
  ∀ n, (P17947606490720155593.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P3766341159156848836

`∑[∑[dr(a(n-3))]]` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A030511.P3766341159156848836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P3766341159156848836

namespace A030511

/-- `∑[∑[dr(a(n-3))]]` -/
def P3766341159156848836.Spec : Prop :=
  ∀ n, (P3766341159156848836.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P2284741193945192291

`∑[∑[floor(a(n-3))]]` with `a(0)=2, a(1)=2, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A030511.P2284741193945192291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P2284741193945192291

namespace A030511

/-- `∑[∑[floor(a(n-3))]]` -/
def P2284741193945192291.Spec : Prop :=
  ∀ n, (P2284741193945192291.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P5314513192240218640

`∑[∑[ceil(a(n-3))]]` with `a(0)=2, a(1)=2, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A030511.P5314513192240218640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P5314513192240218640

namespace A030511

/-- `∑[∑[ceil(a(n-3))]]` -/
def P5314513192240218640.Spec : Prop :=
  ∀ n, (P5314513192240218640.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P3935383129737606741

`∑[∑[round(a(n-3))]]` with `a(0)=2, a(1)=2, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A030511.P3935383129737606741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P3935383129737606741

namespace A030511

/-- `∑[∑[round(a(n-3))]]` -/
def P3935383129737606741.Spec : Prop :=
  ∀ n, (P3935383129737606741.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P10372642749964975934

`record[floor(2/3*(2-n)²)]`
-/

namespace A030511.P10372642749964975934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * ((2 - (n : ℤ)) ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030511.P10372642749964975934

namespace A030511

/-- `record[floor(2/3*(2-n)²)]` -/
def P10372642749964975934.Spec : Prop :=
  ∀ n, P10372642749964975934.a n = A030511 (n + 3)

end A030511

/-! ## A030511.P7238666700235891370

`2*record[round((2-n)²/3)]`
-/

namespace A030511.P7238666700235891370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030511.P7238666700235891370

namespace A030511

/-- `2*record[round((2-n)²/3)]` -/
def P7238666700235891370.Spec : Prop :=
  ∀ n, P7238666700235891370.a n = A030511 (n + 3)

end A030511

/-! ## A030511.P11537484534965136745

`∑[∑[and(2, dr(3*(n+1)))]]`
-/

namespace A030511.P11537484534965136745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (SequenceMachineLib.digitalRoot (3 * (n + 1) : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P11537484534965136745

namespace A030511

/-- `∑[∑[and(2, dr(3*(n+1)))]]` -/
def P11537484534965136745.Spec : Prop :=
  ∀ n, (P11537484534965136745.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P15121566628132123447

`∑[∑[∑[ogf((2+2x)/(1+x+x^2))]]]`
-/

namespace A030511.P15121566628132123447
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P15121566628132123447

namespace A030511

/-- `∑[∑[∑[ogf((2+2x)/(1+x+x^2))]]]` -/
def P15121566628132123447.Spec : Prop :=
  ∀ n, P15121566628132123447.a n = A030511 (n + 3)

end A030511

/-! ## A030511.P13640708693470016796

`ogf((2+2x)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A030511.P13640708693470016796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -2, 1, -1, 2, -1] n

end

end A030511.P13640708693470016796

namespace A030511

/-- `ogf((2+2x)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P13640708693470016796.Spec : Prop :=
  ∀ n, P13640708693470016796.a n = A030511 (n + 3)

end A030511

/-! ## A030511.P9280579759714504033

`∑[∑[lcm(2, a(n-3))]]` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A030511.P9280579759714504033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  Nat.lcm 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P9280579759714504033

namespace A030511

/-- `∑[∑[lcm(2, a(n-3))]]` -/
def P9280579759714504033.Spec : Prop :=
  ∀ n, (P9280579759714504033.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P16882827847347526944

`∑[∑[and(2, a(n-3))]]` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A030511.P16882827847347526944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0] fun n f2 =>
  Nat.land 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P16882827847347526944

namespace A030511

/-- `∑[∑[and(2, a(n-3))]]` -/
def P16882827847347526944.Spec : Prop :=
  ∀ n, (P16882827847347526944.a n : ℤ) = A030511 (n + 3)

end A030511

/-! ## A030511.P8153290277142275912

`∑[2*∑[a(n-3)²]]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A030511.P8153290277142275912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030511.P8153290277142275912

namespace A030511

/-- `∑[2*∑[a(n-3)²]]` -/
def P8153290277142275912.Spec : Prop :=
  ∀ n, (P8153290277142275912.a n : ℤ) = A030511 (n + 3)

end A030511

/-!
# A030512: Concatenation of first n 2-digit positive integers including leading zeros.

The programs for A030512, there is no canonical definition to state claims against.
-/

/-! ## A030512.P6864633699926568877

`∑[∑[(10^n)²]]`
-/

namespace A030512.P6864633699926568877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 ^ n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030512.P6864633699926568877

/-! ## A030512.P1233980119085546043

`∑[10^(2*n)]+a(n-1)` with `a(0)=1`
-/

namespace A030512.P1233980119085546043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A030512.P1233980119085546043

/-! ## A030512.P16913011427344692422

`10*10*a(n-1)+1+n` with `a(0)=1`
-/

namespace A030512.P16913011427344692422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * (10 * a (n - 1)) + 1 + n

end

end A030512.P16913011427344692422

/-! ## A030512.P4715072941321680949

`abs(∑[or(1, ∑[10^(2*n)])-(2*n)%2])`
-/

namespace A030512.P4715072941321680949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - ((2 * n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A030512.P4715072941321680949

/-! ## A030512.P14316358285119864994

`∑[A156641(n)]/13`
-/

namespace A030512.P14316358285119864994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156641 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 13

end

end A030512.P14316358285119864994

/-! ## A030512.P13428534760657682427

`∑[∑[A013715(n)]]/10`
-/

namespace A030512.P13428534760657682427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013715 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 10

end

end A030512.P13428534760657682427

/-! ## A030512.P10990257918026891055

`∑[A163662(n+1)]/10`
-/

namespace A030512.P10990257918026891055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163662 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 10

end

end A030512.P10990257918026891055

/-! ## A030512.P6289232635175328506

`∑[A282142(2*n)]+n`
-/

namespace A030512.P6289232635175328506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282142 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A030512.P6289232635175328506

/-! ## A030512.P1536319773199357484

`∑[A002275(2*(n+1))]/11`
-/

namespace A030512.P1536319773199357484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 11

end

end A030512.P1536319773199357484

/-! ## A030512.P1512288344778606965

`record[ratio[A104720(A093178(n))]]`
-/

namespace A030512.P1512288344778606965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104720 (A093178 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030512.P1512288344778606965

/-!
# A030513: Numbers with 4 divisors.

The programs for A030513, the canonical program `A030513.P1414838510973468407` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030513 has offset 1).

The definition of A030513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030513.P120313394069913680

`sqrt(A272190(n+1))`
-/

namespace A030513.P120313394069913680
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A272190 (n + 1) : ℝ)

end

end A030513.P120313394069913680

namespace A030513

/-- `sqrt(A272190(n+1))` -/
def P120313394069913680.Spec : Prop :=
  ∀ n, P120313394069913680.a n = (A030513 (n + 1) : ℝ)

end A030513

/-! ## A030513.P8588046594166789122

`eq[2, A307409(n+1)]+1`
-/

namespace A030513.P8588046594166789122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030513.P8588046594166789122

namespace A030513

/-- `eq[2, A307409(n+1)]+1` -/
def P8588046594166789122.Spec : Prop :=
  ∀ n, (P8588046594166789122.a n : ℤ) = A030513 (n + 1)

end A030513

/-! ## A030513.P2660745796995878698

`eq[3, A304793(n+1)]+1`
-/

namespace A030513.P2660745796995878698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030513.P2660745796995878698

namespace A030513

/-- `eq[3, A304793(n+1)]+1` -/
def P2660745796995878698.Spec : Prop :=
  ∀ n, (P2660745796995878698.a n : ℤ) = A030513 (n + 1)

end A030513

/-! ## A030513.P6880341356839105845

`eq[3, A305611(n+1)]+1`
-/

namespace A030513.P6880341356839105845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030513.P6880341356839105845

namespace A030513

/-- `eq[3, A305611(n+1)]+1` -/
def P6880341356839105845.Spec : Prop :=
  ∀ n, (P6880341356839105845.a n : ℤ) = A030513 (n + 1)

end A030513

/-! ## A030513.P7492364257172035848

`eq[4, A000005(n+1)]+1`
-/

namespace A030513.P7492364257172035848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030513.P7492364257172035848

namespace A030513

/-- `eq[4, A000005(n+1)]+1` -/
def P7492364257172035848.Spec : Prop :=
  ∀ n, (P7492364257172035848.a n : ℤ) = A030513 (n + 1)

end A030513

/-! ## A030513.P14853738737567796605

`eq[4, A167447(n+1)]+1`
-/

namespace A030513.P14853738737567796605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030513.P14853738737567796605

namespace A030513

/-- `eq[4, A167447(n+1)]+1` -/
def P14853738737567796605.Spec : Prop :=
  ∀ n, (P14853738737567796605.a n : ℤ) = A030513 (n + 1)

end A030513

/-! ## A030513.P2762679958698997282

`eq[2, A303386(n+2)]+2`
-/

namespace A030513.P2762679958698997282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303386 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A030513.P2762679958698997282

namespace A030513

/-- `eq[2, A303386(n+2)]+2` -/
def P2762679958698997282.Spec : Prop :=
  ∀ n, (P2762679958698997282.a n : ℤ) = A030513 (n + 1)

end A030513

/-! ## A030513.P2029591287393456697

`eq[3, A004396(A077462(n))]`
-/

namespace A030513.P2029591287393456697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030513.P2029591287393456697

namespace A030513

/-- `eq[3, A004396(A077462(n))]` -/
def P2029591287393456697.Spec : Prop :=
  ∀ n, (P2029591287393456697.a n : ℤ) = A030513 (n + 1)

end A030513

/-! ## A030513.P1414838510973468407

`A007422(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030513

/-- `A007422(n+2)` -/
def P1414838510973468407.Spec : Prop :=
  ∀ n, P1414838510973468407.a n = A030513 (n + 1)

theorem P1414838510973468407.correct : P1414838510973468407.Spec := by
  intro n
  simp only [A030513, Nat.add_sub_cancel]

end A030513

/-! ## A030513.P15223556833141085303

`filter[A332269(n+1), A049240(#)]`
-/

namespace A030513.P15223556833141085303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A030513.P15223556833141085303

namespace A030513

/-- `filter[A332269(n+1), A049240(#)]` -/
def P15223556833141085303.Spec : Prop :=
  ∀ n, P15223556833141085303.a n = A030513 (n + 1)

end A030513

/-! ## A030513.P8738545031920646558

`filter[A332269(n+1), A123927(#)]`
-/

namespace A030513.P8738545031920646558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030513.P8738545031920646558

namespace A030513

/-- `filter[A332269(n+1), A123927(#)]` -/
def P8738545031920646558.Spec : Prop :=
  ∀ n, P8738545031920646558.a n = A030513 (n + 1)

end A030513

/-! ## A030513.P15500351694124297447

`filter[A332269(n+1), A181183(#)]`
-/

namespace A030513.P15500351694124297447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A030513.P15500351694124297447

namespace A030513

/-- `filter[A332269(n+1), A181183(#)]` -/
def P15500351694124297447.Spec : Prop :=
  ∀ n, P15500351694124297447.a n = A030513 (n + 1)

end A030513

/-! ## A030513.P7397753898089291746

`filter[A332269(n+1), A262684(#)]`
-/

namespace A030513.P7397753898089291746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A030513.P7397753898089291746

namespace A030513

/-- `filter[A332269(n+1), A262684(#)]` -/
def P7397753898089291746.Spec : Prop :=
  ∀ n, P7397753898089291746.a n = A030513 (n + 1)

end A030513

/-! ## A030513.P4906291271109023384

`filter[A332269(n+1), A295316(#)]`
-/

namespace A030513.P4906291271109023384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A030513.P4906291271109023384

namespace A030513

/-- `filter[A332269(n+1), A295316(#)]` -/
def P4906291271109023384.Spec : Prop :=
  ∀ n, P4906291271109023384.a n = A030513 (n + 1)

end A030513

/-! ## A030513.P17805424881299434291

`filter[A332269(n+1), A340369(#)]`
-/

namespace A030513.P17805424881299434291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A030513.P17805424881299434291

namespace A030513

/-- `filter[A332269(n+1), A340369(#)]` -/
def P17805424881299434291.Spec : Prop :=
  ∀ n, P17805424881299434291.a n = A030513 (n + 1)

end A030513

/-! ## A030513.P860922381384959278

`filter[A332269(n+1), A348737(#)]`
-/

namespace A030513.P860922381384959278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348737 (f1 j).toNat = 1) n)

end

end A030513.P860922381384959278

namespace A030513

/-- `filter[A332269(n+1), A348737(#)]` -/
def P860922381384959278.Spec : Prop :=
  ∀ n, P860922381384959278.a n = A030513 (n + 1)

end A030513

/-! ## A030513.P1964540009530617362

`filter[A332269(n+1), A353788(#)]`
-/

namespace A030513.P1964540009530617362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A030513.P1964540009530617362

namespace A030513

/-- `filter[A332269(n+1), A353788(#)]` -/
def P1964540009530617362.Spec : Prop :=
  ∀ n, P1964540009530617362.a n = A030513 (n + 1)

end A030513

/-! ## A030513.P8034298874573445903

`filter[A332269(n+1), A353799(#)]`
-/

namespace A030513.P8034298874573445903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A030513.P8034298874573445903

namespace A030513

/-- `filter[A332269(n+1), A353799(#)]` -/
def P8034298874573445903.Spec : Prop :=
  ∀ n, P8034298874573445903.a n = A030513 (n + 1)

end A030513

/-! ## A030513.P6638250499529329255

`filter[A332269(n+1), A354927(#)]`
-/

namespace A030513.P6638250499529329255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A030513.P6638250499529329255

namespace A030513

/-- `filter[A332269(n+1), A354927(#)]` -/
def P6638250499529329255.Spec : Prop :=
  ∀ n, P6638250499529329255.a n = A030513 (n + 1)

end A030513

/-! ## A030513.P9773398245579868829

`filter[A332269(n+1), A359464(#)]`
-/

namespace A030513.P9773398245579868829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A030513.P9773398245579868829

namespace A030513

/-- `filter[A332269(n+1), A359464(#)]` -/
def P9773398245579868829.Spec : Prop :=
  ∀ n, P9773398245579868829.a n = A030513 (n + 1)

end A030513

/-!
# A030514: a(n) = prime(n)^4.

The programs for A030514, the canonical program `A030514.P11974636125371552077` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030514 has offset 1).

The definition of A030514 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A030514.P11974636125371552077

`A000040(n+1)^4`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030514

/-- `A000040(n+1)^4` -/
def P11974636125371552077.Spec : Prop :=
  ∀ n, P11974636125371552077.a n = A030514 (n + 1)

theorem P11974636125371552077.correct : P11974636125371552077.Spec := by
  intro n
  simp only [A030514, Nat.add_sub_cancel]

end A030514

/-! ## A030514.P13397370801586883405

`p?[a(n-1)+2]²²` with `a(0)=2, a(1)=1`
-/

namespace A030514.P13397370801586883405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2) ^ 2

end

end A030514.P13397370801586883405

namespace A030514

/-- `p?[a(n-1)+2]²²` -/
def P13397370801586883405.Spec : Prop :=
  ∀ n, (P13397370801586883405.a n : ℤ) = A030514 (n + 1)

end A030514

/-! ## A030514.P10500670729471428845

`A001248(n+1)²`
-/

namespace A030514.P10500670729471428845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2

end

end A030514.P10500670729471428845

namespace A030514

/-- `A001248(n+1)²` -/
def P10500670729471428845.Spec : Prop :=
  ∀ n, P10500670729471428845.a n = A030514 (n + 1)

end A030514

/-! ## A030514.P8629100477934099093

`sqrt(A179645(n+1))`
-/

namespace A030514.P8629100477934099093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179645 (n + 1) : ℝ)

end

end A030514.P8629100477934099093

namespace A030514

/-- `sqrt(A179645(n+1))` -/
def P8629100477934099093.Spec : Prop :=
  ∀ n, P8629100477934099093.a n = (A030514 (n + 1) : ℝ)

end A030514

/-! ## A030514.P10646049826645176103

`Δ[A007504(n)]^4`
-/

namespace A030514.P10646049826645176103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A030514.P10646049826645176103

namespace A030514

/-- `Δ[A007504(n)]^4` -/
def P10646049826645176103.Spec : Prop :=
  ∀ n, P10646049826645176103.a n = A030514 (n + 1)

end A030514

/-! ## A030514.P11763436706353002484

`Δ[A008348(n)]^4`
-/

namespace A030514.P11763436706353002484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A030514.P11763436706353002484

namespace A030514

/-- `Δ[A008348(n)]^4` -/
def P11763436706353002484.Spec : Prop :=
  ∀ n, P11763436706353002484.a n = A030514 (n + 1)

end A030514

/-! ## A030514.P9017457373095794579

`Δ[A022837(n)]^4`
-/

namespace A030514.P9017457373095794579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A030514.P9017457373095794579

namespace A030514

/-- `Δ[A022837(n)]^4` -/
def P9017457373095794579.Spec : Prop :=
  ∀ n, P9017457373095794579.a n = A030514 (n + 1)

end A030514

/-! ## A030514.P4991351109185425546

`Δ[A064365(n)]^4`
-/

namespace A030514.P4991351109185425546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A030514.P4991351109185425546

namespace A030514

/-- `Δ[A064365(n)]^4` -/
def P4991351109185425546.Spec : Prop :=
  ∀ n, P4991351109185425546.a n = A030514 (n + 1)

end A030514

/-! ## A030514.P11478330677275598943

`Δ[A309222(n)]^4`
-/

namespace A030514.P11478330677275598943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A030514.P11478330677275598943

namespace A030514

/-- `Δ[A309222(n)]^4` -/
def P11478330677275598943.Spec : Prop :=
  ∀ n, P11478330677275598943.a n = A030514 (n + 1)

end A030514

/-! ## A030514.P2931684524334806475

`A172191(n+1)/2`
-/

namespace A030514.P2931684524334806475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172191 (n + 1) : ℚ) / 2

end

end A030514.P2931684524334806475

namespace A030514

/-- `A172191(n+1)/2` -/
def P2931684524334806475.Spec : Prop :=
  ∀ n, P2931684524334806475.a n = (A030514 (n + 1) : ℚ)

end A030514

/-! ## A030514.P6881076842299802057

`A153482(n+1)+8`
-/

namespace A030514.P6881076842299802057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153482 (n + 1) + 8

end

end A030514.P6881076842299802057

namespace A030514

/-- `A153482(n+1)+8` -/
def P6881076842299802057.Spec : Prop :=
  ∀ n, P6881076842299802057.a n = A030514 (n + 1)

end A030514

/-! ## A030514.P9540713241657153402

`A273960(n+1)^4`
-/

namespace A030514.P9540713241657153402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 4

end

end A030514.P9540713241657153402

namespace A030514

/-- `A273960(n+1)^4` -/
def P9540713241657153402.Spec : Prop :=
  ∀ n, P9540713241657153402.a n = A030514 (n + 1)

end A030514

/-! ## A030514.P5217151073523509845

`(A079704(n+1)/2)²`
-/

namespace A030514.P5217151073523509845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A079704 (n + 1) : ℚ) / 2) ^ 2

end

end A030514.P5217151073523509845

namespace A030514

/-- `(A079704(n+1)/2)²` -/
def P5217151073523509845.Spec : Prop :=
  ∀ n, P5217151073523509845.a n = (A030514 (n + 1) : ℚ)

end A030514

/-! ## A030514.P9212600218721131368

`∑[A054541(n+1)]²²`
-/

namespace A030514.P9212600218721131368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A030514.P9212600218721131368

namespace A030514

/-- `∑[A054541(n+1)]²²` -/
def P9212600218721131368.Spec : Prop :=
  ∀ n, P9212600218721131368.a n = A030514 (n + 1)

end A030514

/-! ## A030514.P1719657108132777599

`A030516(n+1)^(2/3)`
-/

namespace A030514.P1719657108132777599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A030514.P1719657108132777599

namespace A030514

/-- `A030516(n+1)^(2/3)` -/
def P1719657108132777599.Spec : Prop :=
  ∀ n, P1719657108132777599.a n = (A030514 (n + 1) : ℝ)

end A030514

/-! ## A030514.P7937350144246829876

`(A006093(n+1)+1)²²`
-/

namespace A030514.P7937350144246829876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A006093 (n + 1) + 1) ^ 2) ^ 2

end

end A030514.P7937350144246829876

namespace A030514

/-- `(A006093(n+1)+1)²²` -/
def P7937350144246829876.Spec : Prop :=
  ∀ n, P7937350144246829876.a n = A030514 (n + 1)

end A030514

/-! ## A030514.P1183182941584703446

`(A001748(n+1)/3)²²`
-/

namespace A030514.P1183182941584703446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A001748 (n + 1) : ℚ) / 3) ^ 2) ^ 2

end

end A030514.P1183182941584703446

namespace A030514

/-- `(A001748(n+1)/3)²²` -/
def P1183182941584703446.Spec : Prop :=
  ∀ n, P1183182941584703446.a n = (A030514 (n + 1) : ℚ)

end A030514

/-! ## A030514.P6241884902002218383

`A000040(C(n+1, n))²²`
-/

namespace A030514.P6241884902002218383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (Nat.choose (n + 1) n) ^ 2) ^ 2

end

end A030514.P6241884902002218383

namespace A030514

/-- `A000040(C(n+1, n))²²` -/
def P6241884902002218383.Spec : Prop :=
  ∀ n, P6241884902002218383.a n = A030514 (n + 1)

theorem P6241884902002218383.correct : P6241884902002218383.Spec := by
  intro n
  simp only [A030514, Nat.add_sub_cancel, A030514.P6241884902002218383.a, A030514.P11974636125371552077.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A030514

/-! ## A030514.P15109719540199523264

`A000040(-xor(n, -1))²²`
-/

namespace A030514.P15109719540199523264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (-Int.xor (n : ℤ) (-1)).toNat ^ 2) ^ 2

end

end A030514.P15109719540199523264

namespace A030514

/-- `A000040(-xor(n, -1))²²` -/
def P15109719540199523264.Spec : Prop :=
  ∀ n, P15109719540199523264.a n = A030514 (n + 1)

end A030514

/-!
# A030515: Numbers with exactly 6 divisors.

The programs for A030515, the canonical program `A030515.P12955825658277504300` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030515 has offset 1).

The definition of A030515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030515.P12955825658277504300

`∪[A050997(n+1), A054753(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A030515

/-- `∪[A050997(n+1), A054753(n+1)]` -/
def P12955825658277504300.Spec : Prop :=
  ∀ n, (P12955825658277504300.a n : ℤ) = A030515 (n + 1)

theorem P12955825658277504300.correct : P12955825658277504300.Spec := by
  intro n
  simp only [A030515, Nat.add_sub_cancel]

end A030515

/-! ## A030515.P4259317428011219209

`eq[6, A000005(n+1)]+1`
-/

namespace A030515.P4259317428011219209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030515.P4259317428011219209

namespace A030515

/-- `eq[6, A000005(n+1)]+1` -/
def P4259317428011219209.Spec : Prop :=
  ∀ n, (P4259317428011219209.a n : ℤ) = A030515 (n + 1)

end A030515

/-! ## A030515.P8723841375756867187

`filter[A377562(n+1), A369253(#)]`
-/

namespace A030515.P8723841375756867187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A030515.P8723841375756867187

namespace A030515

/-- `filter[A377562(n+1), A369253(#)]` -/
def P8723841375756867187.Spec : Prop :=
  ∀ n, P8723841375756867187.a n = A030515 (n + 1)

end A030515

/-! ## A030515.P16068385129527304842

`filter[A065985(n+1), A353470(#)]`
-/

namespace A030515.P16068385129527304842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A030515.P16068385129527304842

namespace A030515

/-- `filter[A065985(n+1), A353470(#)]` -/
def P16068385129527304842.Spec : Prop :=
  ∀ n, P16068385129527304842.a n = A030515 (n + 1)

end A030515

/-! ## A030515.P3867270378853411638

`∩[A059269(n+1), A065985(n+1)]`
-/

namespace A030515.P3867270378853411638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030515.P3867270378853411638

namespace A030515

/-- `∩[A059269(n+1), A065985(n+1)]` -/
def P3867270378853411638.Spec : Prop :=
  ∀ n, (P3867270378853411638.a n : ℤ) = A030515 (n + 1)

end A030515

/-! ## A030515.P5147106726127253333

`A162947(n+2)`
-/

namespace A030515.P5147106726127253333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162947 (n + 2)

end

end A030515.P5147106726127253333

namespace A030515

/-- `A162947(n+2)` -/
def P5147106726127253333.Spec : Prop :=
  ∀ n, P5147106726127253333.a n = A030515 (n + 1)

end A030515

/-! ## A030515.P16327452967581673655

`eq[5, A032741(n)]`
-/

namespace A030515.P16327452967581673655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030515.P16327452967581673655

namespace A030515

/-- `eq[5, A032741(n)]` -/
def P16327452967581673655.Spec : Prop :=
  ∀ n, (P16327452967581673655.a n : ℤ) = A030515 (n + 1)

end A030515

/-! ## A030515.P18113756868632135572

`eq[10, A319410(n)]`
-/

namespace A030515.P18113756868632135572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030515.P18113756868632135572

namespace A030515

/-- `eq[10, A319410(n)]` -/
def P18113756868632135572.Spec : Prop :=
  ∀ n, (P18113756868632135572.a n : ℤ) = A030515 (n + 1)

end A030515

/-! ## A030515.P7788311516448058415

`eq[4, A145154(n)/6]`
-/

namespace A030515.P7788311516448058415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145154 n : ℚ) / 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A030515.P7788311516448058415

namespace A030515

/-- `eq[4, A145154(n)/6]` -/
def P7788311516448058415.Spec : Prop :=
  ∀ n, (P7788311516448058415.a n : ℤ) = A030515 (n + 1)

end A030515

/-! ## A030515.P6812564093118892865

`eq[2, A088434(n+1)]+1`
-/

namespace A030515.P6812564093118892865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030515.P6812564093118892865

namespace A030515

/-- `eq[2, A088434(n+1)]+1` -/
def P6812564093118892865.Spec : Prop :=
  ∀ n, (P6812564093118892865.a n : ℤ) = A030515 (n + 1)

end A030515

/-! ## A030515.P9676065791328173094

`eq[2, A348341(n+1)]+1`
-/

namespace A030515.P9676065791328173094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030515.P9676065791328173094

namespace A030515

/-- `eq[2, A348341(n+1)]+1` -/
def P9676065791328173094.Spec : Prop :=
  ∀ n, (P9676065791328173094.a n : ℤ) = A030515 (n + 1)

end A030515

/-! ## A030515.P1678016265728157189

`eq[3, A045778(n+1)]+1`
-/

namespace A030515.P1678016265728157189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030515.P1678016265728157189

namespace A030515

/-- `eq[3, A045778(n+1)]+1` -/
def P1678016265728157189.Spec : Prop :=
  ∀ n, (P1678016265728157189.a n : ℤ) = A030515 (n + 1)

end A030515

/-! ## A030515.P12643247873300905624

`eq[7, A334954(n+1)]+1`
-/

namespace A030515.P12643247873300905624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030515.P12643247873300905624

namespace A030515

/-- `eq[7, A334954(n+1)]+1` -/
def P12643247873300905624.Spec : Prop :=
  ∀ n, (P12643247873300905624.a n : ℤ) = A030515 (n + 1)

end A030515

/-!
# A030516: Numbers with 7 divisors. 6th powers of primes.

The programs for A030516, the canonical program `A030516.P1711246340231228216` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030516 has offset 1).

The definition of A030516 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A030516.P1711246340231228216

`A000040(n+1)^6`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030516

/-- `A000040(n+1)^6` -/
def P1711246340231228216.Spec : Prop :=
  ∀ n, P1711246340231228216.a n = A030516 (n + 1)

theorem P1711246340231228216.correct : P1711246340231228216.Spec := by
  intro n
  simp only [A030516, Nat.add_sub_cancel]

end A030516

/-! ## A030516.P12140073088722140863

`Δ[A242188(n)]²`
-/

namespace A030516.P12140073088722140863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A030516.P12140073088722140863

namespace A030516

/-- `Δ[A242188(n)]²` -/
def P12140073088722140863.Spec : Prop :=
  ∀ n, P12140073088722140863.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P2674393632761365238

`A030078(n+1)²`
-/

namespace A030516.P2674393632761365238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 2

end

end A030516.P2674393632761365238

namespace A030516

/-- `A030078(n+1)²` -/
def P2674393632761365238.Spec : Prop :=
  ∀ n, P2674393632761365238.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P8441741823597003691

`sqrt(A030631(n+1))`
-/

namespace A030516.P8441741823597003691
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030631 (n + 1) : ℝ)

end

end A030516.P8441741823597003691

namespace A030516

/-- `sqrt(A030631(n+1))` -/
def P8441741823597003691.Spec : Prop :=
  ∀ n, P8441741823597003691.a n = (A030516 (n + 1) : ℝ)

end A030516

/-! ## A030516.P17800684947267989894

`Δ[A007504(n)]^6`
-/

namespace A030516.P17800684947267989894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 6

end

end A030516.P17800684947267989894

namespace A030516

/-- `Δ[A007504(n)]^6` -/
def P17800684947267989894.Spec : Prop :=
  ∀ n, P17800684947267989894.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P2245498530566479250

`Δ[A008348(n)]^6`
-/

namespace A030516.P2245498530566479250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 6

end

end A030516.P2245498530566479250

namespace A030516

/-- `Δ[A008348(n)]^6` -/
def P2245498530566479250.Spec : Prop :=
  ∀ n, P2245498530566479250.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P3656858141087213048

`Δ[A022837(n)]^6`
-/

namespace A030516.P3656858141087213048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 6

end

end A030516.P3656858141087213048

namespace A030516

/-- `Δ[A022837(n)]^6` -/
def P3656858141087213048.Spec : Prop :=
  ∀ n, P3656858141087213048.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P14647174519696259768

`A001248(n+1)^3`
-/

namespace A030516.P14647174519696259768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 3

end

end A030516.P14647174519696259768

namespace A030516

/-- `A001248(n+1)^3` -/
def P14647174519696259768.Spec : Prop :=
  ∀ n, P14647174519696259768.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P15925950560146034740

`A273960(n+1)^6`
-/

namespace A030516.P15925950560146034740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 6

end

end A030516.P15925950560146034740

namespace A030516

/-- `A273960(n+1)^6` -/
def P15925950560146034740.Spec : Prop :=
  ∀ n, P15925950560146034740.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P14829543677164683386

`(A153481(n+1)+2)²`
-/

namespace A030516.P14829543677164683386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153481 (n + 1) + 2) ^ 2

end

end A030516.P14829543677164683386

namespace A030516

/-- `(A153481(n+1)+2)²` -/
def P14829543677164683386.Spec : Prop :=
  ∀ n, P14829543677164683386.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P8224821371883480104

`(A172190(n+1)/2)²`
-/

namespace A030516.P8224821371883480104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A172190 (n + 1) : ℚ) / 2) ^ 2

end

end A030516.P8224821371883480104

namespace A030516

/-- `(A172190(n+1)/2)²` -/
def P8224821371883480104.Spec : Prop :=
  ∀ n, P8224821371883480104.a n = (A030516 (n + 1) : ℚ)

end A030516

/-! ## A030516.P827171899665980654

`sqrt(A030514(n+1)^3)`
-/

namespace A030516.P827171899665980654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) ^ 3 : ℝ)

end

end A030516.P827171899665980654

namespace A030516

/-- `sqrt(A030514(n+1)^3)` -/
def P827171899665980654.Spec : Prop :=
  ∀ n, P827171899665980654.a n = (A030516 (n + 1) : ℝ)

end A030516

/-! ## A030516.P17511912126860567846

`ceil(sqrt(A138408(n+1)))²`
-/

namespace A030516.P17511912126860567846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A138408 (n + 1) : ℝ)⌉ ^ 2

end

end A030516.P17511912126860567846

namespace A030516

/-- `ceil(sqrt(A138408(n+1)))²` -/
def P17511912126860567846.Spec : Prop :=
  ∀ n, P17511912126860567846.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P16574255339392173643

`(A049001(n+1)+2)^3`
-/

namespace A030516.P16574255339392173643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049001 (n + 1) + 2) ^ 3

end

end A030516.P16574255339392173643

namespace A030516

/-- `(A049001(n+1)+2)^3` -/
def P16574255339392173643.Spec : Prop :=
  ∀ n, P16574255339392173643.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P13194213245518712917

`(A000040(2*n-(n-1))^3)²`
-/

namespace A030516.P13194213245518712917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 3) ^ 2

end

end A030516.P13194213245518712917

namespace A030516

/-- `(A000040(2*n-(n-1))^3)²` -/
def P13194213245518712917.Spec : Prop :=
  ∀ n, P13194213245518712917.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P17313543173239200948

`A138408(n+1)+A000040(n+1)`
-/

namespace A030516.P17313543173239200948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138408 (n + 1) + A000040 (n + 1)

end

end A030516.P17313543173239200948

namespace A030516

/-- `A138408(n+1)+A000040(n+1)` -/
def P17313543173239200948.Spec : Prop :=
  ∀ n, P17313543173239200948.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P312783704524266648

`A138409(n+1)+A001248(n+1)`
-/

namespace A030516.P312783704524266648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138409 (n + 1) + A001248 (n + 1)

end

end A030516.P312783704524266648

namespace A030516

/-- `A138409(n+1)+A001248(n+1)` -/
def P312783704524266648.Spec : Prop :=
  ∀ n, P312783704524266648.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P17272978854802306293

`A138410(n+1)+A030078(n+1)`
-/

namespace A030516.P17272978854802306293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138410 (n + 1) + A030078 (n + 1)

end

end A030516.P17272978854802306293

namespace A030516

/-- `A138410(n+1)+A030078(n+1)` -/
def P17272978854802306293.Spec : Prop :=
  ∀ n, P17272978854802306293.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P12282884450961153379

`A138411(n+1)+A030514(n+1)`
-/

namespace A030516.P12282884450961153379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138411 (n + 1) + A030514 (n + 1)

end

end A030516.P12282884450961153379

namespace A030516

/-- `A138411(n+1)+A030514(n+1)` -/
def P12282884450961153379.Spec : Prop :=
  ∀ n, P12282884450961153379.a n = A030516 (n + 1)

end A030516

/-! ## A030516.P18000965247690691288

`A138412(n+1)+A050997(n+1)`
-/

namespace A030516.P18000965247690691288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138412 (n + 1) + A050997 (n + 1)

end

end A030516.P18000965247690691288

namespace A030516

/-- `A138412(n+1)+A050997(n+1)` -/
def P18000965247690691288.Spec : Prop :=
  ∀ n, P18000965247690691288.a n = A030516 (n + 1)

end A030516

/-!
# A030517: Number of walks of length n between two vertices on an icosahedron at distance 1.

The programs for A030517, the canonical program `A030517.P2505461465325391589` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030517 has offset 1).

The definition of A030517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030517.P2505461465325391589

`4*a(n-1)+10*a(n-2)-20*a(n-3)-25*a(n-4)` with `a(0)=1, a(1)=2, a(2)=13, a(3)=52`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030517

/-- `4*a(n-1)+10*a(n-2)-20*a(n-3)-25*a(n-4)` -/
def P2505461465325391589.Spec : Prop :=
  ∀ n, P2505461465325391589.a n = A030517 (n + 1)

theorem P2505461465325391589.correct : P2505461465325391589.Spec := by
  intro n
  simp only [A030517, Nat.add_sub_cancel]

end A030517

/-! ## A030517.P16407757203947676936

`2*a(n-1)+2*A030518(n)+5*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A030517.P16407757203947676936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + 2 * A030518 n + 5 * a (n - 2)

end

end A030517.P16407757203947676936

namespace A030517

/-- `2*a(n-1)+2*A030518(n)+5*a(n-2)` -/
def P16407757203947676936.Spec : Prop :=
  ∀ n, P16407757203947676936.a n = A030517 (n + 1)

end A030517

/-! ## A030517.P15008616753585757804

`5^(n+1)/12-(-1)^(n+1)/12+sqrt(5)^(n+2)/20+(-sqrt(5))^(n+2)/20`
-/

namespace A030517.P15008616753585757804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 1) : ℚ) / 12 - ((-1) ^ (n + 1) : ℚ) / 12 : ℝ) + Real.sqrt (5 : ℝ) ^ (n + 2) / 20 + (-Real.sqrt (5 : ℝ)) ^ (n + 2) / 20

end

end A030517.P15008616753585757804

namespace A030517

/-- `5^(n+1)/12-(-1)^(n+1)/12+sqrt(5)^(n+2)/20+(-sqrt(5))^(n+2)/20` -/
def P15008616753585757804.Spec : Prop :=
  ∀ n, P15008616753585757804.a n = (A030517 (n + 1) : ℝ)

end A030517

/-! ## A030517.P5246507958354369921

`A054884(n+2)/5`
-/

namespace A030517.P5246507958354369921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054884 (n + 2) : ℚ) / 5

end

end A030517.P5246507958354369921

namespace A030517

/-- `A054884(n+2)/5` -/
def P5246507958354369921.Spec : Prop :=
  ∀ n, P5246507958354369921.a n = (A030517 (n + 1) : ℚ)

end A030517

/-! ## A030517.P14171851448469305310

`record[ceil(A054884(n)/5)]`
-/

namespace A030517.P14171851448469305310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054884 n : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030517.P14171851448469305310

namespace A030517

/-- `record[ceil(A054884(n)/5)]` -/
def P14171851448469305310.Spec : Prop :=
  ∀ n, P14171851448469305310.a n = A030517 (n + 1)

end A030517

/-!
# A030518: Number of walks of length n between two vertices on an icosahedron at distance 2.

The programs for A030518, the canonical program `A030518.P8611436451144926389` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030518 has offset 1).

The definition of A030518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030518.P8611436451144926389

`4*a(n-1)+10*a(n-2)-20*a(n-3)-25*a(n-4)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=52`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030518

/-- `4*a(n-1)+10*a(n-2)-20*a(n-3)-25*a(n-4)` -/
def P8611436451144926389.Spec : Prop :=
  ∀ n, P8611436451144926389.a n = A030518 (n + 1)

theorem P8611436451144926389.correct : P8611436451144926389.Spec := by
  intro n
  simp only [A030518, Nat.add_sub_cancel]

end A030518

/-! ## A030518.P3948692530269694820

`2*A030517(n)+2*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A030518.P3948692530269694820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * A030517 n + 2 * a (n - 1) + 5 * a (n - 2)

end

end A030518.P3948692530269694820

namespace A030518

/-- `2*A030517(n)+2*a(n-1)+5*a(n-2)` -/
def P3948692530269694820.Spec : Prop :=
  ∀ n, P3948692530269694820.a n = A030518 (n + 1)

end A030518

/-! ## A030518.P5765439674228845677

`5^(n+1)/12-(-1)^(n+1)/12-sqrt(5)^(n+2)/20-(-sqrt(5))^(n+2)/20`
-/

namespace A030518.P5765439674228845677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 1) : ℚ) / 12 - ((-1) ^ (n + 1) : ℚ) / 12 : ℝ) - Real.sqrt (5 : ℝ) ^ (n + 2) / 20 - (-Real.sqrt (5 : ℝ)) ^ (n + 2) / 20

end

end A030518.P5765439674228845677

namespace A030518

/-- `5^(n+1)/12-(-1)^(n+1)/12-sqrt(5)^(n+2)/20-(-sqrt(5))^(n+2)/20` -/
def P5765439674228845677.Spec : Prop :=
  ∀ n, P5765439674228845677.a n = (A030518 (n + 1) : ℝ)

end A030518

/-! ## A030518.P2619124383121798991

`A054885(n+2)/5`
-/

namespace A030518.P2619124383121798991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054885 (n + 2) : ℚ) / 5

end

end A030518.P2619124383121798991

namespace A030518

/-- `A054885(n+2)/5` -/
def P2619124383121798991.Spec : Prop :=
  ∀ n, P2619124383121798991.a n = (A030518 (n + 1) : ℚ)

end A030518

/-!
# A030520: Number of polyhexes of class PF2 with C_{2n} symmetry.

The programs for A030520, there is no canonical definition to state claims against.
-/

/-! ## A030520.P12940775788569535946

`A044046(n)+∑[A045908(n)]`
-/

namespace A030520.P12940775788569535946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044046 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030520.P12940775788569535946

/-! ## A030520.P10704618631990271385

`Δ[A002212(n)]-A044045(n)`
-/

namespace A030520.P10704618631990271385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A044045 n

end

end A030520.P10704618631990271385

/-! ## A030520.P5484427355937778422

`A045868(n)-A038392(n+1)`
-/

namespace A030520.P5484427355937778422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - A038392 (n + 1)

end

end A030520.P5484427355937778422

/-! ## A030520.P3397152015121639828

`A044046(n)+A030529(n+3)`
-/

namespace A030520.P3397152015121639828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044046 n + A030529 (n + 3)

end

end A030520.P3397152015121639828

/-! ## A030520.P5527194338647123915

`A024311(n+1)+Δ[A038392(n+1)]`
-/

namespace A030520.P5527194338647123915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024311 (n + 1) + (f1 (n + 1) - f1 n)

end

end A030520.P5527194338647123915

/-! ## A030520.P9871630483960664711

`A045868(n)-A044045(A028310(n))`
-/

namespace A030520.P9871630483960664711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - A044045 (A028310 n).toNat

end

end A030520.P9871630483960664711

/-! ## A030520.P16819867226270336555

`A002212(n+1)-(A044045(n)+A002212(n))`
-/

namespace A030520.P16819867226270336555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - (A044045 n + A002212 n)

end

end A030520.P16819867226270336555

/-! ## A030520.P3533949050201537285

`A002212(n+1)+A044046(n)-A038392(n+2)`
-/

namespace A030520.P3533949050201537285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) + (A044046 n - A038392 (n + 2))

end

end A030520.P3533949050201537285

/-! ## A030520.P16268619678158743797

`A038392(n+2)+A044046(n)-A055879(n+1)`
-/

namespace A030520.P16268619678158743797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 2) + (A044046 n - A055879 (n + 1))

end

end A030520.P16268619678158743797

/-! ## A030520.P16155603413861443982

`A024311(n+1)+A038392(n+2)-A038392(n+1)`
-/

namespace A030520.P16155603413861443982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024311 (n + 1) + (A038392 (n + 2) - A038392 (n + 1))

end

end A030520.P16155603413861443982

/-! ## A030520.P16621508235559963917

`Δ[Δ[A181768(n)]]-A038392(n+1)`
-/

namespace A030520.P16621508235559963917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A038392 (n + 1)

end

end A030520.P16621508235559963917

/-!
# A030521: Product of first n palindromic primes plus 1.

The programs for A030521, there is no canonical definition to state claims against.
-/

/-! ## A030521.P6725766920879610430

`A046853(n+1)+1`
-/

namespace A030521.P6725766920879610430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046853 (n + 1) + 1

end

end A030521.P6725766920879610430

/-! ## A030521.P1609902030426403378

`A030522(n+1)+2`
-/

namespace A030521.P1609902030426403378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030522 (n + 1) + 2

end

end A030521.P1609902030426403378

/-! ## A030521.P10622725281902736782

`∏[A002385(n+1)]+1`
-/

namespace A030521.P10622725281902736782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A030521.P10622725281902736782

/-! ## A030521.P6622145843242657725

`∏[A069217(n+2)]+1`
-/

namespace A030521.P6622145843242657725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A030521.P6622145843242657725

/-!
# A030522: Product of first n palindromic primes minus 1.

The programs for A030522, there is no canonical definition to state claims against.
-/

/-! ## A030522.P1017887598991632545

`A046853(n+1)-1`
-/

namespace A030522.P1017887598991632545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046853 (n + 1) - 1

end

end A030522.P1017887598991632545

/-! ## A030522.P2003185778281795731

`A030521(n+1)-2`
-/

namespace A030522.P2003185778281795731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030521 (n + 1) - 2

end

end A030522.P2003185778281795731

/-! ## A030522.P458901268401660634

`∏[A002385(n+1)]-1`
-/

namespace A030522.P458901268401660634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A030522.P458901268401660634

/-! ## A030522.P15782015870601250059

`∏[A069217(n+2)]-1`
-/

namespace A030522.P15782015870601250059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A030522.P15782015870601250059

/-!
# A030524: A convolution triangle of numbers obtained from A036068.

The programs for A030524, there is no canonical definition to state claims against.
-/

/-! ## A030524.P9292222263314680616

`A078644(A318107(n*A249909(n)))`
-/

namespace A030524.P9292222263314680616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (A318107 ((n : ℤ) * A249909 n).toNat).toNat

end

end A030524.P9292222263314680616

/-! ## A030524.P7230322630685777495

`A078644(A318107(n)^A051700(n))`
-/

namespace A030524.P7230322630685777495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (SequenceMachineLib.roundAway ((A318107 n : ℚ) ^ (A051700 n : ℤ))).toNat

end

end A030524.P7230322630685777495

/-! ## A030524.P16100694078068002254

`A078644(A318107(n)^A155865(n))`
-/

namespace A030524.P16100694078068002254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (SequenceMachineLib.roundAway ((A318107 n : ℚ) ^ (A155865 n : ℤ))).toNat

end

end A030524.P16100694078068002254

/-!
# A030525: Number of polyhexes of class PF2 with a particular symmetry.

The programs for A030525, there is no canonical definition to state claims against.
-/

/-! ## A030525.P4022772201300018224

`floor(∑[2^n/3])-A319000(2*(∑[n]+1))`
-/

namespace A030525.P4022772201300018224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - A319000 (2 * (∑ j ∈ Finset.range (n + 1), f2 j + 1))

end

end A030525.P4022772201300018224

/-! ## A030525.P3098622250226466508

`A000975(n)-A178780(n²)`
-/

namespace A030525.P3098622250226466508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A178780 (n ^ 2)

end

end A030525.P3098622250226466508

/-! ## A030525.P17730857740460397873

`A000975(n)-A374246(∑[n+5])`
-/

namespace A030525.P17730857740460397873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A374246 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030525.P17730857740460397873

/-! ## A030525.P8654740331826031111

`A000975(n)-A083894(A000110(n))`
-/

namespace A030525.P8654740331826031111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A083894 (A000110 n).toNat

end

end A030525.P8654740331826031111

/-! ## A030525.P13474734949534825825

`A000079(n)-A002024(A148434(n))`
-/

namespace A030525.P13474734949534825825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A002024 (A148434 n).toNat

end

end A030525.P13474734949534825825

/-!
# A030526: A convolution triangle of numbers obtained from A036070.

The programs for A030526, there is no canonical definition to state claims against.
-/

/-! ## A030526.P8203285488005818906

`A049353(n+1)/A049029(n+1)*A048882(n)`
-/

namespace A030526.P8203285488005818906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049353 (n + 1) : ℚ) / (A049029 (n + 1) : ℚ) * (A048882 n : ℚ)

end

end A030526.P8203285488005818906

/-!
# A030527: A convolution triangle of numbers obtained from A036083.

The programs for A030527, there is no canonical definition to state claims against.
-/

/-! ## A030527.P16522895222141021023

`A049374(n+1)/A049385(n+1)*A049375(n+1)`
-/

namespace A030527.P16522895222141021023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049374 (n + 1) : ℚ) / (A049385 (n + 1) : ℚ) * (A049375 (n + 1) : ℚ)

end

end A030527.P16522895222141021023

/-!
# A030528: Triangle read by rows: T(n,k) = binomial(k,n-k).

The programs for A030528, the canonical program `A030528.P11879797609187642166` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030528 has offset 1).

The definition of A030528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030528.P17975098305699772768

`A122899(n)/A007318(n)`
-/

namespace A030528.P17975098305699772768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122899 n : ℚ) / (A007318 n : ℚ)

end

end A030528.P17975098305699772768

namespace A030528

/-- `A122899(n)/A007318(n)` -/
def P17975098305699772768.Spec : Prop :=
  ∀ n, P17975098305699772768.a n = (A030528 (n + 1) : ℚ)

end A030528

/-! ## A030528.P12424233641777132254

`A122899(n)/A183154(n)`
-/

namespace A030528.P12424233641777132254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122899 n : ℚ) / (A183154 n : ℚ)

end

end A030528.P12424233641777132254

namespace A030528

/-- `A122899(n)/A183154(n)` -/
def P12424233641777132254.Spec : Prop :=
  ∀ n, P12424233641777132254.a n = (A030528 (n + 1) : ℚ)

end A030528

/-! ## A030528.P11879797609187642166

`C(A002260(n+1), A025581(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A030528

/-- `C(A002260(n+1), A025581(n))` -/
def P11879797609187642166.Spec : Prop :=
  ∀ n, (P11879797609187642166.a n : ℤ) = A030528 (n + 1)

theorem P11879797609187642166.correct : P11879797609187642166.Spec := by
  intro n
  simp only [A030528, Nat.add_sub_cancel]

end A030528

/-! ## A030528.P3428643899461939345

`C(A002262(n)+1, A025581(n))`
-/

namespace A030528.P3428643899461939345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n + 1).toNat (A025581 n).toNat

end

end A030528.P3428643899461939345

namespace A030528

/-- `C(A002262(n)+1, A025581(n))` -/
def P3428643899461939345.Spec : Prop :=
  ∀ n, (P3428643899461939345.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P5995256818349132890

`C(A191532(n)+1, A025581(n))`
-/

namespace A030528.P5995256818349132890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A191532 n + 1).toNat (A025581 n).toNat

end

end A030528.P5995256818349132890

namespace A030528

/-- `C(A191532(n)+1, A025581(n))` -/
def P5995256818349132890.Spec : Prop :=
  ∀ n, (P5995256818349132890.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P8613697792437301296

`C(log2(A059268(n+1)), A025581(n))`
-/

namespace A030528.P8613697792437301296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A059268 (n + 1) : ℝ))).toNat (A025581 n).toNat

end

end A030528.P8613697792437301296

namespace A030528

/-- `C(log2(A059268(n+1)), A025581(n))` -/
def P8613697792437301296.Spec : Prop :=
  ∀ n, (P8613697792437301296.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P788476683242807457

`C(log2(2*A059268(n)), A025581(n))`
-/

namespace A030528.P788476683242807457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (2 * A059268 n : ℝ))).toNat (A025581 n).toNat

end

end A030528.P788476683242807457

namespace A030528

/-- `C(log2(2*A059268(n)), A025581(n))` -/
def P788476683242807457.Spec : Prop :=
  ∀ n, (P788476683242807457.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P2936576524166873045

`C(A002260(n+1), A004736(n+1)-1)`
-/

namespace A030528.P2936576524166873045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A004736 (n + 1) - 1).toNat

end

end A030528.P2936576524166873045

namespace A030528

/-- `C(A002260(n+1), A004736(n+1)-1)` -/
def P2936576524166873045.Spec : Prop :=
  ∀ n, (P2936576524166873045.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P15707471494214994370

`C(sqrt(A133819(n+1)), A004736(n+1)-1)`
-/

namespace A030528.P15707471494214994370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat (A004736 (n + 1) - 1).toNat

end

end A030528.P15707471494214994370

namespace A030528

/-- `C(sqrt(A133819(n+1)), A004736(n+1)-1)` -/
def P15707471494214994370.Spec : Prop :=
  ∀ n, (P15707471494214994370.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P16185935414939777517

`C(A002260(n+1), log2(A090988(n+1))-1)`
-/

namespace A030528.P16185935414939777517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ) - 1)).toNat

end

end A030528.P16185935414939777517

namespace A030528

/-- `C(A002260(n+1), log2(A090988(n+1))-1)` -/
def P16185935414939777517.Spec : Prop :=
  ∀ n, (P16185935414939777517.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P17802622112926651892

`C(A002260(n+1), A000096(A003056(n))-n)`
-/

namespace A030528.P17802622112926651892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A000096 (A003056 n).toNat - (n : ℤ)).toNat

end

end A030528.P17802622112926651892

namespace A030528

/-- `C(A002260(n+1), A000096(A003056(n))-n)` -/
def P17802622112926651892.Spec : Prop :=
  ∀ n, (P17802622112926651892.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P6429631642767360702

`C(A002260(n+1), A003056(n)-A002262(n))`
-/

namespace A030528.P6429631642767360702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A003056 n - A002262 n).toNat

end

end A030528.P6429631642767360702

namespace A030528

/-- `C(A002260(n+1), A003056(n)-A002262(n))` -/
def P6429631642767360702.Spec : Prop :=
  ∀ n, (P6429631642767360702.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P15501105181848138633

`C(A002024(n+1)-A025581(n), A025581(n))`
-/

namespace A030528.P15501105181848138633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1) - A025581 n).toNat (A025581 n).toNat

end

end A030528.P15501105181848138633

namespace A030528

/-- `C(A002024(n+1)-A025581(n), A025581(n))` -/
def P15501105181848138633.Spec : Prop :=
  ∀ n, (P15501105181848138633.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P6463757038439620731

`C(A002260(n+1), A002024(n+1)-A002260(n+1))`
-/

namespace A030528.P6463757038439620731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A002024 (n + 1) - A002260 (n + 1)).toNat

end

end A030528.P6463757038439620731

namespace A030528

/-- `C(A002260(n+1), A002024(n+1)-A002260(n+1))` -/
def P6463757038439620731.Spec : Prop :=
  ∀ n, (P6463757038439620731.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P8235259624806582986

`A284938(n+2)+A026729(n)`
-/

namespace A030528.P8235259624806582986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (n + 2) + A026729 n

end

end A030528.P8235259624806582986

namespace A030528

/-- `A284938(n+2)+A026729(n)` -/
def P8235259624806582986.Spec : Prop :=
  ∀ n, P8235259624806582986.a n = A030528 (n + 1)

end A030528

/-! ## A030528.P10286853201588555996

`C(A003984(n+1), A025581(n))`
-/

namespace A030528.P10286853201588555996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003984 (n + 1)).toNat (A025581 n).toNat

end

end A030528.P10286853201588555996

namespace A030528

/-- `C(A003984(n+1), A025581(n))` -/
def P10286853201588555996.Spec : Prop :=
  ∀ n, (P10286853201588555996.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P4710309629459261169

`C(A144328(n+2), A025581(n))`
-/

namespace A030528.P4710309629459261169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144328 (n + 2)).toNat (A025581 n).toNat

end

end A030528.P4710309629459261169

namespace A030528

/-- `C(A144328(n+2), A025581(n))` -/
def P4710309629459261169.Spec : Prop :=
  ∀ n, (P4710309629459261169.a n : ℤ) = A030528 (n + 1)

end A030528

/-! ## A030528.P8075430365730342170

`A026729(n)+abs(A057094(n+1))`
-/

namespace A030528.P8075430365730342170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n + |A057094 (n + 1)|

end

end A030528.P8075430365730342170

namespace A030528

/-- `A026729(n)+abs(A057094(n+1))` -/
def P8075430365730342170.Spec : Prop :=
  ∀ n, P8075430365730342170.a n = A030528 (n + 1)

end A030528

/-! ## A030528.P14250733758057373834

`abs(A109466(n)+A057094(n+1))`
-/

namespace A030528.P14250733758057373834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109466 n + A057094 (n + 1)|

end

end A030528.P14250733758057373834

namespace A030528

/-- `abs(A109466(n)+A057094(n+1))` -/
def P14250733758057373834.Spec : Prop :=
  ∀ n, P14250733758057373834.a n = A030528 (n + 1)

end A030528

/-! ## A030528.P5460374747448563852

`A054124(n+1)+A004070(n)-A004070(n+1)`
-/

namespace A030528.P5460374747448563852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (n + 1) + (A004070 n - A004070 (n + 1))

end

end A030528.P5460374747448563852

namespace A030528

/-- `A054124(n+1)+A004070(n)-A004070(n+1)` -/
def P5460374747448563852.Spec : Prop :=
  ∀ n, P5460374747448563852.a n = A030528 (n + 1)

end A030528

/-!
# A030529: Number of polyhexes of class PF2 with a particular symmetry.

The programs for A030529, there is no canonical definition to state claims against.
-/

/-! ## A030529.P11770500252016611201

`A045908(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A030529.P11770500252016611201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A045908 (n - 1) + a (n - 1)

end

end A030529.P11770500252016611201

/-! ## A030529.P4181609470012736884

`∑[A045908(log2(A011782(n)))]`
-/

namespace A030529.P4181609470012736884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030529.P4181609470012736884

/-! ## A030529.P18287970850325942327

`∑[A045908(A004273(n)-n)]`
-/

namespace A030529.P18287970850325942327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030529.P18287970850325942327

/-! ## A030529.P10019874686944625090

`A002212(n)-A038392(n+1)`
-/

namespace A030529.P10019874686944625090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A038392 (n + 1)

end

end A030529.P10019874686944625090

/-! ## A030529.P11816224705935466067

`A025238(n+1)%A038392(n+1)`
-/

namespace A030529.P11816224705935466067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025238 (n + 1)) (A038392 (n + 1))

end

end A030529.P11816224705935466067

/-! ## A030529.P10828391184785585446

`∑[A045908(A004526(A004273(n)))]`
-/

namespace A030529.P10828391184785585446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030529.P10828391184785585446

/-! ## A030529.P18382028178112983658

`∑[A045908(A004526(A004275(n)))]`
-/

namespace A030529.P18382028178112983658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030529.P18382028178112983658

/-! ## A030529.P6513061761312608642

`A002212(n)-A044045(A028310(n))`
-/

namespace A030529.P6513061761312608642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A044045 (A028310 n).toNat

end

end A030529.P6513061761312608642

/-! ## A030529.P13957747765804049216

`A025238(n+1)%A044045(A028310(n))`
-/

namespace A030529.P13957747765804049216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025238 (n + 1)) (A044045 (A028310 n).toNat)

end

end A030529.P13957747765804049216

/-! ## A030529.P3482645666547759791

`A002212(n)-A044045(A000007(n)+n)`
-/

namespace A030529.P3482645666547759791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A044045 (A000007 n + (n : ℤ)).toNat

end

end A030529.P3482645666547759791

/-! ## A030529.P2841379874133754895

`∑[A045908(n)]-A045908(n)`
-/

namespace A030529.P2841379874133754895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A045908 n

end

end A030529.P2841379874133754895

/-! ## A030529.P1318371397263449198

`Δ[A181768(n)]-A044045(n)`
-/

namespace A030529.P1318371397263449198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A044045 n

end

end A030529.P1318371397263449198

/-! ## A030529.P17431929946023933564

`∑[A045868(n)]-(A045868(n)+A044045(n))`
-/

namespace A030529.P17431929946023933564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A045868 n + A044045 n)

end

end A030529.P17431929946023933564

/-! ## A030529.P17353428372630452281

`A002212(n)+A044046(n)-A046697(n+1)`
-/

namespace A030529.P17353428372630452281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n + (A044046 n - A046697 (n + 1))

end

end A030529.P17353428372630452281

/-! ## A030529.P11876717622327104615

`A044045(n+1)-(A046697(n+1)+A044045(n))`
-/

namespace A030529.P11876717622327104615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) - (A046697 (n + 1) + A044045 n)

end

end A030529.P11876717622327104615

/-! ## A030529.P1135400322689768193

`A091965(C(n, 2))%A044045(A028310(n))`
-/

namespace A030529.P1135400322689768193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091965 (Nat.choose n 2)) (A044045 (A028310 n).toNat)

end

end A030529.P1135400322689768193

/-! ## A030529.P8555094454214472287

`∑[A045908(A014473(A000124(n)))]`
-/

namespace A030529.P8555094454214472287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 (A014473 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030529.P8555094454214472287

/-!
# A030530: n appears A070939(n) times.

The programs for A030530, the canonical program `A030530.P9694189016873719582` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030530 has offset 0).

The definition of A030530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030530.P9694189016873719582

`∑[char[∑[ceil(abs(log2(acot(n))))]]]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030530

/-- `∑[char[∑[ceil(abs(log2(acot(n))))]]]` -/
def P9694189016873719582.Spec : Prop :=
  ∀ n, (P9694189016873719582.a n : ℤ) = A030530 n

theorem P9694189016873719582.correct : P9694189016873719582.Spec := by
  intro n
  simp only [A030530]

end A030530

/-! ## A030530.P1262609098440571605

`∑[char[∑[ceil(log2(n+1))]+1]]`
-/

namespace A030530.P1262609098440571605
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030530.P1262609098440571605

namespace A030530

/-- `∑[char[∑[ceil(log2(n+1))]+1]]` -/
def P1262609098440571605.Spec : Prop :=
  ∀ n, (P1262609098440571605.a n : ℤ) = A030530 n

end A030530

/-! ## A030530.P11937118402034364749

`comp[A123753(n)]-n`
-/

namespace A030530.P11937118402034364749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A030530.P11937118402034364749

namespace A030530

/-- `comp[A123753(n)]-n` -/
def P11937118402034364749.Spec : Prop :=
  ∀ n, P11937118402034364749.a n = A030530 n

end A030530

/-! ## A030530.P3222819132586728735

`∑[char[A296349(n)]]-1`
-/

namespace A030530.P3222819132586728735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A030530.P3222819132586728735

namespace A030530

/-- `∑[char[A296349(n)]]-1` -/
def P3222819132586728735.Spec : Prop :=
  ∀ n, P3222819132586728735.a n = A030530 n

end A030530

/-! ## A030530.P12629971019991772097

`comp[∑[A070939(2*n)]]-n`
-/

namespace A030530.P12629971019991772097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A030530.P12629971019991772097

namespace A030530

/-- `comp[∑[A070939(2*n)]]-n` -/
def P12629971019991772097.Spec : Prop :=
  ∀ n, P12629971019991772097.a n = A030530 n

end A030530

/-! ## A030530.P7220950675863976589

`comp[∑[A029837(n+1)+1]]-n`
-/

namespace A030530.P7220950675863976589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A030530.P7220950675863976589

namespace A030530

/-- `comp[∑[A029837(n+1)+1]]-n` -/
def P7220950675863976589.Spec : Prop :=
  ∀ n, P7220950675863976589.a n = A030530 n

end A030530

/-! ## A030530.P2546754883786893030

`A003056(eq[A000007(n), A073429(n)])`
-/

namespace A030530.P2546754883786893030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030530.P2546754883786893030

namespace A030530

/-- `A003056(eq[A000007(n), A073429(n)])` -/
def P2546754883786893030.Spec : Prop :=
  ∀ n, P2546754883786893030.a n = A030530 n

end A030530

/-! ## A030530.P13723040938320092934

`A003056(eq[A073429(n), A130123(n)])`
-/

namespace A030530.P13723040938320092934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030530.P13723040938320092934

namespace A030530

/-- `A003056(eq[A073429(n), A130123(n)])` -/
def P13723040938320092934.Spec : Prop :=
  ∀ n, P13723040938320092934.a n = A030530 n

end A030530

/-! ## A030530.P18323253963346459734

`A003056(eq[1, A073429(n+1)+1])`
-/

namespace A030530.P18323253963346459734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030530.P18323253963346459734

namespace A030530

/-- `A003056(eq[1, A073429(n+1)+1])` -/
def P18323253963346459734.Spec : Prop :=
  ∀ n, P18323253963346459734.a n = A030530 n

end A030530

/-! ## A030530.P13055504457339799692

`A003056(eq[A130296(n+1), A260534(n)])`
-/

namespace A030530.P13055504457339799692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030530.P13055504457339799692

namespace A030530

/-- `A003056(eq[A130296(n+1), A260534(n)])` -/
def P13055504457339799692.Spec : Prop :=
  ∀ n, P13055504457339799692.a n = A030530 n

end A030530

/-! ## A030530.P13410563540966518513

`ceil(record[log2(A099884(n))])`
-/

namespace A030530.P13410563540966518513
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A099884 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A030530.P13410563540966518513

namespace A030530

/-- `ceil(record[log2(A099884(n))])` -/
def P13410563540966518513.Spec : Prop :=
  ∀ n, P13410563540966518513.a n = A030530 n

end A030530

/-! ## A030530.P14728720653684107756

`A003056(eq[A000007(n), A094544(n)])`
-/

namespace A030530.P14728720653684107756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030530.P14728720653684107756

namespace A030530

/-- `A003056(eq[A000007(n), A094544(n)])` -/
def P14728720653684107756.Spec : Prop :=
  ∀ n, P14728720653684107756.a n = A030530 n

end A030530

/-!
# A030531: Value of 3^x - 2^x - 5 for the solutions of 3^x - 2^x == 5 (mod 7).

The programs for A030531, there is no canonical definition to state claims against.
-/

/-! ## A030531.P18340103910182194616

`A001047(xor(1, 3*n)+1)-5`
-/

namespace A030531.P18340103910182194616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (Nat.xor 1 (3 * n) + 1) - 5

end

end A030531.P18340103910182194616

/-! ## A030531.P6944181649739573569

`A001047(2*or(1, n)+n)-5`
-/

namespace A030531.P6944181649739573569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (2 * Nat.lor 1 n + n) - 5

end

end A030531.P6944181649739573569

/-! ## A030531.P10528087220700428569

`A001047(lcm(2, or(1, n))+n)-5`
-/

namespace A030531.P10528087220700428569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (Nat.lcm 2 (Nat.lor 1 n) + n) - 5

end

end A030531.P10528087220700428569

/-! ## A030531.P16586407309219042501

`A001047(abs(xor(3*n, -2)))-5`
-/

namespace A030531.P16586407309219042501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 |Int.xor (3 * n : ℤ) (-2)|.toNat - 5

end

end A030531.P16586407309219042501

/-! ## A030531.P5742711922873637698

`A001047(-xor(3*n, -2))-5`
-/

namespace A030531.P5742711922873637698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (-Int.xor (3 * n : ℤ) (-2)).toNat - 5

end

end A030531.P5742711922873637698

/-! ## A030531.P15196393053347075444

`A001047(A047243(n+1))-5`
-/

namespace A030531.P15196393053347075444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A047243 (n + 1)).toNat - 5

end

end A030531.P15196393053347075444

/-! ## A030531.P11114739716151519774

`A001047(eq[3, A020639(or(1, n))])-5`
-/

namespace A030531.P11114739716151519774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 5

end

end A030531.P11114739716151519774

/-!
# A030532: Number of polyhexes of class PF2 with symmetry point group C_s.

The programs for A030532, there is no canonical definition to state claims against.
-/

/-! ## A030532.P11778536510788815799

`A002265(∑[A140766(n+1)]-3^floor(n/2))`
-/

namespace A030532.P11778536510788815799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A030532.P11778536510788815799

/-! ## A030532.P17616378084727390956

`A002265(A094434(n+2)/2-3^floor(n/2))`
-/

namespace A030532.P17616378084727390956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A094434 (n + 2) : ℚ) / 2 - (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A030532.P17616378084727390956

/-!
# A030533: Expansion of Molien series for 4-D extraspecial group 2^{1+2*2}.

The programs for A030533, the canonical program `A030533.P3021460525435085568` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030533 has offset 0).

The definition of A030533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030533.P3021460525435085568

`(n+1)*(2*n²+4*n+15+9*(-1)^n)/24`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030533

/-- `(n+1)*(2*n²+4*n+15+9*(-1)^n)/24` -/
def P3021460525435085568.Spec : Prop :=
  ∀ n, P3021460525435085568.a n = (A030533 n : ℚ)

end A030533

/-! ## A030533.P8466372106833580508

`∑[ceil(xor(1, n)/2)²]`
-/

namespace A030533.P8466372106833580508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P8466372106833580508

namespace A030533

/-- `∑[ceil(xor(1, n)/2)²]` -/
def P8466372106833580508.Spec : Prop :=
  ∀ n, P8466372106833580508.a n = A030533 n

end A030533

/-! ## A030533.P5379311133542417913

`∑[round(xor(1, n)/2)²]`
-/

namespace A030533.P5379311133542417913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P5379311133542417913

namespace A030533

/-- `∑[round(xor(1, n)/2)²]` -/
def P5379311133542417913.Spec : Prop :=
  ∀ n, P5379311133542417913.a n = A030533 n

end A030533

/-! ## A030533.P8249165582887324796

`∑[Δ[lcm(2, n)/2]²]`
-/

namespace A030533.P8249165582887324796
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P8249165582887324796

namespace A030533

/-- `∑[Δ[lcm(2, n)/2]²]` -/
def P8249165582887324796.Spec : Prop :=
  ∀ n, P8249165582887324796.a n = (A030533 n : ℚ)

end A030533

/-! ## A030533.P13464502093180795318

`∑[Δ[n/gcd(2, n)]²]`
-/

namespace A030533.P13464502093180795318
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P13464502093180795318

namespace A030533

/-- `∑[Δ[n/gcd(2, n)]²]` -/
def P13464502093180795318.Spec : Prop :=
  ∀ n, P13464502093180795318.a n = (A030533 n : ℚ)

end A030533

/-! ## A030533.P14184122235154942618

`∑[∑[1-a(n-1)]²]` with `a(0)=1, a(1)=-1`
-/

namespace A030533.P14184122235154942618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P14184122235154942618

namespace A030533

/-- `∑[∑[1-a(n-1)]²]` -/
def P14184122235154942618.Spec : Prop :=
  ∀ n, P14184122235154942618.a n = A030533 n

end A030533

/-! ## A030533.P16634441441145188740

`∑[A028242(n)²]`
-/

namespace A030533.P16634441441145188740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P16634441441145188740

namespace A030533

/-- `∑[A028242(n)²]` -/
def P16634441441145188740.Spec : Prop :=
  ∀ n, P16634441441145188740.a n = A030533 n

end A030533

/-! ## A030533.P12249192668269950336

`∑[∑[A280166(n)]]`
-/

namespace A030533.P12249192668269950336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P12249192668269950336

namespace A030533

/-- `∑[∑[A280166(n)]]` -/
def P12249192668269950336.Spec : Prop :=
  ∀ n, P12249192668269950336.a n = A030533 n

end A030533

/-! ## A030533.P6269826856971363123

`∑[1-A317300(n)]`
-/

namespace A030533.P6269826856971363123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A317300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P6269826856971363123

namespace A030533

/-- `∑[1-A317300(n)]` -/
def P6269826856971363123.Spec : Prop :=
  ∀ n, P6269826856971363123.a n = A030533 n

end A030533

/-! ## A030533.P6782689405137126847

`∑[(A130472(n)+1)²]`
-/

namespace A030533.P6782689405137126847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130472 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P6782689405137126847

namespace A030533

/-- `∑[(A130472(n)+1)²]` -/
def P6782689405137126847.Spec : Prop :=
  ∀ n, P6782689405137126847.a n = A030533 n

end A030533

/-! ## A030533.P7567766390062391353

`∑[(1-A001057(n))²]`
-/

namespace A030533.P7567766390062391353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001057 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P7567766390062391353

namespace A030533

/-- `∑[(1-A001057(n))²]` -/
def P7567766390062391353.Spec : Prop :=
  ∀ n, P7567766390062391353.a n = A030533 n

end A030533

/-! ## A030533.P11067037316575390261

`∑[(1-A195084(n))²]`
-/

namespace A030533.P11067037316575390261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A195084 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P11067037316575390261

namespace A030533

/-- `∑[(1-A195084(n))²]` -/
def P11067037316575390261.Spec : Prop :=
  ∀ n, P11067037316575390261.a n = A030533 n

end A030533

/-! ## A030533.P1134233408381806249

`∑[(2-A052938(n+1))²]`
-/

namespace A030533.P1134233408381806249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A052938 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P1134233408381806249

namespace A030533

/-- `∑[(2-A052938(n+1))²]` -/
def P1134233408381806249.Spec : Prop :=
  ∀ n, P1134233408381806249.a n = A030533 n

end A030533

/-! ## A030533.P14174369754990633725

`∑[(A168232(n+1)/2)²]`
-/

namespace A030533.P14174369754990633725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A168232 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P14174369754990633725

namespace A030533

/-- `∑[(A168232(n+1)/2)²]` -/
def P14174369754990633725.Spec : Prop :=
  ∀ n, P14174369754990633725.a n = (A030533 n : ℚ)

end A030533

/-! ## A030533.P16272417805248650757

`∑[(n+1-A014682(n))²]`
-/

namespace A030533.P16272417805248650757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A014682 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030533.P16272417805248650757

namespace A030533

/-- `∑[(n+1-A014682(n))²]` -/
def P16272417805248650757.Spec : Prop :=
  ∀ n, P16272417805248650757.a n = A030533 n

end A030533

/-! ## A030533.P16025323556434593073

`A236283(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A030533.P16025323556434593073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A236283 n + a (n - 2)

end

end A030533.P16025323556434593073

namespace A030533

/-- `A236283(n)+a(n-2)` -/
def P16025323556434593073.Spec : Prop :=
  ∀ n, P16025323556434593073.a n = A030533 n

end A030533

/-! ## A030533.P10578845111916149198

`A175287(n)+A008795(n)`
-/

namespace A030533.P10578845111916149198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n + A008795 n

end

end A030533.P10578845111916149198

namespace A030533

/-- `A175287(n)+A008795(n)` -/
def P10578845111916149198.Spec : Prop :=
  ∀ n, P10578845111916149198.a n = A030533 n

end A030533

/-! ## A030533.P13686831456435239608

`A005993(n)-A110654(n)²`
-/

namespace A030533.P13686831456435239608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n - A110654 n ^ 2

end

end A030533.P13686831456435239608

namespace A030533

/-- `A005993(n)-A110654(n)²` -/
def P13686831456435239608.Spec : Prop :=
  ∀ n, P13686831456435239608.a n = A030533 n

end A030533

/-! ## A030533.P367520095409952205

`A005993(n)-A008794(n+1)`
-/

namespace A030533.P367520095409952205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n - A008794 (n + 1)

end

end A030533.P367520095409952205

namespace A030533

/-- `A005993(n)-A008794(n+1)` -/
def P367520095409952205.Spec : Prop :=
  ∀ n, P367520095409952205.a n = A030533 n

end A030533

/-! ## A030533.P17322350845353246789

`A317614(n+1)-A212967(n)`
-/

namespace A030533.P17322350845353246789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) - A212967 n

end

end A030533.P17322350845353246789

namespace A030533

/-- `A317614(n+1)-A212967(n)` -/
def P17322350845353246789.Spec : Prop :=
  ∀ n, P17322350845353246789.a n = A030533 n

end A030533

/-!
# A030534: Number of polyhexes of class PF2.

The programs for A030534, there is no canonical definition to state claims against.
-/

/-! ## A030534.P4553811510700196452

`A004526(A179596(n))+A000458(n)`
-/

namespace A030534.P4553811510700196452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A179596 n).toNat + A000458 n

end

end A030534.P4553811510700196452

/-! ## A030534.P4664360127045200551

`A381991(A150952(n))`
-/

namespace A030534.P4664360127045200551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381991 (A150952 n).toNat

end

end A030534.P4664360127045200551

/-!
# A030538: a(n) = (2^n+2)*(2^n+4)*(4^n+9*2^n+38)/720.

The programs for A030538, the canonical program `A030538.P16310134890815451101` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030538 has offset 0).

The definition of A030538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030538.P16310134890815451101

`(2^n+2)*(2^n+4)*(4^n+9*2^n+38)/720`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030538

/-- `(2^n+2)*(2^n+4)*(4^n+9*2^n+38)/720` -/
def P16310134890815451101.Spec : Prop :=
  ∀ n, P16310134890815451101.a n = (A030538 n : ℚ)

end A030538

/-!
# A030539: (2^n+1)*(2^n+2)*(2^n+4)*(2^n+6)*(4^n+15*2^n+176)/8!.

The programs for A030539, there is no canonical definition to state claims against.
-/

/-! ## A030539.P8802650152376716648

`A108918(∏[abs(A046691(n))])`
-/

namespace A030539.P8802650152376716648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046691 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030539.P8802650152376716648

/-!
# A030540: Largest n-digit norep emirp.

The programs for A030540, there is no canonical definition to state claims against.
-/

/-! ## A030540.P15947962846176111125

`A046732(A131593(n+1))`
-/

namespace A030540.P15947962846176111125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (A131593 (n + 1)).toNat

end

end A030540.P15947962846176111125

/-! ## A030540.P10118497671562728270

`A046732(∑[A003684(n+1)])`
-/

namespace A030540.P10118497671562728270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030540.P10118497671562728270

/-!
# A030545: Remainder-numerators from Egyptian fraction expansion of 6/104651 using odd greedy algorithm.

The programs for A030545, there is no canonical definition to state claims against.
-/

/-! ## A030545.P6098501072484292625

`A130299(∑[or(3, n)])`
-/

namespace A030545.P6098501072484292625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130299 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030545.P6098501072484292625

/-! ## A030545.P4009877516991594887

`A130299(∑[n+1]+2)`
-/

namespace A030545.P4009877516991594887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130299 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A030545.P4009877516991594887

/-! ## A030545.P890793973079878388

`A131919(∑[n+2]-1)-floor(acot(n))`
-/

namespace A030545.P890793973079878388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131919 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A030545.P890793973079878388

/-! ## A030545.P1289938307746202828

`A130299(A025747(n)+2)%31`
-/

namespace A030545.P1289938307746202828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130299 (A025747 n + 2).toNat) 31

end

end A030545.P1289938307746202828

/-! ## A030545.P17853609950399737548

`A128220(A002828(n+3)+A000217(n))`
-/

namespace A030545.P17853609950399737548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128220 (A002828 (n + 3) + A000217 n).toNat

end

end A030545.P17853609950399737548

/-!
# A030546: Remainder-numerators from Egyptian fraction expansion of 5/5809 using odd greedy algorithm.

The programs for A030546, there is no canonical definition to state claims against.
-/

/-! ## A030546.P792615670804160730

`gcd(n+6, A034502(n+6))`
-/

namespace A030546.P792615670804160730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 6 : ℤ) (A034502 (n + 6))

end

end A030546.P792615670804160730

/-! ## A030546.P1311253540955215786

`gcd(n+6, A034486(A000929(n)))`
-/

namespace A030546.P1311253540955215786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 6 : ℤ) (A034486 (A000929 n).toNat)

end

end A030546.P1311253540955215786

/-! ## A030546.P7538075390304015270

`abs(A046770(A056672(n+4))-(n+6))`
-/

namespace A030546.P7538075390304015270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046770 (A056672 (n + 4)).toNat - (n + 6 : ℤ)|

end

end A030546.P7538075390304015270

/-! ## A030546.P15956879204082471699

`gcd(A020715(n), A025439(A336996(n)))`
-/

namespace A030546.P15956879204082471699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020715 n) (A025439 (A336996 n).toNat)

end

end A030546.P15956879204082471699

/-!
# A030547: Number of terms (including the initial term) needed to reach a palindrome when the Reverse Then Add! map (x -> x + (x-with-digits-reversed)) is repeatedly applied to n, or -1 if a palindrome is never reached.

The programs for A030547, there is no canonical definition to state claims against.
-/

/-! ## A030547.P7095844505211251965

`A033665(n+1)+1`
-/

namespace A030547.P7095844505211251965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (n + 1) + 1

end

end A030547.P7095844505211251965

/-! ## A030547.P3451606585253191766

`1-∑[-Δ[A033665(n)]]`
-/

namespace A030547.P3451606585253191766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030547.P3451606585253191766

/-! ## A030547.P13719172491059381531

`A199343(A033665(n+1))`
-/

namespace A030547.P13719172491059381531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A033665 (n + 1)).toNat

end

end A030547.P13719172491059381531

/-! ## A030547.P17692718212993044757

`1-Δ[A001489(∑[A033665(n)])]`
-/

namespace A030547.P17692718212993044757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A030547.P17692718212993044757

/-! ## A030547.P2867292894047246859

`1-Δ[A024000(∑[A033665(n)])]`
-/

namespace A030547.P2867292894047246859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A030547.P2867292894047246859

/-! ## A030547.P16253454617736984059

`A199343(A016016(n+1)%A070246(n+1))`
-/

namespace A030547.P16253454617736984059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (Int.tmod (A016016 (n + 1)) (A070246 (n + 1))).toNat

end

end A030547.P16253454617736984059

/-! ## A030547.P5584023117562363872

`A000005(A043537(n+1)^A016016(n+1))`
-/

namespace A030547.P5584023117562363872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A043537 (n + 1) : ℚ) ^ (A016016 (n + 1) : ℤ))).toNat

end

end A030547.P5584023117562363872

/-!
# A030548: Write n in base 6 and juxtapose.

The programs for A030548, there is no canonical definition to state claims against.
-/

/-! ## A030548.P17827940264886487300

`5-A030586(n+1)`
-/

namespace A030548.P17827940264886487300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A030586 (n + 1)

end

end A030548.P17827940264886487300

/-! ## A030548.P3340530888988337724

`a(n-1)-Δ[A030586(A028310(n))]` with `a(0)=1`
-/

namespace A030548.P3340530888988337724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A030548.P3340530888988337724

/-! ## A030548.P9982058018122138120

`A030586(n+1)*A033999(4*n+1)+5`
-/

namespace A030548.P9982058018122138120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1) * A033999 (4 * n + 1) + 5

end

end A030548.P9982058018122138120

/-! ## A030548.P7966807042541244423

`A055147(n+1)%6`
-/

namespace A030548.P7966807042541244423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055147 (n + 1)) 6

end

end A030548.P7966807042541244423

/-! ## A030548.P13200725144390271729

`A031007((n+1)^A014491(n+1))`
-/

namespace A030548.P13200725144390271729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A014491 (n + 1) : ℤ))).toNat

end

end A030548.P13200725144390271729

/-!
# A030549: Position of n-th 0 in A030548.

The programs for A030549, there is no canonical definition to state claims against.
-/

/-! ## A030549.P16397973684676971913

`eq[0, A030548(n+1)]+1`
-/

namespace A030549.P16397973684676971913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030549.P16397973684676971913

/-! ## A030549.P411778936619865844

`eq[5, A030586(n+1)]+1`
-/

namespace A030549.P411778936619865844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030549.P411778936619865844

/-! ## A030549.P472618059451752770

`eq[0, A030548(A028310(n))]`
-/

namespace A030549.P472618059451752770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030549.P472618059451752770

/-! ## A030549.P2532555731365359363

`A020725(eq[0, A030548(n+1)])`
-/

namespace A030549.P2532555731365359363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030549.P2532555731365359363

/-! ## A030549.P9964836540663590124

`eq[0, A030548(A138153(n+1))]`
-/

namespace A030549.P9964836540663590124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030549.P9964836540663590124

/-! ## A030549.P17084941197398949462

`eq[0, A030548(A065033(2*n))]`
-/

namespace A030549.P17084941197398949462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030549.P17084941197398949462

/-! ## A030549.P12458040293491284565

`eq[0, A030548(A233583(n+1))]`
-/

namespace A030549.P12458040293491284565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030549.P12458040293491284565

/-!
# A030550: Position of n-th 1 in A030548.

The programs for A030550, there is no canonical definition to state claims against.
-/

/-! ## A030550.P12310692905796217346

`eq[1, A030548(n+1)]+1`
-/

namespace A030550.P12310692905796217346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030550.P12310692905796217346

/-! ## A030550.P10669600209480872338

`eq[4, A030586(n+1)]+1`
-/

namespace A030550.P10669600209480872338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030550.P10669600209480872338

/-! ## A030550.P14929862101392647268

`eq[1, A030548(A000038(n)+n)]`
-/

namespace A030550.P14929862101392647268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030550.P14929862101392647268

/-! ## A030550.P12178159299387631532

`eq[1, A030548(abs(n-A000038(n)))]`
-/

namespace A030550.P12178159299387631532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030550.P12178159299387631532

/-! ## A030550.P9493232899084832792

`eq[A030548(A028310(n)), A054977(n)]`
-/

namespace A030550.P9493232899084832792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030550.P9493232899084832792

/-! ## A030550.P2244328792954284458

`eq[A030548(A028310(n)), A057427(n)]`
-/

namespace A030550.P2244328792954284458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030550.P2244328792954284458

/-! ## A030550.P12843672007432327758

`eq[A030548(A123108(2*n)), A057427(n)]`
-/

namespace A030550.P12843672007432327758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030550.P12843672007432327758

/-! ## A030550.P12178340909739010784

`eq[-A030548(A065033(2*n)), A057428(n)]`
-/

namespace A030550.P12178340909739010784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A030548 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030550.P12178340909739010784

/-! ## A030550.P8515302813132359076

`eq[A000466(n)%2, A030548(A123108(2*n))]`
-/

namespace A030550.P8515302813132359076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030550.P8515302813132359076

/-! ## A030550.P4492547793914380789

`eq[A057428(2*n)², A030548(A065033(2*n))]`
-/

namespace A030550.P4492547793914380789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030550.P4492547793914380789

/-!
# A030551: Position of n-th 2 in A030548.

The programs for A030551, there is no canonical definition to state claims against.
-/

/-! ## A030551.P17754485501963518223

`eq[2, A030548(n+1)]+1`
-/

namespace A030551.P17754485501963518223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030551.P17754485501963518223

/-! ## A030551.P8561931921338537127

`eq[3, A030586(n+1)]+1`
-/

namespace A030551.P8561931921338537127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030551.P8561931921338537127

/-! ## A030551.P3544184428723434019

`eq[2, A030548(A028310(n))]`
-/

namespace A030551.P3544184428723434019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030551.P3544184428723434019

/-! ## A030551.P15034244108248293768

`A020725(eq[2, A030548(n+1)])`
-/

namespace A030551.P15034244108248293768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030551.P15034244108248293768

/-! ## A030551.P11655902355133079383

`A020725(eq[3, A030586(n+1)])`
-/

namespace A030551.P11655902355133079383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030551.P11655902355133079383

/-! ## A030551.P10589363241683516056

`eq[2, A030548(A000007(n)+n)]`
-/

namespace A030551.P10589363241683516056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030551.P10589363241683516056

/-! ## A030551.P462496603271039582

`eq[2, A030548(A065033(2*n))]`
-/

namespace A030551.P462496603271039582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030551.P462496603271039582

/-! ## A030551.P9422801596851114165

`eq[2, A030548(A123108(2*n))]`
-/

namespace A030551.P9422801596851114165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030551.P9422801596851114165

/-!
# A030552: Position of n-th 3 in A030548.

The programs for A030552, there is no canonical definition to state claims against.
-/

/-! ## A030552.P5021324004288181908

`eq[2, A030586(n+1)]+1`
-/

namespace A030552.P5021324004288181908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030552.P5021324004288181908

/-! ## A030552.P9956130524821335165

`eq[3, A030548(n+1)]+1`
-/

namespace A030552.P9956130524821335165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030552.P9956130524821335165

/-! ## A030552.P8342019547113640337

`eq[2, A030586(A028310(n))]`
-/

namespace A030552.P8342019547113640337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030552.P8342019547113640337

/-! ## A030552.P7271155299551710717

`A020725(eq[2, A030586(n+1)])`
-/

namespace A030552.P7271155299551710717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030552.P7271155299551710717

/-! ## A030552.P11807146324298760133

`A020725(eq[3, A030548(n+1)])`
-/

namespace A030552.P11807146324298760133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030552.P11807146324298760133

/-! ## A030552.P14597365463235904002

`eq[2, A030586(A000007(n)+n)]`
-/

namespace A030552.P14597365463235904002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030552.P14597365463235904002

/-! ## A030552.P11206132429783278249

`eq[3, A030548(A065033(2*n))]`
-/

namespace A030552.P11206132429783278249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030552.P11206132429783278249

/-! ## A030552.P9181383322060432994

`eq[2, A030586(A233583(n+1))]`
-/

namespace A030552.P9181383322060432994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030552.P9181383322060432994

/-!
# A030553: Position of n-th 4 in A030548.

The programs for A030553, there is no canonical definition to state claims against.
-/

/-! ## A030553.P6162282208524002635

`eq[1, A030586(n+1)]+1`
-/

namespace A030553.P6162282208524002635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030553.P6162282208524002635

/-! ## A030553.P497712960775910218

`eq[1, A030586(A028310(n))]`
-/

namespace A030553.P497712960775910218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030553.P497712960775910218

/-! ## A030553.P10916446932542107802

`A020725(eq[1, A030586(n+1)])`
-/

namespace A030553.P10916446932542107802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030553.P10916446932542107802

/-! ## A030553.P13030135440793469049

`A020725(eq[4, A030548(n+1)])`
-/

namespace A030553.P13030135440793469049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030553.P13030135440793469049

/-! ## A030553.P11087551552567571647

`eq[1, A030586(A000007(n)+n)]`
-/

namespace A030553.P11087551552567571647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030553.P11087551552567571647

/-! ## A030553.P9141031192387606807

`A065475(eq[2, A030548(n+1)-2])`
-/

namespace A030553.P9141031192387606807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030553.P9141031192387606807

/-! ## A030553.P12120488060390124948

`A065475(eq[2, A030548(n+1)/2])`
-/

namespace A030553.P12120488060390124948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030548 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A030553.P12120488060390124948

/-! ## A030553.P2650713376489003554

`eq[4, A030548(A065033(2*n))]`
-/

namespace A030553.P2650713376489003554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030553.P2650713376489003554

/-! ## A030553.P15916000513705952215

`eq[4, A030548(A123108(2*n))]`
-/

namespace A030553.P15916000513705952215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030553.P15916000513705952215

/-! ## A030553.P15620772570646286470

`eq[1, A030586(A233583(n+1))]`
-/

namespace A030553.P15620772570646286470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030553.P15620772570646286470

/-!
# A030554: Position of n-th 5 in A030548.

The programs for A030554, there is no canonical definition to state claims against.
-/

/-! ## A030554.P10291718397965897760

`lt[4, A030548(n+1)]+1`
-/

namespace A030554.P10291718397965897760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030554.P10291718397965897760

/-! ## A030554.P13755260613296554890

`eq[0, A030586(A028310(n))]`
-/

namespace A030554.P13755260613296554890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030554.P13755260613296554890

/-! ## A030554.P15081019507246603919

`A020725(eq[0, A030586(n+1)])`
-/

namespace A030554.P15081019507246603919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030554.P15081019507246603919

/-! ## A030554.P15212917171060240650

`A020725(eq[5, A030548(n+1)])`
-/

namespace A030554.P15212917171060240650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030554.P15212917171060240650

/-! ## A030554.P17603355170144292460

`A065475(eq[5, A030548(n+1)])`
-/

namespace A030554.P17603355170144292460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030554.P17603355170144292460

/-! ## A030554.P13124060653174065101

`eq[0, A030586(A000007(n)+n)]`
-/

namespace A030554.P13124060653174065101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030554.P13124060653174065101

/-! ## A030554.P7449182828785738913

`eq[5, A030548(A000007(n)+n)]`
-/

namespace A030554.P7449182828785738913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030554.P7449182828785738913

/-! ## A030554.P15810146738108034537

`eq[5, A030548(A000038(n)+n)]`
-/

namespace A030554.P15810146738108034537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030554.P15810146738108034537

/-! ## A030554.P763109529846095169

`eq[5, A030548(abs(n-A000038(n)))]`
-/

namespace A030554.P763109529846095169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030554.P763109529846095169

/-! ## A030554.P16560231067852740251

`eq[5, A030548(A065033(2*n))]`
-/

namespace A030554.P16560231067852740251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030554.P16560231067852740251

/-! ## A030554.P4900633770665567256

`eq[5, A030548(A123108(2*n))]`
-/

namespace A030554.P4900633770665567256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030554.P4900633770665567256

/-! ## A030554.P14764170333432247797

`eq[5, A030548(A233583(n+1))]`
-/

namespace A030554.P14764170333432247797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030554.P14764170333432247797

/-!
# A030556: run length of n-th run of digit 0 in A030548.

The programs for A030556, there is no canonical definition to state claims against.
-/

/-! ## A030556.P2122401096265994632

`A030575(A153671(n+1)+1)`
-/

namespace A030556.P2122401096265994632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030575 (A153671 (n + 1) + 1).toNat

end

end A030556.P2122401096265994632

/-! ## A030556.P8782544343983163578

`or(A043286(A247424(n+1)), A055641(n))`
-/

namespace A030556.P8782544343983163578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043286 (A247424 (n + 1)).toNat) (A055641 n)

end

end A030556.P8782544343983163578

/-! ## A030556.P7037552297857667220

`ceil(ratio[A246127(5*n)])`
-/

namespace A030556.P7037552297857667220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246127 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A030556.P7037552297857667220

/-! ## A030556.P12738884846617639239

`dr(gcd(11, A283002(n+1)))`
-/

namespace A030556.P12738884846617639239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd 11 (A283002 (n + 1)) : ℤ)

end

end A030556.P12738884846617639239

/-! ## A030556.P13110992251444590739

`gcd(2, A268357(2*n+1)!)`
-/

namespace A030556.P13110992251444590739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.factorial (A268357 (2 * n + 1)).toNat)

end

end A030556.P13110992251444590739

/-! ## A030556.P17663572251322769610

`A334548(gcd((11*n)², Δ[n²]))`
-/

namespace A030556.P17663572251322769610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (Int.gcd ((11 * n) ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A030556.P17663572251322769610

/-! ## A030556.P2076587309890006006

`A087136(val(2*n+1, 11)^6)`
-/

namespace A030556.P2076587309890006006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087136 (SequenceMachineLib.valuation (2 * n + 1) 11 ^ 6)

end

end A030556.P2076587309890006006

/-! ## A030556.P18114568301434980491

`A000010(round(ratio[A246127(5*n)])²)`
-/

namespace A030556.P18114568301434980491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246127 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ 2).toNat

end

end A030556.P18114568301434980491

/-!
# A030557: Length of n-th run of digit 1 in A030548.

The programs for A030557, there is no canonical definition to state claims against.
-/

/-! ## A030557.P15298315239805112306

`A103755(∑[gcd(5, A030548(n+1))])`
-/

namespace A030557.P15298315239805112306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A030548 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030557.P15298315239805112306

/-! ## A030557.P614257684922467219

`A103755(A037468(n+1))`
-/

namespace A030557.P614257684922467219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103755 (A037468 (n + 1)).toNat

end

end A030557.P614257684922467219

/-! ## A030557.P2326605171230621585

`A103755(∑[gcd(n, A014946(n+1))])`
-/

namespace A030557.P2326605171230621585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A014946 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030557.P2326605171230621585

/-!
# A030558: Length of n-th run of digit 2 in A030548.

The programs for A030558, there is no canonical definition to state claims against.
-/

/-! ## A030558.P12027249378193333588

`gcd(A127029(n+1), A324725(A016777(3*n+1)))`
-/

namespace A030558.P12027249378193333588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127029 (n + 1)) (A324725 (A016777 (3 * n + 1)).toNat)

end

end A030558.P12027249378193333588

/-! ## A030558.P12460732991035571127

`gcd(A058965(n), A249683(A042948(n)))`
-/

namespace A030558.P12460732991035571127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058965 n) (A249683 (A042948 n).toNat)

end

end A030558.P12460732991035571127

/-! ## A030558.P14738350908632743843

`A253641(A003973(n+1)^A127324(n))`
-/

namespace A030558.P14738350908632743843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (SequenceMachineLib.roundAway ((A003973 (n + 1) : ℚ) ^ (A127324 n : ℤ))).toNat

end

end A030558.P14738350908632743843

/-! ## A030558.P18269230843392468882

`A031227(A387934(n))`
-/

namespace A030558.P18269230843392468882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031227 (A387934 n).toNat

end

end A030558.P18269230843392468882

/-!
# A030559: Length of n-th run of digit 3 in A030548.

The programs for A030559, there is no canonical definition to state claims against.
-/

/-! ## A030559.P13018401582513003620

`A030579(A137929(n+1))+C(n, A288243(n))`
-/

namespace A030559.P13018401582513003620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030579 (A137929 (n + 1)).toNat + (Nat.choose n (A288243 n).toNat : ℤ)

end

end A030559.P13018401582513003620

/-! ## A030559.P13923489322538086229

`A030579(A137929(n+1))-A214090(Δ[n²]²)`
-/

namespace A030559.P13923489322538086229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030579 (A137929 (n + 1)).toNat - A214090 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A030559.P13923489322538086229

/-! ## A030559.P9588507227017782285

`A030579(A137929(n+1))^A082062(Δ[n²]²)`
-/

namespace A030559.P9588507227017782285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030579 (A137929 (n + 1)).toNat : ℚ) ^ (A082062 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat : ℤ)

end

end A030559.P9588507227017782285

/-! ## A030559.P14220672054603654756

`gcd(A030579(A137929(n+1)), A071941(or(3, 2*n)²-2))`
-/

namespace A030559.P14220672054603654756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030579 (A137929 (n + 1)).toNat) (A071941 (Nat.lor 3 (2 * n) ^ 2 - 2))

end

end A030559.P14220672054603654756

/-! ## A030559.P35857605503068250

`A030579(A137929(n+1))^A056191(A056178(n))`
-/

namespace A030559.P35857605503068250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030579 (A137929 (n + 1)).toNat : ℚ) ^ (A056191 (A056178 n).toNat : ℤ)

end

end A030559.P35857605503068250

/-! ## A030559.P9434562280682247707

`A030579(A137929(n+1))+A003815(A096163(n+1))`
-/

namespace A030559.P9434562280682247707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030579 (A137929 (n + 1)).toNat + A003815 (A096163 (n + 1)).toNat

end

end A030559.P9434562280682247707

/-! ## A030559.P17257375622273420309

`A001222(A114367(n+2))*A030579(A137929(n+1))`
-/

namespace A030559.P17257375622273420309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114367 (n + 2)).toNat * A030579 (A137929 (n + 1)).toNat

end

end A030559.P17257375622273420309

/-!
# A030560: Length of n-th run of digit 4 in A030548.

The programs for A030560, there is no canonical definition to state claims against.
-/

/-! ## A030560.P890651590014200648

`A254046(gcd(A254070(n+1), A254198(n+1)))`
-/

namespace A030560.P890651590014200648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (Int.gcd (A254070 (n + 1)) (A254198 (n + 1)))

end

end A030560.P890651590014200648

/-! ## A030560.P8655436498119394772

`A348041(gcd(A360069(n+3), A360069(n)))`
-/

namespace A030560.P8655436498119394772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348041 (Int.gcd (A360069 (n + 3)) (A360069 n))

end

end A030560.P8655436498119394772

/-! ## A030560.P1427867299986904100

`gcd(A119632(A132749(n)), A270890(n+1))`
-/

namespace A030560.P1427867299986904100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119632 (A132749 n).toNat) (A270890 (n + 1))

end

end A030560.P1427867299986904100

/-!
# A030561: Length of n-th run of digit 5 in A030548.

The programs for A030561, there is no canonical definition to state claims against.
-/

/-! ## A030561.P10566432408917602957

`A145515(gcd(A063262(n), A141530(n)))`
-/

namespace A030561.P10566432408917602957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (Int.gcd (A063262 n) (A141530 n))

end

end A030561.P10566432408917602957

/-! ## A030561.P3384201011852264299

`A253641(gcd(A215236(n+2), A273847(n)))`
-/

namespace A030561.P3384201011852264299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (Int.gcd (A215236 (n + 2)) (A273847 n))

end

end A030561.P3384201011852264299

/-! ## A030561.P2996418912450717155

`A043284((n+1)*∏{e}[A001055(A293753(n+1)+1), #]+1)`
-/

namespace A030561.P2996418912450717155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A293753 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + 1)

end

end A030561.P2996418912450717155

/-! ## A030561.P17872513762641863471

`A083230(A197300(n+1))*A083230(n+2)`
-/

namespace A030561.P17872513762641863471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083230 (A197300 (n + 1)).toNat * A083230 (n + 2)

end

end A030561.P17872513762641863471

/-!
# A030563: a(n)=(# 1's)-(# 2's) in first n terms of A030548.

The programs for A030563, there is no canonical definition to state claims against.
-/

/-! ## A030563.P10911877396413598905

`∑[round(sin(A030548(n+1)²))]`
-/

namespace A030563.P10911877396413598905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A030548 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030563.P10911877396413598905

/-! ## A030563.P10358981220803751774

`A069010(A005578(n))-A010060(A051953(n+1))`
-/

namespace A030563.P10358981220803751774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A005578 n).toNat - A010060 (A051953 (n + 1)).toNat

end

end A030563.P10358981220803751774

/-!
# A030564: (# 2's)-(# 3's) in first n terms of A030548.

The programs for A030564, there is no canonical definition to state claims against.
-/

/-! ## A030564.P5075127444028900133

`A030584(A190482(n+1)+2)`
-/

namespace A030564.P5075127444028900133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030584 (A190482 (n + 1) + 2).toNat

end

end A030564.P5075127444028900133

/-!
# A030565: (# 3's)-(# 4's) in first n terms of A030548.

The programs for A030565, there is no canonical definition to state claims against.
-/

/-! ## A030565.P13848285139332293462

`val(A117464(A074909(n)), 10)`
-/

namespace A030565.P13848285139332293462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A117464 (A074909 n).toNat).toNat 10

end

end A030565.P13848285139332293462

/-! ## A030565.P12044745219125819676

`Δ[A103582(A131909(2*n))]²`
-/

namespace A030565.P12044745219125819676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103582 (A131909 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A030565.P12044745219125819676

/-! ## A030565.P383465968793464214

`A001222(gcd(A123519(n), A161973(3*(n+1))))`
-/

namespace A030565.P383465968793464214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A123519 n) (A161973 (3 * (n + 1))))

end

end A030565.P383465968793464214

/-! ## A030565.P7642487400614838364

`A144596(A132760(3*n+1)-A105113(n+2))`
-/

namespace A030565.P7642487400614838364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144596 (A132760 (3 * n + 1) - A105113 (n + 2)).toNat

end

end A030565.P7642487400614838364

/-! ## A030565.P13044547613297247805

`A277066(n+1)%A214211(n)`
-/

namespace A030565.P13044547613297247805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277066 (n + 1)) (A214211 n)

end

end A030565.P13044547613297247805

/-!
# A030566: a(n)=(# 4's)-(# 5's) in first n terms of A030548.

The programs for A030566, there is no canonical definition to state claims against.
-/

/-! ## A030566.P3589225322197932312

`A000035(A014682(n)*A312058(n))`
-/

namespace A030566.P3589225322197932312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014682 n * A312058 n).toNat

end

end A030566.P3589225322197932312

/-! ## A030566.P6555642419386215347

`A022003(A008642(n)%A245800(n+1))`
-/

namespace A030566.P6555642419386215347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (Int.tmod (A008642 n) (A245800 (n + 1))).toNat

end

end A030566.P6555642419386215347

/-! ## A030566.P17046951140424355499

`A188221(A087445(n+3)%A219142(3*n+5))`
-/

namespace A030566.P17046951140424355499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188221 (Int.tmod (A087445 (n + 3)) (A219142 (3 * n + 5))).toNat

end

end A030566.P17046951140424355499

/-! ## A030566.P13498659568859441015

`A079979(A188579(3*n+5)-floor(n/2))`
-/

namespace A030566.P13498659568859441015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A188579 (3 * n + 5) - ⌊(n : ℚ) / 2⌋).toNat

end

end A030566.P13498659568859441015

/-! ## A030566.P8670328515192590228

`A129251(A077609(n+4))^A258585(n+1)`
-/

namespace A030566.P8670328515192590228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129251 (A077609 (n + 4)).toNat : ℚ) ^ (A258585 (n + 1) : ℤ)

end

end A030566.P8670328515192590228

/-!
# A030567: Triangle T(n,k): Write n in base 6 and reverse order of digits to get row n.

The programs for A030567, there is no canonical definition to state claims against.
-/

/-! ## A030567.P6977357127469771910

`A218978(lt[A218978(n)!, A075220(n+5)])`
-/

namespace A030567.P6977357127469771910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A218978 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075220 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A030567.P6977357127469771910

/-! ## A030567.P8896950122329289268

`A031007(∑[∑{e}[A308949(n+1), #]])`
-/

namespace A030567.P8896950122329289268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308949 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030567.P8896950122329289268

/-! ## A030567.P7821860422240211925

`A031007(∑[A001222(A308949(n+1))])`
-/

namespace A030567.P7821860422240211925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A308949 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030567.P7821860422240211925

/-!
# A030568: Position of n-th 0 in A030567.

The programs for A030568, there is no canonical definition to state claims against.
-/

/-! ## A030568.P1666102608503797957

`eq[0, A030567(n)]`
-/

namespace A030568.P1666102608503797957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030568.P1666102608503797957

/-! ## A030568.P15756990208162487674

`lt[A030567(n), acot(A053828(n))]`
-/

namespace A030568.P15756990208162487674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A053828 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030568.P15756990208162487674

/-! ## A030568.P633312341417018532

`lt[A030567(n), acot(A031010(n+1))]`
-/

namespace A030568.P633312341417018532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A031010 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030568.P633312341417018532

/-! ## A030568.P6494170485293221498

`lt[A030567(n), A031242(A031243(n+1))]`
-/

namespace A030568.P6494170485293221498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031242 (A031243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030568.P6494170485293221498

/-! ## A030568.P9746646270588595617

`lt[A030567(n), A030567(A030569(n+1))]`
-/

namespace A030568.P9746646270588595617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (A030569 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030568.P9746646270588595617

/-! ## A030568.P11374692270612386814

`lt[A030567(n), A031235(A031237(n+1))]`
-/

namespace A030568.P11374692270612386814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A031237 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030568.P11374692270612386814

/-! ## A030568.P14834283280511826917

`lt[A030567(n), A144261(A005349(n+1))]`
-/

namespace A030568.P14834283280511826917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (A005349 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030568.P14834283280511826917

/-!
# A030569: Position of n-th 1 in A030567.

The programs for A030569, there is no canonical definition to state claims against.
-/

/-! ## A030569.P17069198078655861592

`eq[1, A030567(n)]`
-/

namespace A030569.P17069198078655861592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030569.P17069198078655861592

/-! ## A030569.P1165393562767284997

`lt[abs(A051340(3*n+4)-A030567(n)), 1]`
-/

namespace A030569.P1165393562767284997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051340 (3 * n + 4) - A030567 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030569.P1165393562767284997

/-!
# A030570: Position of n-th 2 in A030567.

The programs for A030570, there is no canonical definition to state claims against.
-/

/-! ## A030570.P12678130393836915310

`eq[2, A030567(n)]`
-/

namespace A030570.P12678130393836915310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030570.P12678130393836915310

/-! ## A030570.P5367533165294853896

`lt[(2-A030567(n))²*A008864(n+1), 1]`
-/

namespace A030570.P5367533165294853896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A030567 n) ^ 2 * A008864 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030570.P5367533165294853896

/-! ## A030570.P12780381758205383535

`lt[(2-A030567(n))², n/A215373(n+1)]`
-/

namespace A030570.P12780381758205383535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A030567 n) ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A215373 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A030570.P12780381758205383535

/-! ## A030570.P7331431507485638352

`lt[(2-A030567(n))², n/A338395(n+1)]`
-/

namespace A030570.P7331431507485638352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A030567 n) ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A338395 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A030570.P7331431507485638352

/-! ## A030570.P7876173190747665939

`lt[(2-A030567(n))², (n+2)/A027384(n+1)]`
-/

namespace A030570.P7876173190747665939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A030567 n) ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A027384 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A030570.P7876173190747665939

/-!
# A030571: Position of n-th 3 in A030567.

The programs for A030571, there is no canonical definition to state claims against.
-/

/-! ## A030571.P2904693371293223578

`eq[3, A030567(n)]`
-/

namespace A030571.P2904693371293223578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030571.P2904693371293223578

/-! ## A030571.P14227728991628766178

`eq[A020639(A181415(n+1)), A030586(n+1)]`
-/

namespace A030571.P14227728991628766178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A181415 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030571.P14227728991628766178

/-!
# A030572: Position of n-th 4 in A030567.

The programs for A030572, there is no canonical definition to state claims against.
-/

/-! ## A030572.P10426974825836385279

`eq[4, A030567(n)]`
-/

namespace A030572.P10426974825836385279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030572.P10426974825836385279

/-! ## A030572.P16012324249246198772

`lt[A030585(n+1), A030585(n+2)]+2`
-/

namespace A030572.P16012324249246198772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030585 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A030572.P16012324249246198772

/-! ## A030572.P17047964556387459641

`lt[(4-A030567(n))², A051634(n+1)%2]`
-/

namespace A030572.P17047964556387459641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A030567 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051634 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030572.P17047964556387459641

/-! ## A030572.P8450128443908140807

`lt[(4-A030567(n))², A209981(n+1)%2]`
-/

namespace A030572.P8450128443908140807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A030567 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209981 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030572.P8450128443908140807

/-! ## A030572.P16867833135985787444

`lt[(4-A030567(n))²*A005900(n)+7, 3*n]`
-/

namespace A030572.P16867833135985787444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A030567 n) ^ 2 * A005900 n + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030572.P16867833135985787444

/-! ## A030572.P14590017328868537076

`lt[((4-A030567(n))*(6*n+9))², A083538(n+1)]`
-/

namespace A030572.P14590017328868537076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 - A030567 n) * (6 * n + 9 : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030572.P14590017328868537076

/-! ## A030572.P4761674844858886904

`lt[(4-A030567(n))², A164294(n+1)%2]`
-/

namespace A030572.P4761674844858886904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A030567 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164294 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030572.P4761674844858886904

/-!
# A030573: Position of n-th 5 in A030567.

The programs for A030573, there is no canonical definition to state claims against.
-/

/-! ## A030573.P11750502384901175427

`lt[4, A030567(n)]`
-/

namespace A030573.P11750502384901175427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030573.P11750502384901175427

/-! ## A030573.P12051170105565423538

`eq[5, A030567(A028310(n))]`
-/

namespace A030573.P12051170105565423538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030573.P12051170105565423538

/-! ## A030573.P18398819406533147108

`eq[A030567(n), A168092(n)]`
-/

namespace A030573.P18398819406533147108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030573.P18398819406533147108

/-! ## A030573.P5548090189395208922

`eq[A030567(n), A094324(n+1)]`
-/

namespace A030573.P5548090189395208922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030573.P5548090189395208922

/-! ## A030573.P15722016236828286145

`eq[A030567(n), A128999(n+1)]`
-/

namespace A030573.P15722016236828286145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030573.P15722016236828286145

/-! ## A030573.P16440129153200084444

`eq[A030567(n), A210032(n+1)]`
-/

namespace A030573.P16440129153200084444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030573.P16440129153200084444

/-! ## A030573.P12024347231514359328

`eq[A030567(n), A374359(n+1)]`
-/

namespace A030573.P12024347231514359328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030573.P12024347231514359328

/-! ## A030573.P7017462904630756211

`eq[A030567(n), A350362(n+3)]`
-/

namespace A030573.P7017462904630756211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350362 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030573.P7017462904630756211

/-! ## A030573.P16851296610130843990

`eq[A030567(n), A267046(2*n)]`
-/

namespace A030573.P16851296610130843990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267046 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030573.P16851296610130843990

/-! ## A030573.P17946241599082233958

`eq[1, A030567(n)/A267046(A312669(n))]`
-/

namespace A030573.P17946241599082233958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030567 n : ℚ) / (A267046 (A312669 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A030573.P17946241599082233958

/-! ## A030573.P10533657174132394719

`eq[A030548(A030554(n+1)), A030567(n)]`
-/

namespace A030573.P10533657174132394719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A030554 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030573.P10533657174132394719

/-! ## A030573.P13845107905130904043

`eq[5, A030567(A233583(n+1))]`
-/

namespace A030573.P13845107905130904043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030573.P13845107905130904043

/-! ## A030573.P8451687066163870708

`eq[A030567(n), A031087(A031093(n+1))]`
-/

namespace A030573.P8451687066163870708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 (A031093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030573.P8451687066163870708

/-! ## A030573.P5758857401679831575

`eq[A030567(n), A031298(A031304(n+1))]`
-/

namespace A030573.P5758857401679831575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (A031304 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030573.P5758857401679831575

/-!
# A030575: Run length of n-th run of digit 0 in A030567.

The programs for A030575, there is no canonical definition to state claims against.
-/

/-! ## A030575.P18331950378759130547

`A030556(n^floor(sqrt(a(n-1))))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A030575.P18331950378759130547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A030556 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.sqrt (a (n - 1)) : ℤ))).toNat

end

end A030575.P18331950378759130547

/-! ## A030575.P3156926202056851674

`A030556(A128760(4*(n+2))+n)`
-/

namespace A030575.P3156926202056851674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (A128760 (4 * (n + 2)) + (n : ℤ)).toNat

end

end A030575.P3156926202056851674

/-! ## A030575.P2178848379054248842

`A030556(A002260(∑[n+3]))`
-/

namespace A030575.P2178848379054248842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030575.P2178848379054248842

/-! ## A030575.P660939527333585661

`A030556(A328902(∑[n]))`
-/

namespace A030575.P660939527333585661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (A328902 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030575.P660939527333585661

/-! ## A030575.P16389190382770014607

`A030556(A134478(∑[n]))`
-/

namespace A030575.P16389190382770014607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030575.P16389190382770014607

/-! ## A030575.P10630116759283698674

`A030556(A144328(∑[n+1]))`
-/

namespace A030575.P10630116759283698674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (A144328 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030575.P10630116759283698674

/-! ## A030575.P8622607422897408826

`A030556(n^A178334(n))`
-/

namespace A030575.P8622607422897408826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A030575.P8622607422897408826

/-! ## A030575.P9793231259810938171

`A030556(A137735(n²))`
-/

namespace A030575.P9793231259810938171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (A137735 (n ^ 2)).toNat

end

end A030575.P9793231259810938171

/-! ## A030575.P6392442986494499873

`A237984(gcd((n+1)^5-n^5, n*(2*n-1)))`
-/

namespace A030575.P6392442986494499873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237984 (Int.gcd (((n + 1) ^ 5 : ℤ) - (n ^ 5 : ℤ)) ((n : ℤ) * ((2 * n : ℤ) - 1)))

end

end A030575.P6392442986494499873

/-!
# A030577: Length of n-th run of digit 2 in A030567.

The programs for A030577, there is no canonical definition to state claims against.
-/

/-! ## A030577.P6182110802948933634

`gcd(n, A010176(A097004(n)))`
-/

namespace A030577.P6182110802948933634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A010176 (A097004 n).toNat)

end

end A030577.P6182110802948933634

/-! ## A030577.P2320065366099005963

`∏{e}[A261327(A010000(n)), #]`
-/

namespace A030577.P2320065366099005963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (A010000 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A030577.P2320065366099005963

/-! ## A030577.P3064384880014405998

`∏{e}[A261327(A059100(n)), #]`
-/

namespace A030577.P3064384880014405998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (A059100 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A030577.P3064384880014405998

/-! ## A030577.P6301616957501248317

`gcd(A007094(n), A342635(A097004(n)))`
-/

namespace A030577.P6301616957501248317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007094 n) (A342635 (A097004 n).toNat)

end

end A030577.P6301616957501248317

/-!
# A030578: Length of n-th run of digit 3 in A030567.

The programs for A030578, there is no canonical definition to state claims against.
-/

/-! ## A030578.P10215647969943390091

`gcd(A204289(n+1), A249143(n+1))`
-/

namespace A030578.P10215647969943390091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204289 (n + 1)) (A249143 (n + 1))

end

end A030578.P10215647969943390091

/-! ## A030578.P51976161507474809

`gcd(A007318(A347689(3*(n+1))), A225693(n+1))`
-/

namespace A030578.P51976161507474809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (A347689 (3 * (n + 1))).toNat) (A225693 (n + 1))

end

end A030578.P51976161507474809

/-! ## A030578.P17093623838543805779

`A055229(∑[∑[n+1]]-A000120(n))`
-/

namespace A030578.P17093623838543805779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000120 n).toNat

end

end A030578.P17093623838543805779

/-! ## A030578.P10177657313719361997

`A178094(gcd(A178064(n+1), A178155(n+1)))`
-/

namespace A030578.P10177657313719361997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178094 (Int.gcd (A178064 (n + 1)) (A178155 (n + 1)))

end

end A030578.P10177657313719361997

/-!
# A030579: Length of n-th run of digit 4 in A030567.

The programs for A030579, there is no canonical definition to state claims against.
-/

/-! ## A030579.P11682372188403894643

`round(root(A319320(n+10), A137564(2*(n+4))))`
-/

namespace A030579.P11682372188403894643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319320 (n + 10) : ℝ) ^ (1 / (A137564 (2 * (n + 4)) : ℝ)))

end

end A030579.P11682372188403894643

/-! ## A030579.P9095246156017783770

`A034836(A125713(n+1)+A107846(n+4))`
-/

namespace A030579.P9095246156017783770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (A125713 (n + 1) + A107846 (n + 4)).toNat

end

end A030579.P9095246156017783770

/-! ## A030579.P11368653047026125120

`or(A043284(n+4), A286490(A019546(n+16)))`
-/

namespace A030579.P11368653047026125120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043284 (n + 4)) (A286490 (A019546 (n + 16)).toNat)

end

end A030579.P11368653047026125120

/-! ## A030579.P9309168615091770525

`and(p?[A046861(n+1)], A030580(n+3))`
-/

namespace A030579.P9309168615091770525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A030580 (n + 3))

end

end A030579.P9309168615091770525

/-!
# A030580: Length of n-th run of digit 5 in A030567.

The programs for A030580, there is no canonical definition to state claims against.
-/

/-! ## A030580.P9884011414033735635

`ceil(A328278(n+4)/A328326(n+1))`
-/

namespace A030580.P9884011414033735635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328278 (n + 4) : ℚ) / (A328326 (n + 1) : ℚ)⌉

end

end A030580.P9884011414033735635

/-! ## A030580.P91587998144147192

`Δ[A100935(n+1)]*A100910(n+2)+1`
-/

namespace A030580.P91587998144147192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A100910 (n + 2) + 1

end

end A030580.P91587998144147192

/-! ## A030580.P857526017627104115

`or(A000007(A326630(n)), A083230(n+2))`
-/

namespace A030580.P857526017627104115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A326630 n).toNat) (A083230 (n + 2))

end

end A030580.P857526017627104115

/-! ## A030580.P11544908044804917356

`Δ[A100935(n+2)]^A100910(n+2)`
-/

namespace A030580.P11544908044804917356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100935 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A100910 (n + 2) : ℤ)

end

end A030580.P11544908044804917356

/-! ## A030580.P1429704637519589696

`A035931(gcd(A022965(n), A280163(n+2)))`
-/

namespace A030580.P1429704637519589696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (Int.gcd (A022965 n) (A280163 (n + 2)))

end

end A030580.P1429704637519589696

/-! ## A030580.P9174905449323299711

`A215406(Δ[A334526(n+1)])`
-/

namespace A030580.P9174905449323299711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (f1 (n + 1) - f1 n).toNat

end

end A030580.P9174905449323299711

/-! ## A030580.P15344163653801196512

`A001222(Δ[A334526(n+1)]+15)`
-/

namespace A030580.P15344163653801196512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 15).toNat

end

end A030580.P15344163653801196512

/-! ## A030580.P2742380423976427338

`A006530(ceil(Δ[A334526(n+1)]/5))`
-/

namespace A030580.P2742380423976427338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈(f1 (n + 1) - f1 n : ℚ) / 5⌉.toNat

end

end A030580.P2742380423976427338

/-! ## A030580.P9618752751665303338

`∏{e}[A049639(Δ[A334526(n+1)])+1, #+1]`
-/

namespace A030580.P9618752751665303338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334526 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A030580.P9618752751665303338

/-!
# A030582: a(n)=(# 1's)-(# 2's) in first n terms of A030567.

The programs for A030582, there is no canonical definition to state claims against.
-/

/-! ## A030582.P13861923757183043253

`A286744(n)+A275737(A181804(n+5))`
-/

namespace A030582.P13861923757183043253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286744 n + A275737 (A181804 (n + 5)).toNat

end

end A030582.P13861923757183043253

/-! ## A030582.P15271672419481776061

`A286747(A157641(n))+A286744(n)`
-/

namespace A030582.P15271672419481776061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286747 (A157641 n).toNat + A286744 n

end

end A030582.P15271672419481776061

/-! ## A030582.P12852920507747288047

`A286744(n)+A025469(A184467(n+1))`
-/

namespace A030582.P12852920507747288047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286744 n + A025469 (A184467 (n + 1)).toNat

end

end A030582.P12852920507747288047

/-!
# A030584: (# 3's)-(# 4's) in first n terms of A030567.

The programs for A030584, there is no canonical definition to state claims against.
-/

/-! ## A030584.P5004500808258169583

`val(A345394(A065628(n+1)), 5)`
-/

namespace A030584.P5004500808258169583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A345394 (A065628 (n + 1)).toNat).toNat 5

end

end A030584.P5004500808258169583

/-! ## A030584.P13045355808152918838

`val(A055802(A250140(n+1)), 7)`
-/

namespace A030584.P13045355808152918838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055802 (A250140 (n + 1)).toNat).toNat 7

end

end A030584.P13045355808152918838

/-! ## A030584.P14992474629944837014

`and(1, A347186(A342818(2*n+1)))`
-/

namespace A030584.P14992474629944837014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A347186 (A342818 (2 * n + 1)).toNat)

end

end A030584.P14992474629944837014

/-! ## A030584.P6448741753056759069

`A001222(gcd((12*n+11)^6, A119252(n+1)))`
-/

namespace A030584.P6448741753056759069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd ((12 * n + 11) ^ 6 : ℤ) (A119252 (n + 1)))

end

end A030584.P6448741753056759069

/-! ## A030584.P7156674184597838624

`A189920(A003754(n+5)*A254827(n+1))`
-/

namespace A030584.P7156674184597838624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189920 (A003754 (n + 5) * A254827 (n + 1)).toNat

end

end A030584.P7156674184597838624

/-!
# A030585: (# 4's)-(# 5's) in first n terms of A030567.

The programs for A030585, there is no canonical definition to state claims against.
-/

/-! ## A030585.P8751298326835057702

`A080339(xor(A114807(2*n+5), A222813(n+1))+1)`
-/

namespace A030585.P8751298326835057702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (Int.xor (A114807 (2 * n + 5)) (A222813 (n + 1)) + 1).toNat

end

end A030585.P8751298326835057702

/-! ## A030585.P11693811579500590742

`A257000(A207328(n)^A008621(n))`
-/

namespace A030585.P11693811579500590742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (SequenceMachineLib.roundAway ((A207328 n : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A030585.P11693811579500590742

/-! ## A030585.P10113769822313920764

`A214406(n+2)%A381440(A156262(2*(n+1)))`
-/

namespace A030585.P10113769822313920764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214406 (n + 2)) (A381440 (A156262 (2 * (n + 1))).toNat)

end

end A030585.P10113769822313920764

/-! ## A030585.P3900196573150196010

`A155860(A191063(n+1))%A378397(2*n+5)`
-/

namespace A030585.P3900196573150196010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155860 (A191063 (n + 1)).toNat) (A378397 (2 * n + 5))

end

end A030585.P3900196573150196010

/-! ## A030585.P4130774316747584011

`A341027(xor(A004488(n), A052404(n+3)))`
-/

namespace A030585.P4130774316747584011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((Int.xor (A004488 n) (A052404 (n + 3))).toNat + 220)

end

end A030585.P4130774316747584011

/-!
# A030586: Write n in base 6, then complement each digit (d -> 5-d) and juxtapose.

The programs for A030586, there is no canonical definition to state claims against.
-/

/-! ## A030586.P11765532659321610881

`5-A030548(n+1)`
-/

namespace A030586.P11765532659321610881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A030548 (n + 1)

end

end A030586.P11765532659321610881

/-! ## A030586.P220636545635454436

`or(-A030548(n+1), A000007(n))+5`
-/

namespace A030586.P220636545635454436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A030548 (n + 1)) (A000007 n) + 5

end

end A030586.P220636545635454436

/-! ## A030586.P14448752698522773402

`or(-A030548(n+1), A000038(n))+5`
-/

namespace A030586.P14448752698522773402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A030548 (n + 1)) (A000038 n) + 5

end

end A030586.P14448752698522773402

/-! ## A030586.P1898837746842369756

`A030548(n+1)*A332814(A332812(n+1))+5`
-/

namespace A030586.P1898837746842369756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (n + 1) * A332814 (A332812 (n + 1)).toNat + 5

end

end A030586.P1898837746842369756

/-! ## A030586.P5727885815581096677

`4-Δ[∑[A030548(A028310(n))]-n]`
-/

namespace A030586.P5727885815581096677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A030586.P5727885815581096677

/-! ## A030586.P13264193829408762469

`5-A055147(n+1)%6`
-/

namespace A030586.P13264193829408762469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (A055147 (n + 1)) 6

end

end A030586.P13264193829408762469

/-!
# A030588: Write odd numbers in base 6 and juxtapose.

The programs for A030588, there is no canonical definition to state claims against.
-/

/-! ## A030588.P16524831494443404645

`A031057(lt[A106453(3*n+5), A065747(n+5)])`
-/

namespace A030588.P16524831494443404645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106453 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065747 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030588.P16524831494443404645

/-! ## A030588.P14936937831397983143

`A030567(lt[A269950(2*n+3), A269949(2*(n+1))])`
-/

namespace A030588.P14936937831397983143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269950 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269949 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030588.P14936937831397983143

/-!
# A030589: Position of n-th 0 in A030588.

The programs for A030589, there is no canonical definition to state claims against.
-/

/-! ## A030589.P9661815040808843037

`eq[0, A030588(n+2)]+2`
-/

namespace A030589.P9661815040808843037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A030589.P9661815040808843037

/-! ## A030589.P15454468222997354718

`lt[A030588(n+1), 1]+1`
-/

namespace A030589.P15454468222997354718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030589.P15454468222997354718

/-! ## A030589.P10112234800526133127

`eq[0, A030588(A028310(n))]`
-/

namespace A030589.P10112234800526133127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030589.P10112234800526133127

/-! ## A030589.P13995389242947720607

`A065475(eq[0, A030588(n+1)])`
-/

namespace A030589.P13995389242947720607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030589.P13995389242947720607

/-! ## A030589.P7745051672597293690

`eq[0, A030588(A138153(n+1))]`
-/

namespace A030589.P7745051672597293690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030589.P7745051672597293690

/-! ## A030589.P2051890009351411383

`eq[0, A030588(1-(n-A004273(n)))]`
-/

namespace A030589.P2051890009351411383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (1 - ((n : ℤ) - A004273 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030589.P2051890009351411383

/-! ## A030589.P9285406589900435809

`eq[0, A030588(A233583(n+1))]`
-/

namespace A030589.P9285406589900435809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030589.P9285406589900435809

/-!
# A030590: Position of n-th 1 in A030588.

The programs for A030590, there is no canonical definition to state claims against.
-/

/-! ## A030590.P779540456990435805

`eq[1, A030588(n+1)]+1`
-/

namespace A030590.P779540456990435805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030590.P779540456990435805

/-! ## A030590.P7910352833243607170

`eq[1, A030588(A000038(n)+n)]`
-/

namespace A030590.P7910352833243607170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030590.P7910352833243607170

/-! ## A030590.P2900231139117646442

`eq[A000038(n)!, A030588(A028310(n))]`
-/

namespace A030590.P2900231139117646442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030590.P2900231139117646442

/-! ## A030590.P12847481828735475936

`eq[A030588(A028310(n)), A054977(n)]`
-/

namespace A030590.P12847481828735475936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030590.P12847481828735475936

/-! ## A030590.P11749075435390615672

`eq[A030588(A028310(n)), A057427(n)]`
-/

namespace A030590.P11749075435390615672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030590.P11749075435390615672

/-!
# A030591: Position of n-th 2 in A030588.

The programs for A030591, there is no canonical definition to state claims against.
-/

/-! ## A030591.P3727929138760841726

`eq[2, A030588(n+1)]+1`
-/

namespace A030591.P3727929138760841726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030591.P3727929138760841726

/-! ## A030591.P11900903712886875170

`eq[2, A030588(A028310(n))]`
-/

namespace A030591.P11900903712886875170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030591.P11900903712886875170

/-! ## A030591.P2835826873656298703

`eq[2, A030588(A060000(n+1))]`
-/

namespace A030591.P2835826873656298703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030591.P2835826873656298703

/-! ## A030591.P16083128539383720601

`A065475(eq[2, A030588(n+1)])`
-/

namespace A030591.P16083128539383720601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030591.P16083128539383720601

/-! ## A030591.P991174614539666047

`eq[2, A030588(A138153(n+1))]`
-/

namespace A030591.P991174614539666047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030591.P991174614539666047

/-! ## A030591.P17857020370215758982

`eq[2, A030588(A000007(n)+n)]`
-/

namespace A030591.P17857020370215758982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030591.P17857020370215758982

/-! ## A030591.P18380300293187946023

`eq[2, A030588(A000038(n)+n)]`
-/

namespace A030591.P18380300293187946023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030591.P18380300293187946023

/-! ## A030591.P193878489428467727

`eq[2, A030588(gcd(n, A008706(n)))]`
-/

namespace A030591.P193878489428467727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030591.P193878489428467727

/-! ## A030591.P16093381450517533684

`eq[2, A030588(A233583(n+1))]`
-/

namespace A030591.P16093381450517533684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030591.P16093381450517533684

/-!
# A030592: Position of n-th 3 in A030588.

The programs for A030592, there is no canonical definition to state claims against.
-/

/-! ## A030592.P1473319149704639459

`eq[3, A030588(n+1)]+1`
-/

namespace A030592.P1473319149704639459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030592.P1473319149704639459

/-! ## A030592.P2925841268123701024

`eq[3, A030588(n^floor(atan(n)))]`
-/

namespace A030592.P2925841268123701024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030592.P2925841268123701024

/-! ## A030592.P7959290197520225749

`A344180(eq[3, A030588(A344180(n))])`
-/

namespace A030592.P7959290197520225749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030592.P7959290197520225749

/-! ## A030592.P16607747634709997153

`eq[3, A030588(A028310(n))]`
-/

namespace A030592.P16607747634709997153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030592.P16607747634709997153

/-! ## A030592.P7038099184157383483

`eq[3, A030588(A000007(n)+n)]`
-/

namespace A030592.P7038099184157383483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030592.P7038099184157383483

/-! ## A030592.P8160593055744010099

`eq[3, A030588(gcd(n, A008706(n)))]`
-/

namespace A030592.P8160593055744010099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030592.P8160593055744010099

/-! ## A030592.P9041935252395538679

`eq[3, A030588(1-(n-A004273(n)))]`
-/

namespace A030592.P9041935252395538679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (1 - ((n : ℤ) - A004273 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030592.P9041935252395538679

/-!
# A030593: Position of n-th 4 in A030588.

The programs for A030593, there is no canonical definition to state claims against.
-/

/-! ## A030593.P15084029988812567221

`eq[4, A030588(n+1)]+1`
-/

namespace A030593.P15084029988812567221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030593.P15084029988812567221

/-! ## A030593.P3783878988091606922

`eq[4, A030588(n^floor(atan(n)))]`
-/

namespace A030593.P3783878988091606922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030593.P3783878988091606922

/-! ## A030593.P17112774919441941925

`eq[4, A030588(A028310(n))]`
-/

namespace A030593.P17112774919441941925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030593.P17112774919441941925

/-! ## A030593.P12861988942806937518

`eq[4, A030588(A060000(n+1))]`
-/

namespace A030593.P12861988942806937518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030593.P12861988942806937518

/-! ## A030593.P5644203644356610420

`eq[4, A030588(A138153(n+1))]`
-/

namespace A030593.P5644203644356610420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030593.P5644203644356610420

/-! ## A030593.P4748146403533350230

`eq[4, A030588(gcd(n, A008706(n)))]`
-/

namespace A030593.P4748146403533350230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030593.P4748146403533350230

/-! ## A030593.P317670224290359889

`eq[4, A030588(A233583(n+1))]`
-/

namespace A030593.P317670224290359889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030593.P317670224290359889

/-!
# A030594: Position of n-th 5 in A030588.

The programs for A030594, there is no canonical definition to state claims against.
-/

/-! ## A030594.P9694451076781969916

`eq[5, A030588(n+1)]+1`
-/

namespace A030594.P9694451076781969916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030594.P9694451076781969916

/-! ## A030594.P7331552474377923687

`eq[5, A030588(A028310(n))]`
-/

namespace A030594.P7331552474377923687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030594.P7331552474377923687

/-! ## A030594.P605711413025291547

`eq[5, A030588(A000007(n)+n)]`
-/

namespace A030594.P605711413025291547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030594.P605711413025291547

/-! ## A030594.P6448935552553124492

`eq[5, A030588(gcd(n, A008706(n)))]`
-/

namespace A030594.P6448935552553124492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030594.P6448935552553124492

/-! ## A030594.P2670642791486025609

`eq[5, A030588(1-(n-A004273(n)))]`
-/

namespace A030594.P2670642791486025609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (1 - ((n : ℤ) - A004273 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030594.P2670642791486025609

/-! ## A030594.P5268917566381743010

`eq[5, A030588(A233583(n+1))]`
-/

namespace A030594.P5268917566381743010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030594.P5268917566381743010

/-!
# A030597: Length of n-th run of digit 2 in A030588.

The programs for A030597, there is no canonical definition to state claims against.
-/

/-! ## A030597.P7183592569696129414

`A332292(A081676(n+1)%A081676(n+4))`
-/

namespace A030597.P7183592569696129414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332292 (Int.tmod (A081676 (n + 1)) (A081676 (n + 4))).toNat

end

end A030597.P7183592569696129414

/-! ## A030597.P2723061904788792402

`A316864(A112955(∑[char[3*n]]))!`
-/

namespace A030597.P2723061904788792402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A316864 (A112955 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A030597.P2723061904788792402

/-! ## A030597.P2820938294286971544

`A144260(gcd(A093995(n+1), A328572(n)))`
-/

namespace A030597.P2820938294286971544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144260 (Int.gcd (A093995 (n + 1)) (A328572 n))

end

end A030597.P2820938294286971544

/-! ## A030597.P5243812203957512487

`val(A092006(∑[char[3*n]]), 8)`
-/

namespace A030597.P5243812203957512487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A092006 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 8

end

end A030597.P5243812203957512487

/-! ## A030597.P11066729965813695130

`A030556(A030545(floor(n/3)))`
-/

namespace A030597.P11066729965813695130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030556 (A030545 ⌊(n : ℚ) / 3⌋.toNat).toNat

end

end A030597.P11066729965813695130

/-! ## A030597.P912474772859988320

`gcd(A043278(A002024(n+1)), A351319(n+1))`
-/

namespace A030597.P912474772859988320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043278 (A002024 (n + 1)).toNat) (A351319 (n + 1))

end

end A030597.P912474772859988320

/-! ## A030597.P17076421126964698878

`A055090(A348386(n+1))`
-/

namespace A030597.P17076421126964698878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 (A348386 (n + 1)).toNat

end

end A030597.P17076421126964698878

/-! ## A030597.P15066291459267676216

`A030599(A124867(n+1))`
-/

namespace A030597.P15066291459267676216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030599 (A124867 (n + 1)).toNat

end

end A030597.P15066291459267676216

/-!
# A030598: Length of n-th run of digit 3 in A030588.

The programs for A030598, there is no canonical definition to state claims against.
-/

/-! ## A030598.P9892240530520903346

`A328457(A272090(3*n+4)+A058223(3*(n+1)))`
-/

namespace A030598.P9892240530520903346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (A272090 (3 * n + 4) + A058223 (3 * (n + 1))).toNat

end

end A030598.P9892240530520903346

/-! ## A030598.P9474194358047234114

`A033630(A380241(n)+A257083(n))`
-/

namespace A030598.P9474194358047234114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A380241 n + A257083 n).toNat

end

end A030598.P9474194358047234114

/-! ## A030598.P2449143106595305708

`gcd(A094698(n+1), A289816(A289815(n)))`
-/

namespace A030598.P2449143106595305708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094698 (n + 1)) (A289816 (A289815 n).toNat)

end

end A030598.P2449143106595305708

/-!
# A030599: Length of n-th run of digit 4 in A030588.

The programs for A030599, there is no canonical definition to state claims against.
-/

/-! ## A030599.P2737293801011686412

`A043284(∑[A100833(∑[n+1]+1)]-n+1)`
-/

namespace A030599.P2737293801011686412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100833 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) + 1).toNat

end

end A030599.P2737293801011686412

/-! ## A030599.P9061680054474337605

`A043284(A141213(A002264(n)))`
-/

namespace A030599.P9061680054474337605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A141213 (A002264 n).toNat).toNat

end

end A030599.P9061680054474337605

/-! ## A030599.P5149589100682677340

`(A044797(A002264(n)+1)+A036225(A353305(n)))%4`
-/

namespace A030599.P5149589100682677340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044797 (A002264 n + 1).toNat + A036225 (A353305 n).toNat) 4

end

end A030599.P5149589100682677340

/-! ## A030599.P10466735957890089136

`gcd(A079882(n), A146418(A008620(n)))`
-/

namespace A030599.P10466735957890089136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079882 n) (A146418 (A008620 n).toNat)

end

end A030599.P10466735957890089136

/-! ## A030599.P17722219029442257081

`A035214(13*A132328(n))`
-/

namespace A030599.P17722219029442257081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (13 * A132328 n).toNat

end

end A030599.P17722219029442257081

/-! ## A030599.P15558462608354898062

`A035214(lcm(13, A132328(n)))`
-/

namespace A030599.P15558462608354898062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (Int.lcm 13 (A132328 n))

end

end A030599.P15558462608354898062

/-! ## A030599.P341652639567472381

`∏{e}[A007318(A105590(n)), #]`
-/

namespace A030599.P341652639567472381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A105590 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A030599.P341652639567472381

