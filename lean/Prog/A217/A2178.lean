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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
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
# A217800: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217800, the canonical program `A217800.P12916482449186997636` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217800 has offset 0).

The definition of A217800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217800.P12916482449186997636

`A006480(n+1)/((2+n)*(1+2*n)*(3+2*n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A217800

/-- `A006480(n+1)/((2+n)*(1+2*n)*(3+2*n))` -/
def P12916482449186997636.Spec : Prop :=
  ∀ n, P12916482449186997636.a n = (A217800 n : ℚ)

end A217800

/-! ## A217800.P17351790670791724344

`(3*n+3)!/((4*(n+1)²-1)*(n+1)!²*(n+2)!)`
-/

namespace A217800.P17351790670791724344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n + 3) : ℚ) / (((4 * (n + 1) ^ 2 : ℤ) - 1) * (Nat.factorial (n + 1) ^ 2 : ℤ) * (Nat.factorial (n + 2) : ℤ) : ℚ)

end

end A217800.P17351790670791724344

namespace A217800

/-- `(3*n+3)!/((4*(n+1)²-1)*(n+1)!²*(n+2)!)` -/
def P17351790670791724344.Spec : Prop :=
  ∀ n, P17351790670791724344.a n = (A217800 n : ℚ)

end A217800

/-! ## A217800.P2424287715070203438

`A000108(n)*A000139(n+1)`
-/

namespace A217800.P2424287715070203438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000139 (n + 1)

end

end A217800.P2424287715070203438

namespace A217800

/-- `A000108(n)*A000139(n+1)` -/
def P2424287715070203438.Spec : Prop :=
  ∀ n, P2424287715070203438.a n = A217800 n

end A217800

/-! ## A217800.P2462481470842157743

`abs(A000139(n+1)*A168491(n))`
-/

namespace A217800.P2462481470842157743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000139 (n + 1) * A168491 n|

end

end A217800.P2462481470842157743

namespace A217800

/-- `abs(A000139(n+1)*A168491(n))` -/
def P2462481470842157743.Spec : Prop :=
  ∀ n, P2462481470842157743.a n = A217800 n

end A217800

/-! ## A217800.P8617721555919471446

`A000139(n+1)*A120588(n+1)`
-/

namespace A217800.P8617721555919471446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 (n + 1) * A120588 (n + 1)

end

end A217800.P8617721555919471446

namespace A217800

/-- `A000139(n+1)*A120588(n+1)` -/
def P8617721555919471446.Spec : Prop :=
  ∀ n, P8617721555919471446.a n = A217800 n

end A217800

/-! ## A217800.P13266839661153392556

`abs(A000139(n+1)*A115140(n+1))`
-/

namespace A217800.P13266839661153392556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000139 (n + 1) * A115140 (n + 1)|

end

end A217800.P13266839661153392556

namespace A217800

/-- `abs(A000139(n+1)*A115140(n+1))` -/
def P13266839661153392556.Spec : Prop :=
  ∀ n, P13266839661153392556.a n = A217800 n

end A217800

/-! ## A217800.P14920890912933764435

`A000139(n+1)*A097331(2*n+1)`
-/

namespace A217800.P14920890912933764435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 (n + 1) * A097331 (2 * n + 1)

end

end A217800.P14920890912933764435

namespace A217800

/-- `A000139(n+1)*A097331(2*n+1)` -/
def P14920890912933764435.Spec : Prop :=
  ∀ n, P14920890912933764435.a n = A217800 n

end A217800

/-! ## A217800.P6032934990491346553

`A089408(2*n+1)/A005408(n+1)*A007226(n+1)`
-/

namespace A217800.P6032934990491346553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 (2 * n + 1) : ℚ) / (A005408 (n + 1) : ℚ) * (A007226 (n + 1) : ℚ)

end

end A217800.P6032934990491346553

namespace A217800

/-- `A089408(2*n+1)/A005408(n+1)*A007226(n+1)` -/
def P6032934990491346553.Spec : Prop :=
  ∀ n, P6032934990491346553.a n = (A217800 n : ℚ)

end A217800

/-! ## A217800.P13857649114114516580

`A218441(n+1)/(2*n+1)`
-/

namespace A217800.P13857649114114516580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218441 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A217800.P13857649114114516580

namespace A217800

/-- `A218441(n+1)/(2*n+1)` -/
def P13857649114114516580.Spec : Prop :=
  ∀ n, P13857649114114516580.a n = (A217800 n : ℚ)

end A217800

/-!
# A217801: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217801, there is no canonical definition to state claims against.
-/

/-! ## A217801.P12660735380368096935

`A285500(comp[6*n]^n)`
-/

namespace A217801.P12660735380368096935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285500 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ n)

end

end A217801.P12660735380368096935

/-!
# A217802: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217802, there is no canonical definition to state claims against.
-/

/-! ## A217802.P9952010850655414412

`A000174(2*A204107(n))`
-/

namespace A217802.P9952010850655414412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (2 * A204107 n).toNat

end

end A217802.P9952010850655414412

/-!
# A217803: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217803, there is no canonical definition to state claims against.
-/

/-! ## A217803.P6262977935397634473

`A092533((n+3)^n+n)`
-/

namespace A217803.P6262977935397634473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 ((n + 3) ^ n + n)

end

end A217803.P6262977935397634473

/-!
# A217804: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217804, there is no canonical definition to state claims against.
-/

/-! ## A217804.P14255433857096591528

`A317686((n+1)^(n+1)-n)`
-/

namespace A217804.P14255433857096591528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317686 ((n + 1) ^ (n + 1) - n)

end

end A217804.P14255433857096591528

/-!
# A217805: Number of alternating permutations on 2n letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217805, there is no canonical definition to state claims against.
-/

/-! ## A217805.P8079949563707928156

`A298863(A176335(n)+n)`
-/

namespace A217805.P8079949563707928156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298863 (A176335 n + (n : ℤ)).toNat

end

end A217805.P8079949563707928156

/-!
# A217806: Number of alternating permutations on 2n letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217806, there is no canonical definition to state claims against.
-/

/-! ## A217806.P16974720627844596023

`∑[A321695((n!*∑[n]+3)*n²+1)]`
-/

namespace A217806.P16974720627844596023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321695 ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f2 j) + 3) * n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217806.P16974720627844596023

/-!
# A217807: Number of alternating permutations on 2n letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217807, there is no canonical definition to state claims against.
-/

/-! ## A217807.P12686969418378775206

`A057362(A210988(n+1))+A047849(n)`
-/

namespace A217807.P12686969418378775206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057362 (A210988 (n + 1)).toNat + A047849 n

end

end A217807.P12686969418378775206

/-!
# A217808: Number of alternating permutations on 2n letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217808, there is no canonical definition to state claims against.
-/

/-! ## A217808.P9332800925579109299

`A011371(A326324(n+1))+A010054(n)`
-/

namespace A217808.P9332800925579109299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A326324 (n + 1)).toNat + A010054 n

end

end A217808.P9332800925579109299

/-!
# A217809: Number of alternating permutations on 2n letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217809, there is no canonical definition to state claims against.
-/

/-! ## A217809.P4435554000236247207

`A180472(A006126(n))+A005789(n+1)`
-/

namespace A217809.P4435554000236247207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A006126 n).toNat + A005789 (n + 1)

end

end A217809.P4435554000236247207

/-!
# A217810: Number of alternating permutations on 2n letters that avoid a certain pattern of length 4 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217810, there is no canonical definition to state claims against.
-/

/-! ## A217810.P1811522768754024214

`A020900(A158836(n+1))-A052265(3*n+1)`
-/

namespace A217810.P1811522768754024214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (A158836 (n + 1)).toNat - A052265 (3 * n + 1)

end

end A217810.P1811522768754024214

/-!
# A217812: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 5 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217812, there is no canonical definition to state claims against.
-/

/-! ## A217812.P15692091183249225222

`A039032(A007089(n!*∑[1/n!]))`
-/

namespace A217812.P15692091183249225222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039032 (A007089 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat).toNat

end

end A217812.P15692091183249225222

/-!
# A217813: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 5 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217813, there is no canonical definition to state claims against.
-/

/-! ## A217813.P17134283018212725374

`A131058(A336635(n)+round(1/acot(n)))`
-/

namespace A217813.P17134283018212725374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (A336635 n + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))).toNat

end

end A217813.P17134283018212725374

/-!
# A217814: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 5 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217814, there is no canonical definition to state claims against.
-/

/-! ## A217814.P12465091919881046632

`A217815(lcm(n, floor(sqrt(n))))`
-/

namespace A217814.P12465091919881046632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217815 (Nat.lcm n (Nat.sqrt n))

end

end A217814.P12465091919881046632

/-!
# A217816: Number of alternating permutations on 2n+1 letters that avoid a certain pattern of length 5 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217816, there is no canonical definition to state claims against.
-/

/-! ## A217816.P4405413078259302569

`A257340((n+1)*A145089(n))`
-/

namespace A217816.P4405413078259302569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257340 ((n + 1 : ℤ) * A145089 n).toNat

end

end A217816.P4405413078259302569

/-!
# A217823: Number of permutations of length 3n with descent set {3, 6, ...} that avoid a certain pattern of length 4 or 5 (see Lewis, 2012, Appendix, for precise definition).

The programs for A217823, there is no canonical definition to state claims against.
-/

/-! ## A217823.P12614419249492495821

`A361190(∑{digits}[n, #])`
-/

namespace A217823.P12614419249492495821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361190 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A217823.P12614419249492495821

/-! ## A217823.P2639149351165797927

`A361190(∏{digits}[n, #])`
-/

namespace A217823.P2639149351165797927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361190 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A217823.P2639149351165797927

/-! ## A217823.P3731980033411081400

`A361190(n)+char[7]`
-/

namespace A217823.P3731980033411081400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361190 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A217823.P3731980033411081400

/-!
# A217831: Euclid's triangle read by rows. T(n, k) = 1 if k is prime to n, otherwise 0.

The programs for A217831, the canonical program `A217831.P14758969929507153265` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217831 has offset 0).

The definition of A217831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217831.P11969695154959262960

`char[eq[1, gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]])]]`
-/

namespace A217831.P11969695154959262960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 + n) (∑ j ∈ Finset.range (n + 1), f7 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A217831.P11969695154959262960

namespace A217831

/-- `char[eq[1, gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]])]]` -/
def P11969695154959262960.Spec : Prop :=
  ∀ n, (P11969695154959262960.a n : ℤ) = A217831 n

end A217831

/-! ## A217831.P2669409683182279713

`abs(A372728(n))`
-/

namespace A217831.P2669409683182279713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A372728 n|

end

end A217831.P2669409683182279713

namespace A217831

/-- `abs(A372728(n))` -/
def P2669409683182279713.Spec : Prop :=
  ∀ n, P2669409683182279713.a n = A217831 n

end A217831

/-! ## A217831.P13201179392001091386

`char[eq[1, A109004(n)]]`
-/

namespace A217831.P13201179392001091386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A217831.P13201179392001091386

namespace A217831

/-- `char[eq[1, A109004(n)]]` -/
def P13201179392001091386.Spec : Prop :=
  ∀ n, (P13201179392001091386.a n : ℤ) = A217831 n

end A217831

/-! ## A217831.P4024333758818433217

`and(10, a(n-1))^A050870(n)` with `a(0)=0`
-/

namespace A217831.P4024333758818433217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.land 10 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) ^ (A050870 n : ℤ)

end

end A217831.P4024333758818433217

namespace A217831

/-- `and(10, a(n-1))^A050870(n)` -/
def P4024333758818433217.Spec : Prop :=
  ∀ n, P4024333758818433217.a n = (A217831 n : ℚ)

end A217831

/-! ## A217831.P14758969929507153265

`A063524(A109004(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A217831

/-- `A063524(A109004(n))` -/
def P14758969929507153265.Spec : Prop :=
  ∀ n, P14758969929507153265.a n = A217831 n

theorem P14758969929507153265.correct : P14758969929507153265.Spec := by
  intro n
  simp only [A217831]

end A217831

/-! ## A217831.P16287675857019396203

`A185012(A109004(n)+1)`
-/

namespace A217831.P16287675857019396203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A109004 n + 1).toNat

end

end A217831.P16287675857019396203

namespace A217831

/-- `A185012(A109004(n)+1)` -/
def P16287675857019396203.Spec : Prop :=
  ∀ n, P16287675857019396203.a n = A217831 n

end A217831

/-! ## A217831.P13327236829066423451

`A185013(A109004(n)+2)`
-/

namespace A217831.P13327236829066423451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 (A109004 n + 2).toNat

end

end A217831.P13327236829066423451

namespace A217831

/-- `A185013(A109004(n)+2)` -/
def P13327236829066423451.Spec : Prop :=
  ∀ n, P13327236829066423451.a n = A217831 n

end A217831

/-! ## A217831.P5023972830103525548

`A091225(2*A109004(n))`
-/

namespace A217831.P5023972830103525548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * A109004 n).toNat

end

end A217831.P5023972830103525548

namespace A217831

/-- `A091225(2*A109004(n))` -/
def P5023972830103525548.Spec : Prop :=
  ∀ n, P5023972830103525548.a n = A217831 n

end A217831

/-! ## A217831.P994253297568145836

`A185012(2*A109004(n))`
-/

namespace A217831.P994253297568145836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (2 * A109004 n).toNat

end

end A217831.P994253297568145836

namespace A217831

/-- `A185012(2*A109004(n))` -/
def P994253297568145836.Spec : Prop :=
  ∀ n, P994253297568145836.a n = A217831 n

end A217831

/-! ## A217831.P15671352738997299635

`and(A054977(n), A372728(n))`
-/

namespace A217831.P15671352738997299635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A372728 n)

end

end A217831.P15671352738997299635

namespace A217831

/-- `and(A054977(n), A372728(n))` -/
def P15671352738997299635.Spec : Prop :=
  ∀ n, P15671352738997299635.a n = A217831 n

end A217831

/-! ## A217831.P240228994346561678

`and(A057427(n), A372728(n))`
-/

namespace A217831.P240228994346561678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A372728 n)

end

end A217831.P240228994346561678

namespace A217831

/-- `and(A057427(n), A372728(n))` -/
def P240228994346561678.Spec : Prop :=
  ∀ n, P240228994346561678.a n = A217831 n

end A217831

/-! ## A217831.P11588350328085658130

`A372728((A372728(n)^(n+1))²)`
-/

namespace A217831.P11588350328085658130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372728 ((A372728 n ^ (n + 1)) ^ 2).toNat

end

end A217831.P11588350328085658130

namespace A217831

/-- `A372728((A372728(n)^(n+1))²)` -/
def P11588350328085658130.Spec : Prop :=
  ∀ n, P11588350328085658130.a n = A217831 n

end A217831

/-! ## A217831.P10595144933670483442

`A091225(A109004(n)+A109004(n)²)`
-/

namespace A217831.P10595144933670483442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A109004 n + A109004 n ^ 2).toNat

end

end A217831.P10595144933670483442

namespace A217831

/-- `A091225(A109004(n)+A109004(n)²)` -/
def P10595144933670483442.Spec : Prop :=
  ∀ n, P10595144933670483442.a n = A217831 n

end A217831

/-!
# A217832: Number of sequences of n 2's and 3's with curling number 2 and which have the form XY^2 with Y = 2.

The programs for A217832, there is no canonical definition to state claims against.
-/

/-! ## A217832.P1563016450226086248

`A217931(n+1)/2`
-/

namespace A217832.P1563016450226086248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217931 (n + 1) : ℚ) / 2

end

end A217832.P1563016450226086248

/-! ## A217832.P9203651185651609888

`2^A008683(A006450(n+1))*A217931(n+1)`
-/

namespace A217832.P9203651185651609888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A217931 (n + 1) : ℚ)

end

end A217832.P9203651185651609888

/-! ## A217832.P16974501157285607557

`2^A008683(A142644(n+1))*A217931(n+1)`
-/

namespace A217832.P16974501157285607557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ) * (A217931 (n + 1) : ℚ)

end

end A217832.P16974501157285607557

/-! ## A217832.P16883413963212952475

`A217930(n+1)+A217929(n+1)`
-/

namespace A217832.P16883413963212952475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217930 (n + 1) + A217929 (n + 1)

end

end A217832.P16883413963212952475

/-!
# A217833: The largest number not exceeding n^2, such that there are no terms of the sequence in the interval (a(n-1)/2, a(n)/2), with a(0)=0, a(1)=1.

The programs for A217833, there is no canonical definition to state claims against.
-/

/-! ## A217833.P10460336832697486071

`eq[A004018(n), A010879(A102376(n))]`
-/

namespace A217833.P10460336832697486071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A102376 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217833.P10460336832697486071

/-! ## A217833.P15220872690280912367

`eq[A008683(A019565(n)), A133574(n)]`
-/

namespace A217833.P15220872690280912367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A019565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217833.P15220872690280912367

/-! ## A217833.P947475563654231100

`eq[1, A203571(A327640(n))]`
-/

namespace A217833.P947475563654231100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203571 (A327640 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217833.P947475563654231100

/-! ## A217833.P1838483719094544019

`eq[A108784(n+1), A133573(n)]`
-/

namespace A217833.P1838483719094544019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217833.P1838483719094544019

/-! ## A217833.P3394563859171425904

`eq[A106737(A030106(n)), A156381(n)]`
-/

namespace A217833.P3394563859171425904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A030106 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217833.P3394563859171425904

/-!
# A217834: Total number of solutions to the equation x^2+k*y^2 = n with x > 0, y > 0, k > 0. (Order matters for the equation x^2+y^2 = n).

The programs for A217834, there is no canonical definition to state claims against.
-/

/-! ## A217834.P11437236198838051889

`A216672(n+1)+A025441(n+1)`
-/

namespace A217834.P11437236198838051889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (n + 1) + A025441 (n + 1)

end

end A217834.P11437236198838051889

/-! ## A217834.P7551221470674824027

`A216672(n+1)+A102115(A063725(n+1))`
-/

namespace A217834.P7551221470674824027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (n + 1) + A102115 (A063725 (n + 1)).toNat

end

end A217834.P7551221470674824027

/-! ## A217834.P6911562404184171042

`A025441(n+1)+A277165(A006261(n))+A216503(n+1)`
-/

namespace A217834.P6911562404184171042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (n + 1) + (A277165 (A006261 n).toNat + A216503 (n + 1))

end

end A217834.P6911562404184171042

/-! ## A217834.P5457549246863433817

`A216672(n+1)+A000035(A387406(n+1))`
-/

namespace A217834.P5457549246863433817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (n + 1) + A000035 (A387406 (n + 1)).toNat

end

end A217834.P5457549246863433817

/-! ## A217834.P1999114731153809219

`A216672(n+1)+A064911(A034851((n+1)²))`
-/

namespace A217834.P1999114731153809219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (n + 1) + A064911 (A034851 ((n + 1) ^ 2)).toNat

end

end A217834.P1999114731153809219

/-!
# A217836: a(n) is largest semiprime < 2*a(n-1), with a(1) = 4.

The programs for A217836, there is no canonical definition to state claims against.
-/

/-! ## A217836.P10486111534200041641

`A351096(or(A260505(n), A303430(n)))`
-/

namespace A217836.P10486111534200041641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351096 (Int.lor (A260505 n) (A303430 n)).toNat

end

end A217836.P10486111534200041641

/-! ## A217836.P362567949796439671

`A351096(A191322(2*n+1)+A050168(n))`
-/

namespace A217836.P362567949796439671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351096 (A191322 (2 * n + 1) + A050168 n).toNat

end

end A217836.P362567949796439671

/-!
# A217837: Numbers n such that 4n - 1 and 4n + 1 are both semiprimes.

The programs for A217837, the canonical program `A217837.P15494108648886261263` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217837 has offset 1).

The definition of A217837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217837.P15494108648886261263

`record[A025480(A082130(n+3))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A217837

/-- `record[A025480(A082130(n+3))]` -/
def P15494108648886261263.Spec : Prop :=
  ∀ n, P15494108648886261263.a n = A217837 (n + 1)

theorem P15494108648886261263.correct : P15494108648886261263.Spec := by
  intro n
  simp only [A217837, Nat.add_sub_cancel]

end A217837

/-! ## A217837.P12887977644541611572

`A000720(p?[A207790(A082130(n+1))])`
-/

namespace A217837.P12887977644541611572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A082130 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A217837.P12887977644541611572

namespace A217837

/-- `A000720(p?[A207790(A082130(n+1))])` -/
def P12887977644541611572.Spec : Prop :=
  ∀ n, P12887977644541611572.a n = A217837 (n + 1)

end A217837

/-! ## A217837.P13388754516493892318

`eq[2, A200927(4*(n+1))]+1`
-/

namespace A217837.P13388754516493892318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217837.P13388754516493892318

namespace A217837

/-- `eq[2, A200927(4*(n+1))]+1` -/
def P13388754516493892318.Spec : Prop :=
  ∀ n, (P13388754516493892318.a n : ℤ) = A217837 (n + 1)

end A217837

/-! ## A217837.P15429142553287029657

`record[A025480(A198327(A020705(n)))]`
-/

namespace A217837.P15429142553287029657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A198327 (A020705 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217837.P15429142553287029657

namespace A217837

/-- `record[A025480(A198327(A020705(n)))]` -/
def P15429142553287029657.Spec : Prop :=
  ∀ n, P15429142553287029657.a n = A217837 (n + 1)

end A217837

/-! ## A217837.P2355577055496062155

`record[A001057(A004526(A092207(n+4)))]`
-/

namespace A217837.P2355577055496062155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004526 (A092207 (n + 4)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217837.P2355577055496062155

namespace A217837

/-- `record[A001057(A004526(A092207(n+4)))]` -/
def P2355577055496062155.Spec : Prop :=
  ∀ n, P2355577055496062155.a n = A217837 (n + 1)

end A217837

/-!
# A217838: Number of n element 0..1 arrays with each element the minimum of 7 adjacent elements of a random 0..1 array of n+6 elements.

The programs for A217838, the canonical program `A217838.P2657342287008177357` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217838 has offset 0).

The definition of A217838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217838.P2657342287008177357

`2*a(n-1)-a(n-2)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=11, a(5)=16, a(6)=22, a(7)=29`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A217838

/-- `2*a(n-1)-a(n-2)+a(n-8)` -/
def P2657342287008177357.Spec : Prop :=
  ∀ n, P2657342287008177357.a n = A217838 n

theorem P2657342287008177357.correct : P2657342287008177357.Spec := by
  intro n
  simp only [A217838]

end A217838

/-! ## A217838.P11683177630845142905

`A247151(∑[n]+2)`
-/

namespace A217838.P11683177630845142905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A217838.P11683177630845142905

namespace A217838

/-- `A247151(∑[n]+2)` -/
def P11683177630845142905.Spec : Prop :=
  ∀ n, P11683177630845142905.a n = A217838 n

end A217838

/-! ## A217838.P5929402347386786238

`∑[A188215(A367653(n))]`
-/

namespace A217838.P5929402347386786238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188215 (A367653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217838.P5929402347386786238

namespace A217838

/-- `∑[A188215(A367653(n))]` -/
def P5929402347386786238.Spec : Prop :=
  ∀ n, P5929402347386786238.a n = A217838 n

end A217838

/-! ## A217838.P16596282807689309231

`A335452(A001333(n))+A000217(n)`
-/

namespace A217838.P16596282807689309231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A001333 n).toNat + A000217 n

end

end A217838.P16596282807689309231

namespace A217838

/-- `A335452(A001333(n))+A000217(n)` -/
def P16596282807689309231.Spec : Prop :=
  ∀ n, P16596282807689309231.a n = A217838 n

end A217838

/-! ## A217838.P2775636402617248058

`or(A000124(n), A361854(A360886(n)))`
-/

namespace A217838.P2775636402617248058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000124 n) (A361854 (A360886 n).toNat)

end

end A217838.P2775636402617248058

namespace A217838

/-- `or(A000124(n), A361854(A360886(n)))` -/
def P2775636402617248058.Spec : Prop :=
  ∀ n, P2775636402617248058.a n = A217838 n

end A217838

/-!
# A217839: T(n,k)=Number of n element 0..1 arrays with each element the minimum of k adjacent elements of a random 0..1 array of n+k-1 elements.

The programs for A217839, there is no canonical definition to state claims against.
-/

/-! ## A217839.P16956523036898227495

`A000194(A217954(n+1)+A178686(n))`
-/

namespace A217839.P16956523036898227495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A217954 (n + 1) + A178686 n).toNat

end

end A217839.P16956523036898227495

/-! ## A217839.P3710933820512784269

`A000194(A217954(n+1)%A316245(2*(n+2)))`
-/

namespace A217839.P3710933820512784269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.tmod (A217954 (n + 1)) (A316245 (2 * (n + 2)))).toNat

end

end A217839.P3710933820512784269

/-! ## A217839.P4656006815619566112

`A337835(A217954(n+1))%A256771(A055998(n)+6)`
-/

namespace A217839.P4656006815619566112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337835 (A217954 (n + 1)).toNat) (A256771 (A055998 n + 6).toNat)

end

end A217839.P4656006815619566112

/-! ## A217839.P9995438638249606474

`A000194(A217954(n+1))%A177960(n+1)`
-/

namespace A217839.P9995438638249606474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 (A217954 (n + 1)).toNat) (A177960 (n + 1))

end

end A217839.P9995438638249606474

/-! ## A217839.P7197357637975897400

`A330709(A217954(n+1))+1`
-/

namespace A217839.P7197357637975897400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A217954 (n + 1)).toNat + 1

end

end A217839.P7197357637975897400

/-!
# A217840: Total number of solutions to the equation x^2 + k*y^2 = n with x >= 0, y >= 0, k > 0, or 0 if the number is infinite. Order matters for the equation x^2 + y^2 = n.

The programs for A217840, there is no canonical definition to state claims against.
-/

/-! ## A217840.P4375064106401119616

`A046951(n+1)%A059903(n+1)+A217834(n+1)*A267866(n)`
-/

namespace A217840.P4375064106401119616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046951 (n + 1)) (A059903 (n + 1)) + A217834 (n + 1) * A267866 n

end

end A217840.P4375064106401119616

/-! ## A217840.P14772550025914494388

`A216673(n+1)+A217956(n+1)-A216674(n+1)`
-/

namespace A217840.P14772550025914494388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216673 (n + 1) + (A217956 (n + 1) - A216674 (n + 1))

end

end A217840.P14772550025914494388

/-! ## A217840.P13614021807061595621

`A025441(n+1)+A216504(n+1)+A157658(A247834(n+1))`
-/

namespace A217840.P13614021807061595621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (n + 1) + (A216504 (n + 1) + A157658 (A247834 (n + 1)).toNat)

end

end A217840.P13614021807061595621

/-! ## A217840.P17606420728492217486

`A025441(2*(n+1))+A216504(n+1)+A055641(A019320(n))`
-/

namespace A217840.P17606420728492217486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (2 * (n + 1)) + (A216504 (n + 1) + A055641 (A019320 n).toNat)

end

end A217840.P17606420728492217486

/-! ## A217840.P10469156479392086009

`A216673(n+1)+A064911(A034851((n+1)²))`
-/

namespace A217840.P10469156479392086009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216673 (n + 1) + A064911 (A034851 ((n + 1) ^ 2)).toNat

end

end A217840.P10469156479392086009

/-!
# A217841: Fermat pseudoprimes n to base 3 for which sqrt(8*n + 1) is an integer.

The programs for A217841, there is no canonical definition to state claims against.
-/

/-! ## A217841.P18289795500331380811

`∩[A005935(n+1), A128880(n+1)]`
-/

namespace A217841.P18289795500331380811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P18289795500331380811

/-! ## A217841.P11810167643215718108

`∩[A128880(n+1), A263239(n+1)]`
-/

namespace A217841.P11810167643215718108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P11810167643215718108

/-! ## A217841.P6738818596965575191

`∩[A128880(n+1), A351336(n+1)]`
-/

namespace A217841.P6738818596965575191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P6738818596965575191

/-! ## A217841.P16955524051316512409

`∩[A005935(n+1), A000217(n)]`
-/

namespace A217841.P16955524051316512409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P16955524051316512409

/-! ## A217841.P12184583290544948703

`∩[A005935(n+1), A060544(n+1)]`
-/

namespace A217841.P12184583290544948703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P12184583290544948703

/-! ## A217841.P13787839976767709396

`∩[A060544(n+1), A351336(n+1)]`
-/

namespace A217841.P13787839976767709396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P13787839976767709396

/-! ## A217841.P616729999765000586

`∩[A060544(n+1), A122780(n+2)]`
-/

namespace A217841.P616729999765000586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P616729999765000586

/-! ## A217841.P10490626227281552764

`∩[A005935(n+1), A014493(n+1)]`
-/

namespace A217841.P10490626227281552764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P10490626227281552764

/-! ## A217841.P17620320251615668899

`∩[A014493(n+1), A263239(n+1)]`
-/

namespace A217841.P17620320251615668899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P17620320251615668899

/-! ## A217841.P4079741873363021241

`∩[A014493(n+1), A351336(n+1)]`
-/

namespace A217841.P4079741873363021241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P4079741873363021241

/-! ## A217841.P10873990071007072622

`∩[A005935(n+1), A272398(n+1)]`
-/

namespace A217841.P10873990071007072622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P10873990071007072622

/-! ## A217841.P17356213019232496432

`∩[A005935(n+1), A129966(n+1)]`
-/

namespace A217841.P17356213019232496432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P17356213019232496432

/-! ## A217841.P13924489217086148759

`∩[A005935(n+1), A117520(n+1)]`
-/

namespace A217841.P13924489217086148759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P13924489217086148759

/-! ## A217841.P65686328197445232

`∩[A005935(n+1), A161777(n+1)]`
-/

namespace A217841.P65686328197445232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P65686328197445232

/-! ## A217841.P2402007971107370998

`∩[A005935(n+1), A253145(n)]`
-/

namespace A217841.P2402007971107370998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P2402007971107370998

/-! ## A217841.P9793826208257797173

`∩[A005935(n+1), A122493(n)]`
-/

namespace A217841.P9793826208257797173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P9793826208257797173

/-! ## A217841.P15025843023474932939

`∩[A005935(n+1), A334129(n+1)]`
-/

namespace A217841.P15025843023474932939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P15025843023474932939

/-! ## A217841.P9397951828299739799

`∩[A005935(n+1), A193246(n+1)]`
-/

namespace A217841.P9397951828299739799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P9397951828299739799

/-! ## A217841.P17641659785829802780

`∩[A005935(n+1), A375999(n+1)]`
-/

namespace A217841.P17641659785829802780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P17641659785829802780

/-! ## A217841.P7322158189793518725

`∩[A005935(n+1), A376000(n+1)]`
-/

namespace A217841.P7322158189793518725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217841.P7322158189793518725

/-!
# A217843: Numbers which are the sum of one or more consecutive nonnegative cubes.

The programs for A217843, there is no canonical definition to state claims against.
-/

/-! ## A217843.P12412124125126342765

`∪[n^3, A265377(n+1)]`
-/

namespace A217843.P12412124125126342765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217843.P12412124125126342765

/-! ## A217843.P17526555851648810644

`∪[A265377(n+1), A000578(n)]`
-/

namespace A217843.P17526555851648810644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217843.P17526555851648810644

/-! ## A217843.P16758169617962076980

`lt[0, A297199(n^floor(atan(n)))]`
-/

namespace A217843.P16758169617962076980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297199 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217843.P16758169617962076980

/-! ## A217843.P11749645796880231190

`lt[0, A297199(A028310(n))]`
-/

namespace A217843.P11749645796880231190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297199 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217843.P11749645796880231190

/-! ## A217843.P10208966949547180769

`A384815(A386822(n))`
-/

namespace A217843.P10208966949547180769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384815 (A386822 n).toNat

end

end A217843.P10208966949547180769

/-!
# A217845: Numbers which are the sums of consecutive fifth powers.

The programs for A217845, there is no canonical definition to state claims against.
-/

/-! ## A217845.P9914736374920585826

`record[∑[A305258(n)^5]]`
-/

namespace A217845.P9914736374920585826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 n ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217845.P9914736374920585826

/-! ## A217845.P15193003035167116402

`A004842(record[A060026(n)])`
-/

namespace A217845.P15193003035167116402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A217845.P15193003035167116402

/-!
# A217847: Numbers which are the sums of consecutive seventh powers.

The programs for A217847, there is no canonical definition to state claims against.
-/

/-! ## A217847.P7541336492938624887

`record[∑[A305258(n)^7]]`
-/

namespace A217847.P7541336492938624887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 n ^ 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217847.P7541336492938624887

/-! ## A217847.P11090028876177990984

`filter[A004864(n+1), A005713(#)]`
-/

namespace A217847.P11090028876177990984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005713 (f1 j).toNat = 1) n)

end

end A217847.P11090028876177990984

/-!
# A217848: Numbers which are the sums of consecutive eighth powers.

The programs for A217848, there is no canonical definition to state claims against.
-/

/-! ## A217848.P9560955712025045906

`filter[A004875(n+1), A230603(#)]`
-/

namespace A217848.P9560955712025045906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230603 (f1 j).toNat = 1) n)

end

end A217848.P9560955712025045906

/-!
# A217849: Numbers which are the sums of consecutive ninth powers.

The programs for A217849, there is no canonical definition to state claims against.
-/

/-! ## A217849.P6187636631093819127

`record[∑[A305258(n)^9]]`
-/

namespace A217849.P6187636631093819127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 n ^ 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217849.P6187636631093819127

/-!
# A217850: Numbers which are the sums of consecutive tenth powers.

The programs for A217850, there is no canonical definition to state claims against.
-/

/-! ## A217850.P10534673394052145372

`filter[A004897(n+1), A127254(#)]`
-/

namespace A217850.P10534673394052145372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A217850.P10534673394052145372

/-! ## A217850.P6917572122525376146

`A004897(A083964(n+1)-A000194(n))`
-/

namespace A217850.P6917572122525376146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004897 (A083964 (n + 1) - A000194 n).toNat

end

end A217850.P6917572122525376146

/-!
# A217851: Least semiprime m such that the previous semiprime is m - A215231(n).

The programs for A217851, there is no canonical definition to state claims against.
-/

/-! ## A217851.P2133426373966373007

`A215232(n+1)+A215231(n+1)`
-/

namespace A217851.P2133426373966373007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215232 (n + 1) + A215231 (n + 1)

end

end A217851.P2133426373966373007

/-! ## A217851.P1517965339810379140

`A215231(A144972(n+1))+A131109(A215231(n+1))`
-/

namespace A217851.P1517965339810379140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215231 (A144972 (n + 1)).toNat + A131109 (A215231 (n + 1)).toNat

end

end A217851.P1517965339810379140

/-! ## A217851.P10459466956170123939

`A001358(A085809(n+1)+1)`
-/

namespace A217851.P10459466956170123939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A085809 (n + 1) + 1).toNat

end

end A217851.P10459466956170123939

/-! ## A217851.P11381322854347246216

`A186621(A085809(n+1)+1)+1`
-/

namespace A217851.P11381322854347246216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (A085809 (n + 1) + 1).toNat + 1

end

end A217851.P11381322854347246216

/-! ## A217851.P16839404261514181578

`A215232(n+1)+record[A065516(n+1)]`
-/

namespace A217851.P16839404261514181578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215232 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217851.P16839404261514181578

/-!
# A217852: Multiplicative order of 5 (mod 5*n - 1).

The programs for A217852, there is no canonical definition to state claims against.
-/

/-! ## A217852.P228741138800653101

`A053448(4*(n+1))`
-/

namespace A217852.P228741138800653101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053448 (4 * (n + 1))

end

end A217852.P228741138800653101

/-! ## A217852.P4413972490455998220

`A050977(4*n+3)`
-/

namespace A217852.P4413972490455998220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (4 * n + 3)

end

end A217852.P4413972490455998220

/-! ## A217852.P15547388418869662426

`A007736(5*n+4)`
-/

namespace A217852.P15547388418869662426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (5 * n + 4)

end

end A217852.P15547388418869662426

/-! ## A217852.P11716705980268236263

`A054706(5*n+4)`
-/

namespace A217852.P11716705980268236263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (5 * n + 4)

end

end A217852.P11716705980268236263

/-! ## A217852.P13884863457717353190

`A070677(5*n+4)`
-/

namespace A217852.P13884863457717353190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (5 * n + 4)

end

end A217852.P13884863457717353190

/-! ## A217852.P14396352163272536596

`or(2*char[1], A054706(A016897(n)))`
-/

namespace A217852.P14396352163272536596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A054706 (A016897 n).toNat)

end

end A217852.P14396352163272536596

/-!
# A217853: Fermat pseudoprimes to base 3 of the form (3^(4*k + 2) - 1)/8.

The programs for A217853, there is no canonical definition to state claims against.
-/

/-! ## A217853.P2824420983036876438

`A338795(A007051(n+1))`
-/

namespace A217853.P2824420983036876438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338795 (A007051 (n + 1)).toNat

end

end A217853.P2824420983036876438

/-! ## A217853.P13937195944515357586

`A022173(A034856(2*n+3))`
-/

namespace A217853.P13937195944515357586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 (A034856 (2 * n + 3)).toNat

end

end A217853.P13937195944515357586

/-! ## A217853.P10201567759813489092

`A239577(4*A001104(n+1))`
-/

namespace A217853.P10201567759813489092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239577 (4 * A001104 (n + 1)).toNat

end

end A217853.P10201567759813489092

/-! ## A217853.P1799969162699944484

`C(A007051(A137507(n+1)), 2)`
-/

namespace A217853.P1799969162699944484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007051 (A137507 (n + 1)).toNat).toNat 2

end

end A217853.P1799969162699944484

/-! ## A217853.P16301048851392008638

`A002452(Δ[A085908(n+1)²])`
-/

namespace A217853.P16301048851392008638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085908 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 (f1 (n + 1) - f1 n).toNat

end

end A217853.P16301048851392008638

/-!
# A217854: Product of all divisors of n, positive or negative.

The programs for A217854, the canonical program `A217854.P9671442733473030747` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217854 has offset 1).

The definition of A217854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062758, A158387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217854.P13244576520268413841

`(-(n+1))^A000005(n+1)`
-/

namespace A217854.P13244576520268413841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A217854.P13244576520268413841

namespace A217854

/-- `(-(n+1))^A000005(n+1)` -/
def P13244576520268413841.Spec : Prop :=
  ∀ n, P13244576520268413841.a n = (A217854 (n + 1) : ℚ)

end A217854

/-! ## A217854.P9671442733473030747

`A158387(n+1)*A062758(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A217854

/-- `A158387(n+1)*A062758(n+1)` -/
def P9671442733473030747.Spec : Prop :=
  ∀ n, P9671442733473030747.a n = A217854 (n + 1)

theorem P9671442733473030747.correct : P9671442733473030747.Spec := by
  intro n
  simp only [A217854, Nat.add_sub_cancel]

end A217854

/-! ## A217854.P16827660335174191160

`∏{d}[n+1, -#²]`
-/

namespace A217854.P16827660335174191160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (-(d ^ 2 : ℤ))

end

end A217854.P16827660335174191160

namespace A217854

/-- `∏{d}[n+1, -#²]` -/
def P16827660335174191160.Spec : Prop :=
  ∀ n, P16827660335174191160.a n = A217854 (n + 1)

end A217854

/-! ## A217854.P10299941830266731029

`(-(n+1))^∏{e}[n+1, #+1]`
-/

namespace A217854.P10299941830266731029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A217854.P10299941830266731029

namespace A217854

/-- `(-(n+1))^∏{e}[n+1, #+1]` -/
def P10299941830266731029.Spec : Prop :=
  ∀ n, P10299941830266731029.a n = A217854 (n + 1)

end A217854

/-! ## A217854.P3334785641248424172

`(-(n+1))^∑{d}[n+1, gcd(n, #)]`
-/

namespace A217854.P3334785641248424172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A217854.P3334785641248424172

namespace A217854

/-- `(-(n+1))^∑{d}[n+1, gcd(n, #)]` -/
def P3334785641248424172.Spec : Prop :=
  ∀ n, P3334785641248424172.a n = A217854 (n + 1)

end A217854

/-! ## A217854.P12014410395984081027

`∏{d}[n+1, -#]*∏{d}[n+1, #]`
-/

namespace A217854.P12014410395984081027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), (-(d : ℤ))) * ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A217854.P12014410395984081027

namespace A217854

/-- `∏{d}[n+1, -#]*∏{d}[n+1, #]` -/
def P12014410395984081027.Spec : Prop :=
  ∀ n, P12014410395984081027.a n = A217854 (n + 1)

end A217854

/-! ## A217854.P396586100521642621

`(-(n+1))^Δ[A006218(n)]`
-/

namespace A217854.P396586100521642621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A217854.P396586100521642621

namespace A217854

/-- `(-(n+1))^Δ[A006218(n)]` -/
def P396586100521642621.Spec : Prop :=
  ∀ n, P396586100521642621.a n = (A217854 (n + 1) : ℚ)

end A217854

/-! ## A217854.P14035362218821443891

`(-(n+1))^∑{d}[n+1, A000040(#+1)%2]`
-/

namespace A217854.P14035362218821443891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ) : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 (d + 1)) 2 : ℤ)

end

end A217854.P14035362218821443891

namespace A217854

/-- `(-(n+1))^∑{d}[n+1, A000040(#+1)%2]` -/
def P14035362218821443891.Spec : Prop :=
  ∀ n, P14035362218821443891.a n = (A217854 (n + 1) : ℚ)

end A217854

/-!
# A217855: Numbers m such that 16*m*(3*m+1)+1 is a square.

The programs for A217855, the canonical program `A217855.P10206570505778016113` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217855 has offset 0).

The definition of A217855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217855.P10206570505778016113

`14*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A217855

/-- `14*a(n-1)-a(n-2)+2` -/
def P10206570505778016113.Spec : Prop :=
  ∀ n, P10206570505778016113.a n = A217855 n

theorem P10206570505778016113.correct : P10206570505778016113.Spec := by
  intro n
  simp only [A217855]

end A217855

/-! ## A217855.P16746254836365699438

`2*A076139(n)`
-/

namespace A217855.P16746254836365699438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076139 n

end

end A217855.P16746254836365699438

namespace A217855

/-- `2*A076139(n)` -/
def P16746254836365699438.Spec : Prop :=
  ∀ n, P16746254836365699438.a n = A217855 n

end A217855

/-! ## A217855.P15689619291468444397

`2/3*A076140(n)`
-/

namespace A217855.P15689619291468444397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A076140 n : ℚ)

end

end A217855.P15689619291468444397

namespace A217855

/-- `2/3*A076140(n)` -/
def P15689619291468444397.Spec : Prop :=
  ∀ n, P15689619291468444397.a n = (A217855 n : ℚ)

end A217855

/-! ## A217855.P16609304432589657016

`1/4*A045899(n+1)`
-/

namespace A217855.P16609304432589657016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A045899 (n + 1) : ℚ)

end

end A217855.P16609304432589657016

namespace A217855

/-- `1/4*A045899(n+1)` -/
def P16609304432589657016.Spec : Prop :=
  ∀ n, P16609304432589657016.a n = (A217855 n : ℚ)

end A217855

/-! ## A217855.P2001508364791091127

`((2+sqrt(3))^(2*n+1)+(2-sqrt(3))^(2*n+1)-4)/24`
-/

namespace A217855.P2001508364791091127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) ^ (2 * n + 1) + (2 - Real.sqrt (3 : ℝ)) ^ (2 * n + 1) - 4) / 24

end

end A217855.P2001508364791091127

namespace A217855

/-- `((2+sqrt(3))^(2*n+1)+(2-sqrt(3))^(2*n+1)-4)/24` -/
def P2001508364791091127.Spec : Prop :=
  ∀ n, P2001508364791091127.a n = (A217855 n : ℝ)

end A217855

/-! ## A217855.P236042210992419059

`∑[ogf(2x/(1-14x+x^2))]`
-/

namespace A217855.P236042210992419059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217855.P236042210992419059

namespace A217855

/-- `∑[ogf(2x/(1-14x+x^2))]` -/
def P236042210992419059.Spec : Prop :=
  ∀ n, P236042210992419059.a n = A217855 n

end A217855

/-! ## A217855.P10188471556818554092

`ogf(2x/(1-15x+15x^2-x^3))`
-/

namespace A217855.P10188471556818554092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -15, 15, -1] n

end

end A217855.P10188471556818554092

namespace A217855

/-- `ogf(2x/(1-15x+15x^2-x^3))` -/
def P10188471556818554092.Spec : Prop :=
  ∀ n, P10188471556818554092.a n = A217855 n

end A217855

/-! ## A217855.P9827532590125151002

`∑[14*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A217855.P9827532590125151002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217855.P9827532590125151002

namespace A217855

/-- `∑[14*a(n-1)-a(n-2)]` -/
def P9827532590125151002.Spec : Prop :=
  ∀ n, P9827532590125151002.a n = A217855 n

end A217855

/-! ## A217855.P2728487103398161716

`∑[A011944(n)]`
-/

namespace A217855.P2728487103398161716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217855.P2728487103398161716

namespace A217855

/-- `∑[A011944(n)]` -/
def P2728487103398161716.Spec : Prop :=
  ∀ n, P2728487103398161716.a n = A217855 n

end A217855

/-! ## A217855.P16692725352995180865

`∑[∑[A094347(n)]-2]`
-/

namespace A217855.P16692725352995180865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217855.P16692725352995180865

namespace A217855

/-- `∑[∑[A094347(n)]-2]` -/
def P16692725352995180865.Spec : Prop :=
  ∀ n, P16692725352995180865.a n = A217855 n

end A217855

/-!
# A217856: Numbers with three prime factors, not necessarily distinct, except cubes of primes.

The programs for A217856, the canonical program `A217856.P13198607299286411855` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217856 has offset 1).

The definition of A217856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217856.P2296454082620009814

`eq[3, A317939(n+1)]+1`
-/

namespace A217856.P2296454082620009814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217856.P2296454082620009814

namespace A217856

/-- `eq[3, A317939(n+1)]+1` -/
def P2296454082620009814.Spec : Prop :=
  ∀ n, (P2296454082620009814.a n : ℤ) = A217856 (n + 1)

end A217856

/-! ## A217856.P13198607299286411855

`eq[3, A318475(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A217856

/-- `eq[3, A318475(n+1)]+1` -/
def P13198607299286411855.Spec : Prop :=
  ∀ n, (P13198607299286411855.a n : ℤ) = A217856 (n + 1)

theorem P13198607299286411855.correct : P13198607299286411855.Spec := by
  intro n
  simp only [A217856, Nat.add_sub_cancel]

end A217856

/-! ## A217856.P15750158093491719659

`lt[((11-A329385(n+1))/2)², 2]+1`
-/

namespace A217856.P15750158093491719659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 - A329385 (n + 1) : ℚ) / 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A217856.P15750158093491719659

namespace A217856

/-- `lt[((11-A329385(n+1))/2)², 2]+1` -/
def P15750158093491719659.Spec : Prop :=
  ∀ n, (P15750158093491719659.a n : ℤ) = A217856 (n + 1)

end A217856

/-! ## A217856.P12001105282932221675

`filter[A014612(n+1), A212793(#)]`
-/

namespace A217856.P12001105282932221675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A217856.P12001105282932221675

namespace A217856

/-- `filter[A014612(n+1), A212793(#)]` -/
def P12001105282932221675.Spec : Prop :=
  ∀ n, P12001105282932221675.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P15757422887165015302

`filter[A014612(n+1), A355823(#)]`
-/

namespace A217856.P15757422887165015302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A217856.P15757422887165015302

namespace A217856

/-- `filter[A014612(n+1), A355823(#)]` -/
def P15757422887165015302.Spec : Prop :=
  ∀ n, P15757422887165015302.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P13713065171149435166

`filter[A014612(n+1), A355825(#)]`
-/

namespace A217856.P13713065171149435166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A217856.P13713065171149435166

namespace A217856

/-- `filter[A014612(n+1), A355825(#)]` -/
def P13713065171149435166.Spec : Prop :=
  ∀ n, P13713065171149435166.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P16505280444318760054

`filter[A014612(n+1), A359471(#)]`
-/

namespace A217856.P16505280444318760054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A217856.P16505280444318760054

namespace A217856

/-- `filter[A014612(n+1), A359471(#)]` -/
def P16505280444318760054.Spec : Prop :=
  ∀ n, P16505280444318760054.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P2615889445733858147

`filter[A358763(n+1), A359471(#)]`
-/

namespace A217856.P2615889445733858147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A217856.P2615889445733858147

namespace A217856

/-- `filter[A358763(n+1), A359471(#)]` -/
def P2615889445733858147.Spec : Prop :=
  ∀ n, P2615889445733858147.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P3609637191546138737

`filter[A036456(n+1), A340369(#)]`
-/

namespace A217856.P3609637191546138737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A217856.P3609637191546138737

namespace A217856

/-- `filter[A036456(n+1), A340369(#)]` -/
def P3609637191546138737.Spec : Prop :=
  ∀ n, P3609637191546138737.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P631837021702734131

`filter[A036456(n+1), A359471(#)]`
-/

namespace A217856.P631837021702734131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A217856.P631837021702734131

namespace A217856

/-- `filter[A036456(n+1), A359471(#)]` -/
def P631837021702734131.Spec : Prop :=
  ∀ n, P631837021702734131.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P1276842324723753327

`∩[A014612(n+1), A036456(n+1)]`
-/

namespace A217856.P1276842324723753327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217856.P1276842324723753327

namespace A217856

/-- `∩[A014612(n+1), A036456(n+1)]` -/
def P1276842324723753327.Spec : Prop :=
  ∀ n, (P1276842324723753327.a n : ℤ) = A217856 (n + 1)

end A217856

/-! ## A217856.P17606198714462342311

`∩[A014612(n+1), A182859(n+1)]`
-/

namespace A217856.P17606198714462342311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217856.P17606198714462342311

namespace A217856

/-- `∩[A014612(n+1), A182859(n+1)]` -/
def P17606198714462342311.Spec : Prop :=
  ∀ n, (P17606198714462342311.a n : ℤ) = A217856 (n + 1)

end A217856

/-! ## A217856.P9848195801347140691

`∩[A036456(n+1), A298207(n+1)]`
-/

namespace A217856.P9848195801347140691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217856.P9848195801347140691

namespace A217856

/-- `∩[A036456(n+1), A298207(n+1)]` -/
def P9848195801347140691.Spec : Prop :=
  ∀ n, (P9848195801347140691.a n : ℤ) = A217856 (n + 1)

end A217856

/-! ## A217856.P5269283864964538718

`eq[2, A000010(A000010(A281113(n+2)))]+2`
-/

namespace A217856.P5269283864964538718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A281113 (n + 2)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A217856.P5269283864964538718

namespace A217856

/-- `eq[2, A000010(A000010(A281113(n+2)))]+2` -/
def P5269283864964538718.Spec : Prop :=
  ∀ n, (P5269283864964538718.a n : ℤ) = A217856 (n + 1)

end A217856

/-! ## A217856.P14784390639584048188

`filter[A014612(n+1), A174898(#)]`
-/

namespace A217856.P14784390639584048188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A217856.P14784390639584048188

namespace A217856

/-- `filter[A014612(n+1), A174898(#)]` -/
def P14784390639584048188.Spec : Prop :=
  ∀ n, P14784390639584048188.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P1719412197664140438

`filter[A298207(n+1), A174898(#)]`
-/

namespace A217856.P1719412197664140438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A217856.P1719412197664140438

namespace A217856

/-- `filter[A298207(n+1), A174898(#)]` -/
def P1719412197664140438.Spec : Prop :=
  ∀ n, P1719412197664140438.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P9746378446371087271

`filter[A119911(n+1), A340369(#)]`
-/

namespace A217856.P9746378446371087271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A217856.P9746378446371087271

namespace A217856

/-- `filter[A119911(n+1), A340369(#)]` -/
def P9746378446371087271.Spec : Prop :=
  ∀ n, P9746378446371087271.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P17259969003928908977

`filter[A007624(n+1), A340369(#)]`
-/

namespace A217856.P17259969003928908977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A217856.P17259969003928908977

namespace A217856

/-- `filter[A007624(n+1), A340369(#)]` -/
def P17259969003928908977.Spec : Prop :=
  ∀ n, P17259969003928908977.a n = A217856 (n + 1)

end A217856

/-! ## A217856.P12231556219886807952

`∩[A007624(n+1), A014612(n+1)]`
-/

namespace A217856.P12231556219886807952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217856.P12231556219886807952

namespace A217856

/-- `∩[A007624(n+1), A014612(n+1)]` -/
def P12231556219886807952.Spec : Prop :=
  ∀ n, (P12231556219886807952.a n : ℤ) = A217856 (n + 1)

end A217856

/-! ## A217856.P11075786050606013295

`filter[A058080(n+1), A340369(#)]`
-/

namespace A217856.P11075786050606013295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A217856.P11075786050606013295

namespace A217856

/-- `filter[A058080(n+1), A340369(#)]` -/
def P11075786050606013295.Spec : Prop :=
  ∀ n, P11075786050606013295.a n = A217856 (n + 1)

end A217856

/-!
# A217858: Odd part of lcm(1,2,3,...,n).

The programs for A217858, the canonical program `A217858.P5423406916032042559` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217858 has offset 1).

The definition of A217858 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025547, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217858.P5423406916032042559

`A025547(floor((n+2)/2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A217858

/-- `A025547(floor((n+2)/2))` -/
def P5423406916032042559.Spec : Prop :=
  ∀ n, P5423406916032042559.a n = A217858 (n + 1)

theorem P5423406916032042559.correct : P5423406916032042559.Spec := by
  intro n
  simp only [A217858, Nat.add_sub_cancel]

end A217858

/-! ## A217858.P7259096154022555789

`A000265(A003418(n+1))`
-/

namespace A217858.P7259096154022555789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003418 (n + 1)).toNat

end

end A217858.P7259096154022555789

namespace A217858

/-- `A000265(A003418(n+1))` -/
def P7259096154022555789.Spec : Prop :=
  ∀ n, P7259096154022555789.a n = A217858 (n + 1)

end A217858

/-! ## A217858.P14154875245600737294

`lcm(or(1, n), a(n-1))` with `a(0)=1`
-/

namespace A217858.P14154875245600737294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (Nat.lor 1 n) (a (n - 1))

end

end A217858.P14154875245600737294

namespace A217858

/-- `lcm(or(1, n), a(n-1))` -/
def P14154875245600737294.Spec : Prop :=
  ∀ n, (P14154875245600737294.a n : ℤ) = A217858 (n + 1)

end A217858

/-! ## A217858.P975955299239319671

`abs(Δ[lcm(n, a(n-2))])` with `a(0)=0, a(1)=1`
-/

namespace A217858.P975955299239319671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.lcm n (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A217858.P975955299239319671

namespace A217858

/-- `abs(Δ[lcm(n, a(n-2))])` -/
def P975955299239319671.Spec : Prop :=
  ∀ n, P975955299239319671.a n = A217858 (n + 1)

end A217858

/-! ## A217858.P17941290238085588496

`lcm(-a(n-1), Δ[ceil(n²/2)])` with `a(0)=1`
-/

namespace A217858.P17941290238085588496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (n + 1) - f1 n)

end

end A217858.P17941290238085588496

namespace A217858

/-- `lcm(-a(n-1), Δ[ceil(n²/2)])` -/
def P17941290238085588496.Spec : Prop :=
  ∀ n, (P17941290238085588496.a n : ℤ) = A217858 (n + 1)

end A217858

/-! ## A217858.P2370911885838643583

`lcm(n+1-and(1, n), a(abs(1-n)))` with `a(0)=1`
-/

namespace A217858.P2370911885838643583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm ((n + 1 : ℤ) - (Nat.land 1 n : ℤ)) (a |1 - (n : ℤ)|.toNat : ℤ)

end

end A217858.P2370911885838643583

namespace A217858

/-- `lcm(n+1-and(1, n), a(abs(1-n)))` -/
def P2370911885838643583.Spec : Prop :=
  ∀ n, (P2370911885838643583.a n : ℤ) = A217858 (n + 1)

end A217858

/-! ## A217858.P469360768674426939

`∏[gcd(n%2, ceil((n+1)/∏{p}[n+1, (n+1)/#]))]`
-/

namespace A217858.P469360768674426939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217858.P469360768674426939

namespace A217858

/-- `∏[gcd(n%2, ceil((n+1)/∏{p}[n+1, (n+1)/#]))]` -/
def P469360768674426939.Spec : Prop :=
  ∀ n, (P469360768674426939.a n : ℤ) = A217858 (n + 1)

end A217858

/-! ## A217858.P835805257859904696

`∏[A000265(A014963(n+1))]`
-/

namespace A217858.P835805257859904696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217858.P835805257859904696

namespace A217858

/-- `∏[A000265(A014963(n+1))]` -/
def P835805257859904696.Spec : Prop :=
  ∀ n, P835805257859904696.a n = A217858 (n + 1)

end A217858

/-! ## A217858.P16951931379710253817

`A038610(n+1)/A053644(n+1)*A064446(n+1)`
-/

namespace A217858.P16951931379710253817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038610 (n + 1) : ℚ) / (A053644 (n + 1) : ℚ) * (A064446 (n + 1) : ℚ)

end

end A217858.P16951931379710253817

namespace A217858

/-- `A038610(n+1)/A053644(n+1)*A064446(n+1)` -/
def P16951931379710253817.Spec : Prop :=
  ∀ n, P16951931379710253817.a n = (A217858 (n + 1) : ℚ)

end A217858

/-! ## A217858.P4485006341440887799

`A003418(n+1)/A053644(n+1)`
-/

namespace A217858.P4485006341440887799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A053644 (n + 1) : ℚ)

end

end A217858.P4485006341440887799

namespace A217858

/-- `A003418(n+1)/A053644(n+1)` -/
def P4485006341440887799.Spec : Prop :=
  ∀ n, P4485006341440887799.a n = (A217858 (n + 1) : ℚ)

end A217858

/-! ## A217858.P9539540424331826721

`lcm(A151821(n+1), A191836(n+1))/A151821(n+1)`
-/

namespace A217858.P9539540424331826721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A151821 (n + 1)) (A191836 (n + 1)) : ℚ) / (A151821 (n + 1) : ℚ)

end

end A217858.P9539540424331826721

namespace A217858

/-- `lcm(A151821(n+1), A191836(n+1))/A151821(n+1)` -/
def P9539540424331826721.Spec : Prop :=
  ∀ n, P9539540424331826721.a n = (A217858 (n + 1) : ℚ)

end A217858

/-! ## A217858.P10489539630653188719

`gcd(A051426(n+1), A323499(n+2))`
-/

namespace A217858.P10489539630653188719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051426 (n + 1)) (A323499 (n + 2))

end

end A217858.P10489539630653188719

namespace A217858

/-- `gcd(A051426(n+1), A323499(n+2))` -/
def P10489539630653188719.Spec : Prop :=
  ∀ n, (P10489539630653188719.a n : ℤ) = A217858 (n + 1)

end A217858

/-!
# A217860: Number of components over all functions on n unlabeled nodes.

The programs for A217860, there is no canonical definition to state claims against.
-/

/-! ## A217860.P6545829042484017193

`∑[∑[A172471(A182967(n))]]`
-/

namespace A217860.P6545829042484017193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A182967 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217860.P6545829042484017193

/-! ## A217860.P3437043405116807939

`A318229(n+3)-A286518(n+2)`
-/

namespace A217860.P3437043405116807939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 3) - A286518 (n + 2)

end

end A217860.P3437043405116807939

/-!
# A217861: Number of functions on n unlabeled nodes in which all the components are distinct.

The programs for A217861, there is no canonical definition to state claims against.
-/

/-! ## A217861.P7730319067142561635

`A000006(A000055(2*n+1)+1)`
-/

namespace A217861.P7730319067142561635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A000055 (2 * n + 1) + 1).toNat

end

end A217861.P7730319067142561635

/-! ## A217861.P17100016789613914299

`A259361(A060963(n))+A120896(n)`
-/

namespace A217861.P17100016789613914299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A060963 n).toNat + A120896 n

end

end A217861.P17100016789613914299

/-! ## A217861.P8476729068548300839

`A153582(n)-A054404(A000501(n))`
-/

namespace A217861.P8476729068548300839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153582 n - A054404 (A000501 n).toNat

end

end A217861.P8476729068548300839

/-! ## A217861.P16556558009497933687

`A001462(A361356(n))-A027868(n)`
-/

namespace A217861.P16556558009497933687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A361356 n).toNat - A027868 n

end

end A217861.P16556558009497933687

/-!
# A217862: Primes p of the form p = 1 + 840*k for some k.

The programs for A217862, the canonical program `A217862.P18069005239171520066` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217862 has offset 1).

The definition of A217862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217862.P18069005239171520066

`∩[A073102(n+1), A139665(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A217862

/-- `∩[A073102(n+1), A139665(n+1)]` -/
def P18069005239171520066.Spec : Prop :=
  ∀ n, (P18069005239171520066.a n : ℤ) = A217862 (n + 1)

theorem P18069005239171520066.correct : P18069005239171520066.Spec := by
  intro n
  simp only [A217862, Nat.add_sub_cancel]

end A217862

/-! ## A217862.P16439843110816147091

`∩[A139665(n+1), A217587(n+1)]`
-/

namespace A217862.P16439843110816147091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P16439843110816147091

namespace A217862

/-- `∩[A139665(n+1), A217587(n+1)]` -/
def P16439843110816147091.Spec : Prop :=
  ∀ n, (P16439843110816147091.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P601391038833923821

`∩[A073102(n+1), A163623(n+1)]`
-/

namespace A217862.P601391038833923821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P601391038833923821

namespace A217862

/-- `∩[A073102(n+1), A163623(n+1)]` -/
def P601391038833923821.Spec : Prop :=
  ∀ n, (P601391038833923821.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P6503733267175612581

`∩[A163623(n+1), A217587(n+1)]`
-/

namespace A217862.P6503733267175612581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P6503733267175612581

namespace A217862

/-- `∩[A163623(n+1), A217587(n+1)]` -/
def P6503733267175612581.Spec : Prop :=
  ∀ n, (P6503733267175612581.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P11094865570315397336

`∩[A073102(n+1), A142641(n+1)]`
-/

namespace A217862.P11094865570315397336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P11094865570315397336

namespace A217862

/-- `∩[A073102(n+1), A142641(n+1)]` -/
def P11094865570315397336.Spec : Prop :=
  ∀ n, (P11094865570315397336.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P923424982598537047

`∩[A142641(n+1), A163623(n+1)]`
-/

namespace A217862.P923424982598537047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P923424982598537047

namespace A217862

/-- `∩[A142641(n+1), A163623(n+1)]` -/
def P923424982598537047.Spec : Prop :=
  ∀ n, (P923424982598537047.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P9929562034022123700

`∩[A142641(n+1), A217587(n+1)]`
-/

namespace A217862.P9929562034022123700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P9929562034022123700

namespace A217862

/-- `∩[A142641(n+1), A217587(n+1)]` -/
def P9929562034022123700.Spec : Prop :=
  ∀ n, (P9929562034022123700.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P3489565247466758558

`∩[A139665(n+1), A140535(n+1)]`
-/

namespace A217862.P3489565247466758558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P3489565247466758558

namespace A217862

/-- `∩[A139665(n+1), A140535(n+1)]` -/
def P3489565247466758558.Spec : Prop :=
  ∀ n, (P3489565247466758558.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P2638946696304960158

`∩[A139665(n+1), A142076(n+1)]`
-/

namespace A217862.P2638946696304960158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P2638946696304960158

namespace A217862

/-- `∩[A139665(n+1), A142076(n+1)]` -/
def P2638946696304960158.Spec : Prop :=
  ∀ n, (P2638946696304960158.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P9400998034358198885

`∩[A140535(n+1), A142641(n+1)]`
-/

namespace A217862.P9400998034358198885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P9400998034358198885

namespace A217862

/-- `∩[A140535(n+1), A142641(n+1)]` -/
def P9400998034358198885.Spec : Prop :=
  ∀ n, (P9400998034358198885.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P4609146691805214592

`∩[A140535(n+1), A163623(n+1)]`
-/

namespace A217862.P4609146691805214592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P4609146691805214592

namespace A217862

/-- `∩[A140535(n+1), A163623(n+1)]` -/
def P4609146691805214592.Spec : Prop :=
  ∀ n, (P4609146691805214592.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P14146971981333155937

`∩[A142076(n+1), A163623(n+1)]`
-/

namespace A217862.P14146971981333155937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P14146971981333155937

namespace A217862

/-- `∩[A142076(n+1), A163623(n+1)]` -/
def P14146971981333155937.Spec : Prop :=
  ∀ n, (P14146971981333155937.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P10260249242559268696

`∩[A139651(n+1), A217587(n+1)]`
-/

namespace A217862.P10260249242559268696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P10260249242559268696

namespace A217862

/-- `∩[A139651(n+1), A217587(n+1)]` -/
def P10260249242559268696.Spec : Prop :=
  ∀ n, (P10260249242559268696.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P15075387881336607283

`∩[A073102(n+1), A139506(n+1)]`
-/

namespace A217862.P15075387881336607283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P15075387881336607283

namespace A217862

/-- `∩[A073102(n+1), A139506(n+1)]` -/
def P15075387881336607283.Spec : Prop :=
  ∀ n, (P15075387881336607283.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P11623122272988387704

`∩[A073102(n+1), A139655(n+1)]`
-/

namespace A217862.P11623122272988387704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P11623122272988387704

namespace A217862

/-- `∩[A073102(n+1), A139655(n+1)]` -/
def P11623122272988387704.Spec : Prop :=
  ∀ n, (P11623122272988387704.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P973554624555803834

`∩[A139506(n+1), A140535(n+1)]`
-/

namespace A217862.P973554624555803834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P973554624555803834

namespace A217862

/-- `∩[A139506(n+1), A140535(n+1)]` -/
def P973554624555803834.Spec : Prop :=
  ∀ n, (P973554624555803834.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P9978257293361431850

`∩[A139655(n+1), A140535(n+1)]`
-/

namespace A217862.P9978257293361431850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P9978257293361431850

namespace A217862

/-- `∩[A139655(n+1), A140535(n+1)]` -/
def P9978257293361431850.Spec : Prop :=
  ∀ n, (P9978257293361431850.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P7826578734220204613

`∩[A139506(n+1), A142076(n+1)]`
-/

namespace A217862.P7826578734220204613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P7826578734220204613

namespace A217862

/-- `∩[A139506(n+1), A142076(n+1)]` -/
def P7826578734220204613.Spec : Prop :=
  ∀ n, (P7826578734220204613.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P9375110481360334088

`∩[A139506(n+1), A217587(n+1)]`
-/

namespace A217862.P9375110481360334088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P9375110481360334088

namespace A217862

/-- `∩[A139506(n+1), A217587(n+1)]` -/
def P9375110481360334088.Spec : Prop :=
  ∀ n, (P9375110481360334088.a n : ℤ) = A217862 (n + 1)

end A217862

/-! ## A217862.P762475080416292593

`∩[A139655(n+1), A217587(n+1)]`
-/

namespace A217862.P762475080416292593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217862.P762475080416292593

namespace A217862

/-- `∩[A139655(n+1), A217587(n+1)]` -/
def P762475080416292593.Spec : Prop :=
  ∀ n, (P762475080416292593.a n : ℤ) = A217862 (n + 1)

end A217862

/-!
# A217863: a(n) = phi(lcm(1,2,3,...,n)), where phi is Euler's totient function.

The programs for A217863, the canonical program `A217863.P4277841558715900929` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217863 has offset 1).

The definition of A217863 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217863.P4277841558715900929

`A000010(A003418(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A217863

/-- `A000010(A003418(n+1))` -/
def P4277841558715900929.Spec : Prop :=
  ∀ n, P4277841558715900929.a n = A217863 (n + 1)

theorem P4277841558715900929.correct : P4277841558715900929.Spec := by
  intro n
  simp only [A217863, Nat.add_sub_cancel]

end A217863

/-! ## A217863.P1529282678606057906

`∏[ceil((n+1)*∏{p}[n+1, #/(n+3)])]`
-/

namespace A217863.P1529282678606057906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) / (n + 3 : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217863.P1529282678606057906

namespace A217863

/-- `∏[ceil((n+1)*∏{p}[n+1, #/(n+3)])]` -/
def P1529282678606057906.Spec : Prop :=
  ∀ n, P1529282678606057906.a n = A217863 (n + 1)

end A217863

/-! ## A217863.P10147887460069803030

`∏[A072211(n+1)]`
-/

namespace A217863.P10147887460069803030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217863.P10147887460069803030

namespace A217863

/-- `∏[A072211(n+1)]` -/
def P10147887460069803030.Spec : Prop :=
  ∀ n, P10147887460069803030.a n = A217863 (n + 1)

end A217863

/-! ## A217863.P5624823736947014151

`∏[round(A014963(n+1)/ratio[n+1])]`
-/

namespace A217863.P5624823736947014151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014963 (n + 1) : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217863.P5624823736947014151

namespace A217863

/-- `∏[round(A014963(n+1)/ratio[n+1])]` -/
def P5624823736947014151.Spec : Prop :=
  ∀ n, P5624823736947014151.a n = A217863 (n + 1)

end A217863

/-! ## A217863.P18381709852833798082

`∏[ratio[A003418(n)]-A010051(n+1)]`
-/

namespace A217863.P18381709852833798082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) - (A010051 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217863.P18381709852833798082

namespace A217863

/-- `∏[ratio[A003418(n)]-A010051(n+1)]` -/
def P18381709852833798082.Spec : Prop :=
  ∀ n, P18381709852833798082.a n = (A217863 (n + 1) : ℚ)

end A217863

/-! ## A217863.P15522333039040050652

`∏[A014963(n+1)-A010051(n+1)]`
-/

namespace A217863.P15522333039040050652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217863.P15522333039040050652

namespace A217863

/-- `∏[A014963(n+1)-A010051(n+1)]` -/
def P15522333039040050652.Spec : Prop :=
  ∀ n, P15522333039040050652.a n = A217863 (n + 1)

end A217863

/-! ## A217863.P3693090012638177286

`∏[gcd(A000010(n+1), A182936(n+1))]`
-/

namespace A217863.P3693090012638177286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A182936 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217863.P3693090012638177286

namespace A217863

/-- `∏[gcd(A000010(n+1), A182936(n+1))]` -/
def P3693090012638177286.Spec : Prop :=
  ∀ n, (P3693090012638177286.a n : ℤ) = A217863 (n + 1)

end A217863

/-! ## A217863.P8828660239275547845

`∏[A000010(n+1)/A000010((n+1)/A014963(n+1))]`
-/

namespace A217863.P8828660239275547845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217863.P8828660239275547845

namespace A217863

/-- `∏[A000010(n+1)/A000010((n+1)/A014963(n+1))]` -/
def P8828660239275547845.Spec : Prop :=
  ∀ n, P8828660239275547845.a n = (A217863 (n + 1) : ℚ)

end A217863

/-! ## A217863.P7173356643836858507

`∏[A076686(A140651(n+1))]`
-/

namespace A217863.P7173356643836858507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (A140651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217863.P7173356643836858507

namespace A217863

/-- `∏[A076686(A140651(n+1))]` -/
def P7173356643836858507.Spec : Prop :=
  ∀ n, P7173356643836858507.a n = A217863 (n + 1)

end A217863

/-!
# A217864: Number of prime numbers between floor(n*log(n)) and (n + 1)*log(n + 1).

The programs for A217864, there is no canonical definition to state claims against.
-/

/-! ## A217864.P9246883890290841217

`A285677(or(A006241(n+1), A099920(n)))`
-/

namespace A217864.P9246883890290841217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285677 (Int.lor (A006241 (n + 1)) (A099920 n)).toNat

end

end A217864.P9246883890290841217

/-! ## A217864.P2529203543750182100

`A074943(A048692(n+1)+7)`
-/

namespace A217864.P2529203543750182100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074943 (A048692 (n + 1) + 7).toNat

end

end A217864.P2529203543750182100

/-! ## A217864.P3584387736030861117

`A371165(A068360(n+1))%3`
-/

namespace A217864.P3584387736030861117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371165 (A068360 (n + 1)).toNat) 3

end

end A217864.P3584387736030861117

/-! ## A217864.P12986766228503763588

`A279210(Δ[A031940(n+1)]^3)`
-/

namespace A217864.P12986766228503763588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279210 ((f1 (n + 1) - f1 n) ^ 3).toNat

end

end A217864.P12986766228503763588

/-! ## A217864.P768533822853922880

`A001227(A048692(n+1)+7)%3`
-/

namespace A217864.P768533822853922880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001227 (A048692 (n + 1) + 7).toNat) 3

end

end A217864.P768533822853922880

/-!
# A217865: First differences of A050504.

The programs for A217865, the canonical program `A217865.P6976035578713182164` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217865 has offset 1).

The definition of A217865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217865.P6976035578713182164

`A050504(n+2)-A050504(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A217865

/-- `A050504(n+2)-A050504(n+1)` -/
def P6976035578713182164.Spec : Prop :=
  ∀ n, P6976035578713182164.a n = A217865 (n + 1)

theorem P6976035578713182164.correct : P6976035578713182164.Spec := by
  intro n
  simp only [A217865, Nat.add_sub_cancel]

end A217865

/-! ## A217865.P3274752592219323628

`Δ[floor((n+1)*log(n+1))]`
-/

namespace A217865.P3274752592219323628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217865.P3274752592219323628

namespace A217865

/-- `Δ[floor((n+1)*log(n+1))]` -/
def P3274752592219323628.Spec : Prop :=
  ∀ n, P3274752592219323628.a n = A217865 (n + 1)

end A217865

/-! ## A217865.P17494047180298270407

`abs(Δ[A050504(n+1)])`
-/

namespace A217865.P17494047180298270407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A217865.P17494047180298270407

namespace A217865

/-- `abs(Δ[A050504(n+1)])` -/
def P17494047180298270407.Spec : Prop :=
  ∀ n, P17494047180298270407.a n = A217865 (n + 1)

end A217865

/-! ## A217865.P8219370997660053889

`A000027(Δ[A050504(n+1)])`
-/

namespace A217865.P8219370997660053889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A217865.P8219370997660053889

namespace A217865

/-- `A000027(Δ[A050504(n+1)])` -/
def P8219370997660053889.Spec : Prop :=
  ∀ n, P8219370997660053889.a n = A217865 (n + 1)

end A217865

/-! ## A217865.P5545324252241470678

`A028310(Δ[A050504(n+1)])`
-/

namespace A217865.P5545324252241470678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A217865.P5545324252241470678

namespace A217865

/-- `A028310(Δ[A050504(n+1)])` -/
def P5545324252241470678.Spec : Prop :=
  ∀ n, P5545324252241470678.a n = A217865 (n + 1)

end A217865

/-! ## A217865.P12575130892336273224

`A044824(Δ[A050504(n+1)])`
-/

namespace A217865.P12575130892336273224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044824 (f1 (n + 1) - f1 n).toNat

end

end A217865.P12575130892336273224

namespace A217865

/-- `A044824(Δ[A050504(n+1)])` -/
def P12575130892336273224.Spec : Prop :=
  ∀ n, P12575130892336273224.a n = A217865 (n + 1)

end A217865

/-! ## A217865.P9154604304725315165

`A048242(Δ[A050504(n+1)])`
-/

namespace A217865.P9154604304725315165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048242 (f1 (n + 1) - f1 n).toNat

end

end A217865.P9154604304725315165

namespace A217865

/-- `A048242(Δ[A050504(n+1)])` -/
def P9154604304725315165.Spec : Prop :=
  ∀ n, P9154604304725315165.a n = A217865 (n + 1)

end A217865

/-! ## A217865.P2231102846475985955

`A269395(Δ[A050504(n+1)])`
-/

namespace A217865.P2231102846475985955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269395 (f1 (n + 1) - f1 n).toNat

end

end A217865.P2231102846475985955

namespace A217865

/-- `A269395(Δ[A050504(n+1)])` -/
def P2231102846475985955.Spec : Prop :=
  ∀ n, P2231102846475985955.a n = A217865 (n + 1)

end A217865

/-! ## A217865.P14509977213471356521

`A001222(2^Δ[A050504(n+1)])`
-/

namespace A217865.P14509977213471356521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A217865.P14509977213471356521

namespace A217865

/-- `A001222(2^Δ[A050504(n+1)])` -/
def P14509977213471356521.Spec : Prop :=
  ∀ n, P14509977213471356521.a n = A217865 (n + 1)

end A217865

/-! ## A217865.P17389683497715125582

`Δ[A050504(n+1)]%A007989(n)`
-/

namespace A217865.P17389683497715125582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A007989 n)

end

end A217865.P17389683497715125582

namespace A217865

/-- `Δ[A050504(n+1)]%A007989(n)` -/
def P17389683497715125582.Spec : Prop :=
  ∀ n, P17389683497715125582.a n = A217865 (n + 1)

end A217865

/-! ## A217865.P5339765930931036280

`or(Δ[A050504(n+1)], A000007(n))`
-/

namespace A217865.P5339765930931036280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A000007 n)

end

end A217865.P5339765930931036280

namespace A217865

/-- `or(Δ[A050504(n+1)], A000007(n))` -/
def P5339765930931036280.Spec : Prop :=
  ∀ n, P5339765930931036280.a n = A217865 (n + 1)

end A217865

/-! ## A217865.P7982251385719901133

`A007318(C(3, n))*Δ[A050504(n+1)]`
-/

namespace A217865.P7982251385719901133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * (f1 (n + 1) - f1 n)

end

end A217865.P7982251385719901133

namespace A217865

/-- `A007318(C(3, n))*Δ[A050504(n+1)]` -/
def P7982251385719901133.Spec : Prop :=
  ∀ n, P7982251385719901133.a n = A217865 (n + 1)

end A217865

/-!
# A217866: Last time n appears in the first differences of n*log(n): A217865.

The programs for A217866, there is no canonical definition to state claims against.
-/

/-! ## A217866.P8243108641709201075

`A220413(or(A002110(n), A192159(3*(n+1))))`
-/

namespace A217866.P8243108641709201075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (Int.lor (A002110 n) (A192159 (3 * (n + 1)))).toNat

end

end A217866.P8243108641709201075

/-!
# A217868: a(n) is the sum of total number of nonnegative integer solutions to each of a^2 + b^2 = n, a^2 + 2*b^2 = n, a^2 + 3*b^2 = n and a^2 + 7*b^2 = n. (Order matters for the equation a^2+b^2 = n).

The programs for A217868, there is no canonical definition to state claims against.
-/

/-! ## A217868.P16498105579790195277

`A217462(n+1)+A025435(n+1)`
-/

namespace A217868.P16498105579790195277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217462 (n + 1) + A025435 (n + 1)

end

end A217868.P16498105579790195277

/-! ## A217868.P12081723308841882331

`A217462(n+1)+A025426(2*(n+1))`
-/

namespace A217868.P12081723308841882331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217462 (n + 1) + A025426 (2 * (n + 1))

end

end A217868.P12081723308841882331

/-! ## A217868.P9343967994916621456

`A000925(n+1)+A217462(n+1)-A000161(n+1)`
-/

namespace A217868.P9343967994916621456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (n + 1) + (A217462 (n + 1) - A000161 (n + 1))

end

end A217868.P9343967994916621456

/-!
# A217869: a(n) is the sum of total number of positive integer solutions to each of a^2 + b^2 = n, a^2 + 2*b^2 = n, a^2 + 3*b^2 = n and a^2 + 7*b^2 = n. (Order matters for the equation a^2+b^2 = n).

The programs for A217869, there is no canonical definition to state claims against.
-/

/-! ## A217869.P17496777777437662540

`A217463(n+1)+A025441(n+1)`
-/

namespace A217869.P17496777777437662540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217463 (n + 1) + A025441 (n + 1)

end

end A217869.P17496777777437662540

/-! ## A217869.P5419699321246347594

`A217463(n+1)+A004526(A002654(n+1))`
-/

namespace A217869.P5419699321246347594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217463 (n + 1) + A004526 (A002654 (n + 1)).toNat

end

end A217869.P5419699321246347594

/-! ## A217869.P9405398401604159734

`A217463(n+1)+A025426(A000265(n+1))`
-/

namespace A217869.P9405398401604159734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217463 (n + 1) + A025426 (A000265 (n + 1)).toNat

end

end A217869.P9405398401604159734

/-! ## A217869.P3984492047403786678

`A217463(n+1)+A048865(A002654(n+1)+1)`
-/

namespace A217869.P3984492047403786678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217463 (n + 1) + A048865 (A002654 (n + 1) + 1).toNat

end

end A217869.P3984492047403786678

/-! ## A217869.P15034779096706324745

`A217463(n+1)+A004526(A014577(n)*A113446(n+1))`
-/

namespace A217869.P15034779096706324745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217463 (n + 1) + A004526 (A014577 n * A113446 (n + 1)).toNat

end

end A217869.P15034779096706324745

/-! ## A217869.P7313687147769109609

`A217463(n+1)+A073642(A014577(n)*A113446(n+1))`
-/

namespace A217869.P7313687147769109609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217463 (n + 1) + A073642 (A014577 n * A113446 (n + 1)).toNat

end

end A217869.P7313687147769109609

/-!
# A217871: a(n)=b(n,1) where b(0,m)=m, b(n,m)=b(floor(n/4),m*2).

The programs for A217871, the canonical program `A217871.P17885146011988318983` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217871 has offset 0).

The definition of A217871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217871.P17885146011988318983

`2^ceil(A029837(n+1)/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A217871

/-- `2^ceil(A029837(n+1)/2)` -/
def P17885146011988318983.Spec : Prop :=
  ∀ n, P17885146011988318983.a n = (A217871 n : ℚ)

end A217871

/-! ## A217871.P5274637843175124709

`∏[char[4^n]+1]`
-/

namespace A217871.P5274637843175124709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217871.P5274637843175124709

namespace A217871

/-- `∏[char[4^n]+1]` -/
def P5274637843175124709.Spec : Prop :=
  ∀ n, (P5274637843175124709.a n : ℤ) = A217871 n

end A217871

/-! ## A217871.P11331209342186329206

`2*a(floor(n/4))` with `a(0)=1`
-/

namespace A217871.P11331209342186329206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 4⌋.toNat

end

end A217871.P11331209342186329206

namespace A217871

/-- `2*a(floor(n/4))` -/
def P11331209342186329206.Spec : Prop :=
  ∀ n, (P11331209342186329206.a n : ℤ) = A217871 n

end A217871

/-! ## A217871.P1850601037476733903

`2^dr(∑[char[4^n]])`
-/

namespace A217871.P1850601037476733903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A217871.P1850601037476733903

namespace A217871

/-- `2^dr(∑[char[4^n]])` -/
def P1850601037476733903.Spec : Prop :=
  ∀ n, (P1850601037476733903.a n : ℤ) = A217871 n

end A217871

/-! ## A217871.P544505111569219775

`∑{e}[a(floor(n/4))², #]` with `a(0)=2`
-/

namespace A217871.P544505111569219775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A217871.P544505111569219775

namespace A217871

/-- `∑{e}[a(floor(n/4))², #]` -/
def P544505111569219775.Spec : Prop :=
  ∀ n, (P544505111569219775.a n : ℤ) = A217871 n

end A217871

/-! ## A217871.P15944315832571061771

`2^∑[char[∏{e}[n, 4^#]]]`
-/

namespace A217871.P15944315832571061771
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 4 ^ Nat.factorization (f3 n) p

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217871.P15944315832571061771

namespace A217871

/-- `2^∑[char[∏{e}[n, 4^#]]]` -/
def P15944315832571061771.Spec : Prop :=
  ∀ n, (P15944315832571061771.a n : ℤ) = A217871 n

end A217871

/-! ## A217871.P15374851171814216542

`2^ceil(log2(sqrt(C(n+1, n))))`
-/

namespace A217871.P15374851171814216542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (Real.sqrt (Nat.choose (n + 1) n : ℝ))⌉ : ℤ)

end

end A217871.P15374851171814216542

namespace A217871

/-- `2^ceil(log2(sqrt(C(n+1, n))))` -/
def P15374851171814216542.Spec : Prop :=
  ∀ n, P15374851171814216542.a n = (A217871 n : ℚ)

end A217871

/-! ## A217871.P16904749513486103126

`2/a(floor(n/4))^-1` with `a(0)=1`
-/

namespace A217871.P16904749513486103126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / a ⌊(n : ℚ) / 4⌋.toNat ^ (-1 : ℤ)

end

end A217871.P16904749513486103126

namespace A217871

/-- `2/a(floor(n/4))^-1` -/
def P16904749513486103126.Spec : Prop :=
  ∀ n, P16904749513486103126.a n = (A217871 n : ℚ)

end A217871

/-! ## A217871.P6336899854007191527

`a(n-1)+(n-n%(a(n-1)*a(n-1)))/a(n-1)` with `a(0)=1`
-/

namespace A217871.P6336899854007191527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1) * a (n - 1))) : ℚ) / a (n - 1)

end

end A217871.P6336899854007191527

namespace A217871

/-- `a(n-1)+(n-n%(a(n-1)*a(n-1)))/a(n-1)` -/
def P6336899854007191527.Spec : Prop :=
  ∀ n, P6336899854007191527.a n = (A217871 n : ℚ)

end A217871

/-!
# A217872: a(n) = sigma(n)^n.

The programs for A217872, there is no canonical definition to state claims against.
-/

/-! ## A217872.P717154930591078308

`∑{d}[n+1, #]^(n+1)`
-/

namespace A217872.P717154930591078308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ (n + 1)

end

end A217872.P717154930591078308

/-! ## A217872.P260053854490694219

`root(∑{d}[n+1, #], 1/(n+1))`
-/

namespace A217872.P260053854490694219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) ^ (1 / (1 / (n + 1 : ℚ) : ℝ))

end

end A217872.P260053854490694219

/-! ## A217872.P7416304268212628710

`log2(∏{d}[n+1, 2^#])^(n+1)`
-/

namespace A217872.P7416304268212628710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ d ∈ Nat.divisors (f1 n), 2 ^ d : ℕ) : ℝ) ^ (n + 1)

end

end A217872.P7416304268212628710

/-! ## A217872.P10627489332691157199

`A130307(∑[n])^(n+1)`
-/

namespace A217872.P10627489332691157199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130307 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A217872.P10627489332691157199

/-! ## A217872.P12814856878729859380

`Δ[A160664(n)]^(n+1)`
-/

namespace A217872.P12814856878729859380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A217872.P12814856878729859380

/-!
# A217873: a(n) = 4*n*(n^2 + 2)/3.

The programs for A217873, the canonical program `A217873.P11104823117186585775` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217873 has offset 0).

The definition of A217873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(n²+2)/3` (program `A217873.P15179946858705096319`, by `A217873.P15179946858705096319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217873.P15179946858705096319

`4*n*(n²+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217873.P15179946858705096319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n * (n ^ 2 + 2) : ℚ) / 3

end

end A217873.P15179946858705096319

namespace A217873

/-- `4*n*(n²+2)/3` -/
def P15179946858705096319.Spec : Prop :=
  ∀ n, P15179946858705096319.a n = (A217873 n : ℚ)

theorem P15179946858705096319.correct : P15179946858705096319.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A217873, Nat.add_sub_cancel, A217873.P15179946858705096319.a, A217873.P11104823117186585775.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A217873, Nat.add_sub_cancel, A217873.P15179946858705096319.a, A217873.P11104823117186585775.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A217873

/-! ## A217873.P11104823117186585775

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=16, a(3)=44`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A217873

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11104823117186585775.Spec : Prop :=
  ∀ n, P11104823117186585775.a n = A217873 n

theorem P11104823117186585775.correct : P11104823117186585775.Spec := by
  intro n
  simp only [A217873]

end A217873

/-! ## A217873.P1870197998750012284

`4*A006527(n)`
-/

namespace A217873.P1870197998750012284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006527 n

end

end A217873.P1870197998750012284

namespace A217873

/-- `4*A006527(n)` -/
def P1870197998750012284.Spec : Prop :=
  ∀ n, P1870197998750012284.a n = A217873 n

end A217873

/-! ## A217873.P7213436568274554654

`A174794(n+1)-1`
-/

namespace A217873.P7213436568274554654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174794 (n + 1) - 1

end

end A217873.P7213436568274554654

namespace A217873

/-- `A174794(n+1)-1` -/
def P7213436568274554654.Spec : Prop :=
  ∀ n, P7213436568274554654.a n = A217873 n

end A217873

/-! ## A217873.P1980459688373747399

`C(Δ[n²], 3)+3*n`
-/

namespace A217873.P1980459688373747399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 + 3 * n

end

end A217873.P1980459688373747399

namespace A217873

/-- `C(Δ[n²], 3)+3*n` -/
def P1980459688373747399.Spec : Prop :=
  ∀ n, (P1980459688373747399.a n : ℤ) = A217873 n

end A217873

/-! ## A217873.P15246030619244158595

`∑[4*n]+C(2*n, 3)`
-/

namespace A217873.P15246030619244158595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n) 3

end

end A217873.P15246030619244158595

namespace A217873

/-- `∑[4*n]+C(2*n, 3)` -/
def P15246030619244158595.Spec : Prop :=
  ∀ n, (P15246030619244158595.a n : ℤ) = A217873 n

end A217873

/-! ## A217873.P933242865648872033

`∑[∑[a(n-1)+8]]` with `a(0)=0, a(1)=4, a(2)=8`
-/

namespace A217873.P933242865648872033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217873.P933242865648872033

namespace A217873

/-- `∑[∑[a(n-1)+8]]` -/
def P933242865648872033.Spec : Prop :=
  ∀ n, (P933242865648872033.a n : ℤ) = A217873 n

end A217873

/-! ## A217873.P16825391737539463335

`4*∑[cot(Δ[acot(1-n)])]-4`
-/

namespace A217873.P16825391737539463335
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 - (n : ℤ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (f2 (n + 1) - f2 n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) - 4

end

end A217873.P16825391737539463335

namespace A217873

/-- `4*∑[cot(Δ[acot(1-n)])]-4` -/
def P16825391737539463335.Spec : Prop :=
  ∀ n, P16825391737539463335.a n = (A217873 n : ℝ)

end A217873

/-! ## A217873.P923245403380142068

`∑[∑[ogf((4x+4x^3)/(1-2x+x^2))]]`
-/

namespace A217873.P923245403380142068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 0, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217873.P923245403380142068

namespace A217873

/-- `∑[∑[ogf((4x+4x^3)/(1-2x+x^2))]]` -/
def P923245403380142068.Spec : Prop :=
  ∀ n, P923245403380142068.a n = A217873 n

end A217873

/-! ## A217873.P10018937844540975487

`C(2*n+1, 3)+2*n+n`
-/

namespace A217873.P10018937844540975487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3 + 2 * n + n

end

end A217873.P10018937844540975487

namespace A217873

/-- `C(2*n+1, 3)+2*n+n` -/
def P10018937844540975487.Spec : Prop :=
  ∀ n, (P10018937844540975487.a n : ℤ) = A217873 n

end A217873

/-! ## A217873.P12463032728005871941

`∑[(2*n)²]-2*lcm(n, n-1)`
-/

namespace A217873.P12463032728005871941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)

end

end A217873.P12463032728005871941

namespace A217873

/-- `∑[(2*n)²]-2*lcm(n, n-1)` -/
def P12463032728005871941.Spec : Prop :=
  ∀ n, P12463032728005871941.a n = A217873 n

end A217873

/-! ## A217873.P13786942047456372857

`∑[(2*n)²]-(C(2*n, 2)-n)`
-/

namespace A217873.P13786942047456372857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.choose (2 * n) 2 : ℤ) - (n : ℤ))

end

end A217873.P13786942047456372857

namespace A217873

/-- `∑[(2*n)²]-(C(2*n, 2)-n)` -/
def P13786942047456372857.Spec : Prop :=
  ∀ n, P13786942047456372857.a n = A217873 n

end A217873

/-! ## A217873.P14581769502961078389

`∑[record[(n²+2)/gcd(2, n)]]-1+n`
-/

namespace A217873.P14581769502961078389
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 2 : ℚ) / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 + (n : ℚ)

end

end A217873.P14581769502961078389

namespace A217873

/-- `∑[record[(n²+2)/gcd(2, n)]]-1+n` -/
def P14581769502961078389.Spec : Prop :=
  ∀ n, P14581769502961078389.a n = (A217873 n : ℚ)

end A217873

/-! ## A217873.P15403840667087120086

`floor(A008412(n)/2)`
-/

namespace A217873.P15403840667087120086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008412 n : ℚ) / 2⌋

end

end A217873.P15403840667087120086

namespace A217873

/-- `floor(A008412(n)/2)` -/
def P15403840667087120086.Spec : Prop :=
  ∀ n, P15403840667087120086.a n = A217873 n

end A217873

/-! ## A217873.P6081425709928938361

`Δ[2*A103290(n)]`
-/

namespace A217873.P6081425709928938361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217873.P6081425709928938361

namespace A217873

/-- `Δ[2*A103290(n)]` -/
def P6081425709928938361.Spec : Prop :=
  ∀ n, P6081425709928938361.a n = A217873 n

end A217873

/-! ## A217873.P813953750588027585

`A100503(n)-1+n`
-/

namespace A217873.P813953750588027585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100503 n - 1 + (n : ℤ)

end

end A217873.P813953750588027585

namespace A217873

/-- `A100503(n)-1+n` -/
def P813953750588027585.Spec : Prop :=
  ∀ n, P813953750588027585.a n = A217873 n

end A217873

/-! ## A217873.P16100028989527104302

`A035597(n)+2*n`
-/

namespace A217873.P16100028989527104302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 n + (2 * n : ℤ)

end

end A217873.P16100028989527104302

namespace A217873

/-- `A035597(n)+2*n` -/
def P16100028989527104302.Spec : Prop :=
  ∀ n, P16100028989527104302.a n = A217873 n

end A217873

/-! ## A217873.P6639921482268999131

`A000447(n)+3*n`
-/

namespace A217873.P6639921482268999131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n + (3 * n : ℤ)

end

end A217873.P6639921482268999131

namespace A217873

/-- `A000447(n)+3*n` -/
def P6639921482268999131.Spec : Prop :=
  ∀ n, P6639921482268999131.a n = A217873 n

end A217873

/-! ## A217873.P13966721638021229260

`∑[∑[4*A004275(n)]]`
-/

namespace A217873.P13966721638021229260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217873.P13966721638021229260

namespace A217873

/-- `∑[∑[4*A004275(n)]]` -/
def P13966721638021229260.Spec : Prop :=
  ∀ n, P13966721638021229260.a n = A217873 n

end A217873

/-! ## A217873.P12159281566220571270

`A008585(n)+A000447(n)`
-/

namespace A217873.P12159281566220571270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A000447 n

end

end A217873.P12159281566220571270

namespace A217873

/-- `A008585(n)+A000447(n)` -/
def P12159281566220571270.Spec : Prop :=
  ∀ n, P12159281566220571270.a n = A217873 n

end A217873

/-!
# A217874: Table A142978 (figurate numbers for n-dimensional cross polytope) extended by a top row.

The programs for A217874, there is no canonical definition to state claims against.
-/

/-! ## A217874.P5715120561375834973

`ceil(A113413(n)/2)%Δ[A080246(n)]`
-/

namespace A217874.P5715120561375834973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A113413 n : ℚ) / 2⌉ (f1 (n + 1) - f1 n)

end

end A217874.P5715120561375834973

/-! ## A217874.P13570337736541570045

`A101603(∑[2*n]%comp[∑[n]])`
-/

namespace A217874.P13570337736541570045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101603 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A217874.P13570337736541570045

/-! ## A217874.P4702118778777175727

`A101603(∑[char[∑[n]]]²-(n+1))`
-/

namespace A217874.P4702118778777175727
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101603 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A217874.P4702118778777175727

/-! ## A217874.P10699216524270122827

`gcd(A000038(n), A101603(A061579(n)))`
-/

namespace A217874.P10699216524270122827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A101603 (A061579 n).toNat)

end

end A217874.P10699216524270122827

/-! ## A217874.P5411218839549371186

`lcm(A020985(n), A101603(A061579(n)))`
-/

namespace A217874.P5411218839549371186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A101603 (A061579 n).toNat)

end

end A217874.P5411218839549371186

/-! ## A217874.P2049531695246423941

`or(A000007(n), A101603(A061579(n)))`
-/

namespace A217874.P2049531695246423941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A101603 (A061579 n).toNat)

end

end A217874.P2049531695246423941

/-! ## A217874.P14304136091721082405

`A101603(A061579(n))%A022112(n)`
-/

namespace A217874.P14304136091721082405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101603 (A061579 n).toNat) (A022112 n)

end

end A217874.P14304136091721082405

/-! ## A217874.P844899135435379345

`A123108(A204171(n+1)+A113413(n))`
-/

namespace A217874.P844899135435379345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A204171 (n + 1) + A113413 n).toNat

end

end A217874.P844899135435379345

/-!
# A217878: Number of n-element 0..2 arrays with each element the minimum of 3 adjacent elements of a random 0..2 array of n+2 elements.

The programs for A217878, there is no canonical definition to state claims against.
-/

/-! ## A217878.P3229644354980818081

`A228461(∑[n+2])`
-/

namespace A217878.P3229644354980818081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217878.P3229644354980818081

/-! ## A217878.P13793619517650675146

`record[A228461(A000096(A236858(n)))]`
-/

namespace A217878.P13793619517650675146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A000096 (A236858 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217878.P13793619517650675146

/-! ## A217878.P14374710674744750503

`A151878(n)!*A228461(A000096(n+1))`
-/

namespace A217878.P14374710674744750503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151878 n).toNat : ℤ) * A228461 (A000096 (n + 1)).toNat

end

end A217878.P14374710674744750503

/-! ## A217878.P9260023356362650826

`A228461(A000096(n+1))+A008683(A270696(n+1))`
-/

namespace A217878.P9260023356362650826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A000096 (n + 1)).toNat + A008683 (A270696 (n + 1)).toNat

end

end A217878.P9260023356362650826

/-! ## A217878.P1910665617028104218

`A217883(∑[n+3]+1)`
-/

namespace A217878.P1910665617028104218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217878.P1910665617028104218

/-!
# A217879: Number of n element 0..2 arrays with each element the minimum of 4 adjacent elements of a random 0..2 array of n+3 elements.

The programs for A217879, there is no canonical definition to state claims against.
-/

/-! ## A217879.P11050631876615747198

`A217883(∑[n+4]+3)`
-/

namespace A217879.P11050631876615747198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A217879.P11050631876615747198

/-! ## A217879.P6933370142263625779

`record[A217883(A027379(n))]`
-/

namespace A217879.P6933370142263625779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217879.P6933370142263625779

/-! ## A217879.P14255571957014706208

`record[A217883(A347553(n+4)-2)]`
-/

namespace A217879.P14255571957014706208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A347553 (n + 4) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217879.P14255571957014706208

/-! ## A217879.P3505799362333604922

`record[A142475(n)*A217883(n+1)]`
-/

namespace A217879.P3505799362333604922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142475 n * A217883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217879.P3505799362333604922

/-! ## A217879.P17947258786547624104

`A217883(eq[4, A052509(n)])%A008918(n+1)`
-/

namespace A217879.P17947258786547624104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A008918 (n + 1))

end

end A217879.P17947258786547624104

/-!
# A217880: Number of n element 0..2 arrays with each element the minimum of 5 adjacent elements of a random 0..2 array of n+4 elements.

The programs for A217880, there is no canonical definition to state claims against.
-/

/-! ## A217880.P12271966409520338913

`A217883(∑[n+5]+6)`
-/

namespace A217880.P12271966409520338913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A217880.P12271966409520338913

/-! ## A217880.P6708389114982805201

`record[A217883(A014132(A027379(n)))]`
-/

namespace A217880.P6708389114982805201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A014132 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217880.P6708389114982805201

/-! ## A217880.P1486825472012758641

`A217883(Δ[A023545(n+1)])%A017622(n)`
-/

namespace A217880.P1486825472012758641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217883 (f1 (n + 1) - f1 n).toNat) (A017622 n)

end

end A217880.P1486825472012758641

/-! ## A217880.P586716355277796384

`A020985(n)²*A217883(Δ[A023545(n+1)])`
-/

namespace A217880.P586716355277796384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A217883 (f1 (n + 1) - f1 n).toNat

end

end A217880.P586716355277796384

/-! ## A217880.P12064154916482582690

`A217883(Δ[A023545(n+1)])+A008683(8*n+12)`
-/

namespace A217880.P12064154916482582690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (f1 (n + 1) - f1 n).toNat + A008683 (8 * n + 12)

end

end A217880.P12064154916482582690

/-!
# A217881: Number of n element 0..2 arrays with each element the minimum of 6 adjacent elements of a random 0..2 array of n+5 elements.

The programs for A217881, there is no canonical definition to state claims against.
-/

/-! ## A217881.P6067714358248489131

`A217883(A052905(n+3))`
-/

namespace A217881.P6067714358248489131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A052905 (n + 3)).toNat

end

end A217881.P6067714358248489131

/-! ## A217881.P3378530958025885916

`A217883(A046691(n+4)-1)`
-/

namespace A217881.P3378530958025885916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A046691 (n + 4) - 1).toNat

end

end A217881.P3378530958025885916

/-! ## A217881.P12133424152870726564

`A217883(A055998(n+4)-2)`
-/

namespace A217881.P12133424152870726564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A055998 (n + 4) - 2).toNat

end

end A217881.P12133424152870726564

/-! ## A217881.P4933722402685835380

`A217883(Δ[Δ[A006504(n+1)]])`
-/

namespace A217881.P4933722402685835380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (f1 (n + 1) - f1 n).toNat

end

end A217881.P4933722402685835380

/-! ## A217881.P10454400001744928486

`A217883(Δ[A023545(n+2)]-1)`
-/

namespace A217881.P10454400001744928486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (f1 (n + 1) - f1 n - 1).toNat

end

end A217881.P10454400001744928486

/-!
# A217882: Number of n element 0..2 arrays with each element the minimum of 7 adjacent elements of a random 0..2 array of n+6 elements.

The programs for A217882, there is no canonical definition to state claims against.
-/

/-! ## A217882.P16705116026523284856

`A217883(A055999(n+4))`
-/

namespace A217882.P16705116026523284856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A055999 (n + 4)).toNat

end

end A217882.P16705116026523284856

/-! ## A217882.P678591515350748217

`A217883(A046691(n+5)-2)`
-/

namespace A217882.P678591515350748217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A046691 (n + 5) - 2).toNat

end

end A217882.P678591515350748217

/-! ## A217882.P18351731348356506356

`A217883(A000096(n+6)-5)`
-/

namespace A217882.P18351731348356506356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A000096 (n + 6) - 5).toNat

end

end A217882.P18351731348356506356

/-! ## A217882.P10849358113010214929

`A217883(A000217(n+7)-6)`
-/

namespace A217882.P10849358113010214929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A000217 (n + 7) - 6).toNat

end

end A217882.P10849358113010214929

/-! ## A217882.P12124387910032312445

`A217883(A000124(n+7)-7)`
-/

namespace A217882.P12124387910032312445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217883 (A000124 (n + 7) - 7).toNat

end

end A217882.P12124387910032312445

/-!
# A217884: Let c(m)=prime(m), m=1,2,3,4. For m>=5, suppose that c(m)/e is in the interval [c(k),c(k+1)). Then let c(m+1)=e*c(k+1) if e*c(k+1) < prime(m+1), and otherwise let c(m+1) = prime(m+1). Then a(n) is the n-th prime in {c(m)}.

The programs for A217884, there is no canonical definition to state claims against.
-/

/-! ## A217884.P7609489578045912101

`record[p?[A007916(A143694(n+1))]]`
-/

namespace A217884.P7609489578045912101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (A143694 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217884.P7609489578045912101

/-! ## A217884.P5375563097141970495

`p?[record[A085392(A342779(n+1))]]`
-/

namespace A217884.P5375563097141970495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A342779 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217884.P5375563097141970495

/-! ## A217884.P17187785884870833628

`eq[A003415(n), A131554(A107926(n))]`
-/

namespace A217884.P17187785884870833628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131554 (A107926 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217884.P17187785884870833628

/-! ## A217884.P1310231470005303966

`eq[A131554(A107926(n)), A210442(n)]`
-/

namespace A217884.P1310231470005303966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131554 (A107926 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217884.P1310231470005303966

/-! ## A217884.P15772172891380419714

`eq[A003415(n), A011588(A159296(n+1))]`
-/

namespace A217884.P15772172891380419714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 (A159296 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217884.P15772172891380419714

/-!
# A217885: Number of n element 1..n arrays with each element the minimum of 2 adjacent elements of a permutation of 1..n+1 of n+1 elements.

The programs for A217885, there is no canonical definition to state claims against.
-/

/-! ## A217885.P14671595479635563147

`A217891(∑[n+2])`
-/

namespace A217885.P14671595479635563147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217885.P14671595479635563147

/-! ## A217885.P12417424562148940180

`record[A217891(A099375(n)+1+n)]`
-/

namespace A217885.P12417424562148940180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (A099375 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217885.P12417424562148940180

/-! ## A217885.P10875358746179199290

`record[A129186(n)*A217891(n+1)]`
-/

namespace A217885.P10875358746179199290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A217891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217885.P10875358746179199290

/-! ## A217885.P12934943093948681042

`record[gcd(A008290(n), A217891(n+1))]`
-/

namespace A217885.P12934943093948681042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A217891 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217885.P12934943093948681042

/-! ## A217885.P4980738418711687425

`record[A217891(A181506(n+1)+n+1)]`
-/

namespace A217885.P4980738418711687425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (A181506 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217885.P4980738418711687425

/-!
# A217886: Number of n element 1..n arrays with each element the minimum of 3 adjacent elements of a permutation of 1..n+2 of n+2 elements.

The programs for A217886, there is no canonical definition to state claims against.
-/

/-! ## A217886.P7047873065307302495

`A217891(∑[n+3]+1)`
-/

namespace A217886.P7047873065307302495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217886.P7047873065307302495

/-! ## A217886.P4505595184569858937

`A217891(A055999(n)+4)+char[17]`
-/

namespace A217886.P4505595184569858937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (A055999 n + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A217886.P4505595184569858937

/-! ## A217886.P14580777668715713326

`record[A217891(n+1)^A238354(n)]`
-/

namespace A217886.P14580777668715713326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217891 (n + 1) : ℚ) ^ (A238354 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217886.P14580777668715713326

/-! ## A217886.P12032118674028050357

`record[A010054(n+3)*A217891(n+1)]`
-/

namespace A217886.P12032118674028050357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A217891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217886.P12032118674028050357

/-! ## A217886.P17129489836596890633

`record[A217891(n+1)/A104219(n+2)]`
-/

namespace A217886.P17129489836596890633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217891 (n + 1) : ℚ) / (A104219 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217886.P17129489836596890633

/-!
# A217887: Number of n element 1..n arrays with each element the minimum of 4 adjacent elements of a permutation of 1..n+3 of n+3 elements.

The programs for A217887, there is no canonical definition to state claims against.
-/

/-! ## A217887.P5945388776263555509

`A217891(∑[n+4]+3)`
-/

namespace A217887.P5945388776263555509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A217887.P5945388776263555509

/-! ## A217887.P14787682468281267485

`A331693(2*n+1)+A072931(A002452(n))`
-/

namespace A217887.P14787682468281267485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331693 (2 * n + 1) + A072931 (A002452 n).toNat

end

end A217887.P14787682468281267485

/-!
# A217888: Number of n element 1..n arrays with each element the minimum of 5 adjacent elements of a permutation of 1..n+4 of n+4 elements.

The programs for A217888, there is no canonical definition to state claims against.
-/

/-! ## A217888.P15773330465036635370

`A217891(Δ[A264443(n)])`
-/

namespace A217888.P15773330465036635370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (f1 (n + 1) - f1 n).toNat

end

end A217888.P15773330465036635370

/-! ## A217888.P7387267941105707691

`A217891(A046691(n+3))`
-/

namespace A217888.P7387267941105707691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (A046691 (n + 3)).toNat

end

end A217888.P7387267941105707691

/-! ## A217888.P17857634994267902301

`A217891(A056115(n)+11)`
-/

namespace A217888.P17857634994267902301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (A056115 n + 11).toNat

end

end A217888.P17857634994267902301

/-! ## A217888.P12375784262379341818

`A217891(eq[2, A092921(n)])`
-/

namespace A217888.P12375784262379341818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217888.P12375784262379341818

/-! ## A217888.P17956217353759082395

`A217891(eq[3, A152157(n)])`
-/

namespace A217888.P17956217353759082395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217888.P17956217353759082395

/-!
# A217889: Number of n element 1..n arrays with each element the minimum of 6 adjacent elements of a permutation of 1..n+5 of n+5 elements.

The programs for A217889, there is no canonical definition to state claims against.
-/

/-! ## A217889.P2625295387955773143

`A217891(A052905(n+3))`
-/

namespace A217889.P2625295387955773143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (A052905 (n + 3)).toNat

end

end A217889.P2625295387955773143

/-! ## A217889.P15286701114639805728

`A217891(eq[3, A219347(n)])`
-/

namespace A217889.P15286701114639805728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217889.P15286701114639805728

/-! ## A217889.P8515629880330434845

`A217891(eq[5, A152157(n)])`
-/

namespace A217889.P8515629880330434845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217889.P8515629880330434845

/-! ## A217889.P8858934242340380294

`A217891(eq[5, A193592(n)])`
-/

namespace A217889.P8858934242340380294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217889.P8858934242340380294

/-! ## A217889.P12864674621566369105

`A217891(eq[8, A258709(n)])`
-/

namespace A217889.P12864674621566369105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217889.P12864674621566369105

/-!
# A217890: Number of n element 1..n arrays with each element the minimum of 7 adjacent elements of a permutation of 1..n+6 of n+6 elements.

The programs for A217890, there is no canonical definition to state claims against.
-/

/-! ## A217890.P11847788940231607441

`A217891(A055999(n+4))`
-/

namespace A217890.P11847788940231607441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (A055999 (n + 4)).toNat

end

end A217890.P11847788940231607441

/-! ## A217890.P8962720092027149409

`A217891(A134227(n+5))`
-/

namespace A217890.P8962720092027149409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (A134227 (n + 5)).toNat

end

end A217890.P8962720092027149409

/-! ## A217890.P13758755471497071450

`A217891(eq[4, A219347(n)])`
-/

namespace A217890.P13758755471497071450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217890.P13758755471497071450

/-! ## A217890.P5942900672989944544

`A217891(eq[6, A193592(n)])`
-/

namespace A217890.P5942900672989944544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217890.P5942900672989944544

/-! ## A217890.P9021603079279886449

`A217891(eq[7, A152157(n)])`
-/

namespace A217890.P9021603079279886449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217890.P9021603079279886449

/-!
# A217891: T(n,k) is the number of n element 1..n arrays with each element the minimum of k adjacent elements of a permutation of 1..n+k-1 of n+k-1 elements.

The programs for A217891, there is no canonical definition to state claims against.
-/

/-! ## A217891.P10198292424602324540

`A189479(A022181(n))+A008305(n+1)`
-/

namespace A217891.P10198292424602324540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (A022181 n).toNat + A008305 (n + 1)

end

end A217891.P10198292424602324540

/-! ## A217891.P8417778896795021302

`A082858(A157221(n))+A008305(n+1)`
-/

namespace A217891.P8417778896795021302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A157221 n).toNat + A008305 (n + 1)

end

end A217891.P8417778896795021302

/-! ## A217891.P9552367649986596604

`A174898(A174914(n))+A008305(n+1)`
-/

namespace A217891.P9552367649986596604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174898 (A174914 n).toNat + A008305 (n + 1)

end

end A217891.P9552367649986596604

/-! ## A217891.P16919209929159624341

`A178580(A329703(n))+A008305(n+1)`
-/

namespace A217891.P16919209929159624341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178580 (A329703 n).toNat + A008305 (n + 1)

end

end A217891.P16919209929159624341

/-! ## A217891.P11043055911562933594

`A303837(A228902(n))+A008305(n+1)`
-/

namespace A217891.P11043055911562933594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (A228902 n).toNat + A008305 (n + 1)

end

end A217891.P11043055911562933594

/-!
# A217893: 50k^2-40k-17 interleaved with 50k^2+10k+13 for k=>0.

The programs for A217893, the canonical program `A217893.P3272960821247742555` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217893 has offset 0).

The definition of A217893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217893.P3272960821247742555

`1+(10*n*(5*n-8)-75*(-1)^n+3)/4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A217893

/-- `1+(10*n*(5*n-8)-75*(-1)^n+3)/4` -/
def P3272960821247742555.Spec : Prop :=
  ∀ n, P3272960821247742555.a n = (A217893 n : ℚ)

end A217893

/-!
# A217894: 50k^2-20k-23 interleaved with 50k^2+30k+17 for k=>0.

The programs for A217894, the canonical program `A217894.P10561400872157173208` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217894 has offset 0).

The definition of A217894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217894.P10561400872157173208

`(10*n*(5*n-4)-75*(-1)^n-1)/4-4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A217894

/-- `(10*n*(5*n-4)-75*(-1)^n-1)/4-4` -/
def P10561400872157173208.Spec : Prop :=
  ∀ n, P10561400872157173208.a n = (A217894 n : ℚ)

end A217894

/-!
# A217895: Sum of d/Gpf(d) for all divisors d of n, with Gpf(d) the greatest prime factor of d.

The programs for A217895, the canonical program `A217895.P6948623987334555102` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217895 has offset 1).

The definition of A217895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217895.P10738706709404000015

`∑{d}[n+1, A052126(#)]`
-/

namespace A217895.P10738706709404000015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A052126 d

end

end A217895.P10738706709404000015

namespace A217895

/-- `∑{d}[n+1, A052126(#)]` -/
def P10738706709404000015.Spec : Prop :=
  ∀ n, P10738706709404000015.a n = A217895 (n + 1)

end A217895

/-! ## A217895.P6948623987334555102

`∑{d}[n+1, #/A006530(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A217895

/-- `∑{d}[n+1, #/A006530(#)]` -/
def P6948623987334555102.Spec : Prop :=
  ∀ n, P6948623987334555102.a n = (A217895 (n + 1) : ℚ)

end A217895

/-! ## A217895.P17622489362096212868

`∑{d}[A008619(2*n), round(#/A006530(#))]`
-/

namespace A217895.P17622489362096212868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.roundAway ((d : ℚ) / (A006530 d : ℚ))

end

end A217895.P17622489362096212868

namespace A217895

/-- `∑{d}[A008619(2*n), round(#/A006530(#))]` -/
def P17622489362096212868.Spec : Prop :=
  ∀ n, P17622489362096212868.a n = A217895 (n + 1)

end A217895

/-! ## A217895.P12599183353335639885

`∑{d}[n+1, #/A244080(A255833(#))]`
-/

namespace A217895.P12599183353335639885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A244080 (A255833 d).toNat : ℚ)

end

end A217895.P12599183353335639885

namespace A217895

/-- `∑{d}[n+1, #/A244080(A255833(#))]` -/
def P12599183353335639885.Spec : Prop :=
  ∀ n, P12599183353335639885.a n = (A217895 (n + 1) : ℚ)

end A217895

/-! ## A217895.P1755674649966089795

`∑{d}[A003961(n+1), A325133(#)]`
-/

namespace A217895.P1755674649966089795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A325133 d

end

end A217895.P1755674649966089795

namespace A217895

/-- `∑{d}[A003961(n+1), A325133(#)]` -/
def P1755674649966089795.Spec : Prop :=
  ∀ n, P1755674649966089795.a n = A217895 (n + 1)

end A217895

/-!
# A217896: Number of unlabeled functions on n nodes that have at least one fixed point.

The programs for A217896, there is no canonical definition to state claims against.
-/

/-! ## A217896.P14302603224535507068

`A001372(n)-A001373(n)*A166123(A016116(n))`
-/

namespace A217896.P14302603224535507068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n - A001373 n * A166123 (A016116 n).toNat

end

end A217896.P14302603224535507068

/-! ## A217896.P4478470611418659537

`A010051(A168012(n+1))+A001372(n)-A001373(n)`
-/

namespace A217896.P4478470611418659537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A168012 (n + 1)).toNat + (A001372 n - A001373 n)

end

end A217896.P4478470611418659537

/-! ## A217896.P11774732883430623157

`A001372(n)*A058306(A179618(n+1))-A001373(n)`
-/

namespace A217896.P11774732883430623157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n * A058306 (A179618 (n + 1)).toNat - A001373 n

end

end A217896.P11774732883430623157

/-! ## A217896.P275633188336263865

`A001222(A000043(n+1))*A001372(n)-A001373(n)`
-/

namespace A217896.P275633188336263865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A001372 n - A001373 n

end

end A217896.P275633188336263865

/-! ## A217896.P747203755310184523

`A000027(A001372(n))-A001373(n)`
-/

namespace A217896.P747203755310184523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001372 n).toNat - A001373 n

end

end A217896.P747203755310184523

/-!
# A217897: Triangular array read by rows. T(n,k) is the number of unlabeled functions on n nodes that have exactly k fixed points, n >= 0, 0 <= k <= n.

The programs for A217897, there is no canonical definition to state claims against.
-/

/-! ## A217897.P6275254621458914903

`gcd(A309784(n+1), A345163(A187829(n+1)))`
-/

namespace A217897.P6275254621458914903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A309784 (n + 1)) (A345163 (A187829 (n + 1)).toNat)

end

end A217897.P6275254621458914903

/-!
# A217898: Number of fixed points over all unlabeled functions on n nodes.

The programs for A217898, there is no canonical definition to state claims against.
-/

/-! ## A217898.P13810891555841024262

`∑[A008617(Δ[A001411(n)])]`
-/

namespace A217898.P13810891555841024262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217898.P13810891555841024262

/-! ## A217898.P11257084118421031896

`A239514(A001405(n))+A001906(n)`
-/

namespace A217898.P11257084118421031896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239514 (A001405 n).toNat + A001906 n

end

end A217898.P11257084118421031896

/-! ## A217898.P7819336468234843559

`A025469(A001862(n))+A001853(n+1)`
-/

namespace A217898.P7819336468234843559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A001862 n).toNat + A001853 (n + 1)

end

end A217898.P7819336468234843559

/-! ## A217898.P1055575865984429857

`A093492(A099487(n))+A001853(n+1)`
-/

namespace A217898.P1055575865984429857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093492 (A099487 n).toNat + A001853 (n + 1)

end

end A217898.P1055575865984429857

/-!
# A217899: O.g.f.: Sum_{n>=1} (n^2)^(n-1) * exp(-n^2*x) * x^n / n!.

The programs for A217899, there is no canonical definition to state claims against.
-/

/-! ## A217899.P1608089166037866416

`A293926(∑[n]+1)/A028310(n)`
-/

namespace A217899.P1608089166037866416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293926 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (A028310 n : ℚ)

end

end A217899.P1608089166037866416

/-! ## A217899.P16761250280892168200

`A106800(A132209(n))`
-/

namespace A217899.P16761250280892168200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A132209 n).toNat

end

end A217899.P16761250280892168200

/-! ## A217899.P7022906078190618874

`A008278(A004277(n²))`
-/

namespace A217899.P7022906078190618874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A004277 (n ^ 2)).toNat

end

end A217899.P7022906078190618874

/-! ## A217899.P10444163879300749665

`A008278(A028310(2*n²))`
-/

namespace A217899.P10444163879300749665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A028310 (2 * n ^ 2)).toNat

end

end A217899.P10444163879300749665

/-! ## A217899.P15987453207169851382

`A008278(A065033((2*n)²))`
-/

namespace A217899.P15987453207169851382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A065033 ((2 * n) ^ 2)).toNat

end

end A217899.P15987453207169851382

