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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A176300: Numbers k such that the k-th semiprime + k is prime.

The programs for A176300, the canonical program `A176300.P2749683216366629135` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176300 has offset 1).

The definition of A176300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176300.P17897902672579929570

`eq[1, A001222(A100493(n+1))]+1`
-/

namespace A176300.P17897902672579929570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100493 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176300.P17897902672579929570

namespace A176300

/-- `eq[1, A001222(A100493(n+1))]+1` -/
def P17897902672579929570.Spec : Prop :=
  ∀ n, (P17897902672579929570.a n : ℤ) = A176300 (n + 1)

end A176300

/-! ## A176300.P13254242414268921911

`lt[A000005(A001358(n+1)+n+1), 3]+1`
-/

namespace A176300.P13254242414268921911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001358 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A176300.P13254242414268921911

namespace A176300

/-- `lt[A000005(A001358(n+1)+n+1), 3]+1` -/
def P13254242414268921911.Spec : Prop :=
  ∀ n, (P13254242414268921911.a n : ℤ) = A176300 (n + 1)

end A176300

/-! ## A176300.P2749683216366629135

`record[(n+1)*A010051(A001358(n+1)+n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176300

/-- `record[(n+1)*A010051(A001358(n+1)+n+1)]` -/
def P2749683216366629135.Spec : Prop :=
  ∀ n, P2749683216366629135.a n = A176300 (n + 1)

theorem P2749683216366629135.correct : P2749683216366629135.Spec := by
  intro n
  simp only [A176300, Nat.add_sub_cancel]

end A176300

/-! ## A176300.P12911818137606162449

`lt[A000005(eq[2, A001222(n+1)]+n+2), 3]+1`
-/

namespace A176300.P12911818137606162449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + (n + 2))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A176300.P12911818137606162449

namespace A176300

/-- `lt[A000005(eq[2, A001222(n+1)]+n+2), 3]+1` -/
def P12911818137606162449.Spec : Prop :=
  ∀ n, (P12911818137606162449.a n : ℤ) = A176300 (n + 1)

end A176300

/-! ## A176300.P13502816164001170331

`lt[A001222(eq[2, A226378(n)]+1+n), 2]+1`
-/

namespace A176300.P13502816164001170331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 + n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A176300.P13502816164001170331

namespace A176300

/-- `lt[A001222(eq[2, A226378(n)]+1+n), 2]+1` -/
def P13502816164001170331.Spec : Prop :=
  ∀ n, (P13502816164001170331.a n : ℤ) = A176300 (n + 1)

end A176300

/-! ## A176300.P690938741749232747

`record[(n+1)/A051953(A001358(n+1)+n+1)]`
-/

namespace A176300.P690938741749232747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051953 (A001358 (n + 1) + (n : ℤ) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176300.P690938741749232747

namespace A176300

/-- `record[(n+1)/A051953(A001358(n+1)+n+1)]` -/
def P690938741749232747.Spec : Prop :=
  ∀ n, P690938741749232747.a n = (A176300 (n + 1) : ℚ)

end A176300

/-! ## A176300.P12335855922590321023

`record[(n+1)/A283463(A001358(n+1)+n+1)]`
-/

namespace A176300.P12335855922590321023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A283463 (A001358 (n + 1) + (n : ℤ) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176300.P12335855922590321023

namespace A176300

/-- `record[(n+1)/A283463(A001358(n+1)+n+1)]` -/
def P12335855922590321023.Spec : Prop :=
  ∀ n, P12335855922590321023.a n = (A176300 (n + 1) : ℚ)

end A176300

/-! ## A176300.P4664988801858403281

`record[(n+1)%A014963(A001358(n+1)+n+1)]`
-/

namespace A176300.P4664988801858403281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A001358 (n + 1) + (n + 1 : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176300.P4664988801858403281

namespace A176300

/-- `record[(n+1)%A014963(A001358(n+1)+n+1)]` -/
def P4664988801858403281.Spec : Prop :=
  ∀ n, P4664988801858403281.a n = A176300 (n + 1)

end A176300

/-!
# A176301: Numbers k such that the k-th semiprime + 2 is prime.

The programs for A176301, there is no canonical definition to state claims against.
-/

/-! ## A176301.P3259601448140589951

`A058933(A241809(n+1))`
-/

namespace A176301.P3259601448140589951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A241809 (n + 1)).toNat

end

end A176301.P3259601448140589951

/-! ## A176301.P11590276941659310253

`A174956(A063638(n+1)-2)`
-/

namespace A176301.P11590276941659310253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A063638 (n + 1) - 2).toNat

end

end A176301.P11590276941659310253

/-! ## A176301.P17708703274387093535

`eq[2, A007920(A001358(n+1))]+1`
-/

namespace A176301.P17708703274387093535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A001358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176301.P17708703274387093535

/-! ## A176301.P1544799112510763515

`eq[1, A013632(A001358(n+1)+1)]+1`
-/

namespace A176301.P1544799112510763515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A001358 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176301.P1544799112510763515

/-! ## A176301.P16156547127275483524

`eq[1, A001222(A088707(n+1)+1)]+1`
-/

namespace A176301.P16156547127275483524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088707 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176301.P16156547127275483524

/-! ## A176301.P14255621008573720834

`eq[1, A245756(A001358(n+1)+1)]+1`
-/

namespace A176301.P14255621008573720834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (A001358 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176301.P14255621008573720834

/-! ## A176301.P12602675336847555218

`eq[1, A001222(A001358(n+1)+2)]+1`
-/

namespace A176301.P12602675336847555218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001358 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176301.P12602675336847555218

/-! ## A176301.P1750527473551633713

`eq[1, A033676(A001358(n+1)+2)]+1`
-/

namespace A176301.P1750527473551633713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A001358 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176301.P1750527473551633713

/-! ## A176301.P9233075357181647278

`eq[2, A000005(A088707(n+1)+1)]+1`
-/

namespace A176301.P9233075357181647278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088707 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176301.P9233075357181647278

/-! ## A176301.P2346969923686952337

`eq[2, A000005(A001358(n+1)+2)]+1`
-/

namespace A176301.P2346969923686952337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001358 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176301.P2346969923686952337

/-!
# A176302: a(n) = floor(abs( (i+n)^n )) where "i" is the Imaginary unit.

The programs for A176302, the canonical program `A176302.P563563937927153952` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176302 has offset 1).

The definition of A176302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176302.P563563937927153952

`floor(((n+1)²+1)^((n+1)/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176302

/-- `floor(((n+1)²+1)^((n+1)/2))` -/
def P563563937927153952.Spec : Prop :=
  ∀ n, P563563937927153952.a n = A176302 (n + 1)

theorem P563563937927153952.correct : P563563937927153952.Spec := by
  intro n
  simp only [A176302, Nat.add_sub_cancel]

end A176302

/-! ## A176302.P5406127673526485887

`A000027(floor(sqrt(A014050(n+1))))`
-/

namespace A176302.P5406127673526485887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.sqrt (A014050 (n + 1))).toNat

end

end A176302.P5406127673526485887

namespace A176302

/-- `A000027(floor(sqrt(A014050(n+1))))` -/
def P5406127673526485887.Spec : Prop :=
  ∀ n, P5406127673526485887.a n = A176302 (n + 1)

end A176302

/-!
# A176303: a(n) = abs(2^n-127).

The programs for A176303, the canonical program `A176303.P15693026875245027961` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176303 has offset 0).

The definition of A176303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(2^n-127)` (program `A176303.P15693026875245027961`, by `A176303.P15693026875245027961.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176303.P15693026875245027961

`abs(2^n-127)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176303

/-- `abs(2^n-127)` -/
def P15693026875245027961.Spec : Prop :=
  ∀ n, P15693026875245027961.a n = A176303 n

theorem P15693026875245027961.correct : P15693026875245027961.Spec := by
  intro n
  simp only [A176303]

end A176303

/-! ## A176303.P17706273128362844138

`3*a(n-1)-2*a(n-2)` with `a(0)=126, a(1)=125, a(2)=123, a(3)=119, a(4)=111, a(5)=95, a(6)=63, a(7)=1, a(8)=129`
-/

namespace A176303.P17706273128362844138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [126, 125, 123, 119, 111, 95, 63, 1, 129] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A176303.P17706273128362844138

namespace A176303

/-- `3*a(n-1)-2*a(n-2)` -/
def P17706273128362844138.Spec : Prop :=
  ∀ n, P17706273128362844138.a n = A176303 n

end A176303

/-! ## A176303.P5030452004805660793

`lcm(46-A220088(n), A020985(n))`
-/

namespace A176303.P5030452004805660793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (46 - A220088 n) (A020985 n)

end

end A176303.P5030452004805660793

namespace A176303

/-- `lcm(46-A220088(n), A020985(n))` -/
def P5030452004805660793.Spec : Prop :=
  ∀ n, (P5030452004805660793.a n : ℤ) = A176303 n

end A176303

/-! ## A176303.P9140393580139763277

`gcd(46-A220088(n), A010815(A030430(n+1)))`
-/

namespace A176303.P9140393580139763277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (46 - A220088 n) (A010815 (A030430 (n + 1)).toNat)

end

end A176303.P9140393580139763277

namespace A176303

/-- `gcd(46-A220088(n), A010815(A030430(n+1)))` -/
def P9140393580139763277.Spec : Prop :=
  ∀ n, (P9140393580139763277.a n : ℤ) = A176303 n

end A176303

/-!
# A176304: a(n) = (-1)^n * n * a(n-1) - 1, with a(0)=0.

The programs for A176304, the canonical program `A176304.P4431522450047571509` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176304 has offset 0).

The definition of A176304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*n*a(n-1)-1` (program `A176304.P4431522450047571509`, by `A176304.P4431522450047571509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176304.P4431522450047571509

`(-1)^n*n*a(n-1)-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176304

/-- `(-1)^n*n*a(n-1)-1` -/
def P4431522450047571509.Spec : Prop :=
  ∀ n, P4431522450047571509.a n = A176304 n

theorem P4431522450047571509.correct : P4431522450047571509.Spec := by
  intro n
  simp only [A176304]

end A176304

/-! ## A176304.P17899334489064459852

`n*a(n-1)*(-1)^n-1` with `a(0)=0`
-/

namespace A176304.P17899334489064459852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) * (-1) ^ n - 1

end

end A176304.P17899334489064459852

namespace A176304

/-- `n*a(n-1)*(-1)^n-1` -/
def P17899334489064459852.Spec : Prop :=
  ∀ n, P17899334489064459852.a n = A176304 n

theorem P17899334489064459852.correct : P17899334489064459852.Spec := by
  intro n
  simp only [A176304, Nat.add_sub_cancel, A176304.P17899334489064459852.a, A176304.P4431522450047571509.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A176304

/-! ## A176304.P17183491035884090369

`a(n-1)*A038608(n)-1` with `a(0)=0`
-/

namespace A176304.P17183491035884090369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A038608 n - 1

end

end A176304.P17183491035884090369

namespace A176304

/-- `a(n-1)*A038608(n)-1` -/
def P17183491035884090369.Spec : Prop :=
  ∀ n, P17183491035884090369.a n = A176304 n

end A176304

/-! ## A176304.P7493608783755256037

`a(n-1)*A274922(n)-1` with `a(0)=0`
-/

namespace A176304.P7493608783755256037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A274922 n - 1

end

end A176304.P7493608783755256037

namespace A176304

/-- `a(n-1)*A274922(n)-1` -/
def P7493608783755256037.Spec : Prop :=
  ∀ n, P7493608783755256037.a n = A176304 n

end A176304

/-! ## A176304.P740803809943177278

`(2*n%2+n*a(n-1)-1)/A033999(n)` with `a(0)=0`
-/

namespace A176304.P740803809943177278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (((2 * (n % 2) : ℕ) : ℚ) + ((n : ℚ) * a (n - 1) - 1)) / (A033999 n : ℚ)

end

end A176304.P740803809943177278

namespace A176304

/-- `(2*n%2+n*a(n-1)-1)/A033999(n)` -/
def P740803809943177278.Spec : Prop :=
  ∀ n, P740803809943177278.a n = (A176304 n : ℚ)

end A176304

/-! ## A176304.P1094364150895427396

`1-∑[A176307(A000124(n))]`
-/

namespace A176304.P1094364150895427396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176307 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176304.P1094364150895427396

namespace A176304

/-- `1-∑[A176307(A000124(n))]` -/
def P1094364150895427396.Spec : Prop :=
  ∀ n, P1094364150895427396.a n = A176304 n

end A176304

/-! ## A176304.P9180231188005529647

`∑[A057428(n)*A176307(A000124(n))]`
-/

namespace A176304.P9180231188005529647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A176307 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176304.P9180231188005529647

namespace A176304

/-- `∑[A057428(n)*A176307(A000124(n))]` -/
def P9180231188005529647.Spec : Prop :=
  ∀ n, P9180231188005529647.a n = A176304 n

end A176304

/-!
# A176305: Triangle T(n,k) = 1 -A002627(k) -A002627(n-k) +A002627(n), read by rows.

The programs for A176305, the canonical program `A176305.P16697563022074584972` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176305 has offset 0).

The definition of A176305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-A002627(col(n))-A002627(row(n)-col(n))+A002627(row(n))` (program `A176305.P16697563022074584972`, by `A176305.P16697563022074584972.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176305.P16697563022074584972

`1-A002627(col(n))-A002627(row(n)-col(n))+A002627(row(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176305

/-- `1-A002627(col(n))-A002627(row(n)-col(n))+A002627(row(n))` -/
def P16697563022074584972.Spec : Prop :=
  ∀ n, P16697563022074584972.a n = A176305 n

theorem P16697563022074584972.correct : P16697563022074584972.Spec := by
  intro n
  simp only [A176305]

end A176305

/-! ## A176305.P14721679891748557854

`A002343(A022178(n))`
-/

namespace A176305.P14721679891748557854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002343 (A022178 n).toNat

end

end A176305.P14721679891748557854

namespace A176305

/-- `A002343(A022178(n))` -/
def P14721679891748557854.Spec : Prop :=
  ∀ n, P14721679891748557854.a n = A176305 n

end A176305

/-! ## A176305.P5425750578871829752

`A048263(A008300(n))`
-/

namespace A176305.P5425750578871829752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048263 (A008300 n).toNat

end

end A176305.P5425750578871829752

namespace A176305

/-- `A048263(A008300(n))` -/
def P5425750578871829752.Spec : Prop :=
  ∀ n, P5425750578871829752.a n = A176305 n

end A176305

/-! ## A176305.P2403534207590355523

`A048263(A009963(n))`
-/

namespace A176305.P2403534207590355523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048263 (A009963 n).toNat

end

end A176305.P2403534207590355523

namespace A176305

/-- `A048263(A009963(n))` -/
def P2403534207590355523.Spec : Prop :=
  ∀ n, P2403534207590355523.a n = A176305 n

end A176305

/-! ## A176305.P6991900438958686261

`A097825(A022174(n))`
-/

namespace A176305.P6991900438958686261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097825 (A022174 n).toNat

end

end A176305.P6991900438958686261

namespace A176305

/-- `A097825(A022174(n))` -/
def P6991900438958686261.Spec : Prop :=
  ∀ n, P6991900438958686261.a n = A176305 n

end A176305

/-!
# A176306: Triangle T(n,k) = 1 - A176304(k) - A176304(n-k) + A176304(n), read by rows.

The programs for A176306, the canonical program `A176306.P14116062126555768335` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176306 has offset 0).

The definition of A176306 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-A176304(col(n))-A176304(row(n)-col(n))+A176304(row(n))` (program `A176306.P14116062126555768335`, by `A176306.P14116062126555768335.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176306.P14116062126555768335

`1-A176304(col(n))-A176304(row(n)-col(n))+A176304(row(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176306

/-- `1-A176304(col(n))-A176304(row(n)-col(n))+A176304(row(n))` -/
def P14116062126555768335.Spec : Prop :=
  ∀ n, P14116062126555768335.a n = A176306 n

theorem P14116062126555768335.correct : P14116062126555768335.Spec := by
  intro n
  simp only [A176306]

end A176306

/-! ## A176306.P1158903230994017572

`2-A176307(n)`
-/

namespace A176306.P1158903230994017572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A176307 n

end

end A176306.P1158903230994017572

namespace A176306

/-- `2-A176307(n)` -/
def P1158903230994017572.Spec : Prop :=
  ∀ n, P1158903230994017572.a n = A176306 n

theorem P1158903230994017572.correct : P1158903230994017572.Spec := by
  intro n
  simp only [A176306, Nat.add_sub_cancel, A176306.P1158903230994017572.a, A176306.P14116062126555768335.a, A176304, A176304.P4431522450047571509.a, A176307, A176307.P2073443996406908689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176306

/-! ## A176306.P8619814477324614689

`xor(A057428(n+1), A176307(n))+3`
-/

namespace A176306.P8619814477324614689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057428 (n + 1)) (A176307 n) + 3

end

end A176306.P8619814477324614689

namespace A176306

/-- `xor(A057428(n+1), A176307(n))+3` -/
def P8619814477324614689.Spec : Prop :=
  ∀ n, P8619814477324614689.a n = A176306 n

end A176306

/-! ## A176306.P12567299095808691041

`xor(A008683(A007918(n)), A176307(n))+3`
-/

namespace A176306.P12567299095808691041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A007918 n).toNat) (A176307 n) + 3

end

end A176306.P12567299095808691041

namespace A176306

/-- `xor(A008683(A007918(n)), A176307(n))+3` -/
def P12567299095808691041.Spec : Prop :=
  ∀ n, P12567299095808691041.a n = A176306 n

end A176306

/-! ## A176306.P10568268221902325279

`xor(A008683(A005385(n+1)), A176307(n))+3`
-/

namespace A176306.P10568268221902325279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A005385 (n + 1)).toNat) (A176307 n) + 3

end

end A176306.P10568268221902325279

namespace A176306

/-- `xor(A008683(A005385(n+1)), A176307(n))+3` -/
def P10568268221902325279.Spec : Prop :=
  ∀ n, P10568268221902325279.a n = A176306 n

end A176306

/-! ## A176306.P2766880539289354630

`A008683(A005385(Δ[n²]))*A176307(n)+2`
-/

namespace A176306.P2766880539289354630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat * A176307 n + 2

end

end A176306.P2766880539289354630

namespace A176306

/-- `A008683(A005385(Δ[n²]))*A176307(n)+2` -/
def P2766880539289354630.Spec : Prop :=
  ∀ n, P2766880539289354630.a n = A176306 n

end A176306

/-! ## A176306.P8389825516310741018

`xor(A008683(A014442(n+1)), A176307(n))+3`
-/

namespace A176306.P8389825516310741018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A014442 (n + 1)).toNat) (A176307 n) + 3

end

end A176306.P8389825516310741018

namespace A176306

/-- `xor(A008683(A014442(n+1)), A176307(n))+3` -/
def P8389825516310741018.Spec : Prop :=
  ∀ n, P8389825516310741018.a n = A176306 n

end A176306

/-!
# A176307: Triangle T(n,k) = 1 + A176304(k) + A176304(n-k) - A176304(n), read by rows.

The programs for A176307, the canonical program `A176307.P2073443996406908689` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176307 has offset 0).

The definition of A176307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A176304(col(n))+A176304(row(n)-col(n))-A176304(row(n))` (program `A176307.P2073443996406908689`, by `A176307.P2073443996406908689.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176307.P842544366301530366

`2-A176306(n)`
-/

namespace A176307.P842544366301530366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A176306 n

end

end A176307.P842544366301530366

namespace A176307

/-- `2-A176306(n)` -/
def P842544366301530366.Spec : Prop :=
  ∀ n, P842544366301530366.a n = A176307 n

theorem P842544366301530366.correct : P842544366301530366.Spec := by
  intro n
  simp only [A176307, Nat.add_sub_cancel, A176307.P842544366301530366.a, A176307.P2073443996406908689.a, A176304, A176304.P4431522450047571509.a, A176306, A176306.P14116062126555768335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176307

/-! ## A176307.P2073443996406908689

`1+A176304(col(n))+A176304(row(n)-col(n))-A176304(row(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176307

/-- `1+A176304(col(n))+A176304(row(n)-col(n))-A176304(row(n))` -/
def P2073443996406908689.Spec : Prop :=
  ∀ n, P2073443996406908689.a n = A176307 n

theorem P2073443996406908689.correct : P2073443996406908689.Spec := by
  intro n
  simp only [A176307]

end A176307

/-!
# A176308: Integers k such that k and k^3+-1 are squarefree numbers.

The programs for A176308, there is no canonical definition to state claims against.
-/

/-! ## A176308.P8522990538767701837

`record[lcm(6, A262945(4*n))]`
-/

namespace A176308.P8522990538767701837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A262945 (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176308.P8522990538767701837

/-! ## A176308.P13540485027714233376

`A336965(12*A339125(n+1))`
-/

namespace A176308.P13540485027714233376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (12 * A339125 (n + 1)).toNat

end

end A176308.P13540485027714233376

/-! ## A176308.P16381091820571586678

`∩[A087642(n+3), A315754(n)]`
-/

namespace A176308.P16381091820571586678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087642 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176308.P16381091820571586678

/-!
# A176309: Integers k such that k and k^3 +- 1 are nonsquarefree numbers.

The programs for A176309, there is no canonical definition to state claims against.
-/

/-! ## A176309.P18294151825453609112

`A327907(A262870(n+4)+A001101(n+1))`
-/

namespace A176309.P18294151825453609112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327907 (A262870 (n + 4) + A001101 (n + 1)).toNat

end

end A176309.P18294151825453609112

/-!
# A176310: G.f.: exp( Sum_{n>=1} sigma(n*2^n)*x^n/n ).

The programs for A176310, there is no canonical definition to state claims against.
-/

/-! ## A176310.P15092544393749445319

`A294504(n)+A231204(A002110(n))`
-/

namespace A176310.P15092544393749445319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294504 n + A231204 (A002110 n).toNat

end

end A176310.P15092544393749445319

/-! ## A176310.P8898978148666136822

`A351754(2*(n+2))-A151662(A322442(n))`
-/

namespace A176310.P8898978148666136822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351754 (2 * (n + 2)) - A151662 (A322442 n).toNat

end

end A176310.P8898978148666136822

/-!
# A176311: a(n) = sigma(n*2^n).

The programs for A176311, the canonical program `A176311.P8974602574173125159` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176311 has offset 1).

The definition of A176311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((n+1)*2^(n+1))` (program `A176311.P8974602574173125159`, by `A176311.P8974602574173125159.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176311.P8974602574173125159

`A000203((n+1)*2^(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176311

/-- `A000203((n+1)*2^(n+1))` -/
def P8974602574173125159.Spec : Prop :=
  ∀ n, P8974602574173125159.a n = A176311 (n + 1)

theorem P8974602574173125159.correct : P8974602574173125159.Spec := by
  intro n
  simp only [A176311, Nat.add_sub_cancel]

end A176311

/-! ## A176311.P3447246616575634106

`∑{d}[n+1, #*#%2]+2*A176362(n+1)`
-/

namespace A176311.P3447246616575634106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) + 2 * A176362 (n + 1)

end

end A176311.P3447246616575634106

namespace A176311

/-- `∑{d}[n+1, #*#%2]+2*A176362(n+1)` -/
def P3447246616575634106.Spec : Prop :=
  ∀ n, P3447246616575634106.a n = A176311 (n + 1)

end A176311

/-! ## A176311.P997597628708701134

`A000593(n+1)+2*A176362(n+1)`
-/

namespace A176311.P997597628708701134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + 2 * A176362 (n + 1)

end

end A176311.P997597628708701134

namespace A176311

/-- `A000593(n+1)+2*A176362(n+1)` -/
def P997597628708701134.Spec : Prop :=
  ∀ n, P997597628708701134.a n = A176311 (n + 1)

end A176311

/-! ## A176311.P9633308240052639370

`A002131(n+1)*A020707(n)-A000593(n+1)`
-/

namespace A176311.P9633308240052639370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) * A020707 n - A000593 (n + 1)

end

end A176311.P9633308240052639370

namespace A176311

/-- `A002131(n+1)*A020707(n)-A000593(n+1)` -/
def P9633308240052639370.Spec : Prop :=
  ∀ n, P9633308240052639370.a n = A176311 (n + 1)

end A176311

/-! ## A176311.P15966020584274091230

`A002131(n+1)*A011782(n+3)-A000593(n+1)`
-/

namespace A176311.P15966020584274091230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) * A011782 (n + 3) - A000593 (n + 1)

end

end A176311.P15966020584274091230

namespace A176311

/-- `A002131(n+1)*A011782(n+3)-A000593(n+1)` -/
def P15966020584274091230.Spec : Prop :=
  ∀ n, P15966020584274091230.a n = A176311 (n + 1)

end A176311

/-! ## A176311.P8153068061763589728

`A000079(n)*A002131(4*(n+1))-A000593(n+1)`
-/

namespace A176311.P8153068061763589728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A002131 (4 * (n + 1)) - A000593 (n + 1)

end

end A176311.P8153068061763589728

namespace A176311

/-- `A000079(n)*A002131(4*(n+1))-A000593(n+1)` -/
def P8153068061763589728.Spec : Prop :=
  ∀ n, P8153068061763589728.a n = A176311 (n + 1)

end A176311

/-!
# A176312: Numbers that are the products of two single (or isolated or non-twin) primes.

The programs for A176312, the canonical program `A176312.P5880756597230827409` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176312 has offset 1).

The definition of A176312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3062 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176312.P15816151401110479444

`filter[A062729(n+1), A064911(#)]`
-/

namespace A176312.P15816151401110479444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A176312.P15816151401110479444

namespace A176312

/-- `filter[A062729(n+1), A064911(#)]` -/
def P15816151401110479444.Spec : Prop :=
  ∀ n, P15816151401110479444.a n = A176312 (n + 1)

end A176312

/-! ## A176312.P5880756597230827409

`∩[A001358(n+1), A062729(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176312

/-- `∩[A001358(n+1), A062729(n+1)]` -/
def P5880756597230827409.Spec : Prop :=
  ∀ n, (P5880756597230827409.a n : ℤ) = A176312 (n + 1)

theorem P5880756597230827409.correct : P5880756597230827409.Spec := by
  intro n
  simp only [A176312, Nat.add_sub_cancel]

end A176312

/-! ## A176312.P17041348411760280999

`A001358(A176512(n+1))`
-/

namespace A176312.P17041348411760280999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A176512 (n + 1)).toNat

end

end A176312.P17041348411760280999

namespace A176312

/-- `A001358(A176512(n+1))` -/
def P17041348411760280999.Spec : Prop :=
  ∀ n, P17041348411760280999.a n = A176312 (n + 1)

end A176312

/-! ## A176312.P15680638121053196175

`A176540(A176512(n+1)+1)`
-/

namespace A176312.P15680638121053196175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (A176512 (n + 1) + 1).toNat

end

end A176312.P15680638121053196175

namespace A176312

/-- `A176540(A176512(n+1)+1)` -/
def P15680638121053196175.Spec : Prop :=
  ∀ n, P15680638121053196175.a n = A176312 (n + 1)

end A176312

/-! ## A176312.P5961349533437590188

`A129767(2*A176512(n+1))`
-/

namespace A176312.P5961349533437590188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * A176512 (n + 1)).toNat

end

end A176312.P5961349533437590188

namespace A176312

/-- `A129767(2*A176512(n+1))` -/
def P5961349533437590188.Spec : Prop :=
  ∀ n, P5961349533437590188.a n = A176312 (n + 1)

end A176312

/-! ## A176312.P16595793431862039042

`A002808(A176507(n+1))`
-/

namespace A176312.P16595793431862039042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A176507 (n + 1)).toNat

end

end A176312.P16595793431862039042

namespace A176312

/-- `A002808(A176507(n+1))` -/
def P16595793431862039042.Spec : Prop :=
  ∀ n, P16595793431862039042.a n = A176312 (n + 1)

end A176312

/-! ## A176312.P4234628829240724963

`A018252(A176507(n+1)+1)`
-/

namespace A176312.P4234628829240724963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A176507 (n + 1) + 1).toNat

end

end A176312.P4234628829240724963

namespace A176312

/-- `A018252(A176507(n+1)+1)` -/
def P4234628829240724963.Spec : Prop :=
  ∀ n, P4234628829240724963.a n = A176312 (n + 1)

end A176312

/-! ## A176312.P17733930466920340619

`A065090(A176507(n+1)+2)`
-/

namespace A176312.P17733930466920340619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A176507 (n + 1) + 2).toNat

end

end A176312.P17733930466920340619

namespace A176312

/-- `A065090(A176507(n+1)+2)` -/
def P17733930466920340619.Spec : Prop :=
  ∀ n, P17733930466920340619.a n = A176312 (n + 1)

end A176312

/-! ## A176312.P4989829528505144191

`A141468(A176507(n+1)+2)`
-/

namespace A176312.P4989829528505144191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A176507 (n + 1) + 2).toNat

end

end A176312.P4989829528505144191

namespace A176312

/-- `A141468(A176507(n+1)+2)` -/
def P4989829528505144191.Spec : Prop :=
  ∀ n, P4989829528505144191.a n = A176312 (n + 1)

end A176312

/-!
# A176313: First of two consecutive numbers with at least one 3 in their prime signature.

The programs for A176313, the canonical program `A176313.P7605650811774130941` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176313 has offset 1).

The definition of A176313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176313.P7605650811774130941

`∩[A176297(n+1)-1, A176297(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176313

/-- `∩[A176297(n+1)-1, A176297(n+1)]` -/
def P7605650811774130941.Spec : Prop :=
  ∀ n, (P7605650811774130941.a n : ℤ) = A176313 (n + 1)

theorem P7605650811774130941.correct : P7605650811774130941.Spec := by
  intro n
  simp only [A176313, Nat.add_sub_cancel]

end A176313

/-! ## A176313.P10505926017623411554

`∩[A176297(n+1), A023443(A176297(n+1))]`
-/

namespace A176313.P10505926017623411554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A176297 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176313.P10505926017623411554

namespace A176313

/-- `∩[A176297(n+1), A023443(A176297(n+1))]` -/
def P10505926017623411554.Spec : Prop :=
  ∀ n, (P10505926017623411554.a n : ℤ) = A176313 (n + 1)

end A176313

/-! ## A176313.P2899492338126459330

`A372691(n+1)+A132792(A000041(n))`
-/

namespace A176313.P2899492338126459330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372691 (n + 1) + A132792 (A000041 n).toNat

end

end A176313.P2899492338126459330

namespace A176313

/-- `A372691(n+1)+A132792(A000041(n))` -/
def P2899492338126459330.Spec : Prop :=
  ∀ n, P2899492338126459330.a n = A176313 (n + 1)

end A176313

/-! ## A176313.P7881469102872916443

`A285668(A026644(n))*A372691(n+1)`
-/

namespace A176313.P7881469102872916443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285668 (A026644 n).toNat * A372691 (n + 1)

end

end A176313.P7881469102872916443

namespace A176313

/-- `A285668(A026644(n))*A372691(n+1)` -/
def P7881469102872916443.Spec : Prop :=
  ∀ n, P7881469102872916443.a n = A176313 (n + 1)

end A176313

/-! ## A176313.P9416359022150241391

`A372691(n+1)%A002997(A005703(n))`
-/

namespace A176313.P9416359022150241391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372691 (n + 1)) (A002997 (A005703 n).toNat)

end

end A176313.P9416359022150241391

namespace A176313

/-- `A372691(n+1)%A002997(A005703(n))` -/
def P9416359022150241391.Spec : Prop :=
  ∀ n, P9416359022150241391.a n = A176313 (n + 1)

end A176313

/-!
# A176314: Sum of remainders of mod(n, k), for 1 <= k <= sqrt(n).

The programs for A176314, there is no canonical definition to state claims against.
-/

/-! ## A176314.P13412115694728390718

`∑[floor(sqrt(n)-A070039(n+1))]`
-/

namespace A176314.P13412115694728390718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) - (A070039 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176314.P13412115694728390718

/-! ## A176314.P14892926429330019152

`∑[A000196(n)-A070039(n+1)]`
-/

namespace A176314.P14892926429330019152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A070039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176314.P14892926429330019152

/-! ## A176314.P4770019951460580354

`A022554(n)-∑[A070039(n+1)]`
-/

namespace A176314.P4770019951460580354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176314.P4770019951460580354

/-! ## A176314.P12736158322538941264

`∑[A070038(n+1)+A000196(n)-A000203(n+1)]`
-/

namespace A176314.P12736158322538941264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) + (A000196 n - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176314.P12736158322538941264

/-! ## A176314.P5922645964342865370

`A022554(n)+∑[A070038(n+1)-A000203(n+1)]`
-/

namespace A176314.P5922645964342865370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176314.P5922645964342865370

/-! ## A176314.P2488235753114684864

`A022554(n)+∑[A066839(n+1)-A117004(n+1)]`
-/

namespace A176314.P2488235753114684864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) - A117004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176314.P2488235753114684864

/-! ## A176314.P1536081008729330029

`A022554(n)+∑[A079667(n+1)-A238535(n+1)]`
-/

namespace A176314.P1536081008729330029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) - A238535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176314.P1536081008729330029

/-! ## A176314.P10148135640914221336

`A022554(n)-∑[A066839(n+1)-A037213(n+1)]`
-/

namespace A176314.P10148135640914221336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) - A037213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176314.P10148135640914221336

/-!
# A176315: Partials sums of A007080.

The programs for A176315, there is no canonical definition to state claims against.
-/

/-! ## A176315.P14849546556626190960

`∑[A007080(n+1)]`
-/

namespace A176315.P14849546556626190960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176315.P14849546556626190960

/-! ## A176315.P823500794018967909

`∑[record[A007080(A176298(n))]]`
-/

namespace A176315.P823500794018967909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007080 (A176298 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176315.P823500794018967909

/-! ## A176315.P18210625803477448385

`∑[record[A007080(A290021(n))]]`
-/

namespace A176315.P18210625803477448385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007080 (A290021 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176315.P18210625803477448385

/-! ## A176315.P14141947685536217150

`∑[record[A007080(A344180(n))]]`
-/

namespace A176315.P14141947685536217150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007080 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176315.P14141947685536217150

/-! ## A176315.P17834226360664112195

`∑[A054956(n+1)+A054955(n+1)]`
-/

namespace A176315.P17834226360664112195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054956 (n + 1) + A054955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176315.P17834226360664112195

/-!
# A176316: Primes p with property that concatenation prime(1)//p//prime(2) = 2//p//3 is a prime.

The programs for A176316, there is no canonical definition to state claims against.
-/

/-! ## A176316.P16128445192171489359

`p?[A032711(n+1)]`
-/

namespace A176316.P16128445192171489359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176316.P16128445192171489359

/-! ## A176316.P6263666449756348772

`record[A020639(A032711(n+3))]`
-/

namespace A176316.P6263666449756348772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032711 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176316.P6263666449756348772

/-! ## A176316.P13463813680678450

`filter[A032711(n+1), A010051(#)]`
-/

namespace A176316.P13463813680678450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A176316.P13463813680678450

/-! ## A176316.P15088233915774853114

`∩[A000040(n+1), A032711(n+1)]`
-/

namespace A176316.P15088233915774853114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P15088233915774853114

/-! ## A176316.P10525482432210240165

`∩[A008578(n+1), A032711(n+1)]`
-/

namespace A176316.P10525482432210240165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P10525482432210240165

/-! ## A176316.P12848917714517290583

`∩[A025584(n+1), A032711(n+1)]`
-/

namespace A176316.P12848917714517290583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P12848917714517290583

/-! ## A176316.P37734303184402267

`∩[A032711(n+1), A040028(n+1)]`
-/

namespace A176316.P37734303184402267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P37734303184402267

/-! ## A176316.P14595389895579454469

`∩[A032711(n+1), A040036(n+1)]`
-/

namespace A176316.P14595389895579454469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P14595389895579454469

/-! ## A176316.P11946775170561558422

`∩[A032711(n+1), A040044(n+1)]`
-/

namespace A176316.P11946775170561558422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P11946775170561558422

/-! ## A176316.P13338224403602504612

`∩[A032711(n+1), A040046(n+1)]`
-/

namespace A176316.P13338224403602504612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P13338224403602504612

/-! ## A176316.P7175864205862549940

`∩[A032711(n+1), A040049(n+1)]`
-/

namespace A176316.P7175864205862549940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P7175864205862549940

/-! ## A176316.P1886706185368240044

`∩[A032711(n+1), A040054(n+1)]`
-/

namespace A176316.P1886706185368240044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P1886706185368240044

/-! ## A176316.P16964588016592026809

`∩[A032711(n+1), A040060(n+1)]`
-/

namespace A176316.P16964588016592026809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P16964588016592026809

/-! ## A176316.P5169286048705577746

`∩[A032711(n+1), A040062(n+1)]`
-/

namespace A176316.P5169286048705577746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P5169286048705577746

/-! ## A176316.P12563825673911900306

`∩[A032711(n+1), A040065(n+1)]`
-/

namespace A176316.P12563825673911900306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P12563825673911900306

/-! ## A176316.P12375899228875166239

`∩[A032711(n+1), A040078(n+1)]`
-/

namespace A176316.P12375899228875166239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P12375899228875166239

/-! ## A176316.P8681596072100152300

`∩[A032711(n+1), A040083(n+1)]`
-/

namespace A176316.P8681596072100152300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P8681596072100152300

/-! ## A176316.P11297322043999353503

`∩[A032711(n+1), A040085(n+1)]`
-/

namespace A176316.P11297322043999353503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P11297322043999353503

/-! ## A176316.P17161806408234961736

`∩[A032711(n+1), A040087(n+1)]`
-/

namespace A176316.P17161806408234961736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P17161806408234961736

/-! ## A176316.P13311476431502897876

`∩[A032711(n+1), A040089(n+1)]`
-/

namespace A176316.P13311476431502897876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176316.P13311476431502897876

/-!
# A176325: Decimal expansion of (5+3*sqrt(3))/2.

The programs for A176325, there is no canonical definition to state claims against.
-/

/-! ## A176325.P9717588318097606932

`floor(A352672(n)+acot(n))`
-/

namespace A176325.P9717588318097606932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A352672 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A176325.P9717588318097606932

/-! ## A176325.P5890294275667215693

`A104956(A169585(n)+n)`
-/

namespace A176325.P5890294275667215693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104956 ((A169585 n + (n : ℤ)).toNat + 1)

end

end A176325.P5890294275667215693

/-! ## A176325.P15025435272311687164

`A352672(n)+A000007(n)`
-/

namespace A176325.P15025435272311687164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352672 (n + 1) + A000007 n

end

end A176325.P15025435272311687164

/-! ## A176325.P7278528778740429611

`A352672(n)+char[A151935(2*(n+1))]`
-/

namespace A176325.P7278528778740429611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352672 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A176325.P7278528778740429611

/-! ## A176325.P12499001694436506517

`A352672(n)-A159075(n+1)`
-/

namespace A176325.P12499001694436506517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352672 (n + 1) - A159075 (n + 1)

end

end A176325.P12499001694436506517

/-! ## A176325.P14691110565989006446

`A352672(n)+A151933(A092196(n))`
-/

namespace A176325.P14691110565989006446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352672 (n + 1) + A151933 (A092196 n).toNat

end

end A176325.P14691110565989006446

/-!
# A176327: Numerators of the rational sequence with e.g.f. (x/2)*(1+exp(-x))/(1-exp(-x)).

The programs for A176327, there is no canonical definition to state claims against.
-/

/-! ## A176327.P15704592789171237246

`A027641(n)+char[1]`
-/

namespace A176327.P15704592789171237246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A176327.P15704592789171237246

/-! ## A176327.P2169327885356853865

`A164555(n)-char[1]`
-/

namespace A176327.P2169327885356853865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A176327.P2169327885356853865

/-! ## A176327.P4546116155359676642

`A063524(n)+A027641(n)`
-/

namespace A176327.P4546116155359676642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A027641 n

end

end A176327.P4546116155359676642

/-! ## A176327.P11490125068778784859

`A178333(n)+A027641(n)`
-/

namespace A176327.P11490125068778784859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A027641 n

end

end A176327.P11490125068778784859

/-! ## A176327.P16288011935266393601

`A027641(n)*A057979(n)`
-/

namespace A176327.P16288011935266393601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A057979 n

end

end A176327.P16288011935266393601

/-! ## A176327.P17477465275600850192

`A027641(n)*A059841(n)`
-/

namespace A176327.P17477465275600850192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A059841 n

end

end A176327.P17477465275600850192

/-! ## A176327.P11975845355621618873

`A027641(n)*A060576(n)`
-/

namespace A176327.P11975845355621618873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A060576 n

end

end A176327.P11975845355621618873

/-! ## A176327.P9950016973948047345

`A027641(n)*A124625(n)`
-/

namespace A176327.P9950016973948047345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A124625 n

end

end A176327.P9950016973948047345

/-! ## A176327.P6539047367162288384

`A027641(n)*A129982(n)`
-/

namespace A176327.P6539047367162288384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A129982 n

end

end A176327.P6539047367162288384

/-! ## A176327.P17150006872429530764

`A057979(n)*A164555(n)`
-/

namespace A176327.P17150006872429530764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n * A164555 n

end

end A176327.P17150006872429530764

/-! ## A176327.P13547126703852092982

`A059841(n)*A164555(n)`
-/

namespace A176327.P13547126703852092982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A164555 n

end

end A176327.P13547126703852092982

/-! ## A176327.P4391174134849814177

`A060576(n)*A164555(n)`
-/

namespace A176327.P4391174134849814177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A164555 n

end

end A176327.P4391174134849814177

/-! ## A176327.P17677817880604861963

`A027641(n)*A254377(n)`
-/

namespace A176327.P17677817880604861963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A254377 n

end

end A176327.P17677817880604861963

/-! ## A176327.P9759003984045894071

`and(A027641(n), A105812(n))`
-/

namespace A176327.P9759003984045894071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027641 n) (A105812 n)

end

end A176327.P9759003984045894071

/-! ## A176327.P8661367388094888165

`and(A105812(n), A164555(n))`
-/

namespace A176327.P8661367388094888165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105812 n) (A164555 n)

end

end A176327.P8661367388094888165

/-! ## A176327.P6751295445586384959

`xor(A027641(n), A159075(n))`
-/

namespace A176327.P6751295445586384959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A027641 n) (A159075 n)

end

end A176327.P6751295445586384959

/-! ## A176327.P16025955763610932654

`xor(A063524(n), A164555(n))`
-/

namespace A176327.P16025955763610932654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A164555 n)

end

end A176327.P16025955763610932654

/-! ## A176327.P3483145423764068803

`xor(A164555(n), A178333(n))`
-/

namespace A176327.P3483145423764068803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A164555 n) (A178333 n)

end

end A176327.P3483145423764068803

/-! ## A176327.P4506091369064856684

`A027641(n*A260196(n)²)`
-/

namespace A176327.P4506091369064856684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 ((n : ℤ) * A260196 n ^ 2).toNat

end

end A176327.P4506091369064856684

/-! ## A176327.P9241576128674412792

`A000035(n+1)*A027641(n)`
-/

namespace A176327.P9241576128674412792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A027641 n

end

end A176327.P9241576128674412792

/-!
# A176328: Numerators of the rational sequence with e.g.f. (x/2)*(exp(-x) + 1)/(exp(x) - 1).

The programs for A176328, there is no canonical definition to state claims against.
-/

/-! ## A176328.P14923832074365266755

`A027641(n)+A176327(n)-A257935(n)`
-/

namespace A176328.P14923832074365266755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n + (A176327 n - A257935 n)

end

end A176328.P14923832074365266755

/-! ## A176328.P17329065066659582192

`A164555(n)-A027642(n)*A176447(n)`
-/

namespace A176328.P17329065066659582192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n - A027642 n * A176447 n

end

end A176328.P17329065066659582192

/-! ## A176328.P12424938612924175270

`A176327(n)-A176289(n)*A176447(n)`
-/

namespace A176328.P12424938612924175270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 n - A176289 n * A176447 n

end

end A176328.P12424938612924175270

/-! ## A176328.P3232712279062010220

`A176447(A257935(n)+A164869(n))`
-/

namespace A176328.P3232712279062010220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (A257935 n + A164869 n).toNat

end

end A176328.P3232712279062010220

/-!
# A176329: Concatenation of amicable numbers written in base 2.

The programs for A176329, there is no canonical definition to state claims against.
-/

/-! ## A176329.P3034306865754489886

`A047999(A034448(∑[A237714(n)]))`
-/

namespace A176329.P3034306865754489886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A034448 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A176329.P3034306865754489886

/-! ## A176329.P8507908136930595948

`A026519(A251534(n+1))%2`
-/

namespace A176329.P8507908136930595948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026519 (A251534 (n + 1)).toNat) 2

end

end A176329.P8507908136930595948

/-! ## A176329.P16793777078141650526

`A284817(A299256(n)+A270831(n+2))`
-/

namespace A176329.P16793777078141650526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (A299256 n + A270831 (n + 2)).toNat

end

end A176329.P16793777078141650526

/-! ## A176329.P17190206824541150182

`and(A026519(A251534(n+1)), A266974(n²))`
-/

namespace A176329.P17190206824541150182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026519 (A251534 (n + 1)).toNat) (A266974 (n ^ 2))

end

end A176329.P17190206824541150182

/-! ## A176329.P12658348487680323253

`A010060(A040992(3*n+1)*A381440(3*n+5))`
-/

namespace A176329.P12658348487680323253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A040992 (3 * n + 1) * A381440 (3 * n + 5)).toNat

end

end A176329.P12658348487680323253

/-!
# A176330: The largest Armstrong number 115132219018763992565095597973971522401 written in base 2.

The programs for A176330, there is no canonical definition to state claims against.
-/

/-! ## A176330.P13239696228439771395

`A115772(A038550(n+5)+1)%2`
-/

namespace A176330.P13239696228439771395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115772 (A038550 (n + 5) + 1).toNat) 2

end

end A176330.P13239696228439771395

/-! ## A176330.P16382409592823251681

`A000041(A329455(4*n))%2`
-/

namespace A176330.P16382409592823251681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A329455 (4 * n)).toNat) 2

end

end A176330.P16382409592823251681

/-! ## A176330.P11527234885056061984

`a(A216191(A120119(n)+3))` with `a(0)=1, a(1)=0`
-/

namespace A176330.P11527234885056061984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (A216191 (A120119 n + 3).toNat).toNat

end

end A176330.P11527234885056061984

/-! ## A176330.P7318114622615901481

`A010054(gcd(A029964(n+2), A153664(n+1)))`
-/

namespace A176330.P7318114622615901481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.gcd (A029964 (n + 2)) (A153664 (n + 1)))

end

end A176330.P7318114622615901481

/-! ## A176330.P10943502377391550349

`and(A080886(n+3), A094376(A263905(2*(n+1))))`
-/

namespace A176330.P10943502377391550349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080886 (n + 3)) (A094376 (A263905 (2 * (n + 1))).toNat)

end

end A176330.P10943502377391550349

/-!
# A176331: Triangle read by rows: T(n, k) = Sum_{j=0..n} C(j, n-k) * C(j, k) * (-1)^(n - j).

The programs for A176331, there is no canonical definition to state claims against.
-/

/-! ## A176331.P13126273703982117033

`A129533(A156184(n))+A114176(n)`
-/

namespace A176331.P13126273703982117033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 (A156184 n).toNat + A114176 n

end

end A176331.P13126273703982117033

/-! ## A176331.P13525671220351860316

`or(A086620(A114176(n)), A145903(n))`
-/

namespace A176331.P13525671220351860316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086620 (A114176 n).toNat) (A145903 n)

end

end A176331.P13525671220351860316

/-! ## A176331.P4956647146858332060

`A072088(A086629(n))+A000217(A014473(n))`
-/

namespace A176331.P4956647146858332060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A086629 n).toNat + A000217 (A014473 n).toNat

end

end A176331.P4956647146858332060

/-! ## A176331.P12263614940693812304

`A076437(A001263(n+1))-A185224(A014473(n))`
-/

namespace A176331.P12263614940693812304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076437 (A001263 (n + 1)).toNat - A185224 (A014473 n).toNat

end

end A176331.P12263614940693812304

/-! ## A176331.P8054753353611598950

`A076437(A001263(n+1))-A119467(A086645(n))`
-/

namespace A176331.P8054753353611598950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076437 (A001263 (n + 1)).toNat - A119467 (A086645 n).toNat

end

end A176331.P8054753353611598950

/-!
# A176332: Row sums of triangle A176331.

The programs for A176332, there is no canonical definition to state claims against.
-/

/-! ## A176332.P1045813507692679129

`∑[A191789(2*n)]`
-/

namespace A176332.P1045813507692679129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191789 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176332.P1045813507692679129

/-! ## A176332.P14876919653589835857

`record[A191789(n)+A138364(n)]`
-/

namespace A176332.P14876919653589835857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191789 n + A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176332.P14876919653589835857

/-! ## A176332.P16582057973422953989

`a(n-1)+A157928(n)*A191789(2*n)` with `a(0)=1, a(1)=2`
-/

namespace A176332.P16582057973422953989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A157928 n * A191789 (2 * n)

end

end A176332.P16582057973422953989

/-! ## A176332.P10800564273215034100

`A371798(n+1)-(A390680(n+1)+A371798(n))`
-/

namespace A176332.P10800564273215034100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371798 (n + 1) - (A390680 (n + 1) + A371798 n)

end

end A176332.P10800564273215034100

/-! ## A176332.P17584663472603366400

`A001700(n)-Δ[A371798(n)]`
-/

namespace A176332.P17584663472603366400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - (f1 (n + 1) - f1 n)

end

end A176332.P17584663472603366400

/-!
# A176333: Expansion of (1-3*x)/(1-4*x+9*x^2).

The programs for A176333, the canonical program `A176333.P360788044557848345` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176333 has offset 0).

The definition of A176333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-4x+9x^2))` (program `A176333.P360788044557848345`, by `A176333.P360788044557848345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176333.P360788044557848345

`ogf((1-3x)/(1-4x+9x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176333

/-- `ogf((1-3x)/(1-4x+9x^2))` -/
def P360788044557848345.Spec : Prop :=
  ∀ n, P360788044557848345.a n = A176333 n

theorem P360788044557848345.correct : P360788044557848345.Spec := by
  intro n
  simp only [A176333]

end A176333

/-! ## A176333.P18056573029762820779

`4*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A176333.P18056573029762820779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) - 9 * a (n - 2)

end

end A176333.P18056573029762820779

namespace A176333

/-- `4*a(n-1)-9*a(n-2)` -/
def P18056573029762820779.Spec : Prop :=
  ∀ n, P18056573029762820779.a n = A176333 n

end A176333

/-! ## A176333.P15214327342638711947

`Δ[A190967(n)]-2*A190967(n)`
-/

namespace A176333.P15214327342638711947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A190967 n

end

end A176333.P15214327342638711947

namespace A176333

/-- `Δ[A190967(n)]-2*A190967(n)` -/
def P15214327342638711947.Spec : Prop :=
  ∀ n, P15214327342638711947.a n = A176333 n

end A176333

/-! ## A176333.P7603146561116495501

`A190967(n+1)-3*A190967(n)`
-/

namespace A176333.P7603146561116495501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190967 (n + 1) - 3 * A190967 n

end

end A176333.P7603146561116495501

namespace A176333

/-- `A190967(n+1)-3*A190967(n)` -/
def P7603146561116495501.Spec : Prop :=
  ∀ n, P7603146561116495501.a n = A176333 n

end A176333

/-! ## A176333.P1570296322447687264

`Δ[A190967(n+1)/3]`
-/

namespace A176333.P1570296322447687264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190967 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176333.P1570296322447687264

namespace A176333

/-- `Δ[A190967(n+1)/3]` -/
def P1570296322447687264.Spec : Prop :=
  ∀ n, P1570296322447687264.a n = (A176333 n : ℚ)

end A176333

/-! ## A176333.P1599824618251132181

`A088139(2*n+1)/A122803(n)`
-/

namespace A176333.P1599824618251132181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088139 (2 * n + 1) : ℚ) / (A122803 n : ℚ)

end

end A176333.P1599824618251132181

namespace A176333

/-- `A088139(2*n+1)/A122803(n)` -/
def P1599824618251132181.Spec : Prop :=
  ∀ n, P1599824618251132181.a n = (A176333 n : ℚ)

end A176333

/-! ## A176333.P2370521023651194036

`1/A122803(n)*A088139(A005408(n))`
-/

namespace A176333.P2370521023651194036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A122803 n : ℚ) * (A088139 (A005408 n).toNat : ℚ)

end

end A176333.P2370521023651194036

namespace A176333

/-- `1/A122803(n)*A088139(A005408(n))` -/
def P2370521023651194036.Spec : Prop :=
  ∀ n, P2370521023651194036.a n = (A176333 n : ℚ)

end A176333

/-!
# A176334: Diagonal sums of number triangle A176331.

The programs for A176334, there is no canonical definition to state claims against.
-/

/-! ## A176334.P12626066872825521124

`A261664(n)+A054896(A171367(n))`
-/

namespace A176334.P12626066872825521124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 n + A054896 (A171367 n).toNat

end

end A176334.P12626066872825521124

/-! ## A176334.P10335869167048461552

`A008618(4*A018018(n))`
-/

namespace A176334.P10335869167048461552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (4 * A018018 n).toNat

end

end A176334.P10335869167048461552

/-! ## A176334.P5197892127611348007

`A008618(4*A018020(n))`
-/

namespace A176334.P5197892127611348007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (4 * A018020 n).toNat

end

end A176334.P5197892127611348007

/-! ## A176334.P11011207851945355778

`A066339(A034297(2*n+1)+5)`
-/

namespace A176334.P11011207851945355778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A034297 (2 * n + 1) + 5).toNat

end

end A176334.P11011207851945355778

/-!
# A176335: Central coefficients T(2n,n) of number triangle A176331.

The programs for A176335, there is no canonical definition to state claims against.
-/

/-! ## A176335.P12469805547473232321

`A001700(n)²-A333593(n+1)`
-/

namespace A176335.P12469805547473232321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n ^ 2 - A333593 (n + 1)

end

end A176335.P12469805547473232321

/-! ## A176335.P6173637133579682038

`A176331(∑[4*n])`
-/

namespace A176335.P6173637133579682038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176331 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176335.P6173637133579682038

/-! ## A176335.P9513680629067473973

`record[A003982(n)*A176331(n)]`
-/

namespace A176335.P9513680629067473973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A176331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176335.P9513680629067473973

/-! ## A176335.P16243503472367916245

`record[A176331(A004396(n)*A008620(n))]`
-/

namespace A176335.P16243503472367916245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176331 (A004396 n * A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176335.P16243503472367916245

/-! ## A176335.P15242796536216052669

`record[A176331(A004523(n)*A008620(n))]`
-/

namespace A176335.P15242796536216052669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176331 (A004523 n * A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176335.P15242796536216052669

/-! ## A176335.P7893199775015109584

`record[A176331(A008620(2*n)*A008620(n+1))]`
-/

namespace A176335.P7893199775015109584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176331 (A008620 (2 * n) * A008620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176335.P7893199775015109584

/-! ## A176335.P486842336279574635

`record[A176331(A057979((n+1)²))]`
-/

namespace A176335.P486842336279574635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176331 (A057979 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176335.P486842336279574635

/-! ## A176335.P4059385360865720545

`record[A176331(A004524(xor(1, n+1)²))]`
-/

namespace A176335.P4059385360865720545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176331 (A004524 (Nat.xor 1 (n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176335.P4059385360865720545

/-!
# A176337: a(n) = 1 + (1-2^n)*a(n-1) for n > 0, a(0)=0.

The programs for A176337, the canonical program `A176337.P17231120586836672876` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176337 has offset 0).

The definition of A176337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(1-2^n)*a(n-1)` (program `A176337.P17231120586836672876`, by `A176337.P17231120586836672876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176337.P17231120586836672876

`1+(1-2^n)*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176337

/-- `1+(1-2^n)*a(n-1)` -/
def P17231120586836672876.Spec : Prop :=
  ∀ n, P17231120586836672876.a n = A176337 n

theorem P17231120586836672876.correct : P17231120586836672876.Spec := by
  intro n
  simp only [A176337]

end A176337

/-! ## A176337.P15181697521709728404

`1-a(n-1)*∑[2*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A176337.P15181697521709728404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A176337.P15181697521709728404

namespace A176337

/-- `1-a(n-1)*∑[2*a(n-1)]` -/
def P15181697521709728404.Spec : Prop :=
  ∀ n, P15181697521709728404.a n = A176337 n

end A176337

/-! ## A176337.P10819568143537810174

`1-a(n-1)*A000225(n)` with `a(0)=0`
-/

namespace A176337.P10819568143537810174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * A000225 n

end

end A176337.P10819568143537810174

namespace A176337

/-- `1-a(n-1)*A000225(n)` -/
def P10819568143537810174.Spec : Prop :=
  ∀ n, P10819568143537810174.a n = A176337 n

theorem P10819568143537810174.correct : P10819568143537810174.Spec := by
  intro n
  simp only [A176337, Nat.add_sub_cancel, A176337.P10819568143537810174.a, A176337.P17231120586836672876.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176337

/-! ## A176337.P8824697601611476691

`1-a(n-1)*A255047(n)` with `a(0)=0`
-/

namespace A176337.P8824697601611476691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * A255047 n

end

end A176337.P8824697601611476691

namespace A176337

/-- `1-a(n-1)*A255047(n)` -/
def P8824697601611476691.Spec : Prop :=
  ∀ n, P8824697601611476691.a n = A176337 n

end A176337

/-! ## A176337.P465214505997378236

`(2-A000051(n))*a(n-1)+1` with `a(0)=0`
-/

namespace A176337.P465214505997378236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 - A000051 n) * a (n - 1) + 1

end

end A176337.P465214505997378236

namespace A176337

/-- `(2-A000051(n))*a(n-1)+1` -/
def P465214505997378236.Spec : Prop :=
  ∀ n, P465214505997378236.a n = A176337 n

theorem P465214505997378236.correct : P465214505997378236.Spec := by
  intro n
  simp only [A176337, Nat.add_sub_cancel, A176337.P465214505997378236.a, A176337.P17231120586836672876.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176337

/-!
# A176338: a(n) = 1 + (1-3^n)*a(n-1) for n >=1, a(0) = 0.

The programs for A176338, the canonical program `A176338.P6792791561477572589` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176338 has offset 0).

The definition of A176338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(1-3^n)*a(n-1)` (program `A176338.P6792791561477572589`, by `A176338.P6792791561477572589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176338.P6792791561477572589

`1+(1-3^n)*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176338

/-- `1+(1-3^n)*a(n-1)` -/
def P6792791561477572589.Spec : Prop :=
  ∀ n, P6792791561477572589.a n = A176338 n

theorem P6792791561477572589.correct : P6792791561477572589.Spec := by
  intro n
  simp only [A176338]

end A176338

/-! ## A176338.P10760864070078065208

`1-a(n-1)*A024023(n)` with `a(0)=0`
-/

namespace A176338.P10760864070078065208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * A024023 n

end

end A176338.P10760864070078065208

namespace A176338

/-- `1-a(n-1)*A024023(n)` -/
def P10760864070078065208.Spec : Prop :=
  ∀ n, P10760864070078065208.a n = A176338 n

theorem P10760864070078065208.correct : P10760864070078065208.Spec := by
  intro n
  simp only [A176338, Nat.add_sub_cancel, A176338.P10760864070078065208.a, A176338.P6792791561477572589.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176338

/-! ## A176338.P8017121937313285987

`1-a(n-1)*A103453(n)` with `a(0)=0`
-/

namespace A176338.P8017121937313285987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * A103453 n

end

end A176338.P8017121937313285987

namespace A176338

/-- `1-a(n-1)*A103453(n)` -/
def P8017121937313285987.Spec : Prop :=
  ∀ n, P8017121937313285987.a n = A176338 n

end A176338

/-! ## A176338.P11555964044701936098

`(1-A000244(n))*a(n-1)+1` with `a(0)=0`
-/

namespace A176338.P11555964044701936098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - A000244 n) * a (n - 1) + 1

end

end A176338.P11555964044701936098

namespace A176338

/-- `(1-A000244(n))*a(n-1)+1` -/
def P11555964044701936098.Spec : Prop :=
  ∀ n, P11555964044701936098.a n = A176338 n

theorem P11555964044701936098.correct : P11555964044701936098.Spec := by
  intro n
  simp only [A176338, Nat.add_sub_cancel, A176338.P11555964044701936098.a, A176338.P6792791561477572589.a, A000244, A000244.P17162167222172810417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176338

/-! ## A176338.P4914007353010332317

`1-a(n-1)*A048328(2*n)` with `a(0)=0`
-/

namespace A176338.P4914007353010332317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * A048328 (2 * n)

end

end A176338.P4914007353010332317

namespace A176338

/-- `1-a(n-1)*A048328(2*n)` -/
def P4914007353010332317.Spec : Prop :=
  ∀ n, P4914007353010332317.a n = A176338 n

end A176338

/-!
# A176339: Triangle T(n,k) = 1 - A176337(k) - A176337(n-k) + A176337(n) read by rows.

The programs for A176339, the canonical program `A176339.P9737179467454685426` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176339 has offset 0).

The definition of A176339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-A176337(col(n))-A176337(row(n)-col(n))+A176337(row(n))` (program `A176339.P9737179467454685426`, by `A176339.P9737179467454685426.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176339.P9737179467454685426

`1-A176337(col(n))-A176337(row(n)-col(n))+A176337(row(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176339

/-- `1-A176337(col(n))-A176337(row(n)-col(n))+A176337(row(n))` -/
def P9737179467454685426.Spec : Prop :=
  ∀ n, P9737179467454685426.a n = A176339 n

theorem P9737179467454685426.correct : P9737179467454685426.Spec := by
  intro n
  simp only [A176339]

end A176339

/-! ## A176339.P9580051130791392058

`A156593(n)-A349612(A156581(n))`
-/

namespace A176339.P9580051130791392058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156593 n - A349612 (A156581 n).toNat

end

end A176339.P9580051130791392058

namespace A176339

/-- `A156593(n)-A349612(A156581(n))` -/
def P9580051130791392058.Spec : Prop :=
  ∀ n, P9580051130791392058.a n = A176339 n

end A176339

/-!
# A176340: Triangle T(n,k) = 1 - A176338(k) - A176338(n-k) + A176338(n) read by rows.

The programs for A176340, the canonical program `A176340.P12337773595313841454` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176340 has offset 0).

The definition of A176340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-A176338(col(n))-A176338(row(n)-col(n))+A176338(row(n))` (program `A176340.P12337773595313841454`, by `A176340.P12337773595313841454.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176340.P12337773595313841454

`1-A176338(col(n))-A176338(row(n)-col(n))+A176338(row(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176340

/-- `1-A176338(col(n))-A176338(row(n)-col(n))+A176338(row(n))` -/
def P12337773595313841454.Spec : Prop :=
  ∀ n, P12337773595313841454.a n = A176340 n

theorem P12337773595313841454.correct : P12337773595313841454.Spec := by
  intro n
  simp only [A176340]

end A176340

/-! ## A176340.P15133327806123596952

`A177147(or(A034932(n), A111429(n)))`
-/

namespace A176340.P15133327806123596952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177147 (Int.lor (A034932 n) (A111429 n)).toNat

end

end A176340.P15133327806123596952

namespace A176340

/-- `A177147(or(A034932(n), A111429(n)))` -/
def P15133327806123596952.Spec : Prop :=
  ∀ n, P15133327806123596952.a n = A176340 n

end A176340

/-! ## A176340.P16866032736087710296

`A177147(or(A077028(n), A111429(n)))`
-/

namespace A176340.P16866032736087710296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177147 (Int.lor (A077028 n) (A111429 n)).toNat

end

end A176340.P16866032736087710296

namespace A176340

/-- `A177147(or(A077028(n), A111429(n)))` -/
def P16866032736087710296.Spec : Prop :=
  ∀ n, P16866032736087710296.a n = A176340 n

end A176340

/-! ## A176340.P11216408870370987115

`A177147(or(A111429(n), A196922(n+1)))`
-/

namespace A176340.P11216408870370987115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177147 (Int.lor (A111429 n) (A196922 (n + 1))).toNat

end

end A176340.P11216408870370987115

namespace A176340

/-- `A177147(or(A111429(n), A196922(n+1)))` -/
def P11216408870370987115.Spec : Prop :=
  ∀ n, P11216408870370987115.a n = A176340 n

end A176340

/-! ## A176340.P15249980312035530455

`A177147(A034932(n))-A111429(A111429(n)²)`
-/

namespace A176340.P15249980312035530455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177147 (A034932 n).toNat - A111429 (A111429 n ^ 2).toNat

end

end A176340.P15249980312035530455

namespace A176340

/-- `A177147(A034932(n))-A111429(A111429(n)²)` -/
def P15249980312035530455.Spec : Prop :=
  ∀ n, P15249980312035530455.a n = A176340 n

end A176340

/-!
# A176341: a(n) = the location of the first appearance of the decimal expansion of n in the decimal expansion of Pi.

The programs for A176341, there is no canonical definition to state claims against.
-/

/-! ## A176341.P6188366650333032978

`A032445(n)-1`
-/

namespace A176341.P6188366650333032978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032445 n - 1

end

end A176341.P6188366650333032978

/-! ## A176341.P13082705337563616195

`A333128(n)-A055642(n)`
-/

namespace A176341.P13082705337563616195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333128 n - A055642 n

end

end A176341.P13082705337563616195

/-! ## A176341.P4332784310669644579

`A014777(n)%A032445(n)`
-/

namespace A176341.P4332784310669644579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014777 n) (A032445 n)

end

end A176341.P4332784310669644579

/-! ## A176341.P17280018813222862042

`A057428(n+1)+A032445(n)`
-/

namespace A176341.P17280018813222862042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A032445 n

end

end A176341.P17280018813222862042

/-! ## A176341.P11468742446327935121

`A134824(n+2)+A032445(n)`
-/

namespace A176341.P11468742446327935121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A032445 n

end

end A176341.P11468742446327935121

/-! ## A176341.P12162635324745481488

`A033999(2*n+1)+A032445(n)`
-/

namespace A176341.P12162635324745481488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A032445 n

end

end A176341.P12162635324745481488

/-! ## A176341.P5613298223536256096

`A033880(A248180(val(n+1, 7)))+A032445(n)`
-/

namespace A176341.P5613298223536256096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A248180 (SequenceMachineLib.valuation (n + 1) 7)).toNat + A032445 n

end

end A176341.P5613298223536256096

/-! ## A176341.P11157388582758705074

`A023443(A032445(n))`
-/

namespace A176341.P11157388582758705074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A032445 n).toNat

end

end A176341.P11157388582758705074

/-! ## A176341.P17285938206976751603

`A065423(2*A032445(n))`
-/

namespace A176341.P17285938206976751603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A032445 n).toNat

end

end A176341.P17285938206976751603

/-! ## A176341.P9180279765343137058

`A326185(A165825(n+1))+A032445(n)`
-/

namespace A176341.P9180279765343137058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326185 (A165825 (n + 1)).toNat + A032445 n

end

end A176341.P9180279765343137058

/-!
# A176342: Phi(A166546(n)).

The programs for A176342, the canonical program `A176342.P5272575056289982246` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176342 has offset 1).

The definition of A176342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A166546, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176342.P5272575056289982246

`A000010(A166546(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176342

/-- `A000010(A166546(n+1))` -/
def P5272575056289982246.Spec : Prop :=
  ∀ n, P5272575056289982246.a n = A176342 (n + 1)

theorem P5272575056289982246.correct : P5272575056289982246.Spec := by
  intro n
  simp only [A176342, Nat.add_sub_cancel]

end A176342

/-! ## A176342.P9422845554554201373

`A057828(A166546(n+1)²)`
-/

namespace A176342.P9422845554554201373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A166546 (n + 1) ^ 2).toNat

end

end A176342.P9422845554554201373

namespace A176342

/-- `A057828(A166546(n+1)²)` -/
def P9422845554554201373.Spec : Prop :=
  ∀ n, P9422845554554201373.a n = A176342 (n + 1)

end A176342

/-! ## A176342.P13842302430372199392

`A089929(2*A166546(n+1))`
-/

namespace A176342.P13842302430372199392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (2 * A166546 (n + 1)).toNat

end

end A176342.P13842302430372199392

namespace A176342

/-- `A089929(2*A166546(n+1))` -/
def P13842302430372199392.Spec : Prop :=
  ∀ n, P13842302430372199392.a n = A176342 (n + 1)

end A176342

/-! ## A176342.P9588601247456787383

`A055034(lcm(2, A166546(n+1)))`
-/

namespace A176342.P9588601247456787383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Int.lcm 2 (A166546 (n + 1)))

end

end A176342.P9588601247456787383

namespace A176342

/-- `A055034(lcm(2, A166546(n+1)))` -/
def P9588601247456787383.Spec : Prop :=
  ∀ n, P9588601247456787383.a n = A176342 (n + 1)

end A176342

/-! ## A176342.P11974616411025519077

`∑{d}[A166546(n+1), A007431(#)]`
-/

namespace A176342.P11974616411025519077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A176342.P11974616411025519077

namespace A176342

/-- `∑{d}[A166546(n+1), A007431(#)]` -/
def P11974616411025519077.Spec : Prop :=
  ∀ n, P11974616411025519077.a n = A176342 (n + 1)

end A176342

/-! ## A176342.P10230171947969661270

`A000010(eq[1, A001222(∏{e}[n+1, #+1]+1)]+1)`
-/

namespace A176342.P10230171947969661270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A176342.P10230171947969661270

namespace A176342

/-- `A000010(eq[1, A001222(∏{e}[n+1, #+1]+1)]+1)` -/
def P10230171947969661270.Spec : Prop :=
  ∀ n, P10230171947969661270.a n = A176342 (n + 1)

end A176342

/-! ## A176342.P16268862538359008263

`A109606(eq[1, A001222(∏{e}[n+1, #+1]+1)]+1)+1`
-/

namespace A176342.P16268862538359008263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A176342.P16268862538359008263

namespace A176342

/-- `A109606(eq[1, A001222(∏{e}[n+1, #+1]+1)]+1)+1` -/
def P16268862538359008263.Spec : Prop :=
  ∀ n, P16268862538359008263.a n = A176342 (n + 1)

end A176342

/-! ## A176342.P17628700083550603094

`A225530(A057427(n)*A166546(n+1))`
-/

namespace A176342.P17628700083550603094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A057427 n * A166546 (n + 1)).toNat

end

end A176342.P17628700083550603094

namespace A176342

/-- `A225530(A057427(n)*A166546(n+1))` -/
def P17628700083550603094.Spec : Prop :=
  ∀ n, P17628700083550603094.a n = A176342 (n + 1)

end A176342

/-! ## A176342.P14878926908488342293

`A225530(A166546(n+1)%A001844(n))`
-/

namespace A176342.P14878926908488342293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (Int.tmod (A166546 (n + 1)) (A001844 n)).toNat

end

end A176342.P14878926908488342293

namespace A176342

/-- `A225530(A166546(n+1)%A001844(n))` -/
def P14878926908488342293.Spec : Prop :=
  ∀ n, P14878926908488342293.a n = A176342 (n + 1)

end A176342

/-! ## A176342.P15980704729135577295

`A225530(A166546(n+1)+1-A057427(n))`
-/

namespace A176342.P15980704729135577295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A166546 (n + 1) + (1 - A057427 n)).toNat

end

end A176342.P15980704729135577295

namespace A176342

/-- `A225530(A166546(n+1)+1-A057427(n))` -/
def P15980704729135577295.Spec : Prop :=
  ∀ n, P15980704729135577295.a n = A176342 (n + 1)

end A176342

/-!
# A176343: a(n) = Fibonacci(n)*a(n-1) + 1, a(0) = 0.

The programs for A176343, the canonical program `A176343.P112562406411594333` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176343 has offset 0).

The definition of A176343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*a(n-1)+1` (program `A176343.P112562406411594333`, by `A176343.P112562406411594333.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176343.P18017909725347726355

`1+A000045(n)*a(n-1)` with `a(0)=0`
-/

namespace A176343.P18017909725347726355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 + A000045 n * a (n - 1)

end

end A176343.P18017909725347726355

namespace A176343

/-- `1+A000045(n)*a(n-1)` -/
def P18017909725347726355.Spec : Prop :=
  ∀ n, P18017909725347726355.a n = A176343 n

theorem P18017909725347726355.correct : P18017909725347726355.Spec := by
  intro n
  simp only [A176343, Nat.add_sub_cancel, A176343.P18017909725347726355.a, A176343.P112562406411594333.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A176343

/-! ## A176343.P112562406411594333

`A000045(n)*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176343

/-- `A000045(n)*a(n-1)+1` -/
def P112562406411594333.Spec : Prop :=
  ∀ n, P112562406411594333.a n = A176343 n

theorem P112562406411594333.correct : P112562406411594333.Spec := by
  intro n
  simp only [A176343]

end A176343

/-! ## A176343.P9891136943987289769

`abs(A236191(n))*a(n-1)+1` with `a(0)=0`
-/

namespace A176343.P9891136943987289769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |A236191 n| * a (n - 1) + 1

end

end A176343.P9891136943987289769

namespace A176343

/-- `abs(A236191(n))*a(n-1)+1` -/
def P9891136943987289769.Spec : Prop :=
  ∀ n, P9891136943987289769.a n = A176343 n

end A176343

/-! ## A176343.P6170256601089940825

`a(n-1)*A129713(∑[n])+1` with `a(0)=0`
-/

namespace A176343.P6170256601089940825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A129713 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A176343.P6170256601089940825

namespace A176343

/-- `a(n-1)*A129713(∑[n])+1` -/
def P6170256601089940825.Spec : Prop :=
  ∀ n, P6170256601089940825.a n = A176343 n

end A176343

/-!
# A176344: T(n,k) = 1 + A176343(n) - A176343(k) - A176343(n-k), triangle read by rows (n >= 0, 0 <= k <= n).

The programs for A176344, the canonical program `A176344.P8079700047090408420` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176344 has offset 0).

The definition of A176344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A176343(row(n))-A176343(col(n))-A176343(row(n)-col(n))` (program `A176344.P8079700047090408420`, by `A176344.P8079700047090408420.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176344.P8079700047090408420

`1+A176343(row(n))-A176343(col(n))-A176343(row(n)-col(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176344

/-- `1+A176343(row(n))-A176343(col(n))-A176343(row(n)-col(n))` -/
def P8079700047090408420.Spec : Prop :=
  ∀ n, P8079700047090408420.a n = A176344 n

theorem P8079700047090408420.correct : P8079700047090408420.Spec := by
  intro n
  simp only [A176344]

end A176344

/-!
# A176345: Sum of gcd(k,n) from k = 1 to n over "regular" integers only (an integer k is regular if there is an x such that k^2 x == k (mod n)).

The programs for A176345, the canonical program `A176345.P6787886685933491755` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176345 has offset 1).

The definition of A176345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176345.P8167698505723439582

`∑{d}[n+1, A000010(#)*A007947((n+1)/#)]`
-/

namespace A176345.P8167698505723439582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A176345.P8167698505723439582

namespace A176345

/-- `∑{d}[n+1, A000010(#)*A007947((n+1)/#)]` -/
def P8167698505723439582.Spec : Prop :=
  ∀ n, P8167698505723439582.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P7444391216192322774

`∑{d}[n+1, A062570(#)*A076109((n+1)/#)]`
-/

namespace A176345.P7444391216192322774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A076109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A176345.P7444391216192322774

namespace A176345

/-- `∑{d}[n+1, A062570(#)*A076109((n+1)/#)]` -/
def P7444391216192322774.Spec : Prop :=
  ∀ n, P7444391216192322774.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P16368699770381539062

`∑{d}[n+1, A007431(#)*A191750((n+1)/#)]`
-/

namespace A176345.P16368699770381539062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A191750 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A176345.P16368699770381539062

namespace A176345

/-- `∑{d}[n+1, A007431(#)*A191750((n+1)/#)]` -/
def P16368699770381539062.Spec : Prop :=
  ∀ n, P16368699770381539062.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P13755008401617843705

`∑{d}[n+1, A126246(#)*A204455((n+1)/#)]`
-/

namespace A176345.P13755008401617843705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126246 d * A204455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A176345.P13755008401617843705

namespace A176345

/-- `∑{d}[n+1, A126246(#)*A204455((n+1)/#)]` -/
def P13755008401617843705.Spec : Prop :=
  ∀ n, P13755008401617843705.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P8404820324600277898

`∑{d}[n+1, A008683(#)*A335032((n+1)/#)]`
-/

namespace A176345.P8404820324600277898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A335032 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A176345.P8404820324600277898

namespace A176345

/-- `∑{d}[n+1, A008683(#)*A335032((n+1)/#)]` -/
def P8404820324600277898.Spec : Prop :=
  ∀ n, P8404820324600277898.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P6787886685933491755

`∑{d}[n+1, A074722(#)*A345264((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A176345

/-- `∑{d}[n+1, A074722(#)*A345264((n+1)/#)]` -/
def P6787886685933491755.Spec : Prop :=
  ∀ n, P6787886685933491755.a n = A176345 (n + 1)

theorem P6787886685933491755.correct : P6787886685933491755.Spec := by
  intro n
  simp only [A176345, Nat.add_sub_cancel]

end A176345

/-! ## A176345.P4555111460484599555

`∑{d}[n+1, A063659(#)*A380163((n+1)/#)]`
-/

namespace A176345.P4555111460484599555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A380163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A176345.P4555111460484599555

namespace A176345

/-- `∑{d}[n+1, A063659(#)*A380163((n+1)/#)]` -/
def P4555111460484599555.Spec : Prop :=
  ∀ n, P4555111460484599555.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P2304229855504572580

`A003557(n+1)*A018804(A007947(n+1))`
-/

namespace A176345.P2304229855504572580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A018804 (A007947 (n + 1)).toNat

end

end A176345.P2304229855504572580

namespace A176345

/-- `A003557(n+1)*A018804(A007947(n+1))` -/
def P2304229855504572580.Spec : Prop :=
  ∀ n, P2304229855504572580.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P7262833954708761360

`(A336551(n+1)+1)*A018804(A007947(n+1))`
-/

namespace A176345.P7262833954708761360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336551 (n + 1) + 1) * A018804 (A007947 (n + 1)).toNat

end

end A176345.P7262833954708761360

namespace A176345

/-- `(A336551(n+1)+1)*A018804(A007947(n+1))` -/
def P7262833954708761360.Spec : Prop :=
  ∀ n, P7262833954708761360.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P4466825323599650248

`gcd(n+1, A069359(n+1))*A018804(A007947(n+1))`
-/

namespace A176345.P4466825323599650248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)) : ℤ) * A018804 (A007947 (n + 1)).toNat

end

end A176345.P4466825323599650248

namespace A176345

/-- `gcd(n+1, A069359(n+1))*A018804(A007947(n+1))` -/
def P4466825323599650248.Spec : Prop :=
  ∀ n, P4466825323599650248.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P2687834407350625257

`(A300719(n+1)+A300717(n+1))*A018804(A007947(n+1))`
-/

namespace A176345.P2687834407350625257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A300719 (n + 1) + A300717 (n + 1)) * A018804 (A007947 (n + 1)).toNat

end

end A176345.P2687834407350625257

namespace A176345

/-- `(A300719(n+1)+A300717(n+1))*A018804(A007947(n+1))` -/
def P2687834407350625257.Spec : Prop :=
  ∀ n, P2687834407350625257.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P4962935648228452295

`(A076332(n+1)-A007947(n+1))*A018804(A007947(n+1))`
-/

namespace A176345.P4962935648228452295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076332 (n + 1) - A007947 (n + 1)) * A018804 (A007947 (n + 1)).toNat

end

end A176345.P4962935648228452295

namespace A176345

/-- `(A076332(n+1)-A007947(n+1))*A018804(A007947(n+1))` -/
def P4962935648228452295.Spec : Prop :=
  ∀ n, P4962935648228452295.a n = A176345 (n + 1)

end A176345

/-! ## A176345.P17895117144452896429

`A001615(n+1)*A018804(A007947(n+1))/A048250(n+1)`
-/

namespace A176345.P17895117144452896429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) * A018804 (A007947 (n + 1)).toNat : ℚ) / (A048250 (n + 1) : ℚ)

end

end A176345.P17895117144452896429

namespace A176345

/-- `A001615(n+1)*A018804(A007947(n+1))/A048250(n+1)` -/
def P17895117144452896429.Spec : Prop :=
  ∀ n, P17895117144452896429.a n = (A176345 (n + 1) : ℚ)

end A176345

/-! ## A176345.P13466815225194586805

`A000010(n+1)*A018804(A007947(n+1))/A173557(n+1)`
-/

namespace A176345.P13466815225194586805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A018804 (A007947 (n + 1)).toNat : ℚ) / (A173557 (n + 1) : ℚ)

end

end A176345.P13466815225194586805

namespace A176345

/-- `A000010(n+1)*A018804(A007947(n+1))/A173557(n+1)` -/
def P13466815225194586805.Spec : Prop :=
  ∀ n, P13466815225194586805.a n = (A176345 (n + 1) : ℚ)

end A176345

/-! ## A176345.P17644665973720219106

`A398148((n+1)²)/(n+1)`
-/

namespace A176345.P17644665973720219106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398148 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A176345.P17644665973720219106

namespace A176345

/-- `A398148((n+1)²)/(n+1)` -/
def P17644665973720219106.Spec : Prop :=
  ∀ n, P17644665973720219106.a n = (A176345 (n + 1) : ℚ)

end A176345

/-!
# A176346: A dual remainder symmetrical triangle sequence T(n, m) = 1 + 2*(n+1) - (m+1)*floor((n+1)/(m+1)) - (n-m+1)*floor((n+1)/( n-m+1)), read by rows.

The programs for A176346, the canonical program `A176346.P2858540763397008978` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176346 has offset 0).

The definition of A176346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176346.P5312176240346407693

`A176348(n)/A007318(n)`
-/

namespace A176346.P5312176240346407693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A007318 n : ℚ)

end

end A176346.P5312176240346407693

namespace A176346

/-- `A176348(n)/A007318(n)` -/
def P5312176240346407693.Spec : Prop :=
  ∀ n, P5312176240346407693.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P6935678821659415566

`A176348(n)/ceil(A134059(n)/3)`
-/

namespace A176346.P6935678821659415566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (⌈(A134059 n : ℚ) / 3⌉ : ℚ)

end

end A176346.P6935678821659415566

namespace A176346

/-- `A176348(n)/ceil(A134059(n)/3)` -/
def P6935678821659415566.Spec : Prop :=
  ∀ n, P6935678821659415566.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P2858540763397008978

`A048158(n+1)+A051777(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A176346

/-- `A048158(n+1)+A051777(n+1)+1` -/
def P2858540763397008978.Spec : Prop :=
  ∀ n, P2858540763397008978.a n = A176346 n

theorem P2858540763397008978.correct : P2858540763397008978.Spec := by
  intro n
  simp only [A176346]

end A176346

/-! ## A176346.P18139685194449617326

`A176348(n)/A193554(lt[1, A193588(n)])`
-/

namespace A176346.P18139685194449617326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ)

end

end A176346.P18139685194449617326

namespace A176346

/-- `A176348(n)/A193554(lt[1, A193588(n)])` -/
def P18139685194449617326.Spec : Prop :=
  ∀ n, P18139685194449617326.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P166221772963687195

`A176348(n)/gcd(A124927(n), A124928(n))`
-/

namespace A176346.P166221772963687195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (Int.gcd (A124927 n) (A124928 n) : ℚ)

end

end A176346.P166221772963687195

namespace A176346

/-- `A176348(n)/gcd(A124927(n), A124928(n))` -/
def P166221772963687195.Spec : Prop :=
  ∀ n, P166221772963687195.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P2522426682430871841

`A176348(n)/gcd(A091917(n), A176348(n))`
-/

namespace A176346.P2522426682430871841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (Int.gcd (A091917 n) (A176348 n) : ℚ)

end

end A176346.P2522426682430871841

namespace A176346

/-- `A176348(n)/gcd(A091917(n), A176348(n))` -/
def P2522426682430871841.Spec : Prop :=
  ∀ n, P2522426682430871841.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P14415606216680277485

`A176348(n)/C(A003056(n), A002262(n))`
-/

namespace A176346.P14415606216680277485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (Nat.choose (A003056 n).toNat (A002262 n).toNat : ℚ)

end

end A176346.P14415606216680277485

namespace A176346

/-- `A176348(n)/C(A003056(n), A002262(n))` -/
def P14415606216680277485.Spec : Prop :=
  ∀ n, P14415606216680277485.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P2196621613145847348

`A176348(n)/C(A003056(n), A025581(n))`
-/

namespace A176346.P2196621613145847348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (Nat.choose (A003056 n).toNat (A025581 n).toNat : ℚ)

end

end A176346.P2196621613145847348

namespace A176346

/-- `A176348(n)/C(A003056(n), A025581(n))` -/
def P2196621613145847348.Spec : Prop :=
  ∀ n, P2196621613145847348.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P10991496032352373202

`A051777(n+1)+A051777(A278818(n))+1`
-/

namespace A176346.P10991496032352373202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1) + (A051777 (A278818 n).toNat + 1)

end

end A176346.P10991496032352373202

namespace A176346

/-- `A051777(n+1)+A051777(A278818(n))+1` -/
def P10991496032352373202.Spec : Prop :=
  ∀ n, P10991496032352373202.a n = A176346 n

end A176346

/-! ## A176346.P14586823951709774669

`A176348(n)/(A003989(n+1)*A161642(n))`
-/

namespace A176346.P14586823951709774669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A003989 (n + 1) * A161642 n : ℚ)

end

end A176346.P14586823951709774669

namespace A176346

/-- `A176348(n)/(A003989(n+1)*A161642(n))` -/
def P14586823951709774669.Spec : Prop :=
  ∀ n, P14586823951709774669.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P981668457134159972

`A048158(A038722(n+1))+A048158(n+1)+1`
-/

namespace A176346.P981668457134159972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A038722 (n + 1)).toNat + (A048158 (n + 1) + 1)

end

end A176346.P981668457134159972

namespace A176346

/-- `A048158(A038722(n+1))+A048158(n+1)+1` -/
def P981668457134159972.Spec : Prop :=
  ∀ n, P981668457134159972.a n = A176346 n

end A176346

/-! ## A176346.P11306117832633153711

`A051777(A038722(n+1))+A051777(n+1)+1`
-/

namespace A176346.P11306117832633153711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (A038722 (n + 1)).toNat + (A051777 (n + 1) + 1)

end

end A176346.P11306117832633153711

namespace A176346

/-- `A051777(A038722(n+1))+A051777(n+1)+1` -/
def P11306117832633153711.Spec : Prop :=
  ∀ n, P11306117832633153711.a n = A176346 n

end A176346

/-! ## A176346.P5713502320085851547

`A048158(n+1)+A048158(A061579(n)+1)+1`
-/

namespace A176346.P5713502320085851547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + (A048158 (A061579 n + 1).toNat + 1)

end

end A176346.P5713502320085851547

namespace A176346

/-- `A048158(n+1)+A048158(A061579(n)+1)+1` -/
def P5713502320085851547.Spec : Prop :=
  ∀ n, P5713502320085851547.a n = A176346 n

end A176346

/-! ## A176346.P2672142708312001159

`A051777(n+1)+A051777(A061579(n)+1)+1`
-/

namespace A176346.P2672142708312001159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1) + (A051777 (A061579 n + 1).toNat + 1)

end

end A176346.P2672142708312001159

namespace A176346

/-- `A051777(n+1)+A051777(A061579(n)+1)+1` -/
def P2672142708312001159.Spec : Prop :=
  ∀ n, P2672142708312001159.a n = A176346 n

end A176346

/-! ## A176346.P4345846747282221367

`A176348(n)/C(A003056(n), A002260(n+1)-1)`
-/

namespace A176346.P4345846747282221367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℚ)

end

end A176346.P4345846747282221367

namespace A176346

/-- `A176348(n)/C(A003056(n), A002260(n+1)-1)` -/
def P4345846747282221367.Spec : Prop :=
  ∀ n, P4345846747282221367.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P1928308377206880647

`A176348(n)/C(A003056(n), A004736(n+1)-1)`
-/

namespace A176346.P1928308377206880647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℚ)

end

end A176346.P1928308377206880647

namespace A176346

/-- `A176348(n)/C(A003056(n), A004736(n+1)-1)` -/
def P1928308377206880647.Spec : Prop :=
  ∀ n, P1928308377206880647.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P10002834765932489824

`A176348(n)/ceil(A134060(n)/3)`
-/

namespace A176346.P10002834765932489824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (⌈(A134060 n : ℚ) / 3⌉ : ℚ)

end

end A176346.P10002834765932489824

namespace A176346

/-- `A176348(n)/ceil(A134060(n)/3)` -/
def P10002834765932489824.Spec : Prop :=
  ∀ n, P10002834765932489824.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P13554930157221132700

`A022167(n)/A157640(n)*A176348(n)`
-/

namespace A176346.P13554930157221132700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022167 n : ℚ) / (A157640 n : ℚ) * (A176348 n : ℚ)

end

end A176346.P13554930157221132700

namespace A176346

/-- `A022167(n)/A157640(n)*A176348(n)` -/
def P13554930157221132700.Spec : Prop :=
  ∀ n, P13554930157221132700.a n = (A176346 n : ℚ)

end A176346

/-! ## A176346.P15890783289332578399

`A022168(n)/A157641(n)*A176348(n)`
-/

namespace A176346.P15890783289332578399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022168 n : ℚ) / (A157641 n : ℚ) * (A176348 n : ℚ)

end

end A176346.P15890783289332578399

namespace A176346

/-- `A022168(n)/A157641(n)*A176348(n)` -/
def P15890783289332578399.Spec : Prop :=
  ∀ n, P15890783289332578399.a n = (A176346 n : ℚ)

end A176346

/-!
# A176347: n-th semiprime minus sum of its prime factors.

The programs for A176347, the canonical program `A176347.P9883716587743327041` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176347 has offset 1).

The definition of A176347 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A068318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176347.P9883716587743327041

`A001358(n+1)-A068318(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A176347

/-- `A001358(n+1)-A068318(n+1)` -/
def P9883716587743327041.Spec : Prop :=
  ∀ n, P9883716587743327041.a n = A176347 (n + 1)

theorem P9883716587743327041.correct : P9883716587743327041.Spec := by
  intro n
  simp only [A176347, Nat.add_sub_cancel]

end A176347

/-! ## A176347.P15073671274188276668

`A003958(A001358(n+1))-1`
-/

namespace A176347.P15073671274188276668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A001358 (n + 1)).toNat - 1

end

end A176347.P15073671274188276668

namespace A176347

/-- `A003958(A001358(n+1))-1` -/
def P15073671274188276668.Spec : Prop :=
  ∀ n, P15073671274188276668.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P180329073130061781

`A003958(A075818(n+1))-1`
-/

namespace A176347.P180329073130061781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A075818 (n + 1)).toNat - 1

end

end A176347.P180329073130061781

namespace A176347

/-- `A003958(A075818(n+1))-1` -/
def P180329073130061781.Spec : Prop :=
  ∀ n, P180329073130061781.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P5305106887218443832

`A003958(sqrt(A074985(n+1)))-1`
-/

namespace A176347.P5305106887218443832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat - 1

end

end A176347.P5305106887218443832

namespace A176347

/-- `A003958(sqrt(A074985(n+1)))-1` -/
def P5305106887218443832.Spec : Prop :=
  ∀ n, P5305106887218443832.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P14172074371387108842

`sqrt(A074985(n+1))-A068318(n+1)`
-/

namespace A176347.P14172074371387108842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ) - (A068318 (n + 1) : ℝ)

end

end A176347.P14172074371387108842

namespace A176347

/-- `sqrt(A074985(n+1))-A068318(n+1)` -/
def P14172074371387108842.Spec : Prop :=
  ∀ n, P14172074371387108842.a n = (A176347 (n + 1) : ℝ)

end A176347

/-! ## A176347.P698049999976775344

`A003958(eq[2, A001222(n+1)]+1)-1`
-/

namespace A176347.P698049999976775344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A176347.P698049999976775344

namespace A176347

/-- `A003958(eq[2, A001222(n+1)]+1)-1` -/
def P698049999976775344.Spec : Prop :=
  ∀ n, P698049999976775344.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P13887015347076278100

`A088707(n+1)-(A068318(n+1)+1)`
-/

namespace A176347.P13887015347076278100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - (A068318 (n + 1) + 1)

end

end A176347.P13887015347076278100

namespace A176347

/-- `A088707(n+1)-(A068318(n+1)+1)` -/
def P13887015347076278100.Spec : Prop :=
  ∀ n, P13887015347076278100.a n = A176347 (n + 1)

theorem P13887015347076278100.correct : P13887015347076278100.Spec := by
  intro n
  simp only [A176347, Nat.add_sub_cancel, A176347.P13887015347076278100.a, A176347.P9883716587743327041.a, A001358, A001358.P632087320844056370.a, A068318, A068318.P11836828238925648689.a, A088707, A088707.P7291141647877559993.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176347

/-! ## A176347.P12763203648466560586

`A001358(n+1)-(A084127(n+1)+A084126(n+1))`
-/

namespace A176347.P12763203648466560586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (A084127 (n + 1) + A084126 (n + 1))

end

end A176347.P12763203648466560586

namespace A176347

/-- `A001358(n+1)-(A084127(n+1)+A084126(n+1))` -/
def P12763203648466560586.Spec : Prop :=
  ∀ n, P12763203648466560586.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P5954057570362045519

`A084126(n+1)*A084127(n+1)-A068318(n+1)`
-/

namespace A176347.P5954057570362045519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) * A084127 (n + 1) - A068318 (n + 1)

end

end A176347.P5954057570362045519

namespace A176347

/-- `A084126(n+1)*A084127(n+1)-A068318(n+1)` -/
def P5954057570362045519.Spec : Prop :=
  ∀ n, P5954057570362045519.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P5144420037708104876

`A145834(A176193(n+1))`
-/

namespace A176347.P5144420037708104876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145834 (A176193 (n + 1)).toNat

end

end A176347.P5144420037708104876

namespace A176347

/-- `A145834(A176193(n+1))` -/
def P5144420037708104876.Spec : Prop :=
  ∀ n, P5144420037708104876.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P16639291141916960986

`A075255(A001358(n+1))`
-/

namespace A176347.P16639291141916960986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A001358 (n + 1)).toNat

end

end A176347.P16639291141916960986

namespace A176347

/-- `A075255(A001358(n+1))` -/
def P16639291141916960986.Spec : Prop :=
  ∀ n, P16639291141916960986.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P7796218562919914953

`A075255(A176540(n+2))`
-/

namespace A176347.P7796218562919914953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A176540 (n + 2)).toNat

end

end A176347.P7796218562919914953

namespace A176347

/-- `A075255(A176540(n+2))` -/
def P7796218562919914953.Spec : Prop :=
  ∀ n, P7796218562919914953.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P14440095707238740128

`A075255(eq[2, A105700(n)])`
-/

namespace A176347.P14440095707238740128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176347.P14440095707238740128

namespace A176347

/-- `A075255(eq[2, A105700(n)])` -/
def P14440095707238740128.Spec : Prop :=
  ∀ n, P14440095707238740128.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P17564535103825853159

`A075255(eq[2, A226378(n)])`
-/

namespace A176347.P17564535103825853159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176347.P17564535103825853159

namespace A176347

/-- `A075255(eq[2, A226378(n)])` -/
def P17564535103825853159.Spec : Prop :=
  ∀ n, P17564535103825853159.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P11352543408372363104

`A075255(A075818(n+1)/2)`
-/

namespace A176347.P11352543408372363104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A176347.P11352543408372363104

namespace A176347

/-- `A075255(A075818(n+1)/2)` -/
def P11352543408372363104.Spec : Prop :=
  ∀ n, P11352543408372363104.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P5570820522708861989

`eq[2, A226378(n)]-A074320(A088707(n+1)-1)`
-/

namespace A176347.P5570820522708861989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A074320 (A088707 (n + 1) - 1).toNat

end

end A176347.P5570820522708861989

namespace A176347

/-- `eq[2, A226378(n)]-A074320(A088707(n+1)-1)` -/
def P5570820522708861989.Spec : Prop :=
  ∀ n, P5570820522708861989.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P10792324505426987016

`eq[2, A284289(n)]-A074320(A088707(n+1)-1)`
-/

namespace A176347.P10792324505426987016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A074320 (A088707 (n + 1) - 1).toNat

end

end A176347.P10792324505426987016

namespace A176347

/-- `eq[2, A284289(n)]-A074320(A088707(n+1)-1)` -/
def P10792324505426987016.Spec : Prop :=
  ∀ n, P10792324505426987016.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P14653416251471237800

`eq[2, A001222(n+1)]+1-A074320(A001358(n+1))`
-/

namespace A176347.P14653416251471237800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A074320 (A001358 (n + 1)).toNat

end

end A176347.P14653416251471237800

namespace A176347

/-- `eq[2, A001222(n+1)]+1-A074320(A001358(n+1))` -/
def P14653416251471237800.Spec : Prop :=
  ∀ n, P14653416251471237800.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P9726498690282948481

`eq[2, A001222(n+1)]+1-A074320(A088707(n+1)-1)`
-/

namespace A176347.P9726498690282948481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A074320 (A088707 (n + 1) - 1).toNat

end

end A176347.P9726498690282948481

namespace A176347

/-- `eq[2, A001222(n+1)]+1-A074320(A088707(n+1)-1)` -/
def P9726498690282948481.Spec : Prop :=
  ∀ n, P9726498690282948481.a n = A176347 (n + 1)

end A176347

/-! ## A176347.P13707510947375777340

`A207790(4*n+3)-A074320(eq[2, ∑{e}[n, #]])`
-/

namespace A176347.P13707510947375777340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (4 * n + 3) - A074320 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176347.P13707510947375777340

namespace A176347

/-- `A207790(4*n+3)-A074320(eq[2, ∑{e}[n, #]])` -/
def P13707510947375777340.Spec : Prop :=
  ∀ n, P13707510947375777340.a n = A176347 (n + 1)

end A176347

/-!
# A176348: Triangle, read by rows: T(n, k) = binomial(n, k)*(1 + 2*(n+1) - (k+1)*floor((n+1)/(k+1)) - (n-k+1)* floor((n+1)/(n-k+1))).

The programs for A176348, the canonical program `A176348.P5045138411392960695` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176348 has offset 0).

The definition of A176348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176348.P5045138411392960695

`A007318(n)*A176346(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176348

/-- `A007318(n)*A176346(n)` -/
def P5045138411392960695.Spec : Prop :=
  ∀ n, P5045138411392960695.a n = A176348 n

theorem P5045138411392960695.correct : P5045138411392960695.Spec := by
  intro n
  simp only [A176348]

end A176348

/-! ## A176348.P18207369959221876505

`sqrt(A008459(n))*A176346(n)`
-/

namespace A176348.P18207369959221876505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A176346 n : ℝ)

end

end A176348.P18207369959221876505

namespace A176348

/-- `sqrt(A008459(n))*A176346(n)` -/
def P18207369959221876505.Spec : Prop :=
  ∀ n, P18207369959221876505.a n = (A176348 n : ℝ)

end A176348

/-! ## A176348.P7321122121841204494

`Δ[A102363(n)]*A176346(n)`
-/

namespace A176348.P7321122121841204494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A176346 n

end

end A176348.P7321122121841204494

namespace A176348

/-- `Δ[A102363(n)]*A176346(n)` -/
def P7321122121841204494.Spec : Prop :=
  ∀ n, P7321122121841204494.a n = A176348 n

end A176348

/-! ## A176348.P5205181443278424922

`(A014473(n)+1)*A176346(n)`
-/

namespace A176348.P5205181443278424922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A176346 n

end

end A176348.P5205181443278424922

namespace A176348

/-- `(A014473(n)+1)*A176346(n)` -/
def P5205181443278424922.Spec : Prop :=
  ∀ n, P5205181443278424922.a n = A176348 n

theorem P5205181443278424922.correct : P5205181443278424922.Spec := by
  intro n
  simp only [A176348, Nat.add_sub_cancel, A176348.P5205181443278424922.a, A176348.P5045138411392960695.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A176346, A176346.P2858540763397008978.a, A048158, A048158.P1757030368331788429.a, A051777, A051777.P15797319284762546370.a, A123578, A123578.P15021592032537272378.a, A193592, A193592.P7249153181096996018.a, A002262, A002262.P17823619022233514403.a, A056943, A056943.P2657344456391598982.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A176348

/-! ## A176348.P9761549418179349702

`A028326(n)/2*A176346(n)`
-/

namespace A176348.P9761549418179349702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A176346 n : ℚ)

end

end A176348.P9761549418179349702

namespace A176348

/-- `A028326(n)/2*A176346(n)` -/
def P9761549418179349702.Spec : Prop :=
  ∀ n, P9761549418179349702.a n = (A176348 n : ℚ)

theorem P9761549418179349702.correct : P9761549418179349702.Spec := by
  intro n
  simp only [A176348, Nat.add_sub_cancel, A176348.P9761549418179349702.a, A176348.P5045138411392960695.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A176346, A176346.P2858540763397008978.a, A048158, A048158.P1757030368331788429.a, A051777, A051777.P15797319284762546370.a, A123578, A123578.P15021592032537272378.a, A193592, A193592.P7249153181096996018.a, A002262, A002262.P17823619022233514403.a, A056943, A056943.P2657344456391598982.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A176348

/-! ## A176348.P11330079804567154964

`ceil(A134059(n)/3)*A176346(n)`
-/

namespace A176348.P11330079804567154964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A176346 n

end

end A176348.P11330079804567154964

namespace A176348

/-- `ceil(A134059(n)/3)*A176346(n)` -/
def P11330079804567154964.Spec : Prop :=
  ∀ n, P11330079804567154964.a n = A176348 n

end A176348

/-! ## A176348.P17614884247587133513

`A071919(A007401(n+1))*A176346(n)`
-/

namespace A176348.P17614884247587133513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A007401 (n + 1)).toNat * A176346 n

end

end A176348.P17614884247587133513

namespace A176348

/-- `A071919(A007401(n+1))*A176346(n)` -/
def P17614884247587133513.Spec : Prop :=
  ∀ n, P17614884247587133513.a n = A176348 n

end A176348

/-! ## A176348.P3958122582040675064

`A134059(A028310(n))/3*A176346(n)`
-/

namespace A176348.P3958122582040675064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A176346 n : ℚ)

end

end A176348.P3958122582040675064

namespace A176348

/-- `A134059(A028310(n))/3*A176346(n)` -/
def P3958122582040675064.Spec : Prop :=
  ∀ n, P3958122582040675064.a n = (A176348 n : ℚ)

end A176348

/-! ## A176348.P2533611752532952353

`A176346(n)*A193554(lt[1, A193588(n)])`
-/

namespace A176348.P2533611752532952353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n * A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A176348.P2533611752532952353

namespace A176348

/-- `A176346(n)*A193554(lt[1, A193588(n)])` -/
def P2533611752532952353.Spec : Prop :=
  ∀ n, P2533611752532952353.a n = A176348 n

end A176348

/-! ## A176348.P2592250476185091138

`gcd(A124927(n), A124928(n))*A176346(n)`
-/

namespace A176348.P2592250476185091138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A124927 n) (A124928 n) : ℤ) * A176346 n

end

end A176348.P2592250476185091138

namespace A176348

/-- `gcd(A124927(n), A124928(n))*A176346(n)` -/
def P2592250476185091138.Spec : Prop :=
  ∀ n, P2592250476185091138.a n = A176348 n

end A176348

/-! ## A176348.P1627797519893126228

`A176346(n)*A193554(lt[1, A002260(n+1)])`
-/

namespace A176348.P1627797519893126228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n * A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A176348.P1627797519893126228

namespace A176348

/-- `A176346(n)*A193554(lt[1, A002260(n+1)])` -/
def P1627797519893126228.Spec : Prop :=
  ∀ n, P1627797519893126228.a n = A176348 n

end A176348

/-! ## A176348.P14409914806241288346

`C(A003056(n), A002260(n+1)-1)*A176346(n)`
-/

namespace A176348.P14409914806241288346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℤ) * A176346 n

end

end A176348.P14409914806241288346

namespace A176348

/-- `C(A003056(n), A002260(n+1)-1)*A176346(n)` -/
def P14409914806241288346.Spec : Prop :=
  ∀ n, P14409914806241288346.a n = A176348 n

end A176348

/-! ## A176348.P4928062737084340471

`C(A003056(n), A004736(n+1)-1)*A176346(n)`
-/

namespace A176348.P4928062737084340471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℤ) * A176346 n

end

end A176348.P4928062737084340471

namespace A176348

/-- `C(A003056(n), A004736(n+1)-1)*A176346(n)` -/
def P4928062737084340471.Spec : Prop :=
  ∀ n, P4928062737084340471.a n = A176348 n

end A176348

/-! ## A176348.P10926980811028868728

`ceil(A134060(n)/3)*A176346(n)`
-/

namespace A176348.P10926980811028868728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A176346 n

end

end A176348.P10926980811028868728

namespace A176348

/-- `ceil(A134060(n)/3)*A176346(n)` -/
def P10926980811028868728.Spec : Prop :=
  ∀ n, P10926980811028868728.a n = A176348 n

end A176348

/-! ## A176348.P1434671212523267783

`A014682(A028326(n))*A176346(n)`
-/

namespace A176348.P1434671212523267783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028326 n).toNat * A176346 n

end

end A176348.P1434671212523267783

namespace A176348

/-- `A014682(A028326(n))*A176346(n)` -/
def P1434671212523267783.Spec : Prop :=
  ∀ n, P1434671212523267783.a n = A176348 n

end A176348

/-! ## A176348.P11357811884736831360

`A008619(A109128(n))*A176346(n)`
-/

namespace A176348.P11357811884736831360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A109128 n).toNat * A176346 n

end

end A176348.P11357811884736831360

namespace A176348

/-- `A008619(A109128(n))*A176346(n)` -/
def P11357811884736831360.Spec : Prop :=
  ∀ n, P11357811884736831360.a n = A176348 n

end A176348

/-!
# A176349: 

The programs for A176349, there is no canonical definition to state claims against.
-/

/-! ## A176349.P6563519192488026048

`a(n-1)+30*a(n-1)²` with `a(0)=1`
-/

namespace A176349.P6563519192488026048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 30 * a (n - 1) ^ 2

end

end A176349.P6563519192488026048

/-! ## A176349.P10475928692642670063

`(30*a(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A176349.P10475928692642670063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (30 * a (n - 1) + 1) * a (n - 1)

end

end A176349.P10475928692642670063

/-! ## A176349.P8389171108409659940

`∏[A144780(n+1)]/6`
-/

namespace A176349.P8389171108409659940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144780 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A176349.P8389171108409659940

/-!
# A176350: First of three consecutive numbers with at least one 3 in their prime signature.

The programs for A176350, the canonical program `A176350.P3892865583747759499` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176350 has offset 1).

The definition of A176350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176350.P3892865583747759499

`∩[A176313(n+1)-1, A176313(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A176350

/-- `∩[A176313(n+1)-1, A176313(n+1)]` -/
def P3892865583747759499.Spec : Prop :=
  ∀ n, (P3892865583747759499.a n : ℤ) = A176350 (n + 1)

theorem P3892865583747759499.correct : P3892865583747759499.Spec := by
  intro n
  simp only [A176350, Nat.add_sub_cancel]

end A176350

/-!
# A176352: Order the positive rationals by numerator+denominator, then by numerator. a(n+1) = a(n)*r, where r is the first unused positive rational that makes a(n+1) an integer not already in the sequence.

The programs for A176352, there is no canonical definition to state claims against.
-/

/-! ## A176352.P16206081514722712944

`A218533(n+1)*A218535(n+1)`
-/

namespace A176352.P16206081514722712944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218533 (n + 1) * A218535 (n + 1)

end

end A176352.P16206081514722712944

/-! ## A176352.P7428967644622454917

`(A186336(n)+A001511(A320053(n)))*A218535(n+1)`
-/

namespace A176352.P7428967644622454917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186336 n + A001511 (A320053 n).toNat) * A218535 (n + 1)

end

end A176352.P7428967644622454917

/-! ## A176352.P3365553819921003839

`A001511(A205009(n+1)*A320053(n))*A218535(n+1)`
-/

namespace A176352.P3365553819921003839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A205009 (n + 1) * A320053 n).toNat * A218535 (n + 1)

end

end A176352.P3365553819921003839

/-! ## A176352.P5319317153911677803

`A218535(n+1)*A334297(A318721(n+1)+A305563(n+1))`
-/

namespace A176352.P5319317153911677803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218535 (n + 1) * A334297 (A318721 (n + 1) + A305563 (n + 1)).toNat

end

end A176352.P5319317153911677803

/-!
# A176353: A symmetrical triangle sequence based on Dirichlet's divisors:g(n)=n*Log[n] - n + Sqrt[n];t(n,m)=If[m == 0 || m == n, 1, 1 + Round[ -g(m) - g(n - m) + g(n)]].

The programs for A176353, there is no canonical definition to state claims against.
-/

/-! ## A176353.P9437700998661678535

`floor(log(A131113(n)+2))`
-/

namespace A176353.P9437700998661678535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A131113 n + 2 : ℝ)⌋

end

end A176353.P9437700998661678535

/-! ## A176353.P9278517351098061032

`floor(log(A135089(n)+2))`
-/

namespace A176353.P9278517351098061032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A135089 n + 2 : ℝ)⌋

end

end A176353.P9278517351098061032

/-! ## A176353.P10584185307943853205

`floor(log(A168620(n)+2))`
-/

namespace A176353.P10584185307943853205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A168620 n + 2 : ℝ)⌋

end

end A176353.P10584185307943853205

/-! ## A176353.P12391722226864955877

`round(log(A124928(n)+1))`
-/

namespace A176353.P12391722226864955877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A124928 n + 1 : ℝ))

end

end A176353.P12391722226864955877

/-! ## A176353.P14850261578755344951

`round(log(A131111(n)+1))`
-/

namespace A176353.P14850261578755344951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A131111 n + 1 : ℝ))

end

end A176353.P14850261578755344951

/-! ## A176353.P9142132800473570347

`round(log(A132047(n)+1))`
-/

namespace A176353.P9142132800473570347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A132047 n + 1 : ℝ))

end

end A176353.P9142132800473570347

/-! ## A176353.P17167524353950851333

`round(log(A134059(n)+1))`
-/

namespace A176353.P17167524353950851333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A134059 n + 1 : ℝ))

end

end A176353.P17167524353950851333

/-! ## A176353.P17513712929965916538

`round(log(A134060(n)+1))`
-/

namespace A176353.P17513712929965916538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A134060 n + 1 : ℝ))

end

end A176353.P17513712929965916538

/-! ## A176353.P4586971525154417045

`floor(log(A131063(n)+5))`
-/

namespace A176353.P4586971525154417045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A131063 n + 5 : ℝ)⌋

end

end A176353.P4586971525154417045

/-! ## A176353.P7084086350299720317

`floor(log(A007318(n))+ϕ)`
-/

namespace A176353.P7084086350299720317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A007318 n : ℝ) + Real.goldenRatio⌋

end

end A176353.P7084086350299720317

/-!
# A176354: The number of words of length n created with the letters a, b, c with at least as many a's as b's and at least as many b's as c's and no adjacent letters forming the pattern aba.

The programs for A176354, there is no canonical definition to state claims against.
-/

/-! ## A176354.P7970102581118704285

`A322832((3^n+1-∑[2^n])*A317709(n+1))`
-/

namespace A176354.P7970102581118704285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (((3 ^ n : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))) * A317709 (n + 1)).toNat

end

end A176354.P7970102581118704285

/-! ## A176354.P14394263885399505126

`A077468(A281270(n)+A086620(n))`
-/

namespace A176354.P14394263885399505126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (A281270 n + A086620 n).toNat

end

end A176354.P14394263885399505126

/-! ## A176354.P1986329996951919430

`A353379(A308444(n))+A000108(n)`
-/

namespace A176354.P1986329996951919430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (A308444 n).toNat + A000108 n

end

end A176354.P1986329996951919430

/-!
# A176355: Periodic sequence: Repeat 6, 1.

The programs for A176355, the canonical program `A176355.P13824746080914696014` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176355 has offset 0).

The definition of A176355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176355.P13824746080914696014

`a(n-2)` with `a(0)=6, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176355

/-- `a(n-2)` -/
def P13824746080914696014.Spec : Prop :=
  ∀ n, (P13824746080914696014.a n : ℤ) = A176355 n

theorem P13824746080914696014.correct : P13824746080914696014.Spec := by
  intro n
  simp only [A176355]

end A176355

/-!
# A176356: Numbers which when seen in a mirror are primes (or 1), using calculator-style 7-segment numerals.

The programs for A176356, there is no canonical definition to state claims against.
-/

/-! ## A176356.P8045908444788393998

`∩[A117741(n+1), A237525(n+1)]`
-/

namespace A176356.P8045908444788393998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176356.P8045908444788393998

/-! ## A176356.P5836283380817633537

`∩[A136817(n+1), A305504(n+1)]`
-/

namespace A176356.P5836283380817633537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176356.P5836283380817633537

/-! ## A176356.P16734723883779239836

`eq[A092196(n), A177702(A343880(n+1))]`
-/

namespace A176356.P16734723883779239836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (A343880 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176356.P16734723883779239836

/-! ## A176356.P13398617043219807789

`lt[A004159(n), A054055(A057147(3*n))]`
-/

namespace A176356.P13398617043219807789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A057147 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176356.P13398617043219807789

/-! ## A176356.P334416906701282149

`∩[A117741(n+1), A222234(A136817(n+1))]`
-/

namespace A176356.P334416906701282149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A136817 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176356.P334416906701282149

/-!
# A176357: Partial sums of A036403.

The programs for A176357, there is no canonical definition to state claims against.
-/

/-! ## A176357.P14396682570648280407

`∑[A036403(n+1)]`
-/

namespace A176357.P14396682570648280407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176357.P14396682570648280407

/-! ## A176357.P5271755431205970206

`A036403(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A176357.P5271755431205970206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036403 (n + 1) + a (A023443 n).toNat

end

end A176357.P5271755431205970206

/-! ## A176357.P13388060865379652016

`A036403(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A176357.P13388060865379652016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036403 (n + 1) + a (A028310 n - 1).toNat

end

end A176357.P13388060865379652016

/-!
# A176358: Partial sums of A002503.

The programs for A176358, there is no canonical definition to state claims against.
-/

/-! ## A176358.P4535094469713099939

`∑[A002503(n+1)]`
-/

namespace A176358.P4535094469713099939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176358.P4535094469713099939

/-! ## A176358.P7723904413211176128

`∑[A058008(n+2)-1]`
-/

namespace A176358.P7723904413211176128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176358.P7723904413211176128

/-! ## A176358.P16120394956541589812

`∑[A067348(n+2)/2-1]`
-/

namespace A176358.P16120394956541589812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067348 (n + 2) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176358.P16120394956541589812

/-! ## A176358.P11652339279980986338

`∑[A056067(2*(n+1))/2]`
-/

namespace A176358.P11652339279980986338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056067 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176358.P11652339279980986338

/-! ## A176358.P12751120123041532729

`∑[eq[A099894(n), A099905(n+1)]]`
-/

namespace A176358.P12751120123041532729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176358.P12751120123041532729

/-! ## A176358.P8862249733176850628

`∑[lt[A075054(n+1), n]]`
-/

namespace A176358.P8862249733176850628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176358.P8862249733176850628

/-! ## A176358.P16853016911037493884

`∑[A046667(A067348(n+2))]`
-/

namespace A176358.P16853016911037493884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A067348 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176358.P16853016911037493884

/-!
# A176360: a(n) = quadrant of unit circle corresponding to n radians.

The programs for A176360, the canonical program `A176360.P7823443138610727659` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176360 has offset 0).

The definition of A176360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176360.P7823443138610727659

`1+floor(2*n/π)%4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176360

/-- `1+floor(2*n/π)%4` -/
def P7823443138610727659.Spec : Prop :=
  ∀ n, P7823443138610727659.a n = A176360 n

theorem P7823443138610727659.correct : P7823443138610727659.Spec := by
  intro n
  simp only [A176360]

end A176360

/-!
# A176361: G.f.: exp( Sum_{n>=1} sigma(n*2^(n-1))*x^n/n ).

The programs for A176361, there is no canonical definition to state claims against.
-/

/-! ## A176361.P11260238358463725245

`A282168(A333653(n))`
-/

namespace A176361.P11260238358463725245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282168 (A333653 n).toNat

end

end A176361.P11260238358463725245

/-! ## A176361.P11578118265903800394

`A085281(n)-A007814(A093345(n))`
-/

namespace A176361.P11578118265903800394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n - A007814 (A093345 n).toNat

end

end A176361.P11578118265903800394

/-! ## A176361.P18174435473170600441

`or(A214075(n), A277193(A002387(n)))`
-/

namespace A176361.P18174435473170600441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A214075 n) (A277193 (A002387 n).toNat)

end

end A176361.P18174435473170600441

/-!
# A176362: a(n) = sigma(n*2^(n-1)).

The programs for A176362, the canonical program `A176362.P4302640313481750283` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176362 has offset 1).

The definition of A176362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((n+1)*2^n)` (program `A176362.P4302640313481750283`, by `A176362.P4302640313481750283.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176362.P4302640313481750283

`A000203((n+1)*2^n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176362

/-- `A000203((n+1)*2^n)` -/
def P4302640313481750283.Spec : Prop :=
  ∀ n, P4302640313481750283.a n = A176362 (n + 1)

theorem P4302640313481750283.correct : P4302640313481750283.Spec := by
  intro n
  simp only [A176362, Nat.add_sub_cancel]

end A176362

/-! ## A176362.P15692701608350716480

`∑{d}[n+1, #]+(2^n-1)*∑{d}[n+1, lcm(2, #)]`
-/

namespace A176362.P15692701608350716480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + ((2 ^ n : ℤ) - 1) * ((∑ d ∈ Nat.divisors (f2 n), Nat.lcm 2 d : ℕ) : ℤ)

end

end A176362.P15692701608350716480

namespace A176362

/-- `∑{d}[n+1, #]+(2^n-1)*∑{d}[n+1, lcm(2, #)]` -/
def P15692701608350716480.Spec : Prop :=
  ∀ n, P15692701608350716480.a n = A176362 (n + 1)

end A176362

/-! ## A176362.P5055721992506525414

`2^n*A002131(2*(n+1))-A000593(n+1)`
-/

namespace A176362.P5055721992506525414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002131 (2 * (n + 1)) - A000593 (n + 1)

end

end A176362.P5055721992506525414

namespace A176362

/-- `2^n*A002131(2*(n+1))-A000593(n+1)` -/
def P5055721992506525414.Spec : Prop :=
  ∀ n, P5055721992506525414.a n = A176362 (n + 1)

end A176362

/-! ## A176362.P2197196595705169715

`A000225(A001511(n+1)+n)*A000593(n+1)`
-/

namespace A176362.P2197196595705169715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A001511 (n + 1) + (n : ℤ)).toNat * A000593 (n + 1)

end

end A176362.P2197196595705169715

namespace A176362

/-- `A000225(A001511(n+1)+n)*A000593(n+1)` -/
def P2197196595705169715.Spec : Prop :=
  ∀ n, P2197196595705169715.a n = A176362 (n + 1)

end A176362

/-! ## A176362.P16971246976482532938

`A000203(n+1)+A000225(n)*A054785(n+1)`
-/

namespace A176362.P16971246976482532938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000225 n * A054785 (n + 1)

end

end A176362.P16971246976482532938

namespace A176362

/-- `A000203(n+1)+A000225(n)*A054785(n+1)` -/
def P16971246976482532938.Spec : Prop :=
  ∀ n, P16971246976482532938.a n = A176362 (n + 1)

end A176362

/-! ## A176362.P2714713222918982341

`(A176311(n+1)-A000593(n+1))/2`
-/

namespace A176362.P2714713222918982341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176311 (n + 1) - A000593 (n + 1) : ℚ) / 2

end

end A176362.P2714713222918982341

namespace A176362

/-- `(A176311(n+1)-A000593(n+1))/2` -/
def P2714713222918982341.Spec : Prop :=
  ∀ n, P2714713222918982341.a n = (A176362 (n + 1) : ℚ)

end A176362

/-!
# A176363: Non-semiprime numbers of order 2.

The programs for A176363, the canonical program `A176363.P9230070974181017387` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176363 has offset 1).

The definition of A176363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176363.P9230070974181017387

`A100959(A100959(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A176363

/-- `A100959(A100959(n+1))` -/
def P9230070974181017387.Spec : Prop :=
  ∀ n, P9230070974181017387.a n = A176363 (n + 1)

theorem P9230070974181017387.correct : P9230070974181017387.Spec := by
  intro n
  simp only [A176363, Nat.add_sub_cancel]

end A176363

/-! ## A176363.P12442400753313650848

`record[A100959(A100959(A133310(n)))]`
-/

namespace A176363.P12442400753313650848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176363.P12442400753313650848

namespace A176363

/-- `record[A100959(A100959(A133310(n)))]` -/
def P12442400753313650848.Spec : Prop :=
  ∀ n, P12442400753313650848.a n = A176363 (n + 1)

end A176363

/-! ## A176363.P6454871028706599112

`record[A100959(A100959(A126759(n)))]`
-/

namespace A176363.P6454871028706599112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176363.P6454871028706599112

namespace A176363

/-- `record[A100959(A100959(A126759(n)))]` -/
def P6454871028706599112.Spec : Prop :=
  ∀ n, P6454871028706599112.a n = A176363 (n + 1)

end A176363

/-! ## A176363.P12885018697283365038

`record[A100959(A100959(A154958(n)))]`
-/

namespace A176363.P12885018697283365038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176363.P12885018697283365038

namespace A176363

/-- `record[A100959(A100959(A154958(n)))]` -/
def P12885018697283365038.Spec : Prop :=
  ∀ n, P12885018697283365038.a n = A176363 (n + 1)

end A176363

/-! ## A176363.P14465205138260185769

`record[A100959(A100959(A262519(n)))]`
-/

namespace A176363.P14465205138260185769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (A262519 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176363.P14465205138260185769

namespace A176363

/-- `record[A100959(A100959(A262519(n)))]` -/
def P14465205138260185769.Spec : Prop :=
  ∀ n, P14465205138260185769.a n = A176363 (n + 1)

end A176363

/-! ## A176363.P6619668750693135328

`record[A100959(A100959(A065648(n)))]`
-/

namespace A176363.P6619668750693135328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176363.P6619668750693135328

namespace A176363

/-- `record[A100959(A100959(A065648(n)))]` -/
def P6619668750693135328.Spec : Prop :=
  ∀ n, P6619668750693135328.a n = A176363 (n + 1)

end A176363

/-! ## A176363.P17812332420894487110

`record[A100959(A100959(A263274(n)))]`
-/

namespace A176363.P17812332420894487110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (A263274 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176363.P17812332420894487110

namespace A176363

/-- `record[A100959(A100959(A263274(n)))]` -/
def P17812332420894487110.Spec : Prop :=
  ∀ n, P17812332420894487110.a n = A176363 (n + 1)

end A176363

/-! ## A176363.P17303463362680137561

`record[A100959(A100959(A134478(n)))]`
-/

namespace A176363.P17303463362680137561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176363.P17303463362680137561

namespace A176363

/-- `record[A100959(A100959(A134478(n)))]` -/
def P17303463362680137561.Spec : Prop :=
  ∀ n, P17303463362680137561.a n = A176363 (n + 1)

end A176363

/-! ## A176363.P2793299459158325405

`record[A100959(A100959(A020986(n)))]`
-/

namespace A176363.P2793299459158325405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176363.P2793299459158325405

namespace A176363

/-- `record[A100959(A100959(A020986(n)))]` -/
def P2793299459158325405.Spec : Prop :=
  ∀ n, P2793299459158325405.a n = A176363 (n + 1)

end A176363

/-! ## A176363.P18172306376054806343

`record[A100959(A100959(A193739(n)))]`
-/

namespace A176363.P18172306376054806343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (A193739 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176363.P18172306376054806343

namespace A176363

/-- `record[A100959(A100959(A193739(n)))]` -/
def P18172306376054806343.Spec : Prop :=
  ∀ n, P18172306376054806343.a n = A176363 (n + 1)

end A176363

/-!
# A176365: Numerator of (1/Pi)*Integral_{0..infinity} (sin x / x)^(2*n) dx.

The programs for A176365, there is no canonical definition to state claims against.
-/

/-! ## A176365.P2963977932049053074

`A049330(2*(n+1))`
-/

namespace A176365.P2963977932049053074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049330 (2 * (n + 1))

end

end A176365.P2963977932049053074

/-! ## A176365.P7216474166563066764

`A002297(2*(n+1))-char[1]`
-/

namespace A176365.P7216474166563066764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002297 (2 * (n + 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A176365.P7216474166563066764

/-! ## A176365.P14432737386546106236

`or(1, A049330(A103517(n)))`
-/

namespace A176365.P14432737386546106236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049330 (A103517 n).toNat)

end

end A176365.P14432737386546106236

/-!
# A176366: Denominator of (1/Pi)*Integral_{0..infinity} (sin x / x)^(2*n) dx.

The programs for A176366, there is no canonical definition to state claims against.
-/

/-! ## A176366.P16939616748902525068

`A049331(2*(n+1))`
-/

namespace A176366.P16939616748902525068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049331 (2 * (n + 1))

end

end A176366.P16939616748902525068

/-! ## A176366.P17118842732563160483

`record[A049331(A133265(n))]`
-/

namespace A176366.P17118842732563160483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049331 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176366.P17118842732563160483

/-! ## A176366.P10220288173925194149

`record[A049331(A097362(n+1))]`
-/

namespace A176366.P10220288173925194149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049331 (A097362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176366.P10220288173925194149

/-! ## A176366.P6948019960723196697

`record[gcd(A049331(n+1), A142150(n))]`
-/

namespace A176366.P6948019960723196697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049331 (n + 1)) (A142150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176366.P6948019960723196697

/-! ## A176366.P15608431901116549439

`record[lcm(A049331(n+1), A097331(n))]`
-/

namespace A176366.P15608431901116549439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049331 (n + 1)) (A097331 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176366.P15608431901116549439

/-!
# A176367: y-values in the solution to x^2 - 62*y^2 = 1.

The programs for A176367, the canonical program `A176367.P1859447053780636560` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176367 has offset 1).

The definition of A176367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176367.P1859447053780636560

`126*a(n-1)-a(n-2)` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176367

/-- `126*a(n-1)-a(n-2)` -/
def P1859447053780636560.Spec : Prop :=
  ∀ n, P1859447053780636560.a n = A176367 (n + 1)

theorem P1859447053780636560.correct : P1859447053780636560.Spec := by
  intro n
  simp only [A176367, Nat.add_sub_cancel]

end A176367

/-! ## A176367.P3527176560757383718

`record[A000035(n)*A041109(2*n+1)]`
-/

namespace A176367.P3527176560757383718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041109 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176367.P3527176560757383718

namespace A176367

/-- `record[A000035(n)*A041109(2*n+1)]` -/
def P3527176560757383718.Spec : Prop :=
  ∀ n, P3527176560757383718.a n = A176367 (n + 1)

end A176367

/-! ## A176367.P6201340923159452993

`record[lcm(A041109(2*n+1), A046978(2*n))]`
-/

namespace A176367.P6201340923159452993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041109 (2 * n + 1)) (A046978 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176367.P6201340923159452993

namespace A176367

/-- `record[lcm(A041109(2*n+1), A046978(2*n))]` -/
def P6201340923159452993.Spec : Prop :=
  ∀ n, (P6201340923159452993.a n : ℤ) = A176367 (n + 1)

end A176367

/-!
# A176368: x-values in the solution to x^2 - 65*y^2 = 1.

The programs for A176368, the canonical program `A176368.P10093335913208783518` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176368 has offset 1).

The definition of A176368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176368.P10093335913208783518

`258*a(n-1)-a(n-2)` with `a(0)=1, a(1)=129`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176368

/-- `258*a(n-1)-a(n-2)` -/
def P10093335913208783518.Spec : Prop :=
  ∀ n, P10093335913208783518.a n = A176368 (n + 1)

theorem P10093335913208783518.correct : P10093335913208783518.Spec := by
  intro n
  simp only [A176368, Nat.add_sub_cancel]

end A176368

/-! ## A176368.P1759260468087848015

`A090305(2*n)/2`
-/

namespace A176368.P1759260468087848015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090305 (2 * n) : ℚ) / 2

end

end A176368.P1759260468087848015

namespace A176368

/-- `A090305(2*n)/2` -/
def P1759260468087848015.Spec : Prop :=
  ∀ n, P1759260468087848015.a n = (A176368 (n + 1) : ℚ)

end A176368

/-! ## A176368.P8707228158358360329

`record[A041486(n)^(n%2)]`
-/

namespace A176368.P8707228158358360329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041486 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176368.P8707228158358360329

namespace A176368

/-- `record[A041486(n)^(n%2)]` -/
def P8707228158358360329.Spec : Prop :=
  ∀ n, P8707228158358360329.a n = A176368 (n + 1)

end A176368

/-! ## A176368.P15749830610352138814

`record[gcd(A035457(n), A041112(n))]`
-/

namespace A176368.P15749830610352138814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035457 n) (A041112 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176368.P15749830610352138814

namespace A176368

/-- `record[gcd(A035457(n), A041112(n))]` -/
def P15749830610352138814.Spec : Prop :=
  ∀ n, (P15749830610352138814.a n : ℤ) = A176368 (n + 1)

end A176368

/-! ## A176368.P9728651852857548490

`record[A000034(n)^log2(A041112(n))]`
-/

namespace A176368.P9728651852857548490
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℝ) ^ (Real.logb 2 (A041112 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176368.P9728651852857548490

namespace A176368

/-- `record[A000034(n)^log2(A041112(n))]` -/
def P9728651852857548490.Spec : Prop :=
  ∀ n, P9728651852857548490.a n = (A176368 (n + 1) : ℝ)

end A176368

/-!
# A176369: y-values in the solution to x^2 - 65*y^2 = 1.

The programs for A176369, the canonical program `A176369.P7798084978728321795` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176369 has offset 1).

The definition of A176369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176369.P7798084978728321795

`258*a(n-1)-a(n-2)` with `a(0)=0, a(1)=16`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176369

/-- `258*a(n-1)-a(n-2)` -/
def P7798084978728321795.Spec : Prop :=
  ∀ n, P7798084978728321795.a n = A176369 (n + 1)

theorem P7798084978728321795.correct : P7798084978728321795.Spec := by
  intro n
  simp only [A176369, Nat.add_sub_cancel]

end A176369

/-! ## A176369.P2862986822982429697

`record[A000035(n)*A041113(n)]`
-/

namespace A176369.P2862986822982429697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176369.P2862986822982429697

namespace A176369

/-- `record[A000035(n)*A041113(n)]` -/
def P2862986822982429697.Spec : Prop :=
  ∀ n, P2862986822982429697.a n = A176369 (n + 1)

end A176369

/-! ## A176369.P15037355235282935800

`record[A010673(n)*A041487(n)]`
-/

namespace A176369.P15037355235282935800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A041487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176369.P15037355235282935800

namespace A176369

/-- `record[A010673(n)*A041487(n)]` -/
def P15037355235282935800.Spec : Prop :=
  ∀ n, P15037355235282935800.a n = A176369 (n + 1)

end A176369

/-! ## A176369.P9687916280821762441

`8*(A097735(n)-A097736(n))`
-/

namespace A176369.P9687916280821762441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A097735 n - A097736 n)

end

end A176369.P9687916280821762441

namespace A176369

/-- `8*(A097735(n)-A097736(n))` -/
def P9687916280821762441.Spec : Prop :=
  ∀ n, P9687916280821762441.a n = A176369 (n + 1)

end A176369

/-! ## A176369.P1122528766079797919

`16*(A097734(n)-A097736(n))`
-/

namespace A176369.P1122528766079797919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A097734 n - A097736 n)

end

end A176369.P1122528766079797919

namespace A176369

/-- `16*(A097734(n)-A097736(n))` -/
def P1122528766079797919.Spec : Prop :=
  ∀ n, P1122528766079797919.a n = A176369 (n + 1)

end A176369

/-!
# A176370: x-values in the solution to x^2 - 66*y^2 = 1.

The programs for A176370, the canonical program `A176370.P11809913872438903067` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176370 has offset 1).

The definition of A176370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176370.P11809913872438903067

`130*a(n-1)-a(n-2)` with `a(0)=1, a(1)=65`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176370

/-- `130*a(n-1)-a(n-2)` -/
def P11809913872438903067.Spec : Prop :=
  ∀ n, P11809913872438903067.a n = A176370 (n + 1)

theorem P11809913872438903067.correct : P11809913872438903067.Spec := by
  intro n
  simp only [A176370, Nat.add_sub_cancel]

end A176370

/-! ## A176370.P11568622228957292363

`record[A041114(n)^A062157(n)]`
-/

namespace A176370.P11568622228957292363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041114 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176370.P11568622228957292363

namespace A176370

/-- `record[A041114(n)^A062157(n)]` -/
def P11568622228957292363.Spec : Prop :=
  ∀ n, P11568622228957292363.a n = (A176370 (n + 1) : ℚ)

end A176370

/-! ## A176370.P10356893993015423620

`record[A041494(n)^A062157(n)]`
-/

namespace A176370.P10356893993015423620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041494 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176370.P10356893993015423620

namespace A176370

/-- `record[A041494(n)^A062157(n)]` -/
def P10356893993015423620.Spec : Prop :=
  ∀ n, P10356893993015423620.a n = (A176370 (n + 1) : ℚ)

end A176370

/-! ## A176370.P9667915415599386439

`record[gcd(A035457(n), A041114(n))]`
-/

namespace A176370.P9667915415599386439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035457 n) (A041114 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176370.P9667915415599386439

namespace A176370

/-- `record[gcd(A035457(n), A041114(n))]` -/
def P9667915415599386439.Spec : Prop :=
  ∀ n, (P9667915415599386439.a n : ℤ) = A176370 (n + 1)

end A176370

/-! ## A176370.P3865863224298111783

`record[gcd(A035363(n), A041494(n))]`
-/

namespace A176370.P3865863224298111783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A041494 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176370.P3865863224298111783

namespace A176370

/-- `record[gcd(A035363(n), A041494(n))]` -/
def P3865863224298111783.Spec : Prop :=
  ∀ n, (P3865863224298111783.a n : ℤ) = A176370 (n + 1)

end A176370

/-!
# A176371: Primes p such that reversal(p) - 13 is a square.

The programs for A176371, there is no canonical definition to state claims against.
-/

/-! ## A176371.P7268229420190031249

`A141818(A025562(n+2))`
-/

namespace A176371.P7268229420190031249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141818 (A025562 (n + 2)).toNat

end

end A176371.P7268229420190031249

/-!
# A176372: y-values in the solution to x^2 - 66*y^2 = 1.

The programs for A176372, the canonical program `A176372.P11772540826947494193` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176372 has offset 1).

The definition of A176372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176372.P11772540826947494193

`130*a(n-1)-a(n-2)` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176372

/-- `130*a(n-1)-a(n-2)` -/
def P11772540826947494193.Spec : Prop :=
  ∀ n, P11772540826947494193.a n = A176372 (n + 1)

theorem P11772540826947494193.correct : P11772540826947494193.Spec := by
  intro n
  simp only [A176372, Nat.add_sub_cancel]

end A176372

/-! ## A176372.P1393717638961847194

`record[A000035(n)*A041115(n)]`
-/

namespace A176372.P1393717638961847194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A041115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176372.P1393717638961847194

namespace A176372

/-- `record[A000035(n)*A041115(n)]` -/
def P1393717638961847194.Spec : Prop :=
  ∀ n, P1393717638961847194.a n = A176372 (n + 1)

end A176372

/-! ## A176372.P1338912689956606631

`A041115(A004273(n))-A000007(n)`
-/

namespace A176372.P1338912689956606631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041115 (A004273 n).toNat - A000007 n

end

end A176372.P1338912689956606631

namespace A176372

/-- `A041115(A004273(n))-A000007(n)` -/
def P1338912689956606631.Spec : Prop :=
  ∀ n, P1338912689956606631.a n = A176372 (n + 1)

end A176372

/-! ## A176372.P6424609920779984114

`A041114(2*n)-A041115(2*n+1)`
-/

namespace A176372.P6424609920779984114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041114 (2 * n) - A041115 (2 * n + 1)

end

end A176372.P6424609920779984114

namespace A176372

/-- `A041114(2*n)-A041115(2*n+1)` -/
def P6424609920779984114.Spec : Prop :=
  ∀ n, P6424609920779984114.a n = A176372 (n + 1)

end A176372

/-! ## A176372.P3557056119274180971

`A041114(2*n)-2*A041495(2*n+1)`
-/

namespace A176372.P3557056119274180971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041114 (2 * n) - 2 * A041495 (2 * n + 1)

end

end A176372.P3557056119274180971

namespace A176372

/-- `A041114(2*n)-2*A041495(2*n+1)` -/
def P3557056119274180971.Spec : Prop :=
  ∀ n, P3557056119274180971.a n = A176372 (n + 1)

end A176372

/-!
# A176375: 

The programs for A176375, there is no canonical definition to state claims against.
-/

/-! ## A176375.P1228265216806272640

`A090733(3*n)/2`
-/

namespace A176375.P1228265216806272640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090733 (3 * n) : ℚ) / 2

end

end A176375.P1228265216806272640

/-!
# A176377: x-values in the solution to x^2-70*y^2=1.

The programs for A176377, the canonical program `A176377.P11921265836963023110` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176377 has offset 1).

The definition of A176377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176377.P11921265836963023110

`502*a(n-1)-a(n-2)` with `a(0)=1, a(1)=251`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176377

/-- `502*a(n-1)-a(n-2)` -/
def P11921265836963023110.Spec : Prop :=
  ∀ n, P11921265836963023110.a n = A176377 (n + 1)

theorem P11921265836963023110.correct : P11921265836963023110.Spec := by
  intro n
  simp only [A176377, Nat.add_sub_cancel]

end A176377

/-! ## A176377.P9527486760214089284

`record[A042208(n)^A062157(n)]`
-/

namespace A176377.P9527486760214089284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042208 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176377.P9527486760214089284

namespace A176377

/-- `record[A042208(n)^A062157(n)]` -/
def P9527486760214089284.Spec : Prop :=
  ∀ n, P9527486760214089284.a n = (A176377 (n + 1) : ℚ)

end A176377

/-! ## A176377.P14043202785524111662

`record[A042208(n)^A088705(n)]`
-/

namespace A176377.P14043202785524111662
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042208 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176377.P14043202785524111662

namespace A176377

/-- `record[A042208(n)^A088705(n)]` -/
def P14043202785524111662.Spec : Prop :=
  ∀ n, P14043202785524111662.a n = (A176377 (n + 1) : ℚ)

end A176377

/-! ## A176377.P1307343768004161162

`record[gcd(A000748(n), A041122(n))]`
-/

namespace A176377.P1307343768004161162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000748 n) (A041122 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176377.P1307343768004161162

namespace A176377

/-- `record[gcd(A000748(n), A041122(n))]` -/
def P1307343768004161162.Spec : Prop :=
  ∀ n, (P1307343768004161162.a n : ℤ) = A176377 (n + 1)

end A176377

/-! ## A176377.P6465551860561772345

`record[gcd(A042208(n), A126120(n))]`
-/

namespace A176377.P6465551860561772345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A042208 n) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176377.P6465551860561772345

namespace A176377

/-- `record[gcd(A042208(n), A126120(n))]` -/
def P6465551860561772345.Spec : Prop :=
  ∀ n, (P6465551860561772345.a n : ℤ) = A176377 (n + 1)

end A176377

/-!
# A176378: y-values in the solution to x^2-70*y^2=1.

The programs for A176378, the canonical program `A176378.P4674833342951030564` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176378 has offset 1).

The definition of A176378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176378.P4674833342951030564

`502*a(n-1)-a(n-2)` with `a(0)=0, a(1)=30`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176378

/-- `502*a(n-1)-a(n-2)` -/
def P4674833342951030564.Spec : Prop :=
  ∀ n, P4674833342951030564.a n = A176378 (n + 1)

theorem P4674833342951030564.correct : P4674833342951030564.Spec := by
  intro n
  simp only [A176378, Nat.add_sub_cancel]

end A176378

/-! ## A176378.P10204251376429747022

`record[and(A041123(n), A134667(n))]`
-/

namespace A176378.P10204251376429747022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041123 n) (A134667 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176378.P10204251376429747022

namespace A176378

/-- `record[and(A041123(n), A134667(n))]` -/
def P10204251376429747022.Spec : Prop :=
  ∀ n, P10204251376429747022.a n = A176378 (n + 1)

end A176378

/-! ## A176378.P6533737629765655948

`record[(5-A040024(n))*A042209(n)]`
-/

namespace A176378.P6533737629765655948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - A040024 n) * A042209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176378.P6533737629765655948

namespace A176378

/-- `record[(5-A040024(n))*A042209(n)]` -/
def P6533737629765655948.Spec : Prop :=
  ∀ n, P6533737629765655948.a n = A176378 (n + 1)

end A176378

/-! ## A176378.P2267332503451974341

`A041123(6*n+5)%A042209(2*n)`
-/

namespace A176378.P2267332503451974341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041123 (6 * n + 5)) (A042209 (2 * n))

end

end A176378.P2267332503451974341

namespace A176378

/-- `A041123(6*n+5)%A042209(2*n)` -/
def P2267332503451974341.Spec : Prop :=
  ∀ n, P2267332503451974341.a n = A176378 (n + 1)

end A176378

/-! ## A176378.P6988517042145575601

`record[A041123(n)-A000748(n)²]`
-/

namespace A176378.P6988517042145575601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041123 n - A000748 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176378.P6988517042145575601

namespace A176378

/-- `record[A041123(n)-A000748(n)²]` -/
def P6988517042145575601.Spec : Prop :=
  ∀ n, P6988517042145575601.a n = A176378 (n + 1)

end A176378

/-!
# A176383: Triangle of the powers of the prime factorization of n! in row n.

The programs for A176383, there is no canonical definition to state claims against.
-/

/-! ## A176383.P10246072035652845594

`p?[A002260(n+1)]^A115627(n+2)`
-/

namespace A176383.P10246072035652845594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A115627 (n + 2) : ℤ)

end

end A176383.P10246072035652845594

/-! ## A176383.P11443014945475635282

`p?[A131818(n+1)]^A115627(n+2)`
-/

namespace A176383.P11443014945475635282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A115627 (n + 2) : ℤ)

end

end A176383.P11443014945475635282

/-! ## A176383.P5010067846409231393

`p?[A002262(n)]^A115627(n+2)`
-/

namespace A176383.P5010067846409231393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A115627 (n + 2) : ℤ)

end

end A176383.P5010067846409231393

/-! ## A176383.P2426603758805781414

`p?[A196199(n)]^A115627(n+2)`
-/

namespace A176383.P2426603758805781414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A115627 (n + 2) : ℤ)

end

end A176383.P2426603758805781414

/-!
# A176388: A symmetrical triangle:t(n,m)=Floor[(n!/Floor[n/2]!^2)*(Exp[ -(m - n/2)^2/( 2*((n + 1)/4)^2)] - Exp[ -(n/2)^2/(2*((n + 1)/4)^2)]) + 1].

The programs for A176388, there is no canonical definition to state claims against.
-/

/-! ## A176388.P17890004481490024396

`A191860(A034801(n))`
-/

namespace A176388.P17890004481490024396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191860 (A034801 n).toNat

end

end A176388.P17890004481490024396

/-! ## A176388.P1154385195135057801

`A105255(A363849(n))`
-/

namespace A176388.P1154385195135057801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105255 (A363849 n).toNat

end

end A176388.P1154385195135057801

/-! ## A176388.P8414955227246414473

`A292375(A046802(n)²)`
-/

namespace A176388.P8414955227246414473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A046802 n ^ 2).toNat

end

end A176388.P8414955227246414473

/-! ## A176388.P10666365192666923900

`A173964(A333157(n)²)`
-/

namespace A176388.P10666365192666923900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173964 (A333157 n ^ 2).toNat

end

end A176388.P10666365192666923900

/-! ## A176388.P15437663383895982151

`A111944(A168289(n)+1)`
-/

namespace A176388.P15437663383895982151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111944 (A168289 n + 1).toNat

end

end A176388.P15437663383895982151

/-!
# A176390: A symmetrical triangle:t(n,m)=1 - (1 + n)^(n + 1)* (1 - 1/(n + 1))^(n + 1) + (n + 1)^(n + 2)*Binomial[n, m]((m + 1)/(n + 1))^(m + 1)*(1 - ( m + 1)/(n + 1))^(n - m + 1).

The programs for A176390, there is no canonical definition to state claims against.
-/

/-! ## A176390.P7219591367210030481

`A008618(17^A276777(n))`
-/

namespace A176390.P7219591367210030481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (SequenceMachineLib.roundAway ((17 : ℚ) ^ (A276777 n : ℤ))).toNat

end

end A176390.P7219591367210030481

/-! ## A176390.P14508302069979986402

`abs(A015141(A004914(n+1)))`
-/

namespace A176390.P14508302069979986402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015141 (A004914 (n + 1)).toNat|

end

end A176390.P14508302069979986402

/-! ## A176390.P8213718444044812008

`abs(A015141(n)%A057629(n+1))`
-/

namespace A176390.P8213718444044812008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A015141 n) (A057629 (n + 1))|

end

end A176390.P8213718444044812008

/-! ## A176390.P15049962120948210559

`A056594(A018044(n))+A022180(n)`
-/

namespace A176390.P15049962120948210559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A018044 n).toNat + A022180 n

end

end A176390.P15049962120948210559

/-! ## A176390.P18095057807879234166

`A022180(n)-A132440(A014341(n))`
-/

namespace A176390.P18095057807879234166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022180 n - A132440 (A014341 n).toNat

end

end A176390.P18095057807879234166

/-!
# A176392: Triangle read by rows: T(n,k) = 2 - (1 + k)^k + (1 + n)^n - (1 - k + n)^(n - k).

The programs for A176392, the canonical program `A176392.P6550247168679925567` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176392 has offset 0).

The definition of A176392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176392.P6550247168679925567

`2-(1+col(n))^col(n)+(1+row(n))^row(n)-(1-col(n)+row(n))^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176392

/-- `2-(1+col(n))^col(n)+(1+row(n))^row(n)-(1-col(n)+row(n))^(row(n)-col(n))` -/
def P6550247168679925567.Spec : Prop :=
  ∀ n, P6550247168679925567.a n = (A176392 n : ℚ)

end A176392

/-! ## A176392.P17009239316147762927

`A112509(A022167(n))`
-/

namespace A176392.P17009239316147762927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (A022167 n).toNat

end

end A176392.P17009239316147762927

namespace A176392

/-- `A112509(A022167(n))` -/
def P17009239316147762927.Spec : Prop :=
  ∀ n, P17009239316147762927.a n = A176392 n

end A176392

/-! ## A176392.P770126517142977119

`A112509(A147565(n))`
-/

namespace A176392.P770126517142977119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (A147565 n).toNat

end

end A176392.P770126517142977119

namespace A176392

/-- `A112509(A147565(n))` -/
def P770126517142977119.Spec : Prop :=
  ∀ n, P770126517142977119.a n = A176392 n

end A176392

/-! ## A176392.P17537889742676258356

`A112509(A157153(n))`
-/

namespace A176392.P17537889742676258356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (A157153 n).toNat

end

end A176392.P17537889742676258356

namespace A176392

/-- `A112509(A157153(n))` -/
def P17537889742676258356.Spec : Prop :=
  ∀ n, P17537889742676258356.a n = A176392 n

end A176392

/-! ## A176392.P511779306865743305

`A112509(A212801(n+1))`
-/

namespace A176392.P511779306865743305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (A212801 (n + 1)).toNat

end

end A176392.P511779306865743305

namespace A176392

/-- `A112509(A212801(n+1))` -/
def P511779306865743305.Spec : Prop :=
  ∀ n, P511779306865743305.a n = A176392 n

end A176392

/-!
# A176393: a(n) = A176100(n) + 1 = 2*A141468(n) + 1.

The programs for A176393, the canonical program `A176393.P4613748579070152281` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176393 has offset 1).

The definition of A176393 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176393.P4149342472696973630

`1+A176100(n+1)`
-/

namespace A176393.P4149342472696973630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A176100 (n + 1)

end

end A176393.P4149342472696973630

namespace A176393

/-- `1+A176100(n+1)` -/
def P4149342472696973630.Spec : Prop :=
  ∀ n, P4149342472696973630.a n = A176393 (n + 1)

theorem P4149342472696973630.correct : P4149342472696973630.Spec := by
  intro n
  simp only [A176393, Nat.add_sub_cancel, A176393.P4149342472696973630.a, A176393.P4613748579070152281.a, A141468, A141468.P11281748312058034280.a, A176100, A176100.P16175186196650254316.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A054546, A054546.P12235855701833693749.a, A000038, A000038.P13734959004655594922.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065310, A065310.P13031903484145223612.f1, A065310.P13031903484145223612.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176393

/-! ## A176393.P1305357822802945670

`A176100(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176393.P1305357822802945670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1) + 1

end

end A176393.P1305357822802945670

namespace A176393

/-- `A176100(n+1)+1` -/
def P1305357822802945670.Spec : Prop :=
  ∀ n, P1305357822802945670.a n = A176393 (n + 1)

end A176393

/-! ## A176393.P4613748579070152281

`2*A141468(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A176393

/-- `2*A141468(n+1)+1` -/
def P4613748579070152281.Spec : Prop :=
  ∀ n, P4613748579070152281.a n = A176393 (n + 1)

theorem P4613748579070152281.correct : P4613748579070152281.Spec := by
  intro n
  simp only [A176393, Nat.add_sub_cancel]

end A176393

/-! ## A176393.P8329902758494337654

`2*comp[p?[xor(1, n)]]+1`
-/

namespace A176393.P8329902758494337654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A176393.P8329902758494337654

namespace A176393

/-- `2*comp[p?[xor(1, n)]]+1` -/
def P8329902758494337654.Spec : Prop :=
  ∀ n, (P8329902758494337654.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P2888371683744200448

`2*comp[A060264(n)]+1`
-/

namespace A176393.P2888371683744200448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176393.P2888371683744200448

namespace A176393

/-- `2*comp[A060264(n)]+1` -/
def P2888371683744200448.Spec : Prop :=
  ∀ n, (P2888371683744200448.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P2367673324001622939

`2*comp[A151800(n)]+1`
-/

namespace A176393.P2367673324001622939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176393.P2367673324001622939

namespace A176393

/-- `2*comp[A151800(n)]+1` -/
def P2367673324001622939.Spec : Prop :=
  ∀ n, (P2367673324001622939.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P16221086975568460652

`2*sqrt(A161753(n+1))+1`
-/

namespace A176393.P16221086975568460652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A161753 (n + 1) : ℝ) + 1

end

end A176393.P16221086975568460652

namespace A176393

/-- `2*sqrt(A161753(n+1))+1` -/
def P16221086975568460652.Spec : Prop :=
  ∀ n, P16221086975568460652.a n = (A176393 (n + 1) : ℝ)

end A176393

/-! ## A176393.P1858420117441171725

`2*comp[A000040(n+1)]+1`
-/

namespace A176393.P1858420117441171725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176393.P1858420117441171725

namespace A176393

/-- `2*comp[A000040(n+1)]+1` -/
def P1858420117441171725.Spec : Prop :=
  ∀ n, (P1858420117441171725.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P15621792492776235904

`2*comp[A000705(n+1)]+1`
-/

namespace A176393.P15621792492776235904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176393.P15621792492776235904

namespace A176393

/-- `2*comp[A000705(n+1)]+1` -/
def P15621792492776235904.Spec : Prop :=
  ∀ n, (P15621792492776235904.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P779985949907098997

`2*comp[A060308(n+1)]+1`
-/

namespace A176393.P779985949907098997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176393.P779985949907098997

namespace A176393

/-- `2*comp[A060308(n+1)]+1` -/
def P779985949907098997.Spec : Prop :=
  ∀ n, (P779985949907098997.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P14568395534853157902

`2*comp[A006530(n+2)]+1`
-/

namespace A176393.P14568395534853157902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176393.P14568395534853157902

namespace A176393

/-- `2*comp[A006530(n+2)]+1` -/
def P14568395534853157902.Spec : Prop :=
  ∀ n, (P14568395534853157902.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P16219349705649501489

`2*comp[A020639(n+2)]+1`
-/

namespace A176393.P16219349705649501489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176393.P16219349705649501489

namespace A176393

/-- `2*comp[A020639(n+2)]+1` -/
def P16219349705649501489.Spec : Prop :=
  ∀ n, (P16219349705649501489.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P936534893247105866

`or(1, 2*comp[A006530(or(2, n))])`
-/

namespace A176393.P936534893247105866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A176393.P936534893247105866

namespace A176393

/-- `or(1, 2*comp[A006530(or(2, n))])` -/
def P936534893247105866.Spec : Prop :=
  ∀ n, (P936534893247105866.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P14357647780792356722

`a(n-1)+2*A054546(n)` with `a(0)=1`
-/

namespace A176393.P14357647780792356722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A054546 n

end

end A176393.P14357647780792356722

namespace A176393

/-- `a(n-1)+2*A054546(n)` -/
def P14357647780792356722.Spec : Prop :=
  ∀ n, P14357647780792356722.a n = A176393 (n + 1)

end A176393

/-! ## A176393.P13941950899914899069

`2*comp[p?[A005117(n+1)]]+1`
-/

namespace A176393.P13941950899914899069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176393.P13941950899914899069

namespace A176393

/-- `2*comp[p?[A005117(n+1)]]+1` -/
def P13941950899914899069.Spec : Prop :=
  ∀ n, (P13941950899914899069.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P16329439948320595011

`A065090(n+1)*A130130(n)+1`
-/

namespace A176393.P16329439948320595011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1) * A130130 n + 1

end

end A176393.P16329439948320595011

namespace A176393

/-- `A065090(n+1)*A130130(n)+1` -/
def P16329439948320595011.Spec : Prop :=
  ∀ n, P16329439948320595011.a n = A176393 (n + 1)

end A176393

/-! ## A176393.P139269861005811701

`A166037(n+1)+1-A054546(n+1)`
-/

namespace A176393.P139269861005811701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1) + (1 - A054546 (n + 1))

end

end A176393.P139269861005811701

namespace A176393

/-- `A166037(n+1)+1-A054546(n+1)` -/
def P139269861005811701.Spec : Prop :=
  ∀ n, P139269861005811701.a n = A176393 (n + 1)

end A176393

/-! ## A176393.P2480131785587714830

`∏{e}[A006530(n+1), 2*A018252(n)+#]`
-/

namespace A176393.P2480131785587714830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (2 * A018252 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A176393.P2480131785587714830

namespace A176393

/-- `∏{e}[A006530(n+1), 2*A018252(n)+#]` -/
def P2480131785587714830.Spec : Prop :=
  ∀ n, P2480131785587714830.a n = A176393 (n + 1)

end A176393

/-! ## A176393.P3559804337176644852

`2*comp[A088732(n)]+1`
-/

namespace A176393.P3559804337176644852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176393.P3559804337176644852

namespace A176393

/-- `2*comp[A088732(n)]+1` -/
def P3559804337176644852.Spec : Prop :=
  ∀ n, (P3559804337176644852.a n : ℤ) = A176393 (n + 1)

end A176393

/-! ## A176393.P11695090978078099546

`A005843(A141468(n+1))+1`
-/

namespace A176393.P11695090978078099546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A141468 (n + 1)).toNat + 1

end

end A176393.P11695090978078099546

namespace A176393

/-- `A005843(A141468(n+1))+1` -/
def P11695090978078099546.Spec : Prop :=
  ∀ n, P11695090978078099546.a n = A176393 (n + 1)

end A176393

/-!
# A176394: Decimal expansion of 3+2*sqrt(3).

The programs for A176394, there is no canonical definition to state claims against.
-/

/-! ## A176394.P4267566494464095168

`A010469(A000038(n)+n)`
-/

namespace A176394.P4267566494464095168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010469 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A176394.P4267566494464095168

/-! ## A176394.P13703811238605232560

`A010469(or(n, A000038(n)))`
-/

namespace A176394.P13703811238605232560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010469 ((Int.lor (n : ℤ) (A000038 n)).toNat + 1)

end

end A176394.P13703811238605232560

/-! ## A176394.P12605871536577134091

`A000038(n)!*A010469(n)`
-/

namespace A176394.P12605871536577134091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A010469 (n + 1)

end

end A176394.P12605871536577134091

/-! ## A176394.P7701519773892003130

`(A000007(n)+1)*A010469(n)`
-/

namespace A176394.P7701519773892003130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A010469 (n + 1)

end

end A176394.P7701519773892003130

/-! ## A176394.P1027735443579568700

`A343199(2*A000007(n)+n)`
-/

namespace A176394.P1027735443579568700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343199 ((2 * A000007 n + (n : ℤ)).toNat + 1)

end

end A176394.P1027735443579568700

/-! ## A176394.P14438748209151006236

`A343199(n)-3*A000007(n)`
-/

namespace A176394.P14438748209151006236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343199 (n + 1) - 3 * A000007 n

end

end A176394.P14438748209151006236

/-! ## A176394.P12293730987453943542

`12*A010469(n)/A040030(n)`
-/

namespace A176394.P12293730987453943542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * ((A010469 (n + 1) : ℚ) / (A040030 n : ℚ))

end

end A176394.P12293730987453943542

/-! ## A176394.P1049125472235327441

`A010469(n)*(3-A040001(2*n))`
-/

namespace A176394.P1049125472235327441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010469 (n + 1) * (3 - A040001 (2 * n))

end

end A176394.P1049125472235327441

/-! ## A176394.P15908994212630590253

`A010469(A000007(n)+A000007(n)+n)`
-/

namespace A176394.P15908994212630590253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010469 ((A000007 n + (A000007 n + (n : ℤ))).toNat + 1)

end

end A176394.P15908994212630590253

/-! ## A176394.P7360711637019328946

`A343199(A000007(n)+A000007(n)+n)`
-/

namespace A176394.P7360711637019328946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343199 ((A000007 n + (A000007 n + (n : ℤ))).toNat + 1)

end

end A176394.P7360711637019328946

/-! ## A176394.P11687975398751703722

`A010469(n)*A040001(A040001(n)+1+n)`
-/

namespace A176394.P11687975398751703722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010469 (n + 1) * A040001 (A040001 n + 1 + (n : ℤ)).toNat

end

end A176394.P11687975398751703722

/-! ## A176394.P4747414154570307446

`A010696(n+1)+A010469(n)-A040008(n)`
-/

namespace A176394.P4747414154570307446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 (n + 1) + (A010469 (n + 1) - A040008 n)

end

end A176394.P4747414154570307446

/-!
# A176395: Decimal expansion of 3+sqrt(11).

The programs for A176395, there is no canonical definition to state claims against.
-/

/-! ## A176395.P9187744486290222631

`floor(ratio[n+1])*A010468(n)`
-/

namespace A176395.P9187744486290222631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ * A010468 (n + 1)

end

end A176395.P9187744486290222631

/-! ## A176395.P17851265463020482708

`A010468(n)*A054977(n)`
-/

namespace A176395.P17851265463020482708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010468 (n + 1) * A054977 n

end

end A176395.P17851265463020482708

/-! ## A176395.P6846756188213643929

`6+A010468(n)-A040006(n)`
-/

namespace A176395.P6846756188213643929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 + (A010468 (n + 1) - A040006 n)

end

end A176395.P6846756188213643929

/-! ## A176395.P7984731544376977586

`lcm(A000007(n)+1, A010468(n))`
-/

namespace A176395.P7984731544376977586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000007 n + 1) (A010468 (n + 1))

end

end A176395.P7984731544376977586

/-! ## A176395.P5613911559220010718

`A010704(n+1)+A010468(n)-A040007(n)`
-/

namespace A176395.P5613911559220010718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010704 (n + 1) + (A010468 (n + 1) - A040007 n)

end

end A176395.P5613911559220010718

/-! ## A176395.P12243799997633812969

`A010468(n)*A047789(3*n)`
-/

namespace A176395.P12243799997633812969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010468 (n + 1) * A047789 (3 * n)

end

end A176395.P12243799997633812969

/-!
# A176398: Decimal expansion of 3+sqrt(10).

The programs for A176398, there is no canonical definition to state claims against.
-/

/-! ## A176398.P4026000216457312987

`A010467(2-(2-n)%(n+1))`
-/

namespace A176398.P4026000216457312987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010467 ((2 - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ)).toNat + 1)

end

end A176398.P4026000216457312987

/-! ## A176398.P7472576309561441635

`A010467(A000038(n)+n)`
-/

namespace A176398.P7472576309561441635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010467 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A176398.P7472576309561441635

/-! ## A176398.P15203743015240890355

`A010467(n)*A054977(n)`
-/

namespace A176398.P15203743015240890355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010467 (n + 1) * A054977 n

end

end A176398.P15203743015240890355

/-! ## A176398.P2969591919225402213

`A010467(or(n, A000038(n)))`
-/

namespace A176398.P2969591919225402213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010467 ((Int.lor (n : ℤ) (A000038 n)).toNat + 1)

end

end A176398.P2969591919225402213

/-! ## A176398.P16645676719562369062

`A010467(xor(n, A000038(n)))`
-/

namespace A176398.P16645676719562369062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010467 ((Int.xor (n : ℤ) (A000038 n)).toNat + 1)

end

end A176398.P16645676719562369062

/-! ## A176398.P15148524419399123765

`(A000007(n)+1)*A010467(n)`
-/

namespace A176398.P15148524419399123765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A010467 (n + 1)

end

end A176398.P15148524419399123765

/-! ## A176398.P18174071626484713886

`6+A010467(n)-A040006(n)`
-/

namespace A176398.P18174071626484713886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 + (A010467 (n + 1) - A040006 n)

end

end A176398.P18174071626484713886

/-! ## A176398.P3728064956398615113

`4/A040002(n)*A010467(n)`
-/

namespace A176398.P3728064956398615113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A040002 n : ℚ) * (A010467 (n + 1) : ℚ)

end

end A176398.P3728064956398615113

/-! ## A176398.P1554898441290851128

`12/A040030(n)*A010467(n)`
-/

namespace A176398.P1554898441290851128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 / (A040030 n : ℚ) * (A010467 (n + 1) : ℚ)

end

end A176398.P1554898441290851128

/-! ## A176398.P6853531807751335587

`A010467(A000007(n)+A000007(n)+n)`
-/

namespace A176398.P6853531807751335587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010467 ((A000007 n + (A000007 n + (n : ℤ))).toNat + 1)

end

end A176398.P6853531807751335587

/-! ## A176398.P13883540622647453023

`A010467(n-(A020793(n)-A040006(n)))`
-/

namespace A176398.P13883540622647453023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010467 (((n : ℤ) - (A020793 n - A040006 n)).toNat + 1)

end

end A176398.P13883540622647453023

/-! ## A176398.P7096367676618429028

`A000034(A008458(n))*A010467(n)`
-/

namespace A176398.P7096367676618429028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A008458 n).toNat * A010467 (n + 1)

end

end A176398.P7096367676618429028

/-! ## A176398.P15768894643305446273

`A010467(n)*A014963(A017089(n))`
-/

namespace A176398.P15768894643305446273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010467 (n + 1) * A014963 (A017089 n).toNat

end

end A176398.P15768894643305446273

/-! ## A176398.P14877596642674678630

`A014963(A014574(n+1))*A010467(n)`
-/

namespace A176398.P14877596642674678630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014574 (n + 1)).toNat * A010467 (n + 1)

end

end A176398.P14877596642674678630

