import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A231400: Number of (4+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231400, there is no canonical definition to state claims against.
-/

/-! ## A231400.P16686262991681289943

`A231396(∑[n+3]+7)`
-/

namespace A231400.P16686262991681289943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231400.P16686262991681289943

/-!
# A231401: Number of (5+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231401, there is no canonical definition to state claims against.
-/

/-! ## A231401.P1861366473474134275

`A231396(A167499(n+3))`
-/

namespace A231401.P1861366473474134275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A167499 (n + 3)).toNat

end

end A231401.P1861366473474134275

/-! ## A231401.P13452065188500733707

`A231396(A155212(n)+13)`
-/

namespace A231401.P13452065188500733707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A155212 n + 13).toNat

end

end A231401.P13452065188500733707

/-! ## A231401.P3963378748296012046

`A231396(A056000(n)+15)`
-/

namespace A231401.P3963378748296012046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A056000 n + 15).toNat

end

end A231401.P3963378748296012046

/-! ## A231401.P4080420209246471767

`A231396(eq[7, A066657(n)])`
-/

namespace A231401.P4080420209246471767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231401.P4080420209246471767

/-! ## A231401.P13940043043015189842

`A231396(A145018(n+5)+1)`
-/

namespace A231401.P13940043043015189842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A145018 (n + 5) + 1).toNat

end

end A231401.P13940043043015189842

/-!
# A231402: Number of (6+1) X (n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231402, there is no canonical definition to state claims against.
-/

/-! ## A231402.P2661011833770044584

`A231396(A166136(n+4))`
-/

namespace A231402.P2661011833770044584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A166136 (n + 4)).toNat

end

end A231402.P2661011833770044584

/-! ## A231402.P3845071647855141455

`A231396(A056115(n)+21)`
-/

namespace A231402.P3845071647855141455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A056115 n + 21).toNat

end

end A231402.P3845071647855141455

/-! ## A231402.P9162069661773199633

`A231396(A167499(n+4)+1)`
-/

namespace A231402.P9162069661773199633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A167499 (n + 4) + 1).toNat

end

end A231402.P9162069661773199633

/-! ## A231402.P14099197302618204513

`A231396(A000124(n+5)+5)`
-/

namespace A231402.P14099197302618204513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A000124 (n + 5) + 5).toNat

end

end A231402.P14099197302618204513

/-! ## A231402.P18392571494722871049

`A231396(A000217(n+5)+6)`
-/

namespace A231402.P18392571494722871049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A000217 (n + 5) + 6).toNat

end

end A231402.P18392571494722871049

/-!
# A231403: Number of (7+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231403, there is no canonical definition to state claims against.
-/

/-! ## A231403.P3550457952465627025

`A231396(A056119(n)+28)`
-/

namespace A231403.P3550457952465627025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A056119 n + 28).toNat

end

end A231403.P3550457952465627025

/-! ## A231403.P7894360900987240718

`A231396(eq[11, A066657(n)])`
-/

namespace A231403.P7894360900987240718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231403.P7894360900987240718

/-! ## A231403.P14181351770282004166

`A231396(A167614(n+5)+4)`
-/

namespace A231403.P14181351770282004166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A167614 (n + 5) + 4).toNat

end

end A231403.P14181351770282004166

/-! ## A231403.P6412073505977794035

`A231396(A000096(n+5)+8)`
-/

namespace A231403.P6412073505977794035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A000096 (n + 5) + 8).toNat

end

end A231403.P6412073505977794035

/-!
# A231404: Integers n dividing the Lucas sequence u(n), where u(i) = 2*u(i-1) - 4*u(i-2) with initial conditions u(0)=0, u(1)=1.

The programs for A231404, the canonical program `A231404.P6144611203864488022` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231404 has offset 1).

The definition of A231404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231404.P14880636616756900762

`∪[3*(n+1), 2^n]`
-/

namespace A231404.P14880636616756900762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A231404.P14880636616756900762

namespace A231404

/-- `∪[3*(n+1), 2^n]` -/
def P14880636616756900762.Spec : Prop :=
  ∀ n, (P14880636616756900762.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P6144611203864488022

`lt[and(n, n-1), gcd(n, n%3)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231404

/-- `lt[and(n, n-1), gcd(n, n%3)]` -/
def P6144611203864488022.Spec : Prop :=
  ∀ n, (P6144611203864488022.a n : ℤ) = A231404 (n + 1)

theorem P6144611203864488022.correct : P6144611203864488022.Spec := by
  intro n
  simp only [A231404, Nat.add_sub_cancel]

end A231404

/-! ## A231404.P12060797067337186982

`eq[n²%3, C(and(n, -n), n)]`
-/

namespace A231404.P12060797067337186982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-(n : ℤ))).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231404.P12060797067337186982

namespace A231404

/-- `eq[n²%3, C(and(n, -n), n)]` -/
def P12060797067337186982.Spec : Prop :=
  ∀ n, (P12060797067337186982.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P13579347643173490575

`lt[(lcm(3, n)-n)/6, and(n, -n)]`
-/

namespace A231404.P13579347643173490575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 n : ℤ) - (n : ℤ) : ℚ) / 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A231404.P13579347643173490575

namespace A231404

/-- `lt[(lcm(3, n)-n)/6, and(n, -n)]` -/
def P13579347643173490575.Spec : Prop :=
  ∀ n, (P13579347643173490575.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P11098667865921121476

`record[n+1-(n+1)%3*and(n, n+1)]`
-/

namespace A231404.P11098667865921121476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((n + 1) % 3 * Nat.land n (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231404.P11098667865921121476

namespace A231404

/-- `record[n+1-(n+1)%3*and(n, n+1)]` -/
def P11098667865921121476.Spec : Prop :=
  ∀ n, P11098667865921121476.a n = A231404 (n + 1)

end A231404

/-! ## A231404.P4837003590676499148

`lt[A020639((n+1)/2^val(n+1, 2)), 4]+1`
-/

namespace A231404.P4837003590676499148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A231404.P4837003590676499148

namespace A231404

/-- `lt[A020639((n+1)/2^val(n+1, 2)), 4]+1` -/
def P4837003590676499148.Spec : Prop :=
  ∀ n, (P4837003590676499148.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P5126452012032590705

`lt[A167361(n+1), 2]+1`
-/

namespace A231404.P5126452012032590705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167361 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A231404.P5126452012032590705

namespace A231404

/-- `lt[A167361(n+1), 2]+1` -/
def P5126452012032590705.Spec : Prop :=
  ∀ n, (P5126452012032590705.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P7274596557198276133

`lt[A224976(n+1), 2]+1`
-/

namespace A231404.P7274596557198276133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224976 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A231404.P7274596557198276133

namespace A231404

/-- `lt[A224976(n+1), 2]+1` -/
def P7274596557198276133.Spec : Prop :=
  ∀ n, (P7274596557198276133.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P16523709791221533962

`eq[A204688(n), A209229(n)]`
-/

namespace A231404.P16523709791221533962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231404.P16523709791221533962

namespace A231404

/-- `eq[A204688(n), A209229(n)]` -/
def P16523709791221533962.Spec : Prop :=
  ∀ n, (P16523709791221533962.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P13113666058403517796

`eq[A209229(n), A267208(n)]`
-/

namespace A231404.P13113666058403517796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231404.P13113666058403517796

namespace A231404

/-- `eq[A209229(n), A267208(n)]` -/
def P13113666058403517796.Spec : Prop :=
  ∀ n, (P13113666058403517796.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P4400319168967596417

`eq[A011655(n), A255738(n+1)]`
-/

namespace A231404.P4400319168967596417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231404.P4400319168967596417

namespace A231404

/-- `eq[A011655(n), A255738(n+1)]` -/
def P4400319168967596417.Spec : Prop :=
  ∀ n, (P4400319168967596417.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P16479463053643935981

`eq[A140080(n), A255738(n+1)]`
-/

namespace A231404.P16479463053643935981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231404.P16479463053643935981

namespace A231404

/-- `eq[A140080(n), A255738(n+1)]` -/
def P16479463053643935981.Spec : Prop :=
  ∀ n, (P16479463053643935981.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P2144697261185217848

`eq[A077958(n), A334596(n+1)]`
-/

namespace A231404.P2144697261185217848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231404.P2144697261185217848

namespace A231404

/-- `eq[A077958(n), A334596(n+1)]` -/
def P2144697261185217848.Spec : Prop :=
  ∀ n, (P2144697261185217848.a n : ℤ) = A231404 (n + 1)

end A231404

/-! ## A231404.P13445632914708205328

`record[gcd(1-n, A117902(n))]`
-/

namespace A231404.P13445632914708205328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) (A117902 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231404.P13445632914708205328

namespace A231404

/-- `record[gcd(1-n, A117902(n))]` -/
def P13445632914708205328.Spec : Prop :=
  ∀ n, (P13445632914708205328.a n : ℤ) = A231404 (n + 1)

end A231404

/-!
# A231405: Least integer j such that Sum_{i=1..j} 1/i^(1/3) >= n.

The programs for A231405, there is no canonical definition to state claims against.
-/

/-! ## A231405.P4153262841333091549

`A054041(n-char[1])`
-/

namespace A231405.P4153262841333091549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054041 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A231405.P4153262841333091549

/-! ## A231405.P7763187160511821958

`A054041(n)^floor(atan(n))`
-/

namespace A231405.P7763187160511821958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054041 n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A231405.P7763187160511821958

/-! ## A231405.P3697844881671790522

`A054041(char[1]+n)^round(atan(n)/2)`
-/

namespace A231405.P3697844881671790522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054041 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) ^ (SequenceMachineLib.roundAway (Real.arctan (n : ℝ) / 2) : ℤ)

end

end A231405.P3697844881671790522

/-! ## A231405.P15179936901904017722

`A054041(round(sqrt(n²+1)))-C(n, n²)`
-/

namespace A231405.P15179936901904017722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054041 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A231405.P15179936901904017722

/-! ## A231405.P9809093605459280674

`A199969(A054041(n))+1`
-/

namespace A231405.P9809093605459280674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A054041 n).toNat + 1

end

end A231405.P9809093605459280674

/-! ## A231405.P6571463054089794535

`A159075(n)+A054041(n)`
-/

namespace A231405.P6571463054089794535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A054041 n

end

end A231405.P6571463054089794535

/-! ## A231405.P1431922527448955631

`A054041(n)-A063524(n)`
-/

namespace A231405.P1431922527448955631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054041 n - A063524 n

end

end A231405.P1431922527448955631

/-! ## A231405.P12609841761780291677

`A054041(n)-A178333(n)`
-/

namespace A231405.P12609841761780291677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054041 n - A178333 n

end

end A231405.P12609841761780291677

/-! ## A231405.P14374094627393151642

`A054041(n)/A373565(n)`
-/

namespace A231405.P14374094627393151642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054041 n : ℚ) / (A373565 n : ℚ)

end

end A231405.P14374094627393151642

/-! ## A231405.P4543327799395209267

`gcd(A054041(n), A169585(n))`
-/

namespace A231405.P4543327799395209267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054041 n) (A169585 n)

end

end A231405.P4543327799395209267

/-!
# A231406: Table read by rows, with n-th row the smallest non-constant p-term arithmetic progression of primes beginning with p = prime(n).

The programs for A231406, there is no canonical definition to state claims against.
-/

/-! ## A231406.P14267011033526450473

`p?[A130791(n+1)+A057212(n+1)]`
-/

namespace A231406.P14267011033526450473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (n + 1) + A057212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231406.P14267011033526450473

/-! ## A231406.P7425932816028172432

`p?[A133276(n+1)*A143536(n+1)]`
-/

namespace A231406.P7425932816028172432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133276 (n + 1) * A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231406.P7425932816028172432

/-!
# A231410: Number of permutations of [n] with exactly n-3 (possibly overlapping) occurrences of some of the consecutive step patterns UUD, UDU, DUU (U=up, D=down).

The programs for A231410, there is no canonical definition to state claims against.
-/

/-! ## A231410.P7228904663231711490

`A231384(∑[n+1]+2)`
-/

namespace A231410.P7228904663231711490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231384 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231410.P7228904663231711490

/-! ## A231410.P12616667677796120508

`abs(A231384(A133263(n+1))-n)+n`
-/

namespace A231410.P12616667677796120508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A231384 (A133263 (n + 1)).toNat - (n : ℤ)| + (n : ℤ)

end

end A231410.P12616667677796120508

/-! ## A231410.P15822840312666912132

`lcm(A033999(n), A231384(A133263(n+1)))`
-/

namespace A231410.P15822840312666912132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A231384 (A133263 (n + 1)).toNat)

end

end A231410.P15822840312666912132

/-! ## A231410.P14807341002303038295

`or(A000035(n), A231384(A133263(n+1)))`
-/

namespace A231410.P14807341002303038295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A231384 (A133263 (n + 1)).toNat)

end

end A231410.P14807341002303038295

/-! ## A231410.P15545958240502439841

`A231384(A133263(n+1))+A000007(n+1)`
-/

namespace A231410.P15545958240502439841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231384 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A231410.P15545958240502439841

/-! ## A231410.P1811684842577929580

`A231384(A133263(n+1))+A000035(2*n)`
-/

namespace A231410.P1811684842577929580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231384 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A231410.P1811684842577929580

/-! ## A231410.P12897789156182373950

`A231384(A133263(n+1))+A077896(2*n+1)`
-/

namespace A231410.P12897789156182373950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231384 (A133263 (n + 1)).toNat + A077896 (2 * n + 1)

end

end A231410.P12897789156182373950

/-!
# A231411: Total number of zero digits in primes less than 10^n.

The programs for A231411, there is no canonical definition to state claims against.
-/

/-! ## A231411.P18130652193183460793

`∑[A152272(n+1)]`
-/

namespace A231411.P18130652193183460793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231411.P18130652193183460793

/-! ## A231411.P10723711212150524589

`A152272(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A231411.P10723711212150524589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A152272 (n + 1) + a (A023443 n).toNat

end

end A231411.P10723711212150524589

/-!
# A231412: Count of the first 10^n primes which do not contain the digit 0.

The programs for A231412, there is no canonical definition to state claims against.
-/

/-! ## A231412.P3441999814050006812

`A011557(n)-A231726(A028310(n))`
-/

namespace A231412.P3441999814050006812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A231726 (A028310 n).toNat

end

end A231412.P3441999814050006812

/-!
# A231413: Number of (n+1) X (1+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231413, the canonical program `A231413.P3966520936128930393` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231413 has offset 1).

The definition of A231413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231413.P3966520936128930393

`ogf((9-4x-15x^2+6x^3)/(1-6x+11x^3-4x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231413

/-- `ogf((9-4x-15x^2+6x^3)/(1-6x+11x^3-4x^4))` -/
def P3966520936128930393.Spec : Prop :=
  ∀ n, P3966520936128930393.a n = A231413 (n + 1)

theorem P3966520936128930393.correct : P3966520936128930393.Spec := by
  intro n
  simp only [A231413, Nat.add_sub_cancel]

end A231413

/-! ## A231413.P10102690918761485432

`A231138(n+1)/2`
-/

namespace A231413.P10102690918761485432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231138 (n + 1) : ℚ) / 2

end

end A231413.P10102690918761485432

namespace A231413

/-- `A231138(n+1)/2` -/
def P10102690918761485432.Spec : Prop :=
  ∀ n, P10102690918761485432.a n = (A231413 (n + 1) : ℚ)

end A231413

/-! ## A231413.P14733059738676997457

`A232138(2+n)/4`
-/

namespace A231413.P14733059738676997457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232138 (2 + n) : ℚ) / 4

end

end A231413.P14733059738676997457

namespace A231413

/-- `A232138(2+n)/4` -/
def P14733059738676997457.Spec : Prop :=
  ∀ n, P14733059738676997457.a n = (A231413 (n + 1) : ℚ)

end A231413

/-! ## A231413.P1017395416900995748

`A231144(∑[n]+1)/2`
-/

namespace A231413.P1017395416900995748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231144 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A231413.P1017395416900995748

namespace A231413

/-- `A231144(∑[n]+1)/2` -/
def P1017395416900995748.Spec : Prop :=
  ∀ n, P1017395416900995748.a n = (A231413 (n + 1) : ℚ)

end A231413

/-! ## A231413.P6716784234732194300

`A280362(∑[n+2]+3)`
-/

namespace A231413.P6716784234732194300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280362 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A231413.P6716784234732194300

namespace A231413

/-- `A280362(∑[n+2]+3)` -/
def P6716784234732194300.Spec : Prop :=
  ∀ n, P6716784234732194300.a n = A231413 (n + 1)

end A231413

/-!
# A231414: Number of (n+1)X(2+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231414, there is no canonical definition to state claims against.
-/

/-! ## A231414.P5311261037226776075

`A231419(∑[n+2])`
-/

namespace A231414.P5311261037226776075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231414.P5311261037226776075

/-! ## A231414.P7139317628615282839

`record[A231419(n+2)/A022179(n+2)]`
-/

namespace A231414.P7139317628615282839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231419 (n + 2) : ℚ) / (A022179 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231414.P7139317628615282839

/-! ## A231414.P1821655375008527677

`record[root(A231419(n+2), A171275(n+3))]`
-/

namespace A231414.P1821655375008527677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231419 (n + 2) : ℝ) ^ (1 / (A171275 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231414.P1821655375008527677

/-!
# A231415: Number of (n+1)X(3+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231415, there is no canonical definition to state claims against.
-/

/-! ## A231415.P418791413185594828

`A231419(∑[n+3]+1)`
-/

namespace A231415.P418791413185594828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231415.P418791413185594828

/-! ## A231415.P1695097650305472950

`A243831(n)+A231419(A034856(n+2))`
-/

namespace A231415.P1695097650305472950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243831 n + A231419 (A034856 (n + 2)).toNat

end

end A231415.P1695097650305472950

/-! ## A231415.P13956779686661140877

`A338653(n+1)+A231419(A034856(n+2))`
-/

namespace A231415.P13956779686661140877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (n + 1) + A231419 (A034856 (n + 2)).toNat

end

end A231415.P13956779686661140877

/-!
# A231416: Number of (n+1)X(4+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231416, there is no canonical definition to state claims against.
-/

/-! ## A231416.P2188136821618545066

`A231419(∑[n+4]+3)`
-/

namespace A231416.P2188136821618545066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A231416.P2188136821618545066

/-! ## A231416.P3858071725582505242

`A243831(n)+A231419(A055998(n+2))`
-/

namespace A231416.P3858071725582505242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243831 n + A231419 (A055998 (n + 2)).toNat

end

end A231416.P3858071725582505242

/-! ## A231416.P1683100380079179537

`A063260(n)*A231419(A056000(n)+7)`
-/

namespace A231416.P1683100380079179537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063260 n * A231419 (A056000 n + 7).toNat

end

end A231416.P1683100380079179537

/-! ## A231416.P9283668615297723907

`A066577(n+1)*A231419(A055998(n+2))`
-/

namespace A231416.P9283668615297723907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066577 (n + 1) * A231419 (A055998 (n + 2)).toNat

end

end A231416.P9283668615297723907

/-!
# A231417: Number of (n+1)X(5+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231417, there is no canonical definition to state claims against.
-/

/-! ## A231417.P3275090952740322033

`A231419(Δ[A264443(n)])`
-/

namespace A231417.P3275090952740322033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (f1 (n + 1) - f1 n).toNat

end

end A231417.P3275090952740322033

/-! ## A231417.P5440456014696329360

`A231419(A046691(n+3))`
-/

namespace A231417.P5440456014696329360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (A046691 (n + 3)).toNat

end

end A231417.P5440456014696329360

/-! ## A231417.P2483696651153635229

`A231419(eq[4, A193592(n)])`
-/

namespace A231417.P2483696651153635229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231417.P2483696651153635229

/-!
# A231418: Number of (n+1)X(6+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231418, there is no canonical definition to state claims against.
-/

/-! ## A231418.P18233366910341957596

`A231419(A055999(n+3)+1)`
-/

namespace A231418.P18233366910341957596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (A055999 (n + 3) + 1).toNat

end

end A231418.P18233366910341957596

/-!
# A231420: Number of (1+1) X (n+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231420, the canonical program `A231420.P14215657022534338685` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231420 has offset 1).

The definition of A231420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231420.P14215657022534338685

`ogf((9-x-90x^2-36x^3+60x^4-24x^5)/(1-8x-4x^2+58x^3+24x^4-40x^5+16x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231420

/-- `ogf((9-x-90x^2-36x^3+60x^4-24x^5)/(1-8x-4x^2+58x^3+24x^4-40x^5+16x^6))` -/
def P14215657022534338685.Spec : Prop :=
  ∀ n, P14215657022534338685.a n = A231420 (n + 1)

theorem P14215657022534338685.correct : P14215657022534338685.Spec := by
  intro n
  simp only [A231420, Nat.add_sub_cancel]

end A231420

/-! ## A231420.P4965567337578176197

`A231419(∑[n]+1)`
-/

namespace A231420.P4965567337578176197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231420.P4965567337578176197

namespace A231420

/-- `A231419(∑[n]+1)` -/
def P4965567337578176197.Spec : Prop :=
  ∀ n, P4965567337578176197.a n = A231420 (n + 1)

end A231420

/-! ## A231420.P5305066930018757021

`record[A231419(A114091(n+1))]`
-/

namespace A231420.P5305066930018757021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231420.P5305066930018757021

namespace A231420

/-- `record[A231419(A114091(n+1))]` -/
def P5305066930018757021.Spec : Prop :=
  ∀ n, P5305066930018757021.a n = A231420 (n + 1)

end A231420

/-! ## A231420.P91641599211738937

`record[A010054(n)*A231419(n+1)]`
-/

namespace A231420.P91641599211738937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231420.P91641599211738937

namespace A231420

/-- `record[A010054(n)*A231419(n+1)]` -/
def P91641599211738937.Spec : Prop :=
  ∀ n, P91641599211738937.a n = A231420 (n + 1)

end A231420

/-! ## A231420.P8650597385609202116

`record[A231419(n+1)/A022179(n)]`
-/

namespace A231420.P8650597385609202116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231419 (n + 1) : ℚ) / (A022179 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231420.P8650597385609202116

namespace A231420

/-- `record[A231419(n+1)/A022179(n)]` -/
def P8650597385609202116.Spec : Prop :=
  ∀ n, P8650597385609202116.a n = (A231420 (n + 1) : ℚ)

end A231420

/-!
# A231421: Number of (2+1)X(n+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231421, there is no canonical definition to state claims against.
-/

/-! ## A231421.P11138389300688586289

`A231419(∑[n+1]+2)`
-/

namespace A231421.P11138389300688586289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231421.P11138389300688586289

/-! ## A231421.P16441338884659470337

`A308925(n)+A231419(A133263(n+1))`
-/

namespace A231421.P16441338884659470337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308925 n + A231419 (A133263 (n + 1)).toNat

end

end A231421.P16441338884659470337

/-!
# A231422: Number of (3+1)X(n+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231422, there is no canonical definition to state claims against.
-/

/-! ## A231422.P7562059989293945794

`A231419(∑[n+2]+4)`
-/

namespace A231422.P7562059989293945794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231422.P7562059989293945794

/-! ## A231422.P3958936505496062625

`or(A000007(n), A231419(A167614(n+1)))`
-/

namespace A231422.P3958936505496062625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A231419 (A167614 (n + 1)).toNat)

end

end A231422.P3958936505496062625

/-! ## A231422.P12443950731751519948

`A285006(n+1)+A231419(A167614(n+1))`
-/

namespace A231422.P12443950731751519948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285006 (n + 1) + A231419 (A167614 (n + 1)).toNat

end

end A231422.P12443950731751519948

/-! ## A231422.P15307668342558482923

`A008835(n+1)*A231419(A167614(n+1))`
-/

namespace A231422.P15307668342558482923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A231419 (A167614 (n + 1)).toNat

end

end A231422.P15307668342558482923

/-! ## A231422.P16346671813337107962

`lcm(A108775(n+1), A231419(A167614(n+1)))`
-/

namespace A231422.P16346671813337107962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108775 (n + 1)) (A231419 (A167614 (n + 1)).toNat)

end

end A231422.P16346671813337107962

/-!
# A231423: Number of (4+1)X(n+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231423, there is no canonical definition to state claims against.
-/

/-! ## A231423.P11538977309193506470

`A231419(∑[n+3]+7)`
-/

namespace A231423.P11538977309193506470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231423.P11538977309193506470

/-!
# A231424: Number of (5+1)X(n+1) 0..2 arrays with no element equal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231424, there is no canonical definition to state claims against.
-/

/-! ## A231424.P12491966940118209572

`A231419(A155212(n)+13)`
-/

namespace A231424.P12491966940118209572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (A155212 n + 13).toNat

end

end A231424.P12491966940118209572

/-! ## A231424.P6424793718450903009

`A231419(eq[6, A131818(n+1)])`
-/

namespace A231424.P6424793718450903009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231424.P6424793718450903009

/-! ## A231424.P8609820258735199962

`A231419(abs(2*n-A055999(n+3)))`
-/

namespace A231424.P8609820258735199962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231419 |(2 * n : ℤ) - A055999 (n + 3)|.toNat

end

end A231424.P8609820258735199962

/-!
# A231425: The Schramm triangle: T(n,k) = f(gcd(n,k)), where f = Dirichlet inverse of Euler totient.

The programs for A231425, the canonical program `A231425.P12620415110256571272` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231425 has offset 1).

The definition of A231425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231425.P12620415110256571272

`A023900(gcd(row(n)+1, col(n)+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231425

/-- `A023900(gcd(row(n)+1, col(n)+1))` -/
def P12620415110256571272.Spec : Prop :=
  ∀ n, P12620415110256571272.a n = A231425 (n + 1)

theorem P12620415110256571272.correct : P12620415110256571272.Spec := by
  intro n
  simp only [A231425, Nat.add_sub_cancel]

end A231425

/-! ## A231425.P4117699728060218418

`∏{p}[A050873(n+1), 1-#]`
-/

namespace A231425.P4117699728060218418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))

end

end A231425.P4117699728060218418

namespace A231425

/-- `∏{p}[A050873(n+1), 1-#]` -/
def P4117699728060218418.Spec : Prop :=
  ∀ n, P4117699728060218418.a n = A231425 (n + 1)

end A231425

/-! ## A231425.P11789094630867558251

`A023900(A050873(n+1))`
-/

namespace A231425.P11789094630867558251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A050873 (n + 1)).toNat

end

end A231425.P11789094630867558251

namespace A231425

/-- `A023900(A050873(n+1))` -/
def P11789094630867558251.Spec : Prop :=
  ∀ n, P11789094630867558251.a n = A231425 (n + 1)

end A231425

/-! ## A231425.P7584469770803282046

`A328729(∏{p}[A050873(n+1), #])`
-/

namespace A231425.P7584469770803282046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328729 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A231425.P7584469770803282046

namespace A231425

/-- `A328729(∏{p}[A050873(n+1), #])` -/
def P7584469770803282046.Spec : Prop :=
  ∀ n, P7584469770803282046.a n = A231425 (n + 1)

end A231425

/-! ## A231425.P17093146421142709933

`∑{d}[A050873(n+1), #*A008683(#)]`
-/

namespace A231425.P17093146421142709933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A008683 d

end

end A231425.P17093146421142709933

namespace A231425

/-- `∑{d}[A050873(n+1), #*A008683(#)]` -/
def P17093146421142709933.Spec : Prop :=
  ∀ n, P17093146421142709933.a n = A231425 (n + 1)

end A231425

/-! ## A231425.P5881482558716620926

`A023900(A245717(n+1))`
-/

namespace A231425.P5881482558716620926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A245717 (n + 1)).toNat

end

end A231425.P5881482558716620926

namespace A231425

/-- `A023900(A245717(n+1))` -/
def P5881482558716620926.Spec : Prop :=
  ∀ n, P5881482558716620926.a n = A231425 (n + 1)

end A231425

/-! ## A231425.P4449734104988329398

`A191898(A286146(n+1))`
-/

namespace A231425.P4449734104988329398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191898 (A286146 (n + 1)).toNat

end

end A231425.P4449734104988329398

namespace A231425

/-- `A191898(A286146(n+1))` -/
def P4449734104988329398.Spec : Prop :=
  ∀ n, P4449734104988329398.a n = A231425 (n + 1)

end A231425

/-! ## A231425.P6506768952982428691

`A023900(A093057(n+1)+1)`
-/

namespace A231425.P6506768952982428691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A093057 (n + 1) + 1).toNat

end

end A231425.P6506768952982428691

namespace A231425

/-- `A023900(A093057(n+1)+1)` -/
def P6506768952982428691.Spec : Prop :=
  ∀ n, P6506768952982428691.a n = A231425 (n + 1)

end A231425

/-!
# A231428: Sorted and encoded binary matrices representing equivalence relations.

The programs for A231428, there is no canonical definition to state claims against.
-/

/-! ## A231428.P16143320018408540248

`∪[A055998(n+2), A002262(record[(n%2+1)^n])]`
-/

namespace A231428.P16143320018408540248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231428.P16143320018408540248

/-! ## A231428.P373666421701097067

`eq[A079979(A059117(n)), A209229(n)]`
-/

namespace A231428.P373666421701097067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A059117 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231428.P373666421701097067

/-! ## A231428.P16124485165937631843

`∪[A027379(n+2), A002262(A081294(n))]`
-/

namespace A231428.P16124485165937631843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A081294 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231428.P16124485165937631843

/-! ## A231428.P10043850729670110646

`eq[A171380(n*char[2^n]), A171380(n)]`
-/

namespace A231428.P10043850729670110646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171380 (n * (if ∃ j, f2 j = n then 1 else 0))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A231428.P10043850729670110646

/-! ## A231428.P16055354530809420032

`eq[A324901(n+1), A343437(n+2)]`
-/

namespace A231428.P16055354530809420032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343437 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231428.P16055354530809420032

/-!
# A231429: Number of partitions of 2n into distinct parts < n.

The programs for A231429, there is no canonical definition to state claims against.
-/

/-! ## A231429.P15526578513504361319

`A070936(∑[n]+(2*n)²)`
-/

namespace A231429.P15526578513504361319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n) ^ 2)

end

end A231429.P15526578513504361319

/-! ## A231429.P16257104482163407664

`A059607(A062725(n))`
-/

namespace A231429.P16257104482163407664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (A062725 n).toNat

end

end A231429.P16257104482163407664

/-! ## A231429.P6215023721742500469

`A079126(A132209(n))`
-/

namespace A231429.P6215023721742500469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (A132209 n).toNat

end

end A231429.P6215023721742500469

/-! ## A231429.P9760589681693677468

`A059607(A062728(n)-n)`
-/

namespace A231429.P9760589681693677468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (A062728 n - (n : ℤ)).toNat

end

end A231429.P9760589681693677468

/-! ## A231429.P1847006726353849023

`A079122(n)-A111133(n)`
-/

namespace A231429.P1847006726353849023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079122 n - A111133 n

end

end A231429.P1847006726353849023

/-!
# A231430: Number of ternary sequences which contain 000.

The programs for A231430, the canonical program `A231430.P15040209342933814897` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231430 has offset 0).

The definition of A231430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231430.P8634297946021430797

`ogf(x^3/(1-5x+4x^2+4x^3+6x^4))`
-/

namespace A231430.P8634297946021430797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -5, 4, 4, 6] n

end

end A231430.P8634297946021430797

namespace A231430

/-- `ogf(x^3/(1-5x+4x^2+4x^3+6x^4))` -/
def P8634297946021430797.Spec : Prop :=
  ∀ n, P8634297946021430797.a n = A231430 n

end A231430

/-! ## A231430.P15040209342933814897

`3*a(n-1)+2*(3^(n-4)-a(n-4))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231430

/-- `3*a(n-1)+2*(3^(n-4)-a(n-4))` -/
def P15040209342933814897.Spec : Prop :=
  ∀ n, P15040209342933814897.a n = (A231430 n : ℚ)

end A231430

/-! ## A231430.P8497276488866742473

`3^n-A119826(n)`
-/

namespace A231430.P8497276488866742473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A119826 n

end

end A231430.P8497276488866742473

namespace A231430

/-- `3^n-A119826(n)` -/
def P8497276488866742473.Spec : Prop :=
  ∀ n, P8497276488866742473.a n = A231430 n

end A231430

/-! ## A231430.P14572233654008985866

`abs(A000244(n)-A119826(n))`
-/

namespace A231430.P14572233654008985866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A119826 n|

end

end A231430.P14572233654008985866

namespace A231430

/-- `abs(A000244(n)-A119826(n))` -/
def P14572233654008985866.Spec : Prop :=
  ∀ n, P14572233654008985866.a n = A231430 n

end A231430

/-! ## A231430.P9411952945679914220

`A000244(n)-A181137(n+1)/3`
-/

namespace A231430.P9411952945679914220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) - (A181137 (n + 1) : ℚ) / 3

end

end A231430.P9411952945679914220

namespace A231430

/-- `A000244(n)-A181137(n+1)/3` -/
def P9411952945679914220.Spec : Prop :=
  ∀ n, P9411952945679914220.a n = (A231430 n : ℚ)

end A231430

/-! ## A231430.P12451906394653885186

`A000244(n)-abs(A077984(n+1)/2)`
-/

namespace A231430.P12451906394653885186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) - |(A077984 (n + 1) : ℚ) / 2|

end

end A231430.P12451906394653885186

namespace A231430

/-- `A000244(n)-abs(A077984(n+1)/2)` -/
def P12451906394653885186.Spec : Prop :=
  ∀ n, P12451906394653885186.a n = (A231430 n : ℚ)

end A231430

/-! ## A231430.P14628615199214231061

`A028859(n)+A186244(n)-A119826(n)`
-/

namespace A231430.P14628615199214231061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n + (A186244 n - A119826 n)

end

end A231430.P14628615199214231061

namespace A231430

/-- `A028859(n)+A186244(n)-A119826(n)` -/
def P14628615199214231061.Spec : Prop :=
  ∀ n, P14628615199214231061.a n = A231430 n

end A231430

/-! ## A231430.P13523393008893386421

`(A038754(2*n)-A119826(n))%A038754(2*n)`
-/

namespace A231430.P13523393008893386421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038754 (2 * n) - A119826 n) (A038754 (2 * n))

end

end A231430.P13523393008893386421

namespace A231430

/-- `(A038754(2*n)-A119826(n))%A038754(2*n)` -/
def P13523393008893386421.Spec : Prop :=
  ∀ n, P13523393008893386421.a n = A231430 n

end A231430

/-! ## A231430.P6872850325744042661

`(A025192(n+1)-A077835(n+1))/2`
-/

namespace A231430.P6872850325744042661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025192 (n + 1) - A077835 (n + 1) : ℚ) / 2

end

end A231430.P6872850325744042661

namespace A231430

/-- `(A025192(n+1)-A077835(n+1))/2` -/
def P6872850325744042661.Spec : Prop :=
  ∀ n, P6872850325744042661.a n = (A231430 n : ℚ)

end A231430

/-! ## A231430.P120911975240909904

`(A038754(2*n)-A119826(n))%A254316(n)`
-/

namespace A231430.P120911975240909904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038754 (2 * n) - A119826 n) (A254316 n)

end

end A231430.P120911975240909904

namespace A231430

/-- `(A038754(2*n)-A119826(n))%A254316(n)` -/
def P120911975240909904.Spec : Prop :=
  ∀ n, P120911975240909904.a n = A231430 n

end A231430

/-!
# A231431: Evil squares.

The programs for A231431, the canonical program `A231431.P1987383285637851734` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231431 has offset 1).

The definition of A231431 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A298879, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A231431.P1987383285637851734

`A298879(n+1)²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A231431

/-- `A298879(n+1)²` -/
def P1987383285637851734.Spec : Prop :=
  ∀ n, P1987383285637851734.a n = A231431 (n + 1)

theorem P1987383285637851734.correct : P1987383285637851734.Spec := by
  intro n
  simp only [A231431, Nat.add_sub_cancel]

end A231431

/-! ## A231431.P17689174645925923634

`eq[0, A228039(n)]²`
-/

namespace A231431.P17689174645925923634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A231431.P17689174645925923634

namespace A231431

/-- `eq[0, A228039(n)]²` -/
def P17689174645925923634.Spec : Prop :=
  ∀ n, (P17689174645925923634.a n : ℤ) = A231431 (n + 1)

theorem P17689174645925923634.correct : P17689174645925923634.Spec := by
  intro n
  simp only [A231431, Nat.add_sub_cancel, A231431.P17689174645925923634.f1, A231431.P17689174645925923634.f2, A231431.P17689174645925923634.a, A231431.P1987383285637851734.a, A228039, A228039.P4227557278893953699.a, A298879, A298879.P12503287432390370405.f1, A298879.P12503287432390370405.f2, A298879.P12503287432390370405.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231431

/-! ## A231431.P3811860232125489441

`lt[A228039(2*n), 1]²`
-/

namespace A231431.P3811860232125489441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A231431.P3811860232125489441

namespace A231431

/-- `lt[A228039(2*n), 1]²` -/
def P3811860232125489441.Spec : Prop :=
  ∀ n, (P3811860232125489441.a n : ℤ) = A231431 (n + 1)

end A231431

/-! ## A231431.P1426312890416240794

`lt[and(1, A159918(n)), 1]²`
-/

namespace A231431.P1426312890416240794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A159918 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A231431.P1426312890416240794

namespace A231431

/-- `lt[and(1, A159918(n)), 1]²` -/
def P1426312890416240794.Spec : Prop :=
  ∀ n, (P1426312890416240794.a n : ℤ) = A231431 (n + 1)

end A231431

/-! ## A231431.P12803271195231508247

`eq[0, A000035(A159918(n))]²`
-/

namespace A231431.P12803271195231508247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A159918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A231431.P12803271195231508247

namespace A231431

/-- `eq[0, A000035(A159918(n))]²` -/
def P12803271195231508247.Spec : Prop :=
  ∀ n, (P12803271195231508247.a n : ℤ) = A231431 (n + 1)

theorem P12803271195231508247.correct : P12803271195231508247.Spec := by
  intro n
  simp only [A231431, Nat.add_sub_cancel, A231431.P12803271195231508247.f1, A231431.P12803271195231508247.f2, A231431.P12803271195231508247.a, A231431.P1987383285637851734.a, A000035, A000035.P2023072528413494694.a, A159918, A159918.P9044221650156537237.a, A298879, A298879.P12503287432390370405.f1, A298879.P12503287432390370405.f2, A298879.P12503287432390370405.a, A000120, A000120.P2816527436160941581.a, A228039, A228039.P4227557278893953699.a, A005187, A005187.P3874015513960485494.a, A010060, A010060.P3080921269106500717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231431

/-! ## A231431.P1958611062678980061

`A000290(eq[1, A228039(n)+1])`
-/

namespace A231431.P1958611062678980061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231431.P1958611062678980061

namespace A231431

/-- `A000290(eq[1, A228039(n)+1])` -/
def P1958611062678980061.Spec : Prop :=
  ∀ n, P1958611062678980061.a n = A231431 (n + 1)

end A231431

/-! ## A231431.P4995486158813149170

`A000290(eq[1, 1-A228039(n)])`
-/

namespace A231431.P4995486158813149170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A228039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231431.P4995486158813149170

namespace A231431

/-- `A000290(eq[1, 1-A228039(n)])` -/
def P4995486158813149170.Spec : Prop :=
  ∀ n, P4995486158813149170.a n = A231431 (n + 1)

end A231431

/-! ## A231431.P7994609729883696824

`A000290(eq[2*A228039(n), A228039(n)])`
-/

namespace A231431.P7994609729883696824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228039 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A231431.P7994609729883696824

namespace A231431

/-- `A000290(eq[2*A228039(n), A228039(n)])` -/
def P7994609729883696824.Spec : Prop :=
  ∀ n, P7994609729883696824.a n = A231431 (n + 1)

end A231431

/-! ## A231431.P11106503207935339724

`A000290(eq[A228039(n)/2, A228039(n)])`
-/

namespace A231431.P11106503207935339724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228039 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A231431.P11106503207935339724

namespace A231431

/-- `A000290(eq[A228039(n)/2, A228039(n)])` -/
def P11106503207935339724.Spec : Prop :=
  ∀ n, P11106503207935339724.a n = A231431 (n + 1)

end A231431

/-! ## A231431.P11744315724932643118

`A000290(A298879(A000290(n+1)/(n+1)))`
-/

namespace A231431.P11744315724932643118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A298879 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A231431.P11744315724932643118

namespace A231431

/-- `A000290(A298879(A000290(n+1)/(n+1)))` -/
def P11744315724932643118.Spec : Prop :=
  ∀ n, P11744315724932643118.a n = A231431 (n + 1)

end A231431

/-!
# A231432: Primes p such that abs(p - 3*k) is also prime, where p is the k-th prime.

The programs for A231432, there is no canonical definition to state claims against.
-/

/-! ## A231432.P9456876213911497910

`A000040(∑[runs[A003873(n+1)]])`
-/

namespace A231432.P9456876213911497910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003873 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231432.P9456876213911497910

/-! ## A231432.P9479413132073476990

`p?[A177512(n+1)-A120082(n)]`
-/

namespace A231432.P9479413132073476990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177512 (n + 1) - A120082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231432.P9479413132073476990

/-!
# A231434: Number of (n+2)X(n+2) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231434, there is no canonical definition to state claims against.
-/

/-! ## A231434.P1709714727487703422

`A231441(∑[4*n]+1)`
-/

namespace A231434.P1709714727487703422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231434.P1709714727487703422

/-! ## A231434.P1005802847008659728

`record[A231441(Δ[A235355(n)])]`
-/

namespace A231434.P1005802847008659728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231434.P1005802847008659728

/-! ## A231434.P4187371865314642757

`and(-1, A231441(A001844(n)))`
-/

namespace A231434.P4187371865314642757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A231441 (A001844 n).toNat)

end

end A231434.P4187371865314642757

/-!
# A231435: Number of (n+2) X (2+2) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231435, there is no canonical definition to state claims against.
-/

/-! ## A231435.P4091123091027083379

`A231441(∑[n+1]+2)`
-/

namespace A231435.P4091123091027083379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231435.P4091123091027083379

/-! ## A231435.P15901290462218780497

`record[A231441(n+3)/A247023(n)]`
-/

namespace A231435.P15901290462218780497
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231441 (n + 3) : ℚ) / (A247023 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231435.P15901290462218780497

/-! ## A231435.P1662687878305347325

`record[root(A231441(n+2), A059268(n))]`
-/

namespace A231435.P1662687878305347325
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231441 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231435.P1662687878305347325

/-! ## A231435.P10455055696085816846

`record[A231441(n+3)/A035324(n+1)]`
-/

namespace A231435.P10455055696085816846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231441 (n + 3) : ℚ) / (A035324 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231435.P10455055696085816846

/-! ## A231435.P3502510569402174248

`record[A231441(Δ[A003453(n+5)])]`
-/

namespace A231435.P3502510569402174248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231435.P3502510569402174248

/-!
# A231436: Number of (n+2)X(3+2) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231436, there is no canonical definition to state claims against.
-/

/-! ## A231436.P14625767109894039841

`A231441(∑[n+2]+4)`
-/

namespace A231436.P14625767109894039841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231436.P14625767109894039841

/-! ## A231436.P672644812059474453

`record[root(A231441(n+4), A059268(n+1))]`
-/

namespace A231436.P672644812059474453
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231441 (n + 4) : ℝ) ^ (1 / (A059268 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231436.P672644812059474453

/-! ## A231436.P2271866634796045308

`A231441(A167614(n+1))+A011731(n)`
-/

namespace A231436.P2271866634796045308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A167614 (n + 1)).toNat + A011731 n

end

end A231436.P2271866634796045308

/-! ## A231436.P16153654370610787579

`A231441(A167614(n+1))+A025469(n)`
-/

namespace A231436.P16153654370610787579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A167614 (n + 1)).toNat + A025469 n

end

end A231436.P16153654370610787579

/-! ## A231436.P1791957623725782103

`A231441(A167614(n+1))+A178798(n)`
-/

namespace A231436.P1791957623725782103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A167614 (n + 1)).toNat + A178798 n

end

end A231436.P1791957623725782103

/-!
# A231437: Number of (n+2)X(4+2) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231437, there is no canonical definition to state claims against.
-/

/-! ## A231437.P14416547371028019953

`A231441(A374004(n+1))`
-/

namespace A231437.P14416547371028019953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A374004 (n + 1)).toNat

end

end A231437.P14416547371028019953

/-! ## A231437.P5926888293639253517

`A231441(A141214(n)+7)`
-/

namespace A231437.P5926888293639253517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A141214 n + 7).toNat

end

end A231437.P5926888293639253517

/-! ## A231437.P15643671001319571814

`A231441(A052905(n)+9)`
-/

namespace A231437.P15643671001319571814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A052905 n + 9).toNat

end

end A231437.P15643671001319571814

/-! ## A231437.P11991887276953943249

`A231441(A055999(n)+10)`
-/

namespace A231437.P11991887276953943249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A055999 n + 10).toNat

end

end A231437.P11991887276953943249

/-! ## A231437.P856375092326878823

`A231441(eq[5, A066657(n)])`
-/

namespace A231437.P856375092326878823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231437.P856375092326878823

/-!
# A231438: Number of (n+2)X(5+2) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231438, there is no canonical definition to state claims against.
-/

/-! ## A231438.P6929367488254637100

`A231441(A374005(n+1))`
-/

namespace A231438.P6929367488254637100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A374005 (n + 1)).toNat

end

end A231438.P6929367488254637100

/-! ## A231438.P2638327367301637401

`A231441(A167499(n+3))`
-/

namespace A231438.P2638327367301637401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A167499 (n + 3)).toNat

end

end A231438.P2638327367301637401

/-! ## A231438.P6533570235669671553

`A231441(A155212(n)+13)`
-/

namespace A231438.P6533570235669671553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A155212 n + 13).toNat

end

end A231438.P6533570235669671553

/-! ## A231438.P6855662018800114407

`A231441(A056000(n)+15)`
-/

namespace A231438.P6855662018800114407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A056000 n + 15).toNat

end

end A231438.P6855662018800114407

/-! ## A231438.P873455037049064148

`A231441(eq[7, A066657(n)])`
-/

namespace A231438.P873455037049064148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231438.P873455037049064148

/-!
# A231439: Number of (n+2)X(6+2) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231439, there is no canonical definition to state claims against.
-/

/-! ## A231439.P15373854757268465618

`A231441(A374007(n+1))`
-/

namespace A231439.P15373854757268465618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A374007 (n + 1)).toNat

end

end A231439.P15373854757268465618

/-! ## A231439.P11752235361762288014

`A231441(A056115(n)+21)`
-/

namespace A231439.P11752235361762288014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A056115 n + 21).toNat

end

end A231439.P11752235361762288014

/-! ## A231439.P6581484120758326970

`A231441(A167499(n+4)+1)`
-/

namespace A231439.P6581484120758326970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A167499 (n + 4) + 1).toNat

end

end A231439.P6581484120758326970

/-! ## A231439.P3345809303411444981

`A231441(A167614(n+4)+3)`
-/

namespace A231439.P3345809303411444981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A167614 (n + 4) + 3).toNat

end

end A231439.P3345809303411444981

/-! ## A231439.P12704334520701685145

`A231441(A000124(n+5)+5)`
-/

namespace A231439.P12704334520701685145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A000124 (n + 5) + 5).toNat

end

end A231439.P12704334520701685145

/-!
# A231440: Number of (n+2)X(7+2) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231440, there is no canonical definition to state claims against.
-/

/-! ## A231440.P11584754769699032195

`A231441(A374008(n+1))`
-/

namespace A231440.P11584754769699032195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A374008 (n + 1)).toNat

end

end A231440.P11584754769699032195

/-! ## A231440.P7236238080777398934

`A231441(A056119(n)+28)`
-/

namespace A231440.P7236238080777398934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A056119 n + 28).toNat

end

end A231440.P7236238080777398934

/-! ## A231440.P1107559295485048080

`A231441(eq[11, A066657(n)])`
-/

namespace A231440.P1107559295485048080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231440.P1107559295485048080

/-! ## A231440.P15503758693401053208

`A231441(A166136(n+5)+1)`
-/

namespace A231440.P15503758693401053208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A166136 (n + 5) + 1).toNat

end

end A231440.P15503758693401053208

/-! ## A231440.P13155530040236368697

`A231441(A167614(n+5)+4)`
-/

namespace A231440.P13155530040236368697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (A167614 (n + 5) + 4).toNat

end

end A231440.P13155530040236368697

/-!
# A231441: T(n,k)=Number of (n+2)X(k+2) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231441, there is no canonical definition to state claims against.
-/

/-! ## A231441.P14658784934482651706

`A231227(n+1)+A003982(A105291(n))`
-/

namespace A231441.P14658784934482651706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (n + 1) + A003982 (A105291 n).toNat

end

end A231441.P14658784934482651706

/-! ## A231441.P12257362527946117026

`or(A055641(A035597(n)), A231227(n+1))`
-/

namespace A231441.P12257362527946117026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A035597 n).toNat) (A231227 (n + 1))

end

end A231441.P12257362527946117026

/-! ## A231441.P7973037230295354154

`or(A025465(A231182(n)), A231227(n+1))`
-/

namespace A231441.P7973037230295354154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 (A231182 n).toNat) (A231227 (n + 1))

end

end A231441.P7973037230295354154

/-! ## A231441.P17734464446788082016

`A231227(n+1)+A212619(A027052(3*n))`
-/

namespace A231441.P17734464446788082016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (n + 1) + A212619 (A027052 (3 * n)).toNat

end

end A231441.P17734464446788082016

/-! ## A231441.P6826206348851017119

`or(A025465(A216576(n+1)), A231227(n+1))`
-/

namespace A231441.P6826206348851017119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 (A216576 (n + 1)).toNat) (A231227 (n + 1))

end

end A231441.P6826206348851017119

/-!
# A231443: Number of (n+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231443, there is no canonical definition to state claims against.
-/

/-! ## A231443.P11005948665997508364

`A231451(∑[4*n]+1)`
-/

namespace A231443.P11005948665997508364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231443.P11005948665997508364

/-! ## A231443.P11405740665784482906

`record[A231451(Δ[A235355(n)])]`
-/

namespace A231443.P11405740665784482906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231443.P11405740665784482906

/-! ## A231443.P7806641360401348855

`lcm((-1)^n, A231451(A001844(n)))`
-/

namespace A231443.P7806641360401348855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A231451 (A001844 n).toNat)

end

end A231443.P7806641360401348855

/-! ## A231443.P9926177135995010481

`record[A003982(n)*A231451(n+1)]`
-/

namespace A231443.P9926177135995010481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231443.P9926177135995010481

/-!
# A231444: Number of (n+1) X (1+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231444, the canonical program `A231444.P13244204290273250743` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231444 has offset 1).

The definition of A231444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231444.P13244204290273250743

`A199142(2*(n+2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A231444

/-- `A199142(2*(n+2))` -/
def P13244204290273250743.Spec : Prop :=
  ∀ n, P13244204290273250743.a n = A231444 (n + 1)

theorem P13244204290273250743.correct : P13244204290273250743.Spec := by
  intro n
  simp only [A231444, Nat.add_sub_cancel]

end A231444

/-! ## A231444.P12052215082616839057

`A231337(Δ[n²])-1`
-/

namespace A231444.P12052215082616839057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231337 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A231444.P12052215082616839057

namespace A231444

/-- `A231337(Δ[n²])-1` -/
def P12052215082616839057.Spec : Prop :=
  ∀ n, P12052215082616839057.a n = A231444 (n + 1)

end A231444

/-! ## A231444.P11178735221521135646

`record[A199142(A133265(n+3))]`
-/

namespace A231444.P11178735221521135646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199142 (A133265 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231444.P11178735221521135646

namespace A231444

/-- `record[A199142(A133265(n+3))]` -/
def P11178735221521135646.Spec : Prop :=
  ∀ n, P11178735221521135646.a n = A231444 (n + 1)

end A231444

/-! ## A231444.P7163966664732855857

`record[A199142(A123246(n+6))]`
-/

namespace A231444.P7163966664732855857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199142 (A123246 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231444.P7163966664732855857

namespace A231444

/-- `record[A199142(A123246(n+6))]` -/
def P7163966664732855857.Spec : Prop :=
  ∀ n, P7163966664732855857.a n = A231444 (n + 1)

end A231444

/-! ## A231444.P9121741609190758761

`record[A199142(n+4)/A033999(n)]`
-/

namespace A231444.P9121741609190758761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199142 (n + 4) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231444.P9121741609190758761

namespace A231444

/-- `record[A199142(n+4)/A033999(n)]` -/
def P9121741609190758761.Spec : Prop :=
  ∀ n, P9121741609190758761.a n = (A231444 (n + 1) : ℚ)

end A231444

/-! ## A231444.P3961170608926474584

`A231458(2*n+1)-(A040012(n)+1)`
-/

namespace A231444.P3961170608926474584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231458 (2 * n + 1) - (A040012 n + 1)

end

end A231444.P3961170608926474584

namespace A231444

/-- `A231458(2*n+1)-(A040012(n)+1)` -/
def P3961170608926474584.Spec : Prop :=
  ∀ n, P3961170608926474584.a n = A231444 (n + 1)

end A231444

/-! ## A231444.P16307466002411427244

`ogf((2-16x+39x^2-35x^3+9x^4)/(1-11x+41x^2-65x^3+43x^4-9x^5))`
-/

namespace A231444.P16307466002411427244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -16, 39, -35, 9] [1, -11, 41, -65, 43, -9] n

end

end A231444.P16307466002411427244

namespace A231444

/-- `ogf((2-16x+39x^2-35x^3+9x^4)/(1-11x+41x^2-65x^3+43x^4-9x^5))` -/
def P16307466002411427244.Spec : Prop :=
  ∀ n, P16307466002411427244.a n = A231444 (n + 1)

end A231444

/-!
# A231445: Number of (n+1) X (2+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231445, there is no canonical definition to state claims against.
-/

/-! ## A231445.P2051393165062143898

`A231451(∑[n+2])`
-/

namespace A231445.P2051393165062143898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231445.P2051393165062143898

/-! ## A231445.P1065212944246884144

`record[A231451(abs(A201163(n)))]`
-/

namespace A231445.P1065212944246884144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231445.P1065212944246884144

/-! ## A231445.P15703005047261661092

`record[A231451(A198455(n+1))]`
-/

namespace A231445.P15703005047261661092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231445.P15703005047261661092

/-! ## A231445.P1297340391107073076

`record[A231451(n+2)/A240783(n+4)]`
-/

namespace A231445.P1297340391107073076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231451 (n + 2) : ℚ) / (A240783 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231445.P1297340391107073076

/-! ## A231445.P17015201910570573431

`record[root(A231451(n+2), A058399(n+3))]`
-/

namespace A231445.P17015201910570573431
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231451 (n + 2) : ℝ) ^ (1 / (A058399 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231445.P17015201910570573431

/-!
# A231446: Number of (n+1)X(3+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231446, there is no canonical definition to state claims against.
-/

/-! ## A231446.P7573245042482754543

`A231451(∑[n+3]+1)`
-/

namespace A231446.P7573245042482754543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231446.P7573245042482754543

/-! ## A231446.P17204607577930114405

`record[A231451(A198464(n+1))]`
-/

namespace A231446.P17204607577930114405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231446.P17204607577930114405

/-! ## A231446.P1512855719395780885

`A015198(n)*A231451(A034856(n+2))`
-/

namespace A231446.P1512855719395780885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015198 n * A231451 (A034856 (n + 2)).toNat

end

end A231446.P1512855719395780885

/-! ## A231446.P6172603959144996008

`A016068(n)*A231451(A034856(n+2))`
-/

namespace A231446.P6172603959144996008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 n * A231451 (A034856 (n + 2)).toNat

end

end A231446.P6172603959144996008

/-! ## A231446.P3501645254459485057

`A320647(n+1)+A231451(A034856(n+2))`
-/

namespace A231446.P3501645254459485057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (n + 1) + A231451 (A034856 (n + 2)).toNat

end

end A231446.P3501645254459485057

/-!
# A231447: Number of (n+1)X(4+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231447, there is no canonical definition to state claims against.
-/

/-! ## A231447.P11569848207521363887

`A231451(A141214(n+1))`
-/

namespace A231447.P11569848207521363887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A141214 (n + 1)).toNat

end

end A231447.P11569848207521363887

/-! ## A231447.P10645938897358926893

`A231451(A027379(n+2))`
-/

namespace A231447.P10645938897358926893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A027379 (n + 2)).toNat

end

end A231447.P10645938897358926893

/-! ## A231447.P5682109946110278831

`A231451(A056000(n)+7)`
-/

namespace A231447.P5682109946110278831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A056000 n + 7).toNat

end

end A231447.P5682109946110278831

/-! ## A231447.P6074730961595094124

`A231451(eq[4, A140996(n)])`
-/

namespace A231447.P6074730961595094124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231447.P6074730961595094124

/-! ## A231447.P13498389685653586417

`A231451(Δ[A034857(n+1)])`
-/

namespace A231447.P13498389685653586417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (f1 (n + 1) - f1 n).toNat

end

end A231447.P13498389685653586417

/-!
# A231448: Number of (n+1)X(5+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231448, there is no canonical definition to state claims against.
-/

/-! ## A231448.P8404832635509271441

`A231451(Δ[A264443(n)])`
-/

namespace A231448.P8404832635509271441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (f1 (n + 1) - f1 n).toNat

end

end A231448.P8404832635509271441

/-! ## A231448.P9708693081427036201

`A231451(eq[4, A193592(n)])`
-/

namespace A231448.P9708693081427036201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231448.P9708693081427036201

/-! ## A231448.P5064890556378372104

`A231451(eq[8, A140996(n)])`
-/

namespace A231448.P5064890556378372104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231448.P5064890556378372104

/-! ## A231448.P9756246183963217442

`A231451(Δ[A023545(n+1)])`
-/

namespace A231448.P9756246183963217442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (f1 (n + 1) - f1 n).toNat

end

end A231448.P9756246183963217442

/-!
# A231449: Number of (n+1)X(6+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231449, there is no canonical definition to state claims against.
-/

/-! ## A231449.P17832977810279702268

`A231451(A056119(n)+16)`
-/

namespace A231449.P17832977810279702268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A056119 n + 16).toNat

end

end A231449.P17832977810279702268

/-! ## A231449.P8679776677329963772

`A231451(eq[3, A219347(n)])`
-/

namespace A231449.P8679776677329963772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231449.P8679776677329963772

/-! ## A231449.P4195569899794592398

`A231451(A055999(n+3)+1)`
-/

namespace A231449.P4195569899794592398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A055999 (n + 3) + 1).toNat

end

end A231449.P4195569899794592398

/-! ## A231449.P3365129530072664644

`A231451(A000217(n+6)-5)`
-/

namespace A231449.P3365129530072664644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A000217 (n + 6) - 5).toNat

end

end A231449.P3365129530072664644

/-! ## A231449.P182169827288650698

`A231451(eq[6, A200370(n+1)])`
-/

namespace A231449.P182169827288650698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231449.P182169827288650698

/-!
# A231450: Number of (n+1)X(7+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231450, there is no canonical definition to state claims against.
-/

/-! ## A231450.P5484198340797296368

`A231451(A055999(n+4))`
-/

namespace A231450.P5484198340797296368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A055999 (n + 4)).toNat

end

end A231450.P5484198340797296368

/-! ## A231450.P2171541640173199791

`A231451(eq[4, A219347(n)])`
-/

namespace A231450.P2171541640173199791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231450.P2171541640173199791

/-! ## A231450.P12860549973950895442

`A231451(eq[5, A332954(n)])`
-/

namespace A231450.P12860549973950895442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231450.P12860549973950895442

/-! ## A231450.P15520740791436373796

`A231451(eq[6, A193592(n)])`
-/

namespace A231450.P15520740791436373796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231450.P15520740791436373796

/-! ## A231450.P14630089587330318262

`A231451(eq[6, A243060(n+1)])`
-/

namespace A231450.P14630089587330318262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231450.P14630089587330318262

/-!
# A231452: Number of (2+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231452, there is no canonical definition to state claims against.
-/

/-! ## A231452.P14212831353620361862

`A231451(∑[n+1]+2)`
-/

namespace A231452.P14212831353620361862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231452.P14212831353620361862

/-! ## A231452.P5569766148963941542

`record[A231451(n+3)/A144502(n)]`
-/

namespace A231452.P5569766148963941542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231451 (n + 3) : ℚ) / (A144502 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231452.P5569766148963941542

/-! ## A231452.P1570736359527458611

`record[A231451(n+3)/A039683(n+1)]`
-/

namespace A231452.P1570736359527458611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231451 (n + 3) : ℚ) / (A039683 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231452.P1570736359527458611

/-! ## A231452.P9868062388258894106

`record[root(A231451(n+3), A058399(n+1))]`
-/

namespace A231452.P9868062388258894106
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231451 (n + 3) : ℝ) ^ (1 / (A058399 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231452.P9868062388258894106

/-! ## A231452.P4415299140084390685

`record[root(A231451(n+3), A240783(n+2))]`
-/

namespace A231452.P4415299140084390685
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231451 (n + 3) : ℝ) ^ (1 / (A240783 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231452.P4415299140084390685

/-!
# A231453: Number of (3+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231453, there is no canonical definition to state claims against.
-/

/-! ## A231453.P16076465526785834408

`A231451(∑[n+2]+4)`
-/

namespace A231453.P16076465526785834408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231453.P16076465526785834408

/-! ## A231453.P14745257223885726509

`lcm((n+1)/∏{p}[n+1, #], A231451(A167614(n+1)))`
-/

namespace A231453.P14745257223885726509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A231451 (A167614 (n + 1)).toNat)

end

end A231453.P14745257223885726509

/-! ## A231453.P297497822390720343

`A231451(A167614(n+1))+A184945(n)`
-/

namespace A231453.P297497822390720343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A167614 (n + 1)).toNat + A184945 n

end

end A231453.P297497822390720343

/-! ## A231453.P2232192217744924365

`lcm(A165326(n), A231451(A167614(n+1)))`
-/

namespace A231453.P2232192217744924365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A231451 (A167614 (n + 1)).toNat)

end

end A231453.P2232192217744924365

/-! ## A231453.P18317098686950876405

`or(A010894(n), A231451(A167614(n+1)))`
-/

namespace A231453.P18317098686950876405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 (n + 21)) (A231451 (A167614 (n + 1)).toNat)

end

end A231453.P18317098686950876405

/-!
# A231454: Number of (4+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231454, there is no canonical definition to state claims against.
-/

/-! ## A231454.P6712504137924179741

`A231451(A141214(n)+7)`
-/

namespace A231454.P6712504137924179741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A141214 n + 7).toNat

end

end A231454.P6712504137924179741

/-! ## A231454.P12126547809249062658

`A231451(A052905(n)+9)`
-/

namespace A231454.P12126547809249062658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A052905 n + 9).toNat

end

end A231454.P12126547809249062658

/-! ## A231454.P16836287232746089906

`A231451(A055999(n)+10)`
-/

namespace A231454.P16836287232746089906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A055999 n + 10).toNat

end

end A231454.P16836287232746089906

/-! ## A231454.P13333937975032244423

`A231451(A167614(n+2)+1)`
-/

namespace A231454.P13333937975032244423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A167614 (n + 2) + 1).toNat

end

end A231454.P13333937975032244423

/-! ## A231454.P14062741458433875931

`A231451(A166136(n+2)-2)`
-/

namespace A231454.P14062741458433875931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A166136 (n + 2) - 2).toNat

end

end A231454.P14062741458433875931

/-!
# A231455: Number of (5+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231455, there is no canonical definition to state claims against.
-/

/-! ## A231455.P2728594882229275144

`A231451(A167499(n+3))`
-/

namespace A231455.P2728594882229275144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A167499 (n + 3)).toNat

end

end A231455.P2728594882229275144

/-! ## A231455.P16603391245085601574

`A231451(A155212(n)+13)`
-/

namespace A231455.P16603391245085601574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A155212 n + 13).toNat

end

end A231455.P16603391245085601574

/-! ## A231455.P2909900891306046759

`A231451(eq[7, A066657(n)])`
-/

namespace A231455.P2909900891306046759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231455.P2909900891306046759

/-! ## A231455.P1650827856057840244

`A231451(A027379(n+2)+8)`
-/

namespace A231455.P1650827856057840244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A027379 (n + 2) + 8).toNat

end

end A231455.P1650827856057840244

/-! ## A231455.P12458396747660417918

`A231451(eq[6, A131818(n+1)])`
-/

namespace A231455.P12458396747660417918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231455.P12458396747660417918

/-!
# A231456: Number of (6+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231456, there is no canonical definition to state claims against.
-/

/-! ## A231456.P10265351838886740165

`A231451(A166136(n+4))`
-/

namespace A231456.P10265351838886740165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A166136 (n + 4)).toNat

end

end A231456.P10265351838886740165

/-! ## A231456.P9500596737929524049

`A231451(Δ[A264443(n)]+10)`
-/

namespace A231456.P9500596737929524049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (f1 (n + 1) - f1 n + 10).toNat

end

end A231456.P9500596737929524049

/-! ## A231456.P13482365329490344200

`A231451(A167499(n+4)+1)`
-/

namespace A231456.P13482365329490344200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A167499 (n + 4) + 1).toNat

end

end A231456.P13482365329490344200

/-! ## A231456.P10115818730759753270

`A231451(A000217(n+5)+6)`
-/

namespace A231456.P10115818730759753270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A000217 (n + 5) + 6).toNat

end

end A231456.P10115818730759753270

/-! ## A231456.P5027887323119768073

`A231451(A161680(n+6)+6)`
-/

namespace A231456.P5027887323119768073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A161680 (n + 6) + 6).toNat

end

end A231456.P5027887323119768073

/-!
# A231457: Number of (7+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231457, there is no canonical definition to state claims against.
-/

/-! ## A231457.P14608516859622901373

`A231451(A167487(n+5))`
-/

namespace A231457.P14608516859622901373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A167487 (n + 5)).toNat

end

end A231457.P14608516859622901373

/-! ## A231457.P4836479977230310722

`A231451(eq[11, A066657(n)])`
-/

namespace A231457.P4836479977230310722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231457.P4836479977230310722

/-! ## A231457.P12503199868388786030

`A231451(A167499(n+5)+2)`
-/

namespace A231457.P12503199868388786030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A167499 (n + 5) + 2).toNat

end

end A231457.P12503199868388786030

/-! ## A231457.P11494549898441104500

`A231451(A000124(n+6)+6)`
-/

namespace A231457.P11494549898441104500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (A000124 (n + 6) + 6).toNat

end

end A231457.P11494549898441104500

/-! ## A231457.P5928149646955724207

`A231451(eq[8, A131818(n+1)])`
-/

namespace A231457.P5928149646955724207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231457.P5928149646955724207

/-!
# A231458: Number of (n+1) X (2+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231458, the canonical program `A231458.P2649698238847717702` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231458 has offset 1).

The definition of A231458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231458.P13030411074499690756

`ogf((7-13x-16x^2+16x^3+6x^4+16x^5+12x^6)/(1-3x-x^2+7x^3-x^4-3x^5))`
-/

namespace A231458.P13030411074499690756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -13, -16, 16, 6, 16, 12] [1, -3, -1, 7, -1, -3] n

end

end A231458.P13030411074499690756

namespace A231458

/-- `ogf((7-13x-16x^2+16x^3+6x^4+16x^5+12x^6)/(1-3x-x^2+7x^3-x^4-3x^5))` -/
def P13030411074499690756.Spec : Prop :=
  ∀ n, P13030411074499690756.a n = A231458 (n + 1)

end A231458

/-! ## A231458.P2649698238847717702

`3*a(n-1)+a(n-2)-7*a(n-3)+a(n-4)+3*a(n-5)` with `a(0)=7, a(1)=8, a(2)=15, a(3)=20, a(4)=32, a(5)=56, a(6)=111`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231458

/-- `3*a(n-1)+a(n-2)-7*a(n-3)+a(n-4)+3*a(n-5)` -/
def P2649698238847717702.Spec : Prop :=
  ∀ n, P2649698238847717702.a n = A231458 (n + 1)

theorem P2649698238847717702.correct : P2649698238847717702.Spec := by
  intro n
  simp only [A231458, Nat.add_sub_cancel]

end A231458

/-! ## A231458.P12395477392492795527

`A231337(n+1)+A040012(A266123(n))`
-/

namespace A231458.P12395477392492795527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231337 (n + 1) + A040012 (A266123 n).toNat

end

end A231458.P12395477392492795527

namespace A231458

/-- `A231337(n+1)+A040012(A266123(n))` -/
def P12395477392492795527.Spec : Prop :=
  ∀ n, P12395477392492795527.a n = A231458 (n + 1)

end A231458

/-! ## A231458.P17336921000763236530

`A231337(n+1)+A145154(A136548(n+1))`
-/

namespace A231458.P17336921000763236530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231337 (n + 1) + A145154 (A136548 (n + 1)).toNat

end

end A231458.P17336921000763236530

namespace A231458

/-- `A231337(n+1)+A145154(A136548(n+1))` -/
def P17336921000763236530.Spec : Prop :=
  ∀ n, P17336921000763236530.a n = A231458 (n + 1)

end A231458

/-! ## A231458.P7436878282304687843

`A040012(A266123(n))+A199142(n+4)+1`
-/

namespace A231458.P7436878282304687843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 (A266123 n).toNat + (A199142 (n + 4) + 1)

end

end A231458.P7436878282304687843

namespace A231458

/-- `A040012(A266123(n))+A199142(n+4)+1` -/
def P7436878282304687843.Spec : Prop :=
  ∀ n, P7436878282304687843.a n = A231458 (n + 1)

end A231458

/-! ## A231458.P2748171874647236381

`A145154(A136548(n+1))+A199142(n+4)+1`
-/

namespace A231458.P2748171874647236381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A136548 (n + 1)).toNat + (A199142 (n + 4) + 1)

end

end A231458.P2748171874647236381

namespace A231458

/-- `A145154(A136548(n+1))+A199142(n+4)+1` -/
def P2748171874647236381.Spec : Prop :=
  ∀ n, P2748171874647236381.a n = A231458 (n + 1)

end A231458

/-! ## A231458.P7362357135759767734

`A311295(A001227(A151800(n)))+A231337(n+1)`
-/

namespace A231458.P7362357135759767734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311295 (A001227 (A151800 n).toNat).toNat + A231337 (n + 1)

end

end A231458.P7362357135759767734

namespace A231458

/-- `A311295(A001227(A151800(n)))+A231337(n+1)` -/
def P7362357135759767734.Spec : Prop :=
  ∀ n, P7362357135759767734.a n = A231458 (n + 1)

end A231458

/-! ## A231458.P11852267389468360668

`A231337(n+1)+A145154(A003274(n)/A069241(n))`
-/

namespace A231458.P11852267389468360668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231337 (n + 1) + A145154 (SequenceMachineLib.roundAway ((A003274 n : ℚ) / (A069241 n : ℚ))).toNat

end

end A231458.P11852267389468360668

namespace A231458

/-- `A231337(n+1)+A145154(A003274(n)/A069241(n))` -/
def P11852267389468360668.Spec : Prop :=
  ∀ n, P11852267389468360668.a n = A231458 (n + 1)

end A231458

/-!
# A231459: Number of (n+1)X(3+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231459, there is no canonical definition to state claims against.
-/

/-! ## A231459.P10256834097419124153

`A231463(∑[n+3]+1)`
-/

namespace A231459.P10256834097419124153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231459.P10256834097419124153

/-! ## A231459.P13341442116809419697

`record[A231463(A198464(n+1))]`
-/

namespace A231459.P13341442116809419697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231459.P13341442116809419697

/-! ## A231459.P13578393477792641831

`A231463(A052905(n)+3)+A025466(n)`
-/

namespace A231459.P13578393477792641831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A052905 n + 3).toNat + A025466 n

end

end A231459.P13578393477792641831

/-! ## A231459.P5001690148980844300

`A231463(A052905(n)+3)+A185037(n)`
-/

namespace A231459.P5001690148980844300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A052905 n + 3).toNat + A185037 n

end

end A231459.P5001690148980844300

/-! ## A231459.P3214202680656438372

`A231463(A052905(n)+3)+A193095(n)`
-/

namespace A231459.P3214202680656438372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A052905 n + 3).toNat + A193095 n

end

end A231459.P3214202680656438372

/-!
# A231460: Number of (n+1)X(4+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231460, there is no canonical definition to state claims against.
-/

/-! ## A231460.P7290821561706466225

`A231463(Δ[n²]+∑[n+2]+4)`
-/

namespace A231460.P7290821561706466225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A231460.P7290821561706466225

/-!
# A231461: Number of (n+1)X(5+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231461, there is no canonical definition to state claims against.
-/

/-! ## A231461.P1196288886338830055

`A231463(∑[n+5]+6)`
-/

namespace A231461.P1196288886338830055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A231461.P1196288886338830055

/-! ## A231461.P15191891409286471085

`A231463(A046691(n+3))+A025444(n)`
-/

namespace A231461.P15191891409286471085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A046691 (n + 3)).toNat + A025444 n

end

end A231461.P15191891409286471085

/-!
# A231462: Number of (n+1)X(6+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231462, there is no canonical definition to state claims against.
-/

/-! ## A231462.P9773153459306544946

`A231463(C(∑{digits}[n+1, #]+5, 2)+n+1)`
-/

namespace A231462.P9773153459306544946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (Nat.choose (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 5) 2 + n + 1)

end

end A231462.P9773153459306544946

/-! ## A231462.P6076915995618663666

`A231463(A052905(n+3))`
-/

namespace A231462.P6076915995618663666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A052905 (n + 3)).toNat

end

end A231462.P6076915995618663666

/-! ## A231462.P3144914316290668940

`A231463(A056119(n)+16)`
-/

namespace A231462.P3144914316290668940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A056119 n + 16).toNat

end

end A231462.P3144914316290668940

/-! ## A231462.P3620287166101819667

`A231463(eq[3, A219347(n)])`
-/

namespace A231462.P3620287166101819667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231462.P3620287166101819667

/-!
# A231463: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231463, there is no canonical definition to state claims against.
-/

/-! ## A231463.P7501596274137937166

`A231396(A187829(n+1))+char[14]`
-/

namespace A231463.P7501596274137937166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A187829 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231463.P7501596274137937166

/-! ## A231463.P4178632984501763229

`A231396(n+1)+A025466(A110334(n))`
-/

namespace A231463.P4178632984501763229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (n + 1) + A025466 (A110334 n).toNat

end

end A231463.P4178632984501763229

/-! ## A231463.P14255870756101743420

`A231396(n+1)+A193095(A015066(n))`
-/

namespace A231463.P14255870756101743420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (n + 1) + A193095 (A015066 n).toNat

end

end A231463.P14255870756101743420

/-! ## A231463.P1629283479996269349

`A231396(n+1)+A185037(A078840(n))`
-/

namespace A231463.P1629283479996269349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (n + 1) + A185037 (A078840 n).toNat

end

end A231463.P1629283479996269349

/-! ## A231463.P638906931675962406

`A231396(n+1)+A025466(A261983(n))`
-/

namespace A231463.P638906931675962406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (n + 1) + A025466 (A261983 n).toNat

end

end A231463.P638906931675962406

/-!
# A231464: Number of (1+1) X (n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231464, there is no canonical definition to state claims against.
-/

/-! ## A231464.P9322775741519577122

`A231463(∑[n]+1)`
-/

namespace A231464.P9322775741519577122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231464.P9322775741519577122

/-! ## A231464.P6750077796906489708

`record[A231463(∑[A057979(n)])]`
-/

namespace A231464.P6750077796906489708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231464.P6750077796906489708

/-! ## A231464.P10861184754533592374

`record[A231463(record[A114220(n)])]`
-/

namespace A231464.P10861184754533592374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231464.P10861184754533592374

/-! ## A231464.P6347912334424326910

`record[A231463(A056534(n+1))]`
-/

namespace A231464.P6347912334424326910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231464.P6347912334424326910

/-! ## A231464.P4415599458049339062

`record[A231463(record[A220053(n+1)])]`
-/

namespace A231464.P4415599458049339062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220053 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231464.P4415599458049339062

/-!
# A231465: Number of (2+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231465, there is no canonical definition to state claims against.
-/

/-! ## A231465.P5297968684161388707

`A231463(∑[n+1]+2)`
-/

namespace A231465.P5297968684161388707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231465.P5297968684161388707

/-! ## A231465.P15216049815896701252

`record[gcd(A231463(n+3), A278882(n+1))]`
-/

namespace A231465.P15216049815896701252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231463 (n + 3)) (A278882 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231465.P15216049815896701252

/-! ## A231465.P12387778765530875756

`A231463(A133263(n+1))+A055967(n)`
-/

namespace A231465.P12387778765530875756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A133263 (n + 1)).toNat + A055967 n

end

end A231465.P12387778765530875756

/-! ## A231465.P7335322530366368873

`A231463(A133263(n+1))+A185037(n)`
-/

namespace A231465.P7335322530366368873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A133263 (n + 1)).toNat + A185037 n

end

end A231465.P7335322530366368873

/-! ## A231465.P5421152351207826734

`or(A193095(n), A231463(A133263(n+1)))`
-/

namespace A231465.P5421152351207826734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193095 n) (A231463 (A133263 (n + 1)).toNat)

end

end A231465.P5421152351207826734

/-!
# A231466: Number of (3+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231466, there is no canonical definition to state claims against.
-/

/-! ## A231466.P16397932222491073586

`A231463(∑[n+2]+4)`
-/

namespace A231466.P16397932222491073586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231466.P16397932222491073586

/-! ## A231466.P14412640393963793831

`A231463(A167614(n+1))+char[12]`
-/

namespace A231466.P14412640393963793831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231466.P14412640393963793831

/-! ## A231466.P11238005423187643941

`A208673(n)*A231463(A167614(n+1))`
-/

namespace A231466.P11238005423187643941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 n * A231463 (A167614 (n + 1)).toNat

end

end A231466.P11238005423187643941

/-! ## A231466.P3040547203343934686

`A231463(A167614(n+1))*A309913(n)`
-/

namespace A231466.P3040547203343934686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A167614 (n + 1)).toNat * A309913 n

end

end A231466.P3040547203343934686

/-! ## A231466.P3590318946431065862

`A231463(A167614(n+1))%A017118(n)`
-/

namespace A231466.P3590318946431065862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231463 (A167614 (n + 1)).toNat) (A017118 n)

end

end A231466.P3590318946431065862

/-!
# A231467: Number of (4+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231467, there is no canonical definition to state claims against.
-/

/-! ## A231467.P5399072708654204345

`A231463(∑[n+3]+7)`
-/

namespace A231467.P5399072708654204345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231467.P5399072708654204345

/-!
# A231468: Number of (5+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231468, there is no canonical definition to state claims against.
-/

/-! ## A231468.P14269708377760451880

`A231463(A167499(n+3))`
-/

namespace A231468.P14269708377760451880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A167499 (n + 3)).toNat

end

end A231468.P14269708377760451880

/-! ## A231468.P5540182470568220904

`A231463(A155212(n)+13)`
-/

namespace A231468.P5540182470568220904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A155212 n + 13).toNat

end

end A231468.P5540182470568220904

/-! ## A231468.P16043299801915494189

`A231463(A056000(n)+15)`
-/

namespace A231468.P16043299801915494189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A056000 n + 15).toNat

end

end A231468.P16043299801915494189

/-! ## A231468.P9959586023732115997

`A231463(eq[7, A066657(n)])`
-/

namespace A231468.P9959586023732115997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231468.P9959586023732115997

/-! ## A231468.P9074603370592504751

`A231463(A133263(n+4)+3)`
-/

namespace A231468.P9074603370592504751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A133263 (n + 4) + 3).toNat

end

end A231468.P9074603370592504751

/-!
# A231469: Number of (6+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231469, there is no canonical definition to state claims against.
-/

/-! ## A231469.P11327338188374914257

`A231463(C(n+7, 2)-n)`
-/

namespace A231469.P11327338188374914257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (Nat.choose (n + 7) 2 - n)

end

end A231469.P11327338188374914257

/-! ## A231469.P7815062818656347762

`A231463(A166136(n+4))`
-/

namespace A231469.P7815062818656347762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A166136 (n + 4)).toNat

end

end A231469.P7815062818656347762

/-! ## A231469.P12576046166546223602

`A231463(A056115(n)+21)`
-/

namespace A231469.P12576046166546223602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A056115 n + 21).toNat

end

end A231469.P12576046166546223602

/-! ## A231469.P4280826741271970571

`A231463(A167499(n+4)+1)`
-/

namespace A231469.P4280826741271970571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A167499 (n + 4) + 1).toNat

end

end A231469.P4280826741271970571

/-! ## A231469.P6440942615540304103

`A231463(A000096(n+4)+7)`
-/

namespace A231469.P6440942615540304103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A000096 (n + 4) + 7).toNat

end

end A231469.P6440942615540304103

/-!
# A231470: Largest integer less than 10, coprime to n.

The programs for A231470, there is no canonical definition to state claims against.
-/

/-! ## A231470.P9710919811611721591

`A231471(lcm(n+1, n%2-5))`
-/

namespace A231470.P9710919811611721591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231471 (Int.lcm (n + 1 : ℤ) (((n % 2 : ℕ) : ℤ) - 5))

end

end A231470.P9710919811611721591

/-!
# A231471: Largest integer less than 11 and coprime to n.

The programs for A231471, there is no canonical definition to state claims against.
-/

/-! ## A231471.P5873896433019658238

`A231472(11*(n+1))`
-/

namespace A231471.P5873896433019658238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231472 (11 * (n + 1))

end

end A231471.P5873896433019658238

/-!
# A231472: Largest integer less than 12 and coprime to n.

The programs for A231472, there is no canonical definition to state claims against.
-/

/-! ## A231472.P14836959647330331233

`A084066((n+1)²+9*A084066(n))`
-/

namespace A231472.P14836959647330331233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (((n + 1) ^ 2 : ℤ) + 9 * A084066 n).toNat

end

end A231472.P14836959647330331233

/-!
# A231473: Number T(n,k) of equivalence classes of ways of placing k 3 X 3 tiles in an n X 5 rectangle under all symmetry operations of the rectangle; irregular triangle T(n,k), n>=3, 0<=k<=floor(n/3), read by rows.

The programs for A231473, there is no canonical definition to state claims against.
-/

/-! ## A231473.P1010323526551081071

`A008642(A052509(2*(n+1))%A003022(2*n+5))`
-/

namespace A231473.P1010323526551081071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (Int.tmod (A052509 (2 * (n + 1))) (A003022 (2 * n + 5))).toNat

end

end A231473.P1010323526551081071

/-!
# A231474: Primes whose base-3 representation is also the base-5 representation of a prime.

The programs for A231474, the canonical program `A231474.P10822810244799036707` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231474 has offset 1).

The definition of A231474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231474.P10822810244799036707

`p?[(n+1)*A001222(A037453(n+1))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A231474

/-- `p?[(n+1)*A001222(A037453(n+1))]` -/
def P10822810244799036707.Spec : Prop :=
  ∀ n, P10822810244799036707.a n = A231474 (n + 1)

theorem P10822810244799036707.correct : P10822810244799036707.Spec := by
  intro n
  simp only [A231474, Nat.add_sub_cancel]

end A231474

/-! ## A231474.P12301098138805435089

`p?[A033676(A037453(n+1))*A141310(n)]`
-/

namespace A231474.P12301098138805435089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A037453 (n + 1)).toNat * A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231474.P12301098138805435089

namespace A231474

/-- `p?[A033676(A037453(n+1))*A141310(n)]` -/
def P12301098138805435089.Spec : Prop :=
  ∀ n, P12301098138805435089.a n = A231474 (n + 1)

end A231474

/-! ## A231474.P13170268556212846190

`p?[A000027(n+1)*A033676(A037453(n+1))]`
-/

namespace A231474.P13170268556212846190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A033676 (A037453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231474.P13170268556212846190

namespace A231474

/-- `p?[A000027(n+1)*A033676(A037453(n+1))]` -/
def P13170268556212846190.Spec : Prop :=
  ∀ n, P13170268556212846190.a n = A231474 (n + 1)

end A231474

/-! ## A231474.P17898693308275123569

`p?[A033676(A037453(n+1))*A326136(n+1)]`
-/

namespace A231474.P17898693308275123569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A037453 (n + 1)).toNat * A326136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231474.P17898693308275123569

namespace A231474

/-- `p?[A033676(A037453(n+1))*A326136(n+1)]` -/
def P17898693308275123569.Spec : Prop :=
  ∀ n, P17898693308275123569.a n = A231474 (n + 1)

end A231474

/-! ## A231474.P191141916707646901

`p?[A033676(A037453(n+1))*A249818(n+1)]`
-/

namespace A231474.P191141916707646901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A037453 (n + 1)).toNat * A249818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231474.P191141916707646901

namespace A231474

/-- `p?[A033676(A037453(n+1))*A249818(n+1)]` -/
def P191141916707646901.Spec : Prop :=
  ∀ n, P191141916707646901.a n = A231474 (n + 1)

end A231474

/-!
# A231475: Largest integer less than 5 and coprime to n.

The programs for A231475, the canonical program `A231475.P11351295655025769392` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231475 has offset 1).

The definition of A231475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231475.P11351295655025769392

`4-3%gcd(6, n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231475

/-- `4-3%gcd(6, n+1)` -/
def P11351295655025769392.Spec : Prop :=
  ∀ n, P11351295655025769392.a n = A231475 (n + 1)

theorem P11351295655025769392.correct : P11351295655025769392.Spec := by
  intro n
  simp only [A231475, Nat.add_sub_cancel]

end A231475

/-!
# A231476: Primes whose base-3 representation is also the base-6 representation of a prime.

The programs for A231476, there is no canonical definition to state claims against.
-/

/-! ## A231476.P6988636949920327733

`p?[(n+1)*A001222(A037454(n+1))]`
-/

namespace A231476.P6988636949920327733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A037454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231476.P6988636949920327733

/-! ## A231476.P10364956754664933127

`p?[A001222(A037454(n+1))*A153152(n)]`
-/

namespace A231476.P10364956754664933127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037454 (n + 1)).toNat * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231476.P10364956754664933127

/-! ## A231476.P17243198167771185137

`p?[n*A152188(A037454(n))]`
-/

namespace A231476.P17243198167771185137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A152188 (A037454 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231476.P17243198167771185137

/-! ## A231476.P8858970918167595046

`eq[A175126(A037454(n)), A226378(n)]`
-/

namespace A231476.P8858970918167595046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A037454 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231476.P8858970918167595046

/-! ## A231476.P16586622191202670650

`eq[2, A175126(A037454(n))+A175126(n)]`
-/

namespace A231476.P16586622191202670650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A037454 n).toNat + A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231476.P16586622191202670650

/-!
# A231477: Primes whose base-3 representation is also the base-7 representation of a prime.

The programs for A231477, there is no canonical definition to state claims against.
-/

/-! ## A231477.P873362683128137352

`p?[(n+1)*A001222(A037455(n+1))]`
-/

namespace A231477.P873362683128137352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A037455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231477.P873362683128137352

/-! ## A231477.P11744192016791949159

`p?[n*A328772(A037455(n))]`
-/

namespace A231477.P11744192016791949159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328772 (A037455 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231477.P11744192016791949159

/-! ## A231477.P3342787699749356305

`eq[A074206(A037455(n)), A210442(n)]`
-/

namespace A231477.P3342787699749356305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A037455 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231477.P3342787699749356305

/-! ## A231477.P17986264238364267467

`eq[A005128(A037455(n)), A077462(n)]`
-/

namespace A231477.P17986264238364267467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A037455 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231477.P17986264238364267467

/-! ## A231477.P16584667654481299386

`eq[A003415(A037455(n)), A166974(n)]`
-/

namespace A231477.P16584667654481299386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A037455 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231477.P16584667654481299386

/-!
# A231478: Primes whose base-3 representation is also the base-8 representation of a prime.

The programs for A231478, there is no canonical definition to state claims against.
-/

/-! ## A231478.P1380146677679746787

`A334888(A235471(n+1))`
-/

namespace A231478.P1380146677679746787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334888 (A235471 (n + 1)).toNat

end

end A231478.P1380146677679746787

/-! ## A231478.P2196962720008587911

`p?[eq[1, A105700(A037456(n))]]`
-/

namespace A231478.P2196962720008587911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A037456 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A231478.P2196962720008587911

/-! ## A231478.P12791987483078027140

`eq[A005128(A037456(n)), A077462(n)]`
-/

namespace A231478.P12791987483078027140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A037456 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231478.P12791987483078027140

/-! ## A231478.P9656195086543884444

`eq[A175126(A037456(n)), A226378(n)]`
-/

namespace A231478.P9656195086543884444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A037456 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231478.P9656195086543884444

/-! ## A231478.P6040272438659156418

`eq[2, A175126(A037456(n))+A175126(n)]`
-/

namespace A231478.P6040272438659156418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A037456 n).toNat + A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231478.P6040272438659156418

/-!
# A231479: Primes whose base-7 representation is also the base-9 representation of a prime.

The programs for A231479, the canonical program `A231479.P10423907028065435007` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231479 has offset 1).

The definition of A231479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231479.P10423907028065435007

`p?[A001222(A037475(n+1))*(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231479

/-- `p?[A001222(A037475(n+1))*(n+1)]` -/
def P10423907028065435007.Spec : Prop :=
  ∀ n, P10423907028065435007.a n = A231479 (n + 1)

theorem P10423907028065435007.correct : P10423907028065435007.Spec := by
  intro n
  simp only [A231479, Nat.add_sub_cancel]

end A231479

/-! ## A231479.P15032067283896271393

`eq[A086134(n), A292438(A037475(n))]`
-/

namespace A231479.P15032067283896271393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A037475 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231479.P15032067283896271393

namespace A231479

/-- `eq[A086134(n), A292438(A037475(n))]` -/
def P15032067283896271393.Spec : Prop :=
  ∀ n, (P15032067283896271393.a n : ℤ) = A231479 (n + 1)

end A231479

/-! ## A231479.P1067676685915009322

`eq[A003415(n), A226378(A037475(n))]`
-/

namespace A231479.P1067676685915009322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A037475 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231479.P1067676685915009322

namespace A231479

/-- `eq[A003415(n), A226378(A037475(n))]` -/
def P1067676685915009322.Spec : Prop :=
  ∀ n, (P1067676685915009322.a n : ℤ) = A231479 (n + 1)

end A231479

/-! ## A231479.P12024352073194944501

`eq[n*A078898(A037475(n)), A007918(n)]`
-/

namespace A231479.P12024352073194944501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A078898 (A037475 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231479.P12024352073194944501

namespace A231479

/-- `eq[n*A078898(A037475(n)), A007918(n)]` -/
def P12024352073194944501.Spec : Prop :=
  ∀ n, (P12024352073194944501.a n : ℤ) = A231479 (n + 1)

end A231479

/-! ## A231479.P17009971688547600805

`record[A006530(n+1)-A046520(A037475(n+1))]`
-/

namespace A231479.P17009971688547600805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A046520 (A037475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231479.P17009971688547600805

namespace A231479

/-- `record[A006530(n+1)-A046520(A037475(n+1))]` -/
def P17009971688547600805.Spec : Prop :=
  ∀ n, P17009971688547600805.a n = A231479 (n + 1)

end A231479

/-! ## A231479.P4883242959358005493

`record[A020639(n+1)-A046520(A037475(n+1))]`
-/

namespace A231479.P4883242959358005493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - A046520 (A037475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231479.P4883242959358005493

namespace A231479

/-- `record[A020639(n+1)-A046520(A037475(n+1))]` -/
def P4883242959358005493.Spec : Prop :=
  ∀ n, P4883242959358005493.a n = A231479 (n + 1)

end A231479

/-!
# A231480: Primes whose base-8 representation is also the base-9 representation of a prime.

The programs for A231480, the canonical program `A231480.P6782408155422875025` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231480 has offset 1).

The definition of A231480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231480.P6782408155422875025

`eq[A038548(n+1), A347954(A037477(n)+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A231480

/-- `eq[A038548(n+1), A347954(A037477(n)+1)]+1` -/
def P6782408155422875025.Spec : Prop :=
  ∀ n, (P6782408155422875025.a n : ℤ) = A231480 (n + 1)

theorem P6782408155422875025.correct : P6782408155422875025.Spec := by
  intro n
  simp only [A231480, Nat.add_sub_cancel]

end A231480

/-!
# A231481: Primes whose base-6 representation is also the base-9 representation of a prime.

The programs for A231481, the canonical program `A231481.P4383580327461116027` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231481 has offset 1).

The definition of A231481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231481.P4383580327461116027

`p?[(n+1)*A001222(A037472(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A231481

/-- `p?[(n+1)*A001222(A037472(n+1))]` -/
def P4383580327461116027.Spec : Prop :=
  ∀ n, P4383580327461116027.a n = A231481 (n + 1)

theorem P4383580327461116027.correct : P4383580327461116027.Spec := by
  intro n
  simp only [A231481, Nat.add_sub_cancel]

end A231481

/-! ## A231481.P7427534820724833859

`eq[A074206(A037472(n)), A210442(n)]`
-/

namespace A231481.P7427534820724833859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A037472 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231481.P7427534820724833859

namespace A231481

/-- `eq[A074206(A037472(n)), A210442(n)]` -/
def P7427534820724833859.Spec : Prop :=
  ∀ n, (P7427534820724833859.a n : ℤ) = A231481 (n + 1)

end A231481

/-! ## A231481.P4088381525432094367

`eq[A003415(n), A223135(A037472(n))]`
-/

namespace A231481.P4088381525432094367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (A037472 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231481.P4088381525432094367

namespace A231481

/-- `eq[A003415(n), A223135(A037472(n))]` -/
def P4088381525432094367.Spec : Prop :=
  ∀ n, (P4088381525432094367.a n : ℤ) = A231481 (n + 1)

end A231481

/-! ## A231481.P18209544752998952735

`p?[A028310(n)*A223135(A037472(n))]`
-/

namespace A231481.P18209544752998952735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A223135 (A037472 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231481.P18209544752998952735

namespace A231481

/-- `p?[A028310(n)*A223135(A037472(n))]` -/
def P18209544752998952735.Spec : Prop :=
  ∀ n, P18209544752998952735.a n = A231481 (n + 1)

end A231481

/-! ## A231481.P11112153064060591807

`p?[A074206(A037472(n))*A123108(2*n)]`
-/

namespace A231481.P11112153064060591807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A037472 n).toNat * A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231481.P11112153064060591807

namespace A231481

/-- `p?[A074206(A037472(n))*A123108(2*n)]` -/
def P11112153064060591807.Spec : Prop :=
  ∀ n, P11112153064060591807.a n = A231481 (n + 1)

end A231481

/-!
# A231482: The number of nonlinear normal modes for a fully resonant Hamiltonian system with n degrees of freedom.

The programs for A231482, the canonical program `A231482.P13578622432860794418` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231482 has offset 1).

The definition of A231482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231482.P10292924762258968213

`∑[A084771(n)]`
-/

namespace A231482.P10292924762258968213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231482.P10292924762258968213

namespace A231482

/-- `∑[A084771(n)]` -/
def P10292924762258968213.Spec : Prop :=
  ∀ n, P10292924762258968213.a n = A231482 (n + 1)

end A231482

/-! ## A231482.P11861220573311120488

`∑[∑[A085363(n)]]`
-/

namespace A231482.P11861220573311120488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231482.P11861220573311120488

namespace A231482

/-- `∑[∑[A085363(n)]]` -/
def P11861220573311120488.Spec : Prop :=
  ∀ n, P11861220573311120488.a n = A231482 (n + 1)

end A231482

/-! ## A231482.P13578622432860794418

`(n+1)*∑[A086871(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A231482

/-- `(n+1)*∑[A086871(n)]` -/
def P13578622432860794418.Spec : Prop :=
  ∀ n, P13578622432860794418.a n = A231482 (n + 1)

theorem P13578622432860794418.correct : P13578622432860794418.Spec := by
  intro n
  simp only [A231482, Nat.add_sub_cancel]

end A231482

/-! ## A231482.P18383954596470993926

`∑[abs(Δ[n*A162326(n)])]`
-/

namespace A231482.P18383954596470993926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A162326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231482.P18383954596470993926

namespace A231482

/-- `∑[abs(Δ[n*A162326(n)])]` -/
def P18383954596470993926.Spec : Prop :=
  ∀ n, P18383954596470993926.a n = A231482 (n + 1)

end A231482

/-! ## A231482.P8757424201529585836

`(n+1)*A162326(n+1)`
-/

namespace A231482.P8757424201529585836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A162326 (n + 1)

end

end A231482.P8757424201529585836

namespace A231482

/-- `(n+1)*A162326(n+1)` -/
def P8757424201529585836.Spec : Prop :=
  ∀ n, P8757424201529585836.a n = A231482 (n + 1)

end A231482

/-! ## A231482.P12172807247061206920

`A084771(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A231482.P12172807247061206920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084771 n + a (A023443 n).toNat

end

end A231482.P12172807247061206920

namespace A231482

/-- `A084771(n)+a(A023443(n))` -/
def P12172807247061206920.Spec : Prop :=
  ∀ n, P12172807247061206920.a n = A231482 (n + 1)

end A231482

/-! ## A231482.P10206331501272350907

`A084771(n)+n*A162326(n)`
-/

namespace A231482.P10206331501272350907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n + (n : ℤ) * A162326 n

end

end A231482.P10206331501272350907

namespace A231482

/-- `A084771(n)+n*A162326(n)` -/
def P10206331501272350907.Spec : Prop :=
  ∀ n, P10206331501272350907.a n = A231482 (n + 1)

end A231482

/-! ## A231482.P13001325399363611164

`∑[∑[A040000(n)*A051708(n+1)]]`
-/

namespace A231482.P13001325399363611164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A051708 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231482.P13001325399363611164

namespace A231482

/-- `∑[∑[A040000(n)*A051708(n+1)]]` -/
def P13001325399363611164.Spec : Prop :=
  ∀ n, P13001325399363611164.a n = A231482 (n + 1)

end A231482

/-! ## A231482.P15738955947580054389

`∑[∑[A036453(n+1)*A051708(n+1)]]`
-/

namespace A231482.P15738955947580054389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A051708 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231482.P15738955947580054389

namespace A231482

/-- `∑[∑[A036453(n+1)*A051708(n+1)]]` -/
def P15738955947580054389.Spec : Prop :=
  ∀ n, P15738955947580054389.a n = A231482 (n + 1)

end A231482

/-! ## A231482.P6441702997768217746

`∑[A081578(∑[4*n])]`
-/

namespace A231482.P6441702997768217746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231482.P6441702997768217746

namespace A231482

/-- `∑[A081578(∑[4*n])]` -/
def P6441702997768217746.Spec : Prop :=
  ∀ n, P6441702997768217746.a n = A231482 (n + 1)

end A231482

/-!
# A231484: Numbers k such that k, sigma(k) and sigma(sigma(k)) are odd.

The programs for A231484, there is no canonical definition to state claims against.
-/

/-! ## A231484.P9645967694216398253

`A234641(n+1)²`
-/

namespace A231484.P9645967694216398253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234641 (n + 1) ^ 2

end

end A231484.P9645967694216398253

/-! ## A231484.P9118862997440364458

`A234641(n+1)^A000005(A151800(n))`
-/

namespace A231484.P9118862997440364458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234641 (n + 1) : ℚ) ^ (A000005 (A151800 n).toNat : ℤ)

end

end A231484.P9118862997440364458

/-! ## A231484.P4029852827477088851

`A234641(n+1)^A000005(A005145(n+1))`
-/

namespace A231484.P4029852827477088851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234641 (n + 1) : ℚ) ^ (A000005 (A005145 (n + 1)).toNat : ℤ)

end

end A231484.P4029852827477088851

/-! ## A231484.P15039716059068542291

`A234641(gcd(n+1, A000290(n+1)))*A234641(n+1)`
-/

namespace A231484.P15039716059068542291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234641 (Int.gcd (n + 1 : ℤ) (A000290 (n + 1))) * A234641 (n + 1)

end

end A231484.P15039716059068542291

/-! ## A231484.P12310622055201229709

`A234641(n+1)^(2%A228338(n))`
-/

namespace A231484.P12310622055201229709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234641 (n + 1) : ℚ) ^ (Int.tmod 2 (A228338 n) : ℤ)

end

end A231484.P12310622055201229709

/-! ## A231484.P4747033479191130593

`A234641(n+1)^A057331(A065717(n))`
-/

namespace A231484.P4747033479191130593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234641 (n + 1) : ℚ) ^ (A057331 (A065717 n).toNat : ℤ)

end

end A231484.P4747033479191130593

/-! ## A231484.P7033178893811588380

`A234641(n+1)^A001222(A001248(n+1))`
-/

namespace A231484.P7033178893811588380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234641 (n + 1) : ℚ) ^ (A001222 (A001248 (n + 1)).toNat : ℤ)

end

end A231484.P7033178893811588380

/-!
# A231485: Number of perfect matchings in the graph C_5 X C_{2n}.

The programs for A231485, there is no canonical definition to state claims against.
-/

/-! ## A231485.P4659451739047087032

`A341741(A052905(n+3)+1)`
-/

namespace A231485.P4659451739047087032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A052905 (n + 3) + 1).toNat

end

end A231485.P4659451739047087032

/-! ## A231485.P15476708954104993163

`A341741(A056000(n+2)+6)`
-/

namespace A231485.P15476708954104993163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A056000 (n + 2) + 6).toNat

end

end A231485.P15476708954104993163

/-! ## A231485.P13131622880041568426

`A341741(A056115(n+1)+11)`
-/

namespace A231485.P13131622880041568426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A056115 (n + 1) + 11).toNat

end

end A231485.P13131622880041568426

/-! ## A231485.P7440043544901397435

`A341741(A167614(n+5)-7)`
-/

namespace A231485.P7440043544901397435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A167614 (n + 5) - 7).toNat

end

end A231485.P7440043544901397435

/-! ## A231485.P16395409924273161913

`A341741(eq[5, A193592(n)]+1)`
-/

namespace A231485.P16395409924273161913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231485.P16395409924273161913

/-!
# A231486: Dimensions of the Baxter subalgebra of the Hopf algebra PMN_1.

The programs for A231486, there is no canonical definition to state claims against.
-/

/-! ## A231486.P14266835093685815136

`A048291(n)+A231490(n)-A231489(n)`
-/

namespace A231486.P14266835093685815136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048291 n + (A231490 n - A231489 n)

end

end A231486.P14266835093685815136

/-!
# A231489: Dimensions of the plactic subalgebra of the Hopf algebra PMN_1.

The programs for A231489, there is no canonical definition to state claims against.
-/

/-! ## A231489.P17779347949578232140

`A015448(n)+A005581(A183166(n))`
-/

namespace A231489.P17779347949578232140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 n + A005581 (A183166 n).toNat

end

end A231489.P17779347949578232140

/-!
# A231490: Dimensions of the hypoplactic subalgebra of the Hopf algebra PMN_1.

The programs for A231490, there is no canonical definition to state claims against.
-/

/-! ## A231490.P14249363883950736552

`A216134(n)+A111954(Δ[A006452(n)])`
-/

namespace A231490.P14249363883950736552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 n + A111954 (f1 (n + 1) - f1 n).toNat

end

end A231490.P14249363883950736552

/-!
# A231491: Dimensions of the total congruence subalgebra of the Hopf algebra PMN_1.

The programs for A231491, there is no canonical definition to state claims against.
-/

/-! ## A231491.P3982490348026634156

`A062202(n²)`
-/

namespace A231491.P3982490348026634156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062202 (n ^ 2)

end

end A231491.P3982490348026634156

/-!
# A231492: Dimensions of the Baxter subalgebra of the Hopf algebra PML_1.

The programs for A231492, there is no canonical definition to state claims against.
-/

/-! ## A231492.P3311897312805418280

`A101402(A213101(n)+1)`
-/

namespace A231492.P3311897312805418280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A213101 n + 1).toNat

end

end A231492.P3311897312805418280

/-! ## A231492.P5348074616009830736

`A289494(2*A056786(n))`
-/

namespace A231492.P5348074616009830736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (2 * A056786 n).toNat

end

end A231492.P5348074616009830736

/-!
# A231493: Dimensions of the Bell subalgebra of the Hopf algebra PML_1.

The programs for A231493, there is no canonical definition to state claims against.
-/

/-! ## A231493.P16118697102129498640

`A002264(2*floor((n+1)*(n/2)^n)+1)`
-/

namespace A231493.P16118697102129498640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * ⌊(n + 1 : ℚ) * ((n : ℚ) / 2) ^ n⌋ + 1).toNat

end

end A231493.P16118697102129498640

/-! ## A231493.P2687066221504961371

`A154439(A262932(n!))`
-/

namespace A231493.P2687066221504961371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A262932 (Nat.factorial n)).toNat

end

end A231493.P2687066221504961371

/-!
# A231494: Dimensions of the Sylvester subalgebra of the Hopf algebra PML_1.

The programs for A231494, there is no canonical definition to state claims against.
-/

/-! ## A231494.P4097562267627346892

`floor(sqrt(A031941(∑[n^n])+1))`
-/

namespace A231494.P4097562267627346892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A031941 (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A231494.P4097562267627346892

/-! ## A231494.P12924846566791584595

`A008621(n*∑[(n+1)/3*n!])`
-/

namespace A231494.P12924846566791584595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway ((n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A231494.P12924846566791584595

/-!
# A231495: Dimensions of the plactic subalgebra of the Hopf algebra PML_1.

The programs for A231495, there is no canonical definition to state claims against.
-/

/-! ## A231495.P7059266579667212766

`A195120(A054726(n)+A008982(n))`
-/

namespace A231495.P7059266579667212766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A054726 n + A008982 n).toNat

end

end A231495.P7059266579667212766

/-! ## A231495.P6914714437742139295

`and(-5, A248560(n!))`
-/

namespace A231495.P6914714437742139295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A248560 (Nat.factorial n))

end

end A231495.P6914714437742139295

/-!
# A231496: Dimensions of the hypoplactic subalgebra of the Hopf algebra PML_1.

The programs for A231496, there is no canonical definition to state claims against.
-/

/-! ## A231496.P11288131133738952769

`A329547(A006950(n²))`
-/

namespace A231496.P11288131133738952769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329547 (A006950 (n ^ 2)).toNat

end

end A231496.P11288131133738952769

/-! ## A231496.P2333113481844141382

`A083920(A111139(n))+1`
-/

namespace A231496.P2333113481844141382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A111139 n).toNat + 1

end

end A231496.P2333113481844141382

/-! ## A231496.P7377006704526986218

`A004396(A173323(n))-A008466(n)`
-/

namespace A231496.P7377006704526986218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A173323 n).toNat - A008466 n

end

end A231496.P7377006704526986218

/-!
# A231497: Dimensions of the total congruence subalgebra of the Hopf algebra PML_1.

The programs for A231497, there is no canonical definition to state claims against.
-/

/-! ## A231497.P13306745433849953890

`A004273(A087959(n)+C(n, 6))`
-/

namespace A231497.P13306745433849953890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A087959 n + (Nat.choose n 6 : ℤ)).toNat

end

end A231497.P13306745433849953890

/-! ## A231497.P15730991518863351307

`floor(A198628(n)/(A091191(n+1)-2))+1`
-/

namespace A231497.P15730991518863351307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198628 n : ℚ) / (A091191 (n + 1) - 2 : ℚ)⌋ + 1

end

end A231497.P15730991518863351307

/-! ## A231497.P6381032438495429633

`A004525(A124325(n)+A005195(n))`
-/

namespace A231497.P6381032438495429633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A124325 n + A005195 n).toNat

end

end A231497.P6381032438495429633

/-!
# A231498: Dimensions of algebraic generators of Hopf algebra ASM.

The programs for A231498, there is no canonical definition to state claims against.
-/

/-! ## A231498.P2025902829262731820

`A195120(n*(n-1)^(n-1))`
-/

namespace A231498.P2025902829262731820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (SequenceMachineLib.roundAway ((n : ℚ) * ((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A231498.P2025902829262731820

/-! ## A231498.P13018561886107572484

`A388721(A044432(n))`
-/

namespace A231498.P13018561886107572484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388721 (A044432 n).toNat

end

end A231498.P13018561886107572484

/-!
# A231499: Dimensions of totally primitive elements of Hopf algebra ASM.

The programs for A231499, there is no canonical definition to state claims against.
-/

/-! ## A231499.P14929507917055422526

`A325774(A047147(n))`
-/

namespace A231499.P14929507917055422526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325774 (A047147 n).toNat

end

end A231499.P14929507917055422526

/-! ## A231499.P8112426337663402015

`A296062(A059167(n)*A274821(n))`
-/

namespace A231499.P8112426337663402015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 (A059167 n * A274821 n).toNat

end

end A231499.P8112426337663402015

