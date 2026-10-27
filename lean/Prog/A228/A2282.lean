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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A228200: Smallest of 9 consecutive primes whose sum is not a prime.

The programs for A228200, there is no canonical definition to state claims against.
-/

/-! ## A228200.P17367876771802008721

`∩[A000040(n+1), comp[A189571(n+1)]]`
-/

namespace A228200.P17367876771802008721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189571 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A228200.P17367876771802008721

/-! ## A228200.P2381943262943710645

`∩[A028779(n+1), A165439(n+1)]`
-/

namespace A228200.P2381943262943710645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228200.P2381943262943710645

/-! ## A228200.P8428960945261299883

`∩[A028779(n+1), A000040(A336547(n+1))]`
-/

namespace A228200.P8428960945261299883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336547 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228200.P8428960945261299883

/-! ## A228200.P507098536596542731

`eq[A010141(A103631(2*(n+2))), A363723(n)]`
-/

namespace A228200.P507098536596542731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (A103631 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228200.P507098536596542731

/-! ## A228200.P3300306637664307581

`eq[A003415(n), A038500(A102756(n))]`
-/

namespace A228200.P3300306637664307581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A102756 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228200.P3300306637664307581

/-!
# A228201: Smallest of 11 consecutive primes whose sum is not a prime.

The programs for A228201, the canonical program `A228201.P11955717391647300090` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228201 has offset 1).

The definition of A228201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228201.P11955717391647300090

`record[A000040(n+1)-A055672(A127338(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A228201

/-- `record[A000040(n+1)-A055672(A127338(n+1))]` -/
def P11955717391647300090.Spec : Prop :=
  ∀ n, P11955717391647300090.a n = A228201 (n + 1)

theorem P11955717391647300090.correct : P11955717391647300090.Spec := by
  intro n
  simp only [A228201, Nat.add_sub_cancel]

end A228201

/-! ## A228201.P12436861274994138859

`record[A020639(A028782(n+1)+10)]`
-/

namespace A228201.P12436861274994138859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028782 (n + 1) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228201.P12436861274994138859

namespace A228201

/-- `record[A020639(A028782(n+1)+10)]` -/
def P12436861274994138859.Spec : Prop :=
  ∀ n, P12436861274994138859.a n = A228201 (n + 1)

end A228201

/-! ## A228201.P10946547272276273270

`A008578(eq[A025877(n), A085252(n+1)])`
-/

namespace A228201.P10946547272276273270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228201.P10946547272276273270

namespace A228201

/-- `A008578(eq[A025877(n), A085252(n+1)])` -/
def P10946547272276273270.Spec : Prop :=
  ∀ n, P10946547272276273270.a n = A228201 (n + 1)

end A228201

/-!
# A228202: Number T(n,k,r) of partitions of an n X k X r rectangular cuboid into integer-sided cubes, considering only the list of parts; irregular triangle T(n,k,r), n >= k >= r >= 1 read by rows.

The programs for A228202, there is no canonical definition to state claims against.
-/

/-! ## A228202.P4259914294339979067

`gcd(A008615(n+5), A008615(A294758(n+7)))`
-/

namespace A228202.P4259914294339979067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008615 (n + 5)) (A008615 (A294758 (n + 7)).toNat)

end

end A228202.P4259914294339979067

/-! ## A228202.P14285337191249078977

`gcd(A001221(A288897(n)), A150567(n))`
-/

namespace A228202.P14285337191249078977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A288897 n).toNat) (A150567 n)

end

end A228202.P14285337191249078977

/-! ## A228202.P559198782001118236

`A303828(or(A185314(n), A321418(n)))`
-/

namespace A228202.P559198782001118236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 (Int.lor (A185314 n) (A321418 n)).toNat

end

end A228202.P559198782001118236

/-! ## A228202.P2529146648942573257

`gcd(A002117(n+1), A009223(A214727(n)))`
-/

namespace A228202.P2529146648942573257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002117 (n + 1)) (A009223 (A214727 n).toNat)

end

end A228202.P2529146648942573257

/-! ## A228202.P7680955688542543018

`A205745(A204376(n+1))`
-/

namespace A228202.P7680955688542543018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (A204376 (n + 1)).toNat

end

end A228202.P7680955688542543018

/-!
# A228205: x-values in the solution to x^2 - 13y^2 = 108.

The programs for A228205, the canonical program `A228205.P4509884903781160276` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228205 has offset 1).

The definition of A228205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228205.P4509884903781160276

`11*a(n-4)-a(n-8)` with `a(0)=11, a(1)=15, a(2)=24, a(3)=41, a(4)=80, a(5)=141, a(6)=249, a(7)=440`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228205

/-- `11*a(n-4)-a(n-8)` -/
def P4509884903781160276.Spec : Prop :=
  ∀ n, P4509884903781160276.a n = A228205 (n + 1)

theorem P4509884903781160276.correct : P4509884903781160276.Spec := by
  intro n
  simp only [A228205, Nat.add_sub_cancel]

end A228205

/-!
# A228206: y-values in the solution to x^2 - 13y^2 = 108.

The programs for A228206, the canonical program `A228206.P12173999848602230281` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228206 has offset 1).

The definition of A228206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228206.P12173999848602230281

`11*a(n-4)-a(n-8)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=11, a(4)=22, a(5)=39, a(6)=69, a(7)=122`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228206

/-- `11*a(n-4)-a(n-8)` -/
def P12173999848602230281.Spec : Prop :=
  ∀ n, P12173999848602230281.a n = A228206 (n + 1)

theorem P12173999848602230281.correct : P12173999848602230281.Spec := by
  intro n
  simp only [A228206, Nat.add_sub_cancel]

end A228206

/-! ## A228206.P9845514031593515166

`∑[A102450(record[A298598(n)])]`
-/

namespace A228206.P9845514031593515166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228206.P9845514031593515166

namespace A228206

/-- `∑[A102450(record[A298598(n)])]` -/
def P9845514031593515166.Spec : Prop :=
  ∀ n, P9845514031593515166.a n = A228206 (n + 1)

end A228206

/-! ## A228206.P7467728705705252667

`A071860(A208354(n+1)²)`
-/

namespace A228206.P7467728705705252667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A208354 (n + 1) ^ 2).toNat

end

end A228206.P7467728705705252667

namespace A228206

/-- `A071860(A208354(n+1)²)` -/
def P7467728705705252667.Spec : Prop :=
  ∀ n, P7467728705705252667.a n = A228206 (n + 1)

end A228206

/-! ## A228206.P4479081243994291279

`A103128(xor(n, A030282(n+1)))`
-/

namespace A228206.P4479081243994291279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (Int.xor (n : ℤ) (A030282 (n + 1))).toNat

end

end A228206.P4479081243994291279

namespace A228206

/-- `A103128(xor(n, A030282(n+1)))` -/
def P4479081243994291279.Spec : Prop :=
  ∀ n, P4479081243994291279.a n = A228206 (n + 1)

end A228206

/-!
# A228207: x-values in the solution to x^2 - 20*y^2 = 176.

The programs for A228207, the canonical program `A228207.P6704016876133384196` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228207 has offset 1).

The definition of A228207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228207.P6704016876133384196

`3*a(n-2)-a(n-4)` with `a(0)=14, a(1)=16, a(2)=26, a(3)=34`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228207

/-- `3*a(n-2)-a(n-4)` -/
def P6704016876133384196.Spec : Prop :=
  ∀ n, P6704016876133384196.a n = A228207 (n + 1)

theorem P6704016876133384196.correct : P6704016876133384196.Spec := by
  intro n
  simp only [A228207, Nat.add_sub_cancel]

end A228207

/-! ## A228207.P7430192829752448848

`2*A228210(n+1)`
-/

namespace A228207.P7430192829752448848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228210 (n + 1)

end

end A228207.P7430192829752448848

namespace A228207

/-- `2*A228210(n+1)` -/
def P7430192829752448848.Spec : Prop :=
  ∀ n, P7430192829752448848.a n = A228207 (n + 1)

end A228207

/-! ## A228207.P6721890678038116812

`2*(∑[A203976(n)]+7)`
-/

namespace A228207.P6721890678038116812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A228207.P6721890678038116812

namespace A228207

/-- `2*(∑[A203976(n)]+7)` -/
def P6721890678038116812.Spec : Prop :=
  ∀ n, P6721890678038116812.a n = A228207 (n + 1)

end A228207

/-! ## A228207.P6739021718168360043

`A228210(n+1)+A228210(C(n+1, n))`
-/

namespace A228207.P6739021718168360043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228210 (n + 1) + A228210 (Nat.choose (n + 1) n)

end

end A228207.P6739021718168360043

namespace A228207

/-- `A228210(n+1)+A228210(C(n+1, n))` -/
def P6739021718168360043.Spec : Prop :=
  ∀ n, P6739021718168360043.a n = A228207 (n + 1)

end A228207

/-! ## A228207.P13334897578182530637

`A228210(A000027(n+1))+A228210(n+1)`
-/

namespace A228207.P13334897578182530637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228210 (A000027 (n + 1)).toNat + A228210 (n + 1)

end

end A228207.P13334897578182530637

namespace A228207

/-- `A228210(A000027(n+1))+A228210(n+1)` -/
def P13334897578182530637.Spec : Prop :=
  ∀ n, P13334897578182530637.a n = A228207 (n + 1)

end A228207

/-! ## A228207.P6454732280315577776

`A228210(n+1)+A228210((n+1)%A008458(n+1))`
-/

namespace A228207.P6454732280315577776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228210 (n + 1) + A228210 (Int.tmod (n + 1 : ℤ) (A008458 (n + 1))).toNat

end

end A228207.P6454732280315577776

namespace A228207

/-- `A228210(n+1)+A228210((n+1)%A008458(n+1))` -/
def P6454732280315577776.Spec : Prop :=
  ∀ n, P6454732280315577776.a n = A228207 (n + 1)

end A228207

/-! ## A228207.P8386600598455685763

`A228210(n+1)+A228210(n+1)%A042612(n)`
-/

namespace A228207.P8386600598455685763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228210 (n + 1) + Int.tmod (A228210 (n + 1)) (A042612 n)

end

end A228207.P8386600598455685763

namespace A228207

/-- `A228210(n+1)+A228210(n+1)%A042612(n)` -/
def P8386600598455685763.Spec : Prop :=
  ∀ n, P8386600598455685763.a n = A228207 (n + 1)

end A228207

/-!
# A228208: y-values in the solution to x^2 - 20*y^2 = 176.

The programs for A228208, the canonical program `A228208.P2388121338012055781` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228208 has offset 1).

The definition of A228208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228208.P2388121338012055781

`3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228208

/-- `3*a(n-2)-a(n-4)` -/
def P2388121338012055781.Spec : Prop :=
  ∀ n, P2388121338012055781.a n = A228208 (n + 1)

theorem P2388121338012055781.correct : P2388121338012055781.Spec := by
  intro n
  simp only [A228208, Nat.add_sub_cancel]

end A228208

/-! ## A228208.P2561213530508567078

`ogf((1+2x+2x^2+x^3)/(1-3x^2+x^4))`
-/

namespace A228208.P2561213530508567078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, 0, -3, 0, 1] n

end

end A228208.P2561213530508567078

namespace A228208

/-- `ogf((1+2x+2x^2+x^3)/(1-3x^2+x^4))` -/
def P2561213530508567078.Spec : Prop :=
  ∀ n, P2561213530508567078.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P2609042986453189781

`ceil(ϕ²*a(n-2))` with `a(0)=1, a(1)=2, a(2)=5, a(3)=7`
-/

namespace A228208.P2609042986453189781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 7] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌉

end

end A228208.P2609042986453189781

namespace A228208

/-- `ceil(ϕ²*a(n-2))` -/
def P2609042986453189781.Spec : Prop :=
  ∀ n, P2609042986453189781.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P1556922867300903425

`∑[floor(ϕ²*a(n-2))]-1` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A228208.P1556922867300903425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228208.P1556922867300903425

namespace A228208

/-- `∑[floor(ϕ²*a(n-2))]-1` -/
def P1556922867300903425.Spec : Prop :=
  ∀ n, P1556922867300903425.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P8826709281750135361

`∑[A005247(n)]-1`
-/

namespace A228208.P8826709281750135361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228208.P8826709281750135361

namespace A228208

/-- `∑[A005247(n)]-1` -/
def P8826709281750135361.Spec : Prop :=
  ∀ n, P8826709281750135361.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P7126079989042601128

`abs(Δ[Δ[A097131(n)]])`
-/

namespace A228208.P7126079989042601128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A228208.P7126079989042601128

namespace A228208

/-- `abs(Δ[Δ[A097131(n)]])` -/
def P7126079989042601128.Spec : Prop :=
  ∀ n, P7126079989042601128.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P960292613002555411

`∑[A063726(2*n+1)]-1`
-/

namespace A228208.P960292613002555411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228208.P960292613002555411

namespace A228208

/-- `∑[A063726(2*n+1)]-1` -/
def P960292613002555411.Spec : Prop :=
  ∀ n, P960292613002555411.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P1752879417364605275

`∑[A005247(A028310(n))]`
-/

namespace A228208.P1752879417364605275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228208.P1752879417364605275

namespace A228208

/-- `∑[A005247(A028310(n))]` -/
def P1752879417364605275.Spec : Prop :=
  ∀ n, P1752879417364605275.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P9109475122066035581

`A112469(n)+A001911(n)`
-/

namespace A228208.P9109475122066035581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n + A001911 n

end

end A228208.P9109475122066035581

namespace A228208

/-- `A112469(n)+A001911(n)` -/
def P9109475122066035581.Spec : Prop :=
  ∀ n, P9109475122066035581.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P12994020057323153580

`∑[A303427(A014601(n))]-1`
-/

namespace A228208.P12994020057323153580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (A014601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A228208.P12994020057323153580

namespace A228208

/-- `∑[A303427(A014601(n))]-1` -/
def P12994020057323153580.Spec : Prop :=
  ∀ n, P12994020057323153580.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P5932189847155823134

`A005013(n+1)+A005013(n)`
-/

namespace A228208.P5932189847155823134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (n + 1) + A005013 n

end

end A228208.P5932189847155823134

namespace A228208

/-- `A005013(n+1)+A005013(n)` -/
def P5932189847155823134.Spec : Prop :=
  ∀ n, P5932189847155823134.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P10180658734560192109

`A097132(n)+A000071(n+1)`
-/

namespace A228208.P10180658734560192109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097132 n + A000071 (n + 1)

end

end A228208.P10180658734560192109

namespace A228208

/-- `A097132(n)+A000071(n+1)` -/
def P10180658734560192109.Spec : Prop :=
  ∀ n, P10180658734560192109.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P16892287604376707374

`A020695(n)+A112469(n)-2`
-/

namespace A228208.P16892287604376707374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (A112469 n - 2)

end

end A228208.P16892287604376707374

namespace A228208

/-- `A020695(n)+A112469(n)-2` -/
def P16892287604376707374.Spec : Prop :=
  ∀ n, P16892287604376707374.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P11132713125648983351

`2*A109794(n)-Δ[A000045(n)]`
-/

namespace A228208.P11132713125648983351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109794 n - (f1 (n + 1) - f1 n)

end

end A228208.P11132713125648983351

namespace A228208

/-- `2*A109794(n)-Δ[A000045(n)]` -/
def P11132713125648983351.Spec : Prop :=
  ∀ n, P11132713125648983351.a n = A228208 (n + 1)

end A228208

/-! ## A228208.P15810022552792455422

`A123231(2*(n+1))-A051792(2*(n+1))`
-/

namespace A228208.P15810022552792455422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (2 * (n + 1)) - A051792 (2 * (n + 1))

end

end A228208.P15810022552792455422

namespace A228208

/-- `A123231(2*(n+1))-A051792(2*(n+1))` -/
def P15810022552792455422.Spec : Prop :=
  ∀ n, P15810022552792455422.a n = A228208 (n + 1)

end A228208

/-!
# A228209: x-values in the solutions to x^2 - 10*y^2 = 9.

The programs for A228209, the canonical program `A228209.P6586201874269204643` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228209 has offset 1).

The definition of A228209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228209.P6586201874269204643

`38*a(n-3)-a(n-6)` with `a(0)=3, a(1)=7, a(2)=13, a(3)=57, a(4)=253, a(5)=487`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228209

/-- `38*a(n-3)-a(n-6)` -/
def P6586201874269204643.Spec : Prop :=
  ∀ n, P6586201874269204643.a n = A228209 (n + 1)

theorem P6586201874269204643.correct : P6586201874269204643.Spec := by
  intro n
  simp only [A228209, Nat.add_sub_cancel]

end A228209

/-! ## A228209.P10502265238375032798

`A031149(A047289(n+2))`
-/

namespace A228209.P10502265238375032798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A047289 (n + 2)).toNat

end

end A228209.P10502265238375032798

namespace A228209

/-- `A031149(A047289(n+2))` -/
def P10502265238375032798.Spec : Prop :=
  ∀ n, P10502265238375032798.a n = A228209 (n + 1)

end A228209

/-! ## A228209.P13092159797458737910

`A031149(A047327(n+1)+1)`
-/

namespace A228209.P13092159797458737910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A047327 (n + 1) + 1).toNat

end

end A228209.P13092159797458737910

namespace A228209

/-- `A031149(A047327(n+1)+1)` -/
def P13092159797458737910.Spec : Prop :=
  ∀ n, P13092159797458737910.a n = A228209 (n + 1)

end A228209

/-! ## A228209.P17155079585010504539

`A031149(A047343(n+1)+3)`
-/

namespace A228209.P17155079585010504539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A047343 (n + 1) + 3).toNat

end

end A228209.P17155079585010504539

namespace A228209

/-- `A031149(A047343(n+1)+3)` -/
def P17155079585010504539.Spec : Prop :=
  ∀ n, P17155079585010504539.a n = A228209 (n + 1)

end A228209

/-! ## A228209.P2407617309250557412

`A031149(A047359(n+1)+4)`
-/

namespace A228209.P2407617309250557412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A047359 (n + 1) + 4).toNat

end

end A228209.P2407617309250557412

namespace A228209

/-- `A031149(A047359(n+1)+4)` -/
def P2407617309250557412.Spec : Prop :=
  ∀ n, P2407617309250557412.a n = A228209 (n + 1)

end A228209

/-!
# A228210: x-values in the solutions to x^2 - 5y^2 = 44.

The programs for A228210, the canonical program `A228210.P8550243518572279298` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228210 has offset 1).

The definition of A228210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228210.P8550243518572279298

`3*a(n-2)-a(n-4)` with `a(0)=7, a(1)=8, a(2)=13, a(3)=17`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228210

/-- `3*a(n-2)-a(n-4)` -/
def P8550243518572279298.Spec : Prop :=
  ∀ n, P8550243518572279298.a n = A228210 (n + 1)

theorem P8550243518572279298.correct : P8550243518572279298.Spec := by
  intro n
  simp only [A228210, Nat.add_sub_cancel]

end A228210

/-! ## A228210.P17443093247768899927

`∑[ogf((x+5x^2+x^3)/(1-3x^2+x^4))]+7`
-/

namespace A228210.P17443093247768899927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 1] [1, 0, -3, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A228210.P17443093247768899927

namespace A228210

/-- `∑[ogf((x+5x^2+x^3)/(1-3x^2+x^4))]+7` -/
def P17443093247768899927.Spec : Prop :=
  ∀ n, P17443093247768899927.a n = A228210 (n + 1)

end A228210

/-! ## A228210.P1060513188143951314

`∑[lcm(5, a(n-1))-a(n-2)]+7` with `a(0)=0, a(1)=1`
-/

namespace A228210.P1060513188143951314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (Int.lcm 5 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A228210.P1060513188143951314

namespace A228210

/-- `∑[lcm(5, a(n-1))-a(n-2)]+7` -/
def P1060513188143951314.Spec : Prop :=
  ∀ n, P1060513188143951314.a n = A228210 (n + 1)

end A228210

/-! ## A228210.P11697696570902976739

`∑[A203976(n)]+7`
-/

namespace A228210.P11697696570902976739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A228210.P11697696570902976739

namespace A228210

/-- `∑[A203976(n)]+7` -/
def P11697696570902976739.Spec : Prop :=
  ∀ n, P11697696570902976739.a n = A228210 (n + 1)

end A228210

/-! ## A228210.P11371176442279782940

`∑[A005013(n)*A176260(n)]+7`
-/

namespace A228210.P11371176442279782940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n * A176260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A228210.P11371176442279782940

namespace A228210

/-- `∑[A005013(n)*A176260(n)]+7` -/
def P11371176442279782940.Spec : Prop :=
  ∀ n, P11371176442279782940.a n = A228210 (n + 1)

end A228210

/-! ## A228210.P16303735202039376706

`A218735(n+1)+2*A094967(n)`
-/

namespace A228210.P16303735202039376706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218735 (n + 1) + 2 * A094967 n

end

end A228210.P16303735202039376706

namespace A228210

/-- `A218735(n+1)+2*A094967(n)` -/
def P16303735202039376706.Spec : Prop :=
  ∀ n, P16303735202039376706.a n = A228210 (n + 1)

end A228210

/-! ## A228210.P4379860103119462415

`∑[A000032(n+1)-A061084(n)]+7`
-/

namespace A228210.P4379860103119462415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A228210.P4379860103119462415

namespace A228210

/-- `∑[A000032(n+1)-A061084(n)]+7` -/
def P4379860103119462415.Spec : Prop :=
  ∀ n, P4379860103119462415.a n = A228210 (n + 1)

end A228210

/-! ## A228210.P2413530640876216747

`A218735(n+1)+A218735(n+1)-A237132(n+1)`
-/

namespace A228210.P2413530640876216747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218735 (n + 1) + (A218735 (n + 1) - A237132 (n + 1))

end

end A228210.P2413530640876216747

namespace A228210

/-- `A218735(n+1)+A218735(n+1)-A237132(n+1)` -/
def P2413530640876216747.Spec : Prop :=
  ∀ n, P2413530640876216747.a n = A228210 (n + 1)

end A228210

/-! ## A228210.P9377386450669067170

`A237132(n+2)+A237132(n+2)-A228208(n+1)`
-/

namespace A228210.P9377386450669067170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237132 (n + 2) + (A237132 (n + 2) - A228208 (n + 1))

end

end A228210.P9377386450669067170

namespace A228210

/-- `A237132(n+2)+A237132(n+2)-A228208(n+1)` -/
def P9377386450669067170.Spec : Prop :=
  ∀ n, P9377386450669067170.a n = A228210 (n + 1)

end A228210

/-! ## A228210.P15731654603986021577

`2*A218735(n+1)-A237132(n+1)`
-/

namespace A228210.P15731654603986021577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218735 (n + 1) - A237132 (n + 1)

end

end A228210.P15731654603986021577

namespace A228210

/-- `2*A218735(n+1)-A237132(n+1)` -/
def P15731654603986021577.Spec : Prop :=
  ∀ n, P15731654603986021577.a n = A228210 (n + 1)

end A228210

/-! ## A228210.P17118804540973126936

`A228207(n+1)/2`
-/

namespace A228210.P17118804540973126936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228207 (n + 1) : ℚ) / 2

end

end A228210.P17118804540973126936

namespace A228210

/-- `A228207(n+1)/2` -/
def P17118804540973126936.Spec : Prop :=
  ∀ n, P17118804540973126936.a n = (A228210 (n + 1) : ℚ)

end A228210

/-!
# A228212: Number of second differences of arrays of length n + 2 of numbers in 0..2.

The programs for A228212, there is no canonical definition to state claims against.
-/

/-! ## A228212.P49439419940269096

`A228218(∑[n+2])`
-/

namespace A228212.P49439419940269096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228212.P49439419940269096

/-! ## A228212.P17295616943357022117

`record[A228218(A000096(A126759(n)))]`
-/

namespace A228212.P17295616943357022117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228212.P17295616943357022117

/-! ## A228212.P13767660389988392716

`record[A228218(A000096(A344180(n)))]`
-/

namespace A228212.P13767660389988392716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228212.P13767660389988392716

/-! ## A228212.P6164724267027918318

`record[A228218(A000096(A002260(n+1)))]`
-/

namespace A228212.P6164724267027918318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228212.P6164724267027918318

/-! ## A228212.P4872798785020323084

`record[A228218(A000096(A004736(n+1)))]`
-/

namespace A228212.P4872798785020323084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228212.P4872798785020323084

/-!
# A228213: Number of second differences of arrays of length n + 2 of numbers in 0..3.

The programs for A228213, there is no canonical definition to state claims against.
-/

/-! ## A228213.P22537867510879221

`A228218(∑[n+3]+1)`
-/

namespace A228213.P22537867510879221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228213.P22537867510879221

/-!
# A228214: Number of second differences of arrays of length n + 2 of numbers in 0..4.

The programs for A228214, there is no canonical definition to state claims against.
-/

/-! ## A228214.P12504211561417379577

`A228218(A141214(n+1))`
-/

namespace A228214.P12504211561417379577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A141214 (n + 1)).toNat

end

end A228214.P12504211561417379577

/-! ## A228214.P16822558871021371900

`A228218(A027379(n+2))`
-/

namespace A228214.P16822558871021371900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A027379 (n + 2)).toNat

end

end A228214.P16822558871021371900

/-! ## A228214.P15603657024252342025

`A228218(A055998(n+2))`
-/

namespace A228214.P15603657024252342025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A055998 (n + 2)).toNat

end

end A228214.P15603657024252342025

/-! ## A228214.P13832353511474465800

`A228218(A052905(n+1)+2)`
-/

namespace A228214.P13832353511474465800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A052905 (n + 1) + 2).toNat

end

end A228214.P13832353511474465800

/-! ## A228214.P13265020564808838165

`A228218(A055999(n+1)+3)`
-/

namespace A228214.P13265020564808838165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A055999 (n + 1) + 3).toNat

end

end A228214.P13265020564808838165

/-!
# A228215: Number of second differences of arrays of length n+2 of numbers in 0..5.

The programs for A228215, there is no canonical definition to state claims against.
-/

/-! ## A228215.P18320862394642325061

`A228218(Δ[A264443(n)])`
-/

namespace A228215.P18320862394642325061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (f1 (n + 1) - f1 n).toNat

end

end A228215.P18320862394642325061

/-! ## A228215.P5284803645497190842

`A228218(A046691(n+3))`
-/

namespace A228215.P5284803645497190842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A046691 (n + 3)).toNat

end

end A228215.P5284803645497190842

/-! ## A228215.P5163073825793067214

`A228218(Δ[A023545(n+1)])`
-/

namespace A228215.P5163073825793067214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (f1 (n + 1) - f1 n).toNat

end

end A228215.P5163073825793067214

/-! ## A228215.P18006484751760297722

`A228218(A000217(n+5)-4)`
-/

namespace A228215.P18006484751760297722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000217 (n + 5) - 4).toNat

end

end A228215.P18006484751760297722

/-! ## A228215.P3216009811123031311

`A228218(A000124(n+5)-5)`
-/

namespace A228215.P3216009811123031311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000124 (n + 5) - 5).toNat

end

end A228215.P3216009811123031311

/-!
# A228216: Number of second differences of arrays of length n+2 of numbers in 0..6.

The programs for A228216, there is no canonical definition to state claims against.
-/

/-! ## A228216.P3707234499079079975

`A228218(A052905(n+3))`
-/

namespace A228216.P3707234499079079975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A052905 (n + 3)).toNat

end

end A228216.P3707234499079079975

/-! ## A228216.P7665628653534273118

`A228218(A046691(n+4)-1)`
-/

namespace A228216.P7665628653534273118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A046691 (n + 4) - 1).toNat

end

end A228216.P7665628653534273118

/-! ## A228216.P17148933624584099131

`A228218(A000096(n+5)-4)`
-/

namespace A228216.P17148933624584099131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000096 (n + 5) - 4).toNat

end

end A228216.P17148933624584099131

/-! ## A228216.P7273259594062929228

`A228218(A000124(n+6)-6)`
-/

namespace A228216.P7273259594062929228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000124 (n + 6) - 6).toNat

end

end A228216.P7273259594062929228

/-! ## A228216.P9246470833580309625

`A228218(Δ[A264443(n+1)]-1)`
-/

namespace A228216.P9246470833580309625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (f1 (n + 1) - f1 n - 1).toNat

end

end A228216.P9246470833580309625

/-!
# A228217: Number of second differences of arrays of length n+2 of numbers in 0..7.

The programs for A228217, there is no canonical definition to state claims against.
-/

/-! ## A228217.P17561723483990631402

`A228218(A055999(n+4))`
-/

namespace A228217.P17561723483990631402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A055999 (n + 4)).toNat

end

end A228217.P17561723483990631402

/-! ## A228217.P12573535234773963790

`A228218(A046691(n+5)-2)`
-/

namespace A228217.P12573535234773963790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A046691 (n + 5) - 2).toNat

end

end A228217.P12573535234773963790

/-! ## A228217.P14645475727741349140

`A228218(A000096(n+6)-5)`
-/

namespace A228217.P14645475727741349140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000096 (n + 6) - 5).toNat

end

end A228217.P14645475727741349140

/-! ## A228217.P8463514628074652680

`A228218(A000124(n+7)-7)`
-/

namespace A228217.P8463514628074652680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000124 (n + 7) - 7).toNat

end

end A228217.P8463514628074652680

/-! ## A228217.P15669170803442746619

`A228218(A000217(n+6)+n+1)`
-/

namespace A228217.P15669170803442746619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A228217.P15669170803442746619

/-!
# A228219: Number of second differences of arrays of length 4 of numbers in 0..n.

The programs for A228219, the canonical program `A228219.P1967605719202670755` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228219 has offset 1).

The definition of A228219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228219.P1967605719202670755

`∑[20*n+14]+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228219

/-- `∑[20*n+14]+1` -/
def P1967605719202670755.Spec : Prop :=
  ∀ n, (P1967605719202670755.a n : ℤ) = A228219 (n + 1)

theorem P1967605719202670755.correct : P1967605719202670755.Spec := by
  intro n
  simp only [A228219, Nat.add_sub_cancel]

end A228219

/-! ## A228219.P5956651719070955513

`∑[a(n-1)+20]` with `a(0)=15, a(1)=34`
-/

namespace A228219.P5956651719070955513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 34] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228219.P5956651719070955513

namespace A228219

/-- `∑[a(n-1)+20]` -/
def P5956651719070955513.Spec : Prop :=
  ∀ n, (P5956651719070955513.a n : ℤ) = A228219 (n + 1)

end A228219

/-! ## A228219.P4615698419023875883

`or(1, (10*(n+1)+4)*(n+1))`
-/

namespace A228219.P4615698419023875883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((10 * (n + 1) + 4) * (n + 1))

end

end A228219.P4615698419023875883

namespace A228219

/-- `or(1, (10*(n+1)+4)*(n+1))` -/
def P4615698419023875883.Spec : Prop :=
  ∀ n, (P4615698419023875883.a n : ℤ) = A228219 (n + 1)

end A228219

/-! ## A228219.P16703045042288086903

`xor(1, (10*(n+1)+4)*(n+1))`
-/

namespace A228219.P16703045042288086903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((10 * (n + 1) + 4) * (n + 1))

end

end A228219.P16703045042288086903

namespace A228219

/-- `xor(1, (10*(n+1)+4)*(n+1))` -/
def P16703045042288086903.Spec : Prop :=
  ∀ n, (P16703045042288086903.a n : ℤ) = A228219 (n + 1)

end A228219

/-! ## A228219.P13465745599563455934

`abs(5*A000217(2*(n+1))-n)`
-/

namespace A228219.P13465745599563455934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A000217 (2 * (n + 1)) - (n : ℤ)|

end

end A228219.P13465745599563455934

namespace A228219

/-- `abs(5*A000217(2*(n+1))-n)` -/
def P13465745599563455934.Spec : Prop :=
  ∀ n, P13465745599563455934.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P2673102838501173850

`abs((2*n+3)*(A016897(n)+1)-n)`
-/

namespace A228219.P2673102838501173850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 3 : ℤ) * (A016897 n + 1) - (n : ℤ)|

end

end A228219.P2673102838501173850

namespace A228219

/-- `abs((2*n+3)*(A016897(n)+1)-n)` -/
def P2673102838501173850.Spec : Prop :=
  ∀ n, P2673102838501173850.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P17912818293525082599

`A269585(n+1)%A061222(n)`
-/

namespace A228219.P17912818293525082599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269585 (n + 1)) (A061222 n)

end

end A228219.P17912818293525082599

namespace A228219

/-- `A269585(n+1)%A061222(n)` -/
def P17912818293525082599.Spec : Prop :=
  ∀ n, P17912818293525082599.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P10276049842387478607

`A272039(n+1)`
-/

namespace A228219.P10276049842387478607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 (n + 1)

end

end A228219.P10276049842387478607

namespace A228219

/-- `A272039(n+1)` -/
def P10276049842387478607.Spec : Prop :=
  ∀ n, P10276049842387478607.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P5108385643755108282

`Δ[A034720(n+1)]`
-/

namespace A228219.P5108385643755108282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228219.P5108385643755108282

namespace A228219

/-- `Δ[A034720(n+1)]` -/
def P5108385643755108282.Spec : Prop :=
  ∀ n, P5108385643755108282.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P7453300431865610449

`record[A272039(abs(1-n))]`
-/

namespace A228219.P7453300431865610449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228219.P7453300431865610449

namespace A228219

/-- `record[A272039(abs(1-n))]` -/
def P7453300431865610449.Spec : Prop :=
  ∀ n, P7453300431865610449.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P12266688667110278070

`∑[Δ[A005901(n)]+4]`
-/

namespace A228219.P12266688667110278070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228219.P12266688667110278070

namespace A228219

/-- `∑[Δ[A005901(n)]+4]` -/
def P12266688667110278070.Spec : Prop :=
  ∀ n, P12266688667110278070.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P2081175206309027563

`(A381196(n+1)+1)/2`
-/

namespace A228219.P2081175206309027563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381196 (n + 1) + 1 : ℚ) / 2

end

end A228219.P2081175206309027563

namespace A228219

/-- `(A381196(n+1)+1)/2` -/
def P2081175206309027563.Spec : Prop :=
  ∀ n, P2081175206309027563.a n = (A228219 (n + 1) : ℚ)

end A228219

/-! ## A228219.P1658849366025272187

`ceil(4*A016861(n+1)²/10)`
-/

namespace A228219.P1658849366025272187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * ((A016861 (n + 1) ^ 2 : ℚ) / 10)⌉

end

end A228219.P1658849366025272187

namespace A228219

/-- `ceil(4*A016861(n+1)²/10)` -/
def P1658849366025272187.Spec : Prop :=
  ∀ n, P1658849366025272187.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P11369840744520389417

`Δ[A035005(n+1)+(n+1)²]`
-/

namespace A228219.P11369840744520389417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035005 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228219.P11369840744520389417

namespace A228219

/-- `Δ[A035005(n+1)+(n+1)²]` -/
def P11369840744520389417.Spec : Prop :=
  ∀ n, P11369840744520389417.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P11103698297506785562

`Δ[A139757(n)-A006331(n)]`
-/

namespace A228219.P11103698297506785562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n - A006331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228219.P11103698297506785562

namespace A228219

/-- `Δ[A139757(n)-A006331(n)]` -/
def P11103698297506785562.Spec : Prop :=
  ∀ n, P11103698297506785562.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P16348235250185696632

`Δ[A034721(n+1)]`
-/

namespace A228219.P16348235250185696632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228219.P16348235250185696632

namespace A228219

/-- `Δ[A034721(n+1)]` -/
def P16348235250185696632.Spec : Prop :=
  ∀ n, P16348235250185696632.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P15838073745646018563

`Δ[A051867(n+1)+∑[A051874(n)]]`
-/

namespace A228219.P15838073745646018563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228219.P15838073745646018563

namespace A228219

/-- `Δ[A051867(n+1)+∑[A051874(n)]]` -/
def P15838073745646018563.Spec : Prop :=
  ∀ n, P15838073745646018563.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P6523373738554435314

`Δ[A033994(2*n+1)/2]`
-/

namespace A228219.P6523373738554435314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033994 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228219.P6523373738554435314

namespace A228219

/-- `Δ[A033994(2*n+1)/2]` -/
def P6523373738554435314.Spec : Prop :=
  ∀ n, P6523373738554435314.a n = (A228219 (n + 1) : ℚ)

end A228219

/-! ## A228219.P13858330975137531275

`abs(A001844(n)+A000384(2*n+3)-1)`
-/

namespace A228219.P13858330975137531275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001844 n + A000384 (2 * n + 3) - 1|

end

end A228219.P13858330975137531275

namespace A228219

/-- `abs(A001844(n)+A000384(2*n+3)-1)` -/
def P13858330975137531275.Spec : Prop :=
  ∀ n, P13858330975137531275.a n = A228219 (n + 1)

end A228219

/-! ## A228219.P517956674560572111

`A036408(A017293(n+1))`
-/

namespace A228219.P517956674560572111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 (A017293 (n + 1)).toNat

end

end A228219.P517956674560572111

namespace A228219

/-- `A036408(A017293(n+1))` -/
def P517956674560572111.Spec : Prop :=
  ∀ n, P517956674560572111.a n = A228219 (n + 1)

end A228219

/-!
# A228220: Number of second differences of arrays of length 5 of numbers in 0..n.

The programs for A228220, the canonical program `A228220.P15864215752540009007` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228220 has offset 1).

The definition of A228220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228220.P15864215752540009007

`A069131(n+1)+A068236(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A228220

/-- `A069131(n+1)+A068236(n)` -/
def P15864215752540009007.Spec : Prop :=
  ∀ n, P15864215752540009007.a n = A228220 (n + 1)

theorem P15864215752540009007.correct : P15864215752540009007.Spec := by
  intro n
  simp only [A228220, Nat.add_sub_cancel]

end A228220

/-! ## A228220.P17206135094733963076

`3*n+A068236(n)+A016778(n)`
-/

namespace A228220.P17206135094733963076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A068236 n + A016778 n)

end

end A228220.P17206135094733963076

namespace A228220

/-- `3*n+A068236(n)+A016778(n)` -/
def P17206135094733963076.Spec : Prop :=
  ∀ n, P17206135094733963076.a n = A228220 (n + 1)

end A228220

/-! ## A228220.P14824208721772175743

`A016778(n+1)+∑[15*A016754(n)]`
-/

namespace A228220.P14824208721772175743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228220.P14824208721772175743

namespace A228220

/-- `A016778(n+1)+∑[15*A016754(n)]` -/
def P14824208721772175743.Spec : Prop :=
  ∀ n, P14824208721772175743.a n = A228220 (n + 1)

end A228220

/-! ## A228220.P16431321093419665723

`n+1+A224454(n+1)+A033562(n+1)`
-/

namespace A228220.P16431321093419665723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A224454 (n + 1) + A033562 (n + 1))

end

end A228220.P16431321093419665723

namespace A228220

/-- `n+1+A224454(n+1)+A033562(n+1)` -/
def P16431321093419665723.Spec : Prop :=
  ∀ n, P16431321093419665723.a n = A228220 (n + 1)

end A228220

/-! ## A228220.P7348375279076768352

`A081272(n+1)+∑[A153786(2*n+1)]`
-/

namespace A228220.P7348375279076768352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153786 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081272 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228220.P7348375279076768352

namespace A228220

/-- `A081272(n+1)+∑[A153786(2*n+1)]` -/
def P7348375279076768352.Spec : Prop :=
  ∀ n, P7348375279076768352.a n = A228220 (n + 1)

end A228220

/-! ## A228220.P14069231191398638718

`A007202(2*(n+1))-∑[A005897(2*(n+1))]`
-/

namespace A228220.P14069231191398638718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228220.P14069231191398638718

namespace A228220

/-- `A007202(2*(n+1))-∑[A005897(2*(n+1))]` -/
def P14069231191398638718.Spec : Prop :=
  ∀ n, P14069231191398638718.a n = A228220 (n + 1)

end A228220

/-! ## A228220.P14456571988549390804

`A028387(3*n)+Δ[A022521(n)]`
-/

namespace A228220.P14456571988549390804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (3 * n) + (f1 (n + 1) - f1 n)

end

end A228220.P14456571988549390804

namespace A228220

/-- `A028387(3*n)+Δ[A022521(n)]` -/
def P14456571988549390804.Spec : Prop :=
  ∀ n, P14456571988549390804.a n = A228220 (n + 1)

end A228220

/-! ## A228220.P17838454688158269814

`A068236(n)+A028387(A008585(n))`
-/

namespace A228220.P17838454688158269814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068236 n + A028387 (A008585 n).toNat

end

end A228220.P17838454688158269814

namespace A228220

/-- `A068236(n)+A028387(A008585(n))` -/
def P17838454688158269814.Spec : Prop :=
  ∀ n, P17838454688158269814.a n = A228220 (n + 1)

end A228220

/-!
# A228221: Number of second differences of arrays of length 6 of numbers in 0..n.

The programs for A228221, the canonical program `A228221.P15390664916266380830` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228221 has offset 1).

The definition of A228221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228221.P15390664916266380830

`35*(n+1)^4+14*(n+1)^3-17*(n+1)²+30*(n+1)+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228221

/-- `35*(n+1)^4+14*(n+1)^3-17*(n+1)²+30*(n+1)+1` -/
def P15390664916266380830.Spec : Prop :=
  ∀ n, P15390664916266380830.a n = A228221 (n + 1)

theorem P15390664916266380830.correct : P15390664916266380830.Spec := by
  intro n
  simp only [A228221, Nat.add_sub_cancel]

end A228221

/-! ## A228221.P13281056456510800312

`A228218(A141214(n)+7)`
-/

namespace A228221.P13281056456510800312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A141214 n + 7).toNat

end

end A228221.P13281056456510800312

namespace A228221

/-- `A228218(A141214(n)+7)` -/
def P13281056456510800312.Spec : Prop :=
  ∀ n, P13281056456510800312.a n = A228221 (n + 1)

end A228221

/-! ## A228221.P15753545442167927029

`A228218(A052905(n)+9)`
-/

namespace A228221.P15753545442167927029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A052905 n + 9).toNat

end

end A228221.P15753545442167927029

namespace A228221

/-- `A228218(A052905(n)+9)` -/
def P15753545442167927029.Spec : Prop :=
  ∀ n, P15753545442167927029.a n = A228221 (n + 1)

end A228221

/-! ## A228221.P16717621140169328040

`A228218(A167614(n+2)+1)`
-/

namespace A228221.P16717621140169328040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A167614 (n + 2) + 1).toNat

end

end A228221.P16717621140169328040

namespace A228221

/-- `A228218(A167614(n+2)+1)` -/
def P16717621140169328040.Spec : Prop :=
  ∀ n, P16717621140169328040.a n = A228221 (n + 1)

end A228221

/-! ## A228221.P4919417922499651731

`A228218(A000096(n+2)+5)`
-/

namespace A228221.P4919417922499651731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000096 (n + 2) + 5).toNat

end

end A228221.P4919417922499651731

namespace A228221

/-- `A228218(A000096(n+2)+5)` -/
def P4919417922499651731.Spec : Prop :=
  ∀ n, P4919417922499651731.a n = A228221 (n + 1)

end A228221

/-!
# A228222: Number of second differences of arrays of length 7 of numbers in 0..n.

The programs for A228222, the canonical program `A228222.P130504514020120019` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228222 has offset 1).

The definition of A228222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228222.P130504514020120019

`56*(n+1)^5+14*(n+1)^4-108*(n+1)^3+289*(n+1)²-125*(n+1)+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228222

/-- `56*(n+1)^5+14*(n+1)^4-108*(n+1)^3+289*(n+1)²-125*(n+1)+1` -/
def P130504514020120019.Spec : Prop :=
  ∀ n, P130504514020120019.a n = A228222 (n + 1)

theorem P130504514020120019.correct : P130504514020120019.Spec := by
  intro n
  simp only [A228222, Nat.add_sub_cancel]

end A228222

/-! ## A228222.P6438367617339843214

`A228218(A000124(n+4)+4)`
-/

namespace A228222.P6438367617339843214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000124 (n + 4) + 4).toNat

end

end A228222.P6438367617339843214

namespace A228222

/-- `A228218(A000124(n+4)+4)` -/
def P6438367617339843214.Spec : Prop :=
  ∀ n, P6438367617339843214.a n = A228222 (n + 1)

end A228222

/-! ## A228222.P6527567648294067636

`A228218(A000096(n+3)+6)`
-/

namespace A228222.P6527567648294067636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000096 (n + 3) + 6).toNat

end

end A228222.P6527567648294067636

namespace A228222

/-- `A228218(A000096(n+3)+6)` -/
def P6527567648294067636.Spec : Prop :=
  ∀ n, P6527567648294067636.a n = A228222 (n + 1)

end A228222

/-! ## A228222.P11854149706981299566

`A228218(A000217(n+4)+5)`
-/

namespace A228222.P11854149706981299566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000217 (n + 4) + 5).toNat

end

end A228222.P11854149706981299566

namespace A228222

/-- `A228218(A000217(n+4)+5)` -/
def P11854149706981299566.Spec : Prop :=
  ∀ n, P11854149706981299566.a n = A228222 (n + 1)

end A228222

/-! ## A228222.P5913042132951287475

`A228218(A027379(n+2)+8)`
-/

namespace A228222.P5913042132951287475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A027379 (n + 2) + 8).toNat

end

end A228222.P5913042132951287475

namespace A228222

/-- `A228218(A027379(n+2)+8)` -/
def P5913042132951287475.Spec : Prop :=
  ∀ n, P5913042132951287475.a n = A228222 (n + 1)

end A228222

/-!
# A228223: Number of second differences of arrays of length 8 of numbers in 0..n.

The programs for A228223, there is no canonical definition to state claims against.
-/

/-! ## A228223.P11958000007915618635

`A228218(Δ[A264443(n)]+10)`
-/

namespace A228223.P11958000007915618635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (f1 (n + 1) - f1 n + 10).toNat

end

end A228223.P11958000007915618635

/-! ## A228223.P14861122469312276210

`A228218(A167499(n+4)+1)`
-/

namespace A228223.P14861122469312276210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A167499 (n + 4) + 1).toNat

end

end A228223.P14861122469312276210

/-! ## A228223.P5114290959252295350

`A228218(A000124(n+5)+5)`
-/

namespace A228223.P5114290959252295350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000124 (n + 5) + 5).toNat

end

end A228223.P5114290959252295350

/-! ## A228223.P4710505667222521767

`A228218(A000217(n+5)+6)`
-/

namespace A228223.P4710505667222521767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000217 (n + 5) + 6).toNat

end

end A228223.P4710505667222521767

/-! ## A228223.P7993780320579476755

`A228218(A052905(n+2)+11)`
-/

namespace A228223.P7993780320579476755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A052905 (n + 2) + 11).toNat

end

end A228223.P7993780320579476755

/-!
# A228224: Number of second differences of arrays of length 9 of numbers in 0..n.

The programs for A228224, there is no canonical definition to state claims against.
-/

/-! ## A228224.P9981418249644945873

`A228218(A000217(n+6)+7)`
-/

namespace A228224.P9981418249644945873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000217 (n + 6) + 7).toNat

end

end A228224.P9981418249644945873

/-! ## A228224.P4575249836113541280

`A228218(A152947(n+8)+6)`
-/

namespace A228224.P4575249836113541280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A152947 (n + 8) + 6).toNat

end

end A228224.P4575249836113541280

/-! ## A228224.P2312660208599206992

`A228218(A161680(n+7)+7)`
-/

namespace A228224.P2312660208599206992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A161680 (n + 7) + 7).toNat

end

end A228224.P2312660208599206992

/-! ## A228224.P16833983712801429768

`A228218(A000124(n+7)-(n+1))`
-/

namespace A228224.P16833983712801429768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A228224.P16833983712801429768

/-! ## A228224.P15773787992919843822

`A228218(A141214(n+7)-A008586(n+6))`
-/

namespace A228224.P15773787992919843822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (A141214 (n + 7) - A008586 (n + 6)).toNat

end

end A228224.P15773787992919843822

/-!
# A228227: Primes congruent to {7, 11} mod 16.

The programs for A228227, the canonical program `A228227.P14167742785937972576` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228227 has offset 1).

The definition of A228227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228227.P14167742785937972576

`p?[or(8, 12*n)-1]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228227

/-- `p?[or(8, 12*n)-1]` -/
def P14167742785937972576.Spec : Prop :=
  ∀ n, P14167742785937972576.a n = A228227 (n + 1)

theorem P14167742785937972576.correct : P14167742785937972576.Spec := by
  intro n
  simp only [A228227, Nat.add_sub_cancel]

end A228227

/-! ## A228227.P5240216229289265671

`p?[xor(5, a(n-1)+7)]` with `a(0)=7`
-/

namespace A228227.P5240216229289265671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  Nat.xor 5 (f1 (n - 1) + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228227.P5240216229289265671

namespace A228227

/-- `p?[xor(5, a(n-1)+7)]` -/
def P5240216229289265671.Spec : Prop :=
  ∀ n, (P5240216229289265671.a n : ℤ) = A228227 (n + 1)

end A228227

/-! ## A228227.P10402618152795533175

`p?[ogf((1+3x+3x^2+3x^3+6x^4)/(1-x-x^3+x^4))]`
-/

namespace A228227.P10402618152795533175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 3, 6] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P10402618152795533175

namespace A228227

/-- `p?[ogf((1+3x+3x^2+3x^3+6x^4)/(1-x-x^3+x^4))]` -/
def P10402618152795533175.Spec : Prop :=
  ∀ n, P10402618152795533175.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P5610315704702255142

`∪[A141194(n+1), A141195(n+1)]`
-/

namespace A228227.P5610315704702255142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228227.P5610315704702255142

namespace A228227

/-- `∪[A141194(n+1), A141195(n+1)]` -/
def P5610315704702255142.Spec : Prop :=
  ∀ n, (P5610315704702255142.a n : ℤ) = A228227 (n + 1)

end A228227

/-! ## A228227.P11450418243756137797

`p?[2*n-A134429(n)]`
-/

namespace A228227.P11450418243756137797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A134429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P11450418243756137797

namespace A228227

/-- `p?[2*n-A134429(n)]` -/
def P11450418243756137797.Spec : Prop :=
  ∀ n, P11450418243756137797.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P14967496547106430084

`p?[(2*n+1)*and(5, n-2)]`
-/

namespace A228227.P14967496547106430084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * Int.land 5 ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P14967496547106430084

namespace A228227

/-- `p?[(2*n+1)*and(5, n-2)]` -/
def P14967496547106430084.Spec : Prop :=
  ∀ n, P14967496547106430084.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P2889572013924428364

`p?[∑[A040024(n)+2]]`
-/

namespace A228227.P2889572013924428364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P2889572013924428364

namespace A228227

/-- `p?[∑[A040024(n)+2]]` -/
def P2889572013924428364.Spec : Prop :=
  ∀ n, P2889572013924428364.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P8387289027215454817

`p?[A214863(n+1)-4]`
-/

namespace A228227.P8387289027215454817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214863 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P8387289027215454817

namespace A228227

/-- `p?[A214863(n+1)-4]` -/
def P8387289027215454817.Spec : Prop :=
  ∀ n, P8387289027215454817.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P18262942644044742394

`p?[∑[A010131(2*n)+2]]`
-/

namespace A228227.P18262942644044742394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (2 * n) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P18262942644044742394

namespace A228227

/-- `p?[∑[A010131(2*n)+2]]` -/
def P18262942644044742394.Spec : Prop :=
  ∀ n, P18262942644044742394.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P5601219928372838504

`p?[∑[A040022(2*n)+2]]`
-/

namespace A228227.P5601219928372838504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040022 (2 * n) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P5601219928372838504

namespace A228227

/-- `p?[∑[A040022(2*n)+2]]` -/
def P5601219928372838504.Spec : Prop :=
  ∀ n, P5601219928372838504.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P3411345898197927245

`p?[2*A047621(n+1)+1]`
-/

namespace A228227.P3411345898197927245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047621 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P3411345898197927245

namespace A228227

/-- `p?[2*A047621(n+1)+1]` -/
def P3411345898197927245.Spec : Prop :=
  ∀ n, P3411345898197927245.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P934732910239254324

`p?[A067870(n+1)-2*n]`
-/

namespace A228227.P934732910239254324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067870 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P934732910239254324

namespace A228227

/-- `p?[A067870(n+1)-2*n]` -/
def P934732910239254324.Spec : Prop :=
  ∀ n, P934732910239254324.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P5438191869322696192

`p?[A016969(n)+2*A004442(n)]`
-/

namespace A228227.P5438191869322696192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + 2 * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P5438191869322696192

namespace A228227

/-- `p?[A016969(n)+2*A004442(n)]` -/
def P5438191869322696192.Spec : Prop :=
  ∀ n, P5438191869322696192.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P4506411310944934325

`p?[or(2, A219529(n+1))]`
-/

namespace A228227.P4506411310944934325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A219529 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P4506411310944934325

namespace A228227

/-- `p?[or(2, A219529(n+1))]` -/
def P4506411310944934325.Spec : Prop :=
  ∀ n, P4506411310944934325.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P6041679468778338859

`p?[eq[n+3, or(10, n+1)]]`
-/

namespace A228227.P6041679468778338859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 10 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228227.P6041679468778338859

namespace A228227

/-- `p?[eq[n+3, or(10, n+1)]]` -/
def P6041679468778338859.Spec : Prop :=
  ∀ n, (P6041679468778338859.a n : ℤ) = A228227 (n + 1)

end A228227

/-! ## A228227.P786725445892674481

`p?[lt[xor(10, n+3), n-3]]`
-/

namespace A228227.P786725445892674481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228227.P786725445892674481

namespace A228227

/-- `p?[lt[xor(10, n+3), n-3]]` -/
def P786725445892674481.Spec : Prop :=
  ∀ n, (P786725445892674481.a n : ℤ) = A228227 (n + 1)

end A228227

/-! ## A228227.P6531184837720335274

`p?[∑[A155158(n+2)]]`
-/

namespace A228227.P6531184837720335274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155158 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P6531184837720335274

namespace A228227

/-- `p?[∑[A155158(n+2)]]` -/
def P6531184837720335274.Spec : Prop :=
  ∀ n, P6531184837720335274.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P6700560369793348625

`p?[A214864(n+1)-3]`
-/

namespace A228227.P6700560369793348625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214864 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P6700560369793348625

namespace A228227

/-- `p?[A214864(n+1)-3]` -/
def P6700560369793348625.Spec : Prop :=
  ∀ n, P6700560369793348625.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P17923162320563651861

`p?[A013574(n+2)+n]`
-/

namespace A228227.P17923162320563651861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P17923162320563651861

namespace A228227

/-- `p?[A013574(n+2)+n]` -/
def P17923162320563651861.Spec : Prop :=
  ∀ n, P17923162320563651861.a n = A228227 (n + 1)

end A228227

/-! ## A228227.P12508305077744579280

`p?[∑[A134267(n+1)+1]]`
-/

namespace A228227.P12508305077744579280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134267 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228227.P12508305077744579280

namespace A228227

/-- `p?[∑[A134267(n+1)+1]]` -/
def P12508305077744579280.Spec : Prop :=
  ∀ n, P12508305077744579280.a n = A228227 (n + 1)

end A228227

/-!
# A228228: Primes congruent to {3, 5, 13, 15} mod 16.

The programs for A228228, the canonical program `A228228.P9666619117873136366` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228228 has offset 1).

The definition of A228228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228228.P4075849404842115493

`p?[A010163(n)+2*n]`
-/

namespace A228228.P4075849404842115493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010163 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P4075849404842115493

namespace A228228

/-- `p?[A010163(n)+2*n]` -/
def P4075849404842115493.Spec : Prop :=
  ∀ n, P4075849404842115493.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P9666619117873136366

`p?[2*A047554(n+1)+1]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A228228

/-- `p?[2*A047554(n+1)+1]` -/
def P9666619117873136366.Spec : Prop :=
  ∀ n, P9666619117873136366.a n = A228228 (n + 1)

theorem P9666619117873136366.correct : P9666619117873136366.Spec := by
  intro n
  simp only [A228228, Nat.add_sub_cancel]

end A228228

/-! ## A228228.P1287220712682828360

`p?[2*A047532(n+1)-1]`
-/

namespace A228228.P1287220712682828360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047532 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P1287220712682828360

namespace A228228

/-- `p?[2*A047532(n+1)-1]` -/
def P1287220712682828360.Spec : Prop :=
  ∀ n, P1287220712682828360.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P8998786594933231450

`p?[2*A047460(n+1)-3]`
-/

namespace A228228.P8998786594933231450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047460 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P8998786594933231450

namespace A228228

/-- `p?[2*A047460(n+1)-3]` -/
def P8998786594933231450.Spec : Prop :=
  ∀ n, P8998786594933231450.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P12928863844263811618

`p?[A047615(n+1)-(n+1)%4]`
-/

namespace A228228.P12928863844263811618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1) - (((n + 1) % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P12928863844263811618

namespace A228228

/-- `p?[A047615(n+1)-(n+1)%4]` -/
def P12928863844263811618.Spec : Prop :=
  ∀ n, P12928863844263811618.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P6544101214748339156

`p?[abs(1-2*(A047439(n+1)+2))]`
-/

namespace A228228.P6544101214748339156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * (A047439 (n + 1) + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P6544101214748339156

namespace A228228

/-- `p?[abs(1-2*(A047439(n+1)+2))]` -/
def P6544101214748339156.Spec : Prop :=
  ∀ n, P6544101214748339156.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P3044455214048936781

`p?[A069908(n+1)+1]`
-/

namespace A228228.P3044455214048936781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069908 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P3044455214048936781

namespace A228228

/-- `p?[A069908(n+1)+1]` -/
def P3044455214048936781.Spec : Prop :=
  ∀ n, P3044455214048936781.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P8824796590349572626

`p?[2*(n+1)-A040846(n)]`
-/

namespace A228228.P8824796590349572626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A040846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P8824796590349572626

namespace A228228

/-- `p?[2*(n+1)-A040846(n)]` -/
def P8824796590349572626.Spec : Prop :=
  ∀ n, P8824796590349572626.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P17821833325620765913

`p?[A047485(A047490(n+2))]`
-/

namespace A228228.P17821833325620765913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047485 (A047490 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P17821833325620765913

namespace A228228

/-- `p?[A047485(A047490(n+2))]` -/
def P17821833325620765913.Spec : Prop :=
  ∀ n, P17821833325620765913.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P17644039242730296590

`record[A006530(A069908(n+1)+1)]`
-/

namespace A228228.P17644039242730296590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A069908 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228228.P17644039242730296590

namespace A228228

/-- `record[A006530(A069908(n+1)+1)]` -/
def P17644039242730296590.Spec : Prop :=
  ∀ n, P17644039242730296590.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P14592918935413735180

`p?[4*n-A032766(A004777(n+1))]`
-/

namespace A228228.P14592918935413735180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A032766 (A004777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P14592918935413735180

namespace A228228

/-- `p?[4*n-A032766(A004777(n+1))]` -/
def P14592918935413735180.Spec : Prop :=
  ∀ n, P14592918935413735180.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P10675624739468957284

`p?[and(1, A006368(n))*A004273(n+1)]`
-/

namespace A228228.P10675624739468957284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006368 n) * A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P10675624739468957284

namespace A228228

/-- `p?[and(1, A006368(n))*A004273(n+1)]` -/
def P10675624739468957284.Spec : Prop :=
  ∀ n, P10675624739468957284.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P9811905147831642665

`p?[A047247(A047247(n+1))-A002265(n)]`
-/

namespace A228228.P9811905147831642665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (A047247 (n + 1)).toNat - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P9811905147831642665

namespace A228228

/-- `p?[A047247(A047247(n+1))-A002265(n)]` -/
def P9811905147831642665.Spec : Prop :=
  ∀ n, P9811905147831642665.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P4095681655640704235

`record[A014963(A069908(n+1)+1)]`
-/

namespace A228228.P4095681655640704235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A069908 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228228.P4095681655640704235

namespace A228228

/-- `record[A014963(A069908(n+1)+1)]` -/
def P4095681655640704235.Spec : Prop :=
  ∀ n, P4095681655640704235.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P14575703897449485030

`p?[A042965(A042965(n+2))-A010892(2*n)]`
-/

namespace A228228.P14575703897449485030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A042965 (n + 2)).toNat - A010892 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P14575703897449485030

namespace A228228

/-- `p?[A042965(A042965(n+2))-A010892(2*n)]` -/
def P14575703897449485030.Spec : Prop :=
  ∀ n, P14575703897449485030.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P2662011806934426435

`p?[A004773(2*n)-A004773(A008620(2*n+1))]`
-/

namespace A228228.P2662011806934426435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (2 * n) - A004773 (A008620 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P2662011806934426435

namespace A228228

/-- `p?[A004773(2*n)-A004773(A008620(2*n+1))]` -/
def P2662011806934426435.Spec : Prop :=
  ∀ n, P2662011806934426435.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P249171380690101604

`p?[A004396(A217562(2*(n+1))-n)]`
-/

namespace A228228.P249171380690101604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A217562 (2 * (n + 1)) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P249171380690101604

namespace A228228

/-- `p?[A004396(A217562(2*(n+1))-n)]` -/
def P249171380690101604.Spec : Prop :=
  ∀ n, P249171380690101604.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P865575534139383227

`p?[A047481(2*n+1)-A008620(A047481(2*n+1))]`
-/

namespace A228228.P865575534139383227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (2 * n + 1) - A008620 (A047481 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P865575534139383227

namespace A228228

/-- `p?[A047481(2*n+1)-A008620(A047481(2*n+1))]` -/
def P865575534139383227.Spec : Prop :=
  ∀ n, P865575534139383227.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P9817730245339882730

`p?[A002264(A273669(n+2))+n]`
-/

namespace A228228.P9817730245339882730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A273669 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P9817730245339882730

namespace A228228

/-- `p?[A002264(A273669(n+2))+n]` -/
def P9817730245339882730.Spec : Prop :=
  ∀ n, P9817730245339882730.a n = A228228 (n + 1)

end A228228

/-! ## A228228.P5592211747364443566

`p?[A002159(n+1)]`
-/

namespace A228228.P5592211747364443566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228228.P5592211747364443566

namespace A228228

/-- `p?[A002159(n+1)]` -/
def P5592211747364443566.Spec : Prop :=
  ∀ n, P5592211747364443566.a n = A228228 (n + 1)

end A228228

/-!
# A228229: Recurrence a(n) = n*(n + 1)*a(n-1) + 1 with a(0) = 1.

The programs for A228229, the canonical program `A228229.P3462332798507587330` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228229 has offset 0).

The definition of A228229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*a(n-1)+1` (program `A228229.P3462332798507587330`, by `A228229.P3462332798507587330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228229.P3462332798507587330

`n*(n+1)*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228229

/-- `n*(n+1)*a(n-1)+1` -/
def P3462332798507587330.Spec : Prop :=
  ∀ n, (P3462332798507587330.a n : ℤ) = A228229 n

theorem P3462332798507587330.correct : P3462332798507587330.Spec := by
  intro n
  simp only [A228229]

end A228229

/-! ## A228229.P2515425611640245276

`2*a(n-1)*∑[n]+1` with `a(0)=1`
-/

namespace A228229.P2515425611640245276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A228229.P2515425611640245276

namespace A228229

/-- `2*a(n-1)*∑[n]+1` -/
def P2515425611640245276.Spec : Prop :=
  ∀ n, (P2515425611640245276.a n : ℤ) = A228229 n

end A228229

/-! ## A228229.P13231564915263267585

`or(1, 2*a(n-1)*∑[n])` with `a(0)=1`
-/

namespace A228229.P13231564915263267585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A228229.P13231564915263267585

namespace A228229

/-- `or(1, 2*a(n-1)*∑[n])` -/
def P13231564915263267585.Spec : Prop :=
  ∀ n, (P13231564915263267585.a n : ℤ) = A228229 n

end A228229

/-! ## A228229.P11229737069467550330

`xor(1, 2*a(n-1)*∑[n])` with `a(0)=1`
-/

namespace A228229.P11229737069467550330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 * a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A228229.P11229737069467550330

namespace A228229

/-- `xor(1, 2*a(n-1)*∑[n])` -/
def P11229737069467550330.Spec : Prop :=
  ∀ n, (P11229737069467550330.a n : ℤ) = A228229 n

end A228229

/-! ## A228229.P8092878358597906040

`1-a(n-1)*∑[-(2*n)]` with `a(0)=1`
-/

namespace A228229.P8092878358597906040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228229.P8092878358597906040

namespace A228229

/-- `1-a(n-1)*∑[-(2*n)]` -/
def P8092878358597906040.Spec : Prop :=
  ∀ n, P8092878358597906040.a n = A228229 n

end A228229

/-!
# A228230: Recurrence a(n) = (1/2)*n*(n+1)*a(n-1) + 1 with a(0) = 1.

The programs for A228230, the canonical program `A228230.P13121038214088114883` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228230 has offset 0).

The definition of A228230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228230.P13121038214088114883

`1/2*n*(n+1)*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228230

/-- `1/2*n*(n+1)*a(n-1)+1` -/
def P13121038214088114883.Spec : Prop :=
  ∀ n, P13121038214088114883.a n = (A228230 n : ℚ)

end A228230

/-! ## A228230.P1232870945640718406

`a(n-1)*∑[n]+1` with `a(0)=1`
-/

namespace A228230.P1232870945640718406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A228230.P1232870945640718406

namespace A228230

/-- `a(n-1)*∑[n]+1` -/
def P1232870945640718406.Spec : Prop :=
  ∀ n, (P1232870945640718406.a n : ℤ) = A228230 n

end A228230

/-! ## A228230.P9418543801776096313

`1-a(n-1)*∑[-n]` with `a(0)=1`
-/

namespace A228230.P9418543801776096313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228230.P9418543801776096313

namespace A228230

/-- `1-a(n-1)*∑[-n]` -/
def P9418543801776096313.Spec : Prop :=
  ∀ n, P9418543801776096313.a n = A228230 n

end A228230

/-! ## A228230.P4932218979184672134

`a(n-1)/∑[n]^(-1)+1` with `a(0)=1`
-/

namespace A228230.P4932218979184672134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ) + 1

end

end A228230.P4932218979184672134

namespace A228230

/-- `a(n-1)/∑[n]^(-1)+1` -/
def P4932218979184672134.Spec : Prop :=
  ∀ n, P4932218979184672134.a n = (A228230 n : ℚ)

end A228230

/-! ## A228230.P2531410374468696265

`1+n*(n+1)/2*a(n-1)` with `a(0)=1`
-/

namespace A228230.P2531410374468696265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 + (n * (n + 1) : ℚ) / 2 * a (n - 1)

end

end A228230.P2531410374468696265

namespace A228230

/-- `1+n*(n+1)/2*a(n-1)` -/
def P2531410374468696265.Spec : Prop :=
  ∀ n, P2531410374468696265.a n = (A228230 n : ℚ)

end A228230

/-!
# A228231: Number of equivalence classes in S_n under the {123, 321} {132, 231}-equivalence.

The programs for A228231, there is no canonical definition to state claims against.
-/

/-! ## A228231.P3908423850030701554

`A227550(A007590(n+4))`
-/

namespace A228231.P3908423850030701554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 (A007590 (n + 4)).toNat

end

end A228231.P3908423850030701554

/-! ## A228231.P18149462929298626730

`A227550(A004526((n+4)²))`
-/

namespace A228231.P18149462929298626730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 (A004526 ((n + 4) ^ 2)).toNat

end

end A228231.P18149462929298626730

/-! ## A228231.P11920062487732892287

`A227550(A123108((n+4)²))`
-/

namespace A228231.P11920062487732892287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 (A123108 ((n + 4) ^ 2)).toNat

end

end A228231.P11920062487732892287

/-! ## A228231.P10411696405584840616

`A227550(A055998(n+2)-A004524(n))`
-/

namespace A228231.P10411696405584840616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 (A055998 (n + 2) - A004524 n).toNat

end

end A228231.P10411696405584840616

/-! ## A228231.P11213348196344257862

`A227550(A080513(n)+A000217(n+3))`
-/

namespace A228231.P11213348196344257862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 (A080513 n + A000217 (n + 3)).toNat

end

end A228231.P11213348196344257862

/-!
# A228232: Number of strict Gaussian primes of norm less than or equal to n in the first quadrant.

The programs for A228232, the canonical program `A228232.P13142545516159782405` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228232 has offset 1).

The definition of A228232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228232.P18083489645767230816

`∑[A014085(n)]-A348193(n+1)`
-/

namespace A228232.P18083489645767230816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A348193 (n + 1)

end

end A228232.P18083489645767230816

namespace A228232

/-- `∑[A014085(n)]-A348193(n+1)` -/
def P18083489645767230816.Spec : Prop :=
  ∀ n, P18083489645767230816.a n = A228232 (n + 1)

end A228232

/-! ## A228232.P17051812841252163242

`A348196(n+1)+A228234(n+1)`
-/

namespace A228232.P17051812841252163242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1) + A228234 (n + 1)

end

end A228232.P17051812841252163242

namespace A228232

/-- `A348196(n+1)+A228234(n+1)` -/
def P17051812841252163242.Spec : Prop :=
  ∀ n, P17051812841252163242.a n = A228232 (n + 1)

end A228232

/-! ## A228232.P4177064165598467860

`A062711(n+1)-A066490(n+1)`
-/

namespace A228232.P4177064165598467860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) - A066490 (n + 1)

end

end A228232.P4177064165598467860

namespace A228232

/-- `A062711(n+1)-A066490(n+1)` -/
def P4177064165598467860.Spec : Prop :=
  ∀ n, P4177064165598467860.a n = A228232 (n + 1)

theorem P4177064165598467860.correct : P4177064165598467860.Spec := by
  intro n
  simp only [A228232, Nat.add_sub_cancel, A228232.P4177064165598467860.a, A228232.P13142545516159782405.a, A057427, A057427.P3058147525557661423.a, A062711, A062711.P2771895812179949619.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A348196, A348196.P10190356890292704948.a, A000007, A000007.P6599383543502402472.a, A066339, A066339.P5957712968518338971.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, A101264, A101264.P9977125953316836564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228232

/-! ## A228232.P6843527973393794496

`A057428(n)+2*A228234(n+1)`
-/

namespace A228232.P6843527973393794496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 2 * A228234 (n + 1)

end

end A228232.P6843527973393794496

namespace A228232

/-- `A057428(n)+2*A228234(n+1)` -/
def P6843527973393794496.Spec : Prop :=
  ∀ n, P6843527973393794496.a n = A228232 (n + 1)

end A228232

/-! ## A228232.P13142545516159782405

`A057427(n)+2*A348196(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A228232

/-- `A057427(n)+2*A348196(n+1)` -/
def P13142545516159782405.Spec : Prop :=
  ∀ n, P13142545516159782405.a n = A228232 (n + 1)

theorem P13142545516159782405.correct : P13142545516159782405.Spec := by
  intro n
  simp only [A228232, Nat.add_sub_cancel]

end A228232

/-! ## A228232.P8365089316306486711

`2*A228234(n+1)-A057427(n)`
-/

namespace A228232.P8365089316306486711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228234 (n + 1) - A057427 n

end

end A228232.P8365089316306486711

namespace A228232

/-- `2*A228234(n+1)-A057427(n)` -/
def P8365089316306486711.Spec : Prop :=
  ∀ n, P8365089316306486711.a n = A228232 (n + 1)

end A228232

/-! ## A228232.P6552905395591722568

`2*A348196(n+1)-A057428(n)`
-/

namespace A228232.P6552905395591722568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348196 (n + 1) - A057428 n

end

end A228232.P6552905395591722568

namespace A228232

/-- `2*A348196(n+1)-A057428(n)` -/
def P6552905395591722568.Spec : Prop :=
  ∀ n, P6552905395591722568.a n = A228232 (n + 1)

theorem P6552905395591722568.correct : P6552905395591722568.Spec := by
  intro n
  simp only [A228232, Nat.add_sub_cancel, A228232.P6552905395591722568.a, A228232.P13142545516159782405.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A348196, A348196.P10190356890292704948.a, A000007, A000007.P6599383543502402472.a, A066339, A066339.P5957712968518338971.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, A101264, A101264.P9977125953316836564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228232

/-! ## A228232.P6241136413233319835

`2*A062711(n+1)-A228233(n+1)`
-/

namespace A228232.P6241136413233319835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062711 (n + 1) - A228233 (n + 1)

end

end A228232.P6241136413233319835

namespace A228232

/-- `2*A062711(n+1)-A228233(n+1)` -/
def P6241136413233319835.Spec : Prop :=
  ∀ n, P6241136413233319835.a n = A228232 (n + 1)

theorem P6241136413233319835.correct : P6241136413233319835.Spec := by
  intro n
  simp only [A228232, Nat.add_sub_cancel, A228232.P6241136413233319835.a, A228232.P13142545516159782405.a, A057427, A057427.P3058147525557661423.a, A062711, A062711.P2771895812179949619.a, A228233, A228233.P17833368769692923615.a, A348196, A348196.P10190356890292704948.a, A000007, A000007.P6599383543502402472.a, A066339, A066339.P5957712968518338971.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, A101264, A101264.P9977125953316836564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228232

/-! ## A228232.P14439208573924077408

`A228233(n+1)-2*A066490(n+1)`
-/

namespace A228232.P14439208573924077408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228233 (n + 1) - 2 * A066490 (n + 1)

end

end A228232.P14439208573924077408

namespace A228232

/-- `A228233(n+1)-2*A066490(n+1)` -/
def P14439208573924077408.Spec : Prop :=
  ∀ n, P14439208573924077408.a n = A228232 (n + 1)

theorem P14439208573924077408.correct : P14439208573924077408.Spec := by
  intro n
  simp only [A228232, Nat.add_sub_cancel, A228232.P14439208573924077408.a, A228232.P13142545516159782405.a, A057427, A057427.P3058147525557661423.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A228233, A228233.P17833368769692923615.a, A348196, A348196.P10190356890292704948.a, A000007, A000007.P6599383543502402472.a, A066339, A066339.P5957712968518338971.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, A101264, A101264.P9977125953316836564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228232

/-! ## A228232.P1327759579408035163

`A062711(n+1)-(A066520(n+1)+A066339(n+1))`
-/

namespace A228232.P1327759579408035163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) - (A066520 (n + 1) + A066339 (n + 1))

end

end A228232.P1327759579408035163

namespace A228232

/-- `A062711(n+1)-(A066520(n+1)+A066339(n+1))` -/
def P1327759579408035163.Spec : Prop :=
  ∀ n, P1327759579408035163.a n = A228232 (n + 1)

theorem P1327759579408035163.correct : P1327759579408035163.Spec := by
  intro n
  simp only [A228232, Nat.add_sub_cancel, A228232.P1327759579408035163.a, A228232.P13142545516159782405.a, A057427, A057427.P3058147525557661423.a, A062711, A062711.P2771895812179949619.a, A066339, A066339.P5957712968518338971.a, A066520, A066520.P7437655284551336730.a, A348196, A348196.P10190356890292704948.a, A000007, A000007.P6599383543502402472.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228232

/-! ## A228232.P477177097377173970

`A062711(n+1)+A228234(n+1)-A228235(n+1)`
-/

namespace A228232.P477177097377173970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) + (A228234 (n + 1) - A228235 (n + 1))

end

end A228232.P477177097377173970

namespace A228232

/-- `A062711(n+1)+A228234(n+1)-A228235(n+1)` -/
def P477177097377173970.Spec : Prop :=
  ∀ n, P477177097377173970.a n = A228232 (n + 1)

end A228232

/-! ## A228232.P6260948602334276977

`A004273(A228234(n+1))`
-/

namespace A228232.P6260948602334276977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A228234 (n + 1)).toNat

end

end A228232.P6260948602334276977

namespace A228232

/-- `A004273(A228234(n+1))` -/
def P6260948602334276977.Spec : Prop :=
  ∀ n, P6260948602334276977.a n = A228232 (n + 1)

end A228232

/-! ## A228232.P15192738029526390040

`A331134((n+1)²)`
-/

namespace A228232.P15192738029526390040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331134 ((n + 1) ^ 2)

end

end A228232.P15192738029526390040

namespace A228232

/-- `A331134((n+1)²)` -/
def P15192738029526390040.Spec : Prop :=
  ∀ n, P15192738029526390040.a n = A228232 (n + 1)

end A228232

/-!
# A228233: Number of Gaussian primes of norm less than or equal to n in the first quadrant.

The programs for A228233, the canonical program `A228233.P17833368769692923615` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228233 has offset 1).

The definition of A228233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228233.P14465954419435739701

`A066490(n+1)+A062711(n+1)`
-/

namespace A228233.P14465954419435739701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (n + 1) + A062711 (n + 1)

end

end A228233.P14465954419435739701

namespace A228233

/-- `A066490(n+1)+A062711(n+1)` -/
def P14465954419435739701.Spec : Prop :=
  ∀ n, P14465954419435739701.a n = A228233 (n + 1)

theorem P14465954419435739701.correct : P14465954419435739701.Spec := by
  intro n
  simp only [A228233, Nat.add_sub_cancel, A228233.P14465954419435739701.a, A228233.P17833368769692923615.a, A062711, A062711.P2771895812179949619.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A228232, A228232.P13142545516159782405.a, A057427, A057427.P3058147525557661423.a, A348196, A348196.P10190356890292704948.a, A000007, A000007.P6599383543502402472.a, A066339, A066339.P5957712968518338971.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228233

/-! ## A228233.P17833368769692923615

`A228232(n+1)+2*A066490(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A228233

/-- `A228232(n+1)+2*A066490(n+1)` -/
def P17833368769692923615.Spec : Prop :=
  ∀ n, P17833368769692923615.a n = A228233 (n + 1)

theorem P17833368769692923615.correct : P17833368769692923615.Spec := by
  intro n
  simp only [A228233, Nat.add_sub_cancel]

end A228233

/-! ## A228233.P15163549866115030301

`2*A062711(n+1)-A228232(n+1)`
-/

namespace A228233.P15163549866115030301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062711 (n + 1) - A228232 (n + 1)

end

end A228233.P15163549866115030301

namespace A228233

/-- `2*A062711(n+1)-A228232(n+1)` -/
def P15163549866115030301.Spec : Prop :=
  ∀ n, P15163549866115030301.a n = A228233 (n + 1)

theorem P15163549866115030301.correct : P15163549866115030301.Spec := by
  intro n
  simp only [A228233, Nat.add_sub_cancel, A228233.P15163549866115030301.a, A228233.P17833368769692923615.a, A062711, A062711.P2771895812179949619.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A228232, A228232.P13142545516159782405.a, A057427, A057427.P3058147525557661423.a, A348196, A348196.P10190356890292704948.a, A000007, A000007.P6599383543502402472.a, A066339, A066339.P5957712968518338971.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228233

/-! ## A228233.P1385105748255671685

`A062711(n+1)+A066520(n+1)+A066339(n+1)`
-/

namespace A228233.P1385105748255671685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) + (A066520 (n + 1) + A066339 (n + 1))

end

end A228233.P1385105748255671685

namespace A228233

/-- `A062711(n+1)+A066520(n+1)+A066339(n+1)` -/
def P1385105748255671685.Spec : Prop :=
  ∀ n, P1385105748255671685.a n = A228233 (n + 1)

theorem P1385105748255671685.correct : P1385105748255671685.Spec := by
  intro n
  simp only [A228233, Nat.add_sub_cancel, A228233.P1385105748255671685.a, A228233.P17833368769692923615.a, A062711, A062711.P2771895812179949619.a, A066339, A066339.P5957712968518338971.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A066520, A066520.P7437655284551336730.a, A228232, A228232.P13142545516159782405.a, A057427, A057427.P3058147525557661423.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, A348196, A348196.P10190356890292704948.a, A000007, A000007.P6599383543502402472.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A228233

/-! ## A228233.P9231817474728574086

`A062711(n+1)+A228235(n+1)-A228234(n+1)`
-/

namespace A228233.P9231817474728574086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) + (A228235 (n + 1) - A228234 (n + 1))

end

end A228233.P9231817474728574086

namespace A228233

/-- `A062711(n+1)+A228235(n+1)-A228234(n+1)` -/
def P9231817474728574086.Spec : Prop :=
  ∀ n, P9231817474728574086.a n = A228233 (n + 1)

end A228233

/-! ## A228233.P17810287787682395505

`A004273(A228235(n+1))`
-/

namespace A228233.P17810287787682395505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A228235 (n + 1)).toNat

end

end A228233.P17810287787682395505

namespace A228233

/-- `A004273(A228235(n+1))` -/
def P17810287787682395505.Spec : Prop :=
  ∀ n, P17810287787682395505.a n = A228233 (n + 1)

end A228233

/-! ## A228233.P14357871790898974490

`A014681(2*A228235(n+1))`
-/

namespace A228233.P14357871790898974490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A228235 (n + 1)).toNat

end

end A228233.P14357871790898974490

namespace A228233

/-- `A014681(2*A228235(n+1))` -/
def P14357871790898974490.Spec : Prop :=
  ∀ n, P14357871790898974490.a n = A228233 (n + 1)

end A228233

/-!
# A228234: Number of strict Gaussian primes of norm less than or equal to n in the first quadrant on or below the first diagonal.

The programs for A228234, the canonical program `A228234.P17208772115777883169` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228234 has offset 1).

The definition of A228234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228234.P17208772115777883169

`A077766(n)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A228234

/-- `A077766(n)+a(n-1)` -/
def P17208772115777883169.Spec : Prop :=
  ∀ n, P17208772115777883169.a n = A228234 (n + 1)

theorem P17208772115777883169.correct : P17208772115777883169.Spec := by
  intro n
  simp only [A228234, Nat.add_sub_cancel]

end A228234

/-! ## A228234.P14313632312730100627

`A348196(n+1)+A057427(n)`
-/

namespace A228234.P14313632312730100627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1) + A057427 n

end

end A228234.P14313632312730100627

namespace A228234

/-- `A348196(n+1)+A057427(n)` -/
def P14313632312730100627.Spec : Prop :=
  ∀ n, P14313632312730100627.a n = A228234 (n + 1)

end A228234

/-! ## A228234.P16850978503990713140

`A348196(n+1)-A057428(n)`
-/

namespace A228234.P16850978503990713140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1) - A057428 n

end

end A228234.P16850978503990713140

namespace A228234

/-- `A348196(n+1)-A057428(n)` -/
def P16850978503990713140.Spec : Prop :=
  ∀ n, P16850978503990713140.a n = A228234 (n + 1)

end A228234

/-! ## A228234.P11937715065932381222

`A228235(n+1)-A066490(n+1)`
-/

namespace A228234.P11937715065932381222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228235 (n + 1) - A066490 (n + 1)

end

end A228234.P11937715065932381222

namespace A228234

/-- `A228235(n+1)-A066490(n+1)` -/
def P11937715065932381222.Spec : Prop :=
  ∀ n, P11937715065932381222.a n = A228234 (n + 1)

end A228234

/-! ## A228234.P17497164771960975898

`A228232(n+1)-A348196(n+1)`
-/

namespace A228234.P17497164771960975898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228232 (n + 1) - A348196 (n + 1)

end

end A228234.P17497164771960975898

namespace A228234

/-- `A228232(n+1)-A348196(n+1)` -/
def P17497164771960975898.Spec : Prop :=
  ∀ n, P17497164771960975898.a n = A228234 (n + 1)

end A228234

/-! ## A228234.P14677095566639467679

`A062711(n+1)+A228235(n+1)-A228233(n+1)`
-/

namespace A228234.P14677095566639467679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) + (A228235 (n + 1) - A228233 (n + 1))

end

end A228234.P14677095566639467679

namespace A228234

/-- `A062711(n+1)+A228235(n+1)-A228233(n+1)` -/
def P14677095566639467679.Spec : Prop :=
  ∀ n, P14677095566639467679.a n = A228234 (n + 1)

end A228234

/-! ## A228234.P5008298514819319906

`A228232(n+1)+A228235(n+1)-A062711(n+1)`
-/

namespace A228234.P5008298514819319906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228232 (n + 1) + (A228235 (n + 1) - A062711 (n + 1))

end

end A228234.P5008298514819319906

namespace A228234

/-- `A228232(n+1)+A228235(n+1)-A062711(n+1)` -/
def P5008298514819319906.Spec : Prop :=
  ∀ n, P5008298514819319906.a n = A228234 (n + 1)

end A228234

/-! ## A228234.P11110924787324433497

`A001057(A228232(n+1))`
-/

namespace A228234.P11110924787324433497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A228232 (n + 1)).toNat

end

end A228234.P11110924787324433497

namespace A228234

/-- `A001057(A228232(n+1))` -/
def P11110924787324433497.Spec : Prop :=
  ∀ n, P11110924787324433497.a n = A228234 (n + 1)

end A228234

/-! ## A228234.P13636474947087736857

`A004524(A228232(n+1)+2)`
-/

namespace A228234.P13636474947087736857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A228232 (n + 1) + 2).toNat

end

end A228234.P13636474947087736857

namespace A228234

/-- `A004524(A228232(n+1)+2)` -/
def P13636474947087736857.Spec : Prop :=
  ∀ n, P13636474947087736857.a n = A228234 (n + 1)

end A228234

/-!
# A228235: Number of Gaussian primes of norm less than or equal to n in the first quadrant on or below the first diagonal.

The programs for A228235, the canonical program `A228235.P13597145891255613777` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228235 has offset 1).

The definition of A228235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228235.P13597145891255613777

`ceil(A228233(n+1)/2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A228235

/-- `ceil(A228233(n+1)/2)` -/
def P13597145891255613777.Spec : Prop :=
  ∀ n, P13597145891255613777.a n = A228235 (n + 1)

theorem P13597145891255613777.correct : P13597145891255613777.Spec := by
  intro n
  simp only [A228235, Nat.add_sub_cancel]

end A228235

/-! ## A228235.P12420818373448764190

`A228234(n+1)+A066490(n+1)`
-/

namespace A228235.P12420818373448764190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228234 (n + 1) + A066490 (n + 1)

end

end A228235.P12420818373448764190

namespace A228235

/-- `A228234(n+1)+A066490(n+1)` -/
def P12420818373448764190.Spec : Prop :=
  ∀ n, P12420818373448764190.a n = A228235 (n + 1)

end A228235

/-! ## A228235.P6118004755565605721

`A062711(n+1)-A348196(n+1)`
-/

namespace A228235.P6118004755565605721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) - A348196 (n + 1)

end

end A228235.P6118004755565605721

namespace A228235

/-- `A062711(n+1)-A348196(n+1)` -/
def P6118004755565605721.Spec : Prop :=
  ∀ n, P6118004755565605721.a n = A228235 (n + 1)

end A228235

/-! ## A228235.P5089406896978578023

`A000720(n+1)+A348196(n+1)-A066339(n+1)`
-/

namespace A228235.P5089406896978578023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A348196 (n + 1) - A066339 (n + 1))

end

end A228235.P5089406896978578023

namespace A228235

/-- `A000720(n+1)+A348196(n+1)-A066339(n+1)` -/
def P5089406896978578023.Spec : Prop :=
  ∀ n, P5089406896978578023.a n = A228235 (n + 1)

end A228235

/-! ## A228235.P17553497749355722120

`A062711(n+1)+A228234(n+1)-A228232(n+1)`
-/

namespace A228235.P17553497749355722120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) + (A228234 (n + 1) - A228232 (n + 1))

end

end A228235.P17553497749355722120

namespace A228235

/-- `A062711(n+1)+A228234(n+1)-A228232(n+1)` -/
def P17553497749355722120.Spec : Prop :=
  ∀ n, P17553497749355722120.a n = A228235 (n + 1)

end A228235

/-! ## A228235.P17302683925554646921

`A228233(n+1)+A228234(n+1)-A062711(n+1)`
-/

namespace A228235.P17302683925554646921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228233 (n + 1) + (A228234 (n + 1) - A062711 (n + 1))

end

end A228235.P17302683925554646921

namespace A228235

/-- `A228233(n+1)+A228234(n+1)-A062711(n+1)` -/
def P17302683925554646921.Spec : Prop :=
  ∀ n, P17302683925554646921.a n = A228235 (n + 1)

end A228235

/-! ## A228235.P7303951333487995866

`A001057(A228233(n+1))`
-/

namespace A228235.P7303951333487995866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A228233 (n + 1)).toNat

end

end A228235.P7303951333487995866

namespace A228235

/-- `A001057(A228233(n+1))` -/
def P7303951333487995866.Spec : Prop :=
  ∀ n, P7303951333487995866.a n = A228235 (n + 1)

end A228235

/-!
# A228236: Numbers k for which a sum k+bitcount(k) can be also obtained as a sum k2 +bitcount(k2) for some other k2<>k . Here bitcount(k) (A000120) gives the number of 1's in binary representation of nonnegative integer k.

The programs for A228236, there is no canonical definition to state claims against.
-/

/-! ## A228236.P2211607693968395656

`∪[A228091(n+1), A228237(n+1)]`
-/

namespace A228236.P2211607693968395656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A228236.P2211607693968395656

/-! ## A228236.P6796714639683701163

`comp[A228090(n+1)]`
-/

namespace A228236.P6796714639683701163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228236.P6796714639683701163

/-! ## A228236.P14062622418070465448

`comp[A228089(n+1)]`
-/

namespace A228236.P14062622418070465448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228236.P14062622418070465448

/-! ## A228236.P2121185784276830571

`lt[1, A228085(A092391(n))]`
-/

namespace A228236.P2121185784276830571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 (A092391 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228236.P2121185784276830571

/-! ## A228236.P5920639212801314112

`lt[1, A228085(2*n-A011371(n))]`
-/

namespace A228236.P5920639212801314112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 ((2 * n : ℤ) - A011371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228236.P5920639212801314112

/-! ## A228236.P1869925106239057454

`lt[char[A228089(n+1)], A088705(2*n+1)]`
-/

namespace A228236.P1869925106239057454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228089 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A228236.P1869925106239057454

/-! ## A228236.P3750670465305294320

`lt[char[A228090(n+1)], A088705(2*n+1)]`
-/

namespace A228236.P3750670465305294320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228090 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A228236.P3750670465305294320

/-! ## A228236.P16463582030590450881

`eq[1, (A125169(3*n)-2)%A228085(A000120(n)+n)]`
-/

namespace A228236.P16463582030590450881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125169 (3 * n) - 2) (A228085 (A000120 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228236.P16463582030590450881

/-!
# A228237: Numbers n for which there exists such a natural number k > n that k + bitcount(k) = n + bitcount(n), where bitcount(k) (A000120) gives the number of 1's in binary representation of nonnegative integer k.

The programs for A228237, there is no canonical definition to state claims against.
-/

/-! ## A228237.P6956913320880616236

`lt[n, A228087(A092391(n))]`
-/

namespace A228237.P6956913320880616236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (A092391 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228237.P6956913320880616236

/-! ## A228237.P9398350598322566865

`lt[n, A228087(log2(A001316(n))+n)]`
-/

namespace A228237.P9398350598322566865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228237.P9398350598322566865

/-! ## A228237.P8572862070629678970

`lt[n, A228087(2*n-A011371(n))]`
-/

namespace A228237.P8572862070629678970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 ((2 * n : ℤ) - A011371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228237.P8572862070629678970

/-! ## A228237.P14293368410116015901

`lt[n, A228087(3*n-A005187(n))]`
-/

namespace A228237.P14293368410116015901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 ((3 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228237.P14293368410116015901

/-! ## A228237.P12990561579187251965

`lt[n, A228087(4*n-A004134(n))]`
-/

namespace A228237.P12990561579187251965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 ((4 * n : ℤ) - A004134 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228237.P12990561579187251965

/-! ## A228237.P10687807833656831176

`lt[n, A228087(5*n-A120738(n))]`
-/

namespace A228237.P10687807833656831176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 ((5 * n : ℤ) - A120738 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228237.P10687807833656831176

/-! ## A228237.P11239175217470497050

`lt[n, A228087(log2(A038573(n)+1)+n)]`
-/

namespace A228237.P11239175217470497050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (SequenceMachineLib.roundAway (Real.logb 2 (A038573 n + 1 : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228237.P11239175217470497050

/-! ## A228237.P6010451542173183121

`comp[A228087(n)]`
-/

namespace A228237.P6010451542173183121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228237.P6010451542173183121

/-!
# A228238: Primes of the form x^x * y^y + 1.

The programs for A228238, there is no canonical definition to state claims against.
-/

/-! ## A228238.P12833165794981344334

`p?[∪[4^n+1, A240626(n+1)]]`
-/

namespace A228238.P12833165794981344334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240626 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228238.P12833165794981344334

/-! ## A228238.P12893667666868751839

`p?[A347931((p?[3*n-1]+1)/3)+1]`
-/

namespace A228238.P12893667666868751839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347931 (SequenceMachineLib.roundAway ((f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1 : ℚ) / 3)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228238.P12893667666868751839

/-!
# A228239: Smaller of corresponding digits of Pi and e.

The programs for A228239, there is no canonical definition to state claims against.
-/

/-! ## A228239.P6925341534323996334

`A073212(n)-A231325(n+1)`
-/

namespace A228239.P6925341534323996334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - A231325 (n + 1)

end

end A228239.P6925341534323996334

/-! ## A228239.P3051263012628280814

`A231325(n+1)-A073223(n)`
-/

namespace A228239.P3051263012628280814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1) - A073223 n

end

end A228239.P3051263012628280814

/-! ## A228239.P15511322949632638716

`(A073212(n)-A073223(n))/2`
-/

namespace A228239.P15511322949632638716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073212 n - A073223 n : ℚ) / 2

end

end A228239.P15511322949632638716

/-! ## A228239.P17488306490312544697

`(A073212(n)-abs(A187747(n)))/2`
-/

namespace A228239.P17488306490312544697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073212 n - |A187747 n| : ℚ) / 2

end

end A228239.P17488306490312544697

/-! ## A228239.P3865510932460823893

`A231325(n+1)-dr(A187747(n))`
-/

namespace A228239.P3865510932460823893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1) - (SequenceMachineLib.digitalRoot (A187747 n) : ℤ)

end

end A228239.P3865510932460823893

/-! ## A228239.P1148053013969191445

`A004526(A073212(n)-A073223(n))`
-/

namespace A228239.P1148053013969191445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073212 n - A073223 n).toNat

end

end A228239.P1148053013969191445

/-! ## A228239.P10599734165495830208

`A004526(A073212(n)-abs(A187747(n)))`
-/

namespace A228239.P10599734165495830208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073212 n - |A187747 n|).toNat

end

end A228239.P10599734165495830208

/-! ## A228239.P16292434266413432256

`A004526(A073212(n)-dr(A187747(n)))`
-/

namespace A228239.P16292434266413432256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073212 n - (SequenceMachineLib.digitalRoot (A187747 n) : ℤ)).toNat

end

end A228239.P16292434266413432256

/-! ## A228239.P9835203406234054059

`A000796(n)+A001113(n)-A231325(n+1)`
-/

namespace A228239.P9835203406234054059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + (A001113 (n + 1) - A231325 (n + 1))

end

end A228239.P9835203406234054059

/-! ## A228239.P5545176495036964317

`A110766(2*n+1)+A001113(n)-A231325(n+1)`
-/

namespace A228239.P5545176495036964317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) + (A001113 (n + 1) - A231325 (n + 1))

end

end A228239.P5545176495036964317

/-! ## A228239.P673136761571587758

`A001355(2*(n+1))-(A231325(n+1)-A000796(n))`
-/

namespace A228239.P673136761571587758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1)) - (A231325 (n + 1) - A000796 (n + 1))

end

end A228239.P673136761571587758

/-!
# A228244: Primes of the form k^2 + 17.

The programs for A228244, there is no canonical definition to state claims against.
-/

/-! ## A228244.P815152275472494966

`A241847(A264790(n+1))`
-/

namespace A228244.P815152275472494966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241847 (A264790 (n + 1)).toNat

end

end A228244.P815152275472494966

/-! ## A228244.P3929170830796980653

`A241751(A264790(n+1))-A057428(n+1)`
-/

namespace A228244.P3929170830796980653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 (A264790 (n + 1)).toNat - A057428 (n + 1)

end

end A228244.P3929170830796980653

/-! ## A228244.P13399832279257449608

`A340346(2*n+5)+A241751(A264790(n+1))`
-/

namespace A228244.P13399832279257449608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340346 (2 * n + 5) + A241751 (A264790 (n + 1)).toNat

end

end A228244.P13399832279257449608

/-! ## A228244.P6614370027255859198

`A241751(A264790(n+1))+A336466(n+1)%2`
-/

namespace A228244.P6614370027255859198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 (A264790 (n + 1)).toNat + Int.tmod (A336466 (n + 1)) 2

end

end A228244.P6614370027255859198

/-! ## A228244.P4690743128743813194

`A241751(A264790(n+1))-A321800(A050603(n))`
-/

namespace A228244.P4690743128743813194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 (A264790 (n + 1)).toNat - A321800 (A050603 n).toNat

end

end A228244.P4690743128743813194

/-! ## A228244.P3428886223935936918

`∩[A107175(n+1), A241847(n)]`
-/

namespace A228244.P3428886223935936918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241847 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228244.P3428886223935936918

/-! ## A228244.P14629477296170619685

`∩[A142105(n+1), A241847(n)]`
-/

namespace A228244.P14629477296170619685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241847 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228244.P14629477296170619685

/-!
# A228245: The integers occurring in the song "Ten green bottles".

The programs for A228245, there is no canonical definition to state claims against.
-/

/-! ## A228245.P15762012286905354769

`gcd(10-floor(n/3), C(n, 2)%3)`
-/

namespace A228245.P15762012286905354769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 - ⌊(n : ℚ) / 3⌋) ((Nat.choose n 2 % 3 : ℕ) : ℤ)

end

end A228245.P15762012286905354769

/-! ## A228245.P1536787112505097614

`a(n-3)-(n+1)²%3` with `a(0)=10, a(1)=10, a(2)=1`
-/

namespace A228245.P1536787112505097614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 10, 1] fun n a =>
  a (n - 3) - (((n + 1) ^ 2 % 3 : ℕ) : ℤ)

end

end A228245.P1536787112505097614

/-! ## A228245.P18145935722130041445

`abs(a(n-2)-a(n-4))` with `a(0)=10, a(1)=10, a(2)=1, a(3)=9`
-/

namespace A228245.P18145935722130041445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 10, 1, 9] fun n a =>
  |a (n - 2) - a (n - 4)|

end

end A228245.P18145935722130041445

/-! ## A228245.P6599383834943675861

`A092942(A125169(n))%11`
-/

namespace A228245.P6599383834943675861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092942 (A125169 n).toNat) 11

end

end A228245.P6599383834943675861

/-! ## A228245.P6077533650936248336

`gcd(10-A002264(n), Δ[A002264(n)])`
-/

namespace A228245.P6077533650936248336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 - A002264 n) (f1 (n + 1) - f1 n)

end

end A228245.P6077533650936248336

/-!
# A228246: a(1)=1; for n >= 2, a(n) = round(x), where x is the average length (not counting draws) of a first-to-n match between two chess players of equal strength.

The programs for A228246, there is no canonical definition to state claims against.
-/

/-! ## A228246.P18115203838006684607

`4*(n+1)-A159061(n+1)`
-/

namespace A228246.P18115203838006684607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A159061 (n + 1)

end

end A228246.P18115203838006684607

/-! ## A228246.P3633488372111869425

`Δ[A001844(n)]%A159061(n+1)`
-/

namespace A228246.P3633488372111869425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A159061 (n + 1))

end

end A228246.P3633488372111869425

/-! ## A228246.P17302496706468246422

`Δ[A046092(n)]%A159061(n+1)`
-/

namespace A228246.P17302496706468246422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A159061 (n + 1))

end

end A228246.P17302496706468246422

/-! ## A228246.P9612284830785954200

`Δ[A294774(n)]%A159061(n+1)`
-/

namespace A228246.P9612284830785954200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A159061 (n + 1))

end

end A228246.P9612284830785954200

/-! ## A228246.P6275267818152455634

`A016813(n)+3-A159061(n+1)`
-/

namespace A228246.P6275267818152455634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + (3 - A159061 (n + 1))

end

end A228246.P6275267818152455634

/-! ## A228246.P9979962580353369293

`A008586(n)+4-A159061(n+1)`
-/

namespace A228246.P9979962580353369293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (4 - A159061 (n + 1))

end

end A228246.P9979962580353369293

/-! ## A228246.P15863437279846627123

`A008574(n+1)%A159061(n+1)`
-/

namespace A228246.P15863437279846627123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (n + 1)) (A159061 (n + 1))

end

end A228246.P15863437279846627123

/-! ## A228246.P13683852279782953890

`A059558(n+1)%A159061(n+1)`
-/

namespace A228246.P13683852279782953890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059558 (n + 1)) (A159061 (n + 1))

end

end A228246.P13683852279782953890

/-! ## A228246.P12112344259500807483

`A294317(A159061(n+1)+∑[n-1])`
-/

namespace A228246.P12112344259500807483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A159061 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228246.P12112344259500807483

/-! ## A228246.P8272617551108350039

`floor(A070260(2*n+1)/A159061(n+1))`
-/

namespace A228246.P8272617551108350039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070260 (2 * n + 1) : ℚ) / (A159061 (n + 1) : ℚ)⌋

end

end A228246.P8272617551108350039

/-!
# A228247: Number of primitive solutions of t(x,n) - s(x,n) = 2, where s(x,n) and t(x,n) are the number of applications of the classical and modified Euclidean algorithms needed to convert (x,n) to gcd(x,n).

The programs for A228247, there is no canonical definition to state claims against.
-/

/-! ## A228247.P8572057185582966379

`A352588(2*(n+2))%A262611(A262877(n))`
-/

namespace A228247.P8572057185582966379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352588 (2 * (n + 2))) (A262611 (A262877 n).toNat)

end

end A228247.P8572057185582966379

/-! ## A228247.P1891231837371901062

`A056975(or(2, A006498(n+3)))`
-/

namespace A228247.P1891231837371901062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (Int.lor 2 (A006498 (n + 3))).toNat

end

end A228247.P1891231837371901062

/-! ## A228247.P8694544283818211716

`and(A039701(A282575(n)), A319472(n))`
-/

namespace A228247.P8694544283818211716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039701 (A282575 n).toNat) (A319472 n)

end

end A228247.P8694544283818211716

/-! ## A228247.P2677490375257331355

`A102679(A065330(n+1)*A188271(n+1))`
-/

namespace A228247.P2677490375257331355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A065330 (n + 1) * A188271 (n + 1)).toNat

end

end A228247.P2677490375257331355

/-! ## A228247.P9901141526794716822

`A087624(A097062(n+4)^A027349(n+1))`
-/

namespace A228247.P9901141526794716822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (SequenceMachineLib.roundAway ((A097062 (n + 4) : ℚ) ^ (A027349 (n + 1) : ℤ))).toNat

end

end A228247.P9901141526794716822

/-!
# A228248: Number of 2n-step lattice paths from (0,0) to (0,0) using steps in {N, S, E, W} starting with East, then always moving straight ahead or turning left.

The programs for A228248, there is no canonical definition to state claims against.
-/

/-! ## A228248.P11454406314241418235

`A008616(A083695(n))`
-/

namespace A228248.P11454406314241418235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A083695 n).toNat

end

end A228248.P11454406314241418235

/-! ## A228248.P1794379022740350866

`A165190(A290999(n))`
-/

namespace A228248.P1794379022740350866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A290999 n).toNat

end

end A228248.P1794379022740350866

/-! ## A228248.P6221329716333209754

`A165190(Δ[A002533(n)])`
-/

namespace A228248.P6221329716333209754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (f1 (n + 1) - f1 n).toNat

end

end A228248.P6221329716333209754

/-! ## A228248.P12812275470933397854

`A165190(2*A083695(n))`
-/

namespace A228248.P12812275470933397854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (2 * A083695 n).toNat

end

end A228248.P12812275470933397854

/-!
# A228249: Decimal expansion of the infinite Fibonacci word, interpreted as a binary expansion.

The programs for A228249, there is no canonical definition to state claims against.
-/

/-! ## A228249.P6982113686040738532

`9-A014565(n)`
-/

namespace A228249.P6982113686040738532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A014565 n

end

end A228249.P6982113686040738532

/-! ## A228249.P5167198573548003248

`9-A073115(n+1)`
-/

namespace A228249.P5167198573548003248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A073115 (n + 1 + 1)

end

end A228249.P5167198573548003248

/-! ## A228249.P11209734431738672834

`9-A081544(n+1)`
-/

namespace A228249.P11209734431738672834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A081544 (n + 1 + 1)

end

end A228249.P11209734431738672834

/-!
# A228250: Total sum A(n,k) of lengths of longest contiguous subsequences with the same value over all s in {1,...,n}^k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A228250, there is no canonical definition to state claims against.
-/

/-! ## A228250.P11732996906040864596

`A228275(n)+A035211(A298077(n+1))`
-/

namespace A228250.P11732996906040864596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228275 n + A035211 (A298077 (n + 1)).toNat

end

end A228250.P11732996906040864596

/-! ## A228250.P17560222222839187024

`A191928(A326597(n))+A185651(n)`
-/

namespace A228250.P17560222222839187024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191928 (A326597 n).toNat + A185651 n

end

end A228250.P17560222222839187024

/-! ## A228250.P13988516807598190415

`A228275(n)+A024362(A000009(3*n))`
-/

namespace A228250.P13988516807598190415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228275 n + A024362 (A000009 (3 * n)).toNat

end

end A228250.P13988516807598190415

/-! ## A228250.P17349313950475230415

`A185651(n)+A135831(A355576(n))`
-/

namespace A228250.P17349313950475230415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 n + A135831 (A355576 n).toNat

end

end A228250.P17349313950475230415

/-! ## A228250.P6013680384729618417

`A309785(A288972(n))+A265080(n)`
-/

namespace A228250.P6013680384729618417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A288972 n).toNat + A265080 n

end

end A228250.P6013680384729618417

/-!
# A228251: Fundamental discriminant of least absolute value with class group of 2-rank n.

The programs for A228251, there is no canonical definition to state claims against.
-/

/-! ## A228251.P11813211325892604148

`A002497(n+1)*A033999(A112822(3*n+1))`
-/

namespace A228251.P11813211325892604148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002497 (n + 1) * A033999 (A112822 (3 * n + 1)).toNat

end

end A228251.P11813211325892604148

/-!
# A228252: Determinant of the (n+1) X (n+1) matrix with (i,j)-entry equal to (i-2j)^n for all i,j = 0,...,n.

The programs for A228252, the canonical program `A228252.P1496798423820614740` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228252 has offset 0).

The definition of A228252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228252.P1496798423820614740

`2^(n*(n+1)/2)*n!^(n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228252

/-- `2^(n*(n+1)/2)*n!^(n+1)` -/
def P1496798423820614740.Spec : Prop :=
  ∀ n, P1496798423820614740.a n = (A228252 n : ℝ)

end A228252

/-! ## A228252.P14622091033829455193

`∏{d}[2^n, #*n!]`
-/

namespace A228252.P14622091033829455193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d * Nat.factorial n

end

end A228252.P14622091033829455193

namespace A228252

/-- `∏{d}[2^n, #*n!]` -/
def P14622091033829455193.Spec : Prop :=
  ∀ n, (P14622091033829455193.a n : ℤ) = A228252 n

end A228252

/-! ## A228252.P14847512564118165397

`∏[(2*n)^n*n!]`
-/

namespace A228252.P14847512564118165397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ n * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228252.P14847512564118165397

namespace A228252

/-- `∏[(2*n)^n*n!]` -/
def P14847512564118165397.Spec : Prop :=
  ∀ n, (P14847512564118165397.a n : ℤ) = A228252 n

end A228252

/-! ## A228252.P11510227044302357142

`(2^(n/2)*n!)^(n+1)`
-/

namespace A228252.P11510227044302357142
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ)) ^ (n + 1)

end

end A228252.P11510227044302357142

namespace A228252

/-- `(2^(n/2)*n!)^(n+1)` -/
def P11510227044302357142.Spec : Prop :=
  ∀ n, P11510227044302357142.a n = (A228252 n : ℝ)

end A228252

/-! ## A228252.P5001558806362984721

`(2*n)^n*n!*a(n-1)` with `a(0)=1`
-/

namespace A228252.P5001558806362984721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n) ^ n * Nat.factorial n * a (n - 1)

end

end A228252.P5001558806362984721

namespace A228252

/-- `(2*n)^n*n!*a(n-1)` -/
def P5001558806362984721.Spec : Prop :=
  ∀ n, (P5001558806362984721.a n : ℤ) = A228252 n

end A228252

/-!
# A228254: Number of third differences of arrays of length n+3 of numbers in 0..2.

The programs for A228254, there is no canonical definition to state claims against.
-/

/-! ## A228254.P624434753596049066

`A228260(∑[n+2])`
-/

namespace A228254.P624434753596049066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228254.P624434753596049066

/-! ## A228254.P8427173413237487567

`record[A228260(abs(A201163(n)))]`
-/

namespace A228254.P8427173413237487567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228254.P8427173413237487567

/-! ## A228254.P13155987031856186502

`or(1, A228260(A000096(n+1)))`
-/

namespace A228254.P13155987031856186502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A000096 (n + 1)).toNat)

end

end A228254.P13155987031856186502

/-! ## A228254.P11307207022560894141

`A228260(A000096(n+1))%A000108(n+7)`
-/

namespace A228254.P11307207022560894141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228260 (A000096 (n + 1)).toNat) (A000108 (n + 7))

end

end A228254.P11307207022560894141

/-! ## A228254.P3199460675962597159

`A007318(C(2, n))*A228260(A000096(n+1))`
-/

namespace A228254.P3199460675962597159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A228260 (A000096 (n + 1)).toNat

end

end A228254.P3199460675962597159

/-!
# A228255: Number of third differences of arrays of length n+3 of numbers in 0..3.

The programs for A228255, there is no canonical definition to state claims against.
-/

/-! ## A228255.P5117112692516645185

`A228260(∑[n+3]+1)`
-/

namespace A228255.P5117112692516645185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228255.P5117112692516645185

/-! ## A228255.P81964642564454153

`or(1, A228260(Δ[A008778(n)]))`
-/

namespace A228255.P81964642564454153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (f1 (n + 1) - f1 n).toNat)

end

end A228255.P81964642564454153

/-! ## A228255.P8456338569365005924

`or(1, A228260(A034856(n+2)))`
-/

namespace A228255.P8456338569365005924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A034856 (n + 2)).toNat)

end

end A228255.P8456338569365005924

/-! ## A228255.P8957103166597268377

`or(1, A228260(A055999(n)+4))`
-/

namespace A228255.P8957103166597268377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A055999 n + 4).toNat)

end

end A228255.P8957103166597268377

/-! ## A228255.P6767013485205809658

`A014963(12*n+6)*A228260(Δ[A008778(n)])`
-/

namespace A228255.P6767013485205809658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A228260 (f1 (n + 1) - f1 n).toNat

end

end A228255.P6767013485205809658

/-!
# A228256: Number of third differences of arrays of length n+3 of numbers in 0..4.

The programs for A228256, there is no canonical definition to state claims against.
-/

/-! ## A228256.P2648435217024151804

`A228260(∑[n+4]+3)`
-/

namespace A228256.P2648435217024151804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A228256.P2648435217024151804

/-! ## A228256.P5259838949073539068

`A228260(A027379(n+2))+A145649(3*n+2)`
-/

namespace A228256.P5259838949073539068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A027379 (n + 2)).toNat + A145649 (3 * n + 2)

end

end A228256.P5259838949073539068

/-!
# A228257: Number of third differences of arrays of length n+3 of numbers in 0..5.

The programs for A228257, there is no canonical definition to state claims against.
-/

/-! ## A228257.P14523514077992044822

`A228260(Δ[A264443(n)])`
-/

namespace A228257.P14523514077992044822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (f1 (n + 1) - f1 n).toNat

end

end A228257.P14523514077992044822

/-! ## A228257.P1853117742668957516

`A228260(A046691(n+3))`
-/

namespace A228257.P1853117742668957516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A046691 (n + 3)).toNat

end

end A228257.P1853117742668957516

/-! ## A228257.P5115840221329700261

`A228260(A060577(n+4))`
-/

namespace A228257.P5115840221329700261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A060577 (n + 4)).toNat

end

end A228257.P5115840221329700261

/-! ## A228257.P13149217794338585195

`A228260(A056115(n)+11)`
-/

namespace A228257.P13149217794338585195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A056115 n + 11).toNat

end

end A228257.P13149217794338585195

/-! ## A228257.P4010394366899006301

`A228260(eq[2, A092921(n)])`
-/

namespace A228257.P4010394366899006301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228257.P4010394366899006301

/-!
# A228258: Number of third differences of arrays of length n+3 of numbers in 0..6.

The programs for A228258, there is no canonical definition to state claims against.
-/

/-! ## A228258.P13532706121842351124

`A228260(A052905(n+3))`
-/

namespace A228258.P13532706121842351124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A052905 (n + 3)).toNat

end

end A228258.P13532706121842351124

/-! ## A228258.P2483953899877628191

`A228260(eq[3, A219347(n)])`
-/

namespace A228258.P2483953899877628191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228258.P2483953899877628191

/-! ## A228258.P1663652840679572511

`A228260(eq[5, A193592(n)])`
-/

namespace A228258.P1663652840679572511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228258.P1663652840679572511

/-! ## A228258.P9374426666608217390

`A228260(eq[8, A258709(n)])`
-/

namespace A228258.P9374426666608217390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228258.P9374426666608217390

/-! ## A228258.P3950774157394075005

`A228260(Δ[A055831(n+5)])`
-/

namespace A228258.P3950774157394075005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (f1 (n + 1) - f1 n).toNat

end

end A228258.P3950774157394075005

/-!
# A228259: Number of third differences of arrays of length n+3 of numbers in 0..7.

The programs for A228259, there is no canonical definition to state claims against.
-/

/-! ## A228259.P16462332713615228505

`A228260(A055999(n+4))`
-/

namespace A228259.P16462332713615228505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A055999 (n + 4)).toNat

end

end A228259.P16462332713615228505

/-! ## A228259.P910174773754638678

`A228260(eq[4, A219347(n)])`
-/

namespace A228259.P910174773754638678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228259.P910174773754638678

/-! ## A228259.P1720493323516685306

`A228260(eq[5, A332954(n)])`
-/

namespace A228259.P1720493323516685306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228259.P1720493323516685306

/-! ## A228259.P7873897578231906528

`A228260(eq[6, A193592(n)])`
-/

namespace A228259.P7873897578231906528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228259.P7873897578231906528

/-! ## A228259.P9423089469241352283

`A228260(A052905(n+4)-1)`
-/

namespace A228259.P9423089469241352283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A052905 (n + 4) - 1).toNat

end

end A228259.P9423089469241352283

/-!
# A228260: T(n,k)=Number of third differences of arrays of length n+3 of numbers in 0..k.

The programs for A228260, there is no canonical definition to state claims against.
-/

/-! ## A228260.P17001720646309638727

`A099375(∑{d}[n+1, #]*A090989(3*n+5))`
-/

namespace A228260.P17001720646309638727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A090989 (3 * n + 5)).toNat

end

end A228260.P17001720646309638727

/-!
# A228261: Number of third differences of arrays of length 5 of numbers in 0..n.

The programs for A228261, the canonical program `A228261.P17629676170864373021` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228261 has offset 1).

The definition of A228261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228261.P17629676170864373021

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=31, a(1)=143, a(2)=319, a(3)=565`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228261

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17629676170864373021.Spec : Prop :=
  ∀ n, P17629676170864373021.a n = A228261 (n + 1)

theorem P17629676170864373021.correct : P17629676170864373021.Spec := by
  intro n
  simp only [A228261, Nat.add_sub_cancel]

end A228261

/-! ## A228261.P13043824319031084585

`A056108(3*(n+1))+A000384(A163300(n+1))`
-/

namespace A228261.P13043824319031084585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 (3 * (n + 1)) + A000384 (A163300 (n + 1)).toNat

end

end A228261.P13043824319031084585

namespace A228261

/-- `A056108(3*(n+1))+A000384(A163300(n+1))` -/
def P13043824319031084585.Spec : Prop :=
  ∀ n, P13043824319031084585.a n = A228261 (n + 1)

end A228261

/-! ## A228261.P3325435481591852964

`A228260(∑[n+1]+2)`
-/

namespace A228261.P3325435481591852964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A228261.P3325435481591852964

namespace A228261

/-- `A228260(∑[n+1]+2)` -/
def P3325435481591852964.Spec : Prop :=
  ∀ n, P3325435481591852964.a n = A228261 (n + 1)

end A228261

/-! ## A228261.P13295858889720258984

`or(1, A228260(A133263(n+1)))`
-/

namespace A228261.P13295858889720258984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A133263 (n + 1)).toNat)

end

end A228261.P13295858889720258984

namespace A228261

/-- `or(1, A228260(A133263(n+1)))` -/
def P13295858889720258984.Spec : Prop :=
  ∀ n, P13295858889720258984.a n = A228261 (n + 1)

end A228261

/-! ## A228261.P17604168151572205768

`or(1, A228260(A238531(n+2)))`
-/

namespace A228261.P17604168151572205768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A238531 (n + 2)).toNat)

end

end A228261.P17604168151572205768

namespace A228261

/-- `or(1, A228260(A238531(n+2)))` -/
def P17604168151572205768.Spec : Prop :=
  ∀ n, P17604168151572205768.a n = A228261 (n + 1)

end A228261

/-!
# A228262: Number of third differences of arrays of length 6 of numbers in 0..n.

The programs for A228262, there is no canonical definition to state claims against.
-/

/-! ## A228262.P6327698552896071539

`A228260(∑[n+2]+4)`
-/

namespace A228262.P6327698552896071539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228262.P6327698552896071539

/-! ## A228262.P16017768707972517246

`or(1, A228260(A167614(n+1)))`
-/

namespace A228262.P16017768707972517246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A167614 (n + 1)).toNat)

end

end A228262.P16017768707972517246

/-! ## A228262.P16920455198577051340

`or(1, A228260(A152950(n+3)))`
-/

namespace A228262.P16920455198577051340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A152950 (n + 3)).toNat)

end

end A228262.P16920455198577051340

/-! ## A228262.P5337401573721999159

`or(1, A228260(A167499(n)+n))`
-/

namespace A228262.P5337401573721999159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A167499 n + (n : ℤ)).toNat)

end

end A228262.P5337401573721999159

/-! ## A228262.P7155038324340652870

`A228260(A167614(n+1))+A025469(n)`
-/

namespace A228262.P7155038324340652870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A167614 (n + 1)).toNat + A025469 n

end

end A228262.P7155038324340652870

/-!
# A228263: Number of third differences of arrays of length 7 of numbers in 0..n.

The programs for A228263, there is no canonical definition to state claims against.
-/

/-! ## A228263.P2373360651004589243

`A228260(∑[n+3]+7)`
-/

namespace A228263.P2373360651004589243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A228263.P2373360651004589243

/-! ## A228263.P8461374312092564658

`or(1, A228260(A141214(n)+7))`
-/

namespace A228263.P8461374312092564658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A141214 n + 7).toNat)

end

end A228263.P8461374312092564658

/-! ## A228263.P16697731194662035193

`or(1, A228260(A167614(n+2)+1))`
-/

namespace A228263.P16697731194662035193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A167614 (n + 2) + 1).toNat)

end

end A228263.P16697731194662035193

/-! ## A228263.P14088594468828558630

`A228260(A141214(n)+7)^gcd(7, A007318(n))`
-/

namespace A228263.P14088594468828558630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A141214 n + 7).toNat ^ Int.gcd 7 (A007318 n)

end

end A228263.P14088594468828558630

/-! ## A228263.P11350131841103802224

`A007318(C(2, n))*A228260(A167614(n+2)+1)`
-/

namespace A228263.P11350131841103802224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A228260 (A167614 (n + 2) + 1).toNat

end

end A228263.P11350131841103802224

/-!
# A228264: Number of third differences of arrays of length 8 of numbers in 0..n.

The programs for A228264, there is no canonical definition to state claims against.
-/

/-! ## A228264.P6889470289675999117

`A228260(∑[n+4]+11)`
-/

namespace A228264.P6889470289675999117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A228264.P6889470289675999117

/-! ## A228264.P16928394499963601626

`or(1, A228260(A167499(n+3)))`
-/

namespace A228264.P16928394499963601626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228260 (A167499 (n + 3)).toNat)

end

end A228264.P16928394499963601626

/-! ## A228264.P16102153683222435175

`A228260(A253145(n+3)+5)+and(n, -(n+1))`
-/

namespace A228264.P16102153683222435175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A253145 (n + 3) + 5).toNat + Int.land (n : ℤ) (-(n + 1 : ℤ))

end

end A228264.P16102153683222435175

/-! ## A228264.P7433465473013341178

`A228260(A167499(n+3))+A025469(n)`
-/

namespace A228264.P7433465473013341178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A167499 (n + 3)).toNat + A025469 n

end

end A228264.P7433465473013341178

/-! ## A228264.P3871226589306015033

`A228260(A167499(n+3))%A115427(n+1)`
-/

namespace A228264.P3871226589306015033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228260 (A167499 (n + 3)).toNat) (A115427 (n + 1))

end

end A228264.P3871226589306015033

/-!
# A228265: Number of third differences of arrays of length 9 of numbers in 0..n.

The programs for A228265, there is no canonical definition to state claims against.
-/

/-! ## A228265.P7476347465095598915

`A228260(A167499(n+4)+1)`
-/

namespace A228265.P7476347465095598915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A167499 (n + 4) + 1).toNat

end

end A228265.P7476347465095598915

/-! ## A228265.P7755081789288832165

`A228260(A253145(n+4)+6)`
-/

namespace A228265.P7755081789288832165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A253145 (n + 4) + 6).toNat

end

end A228265.P7755081789288832165

/-! ## A228265.P15823945784803714528

`A228260(A000096(n+4)+7)`
-/

namespace A228265.P15823945784803714528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A000096 (n + 4) + 7).toNat

end

end A228265.P15823945784803714528

/-! ## A228265.P196799860156296720

`A228260(A000217(n+5)+6)`
-/

namespace A228265.P196799860156296720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A000217 (n + 5) + 6).toNat

end

end A228265.P196799860156296720

/-! ## A228265.P1968142626595066466

`A228260(A056000(n+1)+16)`
-/

namespace A228265.P1968142626595066466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A056000 (n + 1) + 16).toNat

end

end A228265.P1968142626595066466

/-!
# A228266: Number of third differences of arrays of length 10 of numbers in 0..n.

The programs for A228266, there is no canonical definition to state claims against.
-/

/-! ## A228266.P10519161934781711050

`A228260(eq[11, A066657(n)])`
-/

namespace A228266.P10519161934781711050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228266.P10519161934781711050

/-! ## A228266.P6744391945892473814

`A228260(A167499(n+5)+2)`
-/

namespace A228266.P6744391945892473814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A167499 (n + 5) + 2).toNat

end

end A228266.P6744391945892473814

/-! ## A228266.P11085401254253940185

`A228260(A000124(n+6)+6)`
-/

namespace A228266.P11085401254253940185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A000124 (n + 6) + 6).toNat

end

end A228266.P11085401254253940185

/-! ## A228266.P15727575005879213124

`A228260(A253145(n+5)+7)`
-/

namespace A228266.P15727575005879213124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A253145 (n + 5) + 7).toNat

end

end A228266.P15727575005879213124

/-! ## A228266.P7075700804856729584

`A228260(A000217(n+6)+7)`
-/

namespace A228266.P7075700804856729584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228260 (A000217 (n + 6) + 7).toNat

end

end A228266.P7075700804856729584

/-!
# A228267: Number T(n,k,r) of dissections of an n X k X r rectangular cuboid into integer-sided cubes including rotations and reflections; irregular triangle T(n,k,r), n >= k >= r >= 1 read by rows.

The programs for A228267, there is no canonical definition to state claims against.
-/

/-! ## A228267.P16516526151889941009

`C(A006530(A261360(8*n+14)), A056558(n))`
-/

namespace A228267.P16516526151889941009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (A261360 (8 * n + 14)).toNat).toNat (A056558 n).toNat

end

end A228267.P16516526151889941009

/-! ## A228267.P10964589402509244427

`A005100(A262211(n+2)^A068934(ceil(4^(n/5))))`
-/

namespace A228267.P10964589402509244427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (SequenceMachineLib.roundAway ((A262211 (n + 2) : ℚ) ^ (A068934 ⌈(4 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉.toNat : ℤ))).toNat

end

end A228267.P10964589402509244427

/-!
# A228269: First position of n in the continued fraction of log(2).

The programs for A228269, there is no canonical definition to state claims against.
-/

/-! ## A228269.P11313306882813931168

`A076592(n+1)-1`
-/

namespace A228269.P11313306882813931168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076592 (n + 1) - 1

end

end A228269.P11313306882813931168

/-! ## A228269.P1734899451662374627

`A023443(A076592(n+1))`
-/

namespace A228269.P1734899451662374627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A076592 (n + 1)).toNat

end

end A228269.P1734899451662374627

/-! ## A228269.P13902828172477937441

`A023444(A076592(n+1)+1)`
-/

namespace A228269.P13902828172477937441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A076592 (n + 1) + 1).toNat

end

end A228269.P13902828172477937441

/-! ## A228269.P11765016964021742667

`A289207(A076592(n+1)+1)`
-/

namespace A228269.P11765016964021742667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A076592 (n + 1) + 1).toNat

end

end A228269.P11765016964021742667

/-! ## A228269.P12918140763443947850

`A280193(Δ[n²])+A076592(n+1)`
-/

namespace A228269.P12918140763443947850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A076592 (n + 1)

end

end A228269.P12918140763443947850

/-! ## A228269.P2342804542188375358

`A137786(n*char[1])+A076592(n+1)`
-/

namespace A228269.P2342804542188375358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137786 (n * (if ∃ j, f1 j = n then 1 else 0)) + A076592 (n + 1)

end

end A228269.P2342804542188375358

/-! ## A228269.P7973805141667695912

`A118830(2*n+1)+A076592(n+1)`
-/

namespace A228269.P7973805141667695912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A076592 (n + 1)

end

end A228269.P7973805141667695912

/-! ## A228269.P1898959276160377401

`lcm(A024000(A076592(n+1)), A097807(n))`
-/

namespace A228269.P1898959276160377401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024000 (A076592 (n + 1)).toNat) (A097807 n)

end

end A228269.P1898959276160377401

/-! ## A228269.P15652776756083000357

`A076721(A076805(n+1))+A076592(n+1)`
-/

namespace A228269.P15652776756083000357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076721 (A076805 (n + 1)).toNat + A076592 (n + 1)

end

end A228269.P15652776756083000357

/-! ## A228269.P16419487420163548336

`A265643(A020639(2*(n+1)))+A076592(n+1)`
-/

namespace A228269.P16419487420163548336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265643 (A020639 (2 * (n + 1))).toNat + A076592 (n + 1)

end

end A228269.P16419487420163548336

/-!
# A228272: Volume of sphere (rounded down) with the diameter equal to n.

The programs for A228272, the canonical program `A228272.P4945561505817532236` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228272 has offset 1).

The definition of A228272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228272.P4945561505817532236

`floor(π*(n+1)^3/6)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228272

/-- `floor(π*(n+1)^3/6)` -/
def P4945561505817532236.Spec : Prop :=
  ∀ n, P4945561505817532236.a n = A228272 (n + 1)

theorem P4945561505817532236.correct : P4945561505817532236.Spec := by
  intro n
  simp only [A228272, Nat.add_sub_cancel]

end A228272

/-! ## A228272.P10376177012484468849

`A068601(n+1)-A057671(n+1)`
-/

namespace A228272.P10376177012484468849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) - A057671 (n + 1)

end

end A228272.P10376177012484468849

namespace A228272

/-- `A068601(n+1)-A057671(n+1)` -/
def P10376177012484468849.Spec : Prop :=
  ∀ n, P10376177012484468849.a n = A228272 (n + 1)

end A228272

/-! ## A228272.P6749927007691282724

`A002264(A228391(n+1))`
-/

namespace A228272.P6749927007691282724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A228391 (n + 1)).toNat

end

end A228272.P6749927007691282724

namespace A228272

/-- `A002264(A228391(n+1))` -/
def P6749927007691282724.Spec : Prop :=
  ∀ n, P6749927007691282724.a n = A228272 (n + 1)

end A228272

/-! ## A228272.P6923183206968072640

`A152467(A114378(n+1))`
-/

namespace A228272.P6923183206968072640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A114378 (n + 1)).toNat

end

end A228272.P6923183206968072640

namespace A228272

/-- `A152467(A114378(n+1))` -/
def P6923183206968072640.Spec : Prop :=
  ∀ n, P6923183206968072640.a n = A228272 (n + 1)

end A228272

/-! ## A228272.P3825598796017324393

`A132292(A002101(n+1))`
-/

namespace A228272.P3825598796017324393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A002101 (n + 1)).toNat

end

end A228272.P3825598796017324393

namespace A228272

/-- `A132292(A002101(n+1))` -/
def P3825598796017324393.Spec : Prop :=
  ∀ n, P3825598796017324393.a n = A228272 (n + 1)

end A228272

/-!
# A228273: T(n,k) is the number of s in {1,...,n}^n having longest ending contiguous subsequence with the same value of length k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A228273, there is no canonical definition to state claims against.
-/

/-! ## A228273.P16135730960697204488

`lcm(A043562(A191659(n)), A137452(n))`
-/

namespace A228273.P16135730960697204488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043562 (A191659 n).toNat) (A137452 n)

end

end A228273.P16135730960697204488

/-! ## A228273.P923439202831697499

`A109035(A318016(n+1))*A271708(n)`
-/

namespace A228273.P923439202831697499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109035 (A318016 (n + 1)).toNat * A271708 n

end

end A228273.P923439202831697499

/-! ## A228273.P4499776437885916403

`A109035(A320402(n+1))*A271708(n)`
-/

namespace A228273.P4499776437885916403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109035 (A320402 (n + 1)).toNat * A271708 n

end

end A228273.P4499776437885916403

/-! ## A228273.P8048335220265944874

`A109035(A318016(n+1))*A338001(n)`
-/

namespace A228273.P8048335220265944874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109035 (A318016 (n + 1)).toNat * A338001 n

end

end A228273.P8048335220265944874

/-! ## A228273.P17000908261012547642

`A109035(A320402(n+1))*A338001(n)`
-/

namespace A228273.P17000908261012547642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109035 (A320402 (n + 1)).toNat * A338001 n

end

end A228273.P17000908261012547642

/-!
# A228274: a(n) = Sum_{d|n, n/d odd} n * d.

The programs for A228274, the canonical program `A228274.P5163058848440072856` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228274 has offset 1).

The definition of A228274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228274.P5163058848440072856

`(n+1)*A002131(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A228274

/-- `(n+1)*A002131(n+1)` -/
def P5163058848440072856.Spec : Prop :=
  ∀ n, P5163058848440072856.a n = A228274 (n + 1)

theorem P5163058848440072856.correct : P5163058848440072856.Spec := by
  intro n
  simp only [A228274, Nat.add_sub_cancel]

end A228274

/-! ## A228274.P4287459669032044301

`(n+1)*∑{d}[n+1, lcm(2, #)/2]`
-/

namespace A228274.P4287459669032044301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / 2)

end

end A228274.P4287459669032044301

namespace A228274

/-- `(n+1)*∑{d}[n+1, lcm(2, #)/2]` -/
def P4287459669032044301.Spec : Prop :=
  ∀ n, P4287459669032044301.a n = (A228274 (n + 1) : ℚ)

end A228274

/-! ## A228274.P10538861121903023245

`abs((n+1)*A186690(n+1))`
-/

namespace A228274.P10538861121903023245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A186690 (n + 1)|

end

end A228274.P10538861121903023245

namespace A228274

/-- `abs((n+1)*A186690(n+1))` -/
def P10538861121903023245.Spec : Prop :=
  ∀ n, P10538861121903023245.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P9513763253341115999

`(n+1)/2*A054785(n+1)`
-/

namespace A228274.P9513763253341115999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A054785 (n + 1) : ℚ)

end

end A228274.P9513763253341115999

namespace A228274

/-- `(n+1)/2*A054785(n+1)` -/
def P9513763253341115999.Spec : Prop :=
  ∀ n, P9513763253341115999.a n = (A228274 (n + 1) : ℚ)

end A228274

/-! ## A228274.P108844250706599183

`∑{d}[n+1, (n+1)*A026741(#)]`
-/

namespace A228274.P108844250706599183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A026741 d

end

end A228274.P108844250706599183

namespace A228274

/-- `∑{d}[n+1, (n+1)*A026741(#)]` -/
def P108844250706599183.Spec : Prop :=
  ∀ n, P108844250706599183.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P11194178281897108695

`∑{d}[A000265(n+1), (n+1)²/#]`
-/

namespace A228274.P11194178281897108695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1) ^ 2 : ℚ) / (d : ℚ)

end

end A228274.P11194178281897108695

namespace A228274

/-- `∑{d}[A000265(n+1), (n+1)²/#]` -/
def P11194178281897108695.Spec : Prop :=
  ∀ n, P11194178281897108695.a n = (A228274 (n + 1) : ℚ)

end A228274

/-! ## A228274.P5574405793301100287

`(n+1)*A326066(2*(n+1))/2`
-/

namespace A228274.P5574405793301100287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A326066 (2 * (n + 1)) : ℚ) / 2

end

end A228274.P5574405793301100287

namespace A228274

/-- `(n+1)*A326066(2*(n+1))/2` -/
def P5574405793301100287.Spec : Prop :=
  ∀ n, P5574405793301100287.a n = (A228274 (n + 1) : ℚ)

end A228274

/-! ## A228274.P8308170963551347825

`A022998(n+1)*A327095(n+1)`
-/

namespace A228274.P8308170963551347825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1) * A327095 (n + 1)

end

end A228274.P8308170963551347825

namespace A228274

/-- `A022998(n+1)*A327095(n+1)` -/
def P8308170963551347825.Spec : Prop :=
  ∀ n, P8308170963551347825.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P1506089540667134242

`(A326125(n+1)+A064987(n+1))/2`
-/

namespace A228274.P1506089540667134242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326125 (n + 1) + A064987 (n + 1) : ℚ) / 2

end

end A228274.P1506089540667134242

namespace A228274

/-- `(A326125(n+1)+A064987(n+1))/2` -/
def P1506089540667134242.Spec : Prop :=
  ∀ n, P1506089540667134242.a n = (A228274 (n + 1) : ℚ)

end A228274

/-! ## A228274.P3264906618689792803

`(n+1)*A326125(n+1)/A000265(n+1)`
-/

namespace A228274.P3264906618689792803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A326125 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ))

end

end A228274.P3264906618689792803

namespace A228274

/-- `(n+1)*A326125(n+1)/A000265(n+1)` -/
def P3264906618689792803.Spec : Prop :=
  ∀ n, P3264906618689792803.a n = (A228274 (n + 1) : ℚ)

end A228274

/-! ## A228274.P7987958249492793135

`∑{d}[n+1, A000593(#)*A007434((n+1)/#)]`
-/

namespace A228274.P7987958249492793135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228274.P7987958249492793135

namespace A228274

/-- `∑{d}[n+1, A000593(#)*A007434((n+1)/#)]` -/
def P7987958249492793135.Spec : Prop :=
  ∀ n, P7987958249492793135.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P15742763064500072990

`∑{d}[n+1, A000010(#)*A078306((n+1)/#)]`
-/

namespace A228274.P15742763064500072990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A078306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228274.P15742763064500072990

namespace A228274

/-- `∑{d}[n+1, A000010(#)*A078306((n+1)/#)]` -/
def P15742763064500072990.Spec : Prop :=
  ∀ n, P15742763064500072990.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P1941906320304981686

`∑{d}[n+1, A018804(#)*A078747((n+1)/#)]`
-/

namespace A228274.P1941906320304981686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A078747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228274.P1941906320304981686

namespace A228274

/-- `∑{d}[n+1, A018804(#)*A078747((n+1)/#)]` -/
def P1941906320304981686.Spec : Prop :=
  ∀ n, P1941906320304981686.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P13138974571501313915

`∑{d}[n+1, A063445(#)*A109386((n+1)/#)]`
-/

namespace A228274.P13138974571501313915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228274.P13138974571501313915

namespace A228274

/-- `∑{d}[n+1, A063445(#)*A109386((n+1)/#)]` -/
def P13138974571501313915.Spec : Prop :=
  ∀ n, P13138974571501313915.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P18016187853242854733

`∑{d}[n+1, A002618(#)*A245579((n+1)/#)]`
-/

namespace A228274.P18016187853242854733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A245579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228274.P18016187853242854733

namespace A228274

/-- `∑{d}[n+1, A002618(#)*A245579((n+1)/#)]` -/
def P18016187853242854733.Spec : Prop :=
  ∀ n, P18016187853242854733.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P15889678047794424694

`∑{d}[n+1, A008683(#)*A288418((n+1)/#)]`
-/

namespace A228274.P15889678047794424694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A288418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228274.P15889678047794424694

namespace A228274

/-- `∑{d}[n+1, A008683(#)*A288418((n+1)/#)]` -/
def P15889678047794424694.Spec : Prop :=
  ∀ n, P15889678047794424694.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P6093455166961854328

`∑{d}[n+1, A000265(#)*A308422((n+1)/#)]`
-/

namespace A228274.P6093455166961854328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A308422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228274.P6093455166961854328

namespace A228274

/-- `∑{d}[n+1, A000265(#)*A308422((n+1)/#)]` -/
def P6093455166961854328.Spec : Prop :=
  ∀ n, P6093455166961854328.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P5344450976702030589

`∑{d}[n+1, A057660(#)*A255655((n+1)/#)]`
-/

namespace A228274.P5344450976702030589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A255655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228274.P5344450976702030589

namespace A228274

/-- `∑{d}[n+1, A057660(#)*A255655((n+1)/#)]` -/
def P5344450976702030589.Spec : Prop :=
  ∀ n, P5344450976702030589.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P15754419066546730046

`∑{d}[n+1, A001157(#)*A319997((n+1)/#)]`
-/

namespace A228274.P15754419066546730046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228274.P15754419066546730046

namespace A228274

/-- `∑{d}[n+1, A001157(#)*A319997((n+1)/#)]` -/
def P15754419066546730046.Spec : Prop :=
  ∀ n, P15754419066546730046.a n = A228274 (n + 1)

end A228274

/-! ## A228274.P4195332200247921976

`∑{d}[n+1, A001001(#)*A361019((n+1)/#)]`
-/

namespace A228274.P4195332200247921976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228274.P4195332200247921976

namespace A228274

/-- `∑{d}[n+1, A001001(#)*A361019((n+1)/#)]` -/
def P4195332200247921976.Spec : Prop :=
  ∀ n, P4195332200247921976.a n = A228274 (n + 1)

end A228274

/-!
# A228275: A(n,k) = Sum_{i=1..k} n^i; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A228275, the canonical program `A228275.P892745485716094877` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228275 has offset 0).

The definition of A228275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228275.P892745485716094877

`A104878(n)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A228275

/-- `A104878(n)-1` -/
def P892745485716094877.Spec : Prop :=
  ∀ n, P892745485716094877.a n = A228275 n

theorem P892745485716094877.correct : P892745485716094877.Spec := by
  intro n
  simp only [A228275]

end A228275

/-! ## A228275.P13695156177734216077

`A260196(n+2)+A104878(n)`
-/

namespace A228275.P13695156177734216077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A104878 n

end

end A228275.P13695156177734216077

namespace A228275

/-- `A260196(n+2)+A104878(n)` -/
def P13695156177734216077.Spec : Prop :=
  ∀ n, P13695156177734216077.a n = A228275 n

end A228275

/-! ## A228275.P17834539543814174757

`A323202(2*n+1)+A104878(n)`
-/

namespace A228275.P17834539543814174757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (2 * n + 1) + A104878 n

end

end A228275.P17834539543814174757

namespace A228275

/-- `A323202(2*n+1)+A104878(n)` -/
def P17834539543814174757.Spec : Prop :=
  ∀ n, P17834539543814174757.a n = A228275 n

end A228275

/-! ## A228275.P56092673059891336

`A055129(A056943(n)+1)-1`
-/

namespace A228275.P56092673059891336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (A056943 n + 1).toNat - 1

end

end A228275.P56092673059891336

namespace A228275

/-- `A055129(A056943(n)+1)-1` -/
def P56092673059891336.Spec : Prop :=
  ∀ n, P56092673059891336.a n = A228275 n

end A228275

/-! ## A228275.P2436975637816515695

`A104881(∑[2*n]%comp[∑[n]])-1`
-/

namespace A228275.P2436975637816515695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104881 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - 1

end

end A228275.P2436975637816515695

namespace A228275

/-- `A104881(∑[2*n]%comp[∑[n]])-1` -/
def P2436975637816515695.Spec : Prop :=
  ∀ n, P2436975637816515695.a n = A228275 n

end A228275

/-! ## A228275.P4040485156026868713

`A104881(A061579(n))-1`
-/

namespace A228275.P4040485156026868713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104881 (A061579 n).toNat - 1

end

end A228275.P4040485156026868713

namespace A228275

/-- `A104881(A061579(n))-1` -/
def P4040485156026868713.Spec : Prop :=
  ∀ n, P4040485156026868713.a n = A228275 n

end A228275

/-! ## A228275.P783550615843732202

`A163810(A091180(n+1))+A104878(n)`
-/

namespace A228275.P783550615843732202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A091180 (n + 1)).toNat + A104878 n

end

end A228275.P783550615843732202

namespace A228275

/-- `A163810(A091180(n+1))+A104878(n)` -/
def P783550615843732202.Spec : Prop :=
  ∀ n, P783550615843732202.a n = A228275 n

end A228275

/-! ## A228275.P3201159901105933024

`xor(A038712(A104881(n)), A104878(n))`
-/

namespace A228275.P3201159901105933024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038712 (A104881 n).toNat) (A104878 n)

end

end A228275.P3201159901105933024

namespace A228275

/-- `xor(A038712(A104881(n)), A104878(n))` -/
def P3201159901105933024.Spec : Prop :=
  ∀ n, P3201159901105933024.a n = A228275 n

end A228275

/-! ## A228275.P777852822646381283

`A023443(A104878(n))`
-/

namespace A228275.P777852822646381283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A104878 n).toNat

end

end A228275.P777852822646381283

namespace A228275

/-- `A023443(A104878(n))` -/
def P777852822646381283.Spec : Prop :=
  ∀ n, P777852822646381283.a n = A228275 n

end A228275

/-!
# A228277: Number of n X n binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or nw-se diagonally.

The programs for A228277, there is no canonical definition to state claims against.
-/

/-! ## A228277.P13773204435971474633

`A228285(∑[4*n]+1)`
-/

namespace A228277.P13773204435971474633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228277.P13773204435971474633

/-! ## A228277.P13448374980011532531

`or(char[4], A228285((n+1)²+n²))`
-/

namespace A228277.P13448374980011532531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A228285 ((n + 1) ^ 2 + n ^ 2))

end

end A228277.P13448374980011532531

/-! ## A228277.P12046090535547730478

`gcd(A151878(n), A228285((n+1)²+n²))`
-/

namespace A228277.P12046090535547730478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A228285 ((n + 1) ^ 2 + n ^ 2))

end

end A228277.P12046090535547730478

/-! ## A228277.P12341977557765457540

`A106400(n)²*A228285((n+1)²+n²)`
-/

namespace A228277.P12341977557765457540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * A228285 ((n + 1) ^ 2 + n ^ 2)

end

end A228277.P12341977557765457540

/-! ## A228277.P484756922200059613

`A228285((n+1)²+n²)+A000007(A007318(n))`
-/

namespace A228277.P484756922200059613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 ((n + 1) ^ 2 + n ^ 2) + A000007 (A007318 n).toNat

end

end A228277.P484756922200059613

/-!
# A228278: Number of n X 3 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or nw-se diagonally.

The programs for A228278, the canonical program `A228278.P510099992605727139` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228278 has offset 1).

The definition of A228278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228278.P510099992605727139

`a(n-1)+5*a(n-2)+4*a(n-3)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=13, a(3)=35, a(4)=112`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228278

/-- `a(n-1)+5*a(n-2)+4*a(n-3)-a(n-5)` -/
def P510099992605727139.Spec : Prop :=
  ∀ n, P510099992605727139.a n = A228278 (n + 1)

theorem P510099992605727139.correct : P510099992605727139.Spec := by
  intro n
  simp only [A228278, Nat.add_sub_cancel]

end A228278

/-! ## A228278.P7562142030323694753

`A228285(∑[n+2]+4)`
-/

namespace A228278.P7562142030323694753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228278.P7562142030323694753

namespace A228278

/-- `A228285(∑[n+2]+4)` -/
def P7562142030323694753.Spec : Prop :=
  ∀ n, P7562142030323694753.a n = A228278 (n + 1)

end A228278

/-! ## A228278.P9721512108175999346

`A228285(A167614(n+1))+and(1, 2*n)`
-/

namespace A228278.P9721512108175999346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A167614 (n + 1)).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A228278.P9721512108175999346

namespace A228278

/-- `A228285(A167614(n+1))+and(1, 2*n)` -/
def P9721512108175999346.Spec : Prop :=
  ∀ n, P9721512108175999346.a n = A228278 (n + 1)

end A228278

/-! ## A228278.P15415718371406216523

`or(A000038(n+1), A228285(A167614(n+1)))`
-/

namespace A228278.P15415718371406216523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n + 1)) (A228285 (A167614 (n + 1)).toNat)

end

end A228278.P15415718371406216523

namespace A228278

/-- `or(A000038(n+1), A228285(A167614(n+1)))` -/
def P15415718371406216523.Spec : Prop :=
  ∀ n, P15415718371406216523.a n = A228278 (n + 1)

end A228278

/-! ## A228278.P15600359896845236873

`A228285(A167614(n+1))/A000041(and(1, n)^n)`
-/

namespace A228278.P15600359896845236873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228285 (A167614 (n + 1)).toNat : ℚ) / (A000041 (Nat.land 1 n ^ n) : ℚ)

end

end A228278.P15600359896845236873

namespace A228278

/-- `A228285(A167614(n+1))/A000041(and(1, n)^n)` -/
def P15600359896845236873.Spec : Prop :=
  ∀ n, P15600359896845236873.a n = (A228278 (n + 1) : ℚ)

end A228278

/-!
# A228279: Number of n X 4 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or nw-se diagonally.

The programs for A228279, there is no canonical definition to state claims against.
-/

/-! ## A228279.P9111420769332947763

`A228285(A374004(n+1))`
-/

namespace A228279.P9111420769332947763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A374004 (n + 1)).toNat

end

end A228279.P9111420769332947763

/-! ## A228279.P15321467916415289767

`A228285(A052905(n)+9)`
-/

namespace A228279.P15321467916415289767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A052905 n + 9).toNat

end

end A228279.P15321467916415289767

/-! ## A228279.P16245003452230230545

`A228285(A055999(n)+10)`
-/

namespace A228279.P16245003452230230545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A055999 n + 10).toNat

end

end A228279.P16245003452230230545

/-! ## A228279.P13689676285983507067

`A228285(A167614(n+2)+1)`
-/

namespace A228279.P13689676285983507067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A167614 (n + 2) + 1).toNat

end

end A228279.P13689676285983507067

/-! ## A228279.P17596635981050192605

`A228285(Δ[A023545(n+1)-n²])`
-/

namespace A228279.P17596635981050192605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (f1 (n + 1) - f1 n).toNat

end

end A228279.P17596635981050192605

/-!
# A228280: Number of nX5 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or nw-se diagonally.

The programs for A228280, there is no canonical definition to state claims against.
-/

/-! ## A228280.P14885030439528008069

`A228285(A374005(n+1))`
-/

namespace A228280.P14885030439528008069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A374005 (n + 1)).toNat

end

end A228280.P14885030439528008069

/-! ## A228280.P16012438756124686046

`A228285(A167499(n+3))`
-/

namespace A228280.P16012438756124686046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A167499 (n + 3)).toNat

end

end A228280.P16012438756124686046

/-! ## A228280.P13780773962463047291

`A228285(A155212(n)+13)`
-/

namespace A228280.P13780773962463047291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A155212 n + 13).toNat

end

end A228280.P13780773962463047291

/-! ## A228280.P18373151343821089132

`A228285(A000217(n+4)+5)`
-/

namespace A228280.P18373151343821089132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A000217 (n + 4) + 5).toNat

end

end A228280.P18373151343821089132

/-! ## A228280.P7173252684294906346

`A228285(A052905(n+1)+10)`
-/

namespace A228280.P7173252684294906346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A052905 (n + 1) + 10).toNat

end

end A228280.P7173252684294906346

/-!
# A228281: Number of nX6 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or nw-se diagonally.

The programs for A228281, there is no canonical definition to state claims against.
-/

/-! ## A228281.P12413237676540006871

`A228285(C(n+7, 2)-n)`
-/

namespace A228281.P12413237676540006871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (Nat.choose (n + 7) 2 - n)

end

end A228281.P12413237676540006871

/-! ## A228281.P6144949017213827896

`A228285(A374007(n+1))`
-/

namespace A228281.P6144949017213827896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A374007 (n + 1)).toNat

end

end A228281.P6144949017213827896

/-! ## A228281.P5164111129429025713

`A228285(A167499(n+4)+1)`
-/

namespace A228281.P5164111129429025713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A167499 (n + 4) + 1).toNat

end

end A228281.P5164111129429025713

/-! ## A228281.P13263959714449446066

`A228285(A000217(n+5)+6)`
-/

namespace A228281.P13263959714449446066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A000217 (n + 5) + 6).toNat

end

end A228281.P13263959714449446066

/-! ## A228281.P5548174670548352009

`A228285(Δ[A023545(n+1)]+10)`
-/

namespace A228281.P5548174670548352009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (f1 (n + 1) - f1 n + 10).toNat

end

end A228281.P5548174670548352009

/-!
# A228282: Number of nX7 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or nw-se diagonally.

The programs for A228282, there is no canonical definition to state claims against.
-/

/-! ## A228282.P13431305956634847183

`A228285(A374008(n+1))`
-/

namespace A228282.P13431305956634847183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A374008 (n + 1)).toNat

end

end A228282.P13431305956634847183

/-! ## A228282.P5382787820520637401

`A228285(eq[11, A066657(n)])`
-/

namespace A228282.P5382787820520637401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228282.P5382787820520637401

/-! ## A228282.P9510609752569497095

`A228285(eq[8, A131818(n+1)])`
-/

namespace A228282.P9510609752569497095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228282.P9510609752569497095

/-! ## A228282.P4603137680355042674

`A228285(A055999(n+4))`
-/

namespace A228282.P4603137680355042674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A055999 (n + 4)).toNat

end

end A228282.P4603137680355042674

/-! ## A228282.P14398835688537363882

`A228285(eq[4, A219347(n)])`
-/

namespace A228282.P14398835688537363882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228282.P14398835688537363882

/-!
# A228283: Number of nX8 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or nw-se diagonally.

The programs for A228283, there is no canonical definition to state claims against.
-/

/-! ## A228283.P7190666932973997261

`A228285(A374009(n+1))`
-/

namespace A228283.P7190666932973997261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A374009 (n + 1)).toNat

end

end A228283.P7190666932973997261

/-! ## A228283.P14960412302840942492

`A228285(eq[13, A066657(n)])`
-/

namespace A228283.P14960412302840942492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228283.P14960412302840942492

/-! ## A228283.P1494866509730735829

`A228285(eq[9, A131818(n+1)])`
-/

namespace A228283.P1494866509730735829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228283.P1494866509730735829

/-! ## A228283.P4078892847940318241

`A228285(eq[5, A219347(n)])`
-/

namespace A228283.P4078892847940318241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228283.P4078892847940318241

/-! ## A228283.P14801436000367798987

`A228285(eq[7, A193592(n)])`
-/

namespace A228283.P14801436000367798987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228283.P14801436000367798987

/-!
# A228284: Number of nX9 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or nw-se diagonally.

The programs for A228284, there is no canonical definition to state claims against.
-/

/-! ## A228284.P7072387975980153542

`A228285(A374010(n+1))`
-/

namespace A228284.P7072387975980153542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A374010 (n + 1)).toNat

end

end A228284.P7072387975980153542

/-! ## A228284.P1542802075291989570

`A228285(A175631(n+10)+10)`
-/

namespace A228284.P1542802075291989570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A175631 (n + 10) + 10).toNat

end

end A228284.P1542802075291989570

/-! ## A228284.P1380657157603611578

`A228285(eq[10, A131818(n+1)])`
-/

namespace A228284.P1380657157603611578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228284.P1380657157603611578

/-! ## A228284.P13194543634833803978

`A228285(A155212(n+5))`
-/

namespace A228284.P13194543634833803978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (A155212 (n + 5)).toNat

end

end A228284.P13194543634833803978

/-! ## A228284.P2593951986463202289

`A228285(eq[6, A219347(n)])`
-/

namespace A228284.P2593951986463202289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228284.P2593951986463202289

/-!
# A228285: T(n,k) = Number of n X k binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or nw-se diagonally.

The programs for A228285, there is no canonical definition to state claims against.
-/

/-! ## A228285.P17553351674692998272

`A228506(n+1)+A215020(A022171(n))`
-/

namespace A228285.P17553351674692998272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (n + 1) + A215020 (A022171 n).toNat

end

end A228285.P17553351674692998272

/-! ## A228285.P6701266099377583983

`A308064(record[A247917(n)])+A228506(n+1)`
-/

namespace A228285.P6701266099377583983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A228506 (n + 1)

end

end A228285.P6701266099377583983

/-! ## A228285.P1944351185955268726

`A228506(n+1)+A055641(A011782(n))`
-/

namespace A228285.P1944351185955268726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (n + 1) + A055641 (A011782 n).toNat

end

end A228285.P1944351185955268726

/-! ## A228285.P2754241044042906685

`A289165(A110334(n))+A228506(n+1)`
-/

namespace A228285.P2754241044042906685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A110334 n).toNat + A228506 (n + 1)

end

end A228285.P2754241044042906685

/-!
# A228286: Smallest x + y*z, given x*y + z = n (for positive integers x, y, z).

The programs for A228286, there is no canonical definition to state claims against.
-/

/-! ## A228286.P11145275182095373780

`A338885(∑[A338886(n+1)]+2)`
-/

namespace A228286.P11145275182095373780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338885 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A228286.P11145275182095373780

/-! ## A228286.P14921051858297810193

`A063655(A172038(4*(n+1))+A028310(n))`
-/

namespace A228286.P14921051858297810193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A172038 (4 * (n + 1)) + A028310 n).toNat

end

end A228286.P14921051858297810193

/-! ## A228286.P5929959539420241380

`A000267(A006530(A108951(n+1))+n)`
-/

namespace A228286.P5929959539420241380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A006530 (A108951 (n + 1)).toNat + (n : ℤ)).toNat

end

end A228286.P5929959539420241380

/-! ## A228286.P10171540702440483553

`A000267(A118759(A323616(n+1)+n))`
-/

namespace A228286.P10171540702440483553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A118759 (A323616 (n + 1) + (n : ℤ)).toNat).toNat

end

end A228286.P10171540702440483553

/-! ## A228286.P13341166351707288181

`A055640(A090882(n+1))+A001462(n+2)`
-/

namespace A228286.P13341166351707288181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A090882 (n + 1)).toNat + A001462 (n + 2)

end

end A228286.P13341166351707288181

/-!
# A228287: Smallest value of z in the minimal value of x + y*z, given x*y + z = n (where x, y, z are positive integers).

The programs for A228287, there is no canonical definition to state claims against.
-/

/-! ## A228287.P15826927463953868107

`A073203(C(A253556(n+1), A000005(n+1)))`
-/

namespace A228287.P15826927463953868107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073203 (Nat.choose (A253556 (n + 1)).toNat (A000005 (n + 1)).toNat)

end

end A228287.P15826927463953868107

/-! ## A228287.P3434779250202113747

`A088601(gcd(A134570(n+1), A279119(n+1)))`
-/

namespace A228287.P3434779250202113747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088601 (Int.gcd (A134570 (n + 1)) (A279119 (n + 1)))

end

end A228287.P3434779250202113747

/-! ## A228287.P5249489262860477684

`gcd(A093075(n+1), A130130(A210209(n)))`
-/

namespace A228287.P5249489262860477684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093075 (n + 1)) (A130130 (A210209 n).toNat)

end

end A228287.P5249489262860477684

/-! ## A228287.P2280161615624376468

`A329320(or(A297108(n+1), A302776(n+2)))`
-/

namespace A228287.P2280161615624376468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (Int.lor (A297108 (n + 1)) (A302776 (n + 2))).toNat

end

end A228287.P2280161615624376468

/-! ## A228287.P410851162733305674

`A348978(A121289(2*(n+1)))%3`
-/

namespace A228287.P410851162733305674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348978 (A121289 (2 * (n + 1))).toNat) 3

end

end A228287.P410851162733305674

/-!
# A228288: Smallest k such that z = n in the minimal value of x + y*z, given x*y + z = k (for positive integers x, y, z).

The programs for A228288, there is no canonical definition to state claims against.
-/

/-! ## A228288.P15853426704241204110

`A340690(round(6^(n/2)))`
-/

namespace A228288.P15853426704241204110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340690 (SequenceMachineLib.roundAway ((6 : ℝ) ^ ((n : ℚ) / 2 : ℝ))).toNat

end

end A228288.P15853426704241204110

/-!
# A228290: a(n) = n^6 + n^5 + n^4 + n^3 + n^2 + n.

The programs for A228290, the canonical program `A228290.P10265878406130030480` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228290 has offset 0).

The definition of A228290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6+n^5+n^4+n^3+n²+n` (program `A228290.P10265878406130030480`, by `A228290.P10265878406130030480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228290.P14105230454285289626

`n*(n+1)*(1+n+n²)*(1-n+n²)`
-/

namespace A228290.P14105230454285289626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (1 + n + n ^ 2) : ℤ) * (1 - (n : ℤ) + (n ^ 2 : ℤ))

end

end A228290.P14105230454285289626

namespace A228290

/-- `n*(n+1)*(1+n+n²)*(1-n+n²)` -/
def P14105230454285289626.Spec : Prop :=
  ∀ n, P14105230454285289626.a n = A228290 n

theorem P14105230454285289626.correct : P14105230454285289626.Spec := by
  intro n
  simp only [A228290, Nat.add_sub_cancel, A228290.P14105230454285289626.a, A228290.P10265878406130030480.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A228290

/-! ## A228290.P10265878406130030480

`n^6+n^5+n^4+n^3+n²+n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228290

/-- `n^6+n^5+n^4+n^3+n²+n` -/
def P10265878406130030480.Spec : Prop :=
  ∀ n, (P10265878406130030480.a n : ℤ) = A228290 n

theorem P10265878406130030480.correct : P10265878406130030480.Spec := by
  intro n
  simp only [A228290]

end A228290

/-! ## A228290.P3972886377282292127

`lcm(n²²+n, n²+1+n)`
-/

namespace A228290.P3972886377282292127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n ^ 2) ^ 2 + n) (n ^ 2 + 1 + n)

end

end A228290.P3972886377282292127

namespace A228290

/-- `lcm(n²²+n, n²+1+n)` -/
def P3972886377282292127.Spec : Prop :=
  ∀ n, (P3972886377282292127.a n : ℤ) = A228290 n

end A228290

/-!
# A228291: a(n) = Sum_{k=1..7} n^k.

The programs for A228291, the canonical program `A228291.P9920330225651710321` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228291 has offset 0).

The definition of A228291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228291.P9920330225651710321

`(n^4+1)*(n²+1)*(n+1)-1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228291

/-- `(n^4+1)*(n²+1)*(n+1)-1` -/
def P9920330225651710321.Spec : Prop :=
  ∀ n, P9920330225651710321.a n = A228291 n

theorem P9920330225651710321.correct : P9920330225651710321.Spec := by
  intro n
  simp only [A228291]

end A228291

/-! ## A228291.P14211875249758331551

`n*(A228290(n)+1)`
-/

namespace A228291.P14211875249758331551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228290 n + 1)

end

end A228291.P14211875249758331551

namespace A228291

/-- `n*(A228290(n)+1)` -/
def P14211875249758331551.Spec : Prop :=
  ∀ n, P14211875249758331551.a n = A228291 n

theorem P14211875249758331551.correct : P14211875249758331551.Spec := by
  intro n
  simp only [A228291, Nat.add_sub_cancel, A228291.P14211875249758331551.a, A228291.P9920330225651710321.a, A228290, A228290.P10265878406130030480.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228291

/-! ## A228291.P16205773556272270684

`lcm(n, 1-A053717(n))`
-/

namespace A228291.P16205773556272270684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - A053717 n)

end

end A228291.P16205773556272270684

namespace A228291

/-- `lcm(n, 1-A053717(n))` -/
def P16205773556272270684.Spec : Prop :=
  ∀ n, (P16205773556272270684.a n : ℤ) = A228291 n

end A228291

/-! ## A228291.P13196615300175129139

`n*(6*A059721(n)+1)`
-/

namespace A228291.P13196615300175129139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (6 * A059721 n + 1)

end

end A228291.P13196615300175129139

namespace A228291

/-- `n*(6*A059721(n)+1)` -/
def P13196615300175129139.Spec : Prop :=
  ∀ n, P13196615300175129139.a n = A228291 n

end A228291

/-! ## A228291.P8083920264540333181

`abs(1-(n+1)*A059830(n))`
-/

namespace A228291.P8083920264540333181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n + 1 : ℤ) * A059830 n|

end

end A228291.P8083920264540333181

namespace A228291

/-- `abs(1-(n+1)*A059830(n))` -/
def P8083920264540333181.Spec : Prop :=
  ∀ n, P8083920264540333181.a n = A228291 n

end A228291

/-! ## A228291.P1121847409394371344

`(A053717(n)-A057427(n))*A057427(n)`
-/

namespace A228291.P1121847409394371344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053717 n - A057427 n) * A057427 n

end

end A228291.P1121847409394371344

namespace A228291

/-- `(A053717(n)-A057427(n))*A057427(n)` -/
def P1121847409394371344.Spec : Prop :=
  ∀ n, P1121847409394371344.a n = A228291 n

end A228291

/-!
# A228292: a(n) = Sum_{k=1..8} n^k.

The programs for A228292, the canonical program `A228292.P17749480414567481058` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228292 has offset 0).

The definition of A228292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228292.P17749480414567481058

`n*A053717(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A228292

/-- `n*A053717(n)` -/
def P17749480414567481058.Spec : Prop :=
  ∀ n, P17749480414567481058.a n = A228292 n

theorem P17749480414567481058.correct : P17749480414567481058.Spec := by
  intro n
  simp only [A228292]

end A228292

/-! ## A228292.P16698516098469951439

`(n^4+1)*(n²+1)*∑[2*n]`
-/

namespace A228292.P16698516098469951439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + 1) * ((n ^ 2 + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A228292.P16698516098469951439

namespace A228292

/-- `(n^4+1)*(n²+1)*∑[2*n]` -/
def P16698516098469951439.Spec : Prop :=
  ∀ n, (P16698516098469951439.a n : ℤ) = A228292 n

end A228292

/-! ## A228292.P12625871727170923851

`A102909(n)-1`
-/

namespace A228292.P12625871727170923851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102909 n - 1

end

end A228292.P12625871727170923851

namespace A228292

/-- `A102909(n)-1` -/
def P12625871727170923851.Spec : Prop :=
  ∀ n, P12625871727170923851.a n = A228292 n

theorem P12625871727170923851.correct : P12625871727170923851.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P12625871727170923851.a, A228292.P17749480414567481058.a, A053717, A053717.P5334508227328252156.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P4987641967114930942

`n*A228291(n)+n`
-/

namespace A228292.P4987641967114930942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228291 n + (n : ℤ)

end

end A228292.P4987641967114930942

namespace A228292

/-- `n*A228291(n)+n` -/
def P4987641967114930942.Spec : Prop :=
  ∀ n, P4987641967114930942.a n = A228292 n

theorem P4987641967114930942.correct : P4987641967114930942.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P4987641967114930942.a, A228292.P17749480414567481058.a, A053717, A053717.P5334508227328252156.a, A228291, A228291.P9920330225651710321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P8234632539344473698

`A228291(n)+A001016(n)`
-/

namespace A228292.P8234632539344473698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228291 n + A001016 n

end

end A228292.P8234632539344473698

namespace A228292

/-- `A228291(n)+A001016(n)` -/
def P8234632539344473698.Spec : Prop :=
  ∀ n, P8234632539344473698.a n = A228292 n

theorem P8234632539344473698.correct : P8234632539344473698.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P8234632539344473698.a, A228292.P17749480414567481058.a, A001016, A001016.P10257285112668202493.a, A053717, A053717.P5334508227328252156.a, A228291, A228291.P9920330225651710321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P9610181957889376418

`A053717(n)-A024006(n)`
-/

namespace A228292.P9610181957889376418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053717 n - A024006 n

end

end A228292.P9610181957889376418

namespace A228292

/-- `A053717(n)-A024006(n)` -/
def P9610181957889376418.Spec : Prop :=
  ∀ n, P9610181957889376418.a n = A228292 n

theorem P9610181957889376418.correct : P9610181957889376418.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P9610181957889376418.a, A228292.P17749480414567481058.a, A024006, A024006.P17069346260229546843.a, A053717, A053717.P5334508227328252156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P17679029674067106985

`A228293(n)-A001017(n)`
-/

namespace A228292.P17679029674067106985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228293 n - A001017 n

end

end A228292.P17679029674067106985

namespace A228292

/-- `A228293(n)-A001017(n)` -/
def P17679029674067106985.Spec : Prop :=
  ∀ n, P17679029674067106985.a n = A228292 n

theorem P17679029674067106985.correct : P17679029674067106985.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P17679029674067106985.a, A228292.P17749480414567481058.a, A001017, A001017.P9152421289291957289.a, A053717, A053717.P5334508227328252156.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P10659762090061030404

`lcm(A002378(n), A053717(n))`
-/

namespace A228292.P10659762090061030404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002378 n) (A053717 n)

end

end A228292.P10659762090061030404

namespace A228292

/-- `lcm(A002378(n), A053717(n))` -/
def P10659762090061030404.Spec : Prop :=
  ∀ n, (P10659762090061030404.a n : ℤ) = A228292 n

end A228292

/-! ## A228292.P17796166554470139344

`A001016(n)+A053717(n)-1`
-/

namespace A228292.P17796166554470139344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n + (A053717 n - 1)

end

end A228292.P17796166554470139344

namespace A228292

/-- `A001016(n)+A053717(n)-1` -/
def P17796166554470139344.Spec : Prop :=
  ∀ n, P17796166554470139344.a n = A228292 n

theorem P17796166554470139344.correct : P17796166554470139344.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P17796166554470139344.a, A228292.P17749480414567481058.a, A001016, A001016.P10257285112668202493.a, A053717, A053717.P5334508227328252156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P9463357709944990619

`A103623(n)-(A001017(n)+1)`
-/

namespace A228292.P9463357709944990619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103623 n - (A001017 n + 1)

end

end A228292.P9463357709944990619

namespace A228292

/-- `A103623(n)-(A001017(n)+1)` -/
def P9463357709944990619.Spec : Prop :=
  ∀ n, P9463357709944990619.a n = A228292 n

theorem P9463357709944990619.correct : P9463357709944990619.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P9463357709944990619.a, A228292.P17749480414567481058.a, A001017, A001017.P9152421289291957289.a, A053717, A053717.P5334508227328252156.a, A103623, A103623.P4185738790634728714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P13770147680962214946

`A024007(n)+A228293(n)-1`
-/

namespace A228292.P13770147680962214946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024007 n + (A228293 n - 1)

end

end A228292.P13770147680962214946

namespace A228292

/-- `A024007(n)+A228293(n)-1` -/
def P13770147680962214946.Spec : Prop :=
  ∀ n, P13770147680962214946.a n = A228292 n

theorem P13770147680962214946.correct : P13770147680962214946.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P13770147680962214946.a, A228292.P17749480414567481058.a, A024007, A024007.P2019830728715847895.a, A053717, A053717.P5334508227328252156.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P16022239670619457313

`A060890(n)+A228291(n)-1`
-/

namespace A228292.P16022239670619457313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060890 n + (A228291 n - 1)

end

end A228292.P16022239670619457313

namespace A228292

/-- `A060890(n)+A228291(n)-1` -/
def P16022239670619457313.Spec : Prop :=
  ∀ n, P16022239670619457313.a n = A228292 n

theorem P16022239670619457313.correct : P16022239670619457313.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P16022239670619457313.a, A228292.P17749480414567481058.a, A053717, A053717.P5334508227328252156.a, A060890, A060890.P12762543378779748885.a, A228291, A228291.P9920330225651710321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P5624079214317848504

`A053717(n)+A060890(n)-2`
-/

namespace A228292.P5624079214317848504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053717 n + (A060890 n - 2)

end

end A228292.P5624079214317848504

namespace A228292

/-- `A053717(n)+A060890(n)-2` -/
def P5624079214317848504.Spec : Prop :=
  ∀ n, P5624079214317848504.a n = A228292 n

theorem P5624079214317848504.correct : P5624079214317848504.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P5624079214317848504.a, A228292.P17749480414567481058.a, A053717, A053717.P5334508227328252156.a, A060890, A060890.P12762543378779748885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P1732886542879778241

`A046092(n)*A059830(n)/2`
-/

namespace A228292.P1732886542879778241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046092 n * A059830 n : ℚ) / 2

end

end A228292.P1732886542879778241

namespace A228292

/-- `A046092(n)*A059830(n)/2` -/
def P1732886542879778241.Spec : Prop :=
  ∀ n, P1732886542879778241.a n = (A228292 n : ℚ)

theorem P1732886542879778241.correct : P1732886542879778241.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P1732886542879778241.a, A228292.P17749480414567481058.a, A046092, A046092.P16411658895297056450.a, A053717, A053717.P5334508227328252156.a, A059830, A059830.P6751440411654911174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P13350983245428218188

`A027445(n)+A000583(n)*A027445(n)`
-/

namespace A228292.P13350983245428218188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 n + A000583 n * A027445 n

end

end A228292.P13350983245428218188

namespace A228292

/-- `A027445(n)+A000583(n)*A027445(n)` -/
def P13350983245428218188.Spec : Prop :=
  ∀ n, P13350983245428218188.a n = A228292 n

theorem P13350983245428218188.correct : P13350983245428218188.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P13350983245428218188.a, A228292.P17749480414567481058.a, A000583, A000583.P14547500281748394449.a, A027445, A027445.P2062535294747488403.a, A053717, A053717.P5334508227328252156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P972484709290779974

`A027444(n)+A000583(n)*A053699(n)`
-/

namespace A228292.P972484709290779974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n + A000583 n * A053699 n

end

end A228292.P972484709290779974

namespace A228292

/-- `A027444(n)+A000583(n)*A053699(n)` -/
def P972484709290779974.Spec : Prop :=
  ∀ n, P972484709290779974.a n = A228292 n

theorem P972484709290779974.correct : P972484709290779974.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P972484709290779974.a, A228292.P17749480414567481058.a, A000583, A000583.P14547500281748394449.a, A027444, A027444.P13486811862535796769.a, A053699, A053699.P12401549741545410249.a, A053717, A053717.P5334508227328252156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P16023774981608041698

`A002523(n)*A053699(n)-A002523(n)`
-/

namespace A228292.P16023774981608041698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n * A053699 n - A002523 n

end

end A228292.P16023774981608041698

namespace A228292

/-- `A002523(n)*A053699(n)-A002523(n)` -/
def P16023774981608041698.Spec : Prop :=
  ∀ n, P16023774981608041698.a n = A228292 n

theorem P16023774981608041698.correct : P16023774981608041698.Spec := by
  intro n
  simp only [A228292, Nat.add_sub_cancel, A228292.P16023774981608041698.a, A228292.P17749480414567481058.a, A002523, A002523.P178649398705969946.a, A053699, A053699.P12401549741545410249.a, A053717, A053717.P5334508227328252156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228292

/-! ## A228292.P1590210088883452308

`xor(A007318(∑[n]), A102909(n))`
-/

namespace A228292.P1590210088883452308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A102909 n)

end

end A228292.P1590210088883452308

namespace A228292

/-- `xor(A007318(∑[n]), A102909(n))` -/
def P1590210088883452308.Spec : Prop :=
  ∀ n, P1590210088883452308.a n = A228292 n

end A228292

/-!
# A228293: a(n) = Sum_{k=1..9} n^k.

The programs for A228293, the canonical program `A228293.P3194510713492956610` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228293 has offset 0).

The definition of A228293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228293.P3194510713492956610

`n*A102909(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A228293

/-- `n*A102909(n)` -/
def P3194510713492956610.Spec : Prop :=
  ∀ n, P3194510713492956610.a n = A228293 n

theorem P3194510713492956610.correct : P3194510713492956610.Spec := by
  intro n
  simp only [A228293]

end A228293

/-! ## A228293.P149915503723399408

`(n+1)*n^8+n^7+n^6+n^5+n^4+n^3+n²+n`
-/

namespace A228293.P149915503723399408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ 8 + n ^ 7 + n ^ 6 + n ^ 5 + n ^ 4 + n ^ 3 + n ^ 2 + n

end

end A228293.P149915503723399408

namespace A228293

/-- `(n+1)*n^8+n^7+n^6+n^5+n^4+n^3+n²+n` -/
def P149915503723399408.Spec : Prop :=
  ∀ n, (P149915503723399408.a n : ℤ) = A228293 n

theorem P149915503723399408.correct : P149915503723399408.Spec := by
  intro n
  simp only [A228293, Nat.add_sub_cancel, A228293.P149915503723399408.a, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228293

/-! ## A228293.P5021989379668903814

`n*(A228292(n)+1)`
-/

namespace A228293.P5021989379668903814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228292 n + 1)

end

end A228293.P5021989379668903814

namespace A228293

/-- `n*(A228292(n)+1)` -/
def P5021989379668903814.Spec : Prop :=
  ∀ n, P5021989379668903814.a n = A228293 n

theorem P5021989379668903814.correct : P5021989379668903814.Spec := by
  intro n
  simp only [A228293, Nat.add_sub_cancel, A228293.P5021989379668903814.a, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, A228292, A228292.P17749480414567481058.a, A053717, A053717.P5334508227328252156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228293

/-! ## A228293.P14651025492374316994

`n*(n*A053717(n)+1)`
-/

namespace A228293.P14651025492374316994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A053717 n + 1)

end

end A228293.P14651025492374316994

namespace A228293

/-- `n*(n*A053717(n)+1)` -/
def P14651025492374316994.Spec : Prop :=
  ∀ n, P14651025492374316994.a n = A228293 n

theorem P14651025492374316994.correct : P14651025492374316994.Spec := by
  intro n
  simp only [A228293, Nat.add_sub_cancel, A228293.P14651025492374316994.a, A228293.P3194510713492956610.a, A053717, A053717.P5334508227328252156.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228293

/-! ## A228293.P15009493432972384284

`n*((n+1)*n*A059830(n)+1)`
-/

namespace A228293.P15009493432972384284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 1 : ℤ) * ((n : ℤ) * A059830 n) + 1)

end

end A228293.P15009493432972384284

namespace A228293

/-- `n*((n+1)*n*A059830(n)+1)` -/
def P15009493432972384284.Spec : Prop :=
  ∀ n, P15009493432972384284.a n = A228293 n

theorem P15009493432972384284.correct : P15009493432972384284.Spec := by
  intro n
  simp only [A228293, Nat.add_sub_cancel, A228293.P15009493432972384284.a, A228293.P3194510713492956610.a, A059830, A059830.P6751440411654911174.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228293

/-! ## A228293.P12460644527704875918

`A027444(n)*A060883(n)`
-/

namespace A228293.P12460644527704875918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n * A060883 n

end

end A228293.P12460644527704875918

namespace A228293

/-- `A027444(n)*A060883(n)` -/
def P12460644527704875918.Spec : Prop :=
  ∀ n, P12460644527704875918.a n = A228293 n

theorem P12460644527704875918.correct : P12460644527704875918.Spec := by
  intro n
  simp only [A228293, Nat.add_sub_cancel, A228293.P12460644527704875918.a, A228293.P3194510713492956610.a, A027444, A027444.P13486811862535796769.a, A060883, A060883.P9775535391316657163.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228293

/-! ## A228293.P15836282393600197066

`lcm(A027444(n), A102909(n))`
-/

namespace A228293.P15836282393600197066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027444 n) (A102909 n)

end

end A228293.P15836282393600197066

namespace A228293

/-- `lcm(A027444(n), A102909(n))` -/
def P15836282393600197066.Spec : Prop :=
  ∀ n, (P15836282393600197066.a n : ℤ) = A228293 n

end A228293

/-! ## A228293.P5442544677474118445

`xor(A038712(n+1), A103623(n))`
-/

namespace A228293.P5442544677474118445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038712 (n + 1)) (A103623 n)

end

end A228293.P5442544677474118445

namespace A228293

/-- `xor(A038712(n+1), A103623(n))` -/
def P5442544677474118445.Spec : Prop :=
  ∀ n, P5442544677474118445.a n = A228293 n

end A228293

/-! ## A228293.P5462594818733826011

`n*(A053717(n)+A001016(n))`
-/

namespace A228293.P5462594818733826011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A053717 n + A001016 n)

end

end A228293.P5462594818733826011

namespace A228293

/-- `n*(A053717(n)+A001016(n))` -/
def P5462594818733826011.Spec : Prop :=
  ∀ n, P5462594818733826011.a n = A228293 n

theorem P5462594818733826011.correct : P5462594818733826011.Spec := by
  intro n
  simp only [A228293, Nat.add_sub_cancel, A228293.P5462594818733826011.a, A228293.P3194510713492956610.a, A001016, A001016.P10257285112668202493.a, A053717, A053717.P5334508227328252156.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228293

/-! ## A228293.P5494157227721553504

`n*(A228291(n)+A060890(n))`
-/

namespace A228293.P5494157227721553504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228291 n + A060890 n)

end

end A228293.P5494157227721553504

namespace A228293

/-- `n*(A228291(n)+A060890(n))` -/
def P5494157227721553504.Spec : Prop :=
  ∀ n, P5494157227721553504.a n = A228293 n

theorem P5494157227721553504.correct : P5494157227721553504.Spec := by
  intro n
  simp only [A228293, Nat.add_sub_cancel, A228293.P5494157227721553504.a, A228293.P3194510713492956610.a, A060890, A060890.P12762543378779748885.a, A102909, A102909.P16540505337403562300.a, A228291, A228291.P9920330225651710321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228293

/-! ## A228293.P2444205628100362649

`n*(A103623(n)-A001017(n))`
-/

namespace A228293.P2444205628100362649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A103623 n - A001017 n)

end

end A228293.P2444205628100362649

namespace A228293

/-- `n*(A103623(n)-A001017(n))` -/
def P2444205628100362649.Spec : Prop :=
  ∀ n, P2444205628100362649.a n = A228293 n

theorem P2444205628100362649.correct : P2444205628100362649.Spec := by
  intro n
  simp only [A228293, Nat.add_sub_cancel, A228293.P2444205628100362649.a, A228293.P3194510713492956610.a, A001017, A001017.P9152421289291957289.a, A102909, A102909.P16540505337403562300.a, A103623, A103623.P4185738790634728714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228293

/-! ## A228293.P3937847918272329161

`n*(A059830(n)/2*A046092(n)+1)`
-/

namespace A228293.P3937847918272329161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A059830 n : ℚ) / 2 * (A046092 n : ℚ) + 1)

end

end A228293.P3937847918272329161

namespace A228293

/-- `n*(A059830(n)/2*A046092(n)+1)` -/
def P3937847918272329161.Spec : Prop :=
  ∀ n, P3937847918272329161.a n = (A228293 n : ℚ)

theorem P3937847918272329161.correct : P3937847918272329161.Spec := by
  intro n
  simp only [A228293, Nat.add_sub_cancel, A228293.P3937847918272329161.a, A228293.P3194510713492956610.a, A046092, A046092.P16411658895297056450.a, A059830, A059830.P6751440411654911174.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228293

/-! ## A228293.P12883184184209060314

`(A053699(n)-A002523(n))*A060883(n)`
-/

namespace A228293.P12883184184209060314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053699 n - A002523 n) * A060883 n

end

end A228293.P12883184184209060314

namespace A228293

/-- `(A053699(n)-A002523(n))*A060883(n)` -/
def P12883184184209060314.Spec : Prop :=
  ∀ n, P12883184184209060314.a n = A228293 n

theorem P12883184184209060314.correct : P12883184184209060314.Spec := by
  intro n
  simp only [A228293, Nat.add_sub_cancel, A228293.P12883184184209060314.a, A228293.P3194510713492956610.a, A002523, A002523.P178649398705969946.a, A053699, A053699.P12401549741545410249.a, A060883, A060883.P9775535391316657163.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228293

/-!
# A228294: a(n) = Sum_{k=1..10} n^k.

The programs for A228294, the canonical program `A228294.P8313310365846261537` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228294 has offset 0).

The definition of A228294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228294.P8313310365846261537

`A060885(n)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228294

/-- `A060885(n)-1` -/
def P8313310365846261537.Spec : Prop :=
  ∀ n, P8313310365846261537.a n = A228294 n

theorem P8313310365846261537.correct : P8313310365846261537.Spec := by
  intro n
  simp only [A228294]

end A228294

/-! ## A228294.P7026454817033667085

`n*A103623(n)`
-/

namespace A228294.P7026454817033667085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103623 n

end

end A228294.P7026454817033667085

namespace A228294

/-- `n*A103623(n)` -/
def P7026454817033667085.Spec : Prop :=
  ∀ n, P7026454817033667085.a n = A228294 n

theorem P7026454817033667085.correct : P7026454817033667085.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P7026454817033667085.a, A228294.P8313310365846261537.a, A060885, A060885.P6901912794972420859.a, A103623, A103623.P4185738790634728714.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P7456791724674898136

`n*(A228293(n)+1)`
-/

namespace A228294.P7456791724674898136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228293 n + 1)

end

end A228294.P7456791724674898136

namespace A228294

/-- `n*(A228293(n)+1)` -/
def P7456791724674898136.Spec : Prop :=
  ∀ n, P7456791724674898136.a n = A228294 n

theorem P7456791724674898136.correct : P7456791724674898136.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P7456791724674898136.a, A228294.P8313310365846261537.a, A060885, A060885.P6901912794972420859.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P4875281802569986659

`∑[2*n]*A059839(n)`
-/

namespace A228294.P4875281802569986659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059839 n

end

end A228294.P4875281802569986659

namespace A228294

/-- `∑[2*n]*A059839(n)` -/
def P4875281802569986659.Spec : Prop :=
  ∀ n, P4875281802569986659.a n = A228294 n

end A228294

/-! ## A228294.P2628181238104477140

`n²*A102909(n)+n`
-/

namespace A228294.P2628181238104477140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A102909 n + (n : ℤ)

end

end A228294.P2628181238104477140

namespace A228294

/-- `n²*A102909(n)+n` -/
def P2628181238104477140.Spec : Prop :=
  ∀ n, P2628181238104477140.a n = A228294 n

theorem P2628181238104477140.correct : P2628181238104477140.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P2628181238104477140.a, A228294.P8313310365846261537.a, A060885, A060885.P6901912794972420859.a, A102909, A102909.P16540505337403562300.a, A228293, A228293.P3194510713492956610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P5939932697930978736

`A228293(n)+A008454(n)`
-/

namespace A228294.P5939932697930978736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228293 n + A008454 n

end

end A228294.P5939932697930978736

namespace A228294

/-- `A228293(n)+A008454(n)` -/
def P5939932697930978736.Spec : Prop :=
  ∀ n, P5939932697930978736.a n = A228294 n

theorem P5939932697930978736.correct : P5939932697930978736.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P5939932697930978736.a, A228294.P8313310365846261537.a, A008454, A008454.P6486498320967950731.a, A060885, A060885.P6901912794972420859.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P1886949378200627077

`A103623(n)-A024008(n)`
-/

namespace A228294.P1886949378200627077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103623 n - A024008 n

end

end A228294.P1886949378200627077

namespace A228294

/-- `A103623(n)-A024008(n)` -/
def P1886949378200627077.Spec : Prop :=
  ∀ n, P1886949378200627077.a n = A228294 n

theorem P1886949378200627077.correct : P1886949378200627077.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P1886949378200627077.a, A228294.P8313310365846261537.a, A024008, A024008.P2340546623145863810.a, A060885, A060885.P6901912794972420859.a, A103623, A103623.P4185738790634728714.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P9124379602535907425

`A053699(n)*A131472(n)`
-/

namespace A228294.P9124379602535907425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 n * A131472 n

end

end A228294.P9124379602535907425

namespace A228294

/-- `A053699(n)*A131472(n)` -/
def P9124379602535907425.Spec : Prop :=
  ∀ n, P9124379602535907425.a n = A228294 n

theorem P9124379602535907425.correct : P9124379602535907425.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P9124379602535907425.a, A228294.P8313310365846261537.a, A053699, A053699.P12401549741545410249.a, A060885, A060885.P6901912794972420859.a, A131472, A131472.P7274504250054804871.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P7991119010398212024

`lcm(A002378(n), A103623(n))`
-/

namespace A228294.P7991119010398212024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002378 n) (A103623 n)

end

end A228294.P7991119010398212024

namespace A228294

/-- `lcm(A002378(n), A103623(n))` -/
def P7991119010398212024.Spec : Prop :=
  ∀ n, (P7991119010398212024.a n : ℤ) = A228294 n

end A228294

/-! ## A228294.P8482145733239601450

`A008454(n)+A103623(n)-1`
-/

namespace A228294.P8482145733239601450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n + (A103623 n - 1)

end

end A228294.P8482145733239601450

namespace A228294

/-- `A008454(n)+A103623(n)-1` -/
def P8482145733239601450.Spec : Prop :=
  ∀ n, P8482145733239601450.a n = A228294 n

theorem P8482145733239601450.correct : P8482145733239601450.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P8482145733239601450.a, A228294.P8313310365846261537.a, A008454, A008454.P6486498320967950731.a, A060885, A060885.P6901912794972420859.a, A103623, A103623.P4185738790634728714.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P8086018935822406907

`A105067(n)-(A008455(n)+1)`
-/

namespace A228294.P8086018935822406907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105067 n - (A008455 n + 1)

end

end A228294.P8086018935822406907

namespace A228294

/-- `A105067(n)-(A008455(n)+1)` -/
def P8086018935822406907.Spec : Prop :=
  ∀ n, P8086018935822406907.a n = A228294 n

theorem P8086018935822406907.correct : P8086018935822406907.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P8086018935822406907.a, A228294.P8313310365846261537.a, A008455, A008455.P9534885858269672633.a, A060885, A060885.P6901912794972420859.a, A105067, A105067.P16107214246439632931.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P18234479332537411313

`(2-A024003(n))*A152031(n)`
-/

namespace A228294.P18234479332537411313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A024003 n) * A152031 n

end

end A228294.P18234479332537411313

namespace A228294

/-- `(2-A024003(n))*A152031(n)` -/
def P18234479332537411313.Spec : Prop :=
  ∀ n, P18234479332537411313.a n = A228294 n

theorem P18234479332537411313.correct : P18234479332537411313.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P18234479332537411313.a, A228294.P8313310365846261537.a, A024003, A024003.P9184774219160180946.a, A060885, A060885.P6901912794972420859.a, A152031, A152031.P4813536305443447541.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P1901826635009084513

`n*(A102909(n)+A001017(n))`
-/

namespace A228294.P1901826635009084513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A102909 n + A001017 n)

end

end A228294.P1901826635009084513

namespace A228294

/-- `n*(A102909(n)+A001017(n))` -/
def P1901826635009084513.Spec : Prop :=
  ∀ n, P1901826635009084513.a n = A228294 n

theorem P1901826635009084513.correct : P1901826635009084513.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P1901826635009084513.a, A228294.P8313310365846261537.a, A001017, A001017.P9152421289291957289.a, A060885, A060885.P6901912794972420859.a, A102909, A102909.P16540505337403562300.a, A228293, A228293.P3194510713492956610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P15016730418381774534

`(A059826(n)+A034262(n))*A131472(n)`
-/

namespace A228294.P15016730418381774534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059826 n + A034262 n) * A131472 n

end

end A228294.P15016730418381774534

namespace A228294

/-- `(A059826(n)+A034262(n))*A131472(n)` -/
def P15016730418381774534.Spec : Prop :=
  ∀ n, P15016730418381774534.a n = A228294 n

theorem P15016730418381774534.correct : P15016730418381774534.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P15016730418381774534.a, A228294.P8313310365846261537.a, A034262, A034262.P1986901683698587680.a, A059826, A059826.P10107357562865888263.a, A060885, A060885.P6901912794972420859.a, A131472, A131472.P7274504250054804871.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-! ## A228294.P2201951019518915225

`xor(A007318(∑[n]), A060885(n))`
-/

namespace A228294.P2201951019518915225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A060885 n)

end

end A228294.P2201951019518915225

namespace A228294

/-- `xor(A007318(∑[n]), A060885(n))` -/
def P2201951019518915225.Spec : Prop :=
  ∀ n, P2201951019518915225.a n = A228294 n

end A228294

/-! ## A228294.P11005107350978195726

`(n²+n)*A053699(n²)`
-/

namespace A228294.P11005107350978195726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) * A053699 (n ^ 2)

end

end A228294.P11005107350978195726

namespace A228294

/-- `(n²+n)*A053699(n²)` -/
def P11005107350978195726.Spec : Prop :=
  ∀ n, P11005107350978195726.a n = A228294 n

theorem P11005107350978195726.correct : P11005107350978195726.Spec := by
  intro n
  simp only [A228294, Nat.add_sub_cancel, A228294.P11005107350978195726.a, A228294.P8313310365846261537.a, A053699, A053699.P12401549741545410249.a, A060885, A060885.P6901912794972420859.a, A228293, A228293.P3194510713492956610.a, A102909, A102909.P16540505337403562300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228294

/-!
# A228295: The 'Honeycomb' or 'Beehive' sequence: a(n) = ceiling(12^(1/4)*n).

The programs for A228295, the canonical program `A228295.P1759473328908235908` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228295 has offset 0).

The definition of A228295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228295.P1759473328908235908

`ceil(sqrt(sqrt(12))*n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A228295

/-- `ceil(sqrt(sqrt(12))*n)` -/
def P1759473328908235908.Spec : Prop :=
  ∀ n, P1759473328908235908.a n = A228295 n

theorem P1759473328908235908.correct : P1759473328908235908.Spec := by
  intro n
  simp only [A228295]

end A228295

/-! ## A228295.P3284649888766794541

`ceil(12^(1/4)*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228295.P3284649888766794541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(12 : ℝ) ^ ((1 : ℚ) / 4 : ℝ) * (n : ℝ)⌉

end

end A228295.P3284649888766794541

namespace A228295

/-- `ceil(12^(1/4)*n)` -/
def P3284649888766794541.Spec : Prop :=
  ∀ n, P3284649888766794541.a n = A228295 n

end A228295

/-! ## A228295.P2908093078470351646

`(floor(n*root(12, 4))+1)%Δ[n²]`
-/

namespace A228295.P2908093078470351646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * (12 : ℝ) ^ (1 / (4 : ℝ))⌋ + 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A228295.P2908093078470351646

namespace A228295

/-- `(floor(n*root(12, 4))+1)%Δ[n²]` -/
def P2908093078470351646.Spec : Prop :=
  ∀ n, P2908093078470351646.a n = A228295 n

end A228295

/-! ## A228295.P18302155495778123936

`floor(n*root(12, 4))-(floor(acot(n))-1)`
-/

namespace A228295.P18302155495778123936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (12 : ℝ) ^ (1 / (4 : ℝ))⌋ - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A228295.P18302155495778123936

namespace A228295

/-- `floor(n*root(12, 4))-(floor(acot(n))-1)` -/
def P18302155495778123936.Spec : Prop :=
  ∀ n, P18302155495778123936.a n = A228295 n

end A228295

/-! ## A228295.P9718663771853084954

`floor(n*root(12, 4))+n²%(n+1)`
-/

namespace A228295.P9718663771853084954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (12 : ℝ) ^ (1 / (4 : ℝ))⌋ + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A228295.P9718663771853084954

namespace A228295

/-- `floor(n*root(12, 4))+n²%(n+1)` -/
def P9718663771853084954.Spec : Prop :=
  ∀ n, P9718663771853084954.a n = A228295 n

end A228295

/-! ## A228295.P7921641970722295626

`floor(A057427(n)+n*root(12, 4))`
-/

namespace A228295.P7921641970722295626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + (n : ℝ) * (12 : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A228295.P7921641970722295626

namespace A228295

/-- `floor(A057427(n)+n*root(12, 4))` -/
def P7921641970722295626.Spec : Prop :=
  ∀ n, P7921641970722295626.a n = A228295 n

end A228295

/-!
# A228297: Generalized meta-Fibonacci sequence a(n) with parameters s=0 and k=5.

The programs for A228297, the canonical program `A228297.P606971277463254707` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228297 has offset 1).

The definition of A228297 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007845, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228297.P606971277463254707

`A007845(n+1)/5`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A228297

/-- `A007845(n+1)/5` -/
def P606971277463254707.Spec : Prop :=
  ∀ n, P606971277463254707.a n = (A228297 (n + 1) : ℚ)

end A228297

/-! ## A228297.P16731799934787125036

`∑[char[a(floor(n/5))+n]]` with `a(0)=0`
-/

namespace A228297.P16731799934787125036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 5⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228297.P16731799934787125036

namespace A228297

/-- `∑[char[a(floor(n/5))+n]]` -/
def P16731799934787125036.Spec : Prop :=
  ∀ n, (P16731799934787125036.a n : ℤ) = A228297 (n + 1)

end A228297

/-! ## A228297.P2423983947393071965

`∑[char[∑[val(n+1, 5)+1]]]+1`
-/

namespace A228297.P2423983947393071965
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 5 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A228297.P2423983947393071965

namespace A228297

/-- `∑[char[∑[val(n+1, 5)+1]]]+1` -/
def P2423983947393071965.Spec : Prop :=
  ∀ n, (P2423983947393071965.a n : ℤ) = A228297 (n + 1)

end A228297

/-! ## A228297.P17176985555316619788

`∑[char[A191610(n+1)]]`
-/

namespace A228297.P17176985555316619788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228297.P17176985555316619788

namespace A228297

/-- `∑[char[A191610(n+1)]]` -/
def P17176985555316619788.Spec : Prop :=
  ∀ n, (P17176985555316619788.a n : ℤ) = A228297 (n + 1)

end A228297

/-! ## A228297.P10410212555702670876

`∑[char[comp[A000966(n+1)]]]`
-/

namespace A228297.P10410212555702670876
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000966 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228297.P10410212555702670876

namespace A228297

/-- `∑[char[comp[A000966(n+1)]]]` -/
def P10410212555702670876.Spec : Prop :=
  ∀ n, (P10410212555702670876.a n : ℤ) = A228297 (n + 1)

end A228297

/-! ## A228297.P517387557154127567

`∑[char[A028310(n)+A027868(n)]]+1`
-/

namespace A228297.P517387557154127567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A027868 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A228297.P517387557154127567

namespace A228297

/-- `∑[char[A028310(n)+A027868(n)]]+1` -/
def P517387557154127567.Spec : Prop :=
  ∀ n, (P517387557154127567.a n : ℤ) = A228297 (n + 1)

end A228297

/-! ## A228297.P8123625970869049002

`∑[A164056(Δ[A007845(n)])]`
-/

namespace A228297.P8123625970869049002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164056 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228297.P8123625970869049002

namespace A228297

/-- `∑[A164056(Δ[A007845(n)])]` -/
def P8123625970869049002.Spec : Prop :=
  ∀ n, P8123625970869049002.a n = A228297 (n + 1)

end A228297

/-! ## A228297.P2385017892474259848

`∑[A004526(Δ[A007845(n)])/2]`
-/

namespace A228297.P2385017892474259848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (f2 (n + 1) - f2 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228297.P2385017892474259848

namespace A228297

/-- `∑[A004526(Δ[A007845(n)])/2]` -/
def P2385017892474259848.Spec : Prop :=
  ∀ n, P2385017892474259848.a n = (A228297 (n + 1) : ℚ)

end A228297

/-! ## A228297.P15480283216331845783

`∑[char[A027868(n)]]`
-/

namespace A228297.P15480283216331845783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228297.P15480283216331845783

namespace A228297

/-- `∑[char[A027868(n)]]` -/
def P15480283216331845783.Spec : Prop :=
  ∀ n, (P15480283216331845783.a n : ℤ) = A228297 (n + 1)

end A228297

/-! ## A228297.P8160759541461569350

`A058207(A007845(n+1))`
-/

namespace A228297.P8160759541461569350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (A007845 (n + 1)).toNat

end

end A228297.P8160759541461569350

namespace A228297

/-- `A058207(A007845(n+1))` -/
def P8160759541461569350.Spec : Prop :=
  ∀ n, P8160759541461569350.a n = A228297 (n + 1)

end A228297

/-! ## A228297.P410452241319561314

`A002266(A007845(n+1)+1)`
-/

namespace A228297.P410452241319561314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A007845 (n + 1) + 1).toNat

end

end A228297.P410452241319561314

namespace A228297

/-- `A002266(A007845(n+1)+1)` -/
def P410452241319561314.Spec : Prop :=
  ∀ n, P410452241319561314.a n = A228297 (n + 1)

end A228297

/-! ## A228297.P5053446873845151166

`A028900(A395817(n+1))`
-/

namespace A228297.P5053446873845151166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A395817 (n + 1)).toNat

end

end A228297.P5053446873845151166

namespace A228297

/-- `A028900(A395817(n+1))` -/
def P5053446873845151166.Spec : Prop :=
  ∀ n, P5053446873845151166.a n = A228297 (n + 1)

end A228297

/-! ## A228297.P11182422589725328180

`A028900(A135210(n+1)+1)`
-/

namespace A228297.P11182422589725328180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A135210 (n + 1) + 1).toNat

end

end A228297.P11182422589725328180

namespace A228297

/-- `A028900(A135210(n+1)+1)` -/
def P11182422589725328180.Spec : Prop :=
  ∀ n, P11182422589725328180.a n = A228297 (n + 1)

end A228297

/-!
# A228298: Generalized meta-Fibonacci sequence a(n) with parameters s=0 and k=7.

The programs for A228298, the canonical program `A228298.P13462693144235860007` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228298 has offset 1).

The definition of A228298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228298.P15510381630590071195

`∑[char[a(floor(n/7))+n]]` with `a(0)=0`
-/

namespace A228298.P15510381630590071195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 7⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228298.P15510381630590071195

namespace A228298

/-- `∑[char[a(floor(n/7))+n]]` -/
def P15510381630590071195.Spec : Prop :=
  ∀ n, (P15510381630590071195.a n : ℤ) = A228298 (n + 1)

end A228298

/-! ## A228298.P17311326155630502381

`∑[char[∑[val(n+1, 7)+1]]]+1`
-/

namespace A228298.P17311326155630502381
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 7 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A228298.P17311326155630502381

namespace A228298

/-- `∑[char[∑[val(n+1, 7)+1]]]+1` -/
def P17311326155630502381.Spec : Prop :=
  ∀ n, (P17311326155630502381.a n : ℤ) = A228298 (n + 1)

end A228298

/-! ## A228298.P3094144603823393595

`∑[char[A054896(n)+n]]`
-/

namespace A228298.P3094144603823393595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228298.P3094144603823393595

namespace A228298

/-- `∑[char[A054896(n)+n]]` -/
def P3094144603823393595.Spec : Prop :=
  ∀ n, (P3094144603823393595.a n : ℤ) = A228298 (n + 1)

end A228298

/-! ## A228298.P9567296028687424447

`∑[char[∑[A214411(n+1)+1]]]+1`
-/

namespace A228298.P9567296028687424447
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A228298.P9567296028687424447

namespace A228298

/-- `∑[char[∑[A214411(n+1)+1]]]+1` -/
def P9567296028687424447.Spec : Prop :=
  ∀ n, (P9567296028687424447.a n : ℤ) = A228298 (n + 1)

end A228298

/-! ## A228298.P13462693144235860007

`A145569(a(n-1))+a(n-a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A228298

/-- `A145569(a(n-1))+a(n-a(n-1))` -/
def P13462693144235860007.Spec : Prop :=
  ∀ n, P13462693144235860007.a n = A228298 (n + 1)

theorem P13462693144235860007.correct : P13462693144235860007.Spec := by
  intro n
  simp only [A228298, Nat.add_sub_cancel]

end A228298

/-! ## A228298.P3323790344898806920

`A020646(n+1)/7`
-/

namespace A228298.P3323790344898806920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020646 (n + 1) : ℚ) / 7

end

end A228298.P3323790344898806920

namespace A228298

/-- `A020646(n+1)/7` -/
def P3323790344898806920.Spec : Prop :=
  ∀ n, P3323790344898806920.a n = (A228298 (n + 1) : ℚ)

end A228298

/-! ## A228298.P7161192502340847865

`∑[Δ[A020646(n)]%2]+1`
-/

namespace A228298.P7161192502340847865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A228298.P7161192502340847865

namespace A228298

/-- `∑[Δ[A020646(n)]%2]+1` -/
def P7161192502340847865.Spec : Prop :=
  ∀ n, P7161192502340847865.a n = A228298 (n + 1)

end A228298

/-! ## A228298.P17853688616826681645

`∑[A000989(Δ[A020646(n)])]`
-/

namespace A228298.P17853688616826681645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228298.P17853688616826681645

namespace A228298

/-- `∑[A000989(Δ[A020646(n)])]` -/
def P17853688616826681645.Spec : Prop :=
  ∀ n, P17853688616826681645.a n = A228298 (n + 1)

end A228298

/-! ## A228298.P6545915738399822458

`∑[A001842(Δ[A020646(n)])]`
-/

namespace A228298.P6545915738399822458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228298.P6545915738399822458

namespace A228298

/-- `∑[A001842(Δ[A020646(n)])]` -/
def P6545915738399822458.Spec : Prop :=
  ∀ n, P6545915738399822458.a n = A228298 (n + 1)

end A228298

/-! ## A228298.P18116749392967793738

`∑[char[A054896(n)]]`
-/

namespace A228298.P18116749392967793738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228298.P18116749392967793738

namespace A228298

/-- `∑[char[A054896(n)]]` -/
def P18116749392967793738.Spec : Prop :=
  ∀ n, (P18116749392967793738.a n : ℤ) = A228298 (n + 1)

end A228298

/-! ## A228298.P10143143808697745592

`A106608(A020646(n+1))`
-/

namespace A228298.P10143143808697745592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A020646 (n + 1)).toNat

end

end A228298.P10143143808697745592

namespace A228298

/-- `A106608(A020646(n+1))` -/
def P10143143808697745592.Spec : Prop :=
  ∀ n, P10143143808697745592.a n = A228298 (n + 1)

end A228298

