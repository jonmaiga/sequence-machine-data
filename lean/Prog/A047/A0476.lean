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
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A047600: Numbers that are congruent to {1, 3, 4, 5} mod 8.

The programs for A047600, the canonical program `A047600.P17553239899300466713` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047600 has offset 1).

The definition of A047600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047600.P17553239899300466713

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047600

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P17553239899300466713.Spec : Prop :=
  ∀ n, P17553239899300466713.a n = A047600 (n + 1)

theorem P17553239899300466713.correct : P17553239899300466713.Spec := by
  intro n
  simp only [A047600, Nat.add_sub_cancel]

end A047600

/-! ## A047600.P1404051748457822793

`round(cos(n%4)+2*n)`
-/

namespace A047600.P1404051748457822793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n % 4 : ℕ) : ℝ) + (2 * n : ℝ))

end

end A047600.P1404051748457822793

namespace A047600

/-- `round(cos(n%4)+2*n)` -/
def P1404051748457822793.Spec : Prop :=
  ∀ n, P1404051748457822793.a n = A047600 (n + 1)

end A047600

/-! ## A047600.P10431091307469174063

`a(n-4)+8` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A047600.P10431091307469174063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 5] fun n a =>
  a (n - 4) + 8

end

end A047600.P10431091307469174063

namespace A047600

/-- `a(n-4)+8` -/
def P10431091307469174063.Spec : Prop :=
  ∀ n, (P10431091307469174063.a n : ℤ) = A047600 (n + 1)

end A047600

/-! ## A047600.P10168963156172491327

`comp[and(n, xor(3, n)+3)]-1`
-/

namespace A047600.P10168963156172491327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.xor 3 n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A047600.P10168963156172491327

namespace A047600

/-- `comp[and(n, xor(3, n)+3)]-1` -/
def P10168963156172491327.Spec : Prop :=
  ∀ n, P10168963156172491327.a n = A047600 (n + 1)

end A047600

/-! ## A047600.P2097921645428126569

`∑[gcd(4, ∑[n]²+n)]-3`
-/

namespace A047600.P2097921645428126569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047600.P2097921645428126569

namespace A047600

/-- `∑[gcd(4, ∑[n]²+n)]-3` -/
def P2097921645428126569.Spec : Prop :=
  ∀ n, P2097921645428126569.a n = A047600 (n + 1)

end A047600

/-! ## A047600.P14787455331626184433

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047600.P14787455331626184433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047600.P14787455331626184433

namespace A047600

/-- `∑[floor(a(n-4))]` -/
def P14787455331626184433.Spec : Prop :=
  ∀ n, (P14787455331626184433.a n : ℤ) = A047600 (n + 1)

end A047600

/-! ## A047600.P11199274233410567465

`∑[a(n-4)%5]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A047600.P11199274233410567465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1, 4] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047600.P11199274233410567465

namespace A047600

/-- `∑[a(n-4)%5]` -/
def P11199274233410567465.Spec : Prop :=
  ∀ n, (P11199274233410567465.a n : ℤ) = A047600 (n + 1)

end A047600

/-! ## A047600.P14989507258794093442

`or(n, and(2, n+2)!)+n-1`
-/

namespace A047600.P14989507258794093442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (Nat.factorial (Nat.land 2 (n + 2))) : ℤ) + ((n : ℤ) - 1)

end

end A047600.P14989507258794093442

namespace A047600

/-- `or(n, and(2, n+2)!)+n-1` -/
def P14989507258794093442.Spec : Prop :=
  ∀ n, P14989507258794093442.a n = A047600 (n + 1)

end A047600

/-! ## A047600.P17258198233157696955

`2*n+1-((n+3)%4)%3`
-/

namespace A047600.P17258198233157696955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (((n + 3) % 4 % 3 : ℕ) : ℤ)

end

end A047600.P17258198233157696955

namespace A047600

/-- `2*n+1-((n+3)%4)%3` -/
def P17258198233157696955.Spec : Prop :=
  ∀ n, P17258198233157696955.a n = A047600 (n + 1)

end A047600

/-! ## A047600.P7552194107657816117

`xor(2*n+1, and(3, n+3)%3)`
-/

namespace A047600.P7552194107657816117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (Nat.land 3 (n + 3) % 3)

end

end A047600.P7552194107657816117

namespace A047600

/-- `xor(2*n+1, and(3, n+3)%3)` -/
def P7552194107657816117.Spec : Prop :=
  ∀ n, (P7552194107657816117.a n : ℤ) = A047600 (n + 1)

end A047600

/-! ## A047600.P11080869142926079969

`2*n+1-and(2, n)/gcd(2, n)`
-/

namespace A047600.P11080869142926079969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) - (Nat.land 2 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A047600.P11080869142926079969

namespace A047600

/-- `2*n+1-and(2, n)/gcd(2, n)` -/
def P11080869142926079969.Spec : Prop :=
  ∀ n, P11080869142926079969.a n = (A047600 (n + 1) : ℚ)

end A047600

/-! ## A047600.P6679423235407707319

`lt[xor(n+1, (n+2)%8), n+1]`
-/

namespace A047600.P6679423235407707319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) ((n + 2) % 8)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047600.P6679423235407707319

namespace A047600

/-- `lt[xor(n+1, (n+2)%8), n+1]` -/
def P6679423235407707319.Spec : Prop :=
  ∀ n, (P6679423235407707319.a n : ℤ) = A047600 (n + 1)

end A047600

/-! ## A047600.P9832785790881545090

`∑[∑[ogf((1+2x+x^2+x^3+3x^4)/(1+x+x^2+x^3))]]`
-/

namespace A047600.P9832785790881545090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 1, 3] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047600.P9832785790881545090

namespace A047600

/-- `∑[∑[ogf((1+2x+x^2+x^3+3x^4)/(1+x+x^2+x^3))]]` -/
def P9832785790881545090.Spec : Prop :=
  ∀ n, P9832785790881545090.a n = A047600 (n + 1)

end A047600

/-! ## A047600.P328818404571995490

`2*n+1-C(2, and(3, n+2)²)`
-/

namespace A047600.P328818404571995490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.choose 2 (Nat.land 3 (n + 2) ^ 2) : ℤ)

end

end A047600.P328818404571995490

namespace A047600

/-- `2*n+1-C(2, and(3, n+2)²)` -/
def P328818404571995490.Spec : Prop :=
  ∀ n, P328818404571995490.a n = A047600 (n + 1)

end A047600

/-! ## A047600.P2088398948802739640

`∑[a(n-4)^a(n-2)]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A047600.P2088398948802739640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1, 4] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047600.P2088398948802739640

namespace A047600

/-- `∑[a(n-4)^a(n-2)]` -/
def P2088398948802739640.Spec : Prop :=
  ∀ n, (P2088398948802739640.a n : ℤ) = A047600 (n + 1)

end A047600

/-! ## A047600.P16642658362398317117

`eq[0, and(n-3, n-and(n+2, n-1))]`
-/

namespace A047600.P16642658362398317117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 3) ((n : ℤ) - Int.land (n + 2 : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047600.P16642658362398317117

namespace A047600

/-- `eq[0, and(n-3, n-and(n+2, n-1))]` -/
def P16642658362398317117.Spec : Prop :=
  ∀ n, (P16642658362398317117.a n : ℤ) = A047600 (n + 1)

end A047600

/-! ## A047600.P17119767416006760853

`2*n+1-lcm(n+2, and(2, n))/(n+2)`
-/

namespace A047600.P17119767416006760853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) - (Nat.lcm (n + 2) (Nat.land 2 n) : ℚ) / (n + 2 : ℚ)

end

end A047600.P17119767416006760853

namespace A047600

/-- `2*n+1-lcm(n+2, and(2, n))/(n+2)` -/
def P17119767416006760853.Spec : Prop :=
  ∀ n, P17119767416006760853.a n = (A047600 (n + 1) : ℚ)

end A047600

/-! ## A047600.P12852498228929886265

`comp[A047553(n+1)]`
-/

namespace A047600.P12852498228929886265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047600.P12852498228929886265

namespace A047600

/-- `comp[A047553(n+1)]` -/
def P12852498228929886265.Spec : Prop :=
  ∀ n, (P12852498228929886265.a n : ℤ) = A047600 (n + 1)

end A047600

/-! ## A047600.P14095080984712340614

`A047456(n+1)+1`
-/

namespace A047600.P14095080984712340614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047456 (n + 1) + 1

end

end A047600.P14095080984712340614

namespace A047600

/-- `A047456(n+1)+1` -/
def P14095080984712340614.Spec : Prop :=
  ∀ n, P14095080984712340614.a n = A047600 (n + 1)

end A047600

/-! ## A047600.P2597484737987408729

`A047433(n+1)-1`
-/

namespace A047600.P2597484737987408729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047433 (n + 1) - 1

end

end A047600.P2597484737987408729

namespace A047600

/-- `A047433(n+1)-1` -/
def P2597484737987408729.Spec : Prop :=
  ∀ n, P2597484737987408729.a n = A047600 (n + 1)

end A047600

/-!
# A047601: Numbers that are congruent to {0, 1, 3, 4, 5} mod 8.

The programs for A047601, the canonical program `A047601.P4843117651727385939` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047601 has offset 1).

The definition of A047601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047601.P4843117651727385939

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5, a(5)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047601

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P4843117651727385939.Spec : Prop :=
  ∀ n, P4843117651727385939.a n = A047601 (n + 1)

theorem P4843117651727385939.correct : P4843117651727385939.Spec := by
  intro n
  simp only [A047601, Nat.add_sub_cancel]

end A047601

/-! ## A047601.P5175197162113869209

`record[and(n, (2-n)%8)]`
-/

namespace A047601.P5175197162113869209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.tmod (2 - (n : ℤ)) 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047601.P5175197162113869209

namespace A047601

/-- `record[and(n, (2-n)%8)]` -/
def P5175197162113869209.Spec : Prop :=
  ∀ n, P5175197162113869209.a n = A047601 (n + 1)

end A047601

/-! ## A047601.P15275193524621516822

`record[and(n, xor(3, n+1))]`
-/

namespace A047601.P15275193524621516822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.xor 3 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047601.P15275193524621516822

namespace A047601

/-- `record[and(n, xor(3, n+1))]` -/
def P15275193524621516822.Spec : Prop :=
  ∀ n, (P15275193524621516822.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P5711851324218529880

`comp[(n+2)*n%4]-1`
-/

namespace A047601.P5711851324218529880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n % 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A047601.P5711851324218529880

namespace A047601

/-- `comp[(n+2)*n%4]-1` -/
def P5711851324218529880.Spec : Prop :=
  ∀ n, P5711851324218529880.a n = A047601 (n + 1)

end A047601

/-! ## A047601.P5175489060005013150

`comp[(n+2)*and(3, n)]-1`
-/

namespace A047601.P5175489060005013150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.land 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A047601.P5175489060005013150

namespace A047601

/-- `comp[(n+2)*and(3, n)]-1` -/
def P5175489060005013150.Spec : Prop :=
  ∀ n, P5175489060005013150.a n = A047601 (n + 1)

end A047601

/-! ## A047601.P7123535070589923977

`record[or(n, gcd(8, n)%3)]-2`
-/

namespace A047601.P7123535070589923977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.gcd 8 n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 2

end

end A047601.P7123535070589923977

namespace A047601

/-- `record[or(n, gcd(8, n)%3)]-2` -/
def P7123535070589923977.Spec : Prop :=
  ∀ n, P7123535070589923977.a n = A047601 (n + 1)

end A047601

/-! ## A047601.P17350583476354886562

`record[and(n, and(3, n)+1+n)]`
-/

namespace A047601.P17350583476354886562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.land 3 n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047601.P17350583476354886562

namespace A047601

/-- `record[and(n, and(3, n)+1+n)]` -/
def P17350583476354886562.Spec : Prop :=
  ∀ n, (P17350583476354886562.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P6224389536668866495

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A047601.P6224389536668866495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4, 5] fun n a =>
  a (n - 5) + 8

end

end A047601.P6224389536668866495

namespace A047601

/-- `a(n-5)+8` -/
def P6224389536668866495.Spec : Prop :=
  ∀ n, (P6224389536668866495.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P1742702900498681058

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=1, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047601.P1742702900498681058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 1, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047601.P1742702900498681058

namespace A047601

/-- `∑[floor(a(n-5))]` -/
def P1742702900498681058.Spec : Prop :=
  ∀ n, (P1742702900498681058.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P7863808818723990122

`lt[val((n+1)*(n+2)², 2), 3]`
-/

namespace A047601.P7863808818723990122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * (n + 2) ^ 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047601.P7863808818723990122

namespace A047601

/-- `lt[val((n+1)*(n+2)², 2), 3]` -/
def P7863808818723990122.Spec : Prop :=
  ∀ n, (P7863808818723990122.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P15039740477242213661

`∑[a(n-5)%4]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=1, a(5)=3`
-/

namespace A047601.P15039740477242213661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 1, 3] fun n f1 =>
  f1 (n - 5) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047601.P15039740477242213661

namespace A047601

/-- `∑[a(n-5)%4]` -/
def P15039740477242213661.Spec : Prop :=
  ∀ n, (P15039740477242213661.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P5296332643821372587

`eq[(2*n+1)%8, xor(n, n+1)]`
-/

namespace A047601.P5296332643821372587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047601.P5296332643821372587

namespace A047601

/-- `eq[(2*n+1)%8, xor(n, n+1)]` -/
def P5296332643821372587.Spec : Prop :=
  ∀ n, (P5296332643821372587.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P11323836632142714872

`eq[0, and(n, and(n, n+1)-(n-3))]`
-/

namespace A047601.P11323836632142714872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((Nat.land n (n + 1) : ℤ) - ((n : ℤ) - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047601.P11323836632142714872

namespace A047601

/-- `eq[0, and(n, and(n, n+1)-(n-3))]` -/
def P11323836632142714872.Spec : Prop :=
  ∀ n, (P11323836632142714872.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P5123457200670278915

`eq[0, and(n-3-2*n, and(n, n-3))]`
-/

namespace A047601.P5123457200670278915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 3 - (2 * n : ℤ)) (Int.land (n : ℤ) ((n : ℤ) - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047601.P5123457200670278915

namespace A047601

/-- `eq[0, and(n-3-2*n, and(n, n-3))]` -/
def P5123457200670278915.Spec : Prop :=
  ∀ n, (P5123457200670278915.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P10532309241389961894

`∑[a(n-5)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=1, a(5)=3`
-/

namespace A047601.P10532309241389961894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 1, 3] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047601.P10532309241389961894

namespace A047601

/-- `∑[a(n-5)^a(n-1)]` -/
def P10532309241389961894.Spec : Prop :=
  ∀ n, (P10532309241389961894.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P889925702251029838

`comp[A047552(n+1)]`
-/

namespace A047601.P889925702251029838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047601.P889925702251029838

namespace A047601

/-- `comp[A047552(n+1)]` -/
def P889925702251029838.Spec : Prop :=
  ∀ n, (P889925702251029838.a n : ℤ) = A047601 (n + 1)

end A047601

/-! ## A047601.P1111743604673921781

`A047435(n+1)-1`
-/

namespace A047601.P1111743604673921781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047435 (n + 1) - 1

end

end A047601.P1111743604673921781

namespace A047601

/-- `A047435(n+1)-1` -/
def P1111743604673921781.Spec : Prop :=
  ∀ n, P1111743604673921781.a n = A047601 (n + 1)

end A047601

/-! ## A047601.P9477031139376323560

`A047586(n+1)-2`
-/

namespace A047601.P9477031139376323560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047586 (n + 1) - 2

end

end A047601.P9477031139376323560

namespace A047601

/-- `A047586(n+1)-2` -/
def P9477031139376323560.Spec : Prop :=
  ∀ n, P9477031139376323560.a n = A047601 (n + 1)

end A047601

/-! ## A047601.P976004016866993126

`comp[A047438(n+1)+1]`
-/

namespace A047601.P976004016866993126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047601.P976004016866993126

namespace A047601

/-- `comp[A047438(n+1)+1]` -/
def P976004016866993126.Spec : Prop :=
  ∀ n, (P976004016866993126.a n : ℤ) = A047601 (n + 1)

end A047601

/-!
# A047602: Numbers that are congruent to {0, 1, 2, 3, 4, 5} mod 8.

The programs for A047602, the canonical program `A047602.P323530499361867202` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047602 has offset 1).

The definition of A047602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047602.P9192645961150326352

`floor(8/7*floor(7*n/6))`
-/

namespace A047602.P9192645961150326352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) / 7 * (⌊(7 * n : ℚ) / 6⌋ : ℚ)⌋

end

end A047602.P9192645961150326352

namespace A047602

/-- `floor(8/7*floor(7*n/6))` -/
def P9192645961150326352.Spec : Prop :=
  ∀ n, P9192645961150326352.a n = A047602 (n + 1)

end A047602

/-! ## A047602.P323530499361867202

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047602

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P323530499361867202.Spec : Prop :=
  ∀ n, P323530499361867202.a n = A047602 (n + 1)

theorem P323530499361867202.correct : P323530499361867202.Spec := by
  intro n
  simp only [A047602, Nat.add_sub_cancel]

end A047602

/-! ## A047602.P6891187883577514117

`comp[or(6, n)]`
-/

namespace A047602.P6891187883577514117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047602.P6891187883577514117

namespace A047602

/-- `comp[or(6, n)]` -/
def P6891187883577514117.Spec : Prop :=
  ∀ n, (P6891187883577514117.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P18404299272679452631

`lt[n, or(6, n)]`
-/

namespace A047602.P18404299272679452631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047602.P18404299272679452631

namespace A047602

/-- `lt[n, or(6, n)]` -/
def P18404299272679452631.Spec : Prop :=
  ∀ n, (P18404299272679452631.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P17732461657298853964

`comp[record[xor(6, n)]]`
-/

namespace A047602.P17732461657298853964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047602.P17732461657298853964

namespace A047602

/-- `comp[record[xor(6, n)]]` -/
def P17732461657298853964.Spec : Prop :=
  ∀ n, (P17732461657298853964.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P9869793135686522695

`record[n%or(6, n)]`
-/

namespace A047602.P9869793135686522695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047602.P9869793135686522695

namespace A047602

/-- `record[n%or(6, n)]` -/
def P9869793135686522695.Spec : Prop :=
  ∀ n, (P9869793135686522695.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P15679459484334099733

`lt[n, xor(6, n)+3]`
-/

namespace A047602.P15679459484334099733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047602.P15679459484334099733

namespace A047602

/-- `lt[n, xor(6, n)+3]` -/
def P15679459484334099733.Spec : Prop :=
  ∀ n, (P15679459484334099733.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P17584314369050788685

`lt[n-3, xor(6, n)]`
-/

namespace A047602.P17584314369050788685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A047602.P17584314369050788685

namespace A047602

/-- `lt[n-3, xor(6, n)]` -/
def P17584314369050788685.Spec : Prop :=
  ∀ n, (P17584314369050788685.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P14595557779057653424

`comp[and(n, -7)]-2`
-/

namespace A047602.P14595557779057653424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A047602.P14595557779057653424

namespace A047602

/-- `comp[and(n, -7)]-2` -/
def P14595557779057653424.Spec : Prop :=
  ∀ n, P14595557779057653424.a n = A047602 (n + 1)

end A047602

/-! ## A047602.P12046842535036469626

`record[n-and(4, n)/2]`
-/

namespace A047602.P12046842535036469626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.land 4 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047602.P12046842535036469626

namespace A047602

/-- `record[n-and(4, n)/2]` -/
def P12046842535036469626.Spec : Prop :=
  ∀ n, P12046842535036469626.a n = (A047602 (n + 1) : ℚ)

end A047602

/-! ## A047602.P6323870477950690789

`comp[n-and(6, n+2)]`
-/

namespace A047602.P6323870477950690789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 6 (n + 2) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047602.P6323870477950690789

namespace A047602

/-- `comp[n-and(6, n+2)]` -/
def P6323870477950690789.Spec : Prop :=
  ∀ n, (P6323870477950690789.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P9123684010856170434

`lt[and(n, -(n+3)), 3]`
-/

namespace A047602.P9123684010856170434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 3 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A047602.P9123684010856170434

namespace A047602

/-- `lt[and(n, -(n+3)), 3]` -/
def P9123684010856170434.Spec : Prop :=
  ∀ n, (P9123684010856170434.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P17609397225183358556

`record[and(n, or(2, n+2))]`
-/

namespace A047602.P17609397225183358556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.lor 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047602.P17609397225183358556

namespace A047602

/-- `record[and(n, or(2, n+2))]` -/
def P17609397225183358556.Spec : Prop :=
  ∀ n, (P17609397225183358556.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P1059522341429160181

`record[and(n, xor(2, n+2))]`
-/

namespace A047602.P1059522341429160181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.xor 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047602.P1059522341429160181

namespace A047602

/-- `record[and(n, xor(2, n+2))]` -/
def P1059522341429160181.Spec : Prop :=
  ∀ n, (P1059522341429160181.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P1415202052908186297

`comp[a(n-2)+8]` with `a(0)=6, a(1)=7`
-/

namespace A047602.P1415202052908186297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 7] fun n f1 =>
  f1 (n - 2) + 8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047602.P1415202052908186297

namespace A047602

/-- `comp[a(n-2)+8]` -/
def P1415202052908186297.Spec : Prop :=
  ∀ n, (P1415202052908186297.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P2689069200707563842

`lt[n, and(n, n+2)+3]`
-/

namespace A047602.P2689069200707563842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047602.P2689069200707563842

namespace A047602

/-- `lt[n, and(n, n+2)+3]` -/
def P2689069200707563842.Spec : Prop :=
  ∀ n, (P2689069200707563842.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P14150221804895297326

`or(1, floor(n/3))+n-1`
-/

namespace A047602.P14150221804895297326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 3⌋ + ((n : ℤ) - 1)

end

end A047602.P14150221804895297326

namespace A047602

/-- `or(1, floor(n/3))+n-1` -/
def P14150221804895297326.Spec : Prop :=
  ∀ n, P14150221804895297326.a n = A047602 (n + 1)

end A047602

/-! ## A047602.P16683497677084627558

`eq[4, (4-xor(n, n+2))²]`
-/

namespace A047602.P16683497677084627558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (Nat.xor n (n + 2) : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047602.P16683497677084627558

namespace A047602

/-- `eq[4, (4-xor(n, n+2))²]` -/
def P16683497677084627558.Spec : Prop :=
  ∀ n, (P16683497677084627558.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P14163139550022301521

`lt[val((n+1)*(n+2), 2), 3]`
-/

namespace A047602.P14163139550022301521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * (n + 2)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047602.P14163139550022301521

namespace A047602

/-- `lt[val((n+1)*(n+2), 2), 3]` -/
def P14163139550022301521.Spec : Prop :=
  ∀ n, (P14163139550022301521.a n : ℤ) = A047602 (n + 1)

end A047602

/-! ## A047602.P750321409439780988

`lt[n+1, (n+2)%8+n]`
-/

namespace A047602.P750321409439780988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 8 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047602.P750321409439780988

namespace A047602

/-- `lt[n+1, (n+2)%8+n]` -/
def P750321409439780988.Spec : Prop :=
  ∀ n, (P750321409439780988.a n : ℤ) = A047602 (n + 1)

end A047602

/-!
# A047603: Numbers that are congruent to {1, 2, 3, 4, 5} mod 8.

The programs for A047603, the canonical program `A047603.P13988479243497432400` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047603 has offset 1).

The definition of A047603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047603.P13988479243497432400

`n+1+3*floor(n/5)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047603

/-- `n+1+3*floor(n/5)` -/
def P13988479243497432400.Spec : Prop :=
  ∀ n, P13988479243497432400.a n = A047603 (n + 1)

theorem P13988479243497432400.correct : P13988479243497432400.Spec := by
  intro n
  simp only [A047603, Nat.add_sub_cancel]

end A047603

/-! ## A047603.P16374294813612350239

`lt[xor(7, n+2), n+4]`
-/

namespace A047603.P16374294813612350239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047603.P16374294813612350239

namespace A047603

/-- `lt[xor(7, n+2), n+4]` -/
def P16374294813612350239.Spec : Prop :=
  ∀ n, (P16374294813612350239.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P18337734948111790918

`lt[n-3, xor(7, n-1)]`
-/

namespace A047603.P18337734948111790918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047603.P18337734948111790918

namespace A047603

/-- `lt[n-3, xor(7, n-1)]` -/
def P18337734948111790918.Spec : Prop :=
  ∀ n, (P18337734948111790918.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P4532704058892978460

`lt[and(n+2, n+7), n]`
-/

namespace A047603.P4532704058892978460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 2) (n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047603.P4532704058892978460

namespace A047603

/-- `lt[and(n+2, n+7), n]` -/
def P4532704058892978460.Spec : Prop :=
  ∀ n, (P4532704058892978460.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P14918276387915100982

`∑[gcd((1-n)%5, n%5)]`
-/

namespace A047603.P14918276387915100982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (1 - (n : ℤ)) 5) ((n % 5 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047603.P14918276387915100982

namespace A047603

/-- `∑[gcd((1-n)%5, n%5)]` -/
def P14918276387915100982.Spec : Prop :=
  ∀ n, (P14918276387915100982.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P9848085725117041725

`lt[1, or(7, n-1)/(n+1)]`
-/

namespace A047603.P9848085725117041725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 7 ((n : ℤ) - 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A047603.P9848085725117041725

namespace A047603

/-- `lt[1, or(7, n-1)/(n+1)]` -/
def P9848085725117041725.Spec : Prop :=
  ∀ n, (P9848085725117041725.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P14127031280557941080

`lt[n+2, (n+2)%8+n]`
-/

namespace A047603.P14127031280557941080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 8 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047603.P14127031280557941080

namespace A047603

/-- `lt[n+2, (n+2)%8+n]` -/
def P14127031280557941080.Spec : Prop :=
  ∀ n, (P14127031280557941080.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P18192663298092001802

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047603.P18192663298092001802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 4] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047603.P18192663298092001802

namespace A047603

/-- `∑[floor(a(n-5))]` -/
def P18192663298092001802.Spec : Prop :=
  ∀ n, (P18192663298092001802.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P11282136947150505841

`∑[a(n-5)%5]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=4`
-/

namespace A047603.P11282136947150505841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 4] fun n f1 =>
  f1 (n - 5) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047603.P11282136947150505841

namespace A047603

/-- `∑[a(n-5)%5]` -/
def P11282136947150505841.Spec : Prop :=
  ∀ n, (P11282136947150505841.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P5843023099901972452

`lt[2*n+1-or(7, n-1), n]`
-/

namespace A047603.P5843023099901972452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.lor 7 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A047603.P5843023099901972452

namespace A047603

/-- `lt[2*n+1-or(7, n-1), n]` -/
def P5843023099901972452.Spec : Prop :=
  ∀ n, (P5843023099901972452.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P15651561558736274606

`eq[n+1, (n+1)%or(7, n-1)]`
-/

namespace A047603.P15651561558736274606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (Int.lor 7 ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047603.P15651561558736274606

namespace A047603

/-- `eq[n+1, (n+1)%or(7, n-1)]` -/
def P15651561558736274606.Spec : Prop :=
  ∀ n, (P15651561558736274606.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P12083992448166061543

`lt[(or(n+2, n-1)-(n+3))², 2]`
-/

namespace A047603.P12083992448166061543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor (n + 2 : ℤ) ((n : ℤ) - 1) - (n + 3 : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A047603.P12083992448166061543

namespace A047603

/-- `lt[(or(n+2, n-1)-(n+3))², 2]` -/
def P12083992448166061543.Spec : Prop :=
  ∀ n, (P12083992448166061543.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P1248743900283030384

`∑[a(n-5)^a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=4`
-/

namespace A047603.P1248743900283030384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 4] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047603.P1248743900283030384

namespace A047603

/-- `∑[a(n-5)^a(n-1)]` -/
def P1248743900283030384.Spec : Prop :=
  ∀ n, (P1248743900283030384.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P610016312423029201

`eq[0, and(n-1-and(n+2, n-1), n-2)]`
-/

namespace A047603.P610016312423029201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1 - Int.land (n + 2 : ℤ) ((n : ℤ) - 1)) ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047603.P610016312423029201

namespace A047603

/-- `eq[0, and(n-1-and(n+2, n-1), n-2)]` -/
def P610016312423029201.Spec : Prop :=
  ∀ n, (P610016312423029201.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P12714973885559208607

`eq[0, and(n-1, and(n-2, n-3-2*n))]`
-/

namespace A047603.P12714973885559208607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (Int.land ((n : ℤ) - 2) ((n : ℤ) - 3 - (2 * n : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047603.P12714973885559208607

namespace A047603

/-- `eq[0, and(n-1, and(n-2, n-3-2*n))]` -/
def P12714973885559208607.Spec : Prop :=
  ∀ n, (P12714973885559208607.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P11122194796428994314

`∑[A280569(n)²]`
-/

namespace A047603.P11122194796428994314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280569 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047603.P11122194796428994314

namespace A047603

/-- `∑[A280569(n)²]` -/
def P11122194796428994314.Spec : Prop :=
  ∀ n, P11122194796428994314.a n = A047603 (n + 1)

end A047603

/-! ## A047603.P5260156225438223020

`comp[A047590(n+1)]`
-/

namespace A047603.P5260156225438223020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047603.P5260156225438223020

namespace A047603

/-- `comp[A047590(n+1)]` -/
def P5260156225438223020.Spec : Prop :=
  ∀ n, (P5260156225438223020.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P6088182186979958698

`xor(A047597(n+1), A079998(n))`
-/

namespace A047603.P6088182186979958698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047597 (n + 1)) (A079998 n)

end

end A047603.P6088182186979958698

namespace A047603

/-- `xor(A047597(n+1), A079998(n))` -/
def P6088182186979958698.Spec : Prop :=
  ∀ n, P6088182186979958698.a n = A047603 (n + 1)

end A047603

/-! ## A047603.P11163735931817684019

`∪[A016813(n), A047454(n+1)]`
-/

namespace A047603.P11163735931817684019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047603.P11163735931817684019

namespace A047603

/-- `∪[A016813(n), A047454(n+1)]` -/
def P11163735931817684019.Spec : Prop :=
  ∀ n, (P11163735931817684019.a n : ℤ) = A047603 (n + 1)

end A047603

/-! ## A047603.P15293824596602723852

`∪[A016813(n), A047455(n+1)]`
-/

namespace A047603.P15293824596602723852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047603.P15293824596602723852

namespace A047603

/-- `∪[A016813(n), A047455(n+1)]` -/
def P15293824596602723852.Spec : Prop :=
  ∀ n, (P15293824596602723852.a n : ℤ) = A047603 (n + 1)

end A047603

/-!
# A047604: Numbers that are congruent to {2, 3, 5} mod 8.

The programs for A047604, the canonical program `A047604.P7044110259455886681` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047604 has offset 1).

The definition of A047604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047604.P7044110259455886681

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047604

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P7044110259455886681.Spec : Prop :=
  ∀ n, P7044110259455886681.a n = A047604 (n + 1)

theorem P7044110259455886681.correct : P7044110259455886681.Spec := by
  intro n
  simp only [A047604, Nat.add_sub_cancel]

end A047604

/-! ## A047604.P15530793461382635404

`8*(n+1)/3-2-cos(2*(n+1)*π/3)+5*sin(2*(n+1)*π/3)/(3*sqrt(3))`
-/

namespace A047604.P15530793461382635404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 * (n + 1) : ℚ) / 3 - 2 : ℝ) - Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + 5 * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3) / (3 * Real.sqrt (3 : ℝ))

end

end A047604.P15530793461382635404

namespace A047604

/-- `8*(n+1)/3-2-cos(2*(n+1)*π/3)+5*sin(2*(n+1)*π/3)/(3*sqrt(3))` -/
def P15530793461382635404.Spec : Prop :=
  ∀ n, P15530793461382635404.a n = (A047604 (n + 1) : ℝ)

end A047604

/-! ## A047604.P2506437192398828287

`a(n-3)+8` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A047604.P2506437192398828287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  a (n - 3) + 8

end

end A047604.P2506437192398828287

namespace A047604

/-- `a(n-3)+8` -/
def P2506437192398828287.Spec : Prop :=
  ∀ n, (P2506437192398828287.a n : ℤ) = A047604 (n + 1)

end A047604

/-! ## A047604.P16957528737256785104

`∑[((1-n)%3)²+1]`
-/

namespace A047604.P16957528737256785104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 3 ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047604.P16957528737256785104

namespace A047604

/-- `∑[((1-n)%3)²+1]` -/
def P16957528737256785104.Spec : Prop :=
  ∀ n, P16957528737256785104.a n = A047604 (n + 1)

end A047604

/-! ## A047604.P9570999779945128701

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A047604.P9570999779945128701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047604.P9570999779945128701

namespace A047604

/-- `∑[floor(a(n-3))]` -/
def P9570999779945128701.Spec : Prop :=
  ∀ n, (P9570999779945128701.a n : ℤ) = A047604 (n + 1)

end A047604

/-! ## A047604.P17416278350746702319

`xor(2, 5*round(n/3)+n)`
-/

namespace A047604.P17416278350746702319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (5 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (n : ℤ))

end

end A047604.P17416278350746702319

namespace A047604

/-- `xor(2, 5*round(n/3)+n)` -/
def P17416278350746702319.Spec : Prop :=
  ∀ n, P17416278350746702319.a n = A047604 (n + 1)

end A047604

/-! ## A047604.P11649415411527003576

`∑[abs(dr(3*n)-4)]-2`
-/

namespace A047604.P11649415411527003576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.digitalRoot (3 * n : ℤ) : ℤ) - 4|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A047604.P11649415411527003576

namespace A047604

/-- `∑[abs(dr(3*n)-4)]-2` -/
def P11649415411527003576.Spec : Prop :=
  ∀ n, P11649415411527003576.a n = A047604 (n + 1)

end A047604

/-! ## A047604.P3199253174572274881

`record[and(n+1, xor(7, n))]+1`
-/

namespace A047604.P3199253174572274881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (Nat.xor 7 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A047604.P3199253174572274881

namespace A047604

/-- `record[and(n+1, xor(7, n))]+1` -/
def P3199253174572274881.Spec : Prop :=
  ∀ n, (P3199253174572274881.a n : ℤ) = A047604 (n + 1)

end A047604

/-! ## A047604.P8801348262001284391

`record[xor(n, gcd(8, n)%5)]-1`
-/

namespace A047604.P8801348262001284391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.gcd 8 n % 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1

end

end A047604.P8801348262001284391

namespace A047604

/-- `record[xor(n, gcd(8, n)%5)]-1` -/
def P8801348262001284391.Spec : Prop :=
  ∀ n, P8801348262001284391.a n = A047604 (n + 1)

end A047604

/-! ## A047604.P1300114281893740416

`∑[a(n-3)%6]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A047604.P1300114281893740416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 5] fun n f1 =>
  f1 (n - 3) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047604.P1300114281893740416

namespace A047604

/-- `∑[a(n-3)%6]` -/
def P1300114281893740416.Spec : Prop :=
  ∀ n, (P1300114281893740416.a n : ℤ) = A047604 (n + 1)

end A047604

/-! ## A047604.P3868386379878631815

`∑[gcd(10, a(n-3))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A047604.P3868386379878631815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 5] fun n f1 =>
  Nat.gcd 10 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047604.P3868386379878631815

namespace A047604

/-- `∑[gcd(10, a(n-3))]` -/
def P3868386379878631815.Spec : Prop :=
  ∀ n, (P3868386379878631815.a n : ℤ) = A047604 (n + 1)

end A047604

/-! ## A047604.P15494537529751238612

`lt[xor(4, or(n, n-1)+1), n]`
-/

namespace A047604.P15494537529751238612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (Int.lor (n : ℤ) ((n : ℤ) - 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A047604.P15494537529751238612

namespace A047604

/-- `lt[xor(4, or(n, n-1)+1), n]` -/
def P15494537529751238612.Spec : Prop :=
  ∀ n, (P15494537529751238612.a n : ℤ) = A047604 (n + 1)

end A047604

/-! ## A047604.P9428554855354018965

`ogf((2+x+2x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A047604.P9428554855354018965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 2, 3] [1, -1, 0, -1, 1] n

end

end A047604.P9428554855354018965

namespace A047604

/-- `ogf((2+x+2x^2+3x^3)/(1-x-x^3+x^4))` -/
def P9428554855354018965.Spec : Prop :=
  ∀ n, P9428554855354018965.a n = A047604 (n + 1)

end A047604

/-! ## A047604.P13281822290753713465

`record[4*(n-1)-a(n-2)]` with `a(0)=2, a(1)=3`
-/

namespace A047604.P13281822290753713465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  4 * ((n : ℤ) - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047604.P13281822290753713465

namespace A047604

/-- `record[4*(n-1)-a(n-2)]` -/
def P13281822290753713465.Spec : Prop :=
  ∀ n, P13281822290753713465.a n = A047604 (n + 1)

end A047604

/-! ## A047604.P6952869518235207776

`lt[or(n+1, n+2), or(6, n)]+2`
-/

namespace A047604.P6952869518235207776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A047604.P6952869518235207776

namespace A047604

/-- `lt[or(n+1, n+2), or(6, n)]+2` -/
def P6952869518235207776.Spec : Prop :=
  ∀ n, (P6952869518235207776.a n : ℤ) = A047604 (n + 1)

end A047604

/-! ## A047604.P882443459105404906

`∑[8-a(n-1)-a(n-2)]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A047604.P882443459105404906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  8 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047604.P882443459105404906

namespace A047604

/-- `∑[8-a(n-1)-a(n-2)]` -/
def P882443459105404906.Spec : Prop :=
  ∀ n, P882443459105404906.a n = A047604 (n + 1)

end A047604

/-! ## A047604.P9235408649200246168

`eq[n-2, and(n+2, n-and(2, n+1))]`
-/

namespace A047604.P9235408649200246168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) ((n : ℤ) - (Nat.land 2 (n + 1) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047604.P9235408649200246168

namespace A047604

/-- `eq[n-2, and(n+2, n-and(2, n+1))]` -/
def P9235408649200246168.Spec : Prop :=
  ∀ n, (P9235408649200246168.a n : ℤ) = A047604 (n + 1)

end A047604

/-! ## A047604.P16778617886472225349

`xor(1, floor((2*n+1)/3))+2*n+1`
-/

namespace A047604.P16778617886472225349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(2 * n + 1 : ℚ) / 3⌋ + (2 * n + 1 : ℤ)

end

end A047604.P16778617886472225349

namespace A047604

/-- `xor(1, floor((2*n+1)/3))+2*n+1` -/
def P16778617886472225349.Spec : Prop :=
  ∀ n, P16778617886472225349.a n = A047604 (n + 1)

end A047604

/-! ## A047604.P2020181152012009422

`A047465(n+1)+1`
-/

namespace A047604.P2020181152012009422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047465 (n + 1) + 1

end

end A047604.P2020181152012009422

namespace A047604

/-- `A047465(n+1)+1` -/
def P2020181152012009422.Spec : Prop :=
  ∀ n, P2020181152012009422.a n = A047604 (n + 1)

end A047604

/-! ## A047604.P7707282184711187711

`A047413(n+1)-1`
-/

namespace A047604.P7707282184711187711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047413 (n + 1) - 1

end

end A047604.P7707282184711187711

namespace A047604

/-- `A047413(n+1)-1` -/
def P7707282184711187711.Spec : Prop :=
  ∀ n, P7707282184711187711.a n = A047604 (n + 1)

end A047604

/-!
# A047605: Numbers that are congruent to {0, 2, 3, 5} mod 8.

The programs for A047605, the canonical program `A047605.P2592929428086182283` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047605 has offset 1).

The definition of A047605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047605.P2592929428086182283

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047605

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P2592929428086182283.Spec : Prop :=
  ∀ n, P2592929428086182283.a n = A047605 (n + 1)

theorem P2592929428086182283.correct : P2592929428086182283.Spec := by
  intro n
  simp only [A047605, Nat.add_sub_cancel]

end A047605

/-! ## A047605.P7677157073750833321

`floor(xor(4, 10*n)/5)`
-/

namespace A047605.P7677157073750833321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 4 (10 * n) : ℚ) / 5⌋

end

end A047605.P7677157073750833321

namespace A047605

/-- `floor(xor(4, 10*n)/5)` -/
def P7677157073750833321.Spec : Prop :=
  ∀ n, P7677157073750833321.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P3719919152242850798

`2*n-char[or(2, n)]`
-/

namespace A047605.P3719919152242850798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A047605.P3719919152242850798

namespace A047605

/-- `2*n-char[or(2, n)]` -/
def P3719919152242850798.Spec : Prop :=
  ∀ n, P3719919152242850798.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P7324931631736296142

`record[n-and(10, 10*n)]`
-/

namespace A047605.P7324931631736296142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 10 (10 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047605.P7324931631736296142

namespace A047605

/-- `record[n-and(10, 10*n)]` -/
def P7324931631736296142.Spec : Prop :=
  ∀ n, P7324931631736296142.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P16292575272011043654

`n-char[or(2, n)]+n`
-/

namespace A047605.P16292575272011043654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A047605.P16292575272011043654

namespace A047605

/-- `n-char[or(2, n)]+n` -/
def P16292575272011043654.Spec : Prop :=
  ∀ n, P16292575272011043654.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P3589839919288985480

`n-(char[or(2, n)]-n)`
-/

namespace A047605.P3589839919288985480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A047605.P3589839919288985480

namespace A047605

/-- `n-(char[or(2, n)]-n)` -/
def P3589839919288985480.Spec : Prop :=
  ∀ n, P3589839919288985480.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P1906677972116065338

`Δ[n²]-and(2, n)!`
-/

namespace A047605.P1906677972116065338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.factorial (Nat.land 2 n) : ℤ)

end

end A047605.P1906677972116065338

namespace A047605

/-- `Δ[n²]-and(2, n)!` -/
def P1906677972116065338.Spec : Prop :=
  ∀ n, P1906677972116065338.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P2581646058026684297

`2*n-and(2, n)/2`
-/

namespace A047605.P2581646058026684297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (Nat.land 2 n : ℚ) / 2

end

end A047605.P2581646058026684297

namespace A047605

/-- `2*n-and(2, n)/2` -/
def P2581646058026684297.Spec : Prop :=
  ∀ n, P2581646058026684297.a n = (A047605 (n + 1) : ℚ)

end A047605

/-! ## A047605.P10953942998455316068

`2*n-C(n, 2)%2`
-/

namespace A047605.P10953942998455316068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((Nat.choose n 2 % 2 : ℕ) : ℤ)

end

end A047605.P10953942998455316068

namespace A047605

/-- `2*n-C(n, 2)%2` -/
def P10953942998455316068.Spec : Prop :=
  ∀ n, P10953942998455316068.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P11831024987067730724

`2*n-and(1, C(n, 2))`
-/

namespace A047605.P11831024987067730724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 1 (Nat.choose n 2) : ℤ)

end

end A047605.P11831024987067730724

namespace A047605

/-- `2*n-and(1, C(n, 2))` -/
def P11831024987067730724.Spec : Prop :=
  ∀ n, P11831024987067730724.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P9444360730038433874

`n-and(2, n)/2+n`
-/

namespace A047605.P9444360730038433874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.land 2 n : ℚ) / 2 + (n : ℚ)

end

end A047605.P9444360730038433874

namespace A047605

/-- `n-and(2, n)/2+n` -/
def P9444360730038433874.Spec : Prop :=
  ∀ n, P9444360730038433874.a n = (A047605 (n + 1) : ℚ)

end A047605

/-! ## A047605.P1925012450981929874

`n-(and(2, n)/2-n)`
-/

namespace A047605.P1925012450981929874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ((Nat.land 2 n : ℚ) / 2 - (n : ℚ))

end

end A047605.P1925012450981929874

namespace A047605

/-- `n-(and(2, n)/2-n)` -/
def P1925012450981929874.Spec : Prop :=
  ∀ n, P1925012450981929874.a n = (A047605 (n + 1) : ℚ)

end A047605

/-! ## A047605.P16802810008854479711

`n-and(1, C(n, 2))+n`
-/

namespace A047605.P16802810008854479711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 1 (Nat.choose n 2) : ℤ) + (n : ℤ)

end

end A047605.P16802810008854479711

namespace A047605

/-- `n-and(1, C(n, 2))+n` -/
def P16802810008854479711.Spec : Prop :=
  ∀ n, P16802810008854479711.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P8003733463140193241

`n-(and(1, C(n, 2))-n)`
-/

namespace A047605.P8003733463140193241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.land 1 (Nat.choose n 2) : ℤ) - (n : ℤ))

end

end A047605.P8003733463140193241

namespace A047605

/-- `n-(and(1, C(n, 2))-n)` -/
def P8003733463140193241.Spec : Prop :=
  ∀ n, P8003733463140193241.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P15383141911764204168

`2*n-C(n, or(2, n))`
-/

namespace A047605.P15383141911764204168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.choose n (Nat.lor 2 n) : ℤ)

end

end A047605.P15383141911764204168

namespace A047605

/-- `2*n-C(n, or(2, n))` -/
def P15383141911764204168.Spec : Prop :=
  ∀ n, P15383141911764204168.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P15693402858494852635

`2*n-floor(atan(n%4))`
-/

namespace A047605.P15693402858494852635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊Real.arctan ((n % 4 : ℕ) : ℝ)⌋

end

end A047605.P15693402858494852635

namespace A047605

/-- `2*n-floor(atan(n%4))` -/
def P15693402858494852635.Spec : Prop :=
  ∀ n, P15693402858494852635.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P9583483744524097549

`a(n-4)+8` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A047605.P9583483744524097549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 5] fun n a =>
  a (n - 4) + 8

end

end A047605.P9583483744524097549

namespace A047605

/-- `a(n-4)+8` -/
def P9583483744524097549.Spec : Prop :=
  ∀ n, (P9583483744524097549.a n : ℤ) = A047605 (n + 1)

end A047605

/-! ## A047605.P1593738967218195194

`∑[4-a(n-2)]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A047605.P1593738967218195194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  4 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047605.P1593738967218195194

namespace A047605

/-- `∑[4-a(n-2)]` -/
def P1593738967218195194.Spec : Prop :=
  ∀ n, P1593738967218195194.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P1026221734731633186

`2*n+1-and(2, n)!`
-/

namespace A047605.P1026221734731633186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - (Nat.factorial (Nat.land 2 n) : ℤ))

end

end A047605.P1026221734731633186

namespace A047605

/-- `2*n+1-and(2, n)!` -/
def P1026221734731633186.Spec : Prop :=
  ∀ n, P1026221734731633186.a n = A047605 (n + 1)

end A047605

/-! ## A047605.P1951008632029721112

`1-(and(2, n)!-2*n)`
-/

namespace A047605.P1951008632029721112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.factorial (Nat.land 2 n) : ℤ) - (2 * n : ℤ))

end

end A047605.P1951008632029721112

namespace A047605

/-- `1-(and(2, n)!-2*n)` -/
def P1951008632029721112.Spec : Prop :=
  ∀ n, P1951008632029721112.a n = A047605 (n + 1)

end A047605

/-!
# A047606: Numbers that are congruent to {1, 2, 3, 5} mod 8.

The programs for A047606, the canonical program `A047606.P15043897567730660132` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047606 has offset 1).

The definition of A047606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047606.P15043897567730660132

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047606

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P15043897567730660132.Spec : Prop :=
  ∀ n, P15043897567730660132.a n = A047606 (n + 1)

theorem P15043897567730660132.correct : P15043897567730660132.Spec := by
  intro n
  simp only [A047606, Nat.add_sub_cancel]

end A047606

/-! ## A047606.P6206946441312083503

`comp[or(n, xor(3, n+3))]`
-/

namespace A047606.P6206946441312083503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.xor 3 (n + 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047606.P6206946441312083503

namespace A047606

/-- `comp[or(n, xor(3, n+3))]` -/
def P6206946441312083503.Spec : Prop :=
  ∀ n, (P6206946441312083503.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P9183870509849413994

`lt[n, or(n, 2*n%4)]`
-/

namespace A047606.P9183870509849413994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * (n % 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047606.P9183870509849413994

namespace A047606

/-- `lt[n, or(n, 2*n%4)]` -/
def P9183870509849413994.Spec : Prop :=
  ∀ n, (P9183870509849413994.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P4392555331745527465

`a(n-4)+8` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A047606.P4392555331745527465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  a (n - 4) + 8

end

end A047606.P4392555331745527465

namespace A047606

/-- `a(n-4)+8` -/
def P4392555331745527465.Spec : Prop :=
  ∀ n, (P4392555331745527465.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P3525149891234932150

`record[and(n, xor(3, n+3))]+1`
-/

namespace A047606.P3525149891234932150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.xor 3 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A047606.P3525149891234932150

namespace A047606

/-- `record[and(n, xor(3, n+3))]+1` -/
def P3525149891234932150.Spec : Prop :=
  ∀ n, (P3525149891234932150.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P12919710256232745148

`record[(n+1)%xor(3, or(4, n))]`
-/

namespace A047606.P12919710256232745148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.xor 3 (Nat.lor 4 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047606.P12919710256232745148

namespace A047606

/-- `record[(n+1)%xor(3, or(4, n))]` -/
def P12919710256232745148.Spec : Prop :=
  ∀ n, (P12919710256232745148.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P7188671314609835978

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047606.P7188671314609835978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047606.P7188671314609835978

namespace A047606

/-- `∑[floor(a(n-4))]` -/
def P7188671314609835978.Spec : Prop :=
  ∀ n, (P7188671314609835978.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P14135001403608324966

`∑[C(abs((1-n)%4), 2)+1]`
-/

namespace A047606.P14135001403608324966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |Int.tmod (1 - (n : ℤ)) 4|.toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047606.P14135001403608324966

namespace A047606

/-- `∑[C(abs((1-n)%4), 2)+1]` -/
def P14135001403608324966.Spec : Prop :=
  ∀ n, (P14135001403608324966.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P6980537931401130633

`record[n-and(5, a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A047606.P6980537931401130633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - Int.land 5 (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047606.P6980537931401130633

namespace A047606

/-- `record[n-and(5, a(n-2))]` -/
def P6980537931401130633.Spec : Prop :=
  ∀ n, P6980537931401130633.a n = A047606 (n + 1)

end A047606

/-! ## A047606.P15735543532866747280

`lt[or(n, n+1), or(6, n)]+1`
-/

namespace A047606.P15735543532866747280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A047606.P15735543532866747280

namespace A047606

/-- `lt[or(n, n+1), or(6, n)]+1` -/
def P15735543532866747280.Spec : Prop :=
  ∀ n, (P15735543532866747280.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P7745604041398929964

`∑[gcd(2, ∑[n])^a(n-1)]` with `a(0)=1`
-/

namespace A047606.P7745604041398929964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047606.P7745604041398929964

namespace A047606

/-- `∑[gcd(2, ∑[n])^a(n-1)]` -/
def P7745604041398929964.Spec : Prop :=
  ∀ n, (P7745604041398929964.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P15466256729659627941

`∑[gcd(4, a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A047606.P15466256729659627941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n f1 =>
  Nat.gcd 4 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047606.P15466256729659627941

namespace A047606

/-- `∑[gcd(4, a(n-4))]` -/
def P15466256729659627941.Spec : Prop :=
  ∀ n, (P15466256729659627941.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P16454449912672053849

`∑[a(n-4)%5]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A047606.P16454449912672053849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047606.P16454449912672053849

namespace A047606

/-- `∑[a(n-4)%5]` -/
def P16454449912672053849.Spec : Prop :=
  ∀ n, (P16454449912672053849.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P13042726006031310275

`∑[round(2^(abs((n-1)%4)-1))]`
-/

namespace A047606.P13042726006031310275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (|Int.tmod ((n : ℤ) - 1) 4| - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047606.P13042726006031310275

namespace A047606

/-- `∑[round(2^(abs((n-1)%4)-1))]` -/
def P13042726006031310275.Spec : Prop :=
  ∀ n, P13042726006031310275.a n = A047606 (n + 1)

end A047606

/-! ## A047606.P5362128624137248328

`floor(2*n+1-and(3, n)/ϕ)`
-/

namespace A047606.P5362128624137248328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) - (Nat.land 3 n : ℝ) / Real.goldenRatio⌋

end

end A047606.P5362128624137248328

namespace A047606

/-- `floor(2*n+1-and(3, n)/ϕ)` -/
def P5362128624137248328.Spec : Prop :=
  ∀ n, P5362128624137248328.a n = A047606 (n + 1)

end A047606

/-! ## A047606.P6825699381545379222

`2*n+1-ceil(and(3, n)/ϕ)`
-/

namespace A047606.P6825699381545379222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌈(Nat.land 3 n : ℝ) / Real.goldenRatio⌉

end

end A047606.P6825699381545379222

namespace A047606

/-- `2*n+1-ceil(and(3, n)/ϕ)` -/
def P6825699381545379222.Spec : Prop :=
  ∀ n, P6825699381545379222.a n = A047606 (n + 1)

end A047606

/-! ## A047606.P13674522174937796847

`2*n+1-and(n, and(2, n)!)`
-/

namespace A047606.P13674522174937796847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.land n (Nat.factorial (Nat.land 2 n)) : ℤ)

end

end A047606.P13674522174937796847

namespace A047606

/-- `2*n+1-and(n, and(2, n)!)` -/
def P13674522174937796847.Spec : Prop :=
  ∀ n, P13674522174937796847.a n = A047606 (n + 1)

end A047606

/-! ## A047606.P7547462194439385672

`lt[xor(n+2, (2*n+1)%8), n]`
-/

namespace A047606.P7547462194439385672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 2) ((2 * n + 1) % 8)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047606.P7547462194439385672

namespace A047606

/-- `lt[xor(n+2, (2*n+1)%8), n]` -/
def P7547462194439385672.Spec : Prop :=
  ∀ n, (P7547462194439385672.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P15422722632765527406

`∑[a(n-4)^a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A047606.P15422722632765527406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047606.P15422722632765527406

namespace A047606

/-- `∑[a(n-4)^a(n-2)]` -/
def P15422722632765527406.Spec : Prop :=
  ∀ n, (P15422722632765527406.a n : ℤ) = A047606 (n + 1)

end A047606

/-! ## A047606.P10698407951662137429

`eq[n-1, and(and(2, n)+n+1, n-1)]`
-/

namespace A047606.P10698407951662137429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.land 2 n + (n + 1) : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047606.P10698407951662137429

namespace A047606

/-- `eq[n-1, and(and(2, n)+n+1, n-1)]` -/
def P10698407951662137429.Spec : Prop :=
  ∀ n, (P10698407951662137429.a n : ℤ) = A047606 (n + 1)

end A047606

/-!
# A047607: Numbers that are congruent to {0, 1, 2, 3, 5} mod 8.

The programs for A047607, the canonical program `A047607.P16556856980829958644` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047607 has offset 1).

The definition of A047607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047607.P16556856980829958644

`record[n-C(and(5, n), 4)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047607

/-- `record[n-C(and(5, n), 4)]` -/
def P16556856980829958644.Spec : Prop :=
  ∀ n, P16556856980829958644.a n = A047607 (n + 1)

theorem P16556856980829958644.correct : P16556856980829958644.Spec := by
  intro n
  simp only [A047607, Nat.add_sub_cancel]

end A047607

/-! ## A047607.P10124348891354734795

`lt[or(2, n+1), or(6, n)]`
-/

namespace A047607.P10124348891354734795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047607.P10124348891354734795

namespace A047607

/-- `lt[or(2, n+1), or(6, n)]` -/
def P10124348891354734795.Spec : Prop :=
  ∀ n, (P10124348891354734795.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P2867001332497625225

`lt[n, xor(1, or(6, n)-1)]`
-/

namespace A047607.P2867001332497625225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((Nat.lor 6 n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047607.P2867001332497625225

namespace A047607

/-- `lt[n, xor(1, or(6, n)-1)]` -/
def P2867001332497625225.Spec : Prop :=
  ∀ n, (P2867001332497625225.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P13507047075716531392

`comp[or(4, ceil(4*n/3))]`
-/

namespace A047607.P13507047075716531392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 ⌈4 * ((n : ℚ) / 3)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047607.P13507047075716531392

namespace A047607

/-- `comp[or(4, ceil(4*n/3))]` -/
def P13507047075716531392.Spec : Prop :=
  ∀ n, (P13507047075716531392.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P7322738947477509916

`record[n%xor(1, or(6, n)-1)]`
-/

namespace A047607.P7322738947477509916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (Int.xor 1 ((Nat.lor 6 n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047607.P7322738947477509916

namespace A047607

/-- `record[n%xor(1, or(6, n)-1)]` -/
def P7322738947477509916.Spec : Prop :=
  ∀ n, P7322738947477509916.a n = A047607 (n + 1)

end A047607

/-! ## A047607.P14897748866262246355

`record[and(n, or(-5, (n+1)²))]`
-/

namespace A047607.P14897748866262246355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.lor (-5) ((n + 1) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047607.P14897748866262246355

namespace A047607

/-- `record[and(n, or(-5, (n+1)²))]` -/
def P14897748866262246355.Spec : Prop :=
  ∀ n, P14897748866262246355.a n = A047607 (n + 1)

end A047607

/-! ## A047607.P8169307280867139354

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A047607.P8169307280867139354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 5] fun n a =>
  a (n - 5) + 8

end

end A047607.P8169307280867139354

namespace A047607

/-- `a(n-5)+8` -/
def P8169307280867139354.Spec : Prop :=
  ∀ n, (P8169307280867139354.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P14433538363639642196

`record[n-and(3, -a(n-1))]` with `a(0)=0`
-/

namespace A047607.P14433538363639642196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - Int.land 3 (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047607.P14433538363639642196

namespace A047607

/-- `record[n-and(3, -a(n-1))]` -/
def P14433538363639642196.Spec : Prop :=
  ∀ n, P14433538363639642196.a n = A047607 (n + 1)

end A047607

/-! ## A047607.P15862295945273824371

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047607.P15862295945273824371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047607.P15862295945273824371

namespace A047607

/-- `∑[floor(a(n-5))]` -/
def P15862295945273824371.Spec : Prop :=
  ∀ n, (P15862295945273824371.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P17465738528697907721

`∑[a(n-5)%4]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A047607.P17465738528697907721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 5) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047607.P17465738528697907721

namespace A047607

/-- `∑[a(n-5)%4]` -/
def P17465738528697907721.Spec : Prop :=
  ∀ n, (P17465738528697907721.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P5545973678946757640

`comp[record[and(n+1, or(6, n)-3)]+3]`
-/

namespace A047607.P5545973678946757640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.lor 6 n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047607.P5545973678946757640

namespace A047607

/-- `comp[record[and(n+1, or(6, n)-3)]+3]` -/
def P5545973678946757640.Spec : Prop :=
  ∀ n, (P5545973678946757640.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P1197852765003342155

`∑[a(n-5)^a(n-2)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A047607.P1197852765003342155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047607.P1197852765003342155

namespace A047607

/-- `∑[a(n-5)^a(n-2)]` -/
def P1197852765003342155.Spec : Prop :=
  ∀ n, (P1197852765003342155.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P14013361546421354854

`comp[A047506(n+1)]`
-/

namespace A047607.P14013361546421354854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047607.P14013361546421354854

namespace A047607

/-- `comp[A047506(n+1)]` -/
def P14013361546421354854.Spec : Prop :=
  ∀ n, (P14013361546421354854.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P9665993406241504794

`A047419(n+1)-1`
-/

namespace A047607.P9665993406241504794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 1

end

end A047607.P9665993406241504794

namespace A047607

/-- `A047419(n+1)-1` -/
def P9665993406241504794.Spec : Prop :=
  ∀ n, P9665993406241504794.a n = A047607 (n + 1)

end A047607

/-! ## A047607.P8750746351914364189

`A047502(n+1)-2`
-/

namespace A047607.P8750746351914364189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047502 (n + 1) - 2

end

end A047607.P8750746351914364189

namespace A047607

/-- `A047502(n+1)-2` -/
def P8750746351914364189.Spec : Prop :=
  ∀ n, P8750746351914364189.a n = A047607 (n + 1)

end A047607

/-! ## A047607.P14619693578131675191

`comp[A047443(n+1)+1]`
-/

namespace A047607.P14619693578131675191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047443 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047607.P14619693578131675191

namespace A047607

/-- `comp[A047443(n+1)+1]` -/
def P14619693578131675191.Spec : Prop :=
  ∀ n, (P14619693578131675191.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P2165210990393914308

`comp[A047477(n+1)-1]`
-/

namespace A047607.P2165210990393914308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047477 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047607.P2165210990393914308

namespace A047607

/-- `comp[A047477(n+1)-1]` -/
def P2165210990393914308.Spec : Prop :=
  ∀ n, (P2165210990393914308.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P2469022149345400948

`comp[A047611(n+1)+2]`
-/

namespace A047607.P2469022149345400948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047611 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047607.P2469022149345400948

namespace A047607

/-- `comp[A047611(n+1)+2]` -/
def P2469022149345400948.Spec : Prop :=
  ∀ n, (P2469022149345400948.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P14422706082412808664

`comp[A047394(n+1)-2]`
-/

namespace A047607.P14422706082412808664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047394 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047607.P14422706082412808664

namespace A047607

/-- `comp[A047394(n+1)-2]` -/
def P14422706082412808664.Spec : Prop :=
  ∀ n, (P14422706082412808664.a n : ℤ) = A047607 (n + 1)

end A047607

/-! ## A047607.P5996314139402607498

`comp[A047459(n+1)+3]`
-/

namespace A047607.P5996314139402607498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047459 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047607.P5996314139402607498

namespace A047607

/-- `comp[A047459(n+1)+3]` -/
def P5996314139402607498.Spec : Prop :=
  ∀ n, (P5996314139402607498.a n : ℤ) = A047607 (n + 1)

end A047607

/-!
# A047608: Numbers that are congruent to {4, 5} mod 8.

The programs for A047608, the canonical program `A047608.P7058773230742277359` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047608 has offset 1).

The definition of A047608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047608.P15016207030916909370

`4*(n+1)-3*n%2`
-/

namespace A047608.P15016207030916909370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - ((3 * (n % 2) : ℕ) : ℤ)

end

end A047608.P15016207030916909370

namespace A047608

/-- `4*(n+1)-3*n%2` -/
def P15016207030916909370.Spec : Prop :=
  ∀ n, P15016207030916909370.a n = A047608 (n + 1)

end A047608

/-! ## A047608.P7058773230742277359

`4*(n+1)-3*(1+(-1)^(n+1))/2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047608

/-- `4*(n+1)-3*(1+(-1)^(n+1))/2` -/
def P7058773230742277359.Spec : Prop :=
  ∀ n, P7058773230742277359.a n = (A047608 (n + 1) : ℚ)

end A047608

/-! ## A047608.P8003059280577848342

`record[or(6, n)-2]`
-/

namespace A047608.P8003059280577848342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047608.P8003059280577848342

namespace A047608

/-- `record[or(6, n)-2]` -/
def P8003059280577848342.Spec : Prop :=
  ∀ n, P8003059280577848342.a n = A047608 (n + 1)

end A047608

/-! ## A047608.P12389515259714104368

`record[xor(6, n)-2]`
-/

namespace A047608.P12389515259714104368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047608.P12389515259714104368

namespace A047608

/-- `record[xor(6, n)-2]` -/
def P12389515259714104368.Spec : Prop :=
  ∀ n, P12389515259714104368.a n = A047608 (n + 1)

end A047608

/-! ## A047608.P17643369633927580458

`record[xor(2, or(6, n))]`
-/

namespace A047608.P17643369633927580458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 6 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047608.P17643369633927580458

namespace A047608

/-- `record[xor(2, or(6, n))]` -/
def P17643369633927580458.Spec : Prop :=
  ∀ n, (P17643369633927580458.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P1243116505617423274

`xor(2, record[xor(6, n)])`
-/

namespace A047608.P1243116505617423274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A047608.P1243116505617423274

namespace A047608

/-- `xor(2, record[xor(6, n)])` -/
def P1243116505617423274.Spec : Prop :=
  ∀ n, (P1243116505617423274.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P16717914538858550732

`record[and(n, -7)+4]`
-/

namespace A047608.P16717914538858550732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-7) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047608.P16717914538858550732

namespace A047608

/-- `record[and(n, -7)+4]` -/
def P16717914538858550732.Spec : Prop :=
  ∀ n, P16717914538858550732.a n = A047608 (n + 1)

end A047608

/-! ## A047608.P5319563715662077509

`eq[4, and(n, 1-n)]`
-/

namespace A047608.P5319563715662077509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047608.P5319563715662077509

namespace A047608

/-- `eq[4, and(n, 1-n)]` -/
def P5319563715662077509.Spec : Prop :=
  ∀ n, (P5319563715662077509.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P14461347996561125331

`eq[n+2, or(6, n)]`
-/

namespace A047608.P14461347996561125331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047608.P14461347996561125331

namespace A047608

/-- `eq[n+2, or(6, n)]` -/
def P14461347996561125331.Spec : Prop :=
  ∀ n, (P14461347996561125331.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P10314789292788262579

`eq[n, or(6, n)-2]`
-/

namespace A047608.P10314789292788262579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047608.P10314789292788262579

namespace A047608

/-- `eq[n, or(6, n)-2]` -/
def P10314789292788262579.Spec : Prop :=
  ∀ n, (P10314789292788262579.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P11584224707954507637

`eq[n, xor(6, n)+2]`
-/

namespace A047608.P11584224707954507637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047608.P11584224707954507637

namespace A047608

/-- `eq[n, xor(6, n)+2]` -/
def P11584224707954507637.Spec : Prop :=
  ∀ n, (P11584224707954507637.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P13923570263102204736

`lt[xor(6, n+2), n]`
-/

namespace A047608.P13923570263102204736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047608.P13923570263102204736

namespace A047608

/-- `lt[xor(6, n+2), n]` -/
def P13923570263102204736.Spec : Prop :=
  ∀ n, (P13923570263102204736.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P11812551481073435881

`eq[6, xor(n, n-2)]`
-/

namespace A047608.P11812551481073435881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047608.P11812551481073435881

namespace A047608

/-- `eq[6, xor(n, n-2)]` -/
def P11812551481073435881.Spec : Prop :=
  ∀ n, (P11812551481073435881.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P14023935419535478706

`lt[n, or(6, n-4)]`
-/

namespace A047608.P14023935419535478706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047608.P14023935419535478706

namespace A047608

/-- `lt[n, or(6, n-4)]` -/
def P14023935419535478706.Spec : Prop :=
  ∀ n, (P14023935419535478706.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P14167922117372006084

`lt[n, xor(6, n-4)]`
-/

namespace A047608.P14167922117372006084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 ((n : ℤ) - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047608.P14167922117372006084

namespace A047608

/-- `lt[n, xor(6, n-4)]` -/
def P14167922117372006084.Spec : Prop :=
  ∀ n, (P14167922117372006084.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P2042568706044920388

`or(4, record[and(n, -7)])`
-/

namespace A047608.P2042568706044920388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A047608.P2042568706044920388

namespace A047608

/-- `or(4, record[and(n, -7)])` -/
def P2042568706044920388.Spec : Prop :=
  ∀ n, P2042568706044920388.a n = A047608 (n + 1)

end A047608

/-! ## A047608.P1177815419307951201

`or(4*n, gcd(4, n²))`
-/

namespace A047608.P1177815419307951201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 * n) (Nat.gcd 4 (n ^ 2))

end

end A047608.P1177815419307951201

namespace A047608

/-- `or(4*n, gcd(4, n²))` -/
def P1177815419307951201.Spec : Prop :=
  ∀ n, (P1177815419307951201.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P18106920521418421955

`comp[and(n+2, or(2, n))]`
-/

namespace A047608.P18106920521418421955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 2) (Nat.lor 2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047608.P18106920521418421955

namespace A047608

/-- `comp[and(n+2, or(2, n))]` -/
def P18106920521418421955.Spec : Prop :=
  ∀ n, (P18106920521418421955.a n : ℤ) = A047608 (n + 1)

end A047608

/-! ## A047608.P6987095659404520545

`∑[8-a(n-1)]` with `a(0)=4, a(1)=1`
-/

namespace A047608.P6987095659404520545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047608.P6987095659404520545

namespace A047608

/-- `∑[8-a(n-1)]` -/
def P6987095659404520545.Spec : Prop :=
  ∀ n, P6987095659404520545.a n = A047608 (n + 1)

end A047608

/-! ## A047608.P4707098746157592027

`∑[∑[ogf((4+x+3x^2)/(1+x))]]`
-/

namespace A047608.P4707098746157592027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047608.P4707098746157592027

namespace A047608

/-- `∑[∑[ogf((4+x+3x^2)/(1+x))]]` -/
def P4707098746157592027.Spec : Prop :=
  ∀ n, P4707098746157592027.a n = A047608 (n + 1)

end A047608

/-!
# A047609: Numbers that are congruent to {0, 4, 5} mod 8.

The programs for A047609, the canonical program `A047609.P3092235591739766847` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047609 has offset 1).

The definition of A047609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047609.P3092235591739766847

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047609

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P3092235591739766847.Spec : Prop :=
  ∀ n, P3092235591739766847.a n = A047609 (n + 1)

theorem P3092235591739766847.correct : P3092235591739766847.Spec := by
  intro n
  simp only [A047609, Nat.add_sub_cancel]

end A047609

/-! ## A047609.P4817565523646053860

`(24*(n+1)-21-6*cos(2*(n+1)*π/3)-4*sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A047609.P4817565523646053860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((24 * (n + 1) : ℤ) - 21 : ℝ) - 6 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) - 4 * Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A047609.P4817565523646053860

namespace A047609

/-- `(24*(n+1)-21-6*cos(2*(n+1)*π/3)-4*sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P4817565523646053860.Spec : Prop :=
  ∀ n, P4817565523646053860.a n = (A047609 (n + 1) : ℝ)

end A047609

/-! ## A047609.P9573044517404186497

`a(n-3)+8` with `a(0)=0, a(1)=4, a(2)=5`
-/

namespace A047609.P9573044517404186497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 5] fun n a =>
  a (n - 3) + 8

end

end A047609.P9573044517404186497

namespace A047609

/-- `a(n-3)+8` -/
def P9573044517404186497.Spec : Prop :=
  ∀ n, (P9573044517404186497.a n : ℤ) = A047609 (n + 1)

end A047609

/-! ## A047609.P9102869967450712172

`record[n-2*n²%16]`
-/

namespace A047609.P9102869967450712172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * (n ^ 2 % 16) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047609.P9102869967450712172

namespace A047609

/-- `record[n-2*n²%16]` -/
def P9102869967450712172.Spec : Prop :=
  ∀ n, P9102869967450712172.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P11501881224033427426

`record[n-and(10, 3*n²)]`
-/

namespace A047609.P11501881224033427426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 10 (3 * n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047609.P11501881224033427426

namespace A047609

/-- `record[n-and(10, 3*n²)]` -/
def P11501881224033427426.Spec : Prop :=
  ∀ n, P11501881224033427426.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P12448285621255864776

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=3`
-/

namespace A047609.P12448285621255864776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047609.P12448285621255864776

namespace A047609

/-- `∑[abs(a(n-3))]` -/
def P12448285621255864776.Spec : Prop :=
  ∀ n, (P12448285621255864776.a n : ℤ) = A047609 (n + 1)

end A047609

/-! ## A047609.P6641951539463773251

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=3`
-/

namespace A047609.P6641951539463773251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047609.P6641951539463773251

namespace A047609

/-- `∑[dr(a(n-3))]` -/
def P6641951539463773251.Spec : Prop :=
  ∀ n, (P6641951539463773251.a n : ℤ) = A047609 (n + 1)

end A047609

/-! ## A047609.P5255216479646801085

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047609.P5255216479646801085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047609.P5255216479646801085

namespace A047609

/-- `∑[floor(a(n-3))]` -/
def P5255216479646801085.Spec : Prop :=
  ∀ n, (P5255216479646801085.a n : ℤ) = A047609 (n + 1)

end A047609

/-! ## A047609.P323713556088902652

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047609.P323713556088902652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047609.P323713556088902652

namespace A047609

/-- `∑[ceil(a(n-3))]` -/
def P323713556088902652.Spec : Prop :=
  ∀ n, (P323713556088902652.a n : ℤ) = A047609 (n + 1)

end A047609

/-! ## A047609.P14101675470437653845

`∑[xor(2, n%3)+1]-3`
-/

namespace A047609.P14101675470437653845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n % 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047609.P14101675470437653845

namespace A047609

/-- `∑[xor(2, n%3)+1]-3` -/
def P14101675470437653845.Spec : Prop :=
  ∀ n, P14101675470437653845.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P9561696187437326521

`record[2*n-val(n+3, 2)]`
-/

namespace A047609.P9561696187437326521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.valuation (n + 3) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047609.P9561696187437326521

namespace A047609

/-- `record[2*n-val(n+3, 2)]` -/
def P9561696187437326521.Spec : Prop :=
  ∀ n, P9561696187437326521.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P2445197167258189026

`record[n-val(n+3, 2)+n]`
-/

namespace A047609.P2445197167258189026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 3) 2 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047609.P2445197167258189026

namespace A047609

/-- `record[n-val(n+3, 2)+n]` -/
def P2445197167258189026.Spec : Prop :=
  ∀ n, P2445197167258189026.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P14479376392077366115

`ogf((4x+x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A047609.P14479376392077366115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1, 3] [1, -1, 0, -1, 1] n

end

end A047609.P14479376392077366115

namespace A047609

/-- `ogf((4x+x^2+3x^3)/(1-x-x^3+x^4))` -/
def P14479376392077366115.Spec : Prop :=
  ∀ n, P14479376392077366115.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P11193013943608905442

`record[2*n+1-gcd(4, 1-n)]`
-/

namespace A047609.P11193013943608905442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - (Int.gcd 4 (1 - (n : ℤ)) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047609.P11193013943608905442

namespace A047609

/-- `record[2*n+1-gcd(4, 1-n)]` -/
def P11193013943608905442.Spec : Prop :=
  ∀ n, P11193013943608905442.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P12300766904158945220

`record[and(n+2, n+3)-2+n]`
-/

namespace A047609.P12300766904158945220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (n + 2) (n + 3) : ℤ) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047609.P12300766904158945220

namespace A047609

/-- `record[and(n+2, n+3)-2+n]` -/
def P12300766904158945220.Spec : Prop :=
  ∀ n, P12300766904158945220.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P8129604248677807449

`record[2*n-a(n-4)]` with `a(0)=0, a(1)=4, a(2)=0, a(3)=5`
-/

namespace A047609.P8129604248677807449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 0, 5] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047609.P8129604248677807449

namespace A047609

/-- `record[2*n-a(n-4)]` -/
def P8129604248677807449.Spec : Prop :=
  ∀ n, P8129604248677807449.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P4315300338642820802

`record[3*(n+1)-or(n+2, n+3)]`
-/

namespace A047609.P4315300338642820802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (Nat.lor (n + 2) (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047609.P4315300338642820802

namespace A047609

/-- `record[3*(n+1)-or(n+2, n+3)]` -/
def P4315300338642820802.Spec : Prop :=
  ∀ n, P4315300338642820802.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P17263876754137945942

`∑[8-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=4, a(2)=1`
-/

namespace A047609.P17263876754137945942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1] fun n f1 =>
  8 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047609.P17263876754137945942

namespace A047609

/-- `∑[8-a(n-1)-a(n-2)]` -/
def P17263876754137945942.Spec : Prop :=
  ∀ n, P17263876754137945942.a n = A047609 (n + 1)

end A047609

/-! ## A047609.P16922696377913395323

`lt[2*n+1, or(2*n, (n+2)%8)]`
-/

namespace A047609.P16922696377913395323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) ((n + 2) % 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047609.P16922696377913395323

namespace A047609

/-- `lt[2*n+1, or(2*n, (n+2)%8)]` -/
def P16922696377913395323.Spec : Prop :=
  ∀ n, (P16922696377913395323.a n : ℤ) = A047609 (n + 1)

end A047609

/-!
# A047610: Positive integers that are congruent to {1, 4, 5} mod 8.

The programs for A047610, the canonical program `A047610.P13231090849894031944` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047610 has offset 1).

The definition of A047610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047610.P13231090849894031944

`a(n-3)+8` with `a(0)=1, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047610

/-- `a(n-3)+8` -/
def P13231090849894031944.Spec : Prop :=
  ∀ n, (P13231090849894031944.a n : ℤ) = A047610 (n + 1)

theorem P13231090849894031944.correct : P13231090849894031944.Spec := by
  intro n
  simp only [A047610, Nat.add_sub_cancel]

end A047610

/-! ## A047610.P13898228423481093100

`∑[dr(3*n)%5]+1`
-/

namespace A047610.P13898228423481093100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A047610.P13898228423481093100

namespace A047610

/-- `∑[dr(3*n)%5]+1` -/
def P13898228423481093100.Spec : Prop :=
  ∀ n, (P13898228423481093100.a n : ℤ) = A047610 (n + 1)

end A047610

/-! ## A047610.P16593378094530744101

`record[log2(gcd(8, n))+n]-2`
-/

namespace A047610.P16593378094530744101
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 8 n : ℝ) + (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A047610.P16593378094530744101

namespace A047610

/-- `record[log2(gcd(8, n))+n]-2` -/
def P16593378094530744101.Spec : Prop :=
  ∀ n, P16593378094530744101.a n = (A047610 (n + 1) : ℝ)

end A047610

/-! ## A047610.P11757631867536943079

`comp[or(n, (n%4)!)]+1`
-/

namespace A047610.P11757631867536943079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.factorial (n % 4))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A047610.P11757631867536943079

namespace A047610

/-- `comp[or(n, (n%4)!)]+1` -/
def P11757631867536943079.Spec : Prop :=
  ∀ n, (P11757631867536943079.a n : ℤ) = A047610 (n + 1)

end A047610

/-! ## A047610.P7742624937183949113

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047610.P7742624937183949113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047610.P7742624937183949113

namespace A047610

/-- `∑[floor(a(n-3))]` -/
def P7742624937183949113.Spec : Prop :=
  ∀ n, (P7742624937183949113.a n : ℤ) = A047610 (n + 1)

end A047610

/-! ## A047610.P4090427612204129227

`record[or(2, or(3, n)+n)]-2`
-/

namespace A047610.P4090427612204129227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (Nat.lor 3 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 2

end

end A047610.P4090427612204129227

namespace A047610

/-- `record[or(2, or(3, n)+n)]-2` -/
def P4090427612204129227.Spec : Prop :=
  ∀ n, P4090427612204129227.a n = A047610 (n + 1)

end A047610

/-! ## A047610.P15184100666336034225

`record[xor(n, and(6, n+3))]-1`
-/

namespace A047610.P15184100666336034225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 6 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1

end

end A047610.P15184100666336034225

namespace A047610

/-- `record[xor(n, and(6, n+3))]-1` -/
def P15184100666336034225.Spec : Prop :=
  ∀ n, P15184100666336034225.a n = A047610 (n + 1)

end A047610

/-! ## A047610.P3960928859929777677

`xor(2, record[or(2, or(3, n)+n)])`
-/

namespace A047610.P3960928859929777677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (Nat.lor 3 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A047610.P3960928859929777677

namespace A047610

/-- `xor(2, record[or(2, or(3, n)+n)])` -/
def P3960928859929777677.Spec : Prop :=
  ∀ n, (P3960928859929777677.a n : ℤ) = A047610 (n + 1)

end A047610

/-! ## A047610.P8757042947837630870

`∑[a(n-3)%5]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=4`
-/

namespace A047610.P8757042947837630870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047610.P8757042947837630870

namespace A047610

/-- `∑[a(n-3)%5]` -/
def P8757042947837630870.Spec : Prop :=
  ∀ n, (P8757042947837630870.a n : ℤ) = A047610 (n + 1)

end A047610

/-! ## A047610.P1785065384959981839

`∑[∑[ogf((1+3x+x^2+3x^3)/(1+x+x^2))]]`
-/

namespace A047610.P1785065384959981839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 3] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047610.P1785065384959981839

namespace A047610

/-- `∑[∑[ogf((1+3x+x^2+3x^3)/(1+x+x^2))]]` -/
def P1785065384959981839.Spec : Prop :=
  ∀ n, P1785065384959981839.a n = A047610 (n + 1)

end A047610

/-! ## A047610.P7032818704283435833

`ogf((1+3x+x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A047610.P7032818704283435833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 3] [1, -1, 0, -1, 1] n

end

end A047610.P7032818704283435833

namespace A047610

/-- `ogf((1+3x+x^2+3x^3)/(1-x-x^3+x^4))` -/
def P7032818704283435833.Spec : Prop :=
  ∀ n, P7032818704283435833.a n = A047610 (n + 1)

end A047610

/-! ## A047610.P8730913457420191622

`∑[5-gcd(4, (n+1)%3)]-3`
-/

namespace A047610.P8730913457420191622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 4 ((n + 1) % 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A047610.P8730913457420191622

namespace A047610

/-- `∑[5-gcd(4, (n+1)%3)]-3` -/
def P8730913457420191622.Spec : Prop :=
  ∀ n, P8730913457420191622.a n = A047610 (n + 1)

end A047610

/-! ## A047610.P5855901592590361066

`record[or(5, (1-n)²)-(2-n)²]`
-/

namespace A047610.P5855901592590361066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((1 - (n : ℤ)) ^ 2) - (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047610.P5855901592590361066

namespace A047610

/-- `record[or(5, (1-n)²)-(2-n)²]` -/
def P5855901592590361066.Spec : Prop :=
  ∀ n, P5855901592590361066.a n = A047610 (n + 1)

end A047610

/-! ## A047610.P18026793537890808146

`comp[and(n, n+1)-and(3, n+1)]`
-/

namespace A047610.P18026793537890808146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) : ℤ) - (Nat.land 3 (n + 1) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047610.P18026793537890808146

namespace A047610

/-- `comp[and(n, n+1)-and(3, n+1)]` -/
def P18026793537890808146.Spec : Prop :=
  ∀ n, (P18026793537890808146.a n : ℤ) = A047610 (n + 1)

end A047610

/-! ## A047610.P9028533609071539287

`record[xor(2*n, ((2*n+1)%4)!)]`
-/

namespace A047610.P9028533609071539287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (Nat.factorial ((2 * n + 1) % 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047610.P9028533609071539287

namespace A047610

/-- `record[xor(2*n, ((2*n+1)%4)!)]` -/
def P9028533609071539287.Spec : Prop :=
  ∀ n, (P9028533609071539287.a n : ℤ) = A047610 (n + 1)

end A047610

/-! ## A047610.P10799185438104168813

`∑[8-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A047610.P10799185438104168813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n f1 =>
  8 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047610.P10799185438104168813

namespace A047610

/-- `∑[8-a(n-1)-a(n-2)]` -/
def P10799185438104168813.Spec : Prop :=
  ∀ n, P10799185438104168813.a n = A047610 (n + 1)

end A047610

/-! ## A047610.P9007308406969573550

`eq[2, and(lcm(2, n+3)-2*n, n-2)]`
-/

namespace A047610.P9007308406969573550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.lcm 2 (n + 3) : ℤ) - (2 * n : ℤ)) ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047610.P9007308406969573550

namespace A047610

/-- `eq[2, and(lcm(2, n+3)-2*n, n-2)]` -/
def P9007308406969573550.Spec : Prop :=
  ∀ n, (P9007308406969573550.a n : ℤ) = A047610 (n + 1)

end A047610

/-! ## A047610.P10148635146447640656

`∪[2*n+2*n+1, 8*n+4]`
-/

namespace A047610.P10148635146447640656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A047610.P10148635146447640656

namespace A047610

/-- `∪[2*n+2*n+1, 8*n+4]` -/
def P10148635146447640656.Spec : Prop :=
  ∀ n, (P10148635146447640656.a n : ℤ) = A047610 (n + 1)

end A047610

/-! ## A047610.P12308913299080946575

`eq[and(n+1, n-2), and(n, n-3)]+1`
-/

namespace A047610.P12308913299080946575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A047610.P12308913299080946575

namespace A047610

/-- `eq[and(n+1, n-2), and(n, n-3)]+1` -/
def P12308913299080946575.Spec : Prop :=
  ∀ n, (P12308913299080946575.a n : ℤ) = A047610 (n + 1)

end A047610

/-!
# A047611: Numbers that are congruent to {2, 4, 5} mod 8.

The programs for A047611, the canonical program `A047611.P1755501353308060115` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047611 has offset 1).

The definition of A047611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047611.P1755501353308060115

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047611

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P1755501353308060115.Spec : Prop :=
  ∀ n, P1755501353308060115.a n = A047611 (n + 1)

theorem P1755501353308060115.correct : P1755501353308060115.Spec := by
  intro n
  simp only [A047611, Nat.add_sub_cancel]

end A047611

/-! ## A047611.P10335077147529957028

`(24*(n+1)-15-12*cos(2*(n+1)*π/3)+2*sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A047611.P10335077147529957028
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((24 * (n + 1) : ℤ) - 15 : ℝ) - 12 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + 2 * Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A047611.P10335077147529957028

namespace A047611

/-- `(24*(n+1)-15-12*cos(2*(n+1)*π/3)+2*sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P10335077147529957028.Spec : Prop :=
  ∀ n, P10335077147529957028.a n = (A047611 (n + 1) : ℝ)

end A047611

/-! ## A047611.P2713053277062269318

`a(n-3)+8` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A047611.P2713053277062269318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 5] fun n a =>
  a (n - 3) + 8

end

end A047611.P2713053277062269318

namespace A047611

/-- `a(n-3)+8` -/
def P2713053277062269318.Spec : Prop :=
  ∀ n, (P2713053277062269318.a n : ℤ) = A047611 (n + 1)

end A047611

/-! ## A047611.P12621809271166746437

`record[1-or(4, -xor(1, n))]`
-/

namespace A047611.P12621809271166746437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 4 (-(Nat.xor 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047611.P12621809271166746437

namespace A047611

/-- `record[1-or(4, -xor(1, n))]` -/
def P12621809271166746437.Spec : Prop :=
  ∀ n, P12621809271166746437.a n = A047611 (n + 1)

end A047611

/-! ## A047611.P8726285256995118661

`∑[abs(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=5`
-/

namespace A047611.P8726285256995118661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047611.P8726285256995118661

namespace A047611

/-- `∑[abs(a(n-3))]` -/
def P8726285256995118661.Spec : Prop :=
  ∀ n, (P8726285256995118661.a n : ℤ) = A047611 (n + 1)

end A047611

/-! ## A047611.P12475649947281932851

`∑[dr(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=5`
-/

namespace A047611.P12475649947281932851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 5] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047611.P12475649947281932851

namespace A047611

/-- `∑[dr(a(n-3))]` -/
def P12475649947281932851.Spec : Prop :=
  ∀ n, (P12475649947281932851.a n : ℤ) = A047611 (n + 1)

end A047611

/-! ## A047611.P3396916682742935059

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A047611.P3396916682742935059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047611.P3396916682742935059

namespace A047611

/-- `∑[floor(a(n-3))]` -/
def P3396916682742935059.Spec : Prop :=
  ∀ n, (P3396916682742935059.a n : ℤ) = A047611 (n + 1)

end A047611

/-! ## A047611.P5070869962439020303

`∑[ceil(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A047611.P5070869962439020303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047611.P5070869962439020303

namespace A047611

/-- `∑[ceil(a(n-3))]` -/
def P5070869962439020303.Spec : Prop :=
  ∀ n, (P5070869962439020303.a n : ℤ) = A047611 (n + 1)

end A047611

/-! ## A047611.P2704427032085829430

`∑[round(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=5`

`round` is left out, it is the identity on integers.
-/

namespace A047611.P2704427032085829430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047611.P2704427032085829430

namespace A047611

/-- `∑[round(a(n-3))]` -/
def P2704427032085829430.Spec : Prop :=
  ∀ n, (P2704427032085829430.a n : ℤ) = A047611 (n + 1)

end A047611

/-! ## A047611.P12309782764756658948

`xor(1, floor(8*n/3))+1`
-/

namespace A047611.P12309782764756658948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊8 * ((n : ℚ) / 3)⌋ + 1

end

end A047611.P12309782764756658948

namespace A047611

/-- `xor(1, floor(8*n/3))+1` -/
def P12309782764756658948.Spec : Prop :=
  ∀ n, P12309782764756658948.a n = A047611 (n + 1)

end A047611

/-! ## A047611.P11088604579224956929

`xor(2, 5*ceil(n/3)+n)`
-/

namespace A047611.P11088604579224956929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (5 * ⌈(n : ℚ) / 3⌉ + (n : ℤ))

end

end A047611.P11088604579224956929

namespace A047611

/-- `xor(2, 5*ceil(n/3)+n)` -/
def P11088604579224956929.Spec : Prop :=
  ∀ n, P11088604579224956929.a n = A047611 (n + 1)

end A047611

/-! ## A047611.P10390838138509922519

`record[gcd(4, n)+2*(n-1)]`
-/

namespace A047611.P10390838138509922519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 n : ℤ) + 2 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047611.P10390838138509922519

namespace A047611

/-- `record[gcd(4, n)+2*(n-1)]` -/
def P10390838138509922519.Spec : Prop :=
  ∀ n, P10390838138509922519.a n = A047611 (n + 1)

end A047611

/-! ## A047611.P1353919355029939458

`record[and(n+1, xor(5, n))]+1`
-/

namespace A047611.P1353919355029939458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (Nat.xor 5 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A047611.P1353919355029939458

namespace A047611

/-- `record[and(n+1, xor(5, n))]+1` -/
def P1353919355029939458.Spec : Prop :=
  ∀ n, (P1353919355029939458.a n : ℤ) = A047611 (n + 1)

end A047611

/-! ## A047611.P2822470473650861394

`∑[a(n-3)%7]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=5`
-/

namespace A047611.P2822470473650861394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 5] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047611.P2822470473650861394

namespace A047611

/-- `∑[a(n-3)%7]` -/
def P2822470473650861394.Spec : Prop :=
  ∀ n, (P2822470473650861394.a n : ℤ) = A047611 (n + 1)

end A047611

/-! ## A047611.P15681337037222858569

`lt[n-1, xor(n-2, n%8)]`
-/

namespace A047611.P15681337037222858569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 2) ((n % 8 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047611.P15681337037222858569

namespace A047611

/-- `lt[n-1, xor(n-2, n%8)]` -/
def P15681337037222858569.Spec : Prop :=
  ∀ n, (P15681337037222858569.a n : ℤ) = A047611 (n + 1)

end A047611

/-! ## A047611.P12663570098106249304

`ogf((2+2x+x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A047611.P12663570098106249304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 1, 3] [1, -1, 0, -1, 1] n

end

end A047611.P12663570098106249304

namespace A047611

/-- `ogf((2+2x+x^2+3x^3)/(1-x-x^3+x^4))` -/
def P12663570098106249304.Spec : Prop :=
  ∀ n, P12663570098106249304.a n = A047611 (n + 1)

end A047611

/-! ## A047611.P9137787324257072079

`record[and(4, (n-3)^3)+n-2]`
-/

namespace A047611.P9137787324257072079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (((n : ℤ) - 3) ^ 3) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047611.P9137787324257072079

namespace A047611

/-- `record[and(4, (n-3)^3)+n-2]` -/
def P9137787324257072079.Spec : Prop :=
  ∀ n, P9137787324257072079.a n = A047611 (n + 1)

end A047611

/-! ## A047611.P11784293502957777489

`∑[8-a(n-1)-a(n-2)]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A047611.P11784293502957777489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  8 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047611.P11784293502957777489

namespace A047611

/-- `∑[8-a(n-1)-a(n-2)]` -/
def P11784293502957777489.Spec : Prop :=
  ∀ n, P11784293502957777489.a n = A047611 (n + 1)

end A047611

/-! ## A047611.P5740462453225302300

`eq[n-2, and(n+2, and(n, n+1)-1)]`
-/

namespace A047611.P5740462453225302300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) ((Nat.land n (n + 1) : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047611.P5740462453225302300

namespace A047611

/-- `eq[n-2, and(n+2, and(n, n+1)-1)]` -/
def P5740462453225302300.Spec : Prop :=
  ∀ n, (P5740462453225302300.a n : ℤ) = A047611 (n + 1)

end A047611

/-! ## A047611.P2902434509332674375

`A047459(n+1)+1`
-/

namespace A047611.P2902434509332674375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047459 (n + 1) + 1

end

end A047611.P2902434509332674375

namespace A047611

/-- `A047459(n+1)+1` -/
def P2902434509332674375.Spec : Prop :=
  ∀ n, P2902434509332674375.a n = A047611 (n + 1)

end A047611

/-!
# A047612: Numbers that are congruent to {0, 2, 4, 5} mod 8.

The programs for A047612, the canonical program `A047612.P10185051403906134146` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047612 has offset 1).

The definition of A047612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047612.P10185051403906134146

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5, a(4)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047612

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P10185051403906134146.Spec : Prop :=
  ∀ n, P10185051403906134146.a n = A047612 (n + 1)

theorem P10185051403906134146.correct : P10185051403906134146.Spec := by
  intro n
  simp only [A047612, Nat.add_sub_cancel]

end A047612

/-! ## A047612.P16854092553791264735

`2*n-char[or(3, n)]`
-/

namespace A047612.P16854092553791264735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A047612.P16854092553791264735

namespace A047612

/-- `2*n-char[or(3, n)]` -/
def P16854092553791264735.Spec : Prop :=
  ∀ n, P16854092553791264735.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P14011822654270799481

`n-char[or(3, n)]+n`
-/

namespace A047612.P14011822654270799481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A047612.P14011822654270799481

namespace A047612

/-- `n-char[or(3, n)]+n` -/
def P14011822654270799481.Spec : Prop :=
  ∀ n, P14011822654270799481.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P14180927476175326916

`n-(char[or(3, n)]-n)`
-/

namespace A047612.P14180927476175326916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A047612.P14180927476175326916

namespace A047612

/-- `n-(char[or(3, n)]-n)` -/
def P14180927476175326916.Spec : Prop :=
  ∀ n, P14180927476175326916.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P1139192979280878597

`2*n-C(n, 3)%2`
-/

namespace A047612.P1139192979280878597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((Nat.choose n 3 % 2 : ℕ) : ℤ)

end

end A047612.P1139192979280878597

namespace A047612

/-- `2*n-C(n, 3)%2` -/
def P1139192979280878597.Spec : Prop :=
  ∀ n, P1139192979280878597.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P8497148536991404553

`2*n-and(1, C(n, 3))`
-/

namespace A047612.P8497148536991404553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 1 (Nat.choose n 3) : ℤ)

end

end A047612.P8497148536991404553

namespace A047612

/-- `2*n-and(1, C(n, 3))` -/
def P8497148536991404553.Spec : Prop :=
  ∀ n, P8497148536991404553.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P11104185092143757743

`2*n-C(n, or(3, n))`
-/

namespace A047612.P11104185092143757743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.choose n (Nat.lor 3 n) : ℤ)

end

end A047612.P11104185092143757743

namespace A047612

/-- `2*n-C(n, or(3, n))` -/
def P11104185092143757743.Spec : Prop :=
  ∀ n, P11104185092143757743.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P10865469874697464583

`2*n-Δ[floor(n/4)]`
-/

namespace A047612.P10865469874697464583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (f1 (n + 1) - f1 n)

end

end A047612.P10865469874697464583

namespace A047612

/-- `2*n-Δ[floor(n/4)]` -/
def P10865469874697464583.Spec : Prop :=
  ∀ n, P10865469874697464583.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P8951856902981054754

`ceil(2*n-and(3, n)/3)`
-/

namespace A047612.P8951856902981054754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) - (Nat.land 3 n : ℚ) / 3⌉

end

end A047612.P8951856902981054754

namespace A047612

/-- `ceil(2*n-and(3, n)/3)` -/
def P8951856902981054754.Spec : Prop :=
  ∀ n, P8951856902981054754.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P10381880513509037966

`round(2*n-and(3, n)/4)`
-/

namespace A047612.P10381880513509037966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) - (Nat.land 3 n : ℚ) / 4)

end

end A047612.P10381880513509037966

namespace A047612

/-- `round(2*n-and(3, n)/4)` -/
def P10381880513509037966.Spec : Prop :=
  ∀ n, P10381880513509037966.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P4015407682404202838

`ceil(2*n-n/or(3, n))`
-/

namespace A047612.P4015407682404202838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) - (n : ℚ) / (Nat.lor 3 n : ℚ)⌉

end

end A047612.P4015407682404202838

namespace A047612

/-- `ceil(2*n-n/or(3, n))` -/
def P4015407682404202838.Spec : Prop :=
  ∀ n, P4015407682404202838.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P11917840597204169740

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A047612.P11917840597204169740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047612.P11917840597204169740

namespace A047612

/-- `∑[abs(a(n-4))]` -/
def P11917840597204169740.Spec : Prop :=
  ∀ n, (P11917840597204169740.a n : ℤ) = A047612 (n + 1)

end A047612

/-! ## A047612.P12723724035268441935

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A047612.P12723724035268441935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047612.P12723724035268441935

namespace A047612

/-- `∑[dr(a(n-4))]` -/
def P12723724035268441935.Spec : Prop :=
  ∀ n, (P12723724035268441935.a n : ℤ) = A047612 (n + 1)

end A047612

/-! ## A047612.P15152417534036252813

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047612.P15152417534036252813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047612.P15152417534036252813

namespace A047612

/-- `∑[floor(a(n-4))]` -/
def P15152417534036252813.Spec : Prop :=
  ∀ n, (P15152417534036252813.a n : ℤ) = A047612 (n + 1)

end A047612

/-! ## A047612.P15844892589340673234

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1, a(4)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047612.P15844892589340673234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047612.P15844892589340673234

namespace A047612

/-- `∑[ceil(a(n-4))]` -/
def P15844892589340673234.Spec : Prop :=
  ∀ n, (P15844892589340673234.a n : ℤ) = A047612 (n + 1)

end A047612

/-! ## A047612.P14195479780127669553

`∑[round(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1, a(4)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047612.P14195479780127669553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047612.P14195479780127669553

namespace A047612

/-- `∑[round(a(n-4))]` -/
def P14195479780127669553.Spec : Prop :=
  ∀ n, (P14195479780127669553.a n : ℤ) = A047612 (n + 1)

end A047612

/-! ## A047612.P11570224423552503224

`xor(2*n, 3%xor(n, n+1))`
-/

namespace A047612.P11570224423552503224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (3 % Nat.xor n (n + 1))

end

end A047612.P11570224423552503224

namespace A047612

/-- `xor(2*n, 3%xor(n, n+1))` -/
def P11570224423552503224.Spec : Prop :=
  ∀ n, (P11570224423552503224.a n : ℤ) = A047612 (n + 1)

end A047612

/-! ## A047612.P7430103526218766648

`lt[xor(n, n+1), (n+2)%8]`
-/

namespace A047612.P7430103526218766648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047612.P7430103526218766648

namespace A047612

/-- `lt[xor(n, n+1), (n+2)%8]` -/
def P7430103526218766648.Spec : Prop :=
  ∀ n, (P7430103526218766648.a n : ℤ) = A047612 (n + 1)

end A047612

/-! ## A047612.P17415637382924666232

`ceil(2*n-acot((n+1)%4))`
-/

namespace A047612.P17415637382924666232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) - SequenceMachineLib.acot (((n + 1) % 4 : ℕ) : ℝ)⌉

end

end A047612.P17415637382924666232

namespace A047612

/-- `ceil(2*n-acot((n+1)%4))` -/
def P17415637382924666232.Spec : Prop :=
  ∀ n, P17415637382924666232.a n = A047612 (n + 1)

end A047612

/-! ## A047612.P15027301329560253662

`ceil(2*n-gcd(4, n+1)/3)`
-/

namespace A047612.P15027301329560253662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) - (Nat.gcd 4 (n + 1) : ℚ) / 3⌉

end

end A047612.P15027301329560253662

namespace A047612

/-- `ceil(2*n-gcd(4, n+1)/3)` -/
def P15027301329560253662.Spec : Prop :=
  ∀ n, P15027301329560253662.a n = A047612 (n + 1)

end A047612

/-!
# A047613: Numbers that are congruent to {1, 2, 4, 5} mod 8.

The programs for A047613, the canonical program `A047613.P15060845050638187780` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047613 has offset 1).

The definition of A047613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047613.P15060845050638187780

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047613

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P15060845050638187780.Spec : Prop :=
  ∀ n, P15060845050638187780.a n = A047613 (n + 1)

theorem P15060845050638187780.correct : P15060845050638187780.Spec := by
  intro n
  simp only [A047613, Nat.add_sub_cancel]

end A047613

/-! ## A047613.P17915603083377898652

`∑[gcd(4, n)]-3`
-/

namespace A047613.P17915603083377898652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047613.P17915603083377898652

namespace A047613

/-- `∑[gcd(4, n)]-3` -/
def P17915603083377898652.Spec : Prop :=
  ∀ n, P17915603083377898652.a n = A047613 (n + 1)

end A047613

/-! ## A047613.P13115619306617669051

`comp[or(2*n, n%4)]`
-/

namespace A047613.P13115619306617669051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (n % 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047613.P13115619306617669051

namespace A047613

/-- `comp[or(2*n, n%4)]` -/
def P13115619306617669051.Spec : Prop :=
  ∀ n, (P13115619306617669051.a n : ℤ) = A047613 (n + 1)

end A047613

/-! ## A047613.P4307297133938417157

`comp[or(2*n, and(3, n))]`
-/

namespace A047613.P4307297133938417157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.land 3 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047613.P4307297133938417157

namespace A047613

/-- `comp[or(2*n, and(3, n))]` -/
def P4307297133938417157.Spec : Prop :=
  ∀ n, (P4307297133938417157.a n : ℤ) = A047613 (n + 1)

end A047613

/-! ## A047613.P13579112918887369100

`lt[xor(n, n+3), 6]+1`
-/

namespace A047613.P13579112918887369100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A047613.P13579112918887369100

namespace A047613

/-- `lt[xor(n, n+3), 6]+1` -/
def P13579112918887369100.Spec : Prop :=
  ∀ n, (P13579112918887369100.a n : ℤ) = A047613 (n + 1)

end A047613

/-! ## A047613.P44924496404738076

`comp[∑[and(2, n+1)]+n]`
-/

namespace A047613.P44924496404738076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047613.P44924496404738076

namespace A047613

/-- `comp[∑[and(2, n+1)]+n]` -/
def P44924496404738076.Spec : Prop :=
  ∀ n, (P44924496404738076.a n : ℤ) = A047613 (n + 1)

end A047613

/-! ## A047613.P8347883735558314306

`a(n-4)+8` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A047613.P8347883735558314306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5] fun n a =>
  a (n - 4) + 8

end

end A047613.P8347883735558314306

namespace A047613

/-- `a(n-4)+8` -/
def P8347883735558314306.Spec : Prop :=
  ∀ n, (P8347883735558314306.a n : ℤ) = A047613 (n + 1)

end A047613

/-! ## A047613.P5386672649195000888

`ceil(or(6, 10*n)/5)-1`
-/

namespace A047613.P5386672649195000888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 6 (10 * n) : ℚ) / 5⌉ - 1

end

end A047613.P5386672649195000888

namespace A047613

/-- `ceil(or(6, 10*n)/5)-1` -/
def P5386672649195000888.Spec : Prop :=
  ∀ n, P5386672649195000888.a n = A047613 (n + 1)

end A047613

/-! ## A047613.P15580159159493665640

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047613.P15580159159493665640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047613.P15580159159493665640

namespace A047613

/-- `∑[floor(a(n-4))]` -/
def P15580159159493665640.Spec : Prop :=
  ∀ n, (P15580159159493665640.a n : ℤ) = A047613 (n + 1)

end A047613

/-! ## A047613.P5964186570231370406

`∑[a(n-2)²%7]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A047613.P5964186570231370406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 2) ^ 2 % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047613.P5964186570231370406

namespace A047613

/-- `∑[a(n-2)²%7]` -/
def P5964186570231370406.Spec : Prop :=
  ∀ n, (P5964186570231370406.a n : ℤ) = A047613 (n + 1)

end A047613

/-! ## A047613.P11644229825028689966

`lt[n-2, and(n, n+3)]+1`
-/

namespace A047613.P11644229825028689966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A047613.P11644229825028689966

namespace A047613

/-- `lt[n-2, and(n, n+3)]+1` -/
def P11644229825028689966.Spec : Prop :=
  ∀ n, (P11644229825028689966.a n : ℤ) = A047613 (n + 1)

end A047613

/-! ## A047613.P16596364049518094598

`∑[a(n-4)%5]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=4`
-/

namespace A047613.P16596364049518094598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1, 4] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047613.P16596364049518094598

namespace A047613

/-- `∑[a(n-4)%5]` -/
def P16596364049518094598.Spec : Prop :=
  ∀ n, (P16596364049518094598.a n : ℤ) = A047613 (n + 1)

end A047613

/-! ## A047613.P8066542357849250367

`floor(2*n+1-and(3, n)/2)`
-/

namespace A047613.P8066542357849250367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) - (Nat.land 3 n : ℚ) / 2⌋

end

end A047613.P8066542357849250367

namespace A047613

/-- `floor(2*n+1-and(3, n)/2)` -/
def P8066542357849250367.Spec : Prop :=
  ∀ n, P8066542357849250367.a n = A047613 (n + 1)

end A047613

/-! ## A047613.P7685865184231872955

`2*n+1-ceil(and(3, n)/2)`
-/

namespace A047613.P7685865184231872955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌈(Nat.land 3 n : ℚ) / 2⌉

end

end A047613.P7685865184231872955

namespace A047613

/-- `2*n+1-ceil(and(3, n)/2)` -/
def P7685865184231872955.Spec : Prop :=
  ∀ n, P7685865184231872955.a n = A047613 (n + 1)

end A047613

/-! ## A047613.P7918873924865509028

`2*n+1-round(and(3, n)/2)`
-/

namespace A047613.P7918873924865509028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - SequenceMachineLib.roundAway ((Nat.land 3 n : ℚ) / 2)

end

end A047613.P7918873924865509028

namespace A047613

/-- `2*n+1-round(and(3, n)/2)` -/
def P7918873924865509028.Spec : Prop :=
  ∀ n, P7918873924865509028.a n = A047613 (n + 1)

end A047613

/-! ## A047613.P9939013793996608404

`or(2*n, and(2, n-1)!)-1`
-/

namespace A047613.P9939013793996608404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (2 * n) (Nat.factorial (Int.land 2 ((n : ℤ) - 1)).toNat) : ℤ) - 1

end

end A047613.P9939013793996608404

namespace A047613

/-- `or(2*n, and(2, n-1)!)-1` -/
def P9939013793996608404.Spec : Prop :=
  ∀ n, P9939013793996608404.a n = A047613 (n + 1)

end A047613

/-! ## A047613.P16557328214921989608

`∑[and(3, (n-1)^3)]+n-2`
-/

namespace A047613.P16557328214921989608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (((n : ℤ) - 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 2)

end

end A047613.P16557328214921989608

namespace A047613

/-- `∑[and(3, (n-1)^3)]+n-2` -/
def P16557328214921989608.Spec : Prop :=
  ∀ n, P16557328214921989608.a n = A047613 (n + 1)

end A047613

/-! ## A047613.P17710134564363447493

`∑[gcd(3*n, 4%(3*(n+1)))]`
-/

namespace A047613.P17710134564363447493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n) (4 % (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047613.P17710134564363447493

namespace A047613

/-- `∑[gcd(3*n, 4%(3*(n+1)))]` -/
def P17710134564363447493.Spec : Prop :=
  ∀ n, (P17710134564363447493.a n : ℤ) = A047613 (n + 1)

end A047613

/-! ## A047613.P14169591422877995307

`lt[and(n+3, -(n+1)), 5]+1`
-/

namespace A047613.P14169591422877995307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (-(n + 1 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A047613.P14169591422877995307

namespace A047613

/-- `lt[and(n+3, -(n+1)), 5]+1` -/
def P14169591422877995307.Spec : Prop :=
  ∀ n, (P14169591422877995307.a n : ℤ) = A047613 (n + 1)

end A047613

/-!
# A047614: Numbers that are congruent to {0, 1, 2, 4, 5} mod 8.

The programs for A047614, the canonical program `A047614.P1508913737203542591` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047614 has offset 1).

The definition of A047614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047614.P17005232310648252122

`comp[or(2, or(4, n)-1)]`
-/

namespace A047614.P17005232310648252122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((Nat.lor 4 n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047614.P17005232310648252122

namespace A047614

/-- `comp[or(2, or(4, n)-1)]` -/
def P17005232310648252122.Spec : Prop :=
  ∀ n, (P17005232310648252122.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P14350052163742632765

`record[and(n, n+5)/2]`
-/

namespace A047614.P14350052163742632765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 5) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047614.P14350052163742632765

namespace A047614

/-- `record[and(n, n+5)/2]` -/
def P14350052163742632765.Spec : Prop :=
  ∀ n, P14350052163742632765.a n = (A047614 (n + 1) : ℚ)

end A047614

/-! ## A047614.P12323857161502065241

`record[and(n, n-5)]/2`
-/

namespace A047614.P12323857161502065241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A047614.P12323857161502065241

namespace A047614

/-- `record[and(n, n-5)]/2` -/
def P12323857161502065241.Spec : Prop :=
  ∀ n, P12323857161502065241.a n = (A047614 (n + 1) : ℚ)

end A047614

/-! ## A047614.P10021799273850867866

`comp[n*n%4-5]-1`
-/

namespace A047614.P10021799273850867866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (n % 4) : ℕ) : ℤ) - 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A047614.P10021799273850867866

namespace A047614

/-- `comp[n*n%4-5]-1` -/
def P10021799273850867866.Spec : Prop :=
  ∀ n, P10021799273850867866.a n = A047614 (n + 1)

end A047614

/-! ## A047614.P2859605681406853986

`comp[n*(2-and(3, n))]-2`
-/

namespace A047614.P2859605681406853986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (Nat.land 3 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A047614.P2859605681406853986

namespace A047614

/-- `comp[n*(2-and(3, n))]-2` -/
def P2859605681406853986.Spec : Prop :=
  ∀ n, P2859605681406853986.a n = A047614 (n + 1)

end A047614

/-! ## A047614.P1508913737203542591

`record[and(n, or(n+2, n-3))]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047614

/-- `record[and(n, or(n+2, n-3))]` -/
def P1508913737203542591.Spec : Prop :=
  ∀ n, P1508913737203542591.a n = A047614 (n + 1)

theorem P1508913737203542591.correct : P1508913737203542591.Spec := by
  intro n
  simp only [A047614, Nat.add_sub_cancel]

end A047614

/-! ## A047614.P14134229565537851711

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5`
-/

namespace A047614.P14134229565537851711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4, 5] fun n a =>
  a (n - 5) + 8

end

end A047614.P14134229565537851711

namespace A047614

/-- `a(n-5)+8` -/
def P14134229565537851711.Spec : Prop :=
  ∀ n, (P14134229565537851711.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P16501732643746248000

`record[and(n, -((2*n+1)%8))]`
-/

namespace A047614.P16501732643746248000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(((2 * n + 1) % 8 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047614.P16501732643746248000

namespace A047614

/-- `record[and(n, -((2*n+1)%8))]` -/
def P16501732643746248000.Spec : Prop :=
  ∀ n, P16501732643746248000.a n = A047614 (n + 1)

end A047614

/-! ## A047614.P1234629018502843013

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047614.P1234629018502843013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 1, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047614.P1234629018502843013

namespace A047614

/-- `∑[floor(a(n-5))]` -/
def P1234629018502843013.Spec : Prop :=
  ∀ n, (P1234629018502843013.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P10233361517282206371

`lt[val((n+2)*(n+1)², 2), 3]`
-/

namespace A047614.P10233361517282206371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 2) * (n + 1) ^ 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047614.P10233361517282206371

namespace A047614

/-- `lt[val((n+2)*(n+1)², 2), 3]` -/
def P10233361517282206371.Spec : Prop :=
  ∀ n, (P10233361517282206371.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P3065908003506629416

`eq[0, and(2-n, and(n+1, 2*n))]`
-/

namespace A047614.P3065908003506629416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - (n : ℤ)) (Nat.land (n + 1) (2 * n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047614.P3065908003506629416

namespace A047614

/-- `eq[0, and(2-n, and(n+1, 2*n))]` -/
def P3065908003506629416.Spec : Prop :=
  ∀ n, (P3065908003506629416.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P5605645458447118622

`eq[n+2, or(n+2, (2*n)%8)]`
-/

namespace A047614.P5605645458447118622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 2) (2 * n % 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047614.P5605645458447118622

namespace A047614

/-- `eq[n+2, or(n+2, (2*n)%8)]` -/
def P5605645458447118622.Spec : Prop :=
  ∀ n, (P5605645458447118622.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P8862033942053600622

`eq[0, and(n-1, n-and(n, n+2))]`
-/

namespace A047614.P8862033942053600622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) ((n : ℤ) - (Nat.land n (n + 2) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047614.P8862033942053600622

namespace A047614

/-- `eq[0, and(n-1, n-and(n, n+2))]` -/
def P8862033942053600622.Spec : Prop :=
  ∀ n, (P8862033942053600622.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P9273259896346312095

`record[n+1-val((n+1)*(n+2), 2)]`
-/

namespace A047614.P9273259896346312095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.valuation ((n + 1) * (n + 2)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047614.P9273259896346312095

namespace A047614

/-- `record[n+1-val((n+1)*(n+2), 2)]` -/
def P9273259896346312095.Spec : Prop :=
  ∀ n, P9273259896346312095.a n = A047614 (n + 1)

end A047614

/-! ## A047614.P8923815114537354179

`eq[n, and(n, gcd(n+2, 2*n)+n+1)]`
-/

namespace A047614.P8923815114537354179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.gcd (n + 2) (2 * n) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047614.P8923815114537354179

namespace A047614

/-- `eq[n, and(n, gcd(n+2, 2*n)+n+1)]` -/
def P8923815114537354179.Spec : Prop :=
  ∀ n, (P8923815114537354179.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P2327971899726893463

`∑[a(n-5)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=3`
-/

namespace A047614.P2327971899726893463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 1, 3] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047614.P2327971899726893463

namespace A047614

/-- `∑[a(n-5)^a(n-1)]` -/
def P2327971899726893463.Spec : Prop :=
  ∀ n, (P2327971899726893463.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P716689796583237277

`eq[2*n, and(and(n-1, n-3)-n, 2*n)]`
-/

namespace A047614.P716689796583237277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.land ((n : ℤ) - 1) ((n : ℤ) - 3) - (n : ℤ)) (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047614.P716689796583237277

namespace A047614

/-- `eq[2*n, and(and(n-1, n-3)-n, 2*n)]` -/
def P716689796583237277.Spec : Prop :=
  ∀ n, (P716689796583237277.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P4825826691422674884

`comp[A047556(n+1)]`
-/

namespace A047614.P4825826691422674884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047614.P4825826691422674884

namespace A047614

/-- `comp[A047556(n+1)]` -/
def P4825826691422674884.Spec : Prop :=
  ∀ n, (P4825826691422674884.a n : ℤ) = A047614 (n + 1)

end A047614

/-! ## A047614.P1443100040328969224

`A047449(n+1)-1`
-/

namespace A047614.P1443100040328969224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1) - 1

end

end A047614.P1443100040328969224

namespace A047614

/-- `A047449(n+1)-1` -/
def P1443100040328969224.Spec : Prop :=
  ∀ n, P1443100040328969224.a n = A047614 (n + 1)

end A047614

/-! ## A047614.P3879345335376991626

`A047518(n+1)-2`
-/

namespace A047614.P3879345335376991626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047518 (n + 1) - 2

end

end A047614.P3879345335376991626

namespace A047614

/-- `A047518(n+1)-2` -/
def P3879345335376991626.Spec : Prop :=
  ∀ n, P3879345335376991626.a n = A047614 (n + 1)

end A047614

/-!
# A047615: Numbers that are congruent to {0, 5} mod 8.

The programs for A047615, the canonical program `A047615.P13743428671274223481` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047615 has offset 1).

The definition of A047615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047615.P13743428671274223481

`8*(n+1)-a(n-1)-11` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047615

/-- `8*(n+1)-a(n-1)-11` -/
def P13743428671274223481.Spec : Prop :=
  ∀ n, P13743428671274223481.a n = A047615 (n + 1)

theorem P13743428671274223481.correct : P13743428671274223481.Spec := by
  intro n
  simp only [A047615, Nat.add_sub_cancel]

end A047615

/-! ## A047615.P7292995905397879629

`(8*(n+1)-7+(-1)^(n+1))/2`
-/

namespace A047615.P7292995905397879629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * (n + 1) : ℤ) - 7 + (-1) ^ (n + 1) : ℚ) / 2

end

end A047615.P7292995905397879629

namespace A047615

/-- `(8*(n+1)-7+(-1)^(n+1))/2` -/
def P7292995905397879629.Spec : Prop :=
  ∀ n, P7292995905397879629.a n = (A047615 (n + 1) : ℚ)

theorem P7292995905397879629.correct : P7292995905397879629.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047615, Nat.add_sub_cancel, A047615.P7292995905397879629.a, A047615.P13743428671274223481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047615, Nat.add_sub_cancel, A047615.P7292995905397879629.a, A047615.P13743428671274223481.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047615

/-! ## A047615.P10771908888496809406

`A047470(n+1)-(-1)^n+1`
-/

namespace A047615.P10771908888496809406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (n + 1) - (-1) ^ n + 1

end

end A047615.P10771908888496809406

namespace A047615

/-- `A047470(n+1)-(-1)^n+1` -/
def P10771908888496809406.Spec : Prop :=
  ∀ n, P10771908888496809406.a n = A047615 (n + 1)

end A047615

/-! ## A047615.P17974629858489707361

`4*n+n%2`
-/

namespace A047615.P17974629858489707361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + n % 2

end

end A047615.P17974629858489707361

namespace A047615

/-- `4*n+n%2` -/
def P17974629858489707361.Spec : Prop :=
  ∀ n, (P17974629858489707361.a n : ℤ) = A047615 (n + 1)

end A047615

/-! ## A047615.P13027635958487840481

`and(1, n)+4*n`
-/

namespace A047615.P13027635958487840481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 4 * n

end

end A047615.P13027635958487840481

namespace A047615

/-- `and(1, n)+4*n` -/
def P13027635958487840481.Spec : Prop :=
  ∀ n, (P13027635958487840481.a n : ℤ) = A047615 (n + 1)

end A047615

/-! ## A047615.P4225065390493045685

`or(4*n, and(1, n))`
-/

namespace A047615.P4225065390493045685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 * n) (Nat.land 1 n)

end

end A047615.P4225065390493045685

namespace A047615

/-- `or(4*n, and(1, n))` -/
def P4225065390493045685.Spec : Prop :=
  ∀ n, (P4225065390493045685.a n : ℤ) = A047615 (n + 1)

end A047615

/-! ## A047615.P17709673405952652397

`xor(4*n, and(1, n))`
-/

namespace A047615.P17709673405952652397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (4 * n) (Nat.land 1 n)

end

end A047615.P17709673405952652397

namespace A047615

/-- `xor(4*n, and(1, n))` -/
def P17709673405952652397.Spec : Prop :=
  ∀ n, (P17709673405952652397.a n : ℤ) = A047615 (n + 1)

end A047615

/-! ## A047615.P4999708901795722578

`a(n-2)+8` with `a(0)=0, a(1)=5`
-/

namespace A047615.P4999708901795722578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 2) + 8

end

end A047615.P4999708901795722578

namespace A047615

/-- `a(n-2)+8` -/
def P4999708901795722578.Spec : Prop :=
  ∀ n, (P4999708901795722578.a n : ℤ) = A047615 (n + 1)

end A047615

/-! ## A047615.P1160651840725965540

`5*n-and(n, -2)`
-/

namespace A047615.P1160651840725965540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - Int.land (n : ℤ) (-2)

end

end A047615.P1160651840725965540

namespace A047615

/-- `5*n-and(n, -2)` -/
def P1160651840725965540.Spec : Prop :=
  ∀ n, P1160651840725965540.a n = A047615 (n + 1)

end A047615

/-! ## A047615.P12290484955159942294

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=5, a(2)=3`
-/

namespace A047615.P12290484955159942294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047615.P12290484955159942294

namespace A047615

/-- `∑[abs(a(n-2))]` -/
def P12290484955159942294.Spec : Prop :=
  ∀ n, (P12290484955159942294.a n : ℤ) = A047615 (n + 1)

end A047615

/-! ## A047615.P9966894626706683790

`∑[8-a(n-1)]` with `a(0)=0, a(1)=5`
-/

namespace A047615.P9966894626706683790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047615.P9966894626706683790

namespace A047615

/-- `∑[8-a(n-1)]` -/
def P9966894626706683790.Spec : Prop :=
  ∀ n, P9966894626706683790.a n = A047615 (n + 1)

end A047615

/-! ## A047615.P1529242691991215889

`4*n+2-gcd(2, n)`
-/

namespace A047615.P1529242691991215889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - (Nat.gcd 2 n : ℤ)

end

end A047615.P1529242691991215889

namespace A047615

/-- `4*n+2-gcd(2, n)` -/
def P1529242691991215889.Spec : Prop :=
  ∀ n, P1529242691991215889.a n = A047615 (n + 1)

end A047615

/-! ## A047615.P3884848482670978529

`xor(1, or(1, 3*n)+n)`
-/

namespace A047615.P3884848482670978529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (3 * n) + n)

end

end A047615.P3884848482670978529

namespace A047615

/-- `xor(1, or(1, 3*n)+n)` -/
def P3884848482670978529.Spec : Prop :=
  ∀ n, (P3884848482670978529.a n : ℤ) = A047615 (n + 1)

end A047615

/-! ## A047615.P14726431525885663770

`∑[∑[ogf((5x+3x^2)/(1+x))]]`
-/

namespace A047615.P14726431525885663770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047615.P14726431525885663770

namespace A047615

/-- `∑[∑[ogf((5x+3x^2)/(1+x))]]` -/
def P14726431525885663770.Spec : Prop :=
  ∀ n, P14726431525885663770.a n = A047615 (n + 1)

end A047615

/-! ## A047615.P12193106666034105686

`ogf((5x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A047615.P12193106666034105686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3] [1, -1, -1, 1] n

end

end A047615.P12193106666034105686

namespace A047615

/-- `ogf((5x+3x^2)/(1-x-x^2+x^3))` -/
def P12193106666034105686.Spec : Prop :=
  ∀ n, P12193106666034105686.a n = A047615 (n + 1)

end A047615

/-! ## A047615.P13648658614955318793

`1-xor(-4, a(n-1))` with `a(0)=0`
-/

namespace A047615.P13648658614955318793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - Int.xor (-4) (a (n - 1))

end

end A047615.P13648658614955318793

namespace A047615

/-- `1-xor(-4, a(n-1))` -/
def P13648658614955318793.Spec : Prop :=
  ∀ n, P13648658614955318793.a n = A047615 (n + 1)

end A047615

/-! ## A047615.P4407375378125893876

`8-floor(-a(n-2))` with `a(0)=0, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A047615.P4407375378125893876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  8 - (-a (n - 2))

end

end A047615.P4407375378125893876

namespace A047615

/-- `8-floor(-a(n-2))` -/
def P4407375378125893876.Spec : Prop :=
  ∀ n, P4407375378125893876.a n = A047615 (n + 1)

end A047615

/-! ## A047615.P6831141851790019062

`8-ceil(-a(n-2))` with `a(0)=0, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A047615.P6831141851790019062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  8 - (-a (n - 2))

end

end A047615.P6831141851790019062

namespace A047615

/-- `8-ceil(-a(n-2))` -/
def P6831141851790019062.Spec : Prop :=
  ∀ n, P6831141851790019062.a n = A047615 (n + 1)

end A047615

/-! ## A047615.P2910890568756862941

`8-round(-a(n-2))` with `a(0)=0, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A047615.P2910890568756862941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  8 - (-a (n - 2))

end

end A047615.P2910890568756862941

namespace A047615

/-- `8-round(-a(n-2))` -/
def P2910890568756862941.Spec : Prop :=
  ∀ n, P2910890568756862941.a n = A047615 (n + 1)

end A047615

/-! ## A047615.P11950572999455981932

`n+1-or(1, -(3*n))`
-/

namespace A047615.P11950572999455981932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.lor 1 (-(3 * n : ℤ))

end

end A047615.P11950572999455981932

namespace A047615

/-- `n+1-or(1, -(3*n))` -/
def P11950572999455981932.Spec : Prop :=
  ∀ n, P11950572999455981932.a n = A047615 (n + 1)

end A047615

/-!
# A047616: Numbers that are congruent to {0, 1, 5} mod 8.

The programs for A047616, the canonical program `A047616.P7708795477510677896` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047616 has offset 1).

The definition of A047616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047616.P7708795477510677896

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047616

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P7708795477510677896.Spec : Prop :=
  ∀ n, P7708795477510677896.a n = A047616 (n + 1)

theorem P7708795477510677896.correct : P7708795477510677896.Spec := by
  intro n
  simp only [A047616, Nat.add_sub_cancel]

end A047616

/-! ## A047616.P776281878853988106

`(24*(n+1)-30+3*cos(2*(n+1)*π/3)+5*sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A047616.P776281878853988106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((24 * (n + 1) : ℤ) - 30 : ℝ) + 3 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + 5 * Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A047616.P776281878853988106

namespace A047616

/-- `(24*(n+1)-30+3*cos(2*(n+1)*π/3)+5*sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P776281878853988106.Spec : Prop :=
  ∀ n, P776281878853988106.a n = (A047616 (n + 1) : ℝ)

end A047616

/-! ## A047616.P12532039870308125870

`comp[or(n+1, xor(3, n))]`
-/

namespace A047616.P12532039870308125870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (Nat.xor 3 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047616.P12532039870308125870

namespace A047616

/-- `comp[or(n+1, xor(3, n))]` -/
def P12532039870308125870.Spec : Prop :=
  ∀ n, (P12532039870308125870.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P4866023472230895968

`a(n-3)+8` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A047616.P4866023472230895968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  a (n - 3) + 8

end

end A047616.P4866023472230895968

namespace A047616

/-- `a(n-3)+8` -/
def P4866023472230895968.Spec : Prop :=
  ∀ n, (P4866023472230895968.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P12580146813542024639

`record[2*n-n²%8]`
-/

namespace A047616.P12580146813542024639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n ^ 2 % 8 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047616.P12580146813542024639

namespace A047616

/-- `record[2*n-n²%8]` -/
def P12580146813542024639.Spec : Prop :=
  ∀ n, P12580146813542024639.a n = A047616 (n + 1)

end A047616

/-! ## A047616.P7665618754599639819

`record[2*n-and(5, n²)]`
-/

namespace A047616.P7665618754599639819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 5 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047616.P7665618754599639819

namespace A047616

/-- `record[2*n-and(5, n²)]` -/
def P7665618754599639819.Spec : Prop :=
  ∀ n, P7665618754599639819.a n = A047616 (n + 1)

end A047616

/-! ## A047616.P4608979956279875677

`comp[n*and(2, n)!-2]`
-/

namespace A047616.P4608979956279875677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.factorial (Nat.land 2 n) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047616.P4608979956279875677

namespace A047616

/-- `comp[n*and(2, n)!-2]` -/
def P4608979956279875677.Spec : Prop :=
  ∀ n, (P4608979956279875677.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P211102023962899624

`comp[xor(2, n*and(2, n)!)]`
-/

namespace A047616.P211102023962899624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n * Nat.factorial (Nat.land 2 n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047616.P211102023962899624

namespace A047616

/-- `comp[xor(2, n*and(2, n)!)]` -/
def P211102023962899624.Spec : Prop :=
  ∀ n, (P211102023962899624.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P14827012782223012607

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047616.P14827012782223012607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047616.P14827012782223012607

namespace A047616

/-- `∑[floor(a(n-3))]` -/
def P14827012782223012607.Spec : Prop :=
  ∀ n, (P14827012782223012607.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P734503856339078429

`comp[or(n+2, 2*n%4)]`
-/

namespace A047616.P734503856339078429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 2) (2 * (n % 4))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047616.P734503856339078429

namespace A047616

/-- `comp[or(n+2, 2*n%4)]` -/
def P734503856339078429.Spec : Prop :=
  ∀ n, (P734503856339078429.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P15188429757223852477

`comp[or(n+2, 2*and(3, n))]`
-/

namespace A047616.P15188429757223852477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 2) (2 * Nat.land 3 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047616.P15188429757223852477

namespace A047616

/-- `comp[or(n+2, 2*and(3, n))]` -/
def P15188429757223852477.Spec : Prop :=
  ∀ n, (P15188429757223852477.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P13075195786052862202

`∑[a(n-3)%5]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=3`
-/

namespace A047616.P13075195786052862202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 3] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047616.P13075195786052862202

namespace A047616

/-- `∑[a(n-3)%5]` -/
def P13075195786052862202.Spec : Prop :=
  ∀ n, (P13075195786052862202.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P8989423179379785903

`ogf((x+4x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A047616.P8989423179379785903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 3] [1, -1, 0, -1, 1] n

end

end A047616.P8989423179379785903

namespace A047616

/-- `ogf((x+4x^2+3x^3)/(1-x-x^3+x^4))` -/
def P8989423179379785903.Spec : Prop :=
  ∀ n, P8989423179379785903.a n = A047616 (n + 1)

end A047616

/-! ## A047616.P17797441347632615971

`∑[5-2^((n+1)%3)]-3`
-/

namespace A047616.P17797441347632615971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (2 ^ ((n + 1) % 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A047616.P17797441347632615971

namespace A047616

/-- `∑[5-2^((n+1)%3)]-3` -/
def P17797441347632615971.Spec : Prop :=
  ∀ n, P17797441347632615971.a n = A047616 (n + 1)

end A047616

/-! ## A047616.P7644163722020214727

`∑[gcd(3, n+1)+(n-1)%3]`
-/

namespace A047616.P7644163722020214727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (n + 1) : ℤ) + Int.tmod ((n : ℤ) - 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047616.P7644163722020214727

namespace A047616

/-- `∑[gcd(3, n+1)+(n-1)%3]` -/
def P7644163722020214727.Spec : Prop :=
  ∀ n, P7644163722020214727.a n = A047616 (n + 1)

end A047616

/-! ## A047616.P12153498324840704321

`comp[or(n+1, or(3, n+1)-n)]`
-/

namespace A047616.P12153498324840704321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) ((Nat.lor 3 (n + 1) : ℤ) - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047616.P12153498324840704321

namespace A047616

/-- `comp[or(n+1, or(3, n+1)-n)]` -/
def P12153498324840704321.Spec : Prop :=
  ∀ n, (P12153498324840704321.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P7276805129757329083

`eq[2*n, gcd(2*n, C(n, 2)²)]`
-/

namespace A047616.P7276805129757329083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.choose n 2 ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047616.P7276805129757329083

namespace A047616

/-- `eq[2*n, gcd(2*n, C(n, 2)²)]` -/
def P7276805129757329083.Spec : Prop :=
  ∀ n, (P7276805129757329083.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P2667770712509590997

`record[2*n-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=1`
-/

namespace A047616.P2667770712509590997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 1] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047616.P2667770712509590997

namespace A047616

/-- `record[2*n-a(n-4)]` -/
def P2667770712509590997.Spec : Prop :=
  ∀ n, P2667770712509590997.a n = A047616 (n + 1)

end A047616

/-! ## A047616.P2504872196474623632

`∑[gcd(4*n, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=3`
-/

namespace A047616.P2504872196474623632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 3] fun n f1 =>
  Nat.gcd (4 * n) (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047616.P2504872196474623632

namespace A047616

/-- `∑[gcd(4*n, a(n-3))]` -/
def P2504872196474623632.Spec : Prop :=
  ∀ n, (P2504872196474623632.a n : ℤ) = A047616 (n + 1)

end A047616

/-! ## A047616.P1324556410209899119

`∪[2*n+2*n+1, 8*n]`
-/

namespace A047616.P1324556410209899119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A047616.P1324556410209899119

namespace A047616

/-- `∪[2*n+2*n+1, 8*n]` -/
def P1324556410209899119.Spec : Prop :=
  ∀ n, (P1324556410209899119.a n : ℤ) = A047616 (n + 1)

end A047616

/-!
# A047617: Numbers that are congruent to {2, 5} mod 8.

The programs for A047617, the canonical program `A047617.P1961931566716950918` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047617 has offset 1).

The definition of A047617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047617.P212686728404416452

`4*n+(n+1)%2+1`
-/

namespace A047617.P212686728404416452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + (n + 1) % 2 + 1

end

end A047617.P212686728404416452

namespace A047617

/-- `4*n+(n+1)%2+1` -/
def P212686728404416452.Spec : Prop :=
  ∀ n, (P212686728404416452.a n : ℤ) = A047617 (n + 1)

end A047617

/-! ## A047617.P1961931566716950918

`8*(n+1)-a(n-1)-9` with `a(0)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047617

/-- `8*(n+1)-a(n-1)-9` -/
def P1961931566716950918.Spec : Prop :=
  ∀ n, P1961931566716950918.a n = A047617 (n + 1)

theorem P1961931566716950918.correct : P1961931566716950918.Spec := by
  intro n
  simp only [A047617, Nat.add_sub_cancel]

end A047617

/-! ## A047617.P18430452306880163799

`4*(n+1)-(5+(-1)^(n+1))/2`
-/

namespace A047617.P18430452306880163799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℚ) - (5 + (-1) ^ (n + 1) : ℚ) / 2

end

end A047617.P18430452306880163799

namespace A047617

/-- `4*(n+1)-(5+(-1)^(n+1))/2` -/
def P18430452306880163799.Spec : Prop :=
  ∀ n, P18430452306880163799.a n = (A047617 (n + 1) : ℚ)

theorem P18430452306880163799.correct : P18430452306880163799.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047617, Nat.add_sub_cancel, A047617.P18430452306880163799.a, A047617.P1961931566716950918.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047617, Nat.add_sub_cancel, A047617.P18430452306880163799.a, A047617.P1961931566716950918.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047617

/-! ## A047617.P12755504848898915976

`ceil(or(5, 12*n)/3)`
-/

namespace A047617.P12755504848898915976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 5 (12 * n) : ℚ) / 3⌉

end

end A047617.P12755504848898915976

namespace A047617

/-- `ceil(or(5, 12*n)/3)` -/
def P12755504848898915976.Spec : Prop :=
  ∀ n, P12755504848898915976.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P12772309892316718532

`floor(or(7, 12*n)/3)`
-/

namespace A047617.P12772309892316718532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 7 (12 * n) : ℚ) / 3⌋

end

end A047617.P12772309892316718532

namespace A047617

/-- `floor(or(7, 12*n)/3)` -/
def P12772309892316718532.Spec : Prop :=
  ∀ n, P12772309892316718532.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P6090023427929009746

`round(or(7, 12*n)/3)`
-/

namespace A047617.P6090023427929009746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 7 (12 * n) : ℚ) / 3)

end

end A047617.P6090023427929009746

namespace A047617

/-- `round(or(7, 12*n)/3)` -/
def P6090023427929009746.Spec : Prop :=
  ∀ n, P6090023427929009746.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P2517693607514992807

`record[xor(1, or(6, n)-3)]`
-/

namespace A047617.P2517693607514992807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((Nat.lor 6 n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047617.P2517693607514992807

namespace A047617

/-- `record[xor(1, or(6, n)-3)]` -/
def P2517693607514992807.Spec : Prop :=
  ∀ n, P2517693607514992807.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P6176195022494789584

`record[xor(1, xor(6, n)-3)]`
-/

namespace A047617.P6176195022494789584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((Nat.xor 6 n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047617.P6176195022494789584

namespace A047617

/-- `record[xor(1, xor(6, n)-3)]` -/
def P6176195022494789584.Spec : Prop :=
  ∀ n, P6176195022494789584.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P18347137314224874375

`∑[8-a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A047617.P18347137314224874375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047617.P18347137314224874375

namespace A047617

/-- `∑[8-a(n-1)]` -/
def P18347137314224874375.Spec : Prop :=
  ∀ n, P18347137314224874375.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P298022203895872653

`∑[∑[ogf((2+3x+3x^2)/(1+x))]]`
-/

namespace A047617.P298022203895872653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047617.P298022203895872653

namespace A047617

/-- `∑[∑[ogf((2+3x+3x^2)/(1+x))]]` -/
def P298022203895872653.Spec : Prop :=
  ∀ n, P298022203895872653.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P11858233313327215564

`ogf((2+3x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A047617.P11858233313327215564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 3] [1, -1, -1, 1] n

end

end A047617.P11858233313327215564

namespace A047617

/-- `ogf((2+3x+3x^2)/(1-x-x^2+x^3))` -/
def P11858233313327215564.Spec : Prop :=
  ∀ n, P11858233313327215564.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P9093692088102814143

`abs(or(1, 5*n)-(n-1))`
-/

namespace A047617.P9093692088102814143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 (5 * n) : ℤ) - ((n : ℤ) - 1)|

end

end A047617.P9093692088102814143

namespace A047617

/-- `abs(or(1, 5*n)-(n-1))` -/
def P9093692088102814143.Spec : Prop :=
  ∀ n, P9093692088102814143.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P14227059231710898403

`lt[2, val(n²+n+2, 2)]`
-/

namespace A047617.P14227059231710898403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047617.P14227059231710898403

namespace A047617

/-- `lt[2, val(n²+n+2, 2)]` -/
def P14227059231710898403.Spec : Prop :=
  ∀ n, (P14227059231710898403.a n : ℤ) = A047617 (n + 1)

end A047617

/-! ## A047617.P6680536927881620021

`eq[1, C(n, a(n-2))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A047617.P6680536927881620021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f2 =>
  Nat.choose n (f2 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047617.P6680536927881620021

namespace A047617

/-- `eq[1, C(n, a(n-2))]` -/
def P6680536927881620021.Spec : Prop :=
  ∀ n, (P6680536927881620021.a n : ℤ) = A047617 (n + 1)

end A047617

/-! ## A047617.P14816435108285302825

`floor(8*n-1-a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047617.P14816435108285302825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (8 * n : ℤ) - 1 - a (n - 1)

end

end A047617.P14816435108285302825

namespace A047617

/-- `floor(8*n-1-a(n-1))` -/
def P14816435108285302825.Spec : Prop :=
  ∀ n, P14816435108285302825.a n = A047617 (n + 1)

theorem P14816435108285302825.correct : P14816435108285302825.Spec := by
  intro n
  simp only [A047617, Nat.add_sub_cancel, A047617.P14816435108285302825.a, A047617.P1961931566716950918.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A047617

/-! ## A047617.P4716424184760804027

`Δ[floor(C(2*n, 2)+(n+1)/2)]`
-/

namespace A047617.P4716424184760804027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n) 2 : ℚ) + (n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047617.P4716424184760804027

namespace A047617

/-- `Δ[floor(C(2*n, 2)+(n+1)/2)]` -/
def P4716424184760804027.Spec : Prop :=
  ∀ n, P4716424184760804027.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P11331534921681293424

`floor(a(n-1)-((-1)^a(n-1)-4))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A047617.P11331534921681293424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) - ((-1 : ℚ) ^ (a (n - 1) : ℤ) - 4)⌋

end

end A047617.P11331534921681293424

namespace A047617

/-- `floor(a(n-1)-((-1)^a(n-1)-4))` -/
def P11331534921681293424.Spec : Prop :=
  ∀ n, P11331534921681293424.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P16787767026136685095

`xor(1, A047457(n+1))`
-/

namespace A047617.P16787767026136685095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A047457 (n + 1))

end

end A047617.P16787767026136685095

namespace A047617

/-- `xor(1, A047457(n+1))` -/
def P16787767026136685095.Spec : Prop :=
  ∀ n, P16787767026136685095.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P14025457557863806843

`∑[A163821(a(n-1))]` with `a(0)=2`
-/

namespace A047617.P14025457557863806843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A163821 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047617.P14025457557863806843

namespace A047617

/-- `∑[A163821(a(n-1))]` -/
def P14025457557863806843.Spec : Prop :=
  ∀ n, P14025457557863806843.a n = A047617 (n + 1)

end A047617

/-! ## A047617.P6252424015209389709

`A017593(n)%A173512(n)`
-/

namespace A047617.P6252424015209389709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017593 n) (A173512 n)

end

end A047617.P6252424015209389709

namespace A047617

/-- `A017593(n)%A173512(n)` -/
def P6252424015209389709.Spec : Prop :=
  ∀ n, P6252424015209389709.a n = A047617 (n + 1)

end A047617

/-!
# A047618: Numbers that are congruent to {0, 2, 5} mod 8.

The programs for A047618, the canonical program `A047618.P13110766658431456357` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047618 has offset 1).

The definition of A047618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047618.P10004505700605440131

`floor(8*n/3)`
-/

namespace A047618.P10004505700605440131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 * n : ℚ) / 3⌋

end

end A047618.P10004505700605440131

namespace A047618

/-- `floor(8*n/3)` -/
def P10004505700605440131.Spec : Prop :=
  ∀ n, P10004505700605440131.a n = A047618 (n + 1)

end A047618

/-! ## A047618.P13110766658431456357

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047618

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P13110766658431456357.Spec : Prop :=
  ∀ n, P13110766658431456357.a n = A047618 (n + 1)

theorem P13110766658431456357.correct : P13110766658431456357.Spec := by
  intro n
  simp only [A047618, Nat.add_sub_cancel]

end A047618

/-! ## A047618.P10494127417649991531

`(8*(n+1)-9+2*sin(2*(n+1)*π/3)/sqrt(3))/3`
-/

namespace A047618.P10494127417649991531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((8 * (n + 1) : ℤ) - 9 : ℝ) + 2 * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3) / Real.sqrt (3 : ℝ)) / 3

end

end A047618.P10494127417649991531

namespace A047618

/-- `(8*(n+1)-9+2*sin(2*(n+1)*π/3)/sqrt(3))/3` -/
def P10494127417649991531.Spec : Prop :=
  ∀ n, P10494127417649991531.a n = (A047618 (n + 1) : ℝ)

end A047618

/-! ## A047618.P15514638623601523874

`∑[dr(∑[6*n])/3]`
-/

namespace A047618.P15514638623601523874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P15514638623601523874

namespace A047618

/-- `∑[dr(∑[6*n])/3]` -/
def P15514638623601523874.Spec : Prop :=
  ∀ n, P15514638623601523874.a n = (A047618 (n + 1) : ℚ)

end A047618

/-! ## A047618.P2758701886118902999

`∑[sqrt(dr(∑[2*n]²))]`
-/

namespace A047618.P2758701886118902999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P2758701886118902999

namespace A047618

/-- `∑[sqrt(dr(∑[2*n]²))]` -/
def P2758701886118902999.Spec : Prop :=
  ∀ n, P2758701886118902999.a n = (A047618 (n + 1) : ℝ)

end A047618

/-! ## A047618.P8647423100141829937

`a(n-3)+8` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A047618.P8647423100141829937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  a (n - 3) + 8

end

end A047618.P8647423100141829937

namespace A047618

/-- `a(n-3)+8` -/
def P8647423100141829937.Spec : Prop :=
  ∀ n, (P8647423100141829937.a n : ℤ) = A047618 (n + 1)

end A047618

/-! ## A047618.P3258248924989187153

`∑[3-∑[n]%3]-3`
-/

namespace A047618.P3258248924989187153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A047618.P3258248924989187153

namespace A047618

/-- `∑[3-∑[n]%3]-3` -/
def P3258248924989187153.Spec : Prop :=
  ∀ n, P3258248924989187153.a n = A047618 (n + 1)

end A047618

/-! ## A047618.P16795830339042178159

`record[2*n-and(3, -n)]`
-/

namespace A047618.P16795830339042178159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.land 3 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047618.P16795830339042178159

namespace A047618

/-- `record[2*n-and(3, -n)]` -/
def P16795830339042178159.Spec : Prop :=
  ∀ n, P16795830339042178159.a n = A047618 (n + 1)

end A047618

/-! ## A047618.P5571793976845989052

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A047618.P5571793976845989052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P5571793976845989052

namespace A047618

/-- `∑[abs(a(n-3))]` -/
def P5571793976845989052.Spec : Prop :=
  ∀ n, (P5571793976845989052.a n : ℤ) = A047618 (n + 1)

end A047618

/-! ## A047618.P12180670596296271374

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A047618.P12180670596296271374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P12180670596296271374

namespace A047618

/-- `∑[dr(a(n-3))]` -/
def P12180670596296271374.Spec : Prop :=
  ∀ n, (P12180670596296271374.a n : ℤ) = A047618 (n + 1)

end A047618

/-! ## A047618.P8554431584547625714

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047618.P8554431584547625714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P8554431584547625714

namespace A047618

/-- `∑[floor(a(n-3))]` -/
def P8554431584547625714.Spec : Prop :=
  ∀ n, (P8554431584547625714.a n : ℤ) = A047618 (n + 1)

end A047618

/-! ## A047618.P13145877975447797286

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047618.P13145877975447797286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P13145877975447797286

namespace A047618

/-- `∑[ceil(a(n-3))]` -/
def P13145877975447797286.Spec : Prop :=
  ∀ n, (P13145877975447797286.a n : ℤ) = A047618 (n + 1)

end A047618

/-! ## A047618.P13378563537503642259

`∑[round(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047618.P13378563537503642259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P13378563537503642259

namespace A047618

/-- `∑[round(a(n-3))]` -/
def P13378563537503642259.Spec : Prop :=
  ∀ n, (P13378563537503642259.a n : ℤ) = A047618 (n + 1)

end A047618

/-! ## A047618.P11836021426689538813

`record[or(3, 3*n)-(n+3)]`
-/

namespace A047618.P11836021426689538813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (3 * n) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047618.P11836021426689538813

namespace A047618

/-- `record[or(3, 3*n)-(n+3)]` -/
def P11836021426689538813.Spec : Prop :=
  ∀ n, P11836021426689538813.a n = A047618 (n + 1)

end A047618

/-! ## A047618.P6093503391788662980

`record[2*n-xor(5, n+5)]`
-/

namespace A047618.P6093503391788662980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.xor 5 (n + 5) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047618.P6093503391788662980

namespace A047618

/-- `record[2*n-xor(5, n+5)]` -/
def P6093503391788662980.Spec : Prop :=
  ∀ n, P6093503391788662980.a n = A047618 (n + 1)

end A047618

/-! ## A047618.P502006519918709681

`∑[gcd(6, a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A047618.P502006519918709681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P502006519918709681

namespace A047618

/-- `∑[gcd(6, a(n-3))]` -/
def P502006519918709681.Spec : Prop :=
  ∀ n, (P502006519918709681.a n : ℤ) = A047618 (n + 1)

end A047618

/-! ## A047618.P9849325111146705990

`∑[or(2, a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A047618.P9849325111146705990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3] fun n f1 =>
  Nat.lor 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P9849325111146705990

namespace A047618

/-- `∑[or(2, a(n-3))]` -/
def P9849325111146705990.Spec : Prop :=
  ∀ n, (P9849325111146705990.a n : ℤ) = A047618 (n + 1)

end A047618

/-! ## A047618.P18048915736631487629

`∑[and(3, a(n-3))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A047618.P18048915736631487629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P18048915736631487629

namespace A047618

/-- `∑[and(3, a(n-3))]` -/
def P18048915736631487629.Spec : Prop :=
  ∀ n, (P18048915736631487629.a n : ℤ) = A047618 (n + 1)

end A047618

/-! ## A047618.P8608395815517051879

`∑[∑[ogf((2x+3x^2+3x^3)/(1+x+x^2))]]`
-/

namespace A047618.P8608395815517051879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 3] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047618.P8608395815517051879

namespace A047618

/-- `∑[∑[ogf((2x+3x^2+3x^3)/(1+x+x^2))]]` -/
def P8608395815517051879.Spec : Prop :=
  ∀ n, P8608395815517051879.a n = A047618 (n + 1)

end A047618

/-! ## A047618.P13136317611517654086

`ogf((2x+3x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A047618.P13136317611517654086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 3] [1, -1, 0, -1, 1] n

end

end A047618.P13136317611517654086

namespace A047618

/-- `ogf((2x+3x^2+3x^3)/(1-x-x^3+x^4))` -/
def P13136317611517654086.Spec : Prop :=
  ∀ n, P13136317611517654086.a n = A047618 (n + 1)

end A047618

/-!
# A047619: Numbers that are congruent to {1, 2, 5} mod 8.

The programs for A047619, the canonical program `A047619.P17108127697745199941` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047619 has offset 1).

The definition of A047619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047619.P17108127697745199941

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047619

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P17108127697745199941.Spec : Prop :=
  ∀ n, P17108127697745199941.a n = A047619 (n + 1)

theorem P17108127697745199941.correct : P17108127697745199941.Spec := by
  intro n
  simp only [A047619, Nat.add_sub_cancel]

end A047619

/-! ## A047619.P4619801562379939101

`(24*(n+1)-24-3*cos(2*(n+1)*π/3)+5*sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A047619.P4619801562379939101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((24 * (n + 1) : ℤ) - 24 : ℝ) - 3 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + 5 * Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A047619.P4619801562379939101

namespace A047619

/-- `(24*(n+1)-24-3*cos(2*(n+1)*π/3)+5*sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P4619801562379939101.Spec : Prop :=
  ∀ n, P4619801562379939101.a n = (A047619 (n + 1) : ℝ)

end A047619

/-! ## A047619.P4026525310599999246

`record[and(n+3, or(1, n))]`
-/

namespace A047619.P4026525310599999246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 3) (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047619.P4026525310599999246

namespace A047619

/-- `record[and(n+3, or(1, n))]` -/
def P4026525310599999246.Spec : Prop :=
  ∀ n, (P4026525310599999246.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P1550280722111253135

`comp[or(n, 2*n%4)]`
-/

namespace A047619.P1550280722111253135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * (n % 4))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047619.P1550280722111253135

namespace A047619

/-- `comp[or(n, 2*n%4)]` -/
def P1550280722111253135.Spec : Prop :=
  ∀ n, (P1550280722111253135.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P14225229209877962010

`record[and(n+3, xor(1, n))]`
-/

namespace A047619.P14225229209877962010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 3) (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047619.P14225229209877962010

namespace A047619

/-- `record[and(n+3, xor(1, n))]` -/
def P14225229209877962010.Spec : Prop :=
  ∀ n, (P14225229209877962010.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P12910887279542942385

`comp[or(n, 2*and(3, n))]`
-/

namespace A047619.P12910887279542942385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * Nat.land 3 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047619.P12910887279542942385

namespace A047619

/-- `comp[or(n, 2*and(3, n))]` -/
def P12910887279542942385.Spec : Prop :=
  ∀ n, (P12910887279542942385.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P18162547454317696549

`a(n-3)+8` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A047619.P18162547454317696549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 3) + 8

end

end A047619.P18162547454317696549

namespace A047619

/-- `a(n-3)+8` -/
def P18162547454317696549.Spec : Prop :=
  ∀ n, (P18162547454317696549.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P14389020058031157667

`∑[dr(6*n)%5]+1`
-/

namespace A047619.P14389020058031157667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (6 * n : ℤ) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A047619.P14389020058031157667

namespace A047619

/-- `∑[dr(6*n)%5]+1` -/
def P14389020058031157667.Spec : Prop :=
  ∀ n, (P14389020058031157667.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P5815532564419319194

`xor(1, ∑[dr(3*n)%5])`
-/

namespace A047619.P5815532564419319194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047619.P5815532564419319194

namespace A047619

/-- `xor(1, ∑[dr(3*n)%5])` -/
def P5815532564419319194.Spec : Prop :=
  ∀ n, (P5815532564419319194.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P17540265675621377985

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047619.P17540265675621377985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047619.P17540265675621377985

namespace A047619

/-- `∑[floor(a(n-3))]` -/
def P17540265675621377985.Spec : Prop :=
  ∀ n, (P17540265675621377985.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P694641196487438752

`record[or(2, xor(5, n)-3)]-1`
-/

namespace A047619.P694641196487438752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((Nat.xor 5 n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A047619.P694641196487438752

namespace A047619

/-- `record[or(2, xor(5, n)-3)]-1` -/
def P694641196487438752.Spec : Prop :=
  ∀ n, P694641196487438752.a n = A047619 (n + 1)

end A047619

/-! ## A047619.P81746893960107815

`record[xor(7, xor(5, n)-1)]-2`
-/

namespace A047619.P81746893960107815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 ((Nat.xor 5 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A047619.P81746893960107815

namespace A047619

/-- `record[xor(7, xor(5, n)-1)]-2` -/
def P81746893960107815.Spec : Prop :=
  ∀ n, P81746893960107815.a n = A047619 (n + 1)

end A047619

/-! ## A047619.P8093046305965780899

`comp[and(n+1, xor(3, n))]-2`
-/

namespace A047619.P8093046305965780899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (Nat.xor 3 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 2

end

end A047619.P8093046305965780899

namespace A047619

/-- `comp[and(n+1, xor(3, n))]-2` -/
def P8093046305965780899.Spec : Prop :=
  ∀ n, P8093046305965780899.a n = A047619 (n + 1)

end A047619

/-! ## A047619.P18313901647387130246

`record[and(n, n+1)+1+n]`
-/

namespace A047619.P18313901647387130246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047619.P18313901647387130246

namespace A047619

/-- `record[and(n, n+1)+1+n]` -/
def P18313901647387130246.Spec : Prop :=
  ∀ n, (P18313901647387130246.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P12893551792334281425

`∑[a(n-3)%5]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A047619.P12893551792334281425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047619.P12893551792334281425

namespace A047619

/-- `∑[a(n-3)%5]` -/
def P12893551792334281425.Spec : Prop :=
  ∀ n, (P12893551792334281425.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P4529665854870587097

`lt[val(n+2, 2), (n+1)%4]`
-/

namespace A047619.P4529665854870587097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047619.P4529665854870587097

namespace A047619

/-- `lt[val(n+2, 2), (n+1)%4]` -/
def P4529665854870587097.Spec : Prop :=
  ∀ n, (P4529665854870587097.a n : ℤ) = A047619 (n + 1)

end A047619

/-! ## A047619.P1072844635714004443

`∑[∑[ogf((1+x+3x^2+3x^3)/(1+x+x^2))]]`
-/

namespace A047619.P1072844635714004443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 3] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047619.P1072844635714004443

namespace A047619

/-- `∑[∑[ogf((1+x+3x^2+3x^3)/(1+x+x^2))]]` -/
def P1072844635714004443.Spec : Prop :=
  ∀ n, P1072844635714004443.a n = A047619 (n + 1)

end A047619

/-! ## A047619.P6733292761163209976

`ogf((1+x+3x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A047619.P6733292761163209976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 3] [1, -1, 0, -1, 1] n

end

end A047619.P6733292761163209976

namespace A047619

/-- `ogf((1+x+3x^2+3x^3)/(1-x-x^3+x^4))` -/
def P6733292761163209976.Spec : Prop :=
  ∀ n, P6733292761163209976.a n = A047619 (n + 1)

end A047619

/-! ## A047619.P4964722918308265179

`record[2*(n+1)-gcd(4, n+1)]`
-/

namespace A047619.P4964722918308265179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (Nat.gcd 4 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047619.P4964722918308265179

namespace A047619

/-- `record[2*(n+1)-gcd(4, n+1)]` -/
def P4964722918308265179.Spec : Prop :=
  ∀ n, P4964722918308265179.a n = A047619 (n + 1)

end A047619

/-! ## A047619.P4829892286249937695

`record[2*n+1-val(n+1, 2)]`
-/

namespace A047619.P4829892286249937695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047619.P4829892286249937695

namespace A047619

/-- `record[2*n+1-val(n+1, 2)]` -/
def P4829892286249937695.Spec : Prop :=
  ∀ n, P4829892286249937695.a n = A047619 (n + 1)

end A047619

/-!
# A047620: Numbers that are congruent to {0, 1, 2, 5} mod 8.

The programs for A047620, the canonical program `A047620.P14723656410441067860` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047620 has offset 1).

The definition of A047620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047620.P8618967164742545027

`2*(n+1)-3+sin((n+1)*π/2)`
-/

namespace A047620.P8618967164742545027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 3 : ℝ) + Real.sin ((n + 1 : ℝ) * Real.pi / 2)

end

end A047620.P8618967164742545027

namespace A047620

/-- `2*(n+1)-3+sin((n+1)*π/2)` -/
def P8618967164742545027.Spec : Prop :=
  ∀ n, P8618967164742545027.a n = (A047620 (n + 1) : ℝ)

end A047620

/-! ## A047620.P14723656410441067860

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047620

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P14723656410441067860.Spec : Prop :=
  ∀ n, P14723656410441067860.a n = A047620 (n + 1)

theorem P14723656410441067860.correct : P14723656410441067860.Spec := by
  intro n
  simp only [A047620, Nat.add_sub_cancel]

end A047620

/-! ## A047620.P16714405191552663244

`∑[gcd(3, n%4)]-3`
-/

namespace A047620.P16714405191552663244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047620.P16714405191552663244

namespace A047620

/-- `∑[gcd(3, n%4)]-3` -/
def P16714405191552663244.Spec : Prop :=
  ∀ n, P16714405191552663244.a n = A047620 (n + 1)

end A047620

/-! ## A047620.P18190097928516835456

`comp[gcd(4, n)+2*n]`
-/

namespace A047620.P18190097928516835456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047620.P18190097928516835456

namespace A047620

/-- `comp[gcd(4, n)+2*n]` -/
def P18190097928516835456.Spec : Prop :=
  ∀ n, (P18190097928516835456.a n : ℤ) = A047620 (n + 1)

end A047620

/-! ## A047620.P11756409511061650635

`record[n-and(4, lcm(2, n))]`
-/

namespace A047620.P11756409511061650635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 4 (Nat.lcm 2 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047620.P11756409511061650635

namespace A047620

/-- `record[n-and(4, lcm(2, n))]` -/
def P11756409511061650635.Spec : Prop :=
  ∀ n, P11756409511061650635.a n = A047620 (n + 1)

end A047620

/-! ## A047620.P14946933527184976758

`comp[or(n+3, xor(1, n))]`
-/

namespace A047620.P14946933527184976758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 3) (Nat.xor 1 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047620.P14946933527184976758

namespace A047620

/-- `comp[or(n+3, xor(1, n))]` -/
def P14946933527184976758.Spec : Prop :=
  ∀ n, (P14946933527184976758.a n : ℤ) = A047620 (n + 1)

end A047620

/-! ## A047620.P9573326988236938973

`comp[or(n+3, and(6, n))]`
-/

namespace A047620.P9573326988236938973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 3) (Nat.land 6 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047620.P9573326988236938973

namespace A047620

/-- `comp[or(n+3, and(6, n))]` -/
def P9573326988236938973.Spec : Prop :=
  ∀ n, (P9573326988236938973.a n : ℤ) = A047620 (n + 1)

end A047620

/-! ## A047620.P14473853342599393891

`∑[C(3, a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A047620.P14473853342599393891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.choose 3 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047620.P14473853342599393891

namespace A047620

/-- `∑[C(3, a(n-2))]` -/
def P14473853342599393891.Spec : Prop :=
  ∀ n, (P14473853342599393891.a n : ℤ) = A047620 (n + 1)

end A047620

/-! ## A047620.P13755472384968561716

`lt[5/xor(n, n-3), 1]`
-/

namespace A047620.P13755472384968561716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (Int.xor (n : ℤ) ((n : ℤ) - 3) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A047620.P13755472384968561716

namespace A047620

/-- `lt[5/xor(n, n-3), 1]` -/
def P13755472384968561716.Spec : Prop :=
  ∀ n, (P13755472384968561716.a n : ℤ) = A047620 (n + 1)

end A047620

/-! ## A047620.P15064032967292568373

`2*n-sqrt(n²%8)`
-/

namespace A047620.P15064032967292568373
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) - Real.sqrt ((n ^ 2 % 8 : ℕ) : ℝ)

end

end A047620.P15064032967292568373

namespace A047620

/-- `2*n-sqrt(n²%8)` -/
def P15064032967292568373.Spec : Prop :=
  ∀ n, P15064032967292568373.a n = (A047620 (n + 1) : ℝ)

end A047620

/-! ## A047620.P14014408741230024145

`2*n-sqrt(and(5, n²))`
-/

namespace A047620.P14014408741230024145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) - Real.sqrt (Nat.land 5 (n ^ 2) : ℝ)

end

end A047620.P14014408741230024145

namespace A047620

/-- `2*n-sqrt(and(5, n²))` -/
def P14014408741230024145.Spec : Prop :=
  ∀ n, P14014408741230024145.a n = (A047620 (n + 1) : ℝ)

end A047620

/-! ## A047620.P16485704562529763675

`-or(-(2*n), and(3, n))`
-/

namespace A047620.P16485704562529763675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-(2 * n : ℤ)) (Nat.land 3 n : ℤ)

end

end A047620.P16485704562529763675

namespace A047620

/-- `-or(-(2*n), and(3, n))` -/
def P16485704562529763675.Spec : Prop :=
  ∀ n, P16485704562529763675.a n = A047620 (n + 1)

end A047620

/-! ## A047620.P9189187274363933861

`∑[(-1)^∑[n]+2]-3`
-/

namespace A047620.P9189187274363933861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A047620.P9189187274363933861

namespace A047620

/-- `∑[(-1)^∑[n]+2]-3` -/
def P9189187274363933861.Spec : Prop :=
  ∀ n, P9189187274363933861.a n = A047620 (n + 1)

end A047620

/-! ## A047620.P5395066474395351196

`∑[4-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A047620.P5395066474395351196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  4 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047620.P5395066474395351196

namespace A047620

/-- `∑[4-a(n-2)]` -/
def P5395066474395351196.Spec : Prop :=
  ∀ n, P5395066474395351196.a n = A047620 (n + 1)

end A047620

/-! ## A047620.P5095132817049295184

`-(∑[or(n+1, -3)]+3)`
-/

namespace A047620.P5095132817049295184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A047620.P5095132817049295184

namespace A047620

/-- `-(∑[or(n+1, -3)]+3)` -/
def P5095132817049295184.Spec : Prop :=
  ∀ n, P5095132817049295184.a n = A047620 (n + 1)

end A047620

/-! ## A047620.P6062597826387267095

`lt[1, (4-xor(n, n-3))²]`
-/

namespace A047620.P6062597826387267095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - Int.xor (n : ℤ) ((n : ℤ) - 3)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047620.P6062597826387267095

namespace A047620

/-- `lt[1, (4-xor(n, n-3))²]` -/
def P6062597826387267095.Spec : Prop :=
  ∀ n, (P6062597826387267095.a n : ℤ) = A047620 (n + 1)

end A047620

/-! ## A047620.P14923600092941714795

`comp[or(n, or(2, n+1)+1)]`
-/

namespace A047620.P14923600092941714795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.lor 2 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A047620.P14923600092941714795

namespace A047620

/-- `comp[or(n, or(2, n+1)+1)]` -/
def P14923600092941714795.Spec : Prop :=
  ∀ n, (P14923600092941714795.a n : ℤ) = A047620 (n + 1)

end A047620

/-! ## A047620.P6509062035300446237

`ogf((x+3x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A047620.P6509062035300446237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 3] [1, -2, 2, -2, 1] n

end

end A047620.P6509062035300446237

namespace A047620

/-- `ogf((x+3x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P6509062035300446237.Spec : Prop :=
  ∀ n, P6509062035300446237.a n = A047620 (n + 1)

end A047620

/-! ## A047620.P1888539898743688730

`∑[(or(2, n+1)+1)%(n+1)]`
-/

namespace A047620.P1888539898743688730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n + 1) + 1) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047620.P1888539898743688730

namespace A047620

/-- `∑[(or(2, n+1)+1)%(n+1)]` -/
def P1888539898743688730.Spec : Prop :=
  ∀ n, (P1888539898743688730.a n : ℤ) = A047620 (n + 1)

end A047620

/-!
# A047621: Numbers that are congruent to {3, 5} mod 8.

The programs for A047621, the canonical program `A047621.P12506404987835227544` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047621 has offset 1).

The definition of A047621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047621.P12506404987835227544

`8*n-a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047621

/-- `8*n-a(n-1)` -/
def P12506404987835227544.Spec : Prop :=
  ∀ n, P12506404987835227544.a n = A047621 (n + 1)

theorem P12506404987835227544.correct : P12506404987835227544.Spec := by
  intro n
  simp only [A047621, Nat.add_sub_cancel]

end A047621

/-! ## A047621.P11770959028367650862

`4*(n+1)-2-(-1)^(n+1)`
-/

namespace A047621.P11770959028367650862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - 2 - (-1) ^ (n + 1)

end

end A047621.P11770959028367650862

namespace A047621

/-- `4*(n+1)-2-(-1)^(n+1)` -/
def P11770959028367650862.Spec : Prop :=
  ∀ n, P11770959028367650862.a n = A047621 (n + 1)

theorem P11770959028367650862.correct : P11770959028367650862.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A047621, Nat.add_sub_cancel, A047621.P11770959028367650862.a, A047621.P12506404987835227544.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A047621, Nat.add_sub_cancel, A047621.P11770959028367650862.a, A047621.P12506404987835227544.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047621

/-! ## A047621.P31433502557186868

`record[or(5, n)-2]`
-/

namespace A047621.P31433502557186868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047621.P31433502557186868

namespace A047621

/-- `record[or(5, n)-2]` -/
def P31433502557186868.Spec : Prop :=
  ∀ n, P31433502557186868.a n = A047621 (n + 1)

end A047621

/-! ## A047621.P10103080947500781884

`record[xor(5, n)-2]`
-/

namespace A047621.P10103080947500781884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047621.P10103080947500781884

namespace A047621

/-- `record[xor(5, n)-2]` -/
def P10103080947500781884.Spec : Prop :=
  ∀ n, P10103080947500781884.a n = A047621 (n + 1)

end A047621

/-! ## A047621.P1873481689619138252

`record[and(n, -6)+3]`
-/

namespace A047621.P1873481689619138252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047621.P1873481689619138252

namespace A047621

/-- `record[and(n, -6)+3]` -/
def P1873481689619138252.Spec : Prop :=
  ∀ n, P1873481689619138252.a n = A047621 (n + 1)

end A047621

/-! ## A047621.P8679534268496617113

`lt[n, xor(5, n-3)]`
-/

namespace A047621.P8679534268496617113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047621.P8679534268496617113

namespace A047621

/-- `lt[n, xor(5, n-3)]` -/
def P8679534268496617113.Spec : Prop :=
  ∀ n, (P8679534268496617113.a n : ℤ) = A047621 (n + 1)

end A047621

/-! ## A047621.P4840521528267119455

`eq[n², or(8, n²)]`
-/

namespace A047621.P4840521528267119455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047621.P4840521528267119455

namespace A047621

/-- `eq[n², or(8, n²)]` -/
def P4840521528267119455.Spec : Prop :=
  ∀ n, (P4840521528267119455.a n : ℤ) = A047621 (n + 1)

end A047621

/-! ## A047621.P12817168793065055976

`lt[xor(8, n²), n²]`
-/

namespace A047621.P12817168793065055976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047621.P12817168793065055976

namespace A047621

/-- `lt[xor(8, n²), n²]` -/
def P12817168793065055976.Spec : Prop :=
  ∀ n, (P12817168793065055976.a n : ℤ) = A047621 (n + 1)

end A047621

/-! ## A047621.P11252484006451741876

`record[xor(2, n)+1+n]`
-/

namespace A047621.P11252484006451741876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047621.P11252484006451741876

namespace A047621

/-- `record[xor(2, n)+1+n]` -/
def P11252484006451741876.Spec : Prop :=
  ∀ n, (P11252484006451741876.a n : ℤ) = A047621 (n + 1)

end A047621

/-! ## A047621.P8903487997377187009

`record[3-(and(5, n)-n)]`
-/

namespace A047621.P8903487997377187009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((Nat.land 5 n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047621.P8903487997377187009

namespace A047621

/-- `record[3-(and(5, n)-n)]` -/
def P8903487997377187009.Spec : Prop :=
  ∀ n, P8903487997377187009.a n = A047621 (n + 1)

end A047621

/-! ## A047621.P14988446380333296951

`xor(3, a(n-1)+3)` with `a(0)=3`
-/

namespace A047621.P14988446380333296951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 3 (a (n - 1) + 3)

end

end A047621.P14988446380333296951

namespace A047621

/-- `xor(3, a(n-1)+3)` -/
def P14988446380333296951.Spec : Prop :=
  ∀ n, (P14988446380333296951.a n : ℤ) = A047621 (n + 1)

end A047621

/-! ## A047621.P18258769598264749820

`∑[8-a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A047621.P18258769598264749820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047621.P18258769598264749820

namespace A047621

/-- `∑[8-a(n-1)]` -/
def P18258769598264749820.Spec : Prop :=
  ∀ n, P18258769598264749820.a n = A047621 (n + 1)

end A047621

/-! ## A047621.P7310747189444088997

`eq[4, and(n+1, 1-n)]`
-/

namespace A047621.P7310747189444088997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047621.P7310747189444088997

namespace A047621

/-- `eq[4, and(n+1, 1-n)]` -/
def P7310747189444088997.Spec : Prop :=
  ∀ n, (P7310747189444088997.a n : ℤ) = A047621 (n + 1)

end A047621

/-! ## A047621.P3100767318323116916

`eq[n, xor(5, n+1)+2]`
-/

namespace A047621.P3100767318323116916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047621.P3100767318323116916

namespace A047621

/-- `eq[n, xor(5, n+1)+2]` -/
def P3100767318323116916.Spec : Prop :=
  ∀ n, (P3100767318323116916.a n : ℤ) = A047621 (n + 1)

end A047621

/-! ## A047621.P14280419855194107823

`lt[xor(5, n+2)+1, n]`
-/

namespace A047621.P14280419855194107823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (n + 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047621.P14280419855194107823

namespace A047621

/-- `lt[xor(5, n+2)+1, n]` -/
def P14280419855194107823.Spec : Prop :=
  ∀ n, (P14280419855194107823.a n : ℤ) = A047621 (n + 1)

end A047621

/-! ## A047621.P2079455878564540208

`Δ[2*n²-gcd(2, n)]`
-/

namespace A047621.P2079455878564540208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047621.P2079455878564540208

namespace A047621

/-- `Δ[2*n²-gcd(2, n)]` -/
def P2079455878564540208.Spec : Prop :=
  ∀ n, P2079455878564540208.a n = A047621 (n + 1)

end A047621

/-! ## A047621.P752610566160567358

`∑[∑[ogf((3+2x+3x^2)/(1+x))]]`
-/

namespace A047621.P752610566160567358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047621.P752610566160567358

namespace A047621

/-- `∑[∑[ogf((3+2x+3x^2)/(1+x))]]` -/
def P752610566160567358.Spec : Prop :=
  ∀ n, P752610566160567358.a n = A047621 (n + 1)

end A047621

/-! ## A047621.P5831778192707258093

`ogf((3+2x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A047621.P5831778192707258093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 3] [1, -1, -1, 1] n

end

end A047621.P5831778192707258093

namespace A047621

/-- `ogf((3+2x+3x^2)/(1-x-x^2+x^3))` -/
def P5831778192707258093.Spec : Prop :=
  ∀ n, P5831778192707258093.a n = A047621 (n + 1)

end A047621

/-! ## A047621.P16160052266310146398

`∑[A040008(n)]`
-/

namespace A047621.P16160052266310146398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047621.P16160052266310146398

namespace A047621

/-- `∑[A040008(n)]` -/
def P16160052266310146398.Spec : Prop :=
  ∀ n, P16160052266310146398.a n = A047621 (n + 1)

end A047621

/-! ## A047621.P18322697919695017402

`record[abs(A134429(n))]`
-/

namespace A047621.P18322697919695017402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134429 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047621.P18322697919695017402

namespace A047621

/-- `record[abs(A134429(n))]` -/
def P18322697919695017402.Spec : Prop :=
  ∀ n, P18322697919695017402.a n = A047621 (n + 1)

end A047621

/-!
# A047622: Numbers that are congruent to {0, 3, 5} mod 8.

The programs for A047622, the canonical program `A047622.P15642780561433980389` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047622 has offset 1).

The definition of A047622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047622.P2367207949222860269

`floor((8*(n+1)-7)/3)`
-/

namespace A047622.P2367207949222860269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((8 * (n + 1) : ℤ) - 7 : ℚ) / 3⌋

end

end A047622.P2367207949222860269

namespace A047622

/-- `floor((8*(n+1)-7)/3)` -/
def P2367207949222860269.Spec : Prop :=
  ∀ n, P2367207949222860269.a n = A047622 (n + 1)

end A047622

/-! ## A047622.P15642780561433980389

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047622

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P15642780561433980389.Spec : Prop :=
  ∀ n, P15642780561433980389.a n = A047622 (n + 1)

theorem P15642780561433980389.correct : P15642780561433980389.Spec := by
  intro n
  simp only [A047622, Nat.add_sub_cancel]

end A047622

/-! ## A047622.P17337085064297624468

`(24*(n+1)-24-3*cos(2*(n+1)*π/3)-sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A047622.P17337085064297624468
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((24 * (n + 1) : ℤ) - 24 : ℝ) - 3 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) - Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A047622.P17337085064297624468

namespace A047622

/-- `(24*(n+1)-24-3*cos(2*(n+1)*π/3)-sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P17337085064297624468.Spec : Prop :=
  ∀ n, P17337085064297624468.a n = (A047622 (n + 1) : ℝ)

end A047622

/-! ## A047622.P2951441036747893129

`A047408(n+1)-1`
-/

namespace A047622.P2951441036747893129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1) - 1

end

end A047622.P2951441036747893129

namespace A047622

/-- `A047408(n+1)-1` -/
def P2951441036747893129.Spec : Prop :=
  ∀ n, P2951441036747893129.a n = A047622 (n + 1)

end A047622

/-! ## A047622.P12326729993567979207

`a(n-3)+8` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A047622.P12326729993567979207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n a =>
  a (n - 3) + 8

end

end A047622.P12326729993567979207

namespace A047622

/-- `a(n-3)+8` -/
def P12326729993567979207.Spec : Prop :=
  ∀ n, (P12326729993567979207.a n : ℤ) = A047622 (n + 1)

end A047622

/-! ## A047622.P9609473265725446717

`floor(record[xor(7, n)]/3)-2`
-/

namespace A047622.P9609473265725446717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌋ - 2

end

end A047622.P9609473265725446717

namespace A047622

/-- `floor(record[xor(7, n)]/3)-2` -/
def P9609473265725446717.Spec : Prop :=
  ∀ n, P9609473265725446717.a n = A047622 (n + 1)

end A047622

/-! ## A047622.P3226272881956477368

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A047622.P3226272881956477368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047622.P3226272881956477368

namespace A047622

/-- `∑[abs(a(n-3))]` -/
def P3226272881956477368.Spec : Prop :=
  ∀ n, (P3226272881956477368.a n : ℤ) = A047622 (n + 1)

end A047622

/-! ## A047622.P6460824468571745882

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A047622.P6460824468571745882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047622.P6460824468571745882

namespace A047622

/-- `∑[dr(a(n-3))]` -/
def P6460824468571745882.Spec : Prop :=
  ∀ n, (P6460824468571745882.a n : ℤ) = A047622 (n + 1)

end A047622

/-! ## A047622.P18179470675900887643

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047622.P18179470675900887643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047622.P18179470675900887643

namespace A047622

/-- `∑[floor(a(n-3))]` -/
def P18179470675900887643.Spec : Prop :=
  ∀ n, (P18179470675900887643.a n : ℤ) = A047622 (n + 1)

end A047622

/-! ## A047622.P13569006936168302562

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047622.P13569006936168302562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047622.P13569006936168302562

namespace A047622

/-- `∑[ceil(a(n-3))]` -/
def P13569006936168302562.Spec : Prop :=
  ∀ n, (P13569006936168302562.a n : ℤ) = A047622 (n + 1)

end A047622

/-! ## A047622.P9408797420326910304

`∑[round(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047622.P9408797420326910304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047622.P9408797420326910304

namespace A047622

/-- `∑[round(a(n-3))]` -/
def P9408797420326910304.Spec : Prop :=
  ∀ n, (P9408797420326910304.a n : ℤ) = A047622 (n + 1)

end A047622

/-! ## A047622.P16465539877689445505

`∑[a(n-3)%4]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A047622.P16465539877689445505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f1 =>
  f1 (n - 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047622.P16465539877689445505

namespace A047622

/-- `∑[a(n-3)%4]` -/
def P16465539877689445505.Spec : Prop :=
  ∀ n, (P16465539877689445505.a n : ℤ) = A047622 (n + 1)

end A047622

/-! ## A047622.P16379685118062225528

`∑[gcd(6, a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A047622.P16379685118062225528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047622.P16379685118062225528

namespace A047622

/-- `∑[gcd(6, a(n-3))]` -/
def P16379685118062225528.Spec : Prop :=
  ∀ n, (P16379685118062225528.a n : ℤ) = A047622 (n + 1)

end A047622

/-! ## A047622.P8563430009570059401

`∑[or(2, a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A047622.P8563430009570059401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f1 =>
  Nat.lor 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047622.P8563430009570059401

namespace A047622

/-- `∑[or(2, a(n-3))]` -/
def P8563430009570059401.Spec : Prop :=
  ∀ n, (P8563430009570059401.a n : ℤ) = A047622 (n + 1)

end A047622

/-! ## A047622.P10204504400263642458

`∑[and(3, a(n-3))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A047622.P10204504400263642458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047622.P10204504400263642458

namespace A047622

/-- `∑[and(3, a(n-3))]` -/
def P10204504400263642458.Spec : Prop :=
  ∀ n, (P10204504400263642458.a n : ℤ) = A047622 (n + 1)

end A047622

/-! ## A047622.P14548821217976471164

`∑[((n+1)²-2)%3+1]`
-/

namespace A047622.P14548821217976471164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 2 : ℤ) - 2) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047622.P14548821217976471164

namespace A047622

/-- `∑[((n+1)²-2)%3+1]` -/
def P14548821217976471164.Spec : Prop :=
  ∀ n, P14548821217976471164.a n = A047622 (n + 1)

end A047622

/-! ## A047622.P2997704792670415353

`ogf((3x+2x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A047622.P2997704792670415353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 3] [1, -1, 0, -1, 1] n

end

end A047622.P2997704792670415353

namespace A047622

/-- `ogf((3x+2x^2+3x^3)/(1-x-x^3+x^4))` -/
def P2997704792670415353.Spec : Prop :=
  ∀ n, P2997704792670415353.a n = A047622 (n + 1)

end A047622

/-! ## A047622.P10792254379974905937

`∑[gcd(3, n+1)%3+2]-3`
-/

namespace A047622.P10792254379974905937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1) % 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A047622.P10792254379974905937

namespace A047622

/-- `∑[gcd(3, n+1)%3+2]-3` -/
def P10792254379974905937.Spec : Prop :=
  ∀ n, P10792254379974905937.a n = A047622 (n + 1)

end A047622

/-! ## A047622.P5360813025630247304

`record[2*n+1-and(3, 1-n)]`
-/

namespace A047622.P5360813025630247304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.land 3 (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047622.P5360813025630247304

namespace A047622

/-- `record[2*n+1-and(3, 1-n)]` -/
def P5360813025630247304.Spec : Prop :=
  ∀ n, P5360813025630247304.a n = A047622 (n + 1)

end A047622

/-! ## A047622.P15558092295290145873

`record[3*(n+1)-or(3, n+2)]`
-/

namespace A047622.P15558092295290145873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (Nat.lor 3 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047622.P15558092295290145873

namespace A047622

/-- `record[3*(n+1)-or(3, n+2)]` -/
def P15558092295290145873.Spec : Prop :=
  ∀ n, P15558092295290145873.a n = A047622 (n + 1)

end A047622

/-!
# A047623: Numbers that are congruent to {1, 3, 5} mod 8.

The programs for A047623, the canonical program `A047623.P9534172922085447364` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047623 has offset 1).

The definition of A047623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047623.P9534172922085447364

`2*floor(n/3)+2*(n+1)-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047623

/-- `2*floor(n/3)+2*(n+1)-1` -/
def P9534172922085447364.Spec : Prop :=
  ∀ n, P9534172922085447364.a n = A047623 (n + 1)

theorem P9534172922085447364.correct : P9534172922085447364.Spec := by
  intro n
  simp only [A047623, Nat.add_sub_cancel]

end A047623

/-! ## A047623.P15614226950757774514

`(24*(n+1)-21-6*cos(2*(n+1)*π/3)+2*sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A047623.P15614226950757774514
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((24 * (n + 1) : ℤ) - 21 : ℝ) - 6 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + 2 * Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A047623.P15614226950757774514

namespace A047623

/-- `(24*(n+1)-21-6*cos(2*(n+1)*π/3)+2*sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P15614226950757774514.Spec : Prop :=
  ∀ n, P15614226950757774514.a n = (A047623 (n + 1) : ℝ)

end A047623

/-! ## A047623.P9653355984278687865

`or(1, floor(8*n/3))`
-/

namespace A047623.P9653355984278687865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊8 * ((n : ℚ) / 3)⌋

end

end A047623.P9653355984278687865

namespace A047623

/-- `or(1, floor(8*n/3))` -/
def P9653355984278687865.Spec : Prop :=
  ∀ n, P9653355984278687865.a n = A047623 (n + 1)

end A047623

/-! ## A047623.P1478166561455948453

`xor(1, 2*comp[or(3, n)])`
-/

namespace A047623.P1478166561455948453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A047623.P1478166561455948453

namespace A047623

/-- `xor(1, 2*comp[or(3, n)])` -/
def P1478166561455948453.Spec : Prop :=
  ∀ n, (P1478166561455948453.a n : ℤ) = A047623 (n + 1)

end A047623

/-! ## A047623.P8591595303867452910

`record[and(n, n+3)+1]`
-/

namespace A047623.P8591595303867452910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047623.P8591595303867452910

namespace A047623

/-- `record[and(n, n+3)+1]` -/
def P8591595303867452910.Spec : Prop :=
  ∀ n, (P8591595303867452910.a n : ℤ) = A047623 (n + 1)

end A047623

/-! ## A047623.P5176029383156634483

`record[or(1, and(n, n-3))]`
-/

namespace A047623.P5176029383156634483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.land (n : ℤ) ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047623.P5176029383156634483

namespace A047623

/-- `record[or(1, and(n, n-3))]` -/
def P5176029383156634483.Spec : Prop :=
  ∀ n, P5176029383156634483.a n = A047623 (n + 1)

end A047623

/-! ## A047623.P13837302797699024604

`record[xor(1, and(n, n-3))]`
-/

namespace A047623.P13837302797699024604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (n : ℤ) ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047623.P13837302797699024604

namespace A047623

/-- `record[xor(1, and(n, n-3))]` -/
def P13837302797699024604.Spec : Prop :=
  ∀ n, P13837302797699024604.a n = A047623 (n + 1)

end A047623

/-! ## A047623.P11021125378346219217

`eq[1, val(2*(n+1), 4)]`
-/

namespace A047623.P11021125378346219217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047623.P11021125378346219217

namespace A047623

/-- `eq[1, val(2*(n+1), 4)]` -/
def P11021125378346219217.Spec : Prop :=
  ∀ n, (P11021125378346219217.a n : ℤ) = A047623 (n + 1)

end A047623

/-! ## A047623.P1133394092649412775

`∑[(n²-1)%3+2]`
-/

namespace A047623.P1133394092649412775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047623.P1133394092649412775

namespace A047623

/-- `∑[(n²-1)%3+2]` -/
def P1133394092649412775.Spec : Prop :=
  ∀ n, P1133394092649412775.a n = A047623 (n + 1)

end A047623

/-! ## A047623.P11036795466552194232

`∑[2-(1-n²)%3]`
-/

namespace A047623.P11036795466552194232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (1 - (n ^ 2 : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047623.P11036795466552194232

namespace A047623

/-- `∑[2-(1-n²)%3]` -/
def P11036795466552194232.Spec : Prop :=
  ∀ n, P11036795466552194232.a n = A047623 (n + 1)

end A047623

/-! ## A047623.P14794808798724342944

`∑[4/a(n%3)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A047623.P14794808798724342944
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  4 / f1 (n % 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047623.P14794808798724342944

namespace A047623

/-- `∑[4/a(n%3)]` -/
def P14794808798724342944.Spec : Prop :=
  ∀ n, P14794808798724342944.a n = (A047623 (n + 1) : ℚ)

end A047623

/-! ## A047623.P7767629056941523480

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047623.P7767629056941523480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047623.P7767629056941523480

namespace A047623

/-- `∑[floor(a(n-3))]` -/
def P7767629056941523480.Spec : Prop :=
  ∀ n, (P7767629056941523480.a n : ℤ) = A047623 (n + 1)

end A047623

/-! ## A047623.P16634252939486597772

`lt[(ϕ-val(n+1, 2))², 1]`
-/

namespace A047623.P16634252939486597772
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A047623.P16634252939486597772

namespace A047623

/-- `lt[(ϕ-val(n+1, 2))², 1]` -/
def P16634252939486597772.Spec : Prop :=
  ∀ n, (P16634252939486597772.a n : ℤ) = A047623 (n + 1)

end A047623

/-! ## A047623.P6735866730302931449

`eq[1, val(n+2+n, 4)²]`
-/

namespace A047623.P6735866730302931449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2 + n) 4 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047623.P6735866730302931449

namespace A047623

/-- `eq[1, val(n+2+n, 4)²]` -/
def P6735866730302931449.Spec : Prop :=
  ∀ n, (P6735866730302931449.a n : ℤ) = A047623 (n + 1)

end A047623

/-! ## A047623.P18327635219452312

`record[2*(n+3)-or(5, n)]`
-/

namespace A047623.P18327635219452312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - (Nat.lor 5 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047623.P18327635219452312

namespace A047623

/-- `record[2*(n+3)-or(5, n)]` -/
def P18327635219452312.Spec : Prop :=
  ∀ n, P18327635219452312.a n = A047623 (n + 1)

end A047623

/-! ## A047623.P14086214557634359350

`eq[4, (5-xor(n, n+1))²]`
-/

namespace A047623.P14086214557634359350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (Nat.xor n (n + 1) : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047623.P14086214557634359350

namespace A047623

/-- `eq[4, (5-xor(n, n+1))²]` -/
def P14086214557634359350.Spec : Prop :=
  ∀ n, (P14086214557634359350.a n : ℤ) = A047623 (n + 1)

end A047623

/-! ## A047623.P3655309864293867885

`lt[(5-xor(n, n+1))², 5]`
-/

namespace A047623.P3655309864293867885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (Nat.xor n (n + 1) : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A047623.P3655309864293867885

namespace A047623

/-- `lt[(5-xor(n, n+1))², 5]` -/
def P3655309864293867885.Spec : Prop :=
  ∀ n, (P3655309864293867885.a n : ℤ) = A047623 (n + 1)

end A047623

/-! ## A047623.P6309779249819779806

`record[or(n+1, 1-n)+n]`
-/

namespace A047623.P6309779249819779806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (1 - (n : ℤ)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047623.P6309779249819779806

namespace A047623

/-- `record[or(n+1, 1-n)+n]` -/
def P6309779249819779806.Spec : Prop :=
  ∀ n, P6309779249819779806.a n = A047623 (n + 1)

end A047623

/-! ## A047623.P7636551640100985334

`lt[0, C(n+3, 4)%(n+3)]`
-/

namespace A047623.P7636551640100985334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 4 % (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047623.P7636551640100985334

namespace A047623

/-- `lt[0, C(n+3, 4)%(n+3)]` -/
def P7636551640100985334.Spec : Prop :=
  ∀ n, (P7636551640100985334.a n : ℤ) = A047623 (n + 1)

end A047623

/-! ## A047623.P3044145185454635482

`lt[n+1, or(n, (n+1)%8)]`
-/

namespace A047623.P3044145185454635482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n ((n + 1) % 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047623.P3044145185454635482

namespace A047623

/-- `lt[n+1, or(n, (n+1)%8)]` -/
def P3044145185454635482.Spec : Prop :=
  ∀ n, (P3044145185454635482.a n : ℤ) = A047623 (n + 1)

end A047623

/-!
# A047624: Numbers that are congruent to {0, 1, 3, 5} mod 8.

The programs for A047624, the canonical program `A047624.P11809342252830142273` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047624 has offset 1).

The definition of A047624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047624.P11809342252830142273

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047624

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P11809342252830142273.Spec : Prop :=
  ∀ n, P11809342252830142273.a n = A047624 (n + 1)

theorem P11809342252830142273.correct : P11809342252830142273.Spec := by
  intro n
  simp only [A047624, Nat.add_sub_cancel]

end A047624

/-! ## A047624.P16269426471937258537

`A140201(n)+A042948(A004526(n))`
-/

namespace A047624.P16269426471937258537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 n + A042948 (A004526 n).toNat

end

end A047624.P16269426471937258537

namespace A047624

/-- `A140201(n)+A042948(A004526(n))` -/
def P16269426471937258537.Spec : Prop :=
  ∀ n, P16269426471937258537.a n = A047624 (n + 1)

end A047624

/-! ## A047624.P15019976467525060225

`comp[record[xor(7, xor(6, n)-1)]]`
-/

namespace A047624.P15019976467525060225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 ((Nat.xor 6 n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047624.P15019976467525060225

namespace A047624

/-- `comp[record[xor(7, xor(6, n)-1)]]` -/
def P15019976467525060225.Spec : Prop :=
  ∀ n, (P15019976467525060225.a n : ℤ) = A047624 (n + 1)

end A047624

/-! ## A047624.P10105053128976536013

`2*n-floor(sqrt(n%4))`
-/

namespace A047624.P10105053128976536013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.sqrt (n % 4) : ℤ)

end

end A047624.P10105053128976536013

namespace A047624

/-- `2*n-floor(sqrt(n%4))` -/
def P10105053128976536013.Spec : Prop :=
  ∀ n, P10105053128976536013.a n = A047624 (n + 1)

end A047624

/-! ## A047624.P10006818442913762659

`comp[2*n-char[4*n]]`
-/

namespace A047624.P10006818442913762659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A047624.P10006818442913762659

namespace A047624

/-- `comp[2*n-char[4*n]]` -/
def P10006818442913762659.Spec : Prop :=
  ∀ n, (P10006818442913762659.a n : ℤ) = A047624 (n + 1)

end A047624

/-! ## A047624.P635236899643469750

`a(n-4)+8` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A047624.P635236899643469750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5] fun n a =>
  a (n - 4) + 8

end

end A047624.P635236899643469750

namespace A047624

/-- `a(n-4)+8` -/
def P635236899643469750.Spec : Prop :=
  ∀ n, (P635236899643469750.a n : ℤ) = A047624 (n + 1)

end A047624

/-! ## A047624.P11819284663559516560

`2*n-(n²%8)%3`
-/

namespace A047624.P11819284663559516560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n ^ 2 % 8 % 3 : ℕ) : ℤ)

end

end A047624.P11819284663559516560

namespace A047624

/-- `2*n-(n²%8)%3` -/
def P11819284663559516560.Spec : Prop :=
  ∀ n, P11819284663559516560.a n = A047624 (n + 1)

end A047624

/-! ## A047624.P5848737728146032635

`2*n-round(1/gcd(4, n))`
-/

namespace A047624.P5848737728146032635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - SequenceMachineLib.roundAway (1 / (Nat.gcd 4 n : ℚ))

end

end A047624.P5848737728146032635

namespace A047624

/-- `2*n-round(1/gcd(4, n))` -/
def P5848737728146032635.Spec : Prop :=
  ∀ n, P5848737728146032635.a n = A047624 (n + 1)

end A047624

/-! ## A047624.P8386505145827901173

`floor(2*n-and(3, n)/3)`
-/

namespace A047624.P8386505145827901173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) - (Nat.land 3 n : ℚ) / 3⌋

end

end A047624.P8386505145827901173

namespace A047624

/-- `floor(2*n-and(3, n)/3)` -/
def P8386505145827901173.Spec : Prop :=
  ∀ n, P8386505145827901173.a n = A047624 (n + 1)

end A047624

/-! ## A047624.P9593621730267184475

`2*n-ceil(and(3, n)/3)`
-/

namespace A047624.P9593621730267184475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌈(Nat.land 3 n : ℚ) / 3⌉

end

end A047624.P9593621730267184475

namespace A047624

/-- `2*n-ceil(and(3, n)/3)` -/
def P9593621730267184475.Spec : Prop :=
  ∀ n, P9593621730267184475.a n = A047624 (n + 1)

end A047624

/-! ## A047624.P14138486322072581590

`or(n, and(2, n)!)+n-1`
-/

namespace A047624.P14138486322072581590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (Nat.factorial (Nat.land 2 n)) : ℤ) + ((n : ℤ) - 1)

end

end A047624.P14138486322072581590

namespace A047624

/-- `or(n, and(2, n)!)+n-1` -/
def P14138486322072581590.Spec : Prop :=
  ∀ n, P14138486322072581590.a n = A047624 (n + 1)

end A047624

/-! ## A047624.P13886101717400448385

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A047624.P13886101717400448385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047624.P13886101717400448385

namespace A047624

/-- `∑[abs(a(n-4))]` -/
def P13886101717400448385.Spec : Prop :=
  ∀ n, (P13886101717400448385.a n : ℤ) = A047624 (n + 1)

end A047624

/-! ## A047624.P13185271007977649347

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A047624.P13185271007977649347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047624.P13185271007977649347

namespace A047624

/-- `∑[dr(a(n-4))]` -/
def P13185271007977649347.Spec : Prop :=
  ∀ n, (P13185271007977649347.a n : ℤ) = A047624 (n + 1)

end A047624

/-! ## A047624.P14879544635742468260

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A047624.P14879544635742468260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047624.P14879544635742468260

namespace A047624

/-- `∑[floor(a(n-4))]` -/
def P14879544635742468260.Spec : Prop :=
  ∀ n, (P14879544635742468260.a n : ℤ) = A047624 (n + 1)

end A047624

/-! ## A047624.P16624597702132755720

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A047624.P16624597702132755720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047624.P16624597702132755720

namespace A047624

/-- `∑[ceil(a(n-4))]` -/
def P16624597702132755720.Spec : Prop :=
  ∀ n, (P16624597702132755720.a n : ℤ) = A047624 (n + 1)

end A047624

/-! ## A047624.P5372786118157509691

`∑[round(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3`

`round` is left out, it is the identity on integers.
-/

namespace A047624.P5372786118157509691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047624.P5372786118157509691

namespace A047624

/-- `∑[round(a(n-4))]` -/
def P5372786118157509691.Spec : Prop :=
  ∀ n, (P5372786118157509691.a n : ℤ) = A047624 (n + 1)

end A047624

/-! ## A047624.P7103742464883034178

`2*n-and(1, lcm(2, n)/2)`
-/

namespace A047624.P7103742464883034178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.land 1 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2))

end

end A047624.P7103742464883034178

namespace A047624

/-- `2*n-and(1, lcm(2, n)/2)` -/
def P7103742464883034178.Spec : Prop :=
  ∀ n, P7103742464883034178.a n = A047624 (n + 1)

end A047624

/-! ## A047624.P16244703332553264662

`Δ[n²]-gcd(2, C(n+3, 3))`
-/

namespace A047624.P16244703332553264662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.gcd 2 (Nat.choose (n + 3) 3) : ℤ)

end

end A047624.P16244703332553264662

namespace A047624

/-- `Δ[n²]-gcd(2, C(n+3, 3))` -/
def P16244703332553264662.Spec : Prop :=
  ∀ n, P16244703332553264662.a n = A047624 (n + 1)

end A047624

/-! ## A047624.P12594213265036283085

`2*n-floor(atan((2*n)%8))`
-/

namespace A047624.P12594213265036283085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊Real.arctan ((2 * n % 8 : ℕ) : ℝ)⌋

end

end A047624.P12594213265036283085

namespace A047624

/-- `2*n-floor(atan((2*n)%8))` -/
def P12594213265036283085.Spec : Prop :=
  ∀ n, P12594213265036283085.a n = A047624 (n + 1)

end A047624

/-! ## A047624.P855562637164911644

`2*n-and(1, gcd(n², ∑[n]))`
-/

namespace A047624.P855562637164911644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 1 (Nat.gcd (n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ)

end

end A047624.P855562637164911644

namespace A047624

/-- `2*n-and(1, gcd(n², ∑[n]))` -/
def P855562637164911644.Spec : Prop :=
  ∀ n, P855562637164911644.a n = A047624 (n + 1)

end A047624

/-!
# A047625: Floor( Pi * (3/2)^n ).

The programs for A047625, the canonical program `A047625.P3107578951983333715` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047625 has offset 0).

The definition of A047625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π*(3/2)^n)` (program `A047625.P3107578951983333715`, by `A047625.P3107578951983333715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047625.P3107578951983333715

`floor(π*(3/2)^n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047625

/-- `floor(π*(3/2)^n)` -/
def P3107578951983333715.Spec : Prop :=
  ∀ n, P3107578951983333715.a n = A047625 n

theorem P3107578951983333715.correct : P3107578951983333715.Spec := by
  intro n
  simp only [A047625]

end A047625

/-! ## A047625.P11816285007408134758

`ceil(A010815(Δ[A004773(n)])+π*(3/2)^n)`
-/

namespace A047625.P11816285007408134758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010815 (f1 (n + 1) - f1 n).toNat : ℝ) + Real.pi * (((3 : ℚ) / 2) ^ n : ℝ)⌉

end

end A047625.P11816285007408134758

namespace A047625

/-- `ceil(A010815(Δ[A004773(n)])+π*(3/2)^n)` -/
def P11816285007408134758.Spec : Prop :=
  ∀ n, P11816285007408134758.a n = A047625 n

end A047625

/-! ## A047625.P2470543314728710080

`ceil(π*(3/2)^n-A014963(A005915(n)))`
-/

namespace A047625.P2470543314728710080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (((3 : ℚ) / 2) ^ n : ℝ) - (A014963 (A005915 n).toNat : ℝ)⌉

end

end A047625.P2470543314728710080

namespace A047625

/-- `ceil(π*(3/2)^n-A014963(A005915(n)))` -/
def P2470543314728710080.Spec : Prop :=
  ∀ n, P2470543314728710080.a n = A047625 n

end A047625

/-! ## A047625.P5869621465607437521

`A059995(A120143(n+1)+A120141(n+1))`
-/

namespace A047625.P5869621465607437521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A120143 (n + 1) + A120141 (n + 1)).toNat

end

end A047625.P5869621465607437521

namespace A047625

/-- `A059995(A120143(n+1)+A120141(n+1))` -/
def P5869621465607437521.Spec : Prop :=
  ∀ n, P5869621465607437521.a n = A047625 n

end A047625

/-!
# A047630: Numbers k that divide sigma(k) * phi(k) and are not divisible by 6.

The programs for A047630, there is no canonical definition to state claims against.
-/

/-! ## A047630.P18143110727488056502

`filter[A011775(n+1), A097325(#)]`
-/

namespace A047630.P18143110727488056502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A047630.P18143110727488056502

/-! ## A047630.P17318611774277986970

`∩[A011775(n+1), A047253(n+1)]`
-/

namespace A047630.P17318611774277986970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047630.P17318611774277986970

/-! ## A047630.P16944647861795464142

`∩[A015707(n+1), A229791(n+1)]`
-/

namespace A047630.P16944647861795464142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047630.P16944647861795464142

/-!
# A047631: Theta series of 14-dimensional lattice (SU(3,3) x C4).C2 with minimal norm 3.

The programs for A047631, there is no canonical definition to state claims against.
-/

/-! ## A047631.P2697821495599303413

`A051801(A053729(n+1))*A346894(n)`
-/

namespace A047631.P2697821495599303413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A053729 (n + 1)).toNat * A346894 n

end

end A047631.P2697821495599303413

/-!
# A047633: Theta series of 14-dimensional lattice C2 X S7 with minimal norm 4.

The programs for A047633, there is no canonical definition to state claims against.
-/

/-! ## A047633.P78357632747391015

`A328762(A046645(10*a(n-1)+n))` with `a(0)=1, a(1)=0`
-/

namespace A047633.P78357632747391015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A328762 (A046645 (10 * a (n - 1) + (n : ℤ)).toNat).toNat

end

end A047633.P78357632747391015

/-!
# A047635: Theta series of 14-dimensional lattice M14,2 with minimal norm 7.

The programs for A047635, there is no canonical definition to state claims against.
-/

/-! ## A047635.P11953554362095238103

`∑{d}[A014488(n), A193738(#)]`
-/

namespace A047635.P11953554362095238103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193738 d

end

end A047635.P11953554362095238103

/-! ## A047635.P8461613576635352779

`A255479(n+1)*A255538((n%2)^n+n)`
-/

namespace A047635.P8461613576635352779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (n + 1) * A255538 ((n % 2) ^ n + n)

end

end A047635.P8461613576635352779

/-! ## A047635.P16395053606219554014

`A352128(A277103(2*n+3)-A321440(n))`
-/

namespace A047635.P16395053606219554014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352128 (A277103 (2 * n + 3) - A321440 n).toNat

end

end A047635.P16395053606219554014

/-! ## A047635.P1617417414344609808

`A219428(∑[n*a(n-1)]+1)` with `a(0)=3, a(1)=1`
-/

namespace A047635.P1617417414344609808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A047635.P1617417414344609808

/-!
# A047636: Theta series of 14-dimensional lattice M14,3 with minimal norm 6.

The programs for A047636, there is no canonical definition to state claims against.
-/

/-! ## A047636.P3161745715527282249

`A047635(∑{e}[n+1, #]+∑[n])`
-/

namespace A047636.P3161745715527282249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047635 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A047636.P3161745715527282249

/-!
# A047637: Theta series of 14-dimensional lattice M14,6 with minimal norm 6.

The programs for A047637, there is no canonical definition to state claims against.
-/

/-! ## A047637.P12958669384047320633

`A032766(A002126(n)*A047636(n))`
-/

namespace A047637.P12958669384047320633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A002126 n * A047636 n).toNat

end

end A047637.P12958669384047320633

/-!
# A047638: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^13 in powers of x.

The programs for A047638, there is no canonical definition to state claims against.
-/

/-! ## A047638.P4039027201940169248

`A047265(A000217(n+12)+13)`
-/

namespace A047638.P4039027201940169248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 12) + 13).toNat

end

end A047638.P4039027201940169248

/-! ## A047638.P428455749712490493

`A047265(A161680(n+14)-n)`
-/

namespace A047638.P428455749712490493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A161680 (n + 14) - (n : ℤ)).toNat

end

end A047638.P428455749712490493

/-! ## A047638.P15634441465651590548

`A047265(A046691(n+13)-A016777(n+8))`
-/

namespace A047638.P15634441465651590548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A046691 (n + 13) - A016777 (n + 8)).toNat

end

end A047638.P15634441465651590548

/-! ## A047638.P10615034408878285221

`A047265(eq[29, A066657(n)])`
-/

namespace A047638.P10615034408878285221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047638.P10615034408878285221

/-! ## A047638.P5097727340627295052

`A047265(eq[14, A131818(n+1)])`
-/

namespace A047638.P5097727340627295052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047638.P5097727340627295052

/-!
# A047639: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^14 in powers of x.

The programs for A047639, there is no canonical definition to state claims against.
-/

/-! ## A047639.P9493226802082551994

`A047265(A000217(n+14)-n)`
-/

namespace A047639.P9493226802082551994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 14) - (n : ℤ)).toNat

end

end A047639.P9493226802082551994

/-! ## A047639.P13104874503612790399

`A047265(A161680(n+15)-n)`
-/

namespace A047639.P13104874503612790399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A161680 (n + 15) - (n : ℤ)).toNat

end

end A047639.P13104874503612790399

/-! ## A047639.P2754676654316043615

`A047265(A167614(n+13)-(n+3))`
-/

namespace A047639.P2754676654316043615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167614 (n + 13) - (n + 3 : ℤ)).toNat

end

end A047639.P2754676654316043615

/-! ## A047639.P5858410344500151063

`A047265(eq[15, A131818(n+1)])`
-/

namespace A047639.P5858410344500151063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047639.P5858410344500151063

/-! ## A047639.P11917652284860717846

`A047265(eq[15, A135223(n+1)])`
-/

namespace A047639.P11917652284860717846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047639.P11917652284860717846

/-!
# A047640: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^15 in powers of x.

The programs for A047640, there is no canonical definition to state claims against.
-/

/-! ## A047640.P9470263694540836038

`A047265(A000217(n+15)-n)`
-/

namespace A047640.P9470263694540836038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 15) - (n : ℤ)).toNat

end

end A047640.P9470263694540836038

/-! ## A047640.P7669922423344314399

`A047265(eq[15, A130270(n+1)])`
-/

namespace A047640.P7669922423344314399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047640.P7669922423344314399

/-! ## A047640.P3782870768459379444

`A047265(eq[16, A131818(n+1)])`
-/

namespace A047640.P3782870768459379444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047640.P3782870768459379444

/-!
# A047641: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^16 in powers of x.

The programs for A047641, there is no canonical definition to state claims against.
-/

/-! ## A047641.P359454122555606582

`A047265(eq[17, A131818(n+1)])`
-/

namespace A047641.P359454122555606582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047641.P359454122555606582

/-!
# A047642: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^17 in powers of x.

The programs for A047642, there is no canonical definition to state claims against.
-/

/-! ## A047642.P14850795775402937612

`A047265(eq[18, A131818(n+1)])`
-/

namespace A047642.P14850795775402937612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047642.P14850795775402937612

/-!
# A047643: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^18 in powers of x.

The programs for A047643, there is no canonical definition to state claims against.
-/

/-! ## A047643.P4777334439341074364

`A047265(eq[19, A131818(n+1)])`
-/

namespace A047643.P4777334439341074364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047643.P4777334439341074364

/-!
# A047644: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^19 in powers of x.

The programs for A047644, there is no canonical definition to state claims against.
-/

/-! ## A047644.P13158369986141388338

`A047265(eq[20, A131818(n+1)])`
-/

namespace A047644.P13158369986141388338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047644.P13158369986141388338

/-!
# A047646: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^21 in powers of x.

The programs for A047646, there is no canonical definition to state claims against.
-/

/-! ## A047646.P8343426272396312354

`A047265(A008805(2*n+40)-n)`
-/

namespace A047646.P8343426272396312354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A008805 (2 * n + 40) - (n : ℤ)).toNat

end

end A047646.P8343426272396312354

/-! ## A047646.P5277878136790943048

`A047265(eq[21, A130270(n+1)])`
-/

namespace A047646.P5277878136790943048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047646.P5277878136790943048

/-!
# A047648: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^23 in powers of x.

The programs for A047648, there is no canonical definition to state claims against.
-/

/-! ## A047648.P7885032758128753001

`A047265(eq[24, A131818(n+1)])`
-/

namespace A047648.P7885032758128753001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047648.P7885032758128753001

/-!
# A047649: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^11 in powers of x.

The programs for A047649, there is no canonical definition to state claims against.
-/

/-! ## A047649.P1689013231586875388

`A047265(A167499(n+9)+6)`
-/

namespace A047649.P1689013231586875388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167499 (n + 9) + 6).toNat

end

end A047649.P1689013231586875388

/-! ## A047649.P8354959177055882637

`A047265(A167614(n+9)+8)`
-/

namespace A047649.P8354959177055882637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167614 (n + 9) + 8).toNat

end

end A047649.P8354959177055882637

/-! ## A047649.P15858345841562030165

`A047265(A000217(n+10)+11)`
-/

namespace A047649.P15858345841562030165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 10) + 11).toNat

end

end A047649.P15858345841562030165

/-! ## A047649.P12417157219921900595

`A047265(A161680(n+11)+11)`
-/

namespace A047649.P12417157219921900595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A161680 (n + 11) + 11).toNat

end

end A047649.P12417157219921900595

/-! ## A047649.P13428664220971968153

`A047265(A055999(n+9)-2*(n+3))`
-/

namespace A047649.P13428664220971968153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A055999 (n + 9) - (2 * (n + 3) : ℤ)).toNat

end

end A047649.P13428664220971968153

/-!
# A047650: Primes for which golden mean phi is a quadratic residue.

The programs for A047650, there is no canonical definition to state claims against.
-/

/-! ## A047650.P8201667953945253322

`A356247(A047651(n+1))`
-/

namespace A047650.P8201667953945253322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 (A047651 (n + 1)).toNat

end

end A047650.P8201667953945253322

/-! ## A047650.P15337367835655481540

`∪[A325071(n+1), A325073(n+1)]`
-/

namespace A047650.P15337367835655481540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047650.P15337367835655481540

/-! ## A047650.P5776268517191869801

`A216815(eq[2, A020639(A140073(n+1))])`
-/

namespace A047650.P5776268517191869801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A140073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047650.P5776268517191869801

/-! ## A047650.P17950444644582830104

`p?[gcd(A020484(n), A229339(n+1))]`
-/

namespace A047650.P17950444644582830104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020484 n) (A229339 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A047650.P17950444644582830104

/-!
# A047652: Primes for which golden mean is a cubic residue.

The programs for A047652, there is no canonical definition to state claims against.
-/

/-! ## A047652.P18171925092477558544

`p?[eq[2, A030215(n)]]`
-/

namespace A047652.P18171925092477558544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030215 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A047652.P18171925092477558544

/-! ## A047652.P18278408039737744410

`eq[A000040(A053989(n+1)), A030215(n)]`
-/

namespace A047652.P18278408039737744410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A053989 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047652.P18278408039737744410

/-! ## A047652.P2573012689962271641

`eq[A000005(A233583(n+1)), A030215(n)]`
-/

namespace A047652.P2573012689962271641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047652.P2573012689962271641

/-!
# A047653: Constant term in expansion of (1/2) * Product_{k=-n..n} (1 + x^k).

The programs for A047653, there is no canonical definition to state claims against.
-/

/-! ## A047653.P9862921412313866705

`A000980(n)/2`
-/

namespace A047653.P9862921412313866705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000980 n : ℚ) / 2

end

end A047653.P9862921412313866705

/-! ## A047653.P684119664030415104

`A133406(2*n+1)`
-/

namespace A047653.P684119664030415104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133406 (2 * n + 1)

end

end A047653.P684119664030415104

/-! ## A047653.P10089152747287141054

`A212352(n)+1`
-/

namespace A047653.P10089152747287141054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212352 n + 1

end

end A047653.P10089152747287141054

/-! ## A047653.P996893367858179634

`A362046(2*n)+1`
-/

namespace A047653.P996893367858179634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362046 (2 * n) + 1

end

end A047653.P996893367858179634

/-! ## A047653.P3316116036436891754

`record[A133406(n+1)]`
-/

namespace A047653.P3316116036436891754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047653.P3316116036436891754

/-! ## A047653.P7510370410676755782

`A084239(Δ[n²])/2`
-/

namespace A047653.P7510370410676755782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084239 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A047653.P7510370410676755782

/-! ## A047653.P8770668399307553709

`lcm(2, A084239(2*n+1))/2`
-/

namespace A047653.P8770668399307553709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A084239 (2 * n + 1)) : ℚ) / 2

end

end A047653.P8770668399307553709

/-! ## A047653.P6036325415826922653

`A000302(n)-A181765(n)`
-/

namespace A047653.P6036325415826922653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A181765 n

end

end A047653.P6036325415826922653

/-! ## A047653.P11314896899304306515

`A000079(n)²-A181765(n)`
-/

namespace A047653.P11314896899304306515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A181765 n

end

end A047653.P11314896899304306515

/-! ## A047653.P2408254457001222833

`A024036(n)+1-A181765(n)`
-/

namespace A047653.P2408254457001222833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 n + (1 - A181765 n)

end

end A047653.P2408254457001222833

/-! ## A047653.P14061279155384920077

`A000079(2*n)-A181765(n)`
-/

namespace A047653.P14061279155384920077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) - A181765 n

end

end A047653.P14061279155384920077

/-! ## A047653.P1217315144382978511

`A154383(2*n)-A181765(n)`
-/

namespace A047653.P1217315144382978511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154383 (2 * n) - A181765 n

end

end A047653.P1217315144382978511

/-! ## A047653.P2902681786373605168

`(A000225(n)+1)²-A181765(n)`
-/

namespace A047653.P2902681786373605168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) ^ 2 - A181765 n

end

end A047653.P2902681786373605168

/-! ## A047653.P881182925387317944

`A000225(A005843(n))+1-A181765(n)`
-/

namespace A047653.P881182925387317944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A005843 n).toNat + (1 - A181765 n)

end

end A047653.P881182925387317944

/-! ## A047653.P7502090664370896194

`A004171(n)/2-A181765(n)`
-/

namespace A047653.P7502090664370896194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 n : ℚ) / 2 - (A181765 n : ℚ)

end

end A047653.P7502090664370896194

/-! ## A047653.P3577232826391832232

`A155701(n+1)-(A181765(n)+A155701(n))`
-/

namespace A047653.P3577232826391832232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155701 (n + 1) - (A181765 n + A155701 n)

end

end A047653.P3577232826391832232

/-! ## A047653.P12701925682788803585

`A222955(Δ[n²])/2`
-/

namespace A047653.P12701925682788803585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222955 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A047653.P12701925682788803585

/-! ## A047653.P10828371153169068014

`record[A222955(n+1)/2]`
-/

namespace A047653.P10828371153169068014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222955 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047653.P10828371153169068014

/-! ## A047653.P12279245408944730465

`A222855(2*n+1)-A000079(n)²`
-/

namespace A047653.P12279245408944730465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222855 (2 * n + 1) - A000079 n ^ 2

end

end A047653.P12279245408944730465

/-! ## A047653.P12794025350955767139

`A222855(2*n+1)-A000079(2*n)`
-/

namespace A047653.P12794025350955767139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222855 (2 * n + 1) - A000079 (2 * n)

end

end A047653.P12794025350955767139

/-!
# A047654: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^2 in powers of x.

The programs for A047654, there is no canonical definition to state claims against.
-/

/-! ## A047654.P3540333109499217519

`A047265(∑[n+1]+2)`
-/

namespace A047654.P3540333109499217519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A047654.P3540333109499217519

/-! ## A047654.P15307657509793965202

`A047265(A133263(n+1))%5`
-/

namespace A047654.P15307657509793965202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047265 (A133263 (n + 1)).toNat) 5

end

end A047654.P15307657509793965202

/-! ## A047654.P14401231270686788839

`or(A000007(n), A047265(A133263(n+1)))`
-/

namespace A047654.P14401231270686788839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047265 (A133263 (n + 1)).toNat)

end

end A047654.P14401231270686788839

/-! ## A047654.P15684503943832415134

`A047265(A133263(n+1))+A000007(n+1)`
-/

namespace A047654.P15684503943832415134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A047654.P15684503943832415134

/-! ## A047654.P12516773738523477197

`and(A000035(2*n)-1, A047265(A133263(n+1)))`
-/

namespace A047654.P12516773738523477197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000035 (2 * n) - 1) (A047265 (A133263 (n + 1)).toNat)

end

end A047654.P12516773738523477197

/-! ## A047654.P6460238408301345212

`A047265(A133263(n+1))^A050782(A002113(n+1))`
-/

namespace A047654.P6460238408301345212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047265 (A133263 (n + 1)).toNat : ℚ) ^ (A050782 (A002113 (n + 1)).toNat : ℤ)

end

end A047654.P6460238408301345212

/-!
# A047655: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^3 in powers of x.

The programs for A047655, there is no canonical definition to state claims against.
-/

/-! ## A047655.P2936477527884160281

`A047265(∑[n+2]+4)`
-/

namespace A047655.P2936477527884160281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A047655.P2936477527884160281

/-! ## A047655.P4688462618690646150

`A047265(A167614(n+1))%80`
-/

namespace A047655.P4688462618690646150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047265 (A167614 (n + 1)).toNat) 80

end

end A047655.P4688462618690646150

/-! ## A047655.P4781636080963094408

`A047265(A046691(n)+7)%(n+4)`
-/

namespace A047655.P4781636080963094408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047265 (A046691 n + 7).toNat) (n + 4 : ℤ)

end

end A047655.P4781636080963094408

/-! ## A047655.P10933050811149185876

`A047265(A055998(n)+6)%(n+7)`
-/

namespace A047655.P10933050811149185876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047265 (A055998 n + 6).toNat) (n + 7 : ℤ)

end

end A047655.P10933050811149185876

/-! ## A047655.P17704687036745229400

`A047265(A167499(n)+n)%(n+3)`
-/

namespace A047655.P17704687036745229400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047265 (A167499 n + (n : ℤ)).toNat) (n + 3 : ℤ)

end

end A047655.P17704687036745229400

/-! ## A047655.P6456444414121146514

`or(A000007(n), A047265(A167614(n+1)))`
-/

namespace A047655.P6456444414121146514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047265 (A167614 (n + 1)).toNat)

end

end A047655.P6456444414121146514

/-! ## A047655.P16077718033807636441

`abs(A020985(n))*A047265(A167614(n+1))`
-/

namespace A047655.P16077718033807636441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n| * A047265 (A167614 (n + 1)).toNat

end

end A047655.P16077718033807636441

/-!
# A047656: a(n) = 3^((n^2-n)/2).

The programs for A047656, the canonical program `A047656.P12759288984961220680` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047656 has offset 0).

The definition of A047656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047656.P12759288984961220680

`3^C(n, 2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047656

/-- `3^C(n, 2)` -/
def P12759288984961220680.Spec : Prop :=
  ∀ n, (P12759288984961220680.a n : ℤ) = A047656 n

theorem P12759288984961220680.correct : P12759288984961220680.Spec := by
  intro n
  simp only [A047656]

end A047656

/-! ## A047656.P14681822135303032168

`3^((n²-n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047656.P14681822135303032168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 : ℝ)

end

end A047656.P14681822135303032168

namespace A047656

/-- `3^((n²-n)/2)` -/
def P14681822135303032168.Spec : Prop :=
  ∀ n, P14681822135303032168.a n = (A047656 n : ℝ)

end A047656

/-! ## A047656.P6369859970896205971

`a(n-1)*3^(n-1)` with `a(0)=1`
-/

namespace A047656.P6369859970896205971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A047656.P6369859970896205971

namespace A047656

/-- `a(n-1)*3^(n-1)` -/
def P6369859970896205971.Spec : Prop :=
  ∀ n, P6369859970896205971.a n = (A047656 n : ℚ)

end A047656

/-! ## A047656.P945449855630831334

`∏[lcm(6, 3^n)/6]`
-/

namespace A047656.P945449855630831334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 (3 ^ n) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047656.P945449855630831334

namespace A047656

/-- `∏[lcm(6, 3^n)/6]` -/
def P945449855630831334.Spec : Prop :=
  ∀ n, P945449855630831334.a n = (A047656 n : ℚ)

end A047656

/-! ## A047656.P16753749175071219217

`∏[3*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A047656.P16753749175071219217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047656.P16753749175071219217

namespace A047656

/-- `∏[3*a(n-1)]` -/
def P16753749175071219217.Spec : Prop :=
  ∀ n, (P16753749175071219217.a n : ℤ) = A047656 n

end A047656

/-!
# A047657: Sextuple factorial numbers: a(n) = Product_{k=0..n-1} (6*k+2).

The programs for A047657, the canonical program `A047657.P6163376823588365071` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047657 has offset 0).

The definition of A047657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047657.P14170099639012857688

`2^n*A007559(n)`
-/

namespace A047657.P14170099639012857688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007559 n

end

end A047657.P14170099639012857688

namespace A047657

/-- `2^n*A007559(n)` -/
def P14170099639012857688.Spec : Prop :=
  ∀ n, P14170099639012857688.a n = A047657 n

end A047657

/-! ## A047657.P6163376823588365071

`A084941(n)/A000142(n)*A000079(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047657

/-- `A084941(n)/A000142(n)*A000079(n)` -/
def P6163376823588365071.Spec : Prop :=
  ∀ n, P6163376823588365071.a n = (A047657 n : ℚ)

end A047657

/-! ## A047657.P3726261030927740910

`∏[a(n-1)+6]` with `a(0)=1, a(1)=2`
-/

namespace A047657.P3726261030927740910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047657.P3726261030927740910

namespace A047657

/-- `∏[a(n-1)+6]` -/
def P3726261030927740910.Spec : Prop :=
  ∀ n, (P3726261030927740910.a n : ℤ) = A047657 n

end A047657

/-! ## A047657.P13836325868538281299

`(6*n-4)*a(n-1)` with `a(0)=1`
-/

namespace A047657.P13836325868538281299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((6 * n : ℤ) - 4) * a (n - 1)

end

end A047657.P13836325868538281299

namespace A047657

/-- `(6*n-4)*a(n-1)` -/
def P13836325868538281299.Spec : Prop :=
  ∀ n, P13836325868538281299.a n = A047657 n

end A047657

/-! ## A047657.P16520516967736015136

`2^n*∏[floor(abs(3*n-ϕ))]`
-/

namespace A047657.P16520516967736015136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(3 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A047657.P16520516967736015136

namespace A047657

/-- `2^n*∏[floor(abs(3*n-ϕ))]` -/
def P16520516967736015136.Spec : Prop :=
  ∀ n, P16520516967736015136.a n = A047657 n

end A047657

/-! ## A047657.P14671494024120438140

`∏[∪[6*n+8, ∑[(n+1)!]-n²%(n+1)]]`
-/

namespace A047657.P14671494024120438140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 8

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047657.P14671494024120438140

namespace A047657

/-- `∏[∪[6*n+8, ∑[(n+1)!]-n²%(n+1)]]` -/
def P14671494024120438140.Spec : Prop :=
  ∀ n, (P14671494024120438140.a n : ℤ) = A047657 n

end A047657

/-! ## A047657.P7029053743715202256

`∏[record[A078689(n)]]`
-/

namespace A047657.P7029053743715202256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047657.P7029053743715202256

namespace A047657

/-- `∏[record[A078689(n)]]` -/
def P7029053743715202256.Spec : Prop :=
  ∀ n, P7029053743715202256.a n = A047657 n

end A047657

/-! ## A047657.P14865816630631549267

`∏[record[A174785(n)]]`
-/

namespace A047657.P14865816630631549267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047657.P14865816630631549267

namespace A047657

/-- `∏[record[A174785(n)]]` -/
def P14865816630631549267.Spec : Prop :=
  ∀ n, P14865816630631549267.a n = A047657 n

end A047657

/-! ## A047657.P15728966588620365179

`∏[record[A187307(n)]]`
-/

namespace A047657.P15728966588620365179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047657.P15728966588620365179

namespace A047657

/-- `∏[record[A187307(n)]]` -/
def P15728966588620365179.Spec : Prop :=
  ∀ n, P15728966588620365179.a n = A047657 n

end A047657

/-! ## A047657.P1322680217068394254

`∏[∪[6*n+8, A054116(n+1)]]`
-/

namespace A047657.P1322680217068394254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054116 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047657.P1322680217068394254

namespace A047657

/-- `∏[∪[6*n+8, A054116(n+1)]]` -/
def P1322680217068394254.Spec : Prop :=
  ∀ n, (P1322680217068394254.a n : ℤ) = A047657 n

end A047657

/-!
# A047659: Number of ways to place 3 nonattacking queens on an n X n board.

The programs for A047659, there is no canonical definition to state claims against.
-/

/-! ## A047659.P6076777399694885481

`A348129(A350660(n+2))-char[1-n²]`
-/

namespace A047659.P6076777399694885481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348129 (A350660 (n + 2)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047659.P6076777399694885481

/-! ## A047659.P1441402560690343774

`A348129(A350660(n+2))%A042199(n)`
-/

namespace A047659.P1441402560690343774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348129 (A350660 (n + 2)).toNat) (A042199 n)

end

end A047659.P1441402560690343774

/-!
# A047661: Row 5 of square array defined in A047662.

The programs for A047661, the canonical program `A047661.P2396345352528960781` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047661 has offset 1).

The definition of A047661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047661.P2396345352528960781

`(n+1)/15*(2*(n+1)^4+5*(n+1)^3+20*(n+1)²+25*(n+1)+23)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047661

/-- `(n+1)/15*(2*(n+1)^4+5*(n+1)^3+20*(n+1)²+25*(n+1)+23)` -/
def P2396345352528960781.Spec : Prop :=
  ∀ n, P2396345352528960781.a n = (A047661 (n + 1) : ℚ)

end A047661

/-! ## A047661.P1505528129345130585

`∑[A008413(n+1)/2]`
-/

namespace A047661.P1505528129345130585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008413 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047661.P1505528129345130585

namespace A047661

/-- `∑[A008413(n+1)/2]` -/
def P1505528129345130585.Spec : Prop :=
  ∀ n, P1505528129345130585.a n = (A047661 (n + 1) : ℚ)

end A047661

/-! ## A047661.P15278113352835152779

`∑[A001846(n)+∑[A112087(n+1)]]`
-/

namespace A047661.P15278113352835152779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047661.P15278113352835152779

namespace A047661

/-- `∑[A001846(n)+∑[A112087(n+1)]]` -/
def P15278113352835152779.Spec : Prop :=
  ∀ n, P15278113352835152779.a n = A047661 (n + 1)

end A047661

/-! ## A047661.P14804775555763946850

`∑[∑[A112087(n+1)+A008412(n)]]`
-/

namespace A047661.P14804775555763946850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112087 (n + 1) + A008412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047661.P14804775555763946850

namespace A047661

/-- `∑[∑[A112087(n+1)+A008412(n)]]` -/
def P14804775555763946850.Spec : Prop :=
  ∀ n, P14804775555763946850.a n = A047661 (n + 1)

end A047661

/-! ## A047661.P11309905926597155793

`∑[Δ[A001847(n)]/2]`
-/

namespace A047661.P11309905926597155793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001847 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047661.P11309905926597155793

namespace A047661

/-- `∑[Δ[A001847(n)]/2]` -/
def P11309905926597155793.Spec : Prop :=
  ∀ n, P11309905926597155793.a n = (A047661 (n + 1) : ℚ)

end A047661

/-! ## A047661.P17300493377205484103

`floor(A001847(n+1)/2)`
-/

namespace A047661.P17300493377205484103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001847 (n + 1) : ℚ) / 2⌋

end

end A047661.P17300493377205484103

namespace A047661

/-- `floor(A001847(n+1)/2)` -/
def P17300493377205484103.Spec : Prop :=
  ∀ n, P17300493377205484103.a n = A047661 (n + 1)

end A047661

/-! ## A047661.P16350232152618809268

`(A047674(n+2)-1)/3`
-/

namespace A047661.P16350232152618809268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047674 (n + 2) - 1 : ℚ) / 3

end

end A047661.P16350232152618809268

namespace A047661

/-- `(A047674(n+2)-1)/3` -/
def P16350232152618809268.Spec : Prop :=
  ∀ n, P16350232152618809268.a n = (A047661 (n + 1) : ℚ)

end A047661

/-! ## A047661.P18092725976009224884

`∑[A217873(n+1)+A001846(n)]`
-/

namespace A047661.P18092725976009224884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 (n + 1) + A001846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047661.P18092725976009224884

namespace A047661

/-- `∑[A217873(n+1)+A001846(n)]` -/
def P18092725976009224884.Spec : Prop :=
  ∀ n, P18092725976009224884.a n = A047661 (n + 1)

end A047661

/-! ## A047661.P6715937230022467948

`floor(A067969(2*n+1)/2)`
-/

namespace A047661.P6715937230022467948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067969 (2 * n + 1) : ℚ) / 2⌋

end

end A047661.P6715937230022467948

namespace A047661

/-- `floor(A067969(2*n+1)/2)` -/
def P6715937230022467948.Spec : Prop :=
  ∀ n, P6715937230022467948.a n = A047661 (n + 1)

end A047661

/-! ## A047661.P14823710401894797666

`∑[∑[A140226(2*n+1)]+1]`
-/

namespace A047661.P14823710401894797666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140226 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047661.P14823710401894797666

namespace A047661

/-- `∑[∑[A140226(2*n+1)]+1]` -/
def P14823710401894797666.Spec : Prop :=
  ∀ n, P14823710401894797666.a n = A047661 (n + 1)

end A047661

/-! ## A047661.P9822595423880699804

`(A067969(A005408(n))-1)/2`
-/

namespace A047661.P9822595423880699804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067969 (A005408 n).toNat - 1 : ℚ) / 2

end

end A047661.P9822595423880699804

namespace A047661

/-- `(A067969(A005408(n))-1)/2` -/
def P9822595423880699804.Spec : Prop :=
  ∀ n, P9822595423880699804.a n = (A047661 (n + 1) : ℚ)

end A047661

/-! ## A047661.P17911326636055911919

`A047662(A374005(n+1))`
-/

namespace A047661.P17911326636055911919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (A374005 (n + 1)).toNat

end

end A047661.P17911326636055911919

namespace A047661

/-- `A047662(A374005(n+1))` -/
def P17911326636055911919.Spec : Prop :=
  ∀ n, P17911326636055911919.a n = A047661 (n + 1)

end A047661

/-! ## A047661.P2890733546059950903

`A047662(A000217(n+4)+5)`
-/

namespace A047661.P2890733546059950903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (A000217 (n + 4) + 5).toNat

end

end A047661.P2890733546059950903

namespace A047661

/-- `A047662(A000217(n+4)+5)` -/
def P2890733546059950903.Spec : Prop :=
  ∀ n, P2890733546059950903.a n = A047661 (n + 1)

end A047661

/-! ## A047661.P1928083738133121668

`A047662(A027379(n+3)-1)`
-/

namespace A047661.P1928083738133121668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (A027379 (n + 3) - 1).toNat

end

end A047661.P1928083738133121668

namespace A047661

/-- `A047662(A027379(n+3)-1)` -/
def P1928083738133121668.Spec : Prop :=
  ∀ n, P1928083738133121668.a n = A047661 (n + 1)

end A047661

/-! ## A047661.P9895368857022599897

`A047662(A000124(n+5)-5)`
-/

namespace A047661.P9895368857022599897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (A000124 (n + 5) - 5).toNat

end

end A047661.P9895368857022599897

namespace A047661

/-- `A047662(A000124(n+5)-5)` -/
def P9895368857022599897.Spec : Prop :=
  ∀ n, P9895368857022599897.a n = A047661 (n + 1)

end A047661

/-!
# A047662: Square array a(n,k) read by antidiagonals: a(n,1)=n, a(1,k)=k, a(n,k)=a(n-1,k-1)+a(n-1,k)+a(n,k-1)+1.

The programs for A047662, the canonical program `A047662.P5248704088214227132` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047662 has offset 1).

The definition of A047662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-2,k-1)+T(n-1,k)+T(n-1,k-1)+1` (program `A047662.P5248704088214227132`, by `A047662.P5248704088214227132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047662.P5248704088214227132

`T(n-2,k-1)+T(n-1,k)+T(n-1,k-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047662

/-- `T(n-2,k-1)+T(n-1,k)+T(n-1,k-1)+1` -/
def P5248704088214227132.Spec : Prop :=
  ∀ n, (P5248704088214227132.a n : ℤ) = A047662 (n + 1)

theorem P5248704088214227132.correct : P5248704088214227132.Spec := by
  intro n
  simp only [A047662, Nat.add_sub_cancel]

end A047662

/-! ## A047662.P8044129185209535241

`T(n-2,k-1)+T(n-1,k-1)+T(n-1,k)+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047662.P8044129185209535241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + 1

end

end A047662.P8044129185209535241

namespace A047662

/-- `T(n-2,k-1)+T(n-1,k-1)+T(n-1,k)+1` -/
def P8044129185209535241.Spec : Prop :=
  ∀ n, (P8044129185209535241.a n : ℤ) = A047662 (n + 1)

end A047662

/-! ## A047662.P8457497237300324244

`A391318(n)+A008288(n)`
-/

namespace A047662.P8457497237300324244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391318 n + A008288 n

end

end A047662.P8457497237300324244

namespace A047662

/-- `A391318(n)+A008288(n)` -/
def P8457497237300324244.Spec : Prop :=
  ∀ n, P8457497237300324244.a n = A047662 (n + 1)

end A047662

/-! ## A047662.P1517133485784747939

`A047666(n+1)+(A008288(n)-1)/2`
-/

namespace A047662.P1517133485784747939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047666 (n + 1) : ℚ) + (A008288 n - 1 : ℚ) / 2

end

end A047662.P1517133485784747939

namespace A047662

/-- `A047666(n+1)+(A008288(n)-1)/2` -/
def P1517133485784747939.Spec : Prop :=
  ∀ n, P1517133485784747939.a n = (A047662 (n + 1) : ℚ)

end A047662

/-! ## A047662.P10985116316477001236

`A047666(n+1)+A047671(n+1)-A008288(n)`
-/

namespace A047662.P10985116316477001236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (n + 1) + (A047671 (n + 1) - A008288 n)

end

end A047662.P10985116316477001236

namespace A047662

/-- `A047666(n+1)+A047671(n+1)-A008288(n)` -/
def P10985116316477001236.Spec : Prop :=
  ∀ n, P10985116316477001236.a n = A047662 (n + 1)

end A047662

/-! ## A047662.P6478116126064361228

`floor(A008288(lt[0, A004197(n)])/2)`
-/

namespace A047662.P6478116126064361228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋

end

end A047662.P6478116126064361228

namespace A047662

/-- `floor(A008288(lt[0, A004197(n)])/2)` -/
def P6478116126064361228.Spec : Prop :=
  ∀ n, P6478116126064361228.a n = A047662 (n + 1)

end A047662

/-! ## A047662.P3685284823167745251

`A047666(n+1)+A101164(n)-A225413(n)`
-/

namespace A047662.P3685284823167745251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (n + 1) + (A101164 n - A225413 n)

end

end A047662.P3685284823167745251

namespace A047662

/-- `A047666(n+1)+A101164(n)-A225413(n)` -/
def P3685284823167745251.Spec : Prop :=
  ∀ n, P3685284823167745251.a n = A047662 (n + 1)

end A047662

/-! ## A047662.P18088925338741477948

`A047666(n+1)+A004524(A008288(n))`
-/

namespace A047662.P18088925338741477948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (n + 1) + A004524 (A008288 n).toNat

end

end A047662.P18088925338741477948

namespace A047662

/-- `A047666(n+1)+A004524(A008288(n))` -/
def P18088925338741477948.Spec : Prop :=
  ∀ n, P18088925338741477948.a n = A047662 (n + 1)

end A047662

/-! ## A047662.P10306363211643056940

`A047666(n+1)+A006370(A008288(n)-1)`
-/

namespace A047662.P10306363211643056940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (n + 1) + A006370 (A008288 n - 1).toNat

end

end A047662.P10306363211643056940

namespace A047662

/-- `A047666(n+1)+A006370(A008288(n)-1)` -/
def P10306363211643056940.Spec : Prop :=
  ∀ n, P10306363211643056940.a n = A047662 (n + 1)

end A047662

/-!
# A047663: Row 6 of square array defined in A047662.

The programs for A047663, the canonical program `A047663.P687521610358638725` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047663 has offset 1).

The definition of A047663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047663.P687521610358638725

`(n+1)*(2*(n+1)^5+6*(n+1)^4+35*(n+1)^3+60*(n+1)²+98*(n+1)+69)/45`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047663

/-- `(n+1)*(2*(n+1)^5+6*(n+1)^4+35*(n+1)^3+60*(n+1)²+98*(n+1)+69)/45` -/
def P687521610358638725.Spec : Prop :=
  ∀ n, P687521610358638725.a n = (A047663 (n + 1) : ℚ)

end A047663

/-! ## A047663.P7880503406323538909

`∑[A008414(n+1)/2]`
-/

namespace A047663.P7880503406323538909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008414 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047663.P7880503406323538909

namespace A047663

/-- `∑[A008414(n+1)/2]` -/
def P7880503406323538909.Spec : Prop :=
  ∀ n, P7880503406323538909.a n = (A047663 (n + 1) : ℚ)

end A047663

/-! ## A047663.P11211460361973783567

`∑[A364429(n+1)]`
-/

namespace A047663.P11211460361973783567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047663.P11211460361973783567

namespace A047663

/-- `∑[A364429(n+1)]` -/
def P11211460361973783567.Spec : Prop :=
  ∀ n, P11211460361973783567.a n = A047663 (n + 1)

end A047663

/-! ## A047663.P7782295730317276207

`∑[Δ[A001848(n)]/2]`
-/

namespace A047663.P7782295730317276207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047663.P7782295730317276207

namespace A047663

/-- `∑[Δ[A001848(n)]/2]` -/
def P7782295730317276207.Spec : Prop :=
  ∀ n, P7782295730317276207.a n = (A047663 (n + 1) : ℚ)

end A047663

/-! ## A047663.P4984211638254695374

`floor(A001848(n+1)/2)`
-/

namespace A047663.P4984211638254695374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001848 (n + 1) : ℚ) / 2⌋

end

end A047663.P4984211638254695374

namespace A047663

/-- `floor(A001848(n+1)/2)` -/
def P4984211638254695374.Spec : Prop :=
  ∀ n, P4984211638254695374.a n = A047663 (n + 1)

end A047663

/-! ## A047663.P8699260815616686796

`∑[(A001847(n+1)+A001847(n))/2]`
-/

namespace A047663.P8699260815616686796
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001847 (n + 1) + A001847 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047663.P8699260815616686796

namespace A047663

/-- `∑[(A001847(n+1)+A001847(n))/2]` -/
def P8699260815616686796.Spec : Prop :=
  ∀ n, P8699260815616686796.a n = (A047663 (n + 1) : ℚ)

end A047663

/-! ## A047663.P7212955799819901072

`A047662(A374007(n+1))`
-/

namespace A047663.P7212955799819901072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (A374007 (n + 1)).toNat

end

end A047663.P7212955799819901072

namespace A047663

/-- `A047662(A374007(n+1))` -/
def P7212955799819901072.Spec : Prop :=
  ∀ n, P7212955799819901072.a n = A047663 (n + 1)

end A047663

/-! ## A047663.P6159455256863765352

`A047662(Δ[A023551(n+1)]+1)`
-/

namespace A047663.P6159455256863765352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (f1 (n + 1) - f1 n + 1).toNat

end

end A047663.P6159455256863765352

namespace A047663

/-- `A047662(Δ[A023551(n+1)]+1)` -/
def P6159455256863765352.Spec : Prop :=
  ∀ n, P6159455256863765352.a n = A047663 (n + 1)

end A047663

/-!
# A047664: Row 7 of square array defined in A047662.

The programs for A047664, the canonical program `A047664.P16577422671529071248` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047664 has offset 1).

The definition of A047664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047664.P10077621095758643192

`∑[A008415(n+1)/2]`
-/

namespace A047664.P10077621095758643192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008415 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047664.P10077621095758643192

namespace A047664

/-- `∑[A008415(n+1)/2]` -/
def P10077621095758643192.Spec : Prop :=
  ∀ n, P10077621095758643192.a n = (A047664 (n + 1) : ℚ)

end A047664

/-! ## A047664.P150214440366072640

`A047663(n+1)+∑[A001848(n)]`
-/

namespace A047664.P150214440366072640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047663 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047664.P150214440366072640

namespace A047664

/-- `A047663(n+1)+∑[A001848(n)]` -/
def P150214440366072640.Spec : Prop :=
  ∀ n, P150214440366072640.a n = A047664 (n + 1)

end A047664

/-! ## A047664.P7447247681069682668

`A099193(n+1)+A047663(n+1)`
-/

namespace A047664.P7447247681069682668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 (n + 1) + A047663 (n + 1)

end

end A047664.P7447247681069682668

namespace A047664

/-- `A099193(n+1)+A047663(n+1)` -/
def P7447247681069682668.Spec : Prop :=
  ∀ n, P7447247681069682668.a n = A047664 (n + 1)

end A047664

/-! ## A047664.P16577422671529071248

`floor((A008416(n+1)-A001849(n))/2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A047664

/-- `floor((A008416(n+1)-A001849(n))/2)` -/
def P16577422671529071248.Spec : Prop :=
  ∀ n, P16577422671529071248.a n = A047664 (n + 1)

theorem P16577422671529071248.correct : P16577422671529071248.Spec := by
  intro n
  simp only [A047664, Nat.add_sub_cancel]

end A047664

/-! ## A047664.P487665816311316487

`∑[Δ[A001849(n)]/2]`
-/

namespace A047664.P487665816311316487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047664.P487665816311316487

namespace A047664

/-- `∑[Δ[A001849(n)]/2]` -/
def P487665816311316487.Spec : Prop :=
  ∀ n, P487665816311316487.a n = (A047664 (n + 1) : ℚ)

end A047664

/-! ## A047664.P13366173977654787448

`floor(A001849(n+1)/2)`
-/

namespace A047664.P13366173977654787448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001849 (n + 1) : ℚ) / 2⌋

end

end A047664.P13366173977654787448

namespace A047664

/-- `floor(A001849(n+1)/2)` -/
def P13366173977654787448.Spec : Prop :=
  ∀ n, P13366173977654787448.a n = A047664 (n + 1)

end A047664

/-! ## A047664.P12375145056880400689

`A047662(A374008(n+1))`
-/

namespace A047664.P12375145056880400689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (A374008 (n + 1)).toNat

end

end A047664.P12375145056880400689

namespace A047664

/-- `A047662(A374008(n+1))` -/
def P12375145056880400689.Spec : Prop :=
  ∀ n, P12375145056880400689.a n = A047664 (n + 1)

end A047664

/-! ## A047664.P7351720109150571039

`A047662(A000217(n+6)+7)`
-/

namespace A047664.P7351720109150571039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (A000217 (n + 6) + 7).toNat

end

end A047664.P7351720109150571039

namespace A047664

/-- `A047662(A000217(n+6)+7)` -/
def P7351720109150571039.Spec : Prop :=
  ∀ n, P7351720109150571039.a n = A047664 (n + 1)

end A047664

/-! ## A047664.P11277620507965833617

`A047662(A055999(n+4))`
-/

namespace A047664.P11277620507965833617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (A055999 (n + 4)).toNat

end

end A047664.P11277620507965833617

namespace A047664

/-- `A047662(A055999(n+4))` -/
def P11277620507965833617.Spec : Prop :=
  ∀ n, P11277620507965833617.a n = A047664 (n + 1)

end A047664

/-! ## A047664.P8174946243511444553

`A047662(Δ[A023551(n+2)])`
-/

namespace A047664.P8174946243511444553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (f1 (n + 1) - f1 n).toNat

end

end A047664.P8174946243511444553

namespace A047664

/-- `A047662(Δ[A023551(n+2)])` -/
def P8174946243511444553.Spec : Prop :=
  ∀ n, P8174946243511444553.a n = A047664 (n + 1)

end A047664

/-!
# A047665: Expansion of (1/sqrt(1-6*x+x^2)-1/(1-x))/2.

The programs for A047665, the canonical program `A047665.P11812153229518684916` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047665 has offset 0).

The definition of A047665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047665.P7386249240308980993

`∑[A002002(n)]`
-/

namespace A047665.P7386249240308980993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047665.P7386249240308980993

namespace A047665

/-- `∑[A002002(n)]` -/
def P7386249240308980993.Spec : Prop :=
  ∀ n, P7386249240308980993.a n = A047665 n

end A047665

/-! ## A047665.P15426397130672597309

`A226994(n)-1`
-/

namespace A047665.P15426397130672597309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n - 1

end

end A047665.P15426397130672597309

namespace A047665

/-- `A226994(n)-1` -/
def P15426397130672597309.Spec : Prop :=
  ∀ n, P15426397130672597309.a n = A047665 n

theorem P15426397130672597309.correct : P15426397130672597309.Spec := by
  intro n
  simp only [A047665, Nat.add_sub_cancel, A047665.P15426397130672597309.a, A047665.P11812153229518684916.a, A001850, A001850.P8225243896153059034.a, A226994, A226994.P17259098154566869969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A047665

/-! ## A047665.P11812153229518684916

`floor(A001850(n)/2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047665

/-- `floor(A001850(n)/2)` -/
def P11812153229518684916.Spec : Prop :=
  ∀ n, P11812153229518684916.a n = A047665 n

theorem P11812153229518684916.correct : P11812153229518684916.Spec := by
  intro n
  simp only [A047665]

end A047665

/-! ## A047665.P9045354061350450079

`floor(A027618(n)/3)`
-/

namespace A047665.P9045354061350450079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027618 n : ℚ) / 3⌋

end

end A047665.P9045354061350450079

namespace A047665

/-- `floor(A027618(n)/3)` -/
def P9045354061350450079.Spec : Prop :=
  ∀ n, P9045354061350450079.a n = A047665 n

end A047665

/-! ## A047665.P14731064212377306625

`∑[abs(A182626(n))]-1`
-/

namespace A047665.P14731064212377306625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182626 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047665.P14731064212377306625

namespace A047665

/-- `∑[abs(A182626(n))]-1` -/
def P14731064212377306625.Spec : Prop :=
  ∀ n, P14731064212377306625.a n = A047665 n

end A047665

/-! ## A047665.P12825948882897568049

`∑[floor(A110170(n)/2)]`
-/

namespace A047665.P12825948882897568049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110170 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047665.P12825948882897568049

namespace A047665

/-- `∑[floor(A110170(n)/2)]` -/
def P12825948882897568049.Spec : Prop :=
  ∀ n, P12825948882897568049.a n = A047665 n

end A047665

/-! ## A047665.P11046723792743679159

`floor(A026003(2*n)/2)`
-/

namespace A047665.P11046723792743679159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026003 (2 * n) : ℚ) / 2⌋

end

end A047665.P11046723792743679159

namespace A047665

/-- `floor(A026003(2*n)/2)` -/
def P11046723792743679159.Spec : Prop :=
  ∀ n, P11046723792743679159.a n = A047665 n

end A047665

/-! ## A047665.P1358667856794338902

`∑[floor(A247630(2*n)/2)]`
-/

namespace A047665.P1358667856794338902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247630 (2 * n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047665.P1358667856794338902

namespace A047665

/-- `∑[floor(A247630(2*n)/2)]` -/
def P1358667856794338902.Spec : Prop :=
  ∀ n, P1358667856794338902.a n = A047665 n

end A047665

/-! ## A047665.P7821016693398244211

`A027618(n)-A001850(n)`
-/

namespace A047665.P7821016693398244211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027618 n - A001850 n

end

end A047665.P7821016693398244211

namespace A047665

/-- `A027618(n)-A001850(n)` -/
def P7821016693398244211.Spec : Prop :=
  ∀ n, P7821016693398244211.a n = A047665 n

end A047665

/-! ## A047665.P8798440521663662486

`A001850(n)%A226994(n)`
-/

namespace A047665.P8798440521663662486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001850 n) (A226994 n)

end

end A047665.P8798440521663662486

namespace A047665

/-- `A001850(n)%A226994(n)` -/
def P8798440521663662486.Spec : Prop :=
  ∀ n, P8798440521663662486.a n = A047665 n

end A047665

/-! ## A047665.P16894656267685610499

`A027618(n)-A026003(2*n)`
-/

namespace A047665.P16894656267685610499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027618 n - A026003 (2 * n)

end

end A047665.P16894656267685610499

namespace A047665

/-- `A027618(n)-A026003(2*n)` -/
def P16894656267685610499.Spec : Prop :=
  ∀ n, P16894656267685610499.a n = A047665 n

end A047665

/-! ## A047665.P17389200892310225428

`∑[A001850(n)-A002003(n)]-1`
-/

namespace A047665.P17389200892310225428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A002003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A047665.P17389200892310225428

namespace A047665

/-- `∑[A001850(n)-A002003(n)]-1` -/
def P17389200892310225428.Spec : Prop :=
  ∀ n, P17389200892310225428.a n = A047665 n

end A047665

/-! ## A047665.P4565083342838403051

`∑[A110110(2*n)]-A089165(n)`
-/

namespace A047665.P4565083342838403051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A089165 n

end

end A047665.P4565083342838403051

namespace A047665

/-- `∑[A110110(2*n)]-A089165(n)` -/
def P4565083342838403051.Spec : Prop :=
  ∀ n, P4565083342838403051.a n = A047665 n

end A047665

/-! ## A047665.P14762670188111557064

`(A033999(2*n+1)+A026003(2*n))/2`
-/

namespace A047665.P14762670188111557064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) + A026003 (2 * n) : ℚ) / 2

end

end A047665.P14762670188111557064

namespace A047665

/-- `(A033999(2*n+1)+A026003(2*n))/2` -/
def P14762670188111557064.Spec : Prop :=
  ∀ n, P14762670188111557064.a n = (A047665 n : ℚ)

end A047665

/-! ## A047665.P16408793262861060065

`(A001850(n)+1)/2-A008288(A001972(2*(n+2)))`
-/

namespace A047665.P16408793262861060065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001850 n + 1 : ℚ) / 2 - (A008288 (A001972 (2 * (n + 2))).toNat : ℚ)

end

end A047665.P16408793262861060065

namespace A047665

/-- `(A001850(n)+1)/2-A008288(A001972(2*(n+2)))` -/
def P16408793262861060065.Spec : Prop :=
  ∀ n, P16408793262861060065.a n = (A047665 n : ℚ)

end A047665

/-! ## A047665.P5371747498716137471

`∑[A001109(n)-A110127(n)]`
-/

namespace A047665.P5371747498716137471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n - A110127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047665.P5371747498716137471

namespace A047665

/-- `∑[A001109(n)-A110127(n)]` -/
def P5371747498716137471.Spec : Prop :=
  ∀ n, P5371747498716137471.a n = A047665 n

end A047665

/-! ## A047665.P7291990983744633370

`A053142(n)-∑[A110127(n)]`
-/

namespace A047665.P7291990983744633370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047665.P7291990983744633370

namespace A047665

/-- `A053142(n)-∑[A110127(n)]` -/
def P7291990983744633370.Spec : Prop :=
  ∀ n, P7291990983744633370.a n = A047665 n

end A047665

/-! ## A047665.P14175575000639482813

`∑[A001542(n)/2-A110127(n)]`
-/

namespace A047665.P14175575000639482813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001542 n : ℚ) / 2 - (A110127 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047665.P14175575000639482813

namespace A047665

/-- `∑[A001542(n)/2-A110127(n)]` -/
def P14175575000639482813.Spec : Prop :=
  ∀ n, P14175575000639482813.a n = (A047665 n : ℚ)

end A047665

/-! ## A047665.P10091159016702859568

`∑[A204512(2*(n+1))-A110127(n)]`
-/

namespace A047665.P10091159016702859568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (2 * (n + 1)) - A110127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047665.P10091159016702859568

namespace A047665

/-- `∑[A204512(2*(n+1))-A110127(n)]` -/
def P10091159016702859568.Spec : Prop :=
  ∀ n, P10091159016702859568.a n = A047665 n

end A047665

/-! ## A047665.P3524510161725709699

`∑[∑[A104550(n+1)]-A104550(n+1)]`
-/

namespace A047665.P3524510161725709699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A104550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047665.P3524510161725709699

namespace A047665

/-- `∑[∑[A104550(n+1)]-A104550(n+1)]` -/
def P3524510161725709699.Spec : Prop :=
  ∀ n, P3524510161725709699.a n = A047665 n

end A047665

/-!
# A047666: Square array a(n,k) read by antidiagonals: a(n,1)=n, a(1,k)=k, a(n,k) = a(n-1,k-1) + a(n-1,k) + a(n,k-1).

The programs for A047666, the canonical program `A047666.P2227435095313128948` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047666 has offset 1).

The definition of A047666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047666.P2227435095313128948

`A391318(n)+A108350(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A047666

/-- `A391318(n)+A108350(n)` -/
def P2227435095313128948.Spec : Prop :=
  ∀ n, P2227435095313128948.a n = A047666 (n + 1)

theorem P2227435095313128948.correct : P2227435095313128948.Spec := by
  intro n
  simp only [A047666, Nat.add_sub_cancel]

end A047666

/-! ## A047666.P15230295458123788837

`A047662(n+1)+(1-A008288(n))/2`
-/

namespace A047666.P15230295458123788837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047662 (n + 1) : ℚ) + (1 - A008288 n : ℚ) / 2

end

end A047666.P15230295458123788837

namespace A047666

/-- `A047662(n+1)+(1-A008288(n))/2` -/
def P15230295458123788837.Spec : Prop :=
  ∀ n, P15230295458123788837.a n = (A047666 (n + 1) : ℚ)

end A047666

/-! ## A047666.P10850346466393610871

`A142978(n+1)+A104698(n)-A008288(n)`
-/

namespace A047666.P10850346466393610871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (n + 1) + (A104698 n - A008288 n)

end

end A047666.P10850346466393610871

namespace A047666

/-- `A142978(n+1)+A104698(n)-A008288(n)` -/
def P10850346466393610871.Spec : Prop :=
  ∀ n, P10850346466393610871.a n = A047666 (n + 1)

end A047666

/-! ## A047666.P12539867328462390289

`A047662(n+1)+A008288(n)-A047671(n+1)`
-/

namespace A047666.P12539867328462390289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047662 (n + 1) + (A008288 n - A047671 (n + 1))

end

end A047666.P12539867328462390289

namespace A047666

/-- `A047662(n+1)+A008288(n)-A047671(n+1)` -/
def P12539867328462390289.Spec : Prop :=
  ∀ n, P12539867328462390289.a n = A047666 (n + 1)

end A047666

/-! ## A047666.P17496491980571439108

`A142978(n+1)+A210222(n+2)-A104698(n+1)`
-/

namespace A047666.P17496491980571439108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (n + 1) + (A210222 (n + 2) - A104698 (n + 1))

end

end A047666.P17496491980571439108

namespace A047666

/-- `A142978(n+1)+A210222(n+2)-A104698(n+1)` -/
def P17496491980571439108.Spec : Prop :=
  ∀ n, P17496491980571439108.a n = A047666 (n + 1)

end A047666

/-!
# A047667: Row 3 of array in A047666.

The programs for A047667, the canonical program `A047667.P15186661141425399920` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047667 has offset 1).

The definition of A047667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047667.P1996952318202636919

`(n+1)/3*(2*(n+1)²+7)`
-/

namespace A047667.P1996952318202636919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (2 * (n + 1) ^ 2 + 7 : ℚ)

end

end A047667.P1996952318202636919

namespace A047667

/-- `(n+1)/3*(2*(n+1)²+7)` -/
def P1996952318202636919.Spec : Prop :=
  ∀ n, P1996952318202636919.a n = (A047667 (n + 1) : ℚ)

theorem P1996952318202636919.correct : P1996952318202636919.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A047667, Nat.add_sub_cancel, A047667.P1996952318202636919.a, A047667.P15186661141425399920.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A047667, Nat.add_sub_cancel, A047667.P1996952318202636919.a, A047667.P15186661141425399920.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047667

/-! ## A047667.P15186661141425399920

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=10, a(2)=25, a(3)=52`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047667

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15186661141425399920.Spec : Prop :=
  ∀ n, P15186661141425399920.a n = A047667 (n + 1)

theorem P15186661141425399920.correct : P15186661141425399920.Spec := by
  intro n
  simp only [A047667, Nat.add_sub_cancel]

end A047667

/-! ## A047667.P10663227978462327274

`A192793(n+1)/36`
-/

namespace A047667.P10663227978462327274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192793 (n + 1) : ℚ) / 36

end

end A047667.P10663227978462327274

namespace A047667

/-- `A192793(n+1)/36` -/
def P10663227978462327274.Spec : Prop :=
  ∀ n, P10663227978462327274.a n = (A047667 (n + 1) : ℚ)

theorem P10663227978462327274.correct : P10663227978462327274.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A047667, Nat.add_sub_cancel, A047667.P10663227978462327274.a, A047667.P15186661141425399920.a, A192793, A192793.P50660454118742065.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A047667, Nat.add_sub_cancel, A047667.P10663227978462327274.a, A047667.P15186661141425399920.a, A192793, A192793.P50660454118742065.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A047667

/-! ## A047667.P1877366766602893377

`-∑[floor(2/Δ[acot(n)])]`
-/

namespace A047667.P1877366766602893377
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (f2 (n + 1) - f2 n)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047667.P1877366766602893377

namespace A047667

/-- `-∑[floor(2/Δ[acot(n)])]` -/
def P1877366766602893377.Spec : Prop :=
  ∀ n, P1877366766602893377.a n = A047667 (n + 1)

end A047667

/-! ## A047667.P12885786554669287837

`∑[∑[floor(4/acot(n))]]+1`
-/

namespace A047667.P12885786554669287837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / SequenceMachineLib.acot (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A047667.P12885786554669287837

namespace A047667

/-- `∑[∑[floor(4/acot(n))]]+1` -/
def P12885786554669287837.Spec : Prop :=
  ∀ n, P12885786554669287837.a n = A047667 (n + 1)

end A047667

/-! ## A047667.P13475921490642000131

`∑[∑[ogf((3-2x+3x^2)/(1-2x+x^2))]]`
-/

namespace A047667.P13475921490642000131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047667.P13475921490642000131

namespace A047667

/-- `∑[∑[ogf((3-2x+3x^2)/(1-2x+x^2))]]` -/
def P13475921490642000131.Spec : Prop :=
  ∀ n, P13475921490642000131.a n = A047667 (n + 1)

end A047667

/-! ## A047667.P8831802090379908186

`ogf((3-2x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A047667.P8831802090379908186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 3] [1, -4, 6, -4, 1] n

end

end A047667.P8831802090379908186

namespace A047667

/-- `ogf((3-2x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P8831802090379908186.Spec : Prop :=
  ∀ n, P8831802090379908186.a n = A047667 (n + 1)

end A047667

/-! ## A047667.P12927269328144436762

`abs(∑[∑[a(n-1)+4]])` with `a(0)=3, a(1)=4`
-/

namespace A047667.P12927269328144436762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047667.P12927269328144436762

namespace A047667

/-- `abs(∑[∑[a(n-1)+4]])` -/
def P12927269328144436762.Spec : Prop :=
  ∀ n, (P12927269328144436762.a n : ℤ) = A047667 (n + 1)

end A047667

/-! ## A047667.P3685745448180459111

`floor(∑[∑[a(n-1)+4]])` with `a(0)=3, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A047667.P3685745448180459111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047667.P3685745448180459111

namespace A047667

/-- `floor(∑[∑[a(n-1)+4]])` -/
def P3685745448180459111.Spec : Prop :=
  ∀ n, (P3685745448180459111.a n : ℤ) = A047667 (n + 1)

end A047667

/-! ## A047667.P5524574107637289535

`∑[∑[a(n-1)+8]]/2` with `a(0)=6, a(1)=8`
-/

namespace A047667.P5524574107637289535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A047667.P5524574107637289535

namespace A047667

/-- `∑[∑[a(n-1)+8]]/2` -/
def P5524574107637289535.Spec : Prop :=
  ∀ n, P5524574107637289535.a n = (A047667 (n + 1) : ℚ)

end A047667

/-! ## A047667.P753517513949432984

`floor(∑[3-∑[a(n-1)-4]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A047667.P753517513949432984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047667.P753517513949432984

namespace A047667

/-- `floor(∑[3-∑[a(n-1)-4]])` -/
def P753517513949432984.Spec : Prop :=
  ∀ n, P753517513949432984.a n = A047667 (n + 1)

end A047667

/-! ## A047667.P6241487232955417843

`∑[∑[a(n-1)+4]]+∑[n]` with `a(0)=3, a(1)=3`
-/

namespace A047667.P6241487232955417843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A047667.P6241487232955417843

namespace A047667

/-- `∑[∑[a(n-1)+4]]+∑[n]` -/
def P6241487232955417843.Spec : Prop :=
  ∀ n, (P6241487232955417843.a n : ℤ) = A047667 (n + 1)

end A047667

/-! ## A047667.P2972894848675229703

`∑[lcm(2, n²+1+n)]+n+1`
-/

namespace A047667.P2972894848675229703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n ^ 2 + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A047667.P2972894848675229703

namespace A047667

/-- `∑[lcm(2, n²+1+n)]+n+1` -/
def P2972894848675229703.Spec : Prop :=
  ∀ n, (P2972894848675229703.a n : ℤ) = A047667 (n + 1)

end A047667

/-! ## A047667.P12733783548676502352

`∑[C(n+1+n, 2)]+∑[n+3]`
-/

namespace A047667.P12733783548676502352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1 + n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A047667.P12733783548676502352

namespace A047667

/-- `∑[C(n+1+n, 2)]+∑[n+3]` -/
def P12733783548676502352.Spec : Prop :=
  ∀ n, (P12733783548676502352.a n : ℤ) = A047667 (n + 1)

end A047667

/-! ## A047667.P15287559544475823574

`∑[n+3]+∑[lcm(n, n+1+n)]`
-/

namespace A047667.P15287559544475823574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A047667.P15287559544475823574

namespace A047667

/-- `∑[n+3]+∑[lcm(n, n+1+n)]` -/
def P15287559544475823574.Spec : Prop :=
  ∀ n, (P15287559544475823574.a n : ℤ) = A047667 (n + 1)

end A047667

/-! ## A047667.P14232661673590359336

`2*(n²+n)+a(n-1)+3` with `a(0)=3`
-/

namespace A047667.P14232661673590359336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * (n ^ 2 + n) + (a (n - 1) + 3)

end

end A047667.P14232661673590359336

namespace A047667

/-- `2*(n²+n)+a(n-1)+3` -/
def P14232661673590359336.Spec : Prop :=
  ∀ n, (P14232661673590359336.a n : ℤ) = A047667 (n + 1)

end A047667

/-! ## A047667.P1264772356643107072

`a(n-1)+2*n*(n+1)+3` with `a(0)=3`
-/

namespace A047667.P1264772356643107072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 * n * (n + 1) + 3

end

end A047667.P1264772356643107072

namespace A047667

/-- `a(n-1)+2*n*(n+1)+3` -/
def P1264772356643107072.Spec : Prop :=
  ∀ n, (P1264772356643107072.a n : ℤ) = A047667 (n + 1)

end A047667

/-! ## A047667.P6708626844266439255

`(n+1)²+a(n-1)+n²+2` with `a(0)=3`
-/

namespace A047667.P6708626844266439255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (n + 1) ^ 2 + (a (n - 1) + n ^ 2 + 2)

end

end A047667.P6708626844266439255

namespace A047667

/-- `(n+1)²+a(n-1)+n²+2` -/
def P6708626844266439255.Spec : Prop :=
  ∀ n, (P6708626844266439255.a n : ℤ) = A047667 (n + 1)

end A047667

/-! ## A047667.P12467088642768202693

`∑[A097080(n+1)]`
-/

namespace A047667.P12467088642768202693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047667.P12467088642768202693

namespace A047667

/-- `∑[A097080(n+1)]` -/
def P12467088642768202693.Spec : Prop :=
  ∀ n, P12467088642768202693.a n = A047667 (n + 1)

end A047667

/-! ## A047667.P8037296035881663908

`∑[A001844(n)+2]`
-/

namespace A047667.P8037296035881663908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047667.P8037296035881663908

namespace A047667

/-- `∑[A001844(n)+2]` -/
def P8037296035881663908.Spec : Prop :=
  ∀ n, P8037296035881663908.a n = A047667 (n + 1)

end A047667

/-!
# A047668: Row 4 of array in A047666.

The programs for A047668, the canonical program `A047668.P1076313100233995944` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047668 has offset 1).

The definition of A047668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047668.P1076313100233995944

`((n+1)^4+8*(n+1)²+3)/3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047668

/-- `((n+1)^4+8*(n+1)²+3)/3` -/
def P1076313100233995944.Spec : Prop :=
  ∀ n, P1076313100233995944.a n = (A047668 (n + 1) : ℚ)

end A047668

/-! ## A047668.P12616898522784992434

`∑[∑[(2/cos(atan(n)))²]]+n²`
-/

namespace A047668.P12616898522784992434
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 / Real.cos (Real.arctan (n : ℝ))) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℝ)

end

end A047668.P12616898522784992434

namespace A047668

/-- `∑[∑[(2/cos(atan(n)))²]]+n²` -/
def P12616898522784992434.Spec : Prop :=
  ∀ n, P12616898522784992434.a n = (A047668 (n + 1) : ℝ)

end A047668

/-! ## A047668.P12487600397937622520

`n²-∑[∑[xor(-4, (2*n)²)]]`
-/

namespace A047668.P12487600397937622520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-4) ((2 * n) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047668.P12487600397937622520

namespace A047668

/-- `n²-∑[∑[xor(-4, (2*n)²)]]` -/
def P12487600397937622520.Spec : Prop :=
  ∀ n, P12487600397937622520.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P14555054639056968149

`(n+1)*∑[lcm(n, n+1)+3]+1`
-/

namespace A047668.P14555054639056968149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A047668.P14555054639056968149

namespace A047668

/-- `(n+1)*∑[lcm(n, n+1)+3]+1` -/
def P14555054639056968149.Spec : Prop :=
  ∀ n, (P14555054639056968149.a n : ℤ) = A047668 (n + 1)

end A047668

/-! ## A047668.P4649055627620808188

`(n+1)*∑[a(n-1)+2*n]+1` with `a(0)=3`
-/

namespace A047668.P4649055627620808188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A047668.P4649055627620808188

namespace A047668

/-- `(n+1)*∑[a(n-1)+2*n]+1` -/
def P4649055627620808188.Spec : Prop :=
  ∀ n, (P4649055627620808188.a n : ℤ) = A047668 (n + 1)

end A047668

/-! ## A047668.P5821785218748142339

`A165394(n+2)+(n+1)*(n+3)`
-/

namespace A047668.P5821785218748142339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165394 (n + 2) + ((n + 1) * (n + 3) : ℤ)

end

end A047668.P5821785218748142339

namespace A047668

/-- `A165394(n+2)+(n+1)*(n+3)` -/
def P5821785218748142339.Spec : Prop :=
  ∀ n, P5821785218748142339.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P7582533510198353981

`A081492(n+2)-∑[(1-n)²]`
-/

namespace A047668.P7582533510198353981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081492 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047668.P7582533510198353981

namespace A047668

/-- `A081492(n+2)-∑[(1-n)²]` -/
def P7582533510198353981.Spec : Prop :=
  ∀ n, P7582533510198353981.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P9851803370924759303

`A058331(n+1)+A014820(n)`
-/

namespace A047668.P9851803370924759303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (n + 1) + A014820 n

end

end A047668.P9851803370924759303

namespace A047668

/-- `A058331(n+1)+A014820(n)` -/
def P9851803370924759303.Spec : Prop :=
  ∀ n, P9851803370924759303.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P9092833936264276583

`A033428(n+1)+A112742(n+1)+1`
-/

namespace A047668.P9092833936264276583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (n + 1) + (A112742 (n + 1) + 1)

end

end A047668.P9092833936264276583

namespace A047668

/-- `A033428(n+1)+A112742(n+1)+1` -/
def P9092833936264276583.Spec : Prop :=
  ∀ n, P9092833936264276583.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P12028329681711324370

`A167875(n+1)+n*A033547(n+1)`
-/

namespace A047668.P12028329681711324370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 (n + 1) + (n : ℤ) * A033547 (n + 1)

end

end A047668.P12028329681711324370

namespace A047668

/-- `A167875(n+1)+n*A033547(n+1)` -/
def P12028329681711324370.Spec : Prop :=
  ∀ n, P12028329681711324370.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P51137567946799685

`A014820(n+1)-(A167875(n)+A054602(n+1))`
-/

namespace A047668.P51137567946799685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 (n + 1) - (A167875 n + A054602 (n + 1))

end

end A047668.P51137567946799685

namespace A047668

/-- `A014820(n+1)-(A167875(n)+A054602(n+1))` -/
def P51137567946799685.Spec : Prop :=
  ∀ n, P51137567946799685.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P15803361356063310511

`∑[A201347(2*(n+1))]-n`
-/

namespace A047668.P15803361356063310511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201347 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A047668.P15803361356063310511

namespace A047668

/-- `∑[A201347(2*(n+1))]-n` -/
def P15803361356063310511.Spec : Prop :=
  ∀ n, P15803361356063310511.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P16777736949123795843

`∑[A188554(2*n+1)]+n²`
-/

namespace A047668.P16777736949123795843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A047668.P16777736949123795843

namespace A047668

/-- `∑[A188554(2*n+1)]+n²` -/
def P16777736949123795843.Spec : Prop :=
  ∀ n, P16777736949123795843.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P5558425380414354738

`A031940(2*(n+1))+A014820(n)`
-/

namespace A047668.P5558425380414354738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (2 * (n + 1)) + A014820 n

end

end A047668.P5558425380414354738

namespace A047668

/-- `A031940(2*(n+1))+A014820(n)` -/
def P5558425380414354738.Spec : Prop :=
  ∀ n, P5558425380414354738.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P12447276604044011201

`∑[A188554(2*n+1)+A004273(n)]`
-/

namespace A047668.P12447276604044011201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 (2 * n + 1) + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047668.P12447276604044011201

namespace A047668

/-- `∑[A188554(2*n+1)+A004273(n)]` -/
def P12447276604044011201.Spec : Prop :=
  ∀ n, P12447276604044011201.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P15841979178657067492

`A047666(A374004(n+1))`
-/

namespace A047668.P15841979178657067492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (A374004 (n + 1)).toNat

end

end A047668.P15841979178657067492

namespace A047668

/-- `A047666(A374004(n+1))` -/
def P15841979178657067492.Spec : Prop :=
  ∀ n, P15841979178657067492.a n = A047668 (n + 1)

end A047668

/-! ## A047668.P16088100051035595959

`A047666(A055998(n+2))`
-/

namespace A047668.P16088100051035595959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (A055998 (n + 2)).toNat

end

end A047668.P16088100051035595959

namespace A047668

/-- `A047666(A055998(n+2))` -/
def P16088100051035595959.Spec : Prop :=
  ∀ n, P16088100051035595959.a n = A047668 (n + 1)

end A047668

/-!
# A047669: Row 5 of array in A047666.

The programs for A047669, the canonical program `A047669.P7721070179642947813` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047669 has offset 1).

The definition of A047669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047669.P7721070179642947813

`(n+1)/15*(2*(n+1)^4+30*(n+1)²+43)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047669

/-- `(n+1)/15*(2*(n+1)^4+30*(n+1)²+43)` -/
def P7721070179642947813.Spec : Prop :=
  ∀ n, P7721070179642947813.a n = (A047669 (n + 1) : ℚ)

end A047669

/-! ## A047669.P16588641006291915033

`∑[A112087(n+1)+A001846(n)]`
-/

namespace A047669.P16588641006291915033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112087 (n + 1) + A001846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047669.P16588641006291915033

namespace A047669

/-- `∑[A112087(n+1)+A001846(n)]` -/
def P16588641006291915033.Spec : Prop :=
  ∀ n, P16588641006291915033.a n = A047669 (n + 1)

end A047669

/-! ## A047669.P16254549119114081319

`∑[A112087(n+1)+∑[A008412(n)]]`
-/

namespace A047669.P16254549119114081319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112087 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047669.P16254549119114081319

namespace A047669

/-- `∑[A112087(n+1)+∑[A008412(n)]]` -/
def P16254549119114081319.Spec : Prop :=
  ∀ n, P16254549119114081319.a n = A047669 (n + 1)

end A047669

/-! ## A047669.P726286516819919025

`∑[A001846(n)+Δ[A217873(n)]]`
-/

namespace A047669.P726286516819919025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047669.P726286516819919025

namespace A047669

/-- `∑[A001846(n)+Δ[A217873(n)]]` -/
def P726286516819919025.Spec : Prop :=
  ∀ n, P726286516819919025.a n = A047669 (n + 1)

end A047669

/-! ## A047669.P13802584449444468853

`A217873(n+1)+∑[A001846(n)]`
-/

namespace A047669.P13802584449444468853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047669.P13802584449444468853

namespace A047669

/-- `A217873(n+1)+∑[A001846(n)]` -/
def P13802584449444468853.Spec : Prop :=
  ∀ n, P13802584449444468853.a n = A047669 (n + 1)

end A047669

/-! ## A047669.P11065674211586495466

`A217873(n+1)+A069038(n+1)`
-/

namespace A047669.P11065674211586495466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 (n + 1) + A069038 (n + 1)

end

end A047669.P11065674211586495466

namespace A047669

/-- `A217873(n+1)+A069038(n+1)` -/
def P11065674211586495466.Spec : Prop :=
  ∀ n, P11065674211586495466.a n = A047669 (n + 1)

end A047669

/-! ## A047669.P646978917056211698

`A364429(n+1)-A069038(n+1)`
-/

namespace A047669.P646978917056211698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364429 (n + 1) - A069038 (n + 1)

end

end A047669.P646978917056211698

namespace A047669

/-- `A364429(n+1)-A069038(n+1)` -/
def P646978917056211698.Spec : Prop :=
  ∀ n, P646978917056211698.a n = A047669 (n + 1)

end A047669

/-! ## A047669.P2507383323252683830

`(A001847(n)+A001846(n+1))/2`
-/

namespace A047669.P2507383323252683830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001847 n + A001846 (n + 1) : ℚ) / 2

end

end A047669.P2507383323252683830

namespace A047669

/-- `(A001847(n)+A001846(n+1))/2` -/
def P2507383323252683830.Spec : Prop :=
  ∀ n, P2507383323252683830.a n = (A047669 (n + 1) : ℚ)

end A047669

/-! ## A047669.P16728428180057380707

`A069038(n+1)+A008412(n+1)/2`
-/

namespace A047669.P16728428180057380707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069038 (n + 1) : ℚ) + (A008412 (n + 1) : ℚ) / 2

end

end A047669.P16728428180057380707

namespace A047669

/-- `A069038(n+1)+A008412(n+1)/2` -/
def P16728428180057380707.Spec : Prop :=
  ∀ n, P16728428180057380707.a n = (A047669 (n + 1) : ℚ)

end A047669

/-! ## A047669.P9325153305282675804

`(A035599(n+2)+A035599(n))/4`
-/

namespace A047669.P9325153305282675804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035599 (n + 2) + A035599 n : ℚ) / 4

end

end A047669.P9325153305282675804

namespace A047669

/-- `(A035599(n+2)+A035599(n))/4` -/
def P9325153305282675804.Spec : Prop :=
  ∀ n, P9325153305282675804.a n = (A047669 (n + 1) : ℚ)

end A047669

/-! ## A047669.P8216388822797744695

`A047666(A374005(n+1))`
-/

namespace A047669.P8216388822797744695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (A374005 (n + 1)).toNat

end

end A047669.P8216388822797744695

namespace A047669

/-- `A047666(A374005(n+1))` -/
def P8216388822797744695.Spec : Prop :=
  ∀ n, P8216388822797744695.a n = A047669 (n + 1)

end A047669

/-!
# A047670: Row 6 of array in A047666.

The programs for A047670, the canonical program `A047670.P11744031878755806296` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047670 has offset 1).

The definition of A047670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047670.P12349313076728766773

`A364429(n+1)+A069039(n)`
-/

namespace A047670.P12349313076728766773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364429 (n + 1) + A069039 n

end

end A047670.P12349313076728766773

namespace A047670

/-- `A364429(n+1)+A069039(n)` -/
def P12349313076728766773.Spec : Prop :=
  ∀ n, P12349313076728766773.a n = A047670 (n + 1)

end A047670

/-! ## A047670.P11744031878755806296

`(A001848(n)+A001847(n+1))/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A047670

/-- `(A001848(n)+A001847(n+1))/2` -/
def P11744031878755806296.Spec : Prop :=
  ∀ n, P11744031878755806296.a n = (A047670 (n + 1) : ℚ)

end A047670

/-! ## A047670.P16437098558209562281

`(A069039(n+2)+A069039(n))/2`
-/

namespace A047670.P16437098558209562281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069039 (n + 2) + A069039 n : ℚ) / 2

end

end A047670.P16437098558209562281

namespace A047670

/-- `(A069039(n+2)+A069039(n))/2` -/
def P16437098558209562281.Spec : Prop :=
  ∀ n, P16437098558209562281.a n = (A047670 (n + 1) : ℚ)

end A047670

/-! ## A047670.P611562286526579326

`A047666(A374007(n+1))`
-/

namespace A047670.P611562286526579326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (A374007 (n + 1)).toNat

end

end A047670.P611562286526579326

namespace A047670

/-- `A047666(A374007(n+1))` -/
def P611562286526579326.Spec : Prop :=
  ∀ n, P611562286526579326.a n = A047670 (n + 1)

end A047670

/-! ## A047670.P11032182826353796620

`A047666(A056115(n)+21)`
-/

namespace A047670.P11032182826353796620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (A056115 n + 21).toNat

end

end A047670.P11032182826353796620

namespace A047670

/-- `A047666(A056115(n)+21)` -/
def P11032182826353796620.Spec : Prop :=
  ∀ n, P11032182826353796620.a n = A047670 (n + 1)

end A047670

/-! ## A047670.P5941033474364782014

`A047666(A000124(n+5)+5)`
-/

namespace A047670.P5941033474364782014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (A000124 (n + 5) + 5).toNat

end

end A047670.P5941033474364782014

namespace A047670

/-- `A047666(A000124(n+5)+5)` -/
def P5941033474364782014.Spec : Prop :=
  ∀ n, P5941033474364782014.a n = A047670 (n + 1)

end A047670

/-! ## A047670.P1363356959929509689

`A047666(A055998(n+3)+9)`
-/

namespace A047670.P1363356959929509689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (A055998 (n + 3) + 9).toNat

end

end A047670.P1363356959929509689

namespace A047670

/-- `A047666(A055998(n+3)+9)` -/
def P1363356959929509689.Spec : Prop :=
  ∀ n, P1363356959929509689.a n = A047670 (n + 1)

end A047670

/-! ## A047670.P7838186758271812122

`A142978(A166136(n+4))+A069039(n)`
-/

namespace A047670.P7838186758271812122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (A166136 (n + 4)).toNat + A069039 n

end

end A047670.P7838186758271812122

namespace A047670

/-- `A142978(A166136(n+4))+A069039(n)` -/
def P7838186758271812122.Spec : Prop :=
  ∀ n, P7838186758271812122.a n = A047670 (n + 1)

end A047670

/-! ## A047670.P1061483834185156966

`A047666(eq[7, A004736(n+1)]-2*n)`
-/

namespace A047670.P1061483834185156966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A047670.P1061483834185156966

namespace A047670

/-- `A047666(eq[7, A004736(n+1)]-2*n)` -/
def P1061483834185156966.Spec : Prop :=
  ∀ n, P1061483834185156966.a n = A047670 (n + 1)

end A047670

/-!
# A047671: Square array a(n,k) read by antidiagonals: a(n,1)=1, a(1,k)=1, a(n,k) = 1 + a(n-1,k-1) + a(n-1,k) + a(n,k-1).

The programs for A047671, the canonical program `A047671.P14542215145411395816` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047671 has offset 1).

The definition of A047671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047671.P4702232359223397748

`3*A108350(n)-2`
-/

namespace A047671.P4702232359223397748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108350 n - 2

end

end A047671.P4702232359223397748

namespace A047671

/-- `3*A108350(n)-2` -/
def P4702232359223397748.Spec : Prop :=
  ∀ n, P4702232359223397748.a n = A047671 (n + 1)

end A047671

/-! ## A047671.P14542215145411395816

`floor(3/2*A008288(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047671

/-- `floor(3/2*A008288(n))` -/
def P14542215145411395816.Spec : Prop :=
  ∀ n, P14542215145411395816.a n = A047671 (n + 1)

theorem P14542215145411395816.correct : P14542215145411395816.Spec := by
  intro n
  simp only [A047671, Nat.add_sub_cancel]

end A047671

/-! ## A047671.P13279988219146478883

`A008288(n)+A108350(n)-1`
-/

namespace A047671.P13279988219146478883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + (A108350 n - 1)

end

end A047671.P13279988219146478883

namespace A047671

/-- `A008288(n)+A108350(n)-1` -/
def P13279988219146478883.Spec : Prop :=
  ∀ n, P13279988219146478883.a n = A047671 (n + 1)

end A047671

/-! ## A047671.P17721104174999481593

`3*(A225413(n)+A007318(n))-2`
-/

namespace A047671.P17721104174999481593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A225413 n + A007318 n) - 2

end

end A047671.P17721104174999481593

namespace A047671

/-- `3*(A225413(n)+A007318(n))-2` -/
def P17721104174999481593.Spec : Prop :=
  ∀ n, P17721104174999481593.a n = A047671 (n + 1)

end A047671

/-! ## A047671.P13837277020950666324

`floor(3*(A101164(n)+A007318(n))/2)`
-/

namespace A047671.P13837277020950666324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A101164 n + A007318 n : ℚ) / 2)⌋

end

end A047671.P13837277020950666324

namespace A047671

/-- `floor(3*(A101164(n)+A007318(n))/2)` -/
def P13837277020950666324.Spec : Prop :=
  ∀ n, P13837277020950666324.a n = A047671 (n + 1)

theorem P13837277020950666324.correct : P13837277020950666324.Spec := by
  intro n
  simp only [A047671, Nat.add_sub_cancel, A047671.P13837277020950666324.a, A047671.P14542215145411395816.a, A007318, A007318.P11755526479805562006.a, A008288, A008288.P3441482626856859975.a, A101164, A101164.P12326998442168415454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A047671

/-! ## A047671.P341655254685965969

`A008288(n)+A225413(n)+A014473(n)`
-/

namespace A047671.P341655254685965969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + (A225413 n + A014473 n)

end

end A047671.P341655254685965969

namespace A047671

/-- `A008288(n)+A225413(n)+A014473(n)` -/
def P341655254685965969.Spec : Prop :=
  ∀ n, P341655254685965969.a n = A047671 (n + 1)

end A047671

/-! ## A047671.P3443895401582493833

`A008288(n)+A101164(n)-A225413(n)`
-/

namespace A047671.P3443895401582493833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + (A101164 n - A225413 n)

end

end A047671.P3443895401582493833

namespace A047671

/-- `A008288(n)+A101164(n)-A225413(n)` -/
def P3443895401582493833.Spec : Prop :=
  ∀ n, P3443895401582493833.a n = A047671 (n + 1)

end A047671

/-! ## A047671.P10154197792026857449

`round(3/2*A008288(n)-A014963(A000217(n+11)))`
-/

namespace A047671.P10154197792026857449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (A008288 n : ℚ) - (A014963 (A000217 (n + 11)).toNat : ℚ))

end

end A047671.P10154197792026857449

namespace A047671

/-- `round(3/2*A008288(n)-A014963(A000217(n+11)))` -/
def P10154197792026857449.Spec : Prop :=
  ∀ n, P10154197792026857449.a n = A047671 (n + 1)

end A047671

/-! ## A047671.P14959920252852434465

`A014682(A008288(n))-1`
-/

namespace A047671.P14959920252852434465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008288 n).toNat - 1

end

end A047671.P14959920252852434465

namespace A047671

/-- `A014682(A008288(n))-1` -/
def P14959920252852434465.Spec : Prop :=
  ∀ n, P14959920252852434465.a n = A047671 (n + 1)

end A047671

/-! ## A047671.P1911682782179858771

`A273943(A008288(n)-1)+A008288(n)`
-/

namespace A047671.P1911682782179858771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A008288 n - 1).toNat + A008288 n

end

end A047671.P1911682782179858771

namespace A047671

/-- `A273943(A008288(n)-1)+A008288(n)` -/
def P1911682782179858771.Spec : Prop :=
  ∀ n, P1911682782179858771.a n = A047671 (n + 1)

end A047671

/-! ## A047671.P15790557699002414051

`A016777((A008288(n)-1)/2)`
-/

namespace A047671.P15790557699002414051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.roundAway ((A008288 n - 1 : ℚ) / 2)).toNat

end

end A047671.P15790557699002414051

namespace A047671

/-- `A016777((A008288(n)-1)/2)` -/
def P15790557699002414051.Spec : Prop :=
  ∀ n, P15790557699002414051.a n = A047671 (n + 1)

end A047671

/-!
# A047672: Row 3 of square array defined in A047671.

The programs for A047672, the canonical program `A047672.P12291547493279462184` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047672 has offset 1).

The definition of A047672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047672.P12291547493279462184

`2*(n+1)^3-3*(n+1)²+4*(n+1)-2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047672

/-- `2*(n+1)^3-3*(n+1)²+4*(n+1)-2` -/
def P12291547493279462184.Spec : Prop :=
  ∀ n, P12291547493279462184.a n = A047672 (n + 1)

theorem P12291547493279462184.correct : P12291547493279462184.Spec := by
  intro n
  simp only [A047672, Nat.add_sub_cancel]

end A047672

/-! ## A047672.P7782540791549161075

`abs(Δ[C(n²+1, 2)]+n)`
-/

namespace A047672.P7782540791549161075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)|

end

end A047672.P7782540791549161075

namespace A047672

/-- `abs(Δ[C(n²+1, 2)]+n)` -/
def P7782540791549161075.Spec : Prop :=
  ∀ n, P7782540791549161075.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P5367255532497517222

`Δ[C(n, 2)+C(n²+1, 2)]`
-/

namespace A047672.P5367255532497517222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A047672.P5367255532497517222

namespace A047672

/-- `Δ[C(n, 2)+C(n²+1, 2)]` -/
def P5367255532497517222.Spec : Prop :=
  ∀ n, P5367255532497517222.a n = A047672 (n + 1)

theorem P5367255532497517222.correct : P5367255532497517222.Spec := by
  intro n
  simp only [A047672, Nat.add_sub_cancel, A047672.P5367255532497517222.f1, A047672.P5367255532497517222.a, A047672.P12291547493279462184.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A047672

/-! ## A047672.P16228745117237335507

`∑[∑[ogf((1+6x+3x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A047672.P16228745117237335507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 3, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047672.P16228745117237335507

namespace A047672

/-- `∑[∑[ogf((1+6x+3x^2+2x^3)/(1-2x+x^2))]]` -/
def P16228745117237335507.Spec : Prop :=
  ∀ n, P16228745117237335507.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P11394975400116565143

`abs((lcm(n, n+1)+1)*Δ[n²]+n)`
-/

namespace A047672.P11394975400116565143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm n (n + 1) + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)|

end

end A047672.P11394975400116565143

namespace A047672

/-- `abs((lcm(n, n+1)+1)*Δ[n²]+n)` -/
def P11394975400116565143.Spec : Prop :=
  ∀ n, P11394975400116565143.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P16684556500693800612

`∑[or(1, A005897(n))]`
-/

namespace A047672.P16684556500693800612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005897 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047672.P16684556500693800612

namespace A047672

/-- `∑[or(1, A005897(n))]` -/
def P16684556500693800612.Spec : Prop :=
  ∀ n, P16684556500693800612.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P12426831493716028205

`floor(3/2*A001845(n))`
-/

namespace A047672.P12426831493716028205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A001845 n : ℚ)⌋

end

end A047672.P12426831493716028205

namespace A047672

/-- `floor(3/2*A001845(n))` -/
def P12426831493716028205.Spec : Prop :=
  ∀ n, P12426831493716028205.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P6391671279160991269

`∑[2*A005918(n)-1]`
-/

namespace A047672.P6391671279160991269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005918 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047672.P6391671279160991269

namespace A047672

/-- `∑[2*A005918(n)-1]` -/
def P6391671279160991269.Spec : Prop :=
  ∀ n, P6391671279160991269.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P9689609855098108496

`∑[or(1, A010001(n)+n²)]`
-/

namespace A047672.P9689609855098108496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010001 n + (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047672.P9689609855098108496

namespace A047672

/-- `∑[or(1, A010001(n)+n²)]` -/
def P9689609855098108496.Spec : Prop :=
  ∀ n, P9689609855098108496.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P16068921869394006497

`Δ[A161680(n)+C(n²+1, 2)]`
-/

namespace A047672.P16068921869394006497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + (Nat.choose (n ^ 2 + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047672.P16068921869394006497

namespace A047672

/-- `Δ[A161680(n)+C(n²+1, 2)]` -/
def P16068921869394006497.Spec : Prop :=
  ∀ n, P16068921869394006497.a n = A047672 (n + 1)

theorem P16068921869394006497.correct : P16068921869394006497.Spec := by
  intro n
  simp only [A047672, Nat.add_sub_cancel, A047672.P16068921869394006497.f1, A047672.P16068921869394006497.a, A047672.P12291547493279462184.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A047672

/-! ## A047672.P2325813898080721708

`Δ[C(n²+2, 2)-A000217(n)]`
-/

namespace A047672.P2325813898080721708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2 + 2) 2 : ℤ) - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047672.P2325813898080721708

namespace A047672

/-- `Δ[C(n²+2, 2)-A000217(n)]` -/
def P2325813898080721708.Spec : Prop :=
  ∀ n, P2325813898080721708.a n = A047672 (n + 1)

theorem P2325813898080721708.correct : P2325813898080721708.Spec := by
  intro n
  simp only [A047672, Nat.add_sub_cancel, A047672.P2325813898080721708.f1, A047672.P2325813898080721708.a, A047672.P12291547493279462184.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A047672

/-! ## A047672.P4195949750920111706

`∑[or(1, A005893(n)+(2*n)²)]`
-/

namespace A047672.P4195949750920111706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005893 n + ((2 * n) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047672.P4195949750920111706

namespace A047672

/-- `∑[or(1, A005893(n)+(2*n)²)]` -/
def P4195949750920111706.Spec : Prop :=
  ∀ n, P4195949750920111706.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P8267458198479132855

`abs(∑[A004277(n)]*Δ[n²]+n)`
-/

namespace A047672.P8267458198479132855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + (n : ℤ)|

end

end A047672.P8267458198479132855

namespace A047672

/-- `abs(∑[A004277(n)]*Δ[n²]+n)` -/
def P8267458198479132855.Spec : Prop :=
  ∀ n, P8267458198479132855.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P6207826484108404821

`Δ[(C(n+1, 2)+1)*A002061(n)]`
-/

namespace A047672.P6207826484108404821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 + 1 : ℤ) * A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047672.P6207826484108404821

namespace A047672

/-- `Δ[(C(n+1, 2)+1)*A002061(n)]` -/
def P6207826484108404821.Spec : Prop :=
  ∀ n, P6207826484108404821.a n = A047672 (n + 1)

theorem P6207826484108404821.correct : P6207826484108404821.Spec := by
  intro n
  simp only [A047672, Nat.add_sub_cancel, A047672.P6207826484108404821.f1, A047672.P6207826484108404821.a, A047672.P12291547493279462184.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A047672

/-! ## A047672.P8582119787398730370

`(A268201(n+1)+5*(n+1)-3)/2`
-/

namespace A047672.P8582119787398730370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268201 (n + 1) + ((5 * (n + 1) : ℤ) - 3) : ℚ) / 2

end

end A047672.P8582119787398730370

namespace A047672

/-- `(A268201(n+1)+5*(n+1)-3)/2` -/
def P8582119787398730370.Spec : Prop :=
  ∀ n, P8582119787398730370.a n = (A047672 (n + 1) : ℚ)

theorem P8582119787398730370.correct : P8582119787398730370.Spec := by
  intro n
  simp only [A047672, Nat.add_sub_cancel, A047672.P8582119787398730370.a, A047672.P12291547493279462184.a, A268201, A268201.P11308216973235781731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A047672

/-! ## A047672.P15635996387670663396

`∑[A057427(n)+A005897(n)]`
-/

namespace A047672.P15635996387670663396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A005897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047672.P15635996387670663396

namespace A047672

/-- `∑[A057427(n)+A005897(n)]` -/
def P15635996387670663396.Spec : Prop :=
  ∀ n, P15635996387670663396.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P4694962430499683296

`∑[A005897(n)-A057428(n)]`
-/

namespace A047672.P4694962430499683296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047672.P4694962430499683296

namespace A047672

/-- `∑[A005897(n)-A057428(n)]` -/
def P4694962430499683296.Spec : Prop :=
  ∀ n, P4694962430499683296.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P16028787039039845215

`∑[A097803(n)-A000038(n)]`
-/

namespace A047672.P16028787039039845215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047672.P16028787039039845215

namespace A047672

/-- `∑[A097803(n)-A000038(n)]` -/
def P16028787039039845215.Spec : Prop :=
  ∀ n, P16028787039039845215.a n = A047672 (n + 1)

end A047672

/-! ## A047672.P17242742883607971341

`Δ[(A000217(n)+1)*A002061(n)]`
-/

namespace A047672.P17242742883607971341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) * A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047672.P17242742883607971341

namespace A047672

/-- `Δ[(A000217(n)+1)*A002061(n)]` -/
def P17242742883607971341.Spec : Prop :=
  ∀ n, P17242742883607971341.a n = A047672 (n + 1)

theorem P17242742883607971341.correct : P17242742883607971341.Spec := by
  intro n
  simp only [A047672, Nat.add_sub_cancel, A047672.P17242742883607971341.f1, A047672.P17242742883607971341.a, A047672.P12291547493279462184.a, A000217, A000217.P10269402890581615239.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A047672

/-! ## A047672.P6286454452509164124

`A047671(A374004(n+1))`
-/

namespace A047672.P6286454452509164124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047671 (A374004 (n + 1)).toNat

end

end A047672.P6286454452509164124

namespace A047672

/-- `A047671(A374004(n+1))` -/
def P6286454452509164124.Spec : Prop :=
  ∀ n, P6286454452509164124.a n = A047672 (n + 1)

end A047672

/-!
# A047673: Row 4 of square array defined in A047671.

The programs for A047673, the canonical program `A047673.P7163244039621525663` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047673 has offset 1).

The definition of A047673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047673.P7163244039621525663

`((n+1)²-(n+1)+2-sqrt(3))*((n+1)²-(n+1)+2+sqrt(3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047673

/-- `((n+1)²-(n+1)+2-sqrt(3))*((n+1)²-(n+1)+2+sqrt(3))` -/
def P7163244039621525663.Spec : Prop :=
  ∀ n, P7163244039621525663.a n = (A047673 (n + 1) : ℝ)

end A047673

/-! ## A047673.P15895581102130703440

`abs((or(2, n²)+n)²-3)`
-/

namespace A047673.P15895581102130703440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 2 (n ^ 2) + n) ^ 2 : ℤ) - 3|

end

end A047673.P15895581102130703440

namespace A047673

/-- `abs((or(2, n²)+n)²-3)` -/
def P15895581102130703440.Spec : Prop :=
  ∀ n, P15895581102130703440.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P16298808512069263200

`abs(3-(lcm(n, n+1)+2)²)`
-/

namespace A047673.P16298808512069263200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ((Nat.lcm n (n + 1) + 2) ^ 2 : ℤ)|

end

end A047673.P16298808512069263200

namespace A047673

/-- `abs(3-(lcm(n, n+1)+2)²)` -/
def P16298808512069263200.Spec : Prop :=
  ∀ n, P16298808512069263200.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P3531503433374225065

`or(1, (n²+2+n)²-3)`
-/

namespace A047673.P3531503433374225065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n ^ 2 + 2 + n) ^ 2 : ℤ) - 3)

end

end A047673.P3531503433374225065

namespace A047673

/-- `or(1, (n²+2+n)²-3)` -/
def P3531503433374225065.Spec : Prop :=
  ∀ n, P3531503433374225065.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P16033860141024163526

`A014206(n)²-3`
-/

namespace A047673.P16033860141024163526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n ^ 2 - 3

end

end A047673.P16033860141024163526

namespace A047673

/-- `A014206(n)²-3` -/
def P16033860141024163526.Spec : Prop :=
  ∀ n, P16033860141024163526.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P13949640759011681556

`2*A383834(n)-1`
-/

namespace A047673.P13949640759011681556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A383834 n - 1

end

end A047673.P13949640759011681556

namespace A047673

/-- `2*A383834(n)-1` -/
def P13949640759011681556.Spec : Prop :=
  ∀ n, P13949640759011681556.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P2989744275918653133

`4*A061316(n)+1`
-/

namespace A047673.P2989744275918653133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061316 n + 1

end

end A047673.P2989744275918653133

namespace A047673

/-- `4*A061316(n)+1` -/
def P2989744275918653133.Spec : Prop :=
  ∀ n, P2989744275918653133.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P13631877137538085642

`4*A086601(n)-3`
-/

namespace A047673.P13631877137538085642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A086601 n - 3

end

end A047673.P13631877137538085642

namespace A047673

/-- `4*A086601(n)-3` -/
def P13631877137538085642.Spec : Prop :=
  ∀ n, P13631877137538085642.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P9169197586773716956

`A386480(n+1)²-3`
-/

namespace A047673.P9169197586773716956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 (n + 1) ^ 2 - 3

end

end A047673.P9169197586773716956

namespace A047673

/-- `A386480(n+1)²-3` -/
def P9169197586773716956.Spec : Prop :=
  ∀ n, P9169197586773716956.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P8535338627743068717

`∑[A008532(n)+2*n]`
-/

namespace A047673.P8535338627743068717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047673.P8535338627743068717

namespace A047673

/-- `∑[A008532(n)+2*n]` -/
def P8535338627743068717.Spec : Prop :=
  ∀ n, P8535338627743068717.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P2499096405535695784

`A072025(n)+n²+n`
-/

namespace A047673.P2499096405535695784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072025 n + (n ^ 2 + n : ℤ)

end

end A047673.P2499096405535695784

namespace A047673

/-- `A072025(n)+n²+n` -/
def P2499096405535695784.Spec : Prop :=
  ∀ n, P2499096405535695784.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P9309847376775536522

`A186636(n)+(n+1)^3`
-/

namespace A047673.P9309847376775536522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186636 n + ((n + 1) ^ 3 : ℤ)

end

end A047673.P9309847376775536522

namespace A047673

/-- `A186636(n)+(n+1)^3` -/
def P9309847376775536522.Spec : Prop :=
  ∀ n, P9309847376775536522.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P14234868667329825418

`abs((A002378(n)+2)²-3)`
-/

namespace A047673.P14234868667329825418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002378 n + 2) ^ 2 - 3|

end

end A047673.P14234868667329825418

namespace A047673

/-- `abs((A002378(n)+2)²-3)` -/
def P14234868667329825418.Spec : Prop :=
  ∀ n, P14234868667329825418.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P5521800809412911586

`A292022(n)+a(n-1)` with `a(0)=1`
-/

namespace A047673.P5521800809412911586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A292022 n + a (n - 1)

end

end A047673.P5521800809412911586

namespace A047673

/-- `A292022(n)+a(n-1)` -/
def P5521800809412911586.Spec : Prop :=
  ∀ n, P5521800809412911586.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P7673407268644246856

`abs((∑[A004277(n)]+1)²-3)`
-/

namespace A047673.P7673407268644246856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 - 3|

end

end A047673.P7673407268644246856

namespace A047673

/-- `abs((∑[A004277(n)]+1)²-3)` -/
def P7673407268644246856.Spec : Prop :=
  ∀ n, P7673407268644246856.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P4663051047926641346

`abs(3-(A000290(n)+n+2)²)`
-/

namespace A047673.P4663051047926641346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (A000290 n + (n + 2 : ℤ)) ^ 2|

end

end A047673.P4663051047926641346

namespace A047673

/-- `abs(3-(A000290(n)+n+2)²)` -/
def P4663051047926641346.Spec : Prop :=
  ∀ n, P4663051047926641346.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P11156106764504073077

`A132998(n)+A005915(n)`
-/

namespace A047673.P11156106764504073077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132998 n + A005915 n

end

end A047673.P11156106764504073077

namespace A047673

/-- `A132998(n)+A005915(n)` -/
def P11156106764504073077.Spec : Prop :=
  ∀ n, P11156106764504073077.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P13507800219010847555

`A165563(n)+A002943(n)`
-/

namespace A047673.P13507800219010847555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165563 n + A002943 n

end

end A047673.P13507800219010847555

namespace A047673

/-- `A165563(n)+A002943(n)` -/
def P13507800219010847555.Spec : Prop :=
  ∀ n, P13507800219010847555.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P6817718245424961521

`A100019(n)+A081437(n)`
-/

namespace A047673.P6817718245424961521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n + A081437 n

end

end A047673.P6817718245424961521

namespace A047673

/-- `A100019(n)+A081437(n)` -/
def P6817718245424961521.Spec : Prop :=
  ∀ n, P6817718245424961521.a n = A047673 (n + 1)

end A047673

/-! ## A047673.P2647984261566561870

`A317637(n)+A053699(n)`
-/

namespace A047673.P2647984261566561870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317637 n + A053699 n

end

end A047673.P2647984261566561870

namespace A047673

/-- `A317637(n)+A053699(n)` -/
def P2647984261566561870.Spec : Prop :=
  ∀ n, P2647984261566561870.a n = A047673 (n + 1)

end A047673

/-!
# A047674: Row 5 of square array defined in A047671.

The programs for A047674, the canonical program `A047674.P16395300680675617086` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047674 has offset 1).

The definition of A047674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047674.P16395300680675617086

`1/5*(2*(n+1)^5-5*(n+1)^4+20*(n+1)^3-25*(n+1)²+23*(n+1)-10)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047674

/-- `1/5*(2*(n+1)^5-5*(n+1)^4+20*(n+1)^3-25*(n+1)²+23*(n+1)-10)` -/
def P16395300680675617086.Spec : Prop :=
  ∀ n, P16395300680675617086.a n = (A047674 (n + 1) : ℚ)

end A047674

/-! ## A047674.P8605451997176382298

`floor(3/2*A001847(n))`
-/

namespace A047674.P8605451997176382298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A001847 n : ℚ)⌋

end

end A047674.P8605451997176382298

namespace A047674

/-- `floor(3/2*A001847(n))` -/
def P8605451997176382298.Spec : Prop :=
  ∀ n, P8605451997176382298.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P11116233144927723722

`∑[2*A082113(n)]+n-1`
-/

namespace A047674.P11116233144927723722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - 1

end

end A047674.P11116233144927723722

namespace A047674

/-- `∑[2*A082113(n)]+n-1` -/
def P11116233144927723722.Spec : Prop :=
  ∀ n, P11116233144927723722.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P1011126554338928512

`∑[(A057427(n)+1)*A082113(n)]+n`
-/

namespace A047674.P1011126554338928512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A082113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047674.P1011126554338928512

namespace A047674

/-- `∑[(A057427(n)+1)*A082113(n)]+n` -/
def P1011126554338928512.Spec : Prop :=
  ∀ n, P1011126554338928512.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P8896274101902144836

`∑[gcd(2, A049116(n+1))*A082113(n)]+n`
-/

namespace A047674.P8896274101902144836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A049116 (n + 1)) : ℤ) * A082113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047674.P8896274101902144836

namespace A047674

/-- `∑[gcd(2, A049116(n+1))*A082113(n)]+n` -/
def P8896274101902144836.Spec : Prop :=
  ∀ n, P8896274101902144836.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P7616708488376673804

`∑[A020639(A001316(n))*A082113(n)]+n`
-/

namespace A047674.P7616708488376673804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A082113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047674.P7616708488376673804

namespace A047674

/-- `∑[A020639(A001316(n))*A082113(n)]+n` -/
def P7616708488376673804.Spec : Prop :=
  ∀ n, P7616708488376673804.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P6522800602397204087

`A047671(A374007(n+1))`
-/

namespace A047674.P6522800602397204087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047671 (A374007 (n + 1)).toNat

end

end A047674.P6522800602397204087

namespace A047674

/-- `A047671(A374007(n+1))` -/
def P6522800602397204087.Spec : Prop :=
  ∀ n, P6522800602397204087.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P897875443840166645

`A047671(A056115(n)+21)`
-/

namespace A047674.P897875443840166645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047671 (A056115 n + 21).toNat

end

end A047674.P897875443840166645

namespace A047674

/-- `A047671(A056115(n)+21)` -/
def P897875443840166645.Spec : Prop :=
  ∀ n, P897875443840166645.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P3897284840069233509

`A047671(A000124(n+5)+5)`
-/

namespace A047674.P3897284840069233509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047671 (A000124 (n + 5) + 5).toNat

end

end A047674.P3897284840069233509

namespace A047674

/-- `A047671(A000124(n+5)+5)` -/
def P3897284840069233509.Spec : Prop :=
  ∀ n, P3897284840069233509.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P11011010940487277090

`A047671(A000217(n+5)+6)`
-/

namespace A047674.P11011010940487277090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047671 (A000217 (n + 5) + 6).toNat

end

end A047674.P11011010940487277090

namespace A047674

/-- `A047671(A000217(n+5)+6)` -/
def P11011010940487277090.Spec : Prop :=
  ∀ n, P11011010940487277090.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P4975333287219659109

`A047671(A055998(n+3)+9)`
-/

namespace A047674.P4975333287219659109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047671 (A055998 (n + 3) + 9).toNat

end

end A047674.P4975333287219659109

namespace A047674

/-- `A047671(A055998(n+3)+9)` -/
def P4975333287219659109.Spec : Prop :=
  ∀ n, P4975333287219659109.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P14251520785480274381

`A047671((n+4)²-(C(n+2, 2)-1))`
-/

namespace A047674.P14251520785480274381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047671 (((n + 4) ^ 2 : ℤ) - ((Nat.choose (n + 2) 2 : ℤ) - 1)).toNat

end

end A047674.P14251520785480274381

namespace A047674

/-- `A047671((n+4)²-(C(n+2, 2)-1))` -/
def P14251520785480274381.Spec : Prop :=
  ∀ n, P14251520785480274381.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P13349973158737958074

`A047671(A103517(n)+eq[4, A002262(n)])`
-/

namespace A047674.P13349973158737958074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047671 (A103517 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A047674.P13349973158737958074

namespace A047674

/-- `A047671(A103517(n)+eq[4, A002262(n)])` -/
def P13349973158737958074.Spec : Prop :=
  ∀ n, P13349973158737958074.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P9023789780817794981

`∑[A152813(n²)]-2`
-/

namespace A047674.P9023789780817794981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A047674.P9023789780817794981

namespace A047674

/-- `∑[A152813(n²)]-2` -/
def P9023789780817794981.Spec : Prop :=
  ∀ n, P9023789780817794981.a n = A047674 (n + 1)

end A047674

/-! ## A047674.P8028659475814551062

`A007427(A038967(n+1))+∑[A152813(n²)]`
-/

namespace A047674.P8028659475814551062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A038967 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047674.P8028659475814551062

namespace A047674

/-- `A007427(A038967(n+1))+∑[A152813(n²)]` -/
def P8028659475814551062.Spec : Prop :=
  ∀ n, P8028659475814551062.a n = A047674 (n + 1)

end A047674

/-!
# A047675: Square array a(n,k) read by antidiagonals: a(n,1)=n, a(1,k)=k, a(n,k) = a(n-1,k-1)*a(n-1,k)*a(n,k-1).

The programs for A047675, there is no canonical definition to state claims against.
-/

/-! ## A047675.P2060534083310916229

`A095160(A080046(n+1))`
-/

namespace A047675.P2060534083310916229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095160 (A080046 (n + 1)).toNat

end

end A047675.P2060534083310916229

/-!
# A047676: 

The programs for A047676, there is no canonical definition to state claims against.
-/

/-! ## A047676.P17823672476304288852

`A047675((n+1)²+n²)`
-/

namespace A047676.P17823672476304288852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047675 ((n + 1) ^ 2 + n ^ 2)

end

end A047676.P17823672476304288852

/-!
# A047677: Row 2 of square array defined in A047675: 2*n!*(n+1)!.

The programs for A047677, the canonical program `A047677.P17148376039658519453` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047677 has offset 0).

The definition of A047677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!*(n+1)!` (program `A047677.P17148376039658519453`, by `A047677.P17148376039658519453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047677.P17148376039658519453

`2*n!*(n+1)!`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047677

/-- `2*n!*(n+1)!` -/
def P17148376039658519453.Spec : Prop :=
  ∀ n, (P17148376039658519453.a n : ℤ) = A047677 n

theorem P17148376039658519453.correct : P17148376039658519453.Spec := by
  intro n
  simp only [A047677]

end A047677

/-! ## A047677.P10346735747604029456

`n*(n+1)*a(n-1)` with `a(0)=2`
-/

namespace A047677.P10346735747604029456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  n * (n + 1) * a (n - 1)

end

end A047677.P10346735747604029456

namespace A047677

/-- `n*(n+1)*a(n-1)` -/
def P10346735747604029456.Spec : Prop :=
  ∀ n, (P10346735747604029456.a n : ℤ) = A047677 n

end A047677

/-! ## A047677.P6569600332635635898

`∏[2*round(1/acot(∑[n]))]`
-/

namespace A047677.P6569600332635635898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047677.P6569600332635635898

namespace A047677

/-- `∏[2*round(1/acot(∑[n]))]` -/
def P6569600332635635898.Spec : Prop :=
  ∀ n, P6569600332635635898.a n = A047677 n

end A047677

/-! ## A047677.P8633659955495404435

`2*a(n-1)*∑[n]` with `a(0)=2`
-/

namespace A047677.P8633659955495404435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A047677.P8633659955495404435

namespace A047677

/-- `2*a(n-1)*∑[n]` -/
def P8633659955495404435.Spec : Prop :=
  ∀ n, (P8633659955495404435.a n : ℤ) = A047677 n

end A047677

/-! ## A047677.P3583234896883737888

`∏[abs(1-n²)+n+1]`
-/

namespace A047677.P3583234896883737888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 2 : ℤ)| + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047677.P3583234896883737888

namespace A047677

/-- `∏[abs(1-n²)+n+1]` -/
def P3583234896883737888.Spec : Prop :=
  ∀ n, P3583234896883737888.a n = A047677 n

end A047677

/-!
# A047678: Row 3 of square array defined in A047675.

The programs for A047678, there is no canonical definition to state claims against.
-/

/-! ## A047678.P12991725464643908829

`A047675(A055998(n)+6)`
-/

namespace A047678.P12991725464643908829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047675 (A055998 n + 6).toNat

end

end A047678.P12991725464643908829

/-! ## A047678.P16050025191491881810

`A047675(A046691(n)+7)`
-/

namespace A047678.P16050025191491881810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047675 (A046691 n + 7).toNat

end

end A047678.P16050025191491881810

/-! ## A047678.P830510568195165773

`A047675(A141214(n)+1)`
-/

namespace A047678.P830510568195165773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047675 (A141214 n + 1).toNat

end

end A047678.P830510568195165773

/-!
# A047679: Denominators in full Stern-Brocot tree.

The programs for A047679, the canonical program `A047679.P9593727126234668791` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047679 has offset 0).

The definition of A047679 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A047679.P9593727126234668791

`A002487(1+A059893(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A047679

/-- `A002487(1+A059893(n+1))` -/
def P9593727126234668791.Spec : Prop :=
  ∀ n, P9593727126234668791.a n = A047679 n

theorem P9593727126234668791.correct : P9593727126234668791.Spec := by
  intro n
  simp only [A047679]

end A047679

/-! ## A047679.P17181909494115509279

`A007306(A080079(n+1))`
-/

namespace A047679.P17181909494115509279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A080079 (n + 1)).toNat

end

end A047679.P17181909494115509279

namespace A047679

/-- `A007306(A080079(n+1))` -/
def P17181909494115509279.Spec : Prop :=
  ∀ n, P17181909494115509279.a n = A047679 n

end A047679

/-! ## A047679.P10661012378154625664

`A007306(A003817(n+1)-n)`
-/

namespace A047679.P10661012378154625664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A003817 (n + 1) - (n : ℤ)).toNat

end

end A047679.P10661012378154625664

namespace A047679

/-- `A007306(A003817(n+1)-n)` -/
def P10661012378154625664.Spec : Prop :=
  ∀ n, P10661012378154625664.a n = A047679 n

end A047679

/-! ## A047679.P2145416756199177213

`A007306(n+2-A006257(n+1))`
-/

namespace A047679.P2145416756199177213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 ((n + 2 : ℤ) - A006257 (n + 1)).toNat

end

end A047679.P2145416756199177213

namespace A047679

/-- `A007306(n+2-A006257(n+1))` -/
def P2145416756199177213.Spec : Prop :=
  ∀ n, P2145416756199177213.a n = A047679 n

end A047679

/-! ## A047679.P4345559090722376759

`A007306(A076877(n+1)-(n+2))`
-/

namespace A047679.P4345559090722376759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A076877 (n + 1) - (n + 2 : ℤ)).toNat

end

end A047679.P4345559090722376759

namespace A047679

/-- `A007306(A076877(n+1)-(n+2))` -/
def P4345559090722376759.Spec : Prop :=
  ∀ n, P4345559090722376759.a n = A047679 n

end A047679

/-! ## A047679.P8433310766238752382

`A071585(A038554(n+1))`
-/

namespace A047679.P8433310766238752382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A038554 (n + 1)).toNat

end

end A047679.P8433310766238752382

namespace A047679

/-- `A071585(A038554(n+1))` -/
def P8433310766238752382.Spec : Prop :=
  ∀ n, P8433310766238752382.a n = A047679 n

end A047679

/-! ## A047679.P3966512626477088706

`A324338(A038556(n+1))`
-/

namespace A047679.P3966512626477088706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A038556 (n + 1)).toNat

end

end A047679.P3966512626477088706

namespace A047679

/-- `A324338(A038556(n+1))` -/
def P3966512626477088706.Spec : Prop :=
  ∀ n, P3966512626477088706.a n = A047679 n

end A047679

/-! ## A047679.P1329749666246316842

`A294442(A341915(n+1))`
-/

namespace A047679.P1329749666246316842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (A341915 (n + 1)).toNat

end

end A047679.P1329749666246316842

namespace A047679

/-- `A294442(A341915(n+1))` -/
def P1329749666246316842.Spec : Prop :=
  ∀ n, P1329749666246316842.a n = A047679 n

end A047679

/-! ## A047679.P12844695666769939154

`A007306(A062383(n+1)-(n+1))`
-/

namespace A047679.P12844695666769939154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A062383 (n + 1) - (n + 1 : ℤ)).toNat

end

end A047679.P12844695666769939154

namespace A047679

/-- `A007306(A062383(n+1)-(n+1))` -/
def P12844695666769939154.Spec : Prop :=
  ∀ n, P12844695666769939154.a n = A047679 n

end A047679

/-! ## A047679.P1694593922390576884

`A007306(n+2)-A007305(n+2)`
-/

namespace A047679.P1694593922390576884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 2) - A007305 (n + 2)

end

end A047679.P1694593922390576884

namespace A047679

/-- `A007306(n+2)-A007305(n+2)` -/
def P1694593922390576884.Spec : Prop :=
  ∀ n, P1694593922390576884.a n = A047679 n

end A047679

/-! ## A047679.P5486149904920051035

`A049468(n+2)-A049465(n+2)`
-/

namespace A047679.P5486149904920051035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049468 (n + 2) - A049465 (n + 2)

end

end A047679.P5486149904920051035

namespace A047679

/-- `A049468(n+2)-A049465(n+2)` -/
def P5486149904920051035.Spec : Prop :=
  ∀ n, P5486149904920051035.a n = A047679 n

end A047679

/-! ## A047679.P17440612636361902199

`A119272(n+3)/A007305(n+2)`
-/

namespace A047679.P17440612636361902199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119272 (n + 3) : ℚ) / (A007305 (n + 2) : ℚ)

end

end A047679.P17440612636361902199

namespace A047679

/-- `A119272(n+3)/A007305(n+2)` -/
def P17440612636361902199.Spec : Prop :=
  ∀ n, P17440612636361902199.a n = (A047679 n : ℚ)

end A047679

/-! ## A047679.P13475975760961775222

`A229742(A233280(n+1))`
-/

namespace A047679.P13475975760961775222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A233280 (n + 1)).toNat

end

end A047679.P13475975760961775222

namespace A047679

/-- `A229742(A233280(n+1))` -/
def P13475975760961775222.Spec : Prop :=
  ∀ n, P13475975760961775222.a n = A047679 n

end A047679

/-! ## A047679.P2192016374499081317

`A002487(A145342(n+2))`
-/

namespace A047679.P2192016374499081317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A145342 (n + 2)).toNat

end

end A047679.P2192016374499081317

namespace A047679

/-- `A002487(A145342(n+2))` -/
def P2192016374499081317.Spec : Prop :=
  ∀ n, P2192016374499081317.a n = A047679 n

end A047679

/-! ## A047679.P10689727686937221032

`A002487(A059894(n+1))`
-/

namespace A047679.P10689727686937221032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A059894 (n + 1)).toNat

end

end A047679.P10689727686937221032

namespace A047679

/-- `A002487(A059894(n+1))` -/
def P10689727686937221032.Spec : Prop :=
  ∀ n, P10689727686937221032.a n = A047679 n

end A047679

/-! ## A047679.P11365721498534548697

`A071766(A003188(n+1))`
-/

namespace A047679.P11365721498534548697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A003188 (n + 1)).toNat

end

end A047679.P11365721498534548697

namespace A047679

/-- `A071766(A003188(n+1))` -/
def P11365721498534548697.Spec : Prop :=
  ∀ n, P11365721498534548697.a n = A047679 n

end A047679

/-! ## A047679.P689469749647906277

`A002487(A261693(n+1))`
-/

namespace A047679.P689469749647906277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A261693 (n + 1)).toNat

end

end A047679.P689469749647906277

namespace A047679

/-- `A002487(A261693(n+1))` -/
def P689469749647906277.Spec : Prop :=
  ∀ n, P689469749647906277.a n = A047679 n

end A047679

/-! ## A047679.P9988524966696250015

`A002487(A316472(n+1))`
-/

namespace A047679.P9988524966696250015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A316472 (n + 1)).toNat

end

end A047679.P9988524966696250015

namespace A047679

/-- `A002487(A316472(n+1))` -/
def P9988524966696250015.Spec : Prop :=
  ∀ n, P9988524966696250015.a n = A047679 n

end A047679

/-! ## A047679.P15392019077735964277

`A245326(A180201(n+1))`
-/

namespace A047679.P15392019077735964277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A180201 (n + 1)).toNat

end

end A047679.P15392019077735964277

namespace A047679

/-- `A245326(A180201(n+1))` -/
def P15392019077735964277.Spec : Prop :=
  ∀ n, P15392019077735964277.a n = A047679 n

end A047679

/-! ## A047679.P1492950398835054181

`A007305(A337909(n+2))`
-/

namespace A047679.P1492950398835054181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A337909 (n + 2)).toNat

end

end A047679.P1492950398835054181

namespace A047679

/-- `A007305(A337909(n+2))` -/
def P1492950398835054181.Spec : Prop :=
  ∀ n, P1492950398835054181.a n = A047679 n

end A047679

/-!
# A047681: a(n) = 3^(2*n)*(3^(2*n)-1)*Bernoulli(2*n)/(2*n).

The programs for A047681, there is no canonical definition to state claims against.
-/

/-! ## A047681.P15020049331931113847

`A033999(n)*A241066(A167499(n)-3)`
-/

namespace A047681.P15020049331931113847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A241066 (A167499 n - 3).toNat

end

end A047681.P15020049331931113847

/-!
# A047682: a(n) = 4^(2*n)*(4^(2*n)-1)*Bernoulli(2*n)/(2*n).

The programs for A047682, there is no canonical definition to state claims against.
-/

/-! ## A047682.P10655191967658063387

`(-1)^n*A241066(∑[n+2]+4)`
-/

namespace A047682.P10655191967658063387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A241066 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A047682.P10655191967658063387

/-! ## A047682.P13993374339280052085

`A241066(A167614(n+1))/A033999(n)`
-/

namespace A047682.P13993374339280052085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241066 (A167614 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)

end

end A047682.P13993374339280052085

/-!
# A047685: Numerators of coefficients in Taylor series for log(tan(x)/x).

The programs for A047685, there is no canonical definition to state claims against.
-/

/-! ## A047685.P12303273835676138924

`lcm(n, A171078(n))/sqrt(A253909(n))`
-/

namespace A047685.P12303273835676138924
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A171078 n) : ℝ) / Real.sqrt (A253909 n : ℝ)

end

end A047685.P12303273835676138924

/-! ## A047685.P650502429091778569

`∑{e}[n+1, #]*A036280(A228050(n+1))`
-/

namespace A047685.P650502429091778569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A036280 (A228050 (n + 1)).toNat

end

end A047685.P650502429091778569

/-! ## A047685.P10859064572807244678

`∑{e}[n+1, #]*A036280(A308070(n+1))`
-/

namespace A047685.P10859064572807244678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A036280 (A308070 (n + 1)).toNat

end

end A047685.P10859064572807244678

/-!
# A047686: Denominators of coefficients in Taylor series for log(tan(x)/x).

The programs for A047686, there is no canonical definition to state claims against.
-/

/-! ## A047686.P843098172725623962

`A000265(A171079(n))*A028310(n)`
-/

namespace A047686.P843098172725623962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A171079 n).toNat * A028310 n

end

end A047686.P843098172725623962

/-!
# A047687: Numerators of coefficients in Taylor series for exp(sin(x)).

The programs for A047687, there is no canonical definition to state claims against.
-/

/-! ## A047687.P4902799176785869688

`A127587(A135907(n))-1`
-/

namespace A047687.P4902799176785869688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 (A135907 n).toNat - 1

end

end A047687.P4902799176785869688

/-! ## A047687.P7190346604905718381

`A241514(A241458(n+1))-A102671(n)`
-/

namespace A047687.P7190346604905718381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241514 (A241458 (n + 1)).toNat - A102671 n

end

end A047687.P7190346604905718381

/-! ## A047687.P9589753458495884261

`A227577(A227566(3*n)%A227526(n))`
-/

namespace A047687.P9589753458495884261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227577 (Int.tmod (A227566 (3 * n + 61)) (A227526 n)).toNat

end

end A047687.P9589753458495884261

/-! ## A047687.P9907641692111784504

`Δ[A279316(n)^A279310(A279305(n+1))]`
-/

namespace A047687.P9907641692111784504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279316 n : ℚ) ^ (A279310 (A279305 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047687.P9907641692111784504

/-!
# A047688: Denominators of coefficients in Taylor series for exp(sin(x)).

The programs for A047688, there is no canonical definition to state claims against.
-/

/-! ## A047688.P5951441612668377089

`gcd(n!, A060142((n+2)*n!))`
-/

namespace A047688.P5951441612668377089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A060142 ((n + 2) * Nat.factorial n))

end

end A047688.P5951441612668377089

/-! ## A047688.P12057929320302317437

`A002546(n^A133037(n+1))`
-/

namespace A047688.P12057929320302317437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002546 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A133037 (n + 1) : ℤ))).toNat

end

end A047688.P12057929320302317437

/-! ## A047688.P12252738363186426078

`A228731(A003415(n)+A001858(n))`
-/

namespace A047688.P12252738363186426078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (A003415 n + A001858 n).toNat

end

end A047688.P12252738363186426078

/-!
# A047689: Numerators of coefficients in Taylor series for exp(cos(x)-1).

The programs for A047689, there is no canonical definition to state claims against.
-/

/-! ## A047689.P11080905661506717332

`(1-2*n%2)*A000265(A005046(n))`
-/

namespace A047689.P11080905661506717332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * A000265 (A005046 n).toNat

end

end A047689.P11080905661506717332

/-! ## A047689.P10531445647665822014

`A000265(A005046(n))*A033999(n)`
-/

namespace A047689.P10531445647665822014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005046 n).toNat * A033999 n

end

end A047689.P10531445647665822014

/-!
# A047690: Denominators of coefficients in Taylor series for exp(cos(x)-1).

The programs for A047690, there is no canonical definition to state claims against.
-/

/-! ## A047690.P12924695341626873311

`A010050(n)/A097322(A028310(n))`
-/

namespace A047690.P12924695341626873311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 n : ℚ) / (A097322 (A028310 n).toNat : ℚ)

end

end A047690.P12924695341626873311

/-! ## A047690.P9889027144434775962

`A010050(n)/A262546(3^val(n+1, 3))`
-/

namespace A047690.P9889027144434775962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 n : ℚ) / (A262546 (3 ^ SequenceMachineLib.valuation (n + 1) 3) : ℚ)

end

end A047690.P9889027144434775962

/-! ## A047690.P114819599203032022

`A010050(n)/A059573(3*(n+1)/2^val(n+1, 2))`
-/

namespace A047690.P114819599203032022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 n : ℚ) / (A059573 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat : ℚ)

end

end A047690.P114819599203032022

/-! ## A047690.P9440241827639527244

`A010050(n)/A070430(A263777(n))`
-/

namespace A047690.P9440241827639527244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 n : ℚ) / (A070430 (A263777 n).toNat : ℚ)

end

end A047690.P9440241827639527244

/-!
# A047691: Numerators of coefficients in Taylor series for exp(tan(x)).

The programs for A047691, there is no canonical definition to state claims against.
-/

/-! ## A047691.P16078319091903416563

`A006229(n)/n!*A047692(n)`
-/

namespace A047691.P16078319091903416563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006229 n : ℚ) / (Nat.factorial n : ℚ) * (A047692 n : ℚ)

end

end A047691.P16078319091903416563

/-! ## A047691.P8056192707599109606

`A006229(n)/(2^n*n!)*A013516(n)`
-/

namespace A047691.P8056192707599109606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006229 n : ℚ) / (2 ^ n * Nat.factorial n : ℚ) * (A013516 n : ℚ)

end

end A047691.P8056192707599109606

/-! ## A047691.P12333773627321932071

`A356151(A006229(n))`
-/

namespace A047691.P12333773627321932071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356151 (A006229 n).toNat

end

end A047691.P12333773627321932071

/-! ## A047691.P9294722042024318636

`A356151(A009243(n+1)/(n+1))`
-/

namespace A047691.P9294722042024318636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356151 (SequenceMachineLib.roundAway ((A009243 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A047691.P9294722042024318636

/-! ## A047691.P14991617624552882850

`A356151(A012929(n)+A012933(n)-A009243(n))`
-/

namespace A047691.P14991617624552882850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356151 (A012929 n + (A012933 n - A009243 n)).toNat

end

end A047691.P14991617624552882850

/-!
# A047692: Denominators of coefficients in Taylor series for exp(tan(x)).

The programs for A047692, there is no canonical definition to state claims against.
-/

/-! ## A047692.P13007858284816626576

`n!/A006229(n)*A047691(n)`
-/

namespace A047692.P13007858284816626576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A006229 n : ℚ) * (A047691 n : ℚ)

end

end A047692.P13007858284816626576

/-! ## A047692.P17995848443533423040

`gcd(n!, A013516(n))`
-/

namespace A047692.P17995848443533423040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A013516 n)

end

end A047692.P17995848443533423040

/-! ## A047692.P9052835246477982577

`A013516(n)/A000079(n)`
-/

namespace A047692.P9052835246477982577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013516 n : ℚ) / (A000079 n : ℚ)

end

end A047692.P9052835246477982577

/-! ## A047692.P13984477898016252846

`A013516(n)/Δ[A000225(n)]`
-/

namespace A047692.P13984477898016252846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013516 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A047692.P13984477898016252846

/-! ## A047692.P3586804249497297588

`A013516(n)/record[A130321(n)]`
-/

namespace A047692.P3586804249497297588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013516 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A047692.P3586804249497297588

/-! ## A047692.P7071406610775097137

`A013516(n)/record[A057728(n+1)]`
-/

namespace A047692.P7071406610775097137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013516 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A047692.P7071406610775097137

/-!
# A047695: Nonnegative y such that y^2 = C(x,0) + C(x,1) + C(x,2) + C(x,3) is soluble in integers.

The programs for A047695, there is no canonical definition to state claims against.
-/

/-! ## A047695.P16035159370502119389

`record[Δ[A165072(A320663(n))]]`
-/

namespace A047695.P16035159370502119389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165072 (A320663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047695.P16035159370502119389

/-! ## A047695.P1303662831904125572

`record[and(A224652(n+1), A286373(n+1))]`
-/

namespace A047695.P1303662831904125572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A224652 (n + 1)) (A286373 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047695.P1303662831904125572

/-!
# A047699: a(0) = 0; for n >= 0, a(n+1) = a(n) + x where x is the smallest nonnegative number that is not equal to a(i) +- a(k) for any 0 <= i <= n, 0 <= k <= n.

The programs for A047699, there is no canonical definition to state claims against.
-/

/-! ## A047699.P10568165462405398537

`∑[A047705(n)]-A047705(n)`
-/

namespace A047699.P10568165462405398537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A047705 n

end

end A047699.P10568165462405398537

/-! ## A047699.P2068783146665000934

`∑[∑[A326839(A006167(n+1))]]`
-/

namespace A047699.P2068783146665000934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326839 (A006167 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047699.P2068783146665000934

/-! ## A047699.P11252062039323778660

`∑[record[A120565(A278259(n+1))]]`
-/

namespace A047699.P11252062039323778660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A278259 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047699.P11252062039323778660

/-! ## A047699.P2174309035189958195

`A003056(C(n+7, 7))-A092265(n+1)`
-/

namespace A047699.P2174309035189958195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (n + 7) 7) - A092265 (n + 1)

end

end A047699.P2174309035189958195

/-! ## A047699.P7549987314916279704

`A167209(n)-A001222(A309861(n))`
-/

namespace A047699.P7549987314916279704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167209 n - A001222 (A309861 n).toNat

end

end A047699.P7549987314916279704

