import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A276106: Number of compositions of n into parts 1, 7, and 8.

The programs for A276106, the canonical program `A276106.P4981797373956960951` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276106 has offset 0).

The definition of A276106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276106.P4981797373956960951

`a(n-1)+a(n-7)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276106

/-- `a(n-1)+a(n-7)+a(n-8)` -/
def P4981797373956960951.Spec : Prop :=
  ∀ n, (P4981797373956960951.a n : ℤ) = A276106 n

theorem P4981797373956960951.correct : P4981797373956960951.Spec := by
  intro n
  simp only [A276106]

end A276106

/-!
# A276107: Number of partitions of n which can themselves be subdivided into two partitions whose sums differ by 1 at most.

The programs for A276107, there is no canonical definition to state claims against.
-/

/-! ## A276107.P16125380490892969379

`A365543(∑[n%2+n])`
-/

namespace A276107.P16125380490892969379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276107.P16125380490892969379

/-! ## A276107.P1545677301092563706

`A365543(floor((n+1)²/2))`
-/

namespace A276107.P1545677301092563706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A276107.P1545677301092563706

/-! ## A276107.P4763152069085655698

`A300383(A171645(n+1))`
-/

namespace A276107.P4763152069085655698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300383 (A171645 (n + 1)).toNat

end

end A276107.P4763152069085655698

/-!
# A276108: Numbers expressible as perfect powers in a composite number of ways.

The programs for A276108, there is no canonical definition to state claims against.
-/

/-! ## A276108.P10792044484612038561

`(n+1)²^A023415(A060223(n))`
-/

namespace A276108.P10792044484612038561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) ^ (A023415 (A060223 n).toNat : ℤ)

end

end A276108.P10792044484612038561

/-! ## A276108.P5271485209635972392

`A000583(A000583(n+1)*A026791(n+1))`
-/

namespace A276108.P5271485209635972392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000583 (n + 1) * A026791 (n + 1)).toNat

end

end A276108.P5271485209635972392

/-! ## A276108.P5964506325915834895

`A000583(A000583(n+1)*A056622(n+1))`
-/

namespace A276108.P5964506325915834895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000583 (n + 1) * A056622 (n + 1)).toNat

end

end A276108.P5964506325915834895

/-! ## A276108.P4737372435054867206

`A000583(A059479(n+1)*A064549(n+1))`
-/

namespace A276108.P4737372435054867206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A059479 (n + 1) * A064549 (n + 1)).toNat

end

end A276108.P4737372435054867206

/-!
# A276112: Numbers with precipice 1: descending by the main diagonal of the pyramid described in A245092, the height difference between the level a(n) (starting from the top) and the level of the next terrace is equal to 1.

The programs for A276112, the canonical program `A276112.P8212586368584105175` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276112 has offset 1).

The definition of A276112 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276112.P8212586368584105175

`A071562(n+2)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A276112

/-- `A071562(n+2)-1` -/
def P8212586368584105175.Spec : Prop :=
  ∀ n, P8212586368584105175.a n = A276112 (n + 1)

theorem P8212586368584105175.correct : P8212586368584105175.Spec := by
  intro n
  simp only [A276112, Nat.add_sub_cancel]

end A276112

/-! ## A276112.P14560638680185982575

`∑[A280919(n+1)]`
-/

namespace A276112.P14560638680185982575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276112.P14560638680185982575

namespace A276112

/-- `∑[A280919(n+1)]` -/
def P14560638680185982575.Spec : Prop :=
  ∀ n, P14560638680185982575.a n = A276112 (n + 1)

end A276112

/-! ## A276112.P7334902844119271594

`comp[n*A348327(n+1)]`
-/

namespace A276112.P7334902844119271594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A348327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276112.P7334902844119271594

namespace A276112

/-- `comp[n*A348327(n+1)]` -/
def P7334902844119271594.Spec : Prop :=
  ∀ n, (P7334902844119271594.a n : ℤ) = A276112 (n + 1)

end A276112

/-! ## A276112.P5787834753073748603

`∑[abs(Δ[A071562(n+1)])]`
-/

namespace A276112.P5787834753073748603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276112.P5787834753073748603

namespace A276112

/-- `∑[abs(Δ[A071562(n+1)])]` -/
def P5787834753073748603.Spec : Prop :=
  ∀ n, P5787834753073748603.a n = A276112 (n + 1)

end A276112

/-! ## A276112.P12448144631512311057

`lt[acot(n), A067742(n+1)]`
-/

namespace A276112.P12448144631512311057
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276112.P12448144631512311057

namespace A276112

/-- `lt[acot(n), A067742(n+1)]` -/
def P12448144631512311057.Spec : Prop :=
  ∀ n, (P12448144631512311057.a n : ℤ) = A276112 (n + 1)

end A276112

/-! ## A276112.P13546017899554742743

`lt[acot(n), A071090(n+1)]`
-/

namespace A276112.P13546017899554742743
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276112.P13546017899554742743

namespace A276112

/-- `lt[acot(n), A071090(n+1)]` -/
def P13546017899554742743.Spec : Prop :=
  ∀ n, (P13546017899554742743.a n : ℤ) = A276112 (n + 1)

end A276112

/-! ## A276112.P7565995656948220622

`eq[1, A347950(n+2)]+1`
-/

namespace A276112.P7565995656948220622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276112.P7565995656948220622

namespace A276112

/-- `eq[1, A347950(n+2)]+1` -/
def P7565995656948220622.Spec : Prop :=
  ∀ n, (P7565995656948220622.a n : ℤ) = A276112 (n + 1)

end A276112

/-! ## A276112.P3739043068210202505

`lt[A348327(n+2), 1]+1`
-/

namespace A276112.P3739043068210202505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A276112.P3739043068210202505

namespace A276112

/-- `lt[A348327(n+2), 1]+1` -/
def P3739043068210202505.Spec : Prop :=
  ∀ n, (P3739043068210202505.a n : ℤ) = A276112 (n + 1)

end A276112

/-!
# A276115: Numbers whose digits have a permutation that is a palindrome.

The programs for A276115, there is no canonical definition to state claims against.
-/

/-! ## A276115.P280783991967192411

`A324424(A119441(n+1))+A044821(n+1)`
-/

namespace A276115.P280783991967192411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324424 (A119441 (n + 1)).toNat + A044821 (n + 1)

end

end A276115.P280783991967192411

/-! ## A276115.P14618491688040576500

`or(A044821(n+1), A212618(A327722(n)))`
-/

namespace A276115.P14618491688040576500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044821 (n + 1)) (A212618 (A327722 n).toNat)

end

end A276115.P14618491688040576500

/-! ## A276115.P17147344836729598608

`A056170(A027759(n+4))+A044821(n+1)`
-/

namespace A276115.P17147344836729598608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A027759 (n + 4)).toNat + A044821 (n + 1)

end

end A276115.P17147344836729598608

/-! ## A276115.P734536590895099614

`A174903(A278984(3*n+5))+A044821(n+1)`
-/

namespace A276115.P734536590895099614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174903 (A278984 (3 * n + 5)).toNat + A044821 (n + 1)

end

end A276115.P734536590895099614

/-! ## A276115.P1784890747795146985

`A044821(n+1)+A025469(A141708(2*n+1))`
-/

namespace A276115.P1784890747795146985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044821 (n + 1) + A025469 (A141708 (2 * n + 1)).toNat

end

end A276115.P1784890747795146985

/-!
# A276117: a(n) is the difference in A064413 between the index of p, the n-th prime, and the index of (p-1).

The programs for A276117, there is no canonical definition to state claims against.
-/

/-! ## A276117.P8795371242478122386

`A064664(A000040(n+1))-A064664(A006093(n+1))`
-/

namespace A276117.P8795371242478122386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A000040 (n + 1)).toNat - A064664 (A006093 (n + 1)).toNat

end

end A276117.P8795371242478122386

/-! ## A276117.P18350493257224711172

`A064955(n+1)-A064664(A006093(n+1))`
-/

namespace A276117.P18350493257224711172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064955 (n + 1) - A064664 (A006093 (n + 1)).toNat

end

end A276117.P18350493257224711172

/-! ## A276117.P6144995467922246810

`A064955(n+1)-A064664(A000040(n+1)-1)`
-/

namespace A276117.P6144995467922246810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064955 (n + 1) - A064664 (A000040 (n + 1) - 1).toNat

end

end A276117.P6144995467922246810

/-! ## A276117.P3393558232354848772

`A064955(n+1)-A064664(eq[2, A000005(n+1)])`
-/

namespace A276117.P3393558232354848772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064955 (n + 1) - A064664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276117.P3393558232354848772

/-! ## A276117.P5178626160613044611

`A064955(n+1)-A064664(eq[n, A000010(n+1)])`
-/

namespace A276117.P5178626160613044611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064955 (n + 1) - A064664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276117.P5178626160613044611

/-! ## A276117.P9749309063647732665

`A064955(n+1)-A064664(p?[A064413(n+1)]-1)`
-/

namespace A276117.P9749309063647732665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064955 (n + 1) - A064664 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A276117.P9749309063647732665

/-! ## A276117.P14353746335264824448

`A064955(n+1)-A064664(p?[A169847(n+1)]-1)`
-/

namespace A276117.P14353746335264824448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064955 (n + 1) - A064664 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A276117.P14353746335264824448

/-! ## A276117.P3617705003938308608

`A304527(A062876(n+1))-A064664(A006093(n+1))`
-/

namespace A276117.P3617705003938308608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304527 (A062876 (n + 1)).toNat - A064664 (A006093 (n + 1)).toNat

end

end A276117.P3617705003938308608

/-!
# A276119: Number of twin prime pairs between n^3 and (n+1)^3.

The programs for A276119, there is no canonical definition to state claims against.
-/

/-! ## A276119.P17546404440382555768

`Δ[A071538(Δ[∑[n]²])]`
-/

namespace A276119.P17546404440382555768
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276119.P17546404440382555768

/-! ## A276119.P13282951203010856496

`round(sqrt(Δ[A071538((n+1)^3)]²+1))`
-/

namespace A276119.P13282951203010856496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 ((n + 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) - f1 n) ^ 2 + 1 : ℝ))

end

end A276119.P13282951203010856496

/-! ## A276119.P16980949511821412795

`abs(Δ[A071538(A000578(n+1))])`
-/

namespace A276119.P16980949511821412795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A000578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276119.P16980949511821412795

/-! ## A276119.P13904207533030406912

`abs(Δ[A071538(A184628(n+1))])`
-/

namespace A276119.P13904207533030406912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A184628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276119.P13904207533030406912

/-! ## A276119.P6761570099044814133

`Δ[record[A071538(A109595(n+1))]]`
-/

namespace A276119.P6761570099044814133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A109595 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276119.P6761570099044814133

/-!
# A276121: Smallest odd integer k such that k*2^prime(n)-1 is a prime number.

The programs for A276121, there is no canonical definition to state claims against.
-/

/-! ## A276121.P14771246757789297287

`A126717(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A276121.P14771246757789297287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A276121.P14771246757789297287

/-! ## A276121.P8983425891369003622

`A126717(Δ[A007504(n)])`
-/

namespace A276121.P8983425891369003622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (f1 (n + 1) - f1 n).toNat

end

end A276121.P8983425891369003622

/-! ## A276121.P9733716763160734230

`A126717(A000040(n+1))`
-/

namespace A276121.P9733716763160734230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (A000040 (n + 1)).toNat

end

end A276121.P9733716763160734230

/-! ## A276121.P14221711329783569880

`A126717(A008578(n+2))`
-/

namespace A276121.P14221711329783569880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (A008578 (n + 2)).toNat

end

end A276121.P14221711329783569880

/-! ## A276121.P15388365029995936151

`A126717(A182986(n+2))`
-/

namespace A276121.P15388365029995936151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (A182986 (n + 2)).toNat

end

end A276121.P15388365029995936151

/-! ## A276121.P7706202967591326055

`A126717(eq[1, A003415(n)])`
-/

namespace A276121.P7706202967591326055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276121.P7706202967591326055

/-! ## A276121.P11442536730634940349

`A126717(record[A093074(n+1)])`
-/

namespace A276121.P11442536730634940349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276121.P11442536730634940349

/-! ## A276121.P15650800648584962068

`A126717(record[A006530(n+2)])`
-/

namespace A276121.P15650800648584962068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276121.P15650800648584962068

/-! ## A276121.P16076333491358818788

`A126717(record[A014963(n+2)])`
-/

namespace A276121.P16076333491358818788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276121.P16076333491358818788

/-! ## A276121.P11317748750254867406

`A126717(record[A020639(n+2)])`
-/

namespace A276121.P11317748750254867406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276121.P11317748750254867406

/-! ## A276121.P7167183985574789681

`A126717(A006093(n+1)+1)`
-/

namespace A276121.P7167183985574789681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (A006093 (n + 1) + 1).toNat

end

end A276121.P7167183985574789681

/-! ## A276121.P1806235749370770094

`A126717(A008864(n+1)-1)`
-/

namespace A276121.P1806235749370770094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (A008864 (n + 1) - 1).toNat

end

end A276121.P1806235749370770094

/-! ## A276121.P9335611838148858285

`A126717(A040976(n+1)+2)`
-/

namespace A276121.P9335611838148858285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (A040976 (n + 1) + 2).toNat

end

end A276121.P9335611838148858285

/-! ## A276121.P10858857758358624123

`A126717(A001747(n+2)/2)`
-/

namespace A276121.P10858857758358624123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A276121.P10858857758358624123

/-!
# A276122: a(0) = a(1) = a(2) = 1; for n > 2, a(n) = (a(n-1)^2+a(n-2)^2+a(n-1)+a(n-2))/a(n-3).

The programs for A276122, the canonical program `A276122.P14701867653435082861` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276122 has offset 0).

The definition of A276122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276122.P14701867653435082861

`6*a(n-1)*a(n-2)-a(n-3)-1` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276122

/-- `6*a(n-1)*a(n-2)-a(n-3)-1` -/
def P14701867653435082861.Spec : Prop :=
  ∀ n, P14701867653435082861.a n = A276122 n

theorem P14701867653435082861.correct : P14701867653435082861.Spec := by
  intro n
  simp only [A276122]

end A276122

/-! ## A276122.P1103950806878612306

`2^a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=22, a(5)=526`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276122.P1103950806878612306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4, 22, 526] fun n a =>
  2 ^ a (n - 1)

end

end A276122.P1103950806878612306

namespace A276122

/-- `2^a(n-1)` -/
def P1103950806878612306.Spec : Prop :=
  ∀ n, (P1103950806878612306.a n : ℤ) = A276122 n

end A276122

/-! ## A276122.P11691990712090723859

`(a(n-1)²+a(n-2)²+a(n-1)+a(n-2))/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A276122.P11691990712090723859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2 + (a (n - 1) + a (n - 2))) / a (n - 3)

end

end A276122.P11691990712090723859

namespace A276122

/-- `(a(n-1)²+a(n-2)²+a(n-1)+a(n-2))/a(n-3)` -/
def P11691990712090723859.Spec : Prop :=
  ∀ n, P11691990712090723859.a n = (A276122 n : ℚ)

end A276122

/-!
# A276123: a(0) = a(1) = a(2) = 1; for n > 2, a(n) = (a(n-1) + 1)*(a(n-2) + 1) / a(n-3).

The programs for A276123, the canonical program `A276123.P14068762715646537064` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276123 has offset 0).

The definition of A276123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276123.P14068762715646537064

`17*a(n-2)-17*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=10, a(5)=55`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276123

/-- `17*a(n-2)-17*a(n-4)+a(n-6)` -/
def P14068762715646537064.Spec : Prop :=
  ∀ n, P14068762715646537064.a n = A276123 n

theorem P14068762715646537064.correct : P14068762715646537064.Spec := by
  intro n
  simp only [A276123]

end A276123

/-! ## A276123.P8688067645424406452

`(a(n-1)+1)*(a(n-2)+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A276123.P8688067645424406452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) + 1) * ((a (n - 2) + 1) / a (n - 3))

end

end A276123.P8688067645424406452

namespace A276123

/-- `(a(n-1)+1)*(a(n-2)+1)/a(n-3)` -/
def P8688067645424406452.Spec : Prop :=
  ∀ n, P8688067645424406452.a n = (A276123 n : ℚ)

end A276123

/-! ## A276123.P16493052117392287365

`A131299(A020543(n)-n)`
-/

namespace A276123.P16493052117392287365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131299 (A020543 n - (n : ℤ)).toNat

end

end A276123.P16493052117392287365

namespace A276123

/-- `A131299(A020543(n)-n)` -/
def P16493052117392287365.Spec : Prop :=
  ∀ n, P16493052117392287365.a n = A276123 n

end A276123

/-!
# A276124: a(0) = a(1) = a(2) = a(3) = 1; for n > 3, a(n) = (a(n-1)^2+a(n-2)^2+a(n-3)^2+a(n-1)*a(n-2)*a(n-3))/a(n-4).

The programs for A276124, there is no canonical definition to state claims against.
-/

/-! ## A276124.P9263247864491605210

`3^a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4, a(5)=22, a(6)=589`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276124.P9263247864491605210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 4, 22, 589] fun n a =>
  3 ^ a (n - 1)

end

end A276124.P9263247864491605210

/-! ## A276124.P864793159203665153

`(a(n-1)²+a(n-2)²+a(n-3)²+a(n-1)*a(n-2)*a(n-3))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A276124.P864793159203665153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2 + a (n - 3) ^ 2 + a (n - 1) * (a (n - 2) * a (n - 3))) / a (n - 4)

end

end A276124.P864793159203665153

/-! ## A276124.P4884939338770872024

`8*a(n-1)*a(n-2)*a(n-3)-a(n-1)*a(n-2)-a(n-1)*a(n-3)-a(n-2)*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A276124.P4884939338770872024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  8 * (a (n - 1) * (a (n - 2) * a (n - 3))) - a (n - 1) * a (n - 2) - a (n - 1) * a (n - 3) - a (n - 2) * a (n - 3) - a (n - 4)

end

end A276124.P4884939338770872024

/-!
# A276126: a(0) = a(1) = a(2) = a(3) = a(4) = 1; for n>4, a(n) = ( a(n-1)^2+a(n-2)^2+a(n-3)^2+a(n-4)^2+a(n-1)*a(n-2)*a(n-3)*a(n-4) ) / a(n-5).

The programs for A276126, there is no canonical definition to state claims against.
-/

/-! ## A276126.P10602597207702251560

`(a(n-1)²+a(n-2)²+a(n-3)²+a(n-4)²+a(n-1)*a(n-2)*a(n-3)*a(n-4))/a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A276126.P10602597207702251560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2 + a (n - 3) ^ 2 + a (n - 4) ^ 2 + a (n - 1) * (a (n - 2) * (a (n - 3) * a (n - 4)))) / a (n - 5)

end

end A276126.P10602597207702251560

/-! ## A276126.P13675348381553752638

`A376556(A367719(n))+1`
-/

namespace A276126.P13675348381553752638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 (A367719 n).toNat + 1

end

end A276126.P13675348381553752638

/-! ## A276126.P16504215638797010671

`∏{p}[A109266(A239554(n)), #]`
-/

namespace A276126.P16504215638797010671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109266 (A239554 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A276126.P16504215638797010671

/-! ## A276126.P450331115715658577

`A187182(∏[∏[A050315(n)]])`
-/

namespace A276126.P450331115715658577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276126.P450331115715658577

/-!
# A276127: a(n) = p_1 + p_2 + ... + p_k, where p_1*p_2*...*p_k is the prime factorization of A064413(n).

The programs for A276127, there is no canonical definition to state claims against.
-/

/-! ## A276127.P4802034567223211837

`A028310(A001414(A064413(n+1)))`
-/

namespace A276127.P4802034567223211837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A001414 (A064413 (n + 1)).toNat).toNat

end

end A276127.P4802034567223211837

/-! ## A276127.P7508496937355143566

`A001414(A064413(n+1))+A000007(n)`
-/

namespace A276127.P7508496937355143566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A064413 (n + 1)).toNat + A000007 n

end

end A276127.P7508496937355143566

/-! ## A276127.P12372765834040880684

`A001414(A064413(n+1))^A090996(A053644(n))`
-/

namespace A276127.P12372765834040880684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A064413 (n + 1)).toNat : ℚ) ^ (A090996 (A053644 n).toNat : ℤ)

end

end A276127.P12372765834040880684

/-! ## A276127.P9960960993549154002

`A001414(A064413(n+1))^A001222(A027746(n+1))`
-/

namespace A276127.P9960960993549154002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A064413 (n + 1)).toNat : ℚ) ^ (A001222 (A027746 (n + 1)).toNat : ℤ)

end

end A276127.P9960960993549154002

/-! ## A276127.P737767467571220609

`A001414(A064413(n+1))^A001222(A027748(n+1))`
-/

namespace A276127.P737767467571220609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A064413 (n + 1)).toNat : ℚ) ^ (A001222 (A027748 (n + 1)).toNat : ℤ)

end

end A276127.P737767467571220609

/-! ## A276127.P6238152651640965903

`A084099(A005843(n))+A001414(A064413(n+1))`
-/

namespace A276127.P6238152651640965903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (A005843 n).toNat + A001414 (A064413 (n + 1)).toNat

end

end A276127.P6238152651640965903

/-! ## A276127.P12445061993694412246

`A065033(A001414(A104125(n+1)))`
-/

namespace A276127.P12445061993694412246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001414 (A104125 (n + 1)).toNat).toNat

end

end A276127.P12445061993694412246

/-!
# A276128: a(n) is the minimum cost to determine a number among 1...n by multiple guesses, where the cost of each guess is the guessed value and the answer is whether the guess is low, high, or correct.

The programs for A276128, there is no canonical definition to state claims against.
-/

/-! ## A276128.P7106432088724193674

`∑[A001221(A001654(A264810(n+1)))]`
-/

namespace A276128.P7106432088724193674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001654 (A264810 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276128.P7106432088724193674

/-! ## A276128.P16979192374746091720

`∑[A057526(A206224(A345443(n+1)))]`
-/

namespace A276128.P16979192374746091720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A206224 (A345443 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276128.P16979192374746091720

/-! ## A276128.P1645301108302625859

`∑[A001221(∏[A132042(n+5)])]`
-/

namespace A276128.P1645301108302625859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132042 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276128.P1645301108302625859

/-! ## A276128.P9350689924057352896

`∑[A001221(∑[A359816(n+1)]!)]`
-/

namespace A276128.P9350689924057352896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359816 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276128.P9350689924057352896

/-! ## A276128.P88285717829485885

`∑[∑[A287382(A055107(2*(n+2)))]]`
-/

namespace A276128.P88285717829485885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287382 (A055107 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276128.P88285717829485885

/-!
# A276129: a(n) is the number of ordered ways to tile a strip of length n+2 with white tiles of odd lengths summing to length n and two red squares.

The programs for A276129, the canonical program `A276129.P2467275896849965756` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276129 has offset 0).

The definition of A276129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276129.P2467275896849965756

`Δ[A054455(n)-A239342(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A276129

/-- `Δ[A054455(n)-A239342(n+1)]` -/
def P2467275896849965756.Spec : Prop :=
  ∀ n, P2467275896849965756.a n = A276129 n

theorem P2467275896849965756.correct : P2467275896849965756.Spec := by
  intro n
  simp only [A276129]

end A276129

/-! ## A276129.P5500358757220149151

`∑[∑[A212652(A141583(n))]]`
-/

namespace A276129.P5500358757220149151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (A141583 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276129.P5500358757220149151

namespace A276129

/-- `∑[∑[A212652(A141583(n))]]` -/
def P5500358757220149151.Spec : Prop :=
  ∀ n, P5500358757220149151.a n = A276129 n

end A276129

/-! ## A276129.P6712758023585933120

`∑[∑[A248098(A032555(n+1))]]`
-/

namespace A276129.P6712758023585933120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (A032555 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276129.P6712758023585933120

namespace A276129

/-- `∑[∑[A248098(A032555(n+1))]]` -/
def P6712758023585933120.Spec : Prop :=
  ∀ n, P6712758023585933120.a n = A276129 n

end A276129

/-! ## A276129.P14889727147952200981

`∑[∑[A248098(A032559(n+1))]]`
-/

namespace A276129.P14889727147952200981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (A032559 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276129.P14889727147952200981

namespace A276129

/-- `∑[∑[A248098(A032559(n+1))]]` -/
def P14889727147952200981.Spec : Prop :=
  ∀ n, P14889727147952200981.a n = A276129 n

end A276129

/-!
# A276130: a(0) = a(1) = a(2) = a(3) = a(4) = 1; for n>4, a(n) = ( a(n-1) +a(n-3) )*( a(n-2)+a(n-4) ) / a(n-5).

The programs for A276130, the canonical program `A276130.P15560498819515028605` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276130 has offset 0).

The definition of A276130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276130.P15560498819515028605

`(a(n-1)+a(n-3))*(a(n-2)+a(n-4))/a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276130

/-- `(a(n-1)+a(n-3))*(a(n-2)+a(n-4))/a(n-5)` -/
def P15560498819515028605.Spec : Prop :=
  ∀ n, P15560498819515028605.a n = (A276130 n : ℚ)

end A276130

/-!
# A276131: a(n) = (a(n-1)^2+a(n-2)^2+a(n-3)^2+a(n-4)^2+a(n-1)*a(n-2)+a(n-1)*a(n-3)+a(n-1)*a(n-4)+a(n-2)*a(n-3)+a(n-2)*a(n-4)+a(n-3)*a(n-4))/a(n-5) with five initial ones.

The programs for A276131, there is no canonical definition to state claims against.
-/

/-! ## A276131.P2653270426851247819

`A214897(C(n, 5)+1)`
-/

namespace A276131.P2653270426851247819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214897 (Nat.choose n 5 + 1)

end

end A276131.P2653270426851247819

/-! ## A276131.P17802873962216512447

`A190896(n*C(n, 5))`
-/

namespace A276131.P17802873962216512447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190896 (n * Nat.choose n 5)

end

end A276131.P17802873962216512447

/-! ## A276131.P4991388138475950402

`C(p?[A205599(n+1)], 2)`
-/

namespace A276131.P4991388138475950402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A276131.P4991388138475950402

/-!
# A276132: Terms of A077390 with reverse in A077390.

The programs for A276132, there is no canonical definition to state claims against.
-/

/-! ## A276132.P18224224840623662838

`∩[A077390(n+1), A176548(n+1)]`
-/

namespace A276132.P18224224840623662838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276132.P18224224840623662838

/-! ## A276132.P11324953135394073897

`A007500(lt[A270996(n), A016742(n)])`
-/

namespace A276132.P11324953135394073897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276132.P11324953135394073897

/-! ## A276132.P1437740878763565071

`A003459(A044825(n+1))`
-/

namespace A276132.P1437740878763565071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (A044825 (n + 1)).toNat

end

end A276132.P1437740878763565071

/-! ## A276132.P14008046583023141633

`∩[A069678(n+1), A091897(n+1)]`
-/

namespace A276132.P14008046583023141633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276132.P14008046583023141633

/-! ## A276132.P5520084772484770177

`∩[A068652(n+1), A128898(n+1)]`
-/

namespace A276132.P5520084772484770177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276132.P5520084772484770177

/-!
# A276133: Exponent of highest power of 2 dividing the product of the composite numbers between the n-th prime and the (n+1)-st prime.

The programs for A276133, the canonical program `A276133.P16912241071794328455` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276133 has offset 1).

The definition of A276133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276133.P16912241071794328455

`Δ[A080085(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A276133

/-- `Δ[A080085(n+1)]` -/
def P16912241071794328455.Spec : Prop :=
  ∀ n, P16912241071794328455.a n = A276133 (n + 1)

theorem P16912241071794328455.correct : P16912241071794328455.Spec := by
  intro n
  simp only [A276133, Nat.add_sub_cancel]

end A276133

/-! ## A276133.P16106776603561928804

`A080085(n+2)-A080085(n+1)`
-/

namespace A276133.P16106776603561928804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (n + 2) - A080085 (n + 1)

end

end A276133.P16106776603561928804

namespace A276133

/-- `A080085(n+2)-A080085(n+1)` -/
def P16106776603561928804.Spec : Prop :=
  ∀ n, P16106776603561928804.a n = A276133 (n + 1)

theorem P16106776603561928804.correct : P16106776603561928804.Spec := by
  intro n
  simp only [A276133, Nat.add_sub_cancel, A276133.P16106776603561928804.a, A276133.P16912241071794328455.f1, A276133.P16912241071794328455.a, SequenceMachineLib.memo_apply]

end A276133

/-! ## A276133.P6054740183606783716

`Δ[Δ[A007504(n)]-A014499(n+1)]`
-/

namespace A276133.P6054740183606783716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A014499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P6054740183606783716

namespace A276133

/-- `Δ[Δ[A007504(n)]-A014499(n+1)]` -/
def P6054740183606783716.Spec : Prop :=
  ∀ n, P6054740183606783716.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P9977274631448272471

`Δ[A000040(n+1)-A014499(n+1)]`
-/

namespace A276133.P9977274631448272471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A014499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P9977274631448272471

namespace A276133

/-- `Δ[A000040(n+1)-A014499(n+1)]` -/
def P9977274631448272471.Spec : Prop :=
  ∀ n, P9977274631448272471.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P16094040332101785961

`A001223(n+1)-Δ[A014499(n+1)]`
-/

namespace A276133.P16094040332101785961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (f1 (n + 1) - f1 n)

end

end A276133.P16094040332101785961

namespace A276133

/-- `A001223(n+1)-Δ[A014499(n+1)]` -/
def P16094040332101785961.Spec : Prop :=
  ∀ n, P16094040332101785961.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P592396531364949709

`Δ[A006093(n+1)-A014499(n+1)]`
-/

namespace A276133.P592396531364949709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A014499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P592396531364949709

namespace A276133

/-- `Δ[A006093(n+1)-A014499(n+1)]` -/
def P592396531364949709.Spec : Prop :=
  ∀ n, P592396531364949709.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P8454750598543330612

`Δ[A139049(n+1)-A014499(n+1)]`
-/

namespace A276133.P8454750598543330612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) - A014499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P8454750598543330612

namespace A276133

/-- `Δ[A139049(n+1)-A014499(n+1)]` -/
def P8454750598543330612.Spec : Prop :=
  ∀ n, P8454750598543330612.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P9972225621499781908

`Δ[A318448(A000040(n+1))]`
-/

namespace A276133.P9972225621499781908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318448 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P9972225621499781908

namespace A276133

/-- `Δ[A318448(A000040(n+1))]` -/
def P9972225621499781908.Spec : Prop :=
  ∀ n, P9972225621499781908.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P16176980775311078444

`Δ[A318448(A001750(n+1)/5)]`
-/

namespace A276133.P16176980775311078444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318448 (SequenceMachineLib.roundAway ((A001750 (n + 1) : ℚ) / 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P16176980775311078444

namespace A276133

/-- `Δ[A318448(A001750(n+1)/5)]` -/
def P16176980775311078444.Spec : Prop :=
  ∀ n, P16176980775311078444.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P1327251729925853026

`Δ[A005187(A130290(n+1))]`
-/

namespace A276133.P1327251729925853026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A130290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P1327251729925853026

namespace A276133

/-- `Δ[A005187(A130290(n+1))]` -/
def P1327251729925853026.Spec : Prop :=
  ∀ n, P1327251729925853026.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P16446076552197036321

`val(A061216(n+1), 2)`
-/

namespace A276133.P16446076552197036321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061216 (n + 1)).toNat 2

end

end A276133.P16446076552197036321

namespace A276133

/-- `val(A061216(n+1), 2)` -/
def P16446076552197036321.Spec : Prop :=
  ∀ n, (P16446076552197036321.a n : ℤ) = A276133 (n + 1)

end A276133

/-! ## A276133.P12510230441857646835

`Δ[A078896(A006093(n+1))]`
-/

namespace A276133.P12510230441857646835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P12510230441857646835

namespace A276133

/-- `Δ[A078896(A006093(n+1))]` -/
def P12510230441857646835.Spec : Prop :=
  ∀ n, P12510230441857646835.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P16595105211495038345

`Δ[A078896(A156037(n+1))]`
-/

namespace A276133.P16595105211495038345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (A156037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P16595105211495038345

namespace A276133

/-- `Δ[A078896(A156037(n+1))]` -/
def P16595105211495038345.Spec : Prop :=
  ∀ n, P16595105211495038345.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P4046120209341766267

`Δ[A011371(A039915(n+1))]`
-/

namespace A276133.P4046120209341766267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P4046120209341766267

namespace A276133

/-- `Δ[A011371(A039915(n+1))]` -/
def P4046120209341766267.Spec : Prop :=
  ∀ n, P4046120209341766267.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P1518563770735959715

`Δ[A011371(A008578(n+2))]`
-/

namespace A276133.P1518563770735959715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P1518563770735959715

namespace A276133

/-- `Δ[A011371(A008578(n+2))]` -/
def P1518563770735959715.Spec : Prop :=
  ∀ n, P1518563770735959715.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P7810744379004535732

`Δ[A011371(A068499(n+2))]`
-/

namespace A276133.P7810744379004535732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A068499 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P7810744379004535732

namespace A276133

/-- `Δ[A011371(A068499(n+2))]` -/
def P7810744379004535732.Spec : Prop :=
  ∀ n, P7810744379004535732.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P18276079325699298426

`Δ[A011371(∑[A054541(n+1)])]`
-/

namespace A276133.P18276079325699298426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P18276079325699298426

namespace A276133

/-- `Δ[A011371(∑[A054541(n+1)])]` -/
def P18276079325699298426.Spec : Prop :=
  ∀ n, P18276079325699298426.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P16185772711741636787

`Δ[A011371(record[A039649(n+1)])]`
-/

namespace A276133.P16185772711741636787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P16185772711741636787

namespace A276133

/-- `Δ[A011371(record[A039649(n+1)])]` -/
def P16185772711741636787.Spec : Prop :=
  ∀ n, P16185772711741636787.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P11309708672875413070

`Δ[A011371(record[A093074(n+1)])]`
-/

namespace A276133.P11309708672875413070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P11309708672875413070

namespace A276133

/-- `Δ[A011371(record[A093074(n+1)])]` -/
def P11309708672875413070.Spec : Prop :=
  ∀ n, P11309708672875413070.a n = A276133 (n + 1)

end A276133

/-! ## A276133.P2259764921968296094

`Δ[A040976(n+1)-A000120(A000040(n+1))]`
-/

namespace A276133.P2259764921968296094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A000120 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276133.P2259764921968296094

namespace A276133

/-- `Δ[A040976(n+1)-A000120(A000040(n+1))]` -/
def P2259764921968296094.Spec : Prop :=
  ∀ n, P2259764921968296094.a n = A276133 (n + 1)

end A276133

/-!
# A276134: a(5n) = a(n), a(5n+1) = a(5n+2) = a(5n+3) = a(5n+4) = a(n) + 1, a(0) = 0.

The programs for A276134, the canonical program `A276134.P17715433807570833748` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276134 has offset 0).

The definition of A276134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276134.P9996458417250392110

`A215884(A319653(n))`
-/

namespace A276134.P9996458417250392110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 (A319653 n).toNat

end

end A276134.P9996458417250392110

namespace A276134

/-- `A215884(A319653(n))` -/
def P9996458417250392110.Spec : Prop :=
  ∀ n, P9996458417250392110.a n = A276134 n

end A276134

/-! ## A276134.P14123173890094036972

`∑{digits}[A007091(n), A215887(#)]`
-/

namespace A276134.P14123173890094036972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A215887 x).sum

end

end A276134.P14123173890094036972

namespace A276134

/-- `∑{digits}[A007091(n), A215887(#)]` -/
def P14123173890094036972.Spec : Prop :=
  ∀ n, P14123173890094036972.a n = A276134 n

end A276134

/-! ## A276134.P17715433807570833748

`∑{digits}[A007091(n), A192085(A192085(#))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276134

/-- `∑{digits}[A007091(n), A192085(A192085(#))]` -/
def P17715433807570833748.Spec : Prop :=
  ∀ n, P17715433807570833748.a n = A276134 n

theorem P17715433807570833748.correct : P17715433807570833748.Spec := by
  intro n
  simp only [A276134]

end A276134

/-! ## A276134.P12182559573766761859

`A055640(A007091(n))`
-/

namespace A276134.P12182559573766761859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A007091 n).toNat

end

end A276134.P12182559573766761859

namespace A276134

/-- `A055640(A007091(n))` -/
def P12182559573766761859.Spec : Prop :=
  ∀ n, P12182559573766761859.a n = A276134 n

end A276134

/-! ## A276134.P17874818434656756559

`A055640(A054047(n))`
-/

namespace A276134.P17874818434656756559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A054047 n).toNat

end

end A276134.P17874818434656756559

namespace A276134

/-- `A055640(A054047(n))` -/
def P17874818434656756559.Spec : Prop :=
  ∀ n, P17874818434656756559.a n = A276134 n

end A276134

/-! ## A276134.P12275002215888644888

`A055640(A080228(n+1))`
-/

namespace A276134.P12275002215888644888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A080228 (n + 1)).toNat

end

end A276134.P12275002215888644888

namespace A276134

/-- `A055640(A080228(n+1))` -/
def P12275002215888644888.Spec : Prop :=
  ∀ n, P12275002215888644888.a n = A276134 n

end A276134

/-! ## A276134.P8071307839548815913

`A055640(A014263(n+1)/2)`
-/

namespace A276134.P8071307839548815913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A276134.P8071307839548815913

namespace A276134

/-- `A055640(A014263(n+1)/2)` -/
def P8071307839548815913.Spec : Prop :=
  ∀ n, P8071307839548815913.a n = A276134 n

end A276134

/-! ## A276134.P6208503301934724351

`A055640(A001744(n+1))`
-/

namespace A276134.P6208503301934724351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A001744 (n + 1)).toNat

end

end A276134.P6208503301934724351

namespace A276134

/-- `A055640(A001744(n+1))` -/
def P6208503301934724351.Spec : Prop :=
  ∀ n, P6208503301934724351.a n = A276134 n

end A276134

/-! ## A276134.P10984237340864969024

`A055640(A014263(n+1))`
-/

namespace A276134.P10984237340864969024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A014263 (n + 1)).toNat

end

end A276134.P10984237340864969024

namespace A276134

/-- `A055640(A014263(n+1))` -/
def P10984237340864969024.Spec : Prop :=
  ∀ n, P10984237340864969024.a n = A276134 n

end A276134

/-! ## A276134.P6609349799057689053

`A055640(A072960(n+1))`
-/

namespace A276134.P6609349799057689053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A072960 (n + 1)).toNat

end

end A276134.P6609349799057689053

namespace A276134

/-- `A055640(A072960(n+1))` -/
def P6609349799057689053.Spec : Prop :=
  ∀ n, P6609349799057689053.a n = A276134 n

end A276134

/-! ## A276134.P12777550656126910536

`A102669(A062285(n+1))`
-/

namespace A276134.P12777550656126910536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A062285 (n + 1)).toNat

end

end A276134.P12777550656126910536

namespace A276134

/-- `A102669(A062285(n+1))` -/
def P12777550656126910536.Spec : Prop :=
  ∀ n, P12777550656126910536.a n = A276134 n

end A276134

/-! ## A276134.P17327551207729685647

`A102669(2*A007091(n))`
-/

namespace A276134.P17327551207729685647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * A007091 n).toNat

end

end A276134.P17327551207729685647

namespace A276134

/-- `A102669(2*A007091(n))` -/
def P17327551207729685647.Spec : Prop :=
  ∀ n, P17327551207729685647.a n = A276134 n

end A276134

/-! ## A276134.P17154067112431802836

`A055640(eq[0, A196564(n)])`
-/

namespace A276134.P17154067112431802836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276134.P17154067112431802836

namespace A276134

/-- `A055640(eq[0, A196564(n)])` -/
def P17154067112431802836.Spec : Prop :=
  ∀ n, P17154067112431802836.a n = A276134 n

end A276134

/-! ## A276134.P10603167156731248120

`A102669(A014263(n+1)+1)`
-/

namespace A276134.P10603167156731248120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A014263 (n + 1) + 1).toNat

end

end A276134.P10603167156731248120

namespace A276134

/-- `A102669(A014263(n+1)+1)` -/
def P10603167156731248120.Spec : Prop :=
  ∀ n, P10603167156731248120.a n = A276134 n

end A276134

/-! ## A276134.P15396483555622980180

`A102669(eq[n, 2*A106747(n)])`
-/

namespace A276134.P15396483555622980180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276134.P15396483555622980180

namespace A276134

/-- `A102669(eq[n, 2*A106747(n)])` -/
def P15396483555622980180.Spec : Prop :=
  ∀ n, P15396483555622980180.a n = A276134 n

end A276134

/-! ## A276134.P13246741204406261915

`A102669(eq[n/2, A106747(n)])`
-/

namespace A276134.P13246741204406261915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A276134.P13246741204406261915

namespace A276134

/-- `A102669(eq[n/2, A106747(n)])` -/
def P13246741204406261915.Spec : Prop :=
  ∀ n, P13246741204406261915.a n = A276134 n

end A276134

/-! ## A276134.P13791115321001256188

`A196564(eq[n, A222245(A107128(n))])`
-/

namespace A276134.P13791115321001256188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A107128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276134.P13791115321001256188

namespace A276134

/-- `A196564(eq[n, A222245(A107128(n))])` -/
def P13791115321001256188.Spec : Prop :=
  ∀ n, P13791115321001256188.a n = A276134 n

end A276134

/-! ## A276134.P17791176009487233291

`A196564(eq[n, A222254(A107128(n))])`
-/

namespace A276134.P17791176009487233291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A107128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276134.P17791176009487233291

namespace A276134

/-- `A196564(eq[n, A222254(A107128(n))])` -/
def P17791176009487233291.Spec : Prop :=
  ∀ n, P17791176009487233291.a n = A276134 n

end A276134

/-! ## A276134.P1985634624079979986

`A102669(eq[A064770(n), A106747(n)]+1)`
-/

namespace A276134.P1985634624079979986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A276134.P1985634624079979986

namespace A276134

/-- `A102669(eq[A064770(n), A106747(n)]+1)` -/
def P1985634624079979986.Spec : Prop :=
  ∀ n, P1985634624079979986.a n = A276134 n

end A276134

/-! ## A276134.P17358613842325005344

`A102669(eq[A064770(n)², A106747(n)²])`
-/

namespace A276134.P17358613842325005344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A276134.P17358613842325005344

namespace A276134

/-- `A102669(eq[A064770(n)², A106747(n)²])` -/
def P17358613842325005344.Spec : Prop :=
  ∀ n, P17358613842325005344.a n = A276134 n

end A276134

/-!
# A276135: Ben Ames Williams's Monkey and Coconuts Problem.

The programs for A276135, there is no canonical definition to state claims against.
-/

/-! ## A276135.P17160066185376804999

`A173499(n+1)/gcd(A000312(n), A173499(n+1))`
-/

namespace A276135.P17160066185376804999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173499 (n + 1) : ℚ) / (Int.gcd (A000312 n) (A173499 (n + 1)) : ℚ)

end

end A276135.P17160066185376804999

/-! ## A276135.P11571905369489000526

`(xor(1, A000312(n))*A081216(n))%A000312(n)`
-/

namespace A276135.P11571905369489000526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 1 (A000312 n) * A081216 n) (A000312 n)

end

end A276135.P11571905369489000526

/-! ## A276135.P5506118073887489856

`floor((n^n)²/(A028310(n)+1))%A000312(n)`
-/

namespace A276135.P5506118073887489856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n ^ n) ^ 2 : ℚ) / (A028310 n + 1 : ℚ)⌋ (A000312 n)

end

end A276135.P5506118073887489856

/-! ## A276135.P2880854127324063495

`A062160(A062725(n))%A000312(n)`
-/

namespace A276135.P2880854127324063495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062160 (A062725 n).toNat) (A000312 n)

end

end A276135.P2880854127324063495

/-!
# A276136: Numbers m > 1 such that the largest odd divisors of m-1, m, and m+1 are prime.

The programs for A276136, there is no canonical definition to state claims against.
-/

/-! ## A276136.P11530163379249065795

`filter[A369329(n+1), A353670(#)]`
-/

namespace A276136.P11530163379249065795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A276136.P11530163379249065795

/-! ## A276136.P6855359346931130749

`filter[A369329(n+2), A340371(#)]`
-/

namespace A276136.P6855359346931130749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369329 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A276136.P6855359346931130749

/-! ## A276136.P9134242611009539954

`∩[A038550(n+1), A369329(n+1)]`
-/

namespace A276136.P9134242611009539954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276136.P9134242611009539954

/-! ## A276136.P9901114273147521172

`∩[A273401(n+1), A369329(n+1)]`
-/

namespace A276136.P9901114273147521172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276136.P9901114273147521172

/-!
# A276137: Numbers without the decimal digits 2, 4, 6 and 8.

The programs for A276137, there is no canonical definition to state claims against.
-/

/-! ## A276137.P878227411492965529

`record[A107128(n)]`
-/

namespace A276137.P878227411492965529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276137.P878227411492965529

/-! ## A276137.P4006386458277321444

`eq[0, A001613(n)]`
-/

namespace A276137.P4006386458277321444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276137.P4006386458277321444

/-! ## A276137.P15105674882626120180

`lt[A001613(10*n), 1]`
-/

namespace A276137.P15105674882626120180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (10 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276137.P15105674882626120180

/-! ## A276137.P14916195244623726628

`lt[0, A051801(n)%2]`
-/

namespace A276137.P14916195244623726628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051801 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276137.P14916195244623726628

/-! ## A276137.P11772374935658880518

`lt[∑{digits}[n, A171181(#)], 1]`
-/

namespace A276137.P11772374935658880518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A171181 x).sum

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A276137.P11772374935658880518

/-! ## A276137.P13654186612232407311

`eq[0, A071648(10*n+1)]`
-/

namespace A276137.P13654186612232407311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276137.P13654186612232407311

/-! ## A276137.P8756666863440680344

`eq[10*n, A107128(10*n)]`
-/

namespace A276137.P8756666863440680344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276137.P8756666863440680344

/-! ## A276137.P4661041812379424074

`eq[1, A000035(A051801(n))]`
-/

namespace A276137.P4661041812379424074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276137.P4661041812379424074

/-! ## A276137.P12083882659225955808

`eq[A106747(n), A107130(n)]`
-/

namespace A276137.P12083882659225955808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276137.P12083882659225955808

/-! ## A276137.P15555383189923068581

`eq[A055640(n), A196564(n)]`
-/

namespace A276137.P15555383189923068581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276137.P15555383189923068581

/-!
# A276138: Numbers without the decimal digits 1, 3, 5 and 7.

The programs for A276138, there is no canonical definition to state claims against.
-/

/-! ## A276138.P1175431574832375045

`∪[A014263(n+1), A098949(n+1)]`
-/

namespace A276138.P1175431574832375045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276138.P1175431574832375045

/-! ## A276138.P13371453905848499525

`A035043(A084984(n+1))`
-/

namespace A276138.P13371453905848499525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A084984 (n + 1)).toNat

end

end A276138.P13371453905848499525

/-! ## A276138.P17457487456305722602

`eq[0, A001613(A048379(n))]`
-/

namespace A276138.P17457487456305722602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A048379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276138.P17457487456305722602

/-! ## A276138.P16419786933052928307

`eq[0, A001613(A061601(n))]`
-/

namespace A276138.P16419786933052928307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276138.P16419786933052928307

/-! ## A276138.P16618913621176466370

`eq[0, A193238(A035043(n))]`
-/

namespace A276138.P16618913621176466370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276138.P16618913621176466370

/-! ## A276138.P5873825245551352875

`eq[A001613(n), A004184(n)]`
-/

namespace A276138.P5873825245551352875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276138.P5873825245551352875

/-! ## A276138.P4560018194052854540

`eq[A059629(n), A107130(n)]`
-/

namespace A276138.P4560018194052854540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276138.P4560018194052854540

/-! ## A276138.P17016265499448737211

`eq[A102683(n), A196564(n)]`
-/

namespace A276138.P17016265499448737211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276138.P17016265499448737211

/-! ## A276138.P1818370851696072627

`eq[n, A222237(A222222(n))]`
-/

namespace A276138.P1818370851696072627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276138.P1818370851696072627

/-! ## A276138.P6404211000812486929

`eq[n, A222235(A222224(n))]`
-/

namespace A276138.P6404211000812486929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276138.P6404211000812486929

/-! ## A276138.P16586278926986596521

`eq[n, A222246(A222220(n))]`
-/

namespace A276138.P16586278926986596521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276138.P16586278926986596521

/-! ## A276138.P14433372954665662980

`record[A222254(n)+A103181(n)]`
-/

namespace A276138.P14433372954665662980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n + A103181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276138.P14433372954665662980

/-! ## A276138.P14985994081025781136

`A035043(eq[n, A222246(A035044(n))])`
-/

namespace A276138.P14985994081025781136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A035044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276138.P14985994081025781136

/-! ## A276138.P2485121585537175152

`eq[A055642(n), A276729(A035043(n))]`
-/

namespace A276138.P2485121585537175152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276138.P2485121585537175152

/-! ## A276138.P768427878337771324

`A035043(eq[n, A222237(A222229(n))])`
-/

namespace A276138.P768427878337771324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222229 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276138.P768427878337771324

/-! ## A276138.P11268219345468408373

`A035043(eq[n, A222235(A222231(n))])`
-/

namespace A276138.P11268219345468408373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222231 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276138.P11268219345468408373

/-! ## A276138.P13590066735668360765

`record[A222249(n)+A103181(A222251(n))]`
-/

namespace A276138.P13590066735668360765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n + A103181 (A222251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276138.P13590066735668360765

/-! ## A276138.P8976902224710719548

`record[A222251(A222250(n))+A103181(n)]`
-/

namespace A276138.P8976902224710719548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222250 n).toNat + A103181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276138.P8976902224710719548

/-! ## A276138.P17296456852091641639

`record[A103181(A052421(n+1))+A007095(n)]`
-/

namespace A276138.P17296456852091641639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A052421 (n + 1)).toNat + A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276138.P17296456852091641639

/-! ## A276138.P14856072599550897032

`record[A132387(A052419(n+1))+A007095(n)]`
-/

namespace A276138.P14856072599550897032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132387 (A052419 (n + 1)).toNat + A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276138.P14856072599550897032

/-!
# A276139: Series expansion of (1 + 2x + 4x^2)/(1 - 3x - 5x^2).

The programs for A276139, the canonical program `A276139.P1386701255204852419` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276139 has offset 0).

The definition of A276139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276139.P1386701255204852419

`3*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=5, a(2)=24`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276139

/-- `3*a(n-1)+5*a(n-2)` -/
def P1386701255204852419.Spec : Prop :=
  ∀ n, (P1386701255204852419.a n : ℤ) = A276139 n

theorem P1386701255204852419.correct : P1386701255204852419.Spec := by
  intro n
  simp only [A276139]

end A276139

/-! ## A276139.P9564882556486776072

`ogf((1+2x+4x^2)/(1-3x-5x^2))`
-/

namespace A276139.P9564882556486776072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4] [1, -3, -5] n

end

end A276139.P9564882556486776072

namespace A276139

/-- `ogf((1+2x+4x^2)/(1-3x-5x^2))` -/
def P9564882556486776072.Spec : Prop :=
  ∀ n, P9564882556486776072.a n = A276139 n

end A276139

/-! ## A276139.P2854342904279890594

`A064455(A180140(n))-A015523(n)`
-/

namespace A276139.P2854342904279890594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A180140 n).toNat - A015523 n

end

end A276139.P2854342904279890594

namespace A276139

/-- `A064455(A180140(n))-A015523(n)` -/
def P2854342904279890594.Spec : Prop :=
  ∀ n, P2854342904279890594.a n = A276139 n

end A276139

/-!
# A276141: a(1)=2; thereafter a(n) is the least prime > a(n-1) such that 2*a(n-1)+a(n) is a prime.

The programs for A276141, there is no canonical definition to state claims against.
-/

/-! ## A276141.P9636548856385520338

`A114265(A000720(a(n-1)))` with `a(0)=2`
-/

namespace A276141.P9636548856385520338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A114265 (A000720 (a (n - 1)).toNat).toNat

end

end A276141.P9636548856385520338

/-! ## A276141.P2485589283846970720

`A114265(A056239(a(n-1)))` with `a(0)=2`
-/

namespace A276141.P2485589283846970720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A114265 (A056239 (a (n - 1)).toNat).toNat

end

end A276141.P2485589283846970720

/-! ## A276141.P2709327517883876971

`A114265(A318283(a(n-1)))` with `a(0)=2`
-/

namespace A276141.P2709327517883876971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A114265 (A318283 (a (n - 1)).toNat).toNat

end

end A276141.P2709327517883876971

/-! ## A276141.P3695910879981105731

`A114265(A363487(a(n-1)))` with `a(0)=2`
-/

namespace A276141.P3695910879981105731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A114265 (A363487 (a (n - 1)).toNat).toNat

end

end A276141.P3695910879981105731

/-! ## A276141.P536903759359032716

`A000040(A328134(n+1)%A157617(n+2))`
-/

namespace A276141.P536903759359032716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A328134 (n + 1)) (A157617 (n + 2))).toNat

end

end A276141.P536903759359032716

/-!
# A276142: Solutions to x/SOD(x) = y, where x and y are palindromes, a(n)=x.

The programs for A276142, there is no canonical definition to state claims against.
-/

/-! ## A276142.P18274520476539711110

`A276143(n+1)*A276144(n+1)`
-/

namespace A276142.P18274520476539711110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276143 (n + 1) * A276144 (n + 1)

end

end A276142.P18274520476539711110

/-! ## A276142.P16826591004774347325

`lcm(A276143(A187829(n+1)), A276144(n+1))`
-/

namespace A276142.P16826591004774347325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A276143 (A187829 (n + 1)).toNat) (A276144 (n + 1))

end

end A276142.P16826591004774347325

/-! ## A276142.P7618276523262597621

`A276144(n+1)*A341935(A043562(n+1)*A306273(n+2))`
-/

namespace A276142.P7618276523262597621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276144 (n + 1) * A341935 (A043562 (n + 1) * A306273 (n + 2)).toNat

end

end A276142.P7618276523262597621

/-!
# A276143: Solutions to x/SOD(x) = y, where x and y are palindromes, a(n)=SOD(x).

The programs for A276143, there is no canonical definition to state claims against.
-/

/-! ## A276143.P9883814123771751411

`∑{digits}[A276142(n+1), #]`
-/

namespace A276143.P9883814123771751411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A276143.P9883814123771751411

/-! ## A276143.P9279935048004238791

`A276142(n+1)/A276144(n+1)`
-/

namespace A276143.P9279935048004238791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276142 (n + 1) : ℚ) / (A276144 (n + 1) : ℚ)

end

end A276143.P9279935048004238791

/-! ## A276143.P8430979733638522909

`A276142(n+1)%(81%A076426(n+1))`
-/

namespace A276143.P8430979733638522909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276142 (n + 1)) (Int.tmod 81 (A076426 (n + 1)))

end

end A276143.P8430979733638522909

/-! ## A276143.P13504840757537206518

`A276142(n+1)%A040703(A016958(n))`
-/

namespace A276143.P13504840757537206518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276142 (n + 1)) (A040703 (A016958 n).toNat)

end

end A276143.P13504840757537206518

/-! ## A276143.P12094865463972324616

`A178859(A034710(n+1)%A051634(n+1))`
-/

namespace A276143.P12094865463972324616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178859 (Int.tmod (A034710 (n + 1)) (A051634 (n + 1))).toNat

end

end A276143.P12094865463972324616

/-!
# A276144: Solutions y to x/SOD(x) = y, where x and y are palindromes.

The programs for A276144, there is no canonical definition to state claims against.
-/

/-! ## A276144.P16058742973911097937

`A276142(n+1)/A276143(n+1)`
-/

namespace A276144.P16058742973911097937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276142 (n + 1) : ℚ) / (A276143 (n + 1) : ℚ)

end

end A276144.P16058742973911097937

/-! ## A276144.P13354294519988742414

`A276142(n+1)/∑{digits}[A276142(n+1), A004086(#)]`
-/

namespace A276144.P13354294519988742414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276142 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276142 (n + 1) : ℚ) / ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004086 x).sum : ℤ) : ℚ)

end

end A276144.P13354294519988742414

/-! ## A276144.P9775829096286081742

`A276142(n+1)/∑{digits}[A276142(n+1), A007953(#)]`
-/

namespace A276144.P9775829096286081742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276142 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276142 (n + 1) : ℚ) / ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007953 x).sum : ℤ) : ℚ)

end

end A276144.P9775829096286081742

/-! ## A276144.P13755316610048036765

`A276142(n+1)/A276142(n+1)%(81%A076426(n+1))`
-/

namespace A276144.P13755316610048036765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276142 (n + 1) : ℚ) / (Int.tmod (A276142 (n + 1)) (Int.tmod 81 (A076426 (n + 1))) : ℚ)

end

end A276144.P13755316610048036765

/-! ## A276144.P457512015547943093

`A276142(n+1)/A276142(n+1)%A040703(A016958(n))`
-/

namespace A276144.P457512015547943093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276142 (n + 1) : ℚ) / (Int.tmod (A276142 (n + 1)) (A040703 (A016958 n).toNat) : ℚ)

end

end A276144.P457512015547943093

/-!
# A276146: a(n) = A034968(A225901(n)).

The programs for A276146, there is no canonical definition to state claims against.
-/

/-! ## A276146.P18391453650963458007

`A034968(A225901(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276146.P18391453650963458007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A225901 n).toNat

end

end A276146.P18391453650963458007

/-! ## A276146.P5363813494993227896

`A034968(A255411(n)-(A153880(n)+n))`
-/

namespace A276146.P5363813494993227896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A276146.P5363813494993227896

/-! ## A276146.P11214190472716366856

`A034968(A255411(n)-n-A153880(n))`
-/

namespace A276146.P11214190472716366856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A276146.P11214190472716366856

/-! ## A276146.P11863084843571971507

`∑{digits}[A007623(A275837(A273668(n))), #]`
-/

namespace A276146.P11863084843571971507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A275837 (A273668 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A276146.P11863084843571971507

/-! ## A276146.P15817546650018849201

`∑{digits}[A007623(A275836(A273667(n))), #]`
-/

namespace A276146.P15817546650018849201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A275836 (A273667 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A276146.P15817546650018849201

/-! ## A276146.P473837762153732004

`A056239(A275734(n))`
-/

namespace A276146.P473837762153732004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A275734 n).toNat

end

end A276146.P473837762153732004

/-!
# A276147: a(2n+1) = 2n+1, a(2n) = A053669(2n) * a(A111701(2n)).

The programs for A276147, there is no canonical definition to state claims against.
-/

/-! ## A276147.P3863247289175613570

`A003961(A329900(n+1))*A328478(n+1)`
-/

namespace A276147.P3863247289175613570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A329900 (n + 1)).toNat * A328478 (n + 1)

end

end A276147.P3863247289175613570

/-! ## A276147.P9299427625868029997

`A328478(n+1)*A348994(A328479(n+1))`
-/

namespace A276147.P9299427625868029997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (n + 1) * A348994 (A328479 (n + 1)).toNat

end

end A276147.P9299427625868029997

/-! ## A276147.P12842065452154100241

`(n+1)/A328479(n+1)*A003961(A329900(n+1))`
-/

namespace A276147.P12842065452154100241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A328479 (n + 1) : ℚ) * (A003961 (A329900 (n + 1)).toNat : ℚ)

end

end A276147.P12842065452154100241

/-! ## A276147.P3353881834390550216

`A328478(n+1)/A348994(A328478(n+1))*A348994(n+1)`
-/

namespace A276147.P3353881834390550216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328478 (n + 1) : ℚ) / (A348994 (A328478 (n + 1)).toNat : ℚ) * (A348994 (n + 1) : ℚ)

end

end A276147.P3353881834390550216

/-! ## A276147.P5469007751954446600

`(n+1)*A328479(n+1)^A323202(n)*A003961(A329900(n+1))`
-/

namespace A276147.P5469007751954446600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A328479 (n + 1) : ℚ) ^ (A323202 n : ℤ) * (A003961 (A329900 (n + 1)).toNat : ℚ)

end

end A276147.P5469007751954446600

/-! ## A276147.P18179254797925477054

`A093411(A111701(n+1)²)^(1/2)*A003961(A329900(n+1))`
-/

namespace A276147.P18179254797925477054
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A093411 (A111701 (n + 1) ^ 2).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ) * (A003961 (A329900 (n + 1)).toNat : ℝ)

end

end A276147.P18179254797925477054

/-! ## A276147.P15431434098963447863

`A093411(A111701(n+1)²)^(1/2)*A348994(A328479(n+1))`
-/

namespace A276147.P15431434098963447863
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A093411 (A111701 (n + 1) ^ 2).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ) * (A348994 (A328479 (n + 1)).toNat : ℝ)

end

end A276147.P15431434098963447863

/-! ## A276147.P17929929964822340728

`A328478(n+1)*A329900(A283980(n+1))`
-/

namespace A276147.P17929929964822340728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (n + 1) * A329900 (A283980 (n + 1)).toNat

end

end A276147.P17929929964822340728

/-! ## A276147.P17177200992043323756

`A276148((n+1)²)/A276148(n+1)`
-/

namespace A276147.P17177200992043323756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276148 ((n + 1) ^ 2) : ℚ) / (A276148 (n + 1) : ℚ)

end

end A276147.P17177200992043323756

/-!
# A276148: Even bisection of A276147.

The programs for A276148, there is no canonical definition to state claims against.
-/

/-! ## A276148.P6264353363301958697

`A276147(2*(n+1))`
-/

namespace A276148.P6264353363301958697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (2 * (n + 1))

end

end A276148.P6264353363301958697

/-! ## A276148.P17716227348670550473

`A328478(2*(n+1))*A348994(A328479(2*(n+1)))`
-/

namespace A276148.P17716227348670550473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (2 * (n + 1)) * A348994 (A328479 (2 * (n + 1))).toNat

end

end A276148.P17716227348670550473

/-! ## A276148.P3204556826856205548

`A003961(A329900(2*(n+1)))*A328478(2*(n+1))`
-/

namespace A276148.P3204556826856205548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A329900 (2 * (n + 1))).toNat * A328478 (2 * (n + 1))

end

end A276148.P3204556826856205548

/-! ## A276148.P1339336058707458240

`or(1, A276147(Δ[A002378(n)]))`
-/

namespace A276148.P1339336058707458240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276147 (f1 (n + 1) - f1 n).toNat)

end

end A276148.P1339336058707458240

/-! ## A276148.P9061429248450320571

`or(1, A276147(A004277(n+1)))`
-/

namespace A276148.P9061429248450320571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276147 (A004277 (n + 1)).toNat)

end

end A276148.P9061429248450320571

/-! ## A276148.P13619818503289098032

`or(1, A276147(A051755(n+2)))`
-/

namespace A276148.P13619818503289098032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276147 (A051755 (n + 2)).toNat)

end

end A276148.P13619818503289098032

/-! ## A276148.P18320276810929042370

`A276147(A051755(n+2))+A000007(n+1)`
-/

namespace A276148.P18320276810929042370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (A051755 (n + 2)).toNat + A000007 (n + 1)

end

end A276148.P18320276810929042370

/-! ## A276148.P16529649338895045462

`A276147(A051755(n+2))%A014575(n+1)`
-/

namespace A276148.P16529649338895045462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276147 (A051755 (n + 2)).toNat) (A014575 (n + 1))

end

end A276148.P16529649338895045462

/-! ## A276148.P446635008706955755

`lcm(A153881(n+1), A276147(A051755(n+2)))`
-/

namespace A276148.P446635008706955755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A276147 (A051755 (n + 2)).toNat)

end

end A276148.P446635008706955755

/-! ## A276148.P14872166930320201670

`∑{d}[A276147(A051755(n+2)), A000010(#)]`
-/

namespace A276148.P14872166930320201670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (A051755 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A276148.P14872166930320201670

/-! ## A276148.P12667101252978897357

`A111701(A276147(n+2+n))`
-/

namespace A276148.P12667101252978897357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A276147 (n + 2 + n)).toNat

end

end A276148.P12667101252978897357

/-!
# A276149: a(0) = 0; for n >= 1, a(n) = A048764(n) * (1+(A084558(n)-A099563(n))).

The programs for A276149, there is no canonical definition to state claims against.
-/

/-! ## A276149.P13826311441886170341

`A225901(n-n%∑[char[n!]]!)`
-/

namespace A276149.P13826311441886170341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (n - n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A276149.P13826311441886170341

/-! ## A276149.P8537556491950621171

`A257686(A225901(n))`
-/

namespace A276149.P8537556491950621171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 (A225901 n).toNat

end

end A276149.P8537556491950621171

/-! ## A276149.P4882566351761841739

`A275957(A257686(n))`
-/

namespace A276149.P4882566351761841739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 (A257686 n).toNat

end

end A276149.P4882566351761841739

/-! ## A276149.P4429828455557182128

`A225901(n-A257687(n))`
-/

namespace A276149.P4429828455557182128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 ((n : ℤ) - A257687 n).toNat

end

end A276149.P4429828455557182128

/-! ## A276149.P15184736400065421411

`A275958(2*A257686(n)-A257686(n))`
-/

namespace A276149.P15184736400065421411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275958 (2 * A257686 n - A257686 n).toNat

end

end A276149.P15184736400065421411

/-! ## A276149.P7249830257178915350

`A257687(A257682(A257686(A255411(n))))`
-/

namespace A276149.P7249830257178915350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 (A257682 (A257686 (A255411 n).toNat).toNat).toNat

end

end A276149.P7249830257178915350

/-! ## A276149.P18160856216141597578

`A257687(A257686(A255411(n))-A257686(n))`
-/

namespace A276149.P18160856216141597578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 (A257686 (A255411 n).toNat - A257686 n).toNat

end

end A276149.P18160856216141597578

/-!
# A276150: Sum of digits when n is written in primorial base (A049345); minimal number of primorials (A002110) that add to n.

The programs for A276150, the canonical program `A276150.P11723566750596417578` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276150 has offset 0).

The definition of A276150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276150.P9087265947539389637

`1+a(A276151(n))` with `a(0)=0`
-/

namespace A276150.P9087265947539389637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A276151 n).toNat

end

end A276150.P9087265947539389637

namespace A276150

/-- `1+a(A276151(n))` -/
def P9087265947539389637.Spec : Prop :=
  ∀ n, (P9087265947539389637.a n : ℤ) = A276150 n

end A276150

/-! ## A276150.P11723566750596417578

`1+a(n-A260188(n))` with `a(0)=0`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276150

/-- `1+a(n-A260188(n))` -/
def P11723566750596417578.Spec : Prop :=
  ∀ n, (P11723566750596417578.a n : ℤ) = A276150 n

theorem P11723566750596417578.correct : P11723566750596417578.Spec := by
  intro n
  simp only [A276150]

end A276150

/-! ## A276150.P18411451884420054119

`A373606(n)+A373607(n)`
-/

namespace A276150.P18411451884420054119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373606 n + A373607 n

end

end A276150.P18411451884420054119

namespace A276150

/-- `A373606(n)+A373607(n)` -/
def P18411451884420054119.Spec : Prop :=
  ∀ n, P18411451884420054119.a n = A276150 n

end A276150

/-! ## A276150.P3908264257783235875

`A000120(A277022(n))`
-/

namespace A276150.P3908264257783235875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A277022 n).toNat

end

end A276150.P3908264257783235875

namespace A276150

/-- `A000120(A277022(n))` -/
def P3908264257783235875.Spec : Prop :=
  ∀ n, P3908264257783235875.a n = A276150 n

end A276150

/-! ## A276150.P4196324852409818740

`A001222(A278226(n))`
-/

namespace A276150.P4196324852409818740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278226 n).toNat

end

end A276150.P4196324852409818740

namespace A276150

/-- `A001222(A278226(n))` -/
def P4196324852409818740.Spec : Prop :=
  ∀ n, P4196324852409818740.a n = A276150 n

end A276150

/-! ## A276150.P7141132610100253131

`A001222(A276086(n))`
-/

namespace A276150.P7141132610100253131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276086 n).toNat

end

end A276150.P7141132610100253131

namespace A276150

/-- `A001222(A276086(n))` -/
def P7141132610100253131.Spec : Prop :=
  ∀ n, P7141132610100253131.a n = A276150 n

end A276150

/-! ## A276150.P7569246993164510108

`A328630(A328626(n))`
-/

namespace A276150.P7569246993164510108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328630 (A328626 n).toNat

end

end A276150.P7569246993164510108

namespace A276150

/-- `A328630(A328626(n))` -/
def P7569246993164510108.Spec : Prop :=
  ∀ n, P7569246993164510108.a n = A276150 n

end A276150

/-! ## A276150.P9405816637449773572

`A373605(n)+2*A373607(n)`
-/

namespace A276150.P9405816637449773572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373605 n + 2 * A373607 n

end

end A276150.P9405816637449773572

namespace A276150

/-- `A373605(n)+2*A373607(n)` -/
def P9405816637449773572.Spec : Prop :=
  ∀ n, P9405816637449773572.a n = A276150 n

end A276150

/-! ## A276150.P10921944774736384934

`2*A373606(n)-A373605(n)`
-/

namespace A276150.P10921944774736384934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A373606 n - A373605 n

end

end A276150.P10921944774736384934

namespace A276150

/-- `2*A373606(n)-A373605(n)` -/
def P10921944774736384934.Spec : Prop :=
  ∀ n, P10921944774736384934.a n = A276150 n

end A276150

/-! ## A276150.P8211707912818751590

`∑{digits}[A049345(n), #]`
-/

namespace A276150.P8211707912818751590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A276150.P8211707912818751590

namespace A276150

/-- `∑{digits}[A049345(n), #]` -/
def P8211707912818751590.Spec : Prop :=
  ∀ n, (P8211707912818751590.a n : ℤ) = A276150 n

end A276150

/-! ## A276150.P12778425774794266649

`A056239(A328835(n))`
-/

namespace A276150.P12778425774794266649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A328835 n).toNat

end

end A276150.P12778425774794266649

namespace A276150

/-- `A056239(A328835(n))` -/
def P12778425774794266649.Spec : Prop :=
  ∀ n, P12778425774794266649.a n = A276150 n

end A276150

/-! ## A276150.P10740550798761036295

`A373606(A276154(n))+A373606(n)`
-/

namespace A276150.P10740550798761036295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373606 (A276154 n).toNat + A373606 n

end

end A276150.P10740550798761036295

namespace A276150

/-- `A373606(A276154(n))+A373606(n)` -/
def P10740550798761036295.Spec : Prop :=
  ∀ n, P10740550798761036295.a n = A276150 n

end A276150

/-!
# A276151: n minus the greatest primorial number (A002110) which divides n: a(n) = n - A053589(n).

The programs for A276151, there is no canonical definition to state claims against.
-/

/-! ## A276151.P1137095965937931880

`n+1-A053589(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276151.P1137095965937931880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053589 (n + 1)

end

end A276151.P1137095965937931880

/-! ## A276151.P4916521327157656617

`n-floor(n/A111701(n+1))`
-/

namespace A276151.P4916521327157656617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A111701 (n + 1) : ℚ)⌋

end

end A276151.P4916521327157656617

/-! ## A276151.P15369840442589804089

`(A114562(n+1)-1)%(n+2)`
-/

namespace A276151.P15369840442589804089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114562 (n + 1) - 1) (n + 2 : ℤ)

end

end A276151.P15369840442589804089

/-! ## A276151.P6895795867125702309

`n-A343048(1-Δ[A276150(n)])`
-/

namespace A276151.P6895795867125702309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343048 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A276151.P6895795867125702309

/-! ## A276151.P15123817096308908622

`2-A141310(A053590(n+1))+n`
-/

namespace A276151.P15123817096308908622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A141310 (A053590 (n + 1)).toNat + (n : ℤ)

end

end A276151.P15123817096308908622

/-! ## A276151.P228289798102814415

`abs(A109613(n)%A053590(n+1)-n)`
-/

namespace A276151.P228289798102814415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A109613 n) (A053590 (n + 1)) - (n : ℤ)|

end

end A276151.P228289798102814415

/-! ## A276151.P4449509846557748485

`n+2-A020639(A053590(n+1)+1)`
-/

namespace A276151.P4449509846557748485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A020639 (A053590 (n + 1) + 1).toNat

end

end A276151.P4449509846557748485

/-! ## A276151.P2066978310173724997

`1-A340346(A007947(n+1))+n`
-/

namespace A276151.P2066978310173724997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340346 (A007947 (n + 1)).toNat + (n : ℤ)

end

end A276151.P2066978310173724997

/-! ## A276151.P16649887470014278445

`A324351(2*(n+1)²)`
-/

namespace A276151.P16649887470014278445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324351 (2 * (n + 1) ^ 2)

end

end A276151.P16649887470014278445

/-! ## A276151.P306315155159685142

`A372576(A324895(n+1))`
-/

namespace A276151.P306315155159685142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A324895 (n + 1)).toNat

end

end A276151.P306315155159685142

/-!
# A276152: a(n) = {smallest prime not dividing n} times {greatest primorial number which divides n} = A053669(n) * A053589(n).

The programs for A276152, there is no canonical definition to state claims against.
-/

/-! ## A276152.P4173014240170867886

`A053589(n+1)*A053669(n+1)`
-/

namespace A276152.P4173014240170867886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (n + 1) * A053669 (n + 1)

end

end A276152.P4173014240170867886

/-! ## A276152.P14487659999332578979

`A053669(n+1)*A053589(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276152.P14487659999332578979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) * A053589 (n + 1)

end

end A276152.P14487659999332578979

/-!
# A276153: 

The programs for A276153, there is no canonical definition to state claims against.
-/

/-! ## A276153.P18223462363843617713

`A090996(A277022(n))`
-/

namespace A276153.P18223462363843617713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A277022 n).toNat

end

end A276153.P18223462363843617713

/-!
# A276154: a(n) = Shift primorial base representation (A049345) of n left by one digit (append one zero to the right, then convert back to decimal).

The programs for A276154, there is no canonical definition to state claims against.
-/

/-! ## A276154.P7327328096898233322

`A276152(n)+a(A276151(n))` with `a(0)=0`
-/

namespace A276154.P7327328096898233322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276152 n + a (A276151 n).toNat

end

end A276154.P7327328096898233322

/-! ## A276154.P6106701504413325785

`lt[A329048(n), (n+3)/2]`
-/

namespace A276154.P6106701504413325785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329048 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A276154.P6106701504413325785

/-! ## A276154.P16767525373871862281

`lt[A154115(A329048(n)), n+1]`
-/

namespace A276154.P16767525373871862281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (A329048 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276154.P16767525373871862281

/-! ## A276154.P11890574229537799053

`lt[A270296(A329048(n)), A204822(n+1)]`
-/

namespace A276154.P11890574229537799053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (A329048 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276154.P11890574229537799053

/-! ## A276154.P3394466037109643703

`A277021(2*A277022(n))`
-/

namespace A276154.P3394466037109643703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (2 * A277022 n).toNat

end

end A276154.P3394466037109643703

/-! ## A276154.P4662655652670849105

`A277021(A277022(n)+A277022(n))`
-/

namespace A276154.P4662655652670849105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A277022 n + A277022 n).toNat

end

end A276154.P4662655652670849105

/-!
# A276155: Complement of A276154; numbers that cannot be obtained by shifting left the primorial base representation (A049345) of some number.

The programs for A276155, there is no canonical definition to state claims against.
-/

/-! ## A276155.P7772358086792588063

`comp[A276154(n)]`
-/

namespace A276155.P7772358086792588063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276154 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276155.P7772358086792588063

/-! ## A276155.P9667345408827538160

`lt[n+2, 2*A329048(n)]`
-/

namespace A276155.P9667345408827538160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276155.P9667345408827538160

/-! ## A276155.P4229878215135008428

`∑[char[A276154(n+1)-(n+1)]+1]`
-/

namespace A276155.P4229878215135008428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276154 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276155.P4229878215135008428

/-! ## A276155.P13992093608113893376

`lt[n, A154115(A329048(n))]`
-/

namespace A276155.P13992093608113893376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (A329048 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276155.P13992093608113893376

/-! ## A276155.P937087225846590725

`lt[A173517(A329048(n+1)), A329048(n)]`
-/

namespace A276155.P937087225846590725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 (A329048 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276155.P937087225846590725

/-! ## A276155.P5112153554917048924

`lt[A008619(n), A329048(n)]`
-/

namespace A276155.P5112153554917048924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276155.P5112153554917048924

/-! ## A276155.P18123501612372452354

`eq[A154958(n)%A329048(n), A154958(n)]`
-/

namespace A276155.P18123501612372452354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154958 n) (A329048 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276155.P18123501612372452354

/-! ## A276155.P12134798516760110911

`lt[A158416(n), A329048(n)]`
-/

namespace A276155.P12134798516760110911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276155.P12134798516760110911

/-! ## A276155.P9664381229415159532

`lt[A242112(n), A329048(n)]`
-/

namespace A276155.P9664381229415159532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276155.P9664381229415159532

/-! ## A276155.P6272407750856273869

`lt[A204822(n+1), A270296(A329048(n))]`
-/

namespace A276155.P6272407750856273869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (A329048 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276155.P6272407750856273869

/-! ## A276155.P12129299985935902239

`eq[A028242(n)%A329048(n), A028242(n)]`
-/

namespace A276155.P12129299985935902239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028242 n) (A329048 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276155.P12129299985935902239

/-! ## A276155.P4989371603979818711

`lt[A025487(n+1), A000292(A329048(n))]`
-/

namespace A276155.P4989371603979818711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A329048 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276155.P4989371603979818711

/-!
# A276156: Numbers obtained by reinterpreting base-2 representation of n in primorial base: a(0) = 0, a(2n) = A276154(a(n)), a(2n+1) = 1 + A276154(a(n)).

The programs for A276156, there is no canonical definition to state claims against.
-/

/-! ## A276156.P1486563883830073968

`A276085(A019565(n))`
-/

namespace A276156.P1486563883830073968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A019565 n).toNat

end

end A276156.P1486563883830073968

/-! ## A276156.P7458109286258483231

`A328473(A109613(n))+A000035(n)`
-/

namespace A276156.P7458109286258483231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328473 (A109613 n).toNat + A000035 n

end

end A276156.P7458109286258483231

/-! ## A276156.P12517107530460981792

`A328461(A109613(n))-A059841(n)`
-/

namespace A276156.P12517107530460981792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A109613 n).toNat - A059841 n

end

end A276156.P12517107530460981792

/-! ## A276156.P8694289285949758144

`A283985(n)-A283985(A004526(n))`
-/

namespace A276156.P8694289285949758144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283985 n - A283985 (A004526 n).toNat

end

end A276156.P8694289285949758144

/-! ## A276156.P7239353030240785757

`A328461(A059841(n)+n)-A059841(n)`
-/

namespace A276156.P7239353030240785757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A059841 n + (n : ℤ)).toNat - A059841 n

end

end A276156.P7239353030240785757

/-! ## A276156.P15489082957049880313

`A328473(A109613(n))+A035531(A006519(n+1))`
-/

namespace A276156.P15489082957049880313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328473 (A109613 n).toNat + A035531 (A006519 (n + 1)).toNat

end

end A276156.P15489082957049880313

/-! ## A276156.P399880809005769579

`record[A328461(A004525(n+1))-(n+1)%2]`
-/

namespace A276156.P399880809005769579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A004525 (n + 1)).toNat - (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276156.P399880809005769579

/-! ## A276156.P1995258613964154221

`record[A328461(A008621(n))-A059841(n)]`
-/

namespace A276156.P1995258613964154221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (A008621 n).toNat - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276156.P1995258613964154221

/-! ## A276156.P11935551652146085125

`∑{p}[A019565(n), A083720(#)]`
-/

namespace A276156.P11935551652146085125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A083720 p

end

end A276156.P11935551652146085125

/-! ## A276156.P8514577791056633788

`∑{p}[A019565(n), A334870(#)]`
-/

namespace A276156.P8514577791056633788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A334870 p

end

end A276156.P8514577791056633788

/-! ## A276156.P17967372900405169297

`A277021(A048678(n))`
-/

namespace A276156.P17967372900405169297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A048678 n).toNat

end

end A276156.P17967372900405169297

/-! ## A276156.P5197249910383081569

`A277021(A124108(n)/2)`
-/

namespace A276156.P5197249910383081569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A276156.P5197249910383081569

/-! ## A276156.P5409891332396062878

`eq[0, A328615(n)]`
-/

namespace A276156.P5409891332396062878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276156.P5409891332396062878

/-! ## A276156.P17364372039650628866

`eq[0, A328828(n)]`
-/

namespace A276156.P17364372039650628866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276156.P17364372039650628866

/-! ## A276156.P4183100515701423194

`eq[1, A328581(n)]`
-/

namespace A276156.P4183100515701423194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276156.P4183100515701423194

/-! ## A276156.P15706153728528025862

`eq[1, A328582(n)]`
-/

namespace A276156.P15706153728528025862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276156.P15706153728528025862

/-! ## A276156.P4104297354763761979

`eq[1, A381032(n)]`
-/

namespace A276156.P4104297354763761979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276156.P4104297354763761979

/-! ## A276156.P9827764704298062477

`lt[A328576(n), 3]`
-/

namespace A276156.P9827764704298062477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328576 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276156.P9827764704298062477

/-! ## A276156.P2431804077170290417

`lt[A328577(n), 3]`
-/

namespace A276156.P2431804077170290417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328577 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276156.P2431804077170290417

/-! ## A276156.P6658358604518966589

`A351576(A059590(n))`
-/

namespace A276156.P6658358604518966589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351576 (A059590 n).toNat

end

end A276156.P6658358604518966589

/-!
# A276157: a(n) = {greatest primorial less than or equal to n} divided by {greatest primorial number which divides n} = A260188(n)/A053589(n).

The programs for A276157, there is no canonical definition to state claims against.
-/

/-! ## A276157.P11326540136525366586

`A260188(n+1)/A053589(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276157.P11326540136525366586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260188 (n + 1) : ℚ) / (A053589 (n + 1) : ℚ)

end

end A276157.P11326540136525366586

/-!
# A276158: Triangle read by rows: T(n,k) = 6*k*(n + 1 - k) for 0 < k <= n; for k = 0, T(n,0) = n + 1.

The programs for A276158, the canonical program `A276158.P15647600386181717088` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276158 has offset 0).

The definition of A276158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276158.P15647600386181717088

`A004736(n+1)*A008458(A002262(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276158

/-- `A004736(n+1)*A008458(A002262(n))` -/
def P15647600386181717088.Spec : Prop :=
  ∀ n, P15647600386181717088.a n = A276158 n

theorem P15647600386181717088.correct : P15647600386181717088.Spec := by
  intro n
  simp only [A276158]

end A276158

/-! ## A276158.P2098902800435823756

`(A025581(n)+1)*A008458(A002262(n))`
-/

namespace A276158.P2098902800435823756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A008458 (A002262 n).toNat

end

end A276158.P2098902800435823756

namespace A276158

/-- `(A025581(n)+1)*A008458(A002262(n))` -/
def P2098902800435823756.Spec : Prop :=
  ∀ n, P2098902800435823756.a n = A276158 n

end A276158

/-! ## A276158.P9826620366238679377

`sqrt(A055461(n+1))*A008458(A002262(n))`
-/

namespace A276158.P9826620366238679377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A008458 (A002262 n).toNat : ℝ)

end

end A276158.P9826620366238679377

namespace A276158

/-- `sqrt(A055461(n+1))*A008458(A002262(n))` -/
def P9826620366238679377.Spec : Prop :=
  ∀ n, P9826620366238679377.a n = (A276158 n : ℝ)

end A276158

/-! ## A276158.P2407141009456789774

`A004736(n+1)*A008458(log2(A059268(n)))`
-/

namespace A276158.P2407141009456789774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008458 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A276158.P2407141009456789774

namespace A276158

/-- `A004736(n+1)*A008458(log2(A059268(n)))` -/
def P2407141009456789774.Spec : Prop :=
  ∀ n, P2407141009456789774.a n = A276158 n

end A276158

/-! ## A276158.P9269217227501332279

`val(A043569(n+1), 2)*A008458(A002262(n))`
-/

namespace A276158.P9269217227501332279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2 : ℤ) * A008458 (A002262 n).toNat

end

end A276158.P9269217227501332279

namespace A276158

/-- `val(A043569(n+1), 2)*A008458(A002262(n))` -/
def P9269217227501332279.Spec : Prop :=
  ∀ n, P9269217227501332279.a n = A276158 n

end A276158

/-! ## A276158.P12727081687773867857

`A002260(A038722(n+1))*A008458(A002262(n))`
-/

namespace A276158.P12727081687773867857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat * A008458 (A002262 n).toNat

end

end A276158.P12727081687773867857

namespace A276158

/-- `A002260(A038722(n+1))*A008458(A002262(n))` -/
def P12727081687773867857.Spec : Prop :=
  ∀ n, P12727081687773867857.a n = A276158 n

end A276158

/-! ## A276158.P9626522268454900813

`A000005(A130321(n))*A008458(A002262(n))`
-/

namespace A276158.P9626522268454900813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A008458 (A002262 n).toNat

end

end A276158.P9626522268454900813

namespace A276158

/-- `A000005(A130321(n))*A008458(A002262(n))` -/
def P9626522268454900813.Spec : Prop :=
  ∀ n, P9626522268454900813.a n = A276158 n

end A276158

/-! ## A276158.P7459216519878198829

`A000005(A140303(n))*A008458(A002262(n))`
-/

namespace A276158.P7459216519878198829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140303 n).toNat * A008458 (A002262 n).toNat

end

end A276158.P7459216519878198829

namespace A276158

/-- `A000005(A140303(n))*A008458(A002262(n))` -/
def P7459216519878198829.Spec : Prop :=
  ∀ n, P7459216519878198829.a n = A276158 n

end A276158

/-!
# A276159: Convolution of nonzero octagonal numbers (A000567) with themselves.

The programs for A276159, the canonical program `A276159.P4807311013801435964` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276159 has offset 0).

The definition of A276159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276159.P4807311013801435964

`(n+1)*(n+2)*(n+3)*(9*n²+6*n+5)/30`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276159

/-- `(n+1)*(n+2)*(n+3)*(9*n²+6*n+5)/30` -/
def P4807311013801435964.Spec : Prop :=
  ∀ n, P4807311013801435964.a n = (A276159 n : ℚ)

end A276159

/-! ## A276159.P15918085813131448655

`A021003(n+1)-A000538(n)`
-/

namespace A276159.P15918085813131448655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (n + 1) - A000538 n

end

end A276159.P15918085813131448655

namespace A276159

/-- `A021003(n+1)-A000538(n)` -/
def P15918085813131448655.Spec : Prop :=
  ∀ n, P15918085813131448655.a n = A276159 n

end A276159

/-! ## A276159.P8234789428335537474

`A213556(n+1)-A027480(n)`
-/

namespace A276159.P8234789428335537474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) - A027480 n

end

end A276159.P8234789428335537474

namespace A276159

/-- `A213556(n+1)-A027480(n)` -/
def P8234789428335537474.Spec : Prop :=
  ∀ n, P8234789428335537474.a n = A276159 n

end A276159

/-! ## A276159.P13430751571321583938

`A271870(n)+n*A033488(n)`
-/

namespace A276159.P13430751571321583938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271870 n + (n : ℤ) * A033488 n

end

end A276159.P13430751571321583938

namespace A276159

/-- `A271870(n)+n*A033488(n)` -/
def P13430751571321583938.Spec : Prop :=
  ∀ n, P13430751571321583938.a n = A276159 n

end A276159

/-! ## A276159.P18421596533114075635

`A213556(n+1)-n*A000217(n+1)`
-/

namespace A276159.P18421596533114075635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) - (n : ℤ) * A000217 (n + 1)

end

end A276159.P18421596533114075635

namespace A276159

/-- `A213556(n+1)-n*A000217(n+1)` -/
def P18421596533114075635.Spec : Prop :=
  ∀ n, P18421596533114075635.a n = A276159 n

end A276159

/-! ## A276159.P2655936538008914220

`A101378(n+1)-∑[A091940(n+1)]`
-/

namespace A276159.P2655936538008914220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101378 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276159.P2655936538008914220

namespace A276159

/-- `A101378(n+1)-∑[A091940(n+1)]` -/
def P2655936538008914220.Spec : Prop :=
  ∀ n, P2655936538008914220.a n = A276159 n

end A276159

/-!
# A276160: A recurrence of order 3 : a(0)=a(1)=a(2)=1 ; a(n) = (a(n-1)^2 + a(n-2)^2 + a(n-1) + a(n-2) + 1)/a(n-3).

The programs for A276160, the canonical program `A276160.P13289117968051690051` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276160 has offset 0).

The definition of A276160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276160.P13289117968051690051

`7*a(n-1)*a(n-2)-a(n-3)-1` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276160

/-- `7*a(n-1)*a(n-2)-a(n-3)-1` -/
def P13289117968051690051.Spec : Prop :=
  ∀ n, P13289117968051690051.a n = A276160 n

theorem P13289117968051690051.correct : P13289117968051690051.Spec := by
  intro n
  simp only [A276160]

end A276160

/-! ## A276160.P5503435856267232863

`(a(n-1)²+a(n-2)²+a(n-1)+a(n-2)+1)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A276160.P5503435856267232863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2 + (a (n - 1) + (a (n - 2) + 1))) / a (n - 3)

end

end A276160.P5503435856267232863

namespace A276160

/-- `(a(n-1)²+a(n-2)²+a(n-1)+a(n-2)+1)/a(n-3)` -/
def P5503435856267232863.Spec : Prop :=
  ∀ n, P5503435856267232863.a n = (A276160 n : ℚ)

end A276160

/-!
# A276161: Numbers that are the product of 4 consecutive positive numbers and the product of 2 nontrivial oblong numbers.

The programs for A276161, there is no canonical definition to state claims against.
-/

/-! ## A276161.P14663525874267615796

`4*∩[A264961(n+1), A033487(n)]`
-/

namespace A276161.P14663525874267615796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276161.P14663525874267615796

/-!
# A276162: Square array read by antidiagonals: T(n,k) = Product_{i = 1..k} gcd(n, i).

The programs for A276162, the canonical program `A276162.P7641497976450170306` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276162 has offset 1).

The definition of A276162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276162.P7641497976450170306

`a(n-round(sqrt(2*n)))*A003989(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A276162

/-- `a(n-round(sqrt(2*n)))*A003989(n+1)` -/
def P7641497976450170306.Spec : Prop :=
  ∀ n, P7641497976450170306.a n = A276162 (n + 1)

theorem P7641497976450170306.correct : P7641497976450170306.Spec := by
  intro n
  simp only [A276162, Nat.add_sub_cancel]

end A276162

/-! ## A276162.P4252559589659418155

`gcd(A257681(A257503(n+1))², A166350(n+1))`
-/

namespace A276162.P4252559589659418155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257681 (A257503 (n + 1)).toNat ^ 2) (A166350 (n + 1))

end

end A276162.P4252559589659418155

namespace A276162

/-- `gcd(A257681(A257503(n+1))², A166350(n+1))` -/
def P4252559589659418155.Spec : Prop :=
  ∀ n, (P4252559589659418155.a n : ℤ) = A276162 (n + 1)

end A276162

/-! ## A276162.P4121856505241088667

`gcd(A004277(A294609(n)), A009999(n))`
-/

namespace A276162.P4121856505241088667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004277 (A294609 n).toNat) (A009999 n)

end

end A276162.P4121856505241088667

namespace A276162

/-- `gcd(A004277(A294609(n)), A009999(n))` -/
def P4121856505241088667.Spec : Prop :=
  ∀ n, (P4121856505241088667.a n : ℤ) = A276162 (n + 1)

end A276162

/-! ## A276162.P14648590920514297973

`gcd(A087036(A152716(n)), A088643(n+1))`
-/

namespace A276162.P14648590920514297973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087036 (A152716 n).toNat) (A088643 (n + 1))

end

end A276162.P14648590920514297973

namespace A276162

/-- `gcd(A087036(A152716(n)), A088643(n+1))` -/
def P14648590920514297973.Spec : Prop :=
  ∀ n, (P14648590920514297973.a n : ℤ) = A276162 (n + 1)

end A276162

/-! ## A276162.P926292919779678919

`gcd(A000027(A269336(n+1)), A055461(n+1))`
-/

namespace A276162.P926292919779678919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A269336 (n + 1)).toNat) (A055461 (n + 1))

end

end A276162.P926292919779678919

namespace A276162

/-- `gcd(A000027(A269336(n+1)), A055461(n+1))` -/
def P926292919779678919.Spec : Prop :=
  ∀ n, (P926292919779678919.a n : ℤ) = A276162 (n + 1)

end A276162

/-!
# A276163: a(n) is the maximum first-player score difference of a "Coins in a Row" game over all permutations of coins 1..n with both players using a minimax strategy.

The programs for A276163, there is no canonical definition to state claims against.
-/

/-! ## A276163.P13526177698599535438

`A116966(A079097(n)-1)`
-/

namespace A276163.P13526177698599535438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A079097 n - 1).toNat

end

end A276163.P13526177698599535438

/-! ## A276163.P16782097674356671877

`A346004(n)+A059484(n)`
-/

namespace A276163.P16782097674356671877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346004 n + A059484 n

end

end A276163.P16782097674356671877

/-! ## A276163.P16127791424163705476

`A346004(n)+A121262(n)`
-/

namespace A276163.P16127791424163705476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346004 n + A121262 n

end

end A276163.P16127791424163705476

/-! ## A276163.P8239950525897846966

`A346004(n)+A265260(n)`
-/

namespace A276163.P8239950525897846966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346004 n + A265260 n

end

end A276163.P8239950525897846966

/-! ## A276163.P16763731174590205845

`A354030(n+1)+A346004(n)`
-/

namespace A276163.P16763731174590205845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354030 (n + 1) + A346004 n

end

end A276163.P16763731174590205845

/-!
# A276164: a(n) is the maximum first-player score of a "Coins in a Row" game over all permutations of coins 1..n with both players using a minimax strategy.

The programs for A276164, there is no canonical definition to state claims against.
-/

/-! ## A276164.P12560391152423439258

`(A000217(n+1)+A276163(n+1))/2`
-/

namespace A276164.P12560391152423439258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) + A276163 (n + 1) : ℚ) / 2

end

end A276164.P12560391152423439258

/-! ## A276164.P4993575272829283055

`A265429(n)-A160791(n)`
-/

namespace A276164.P4993575272829283055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265429 n - A160791 n

end

end A276164.P4993575272829283055

/-!
# A276165: a(n) is the first-player score difference of a "Coins in a Row" game over the n-th row of A066099 using a minimax strategy.

The programs for A276165, there is no canonical definition to state claims against.
-/

/-! ## A276165.P16644576067187706003

`A276166(n)-A276167(n)`
-/

namespace A276165.P16644576067187706003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276166 n - A276167 n

end

end A276165.P16644576067187706003

/-! ## A276165.P13836150811740421591

`log2(A062383(n))-2*A276167(n)`
-/

namespace A276165.P13836150811740421591
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A062383 n : ℝ) - (2 * A276167 n : ℝ)

end

end A276165.P13836150811740421591

/-! ## A276165.P17585766849105041852

`2*A276166(n)-∑[A209229(n)]`
-/

namespace A276165.P17585766849105041852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276166 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276165.P17585766849105041852

/-! ## A276165.P18216763968441000408

`∑[A209229(n)]-2*A276167(n)`
-/

namespace A276165.P18216763968441000408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A276167 n

end

end A276165.P18216763968441000408

/-! ## A276165.P12982254968693898803

`2*A276166(n)-A029837(n+1)`
-/

namespace A276165.P12982254968693898803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276166 n - A029837 (n + 1)

end

end A276165.P12982254968693898803

/-! ## A276165.P3533089196654601271

`A029837(n+1)-2*A276167(n)`
-/

namespace A276165.P3533089196654601271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - 2 * A276167 n

end

end A276165.P3533089196654601271

/-! ## A276165.P15009550229590903912

`A005843(A276166(n))-A029837(n+1)`
-/

namespace A276165.P15009550229590903912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A276166 n).toNat - A029837 (n + 1)

end

end A276165.P15009550229590903912

/-! ## A276165.P10574890032262734263

`2*A276166(n)-A276166(A053644(n))`
-/

namespace A276165.P10574890032262734263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276166 n - A276166 (A053644 n).toNat

end

end A276165.P10574890032262734263

/-! ## A276165.P13900942257847093353

`A000120(A071162(n))-2*A276167(n)`
-/

namespace A276165.P13900942257847093353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A071162 n).toNat - 2 * A276167 n

end

end A276165.P13900942257847093353

/-!
# A276166: a(n) is the first player's score in a "Coins in a Row" game over the n-th row of A066099 using a minimax strategy.

The programs for A276166, there is no canonical definition to state claims against.
-/

/-! ## A276166.P7413661352317267661

`A276165(n)+A276167(n)`
-/

namespace A276166.P7413661352317267661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276165 n + A276167 n

end

end A276166.P7413661352317267661

/-! ## A276166.P14346047394268380420

`A029837(n+1)-A276167(n)`
-/

namespace A276166.P14346047394268380420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A276167 n

end

end A276166.P14346047394268380420

/-! ## A276166.P11027059862575009938

`log2(A062383(n))-A276167(n)`
-/

namespace A276166.P11027059862575009938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A062383 n : ℝ) - (A276167 n : ℝ)

end

end A276166.P11027059862575009938

/-! ## A276166.P13476554460929124805

`∑[A209229(n)]-A276167(n)`
-/

namespace A276166.P13476554460929124805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A276167 n

end

end A276166.P13476554460929124805

/-! ## A276166.P9348639521642323588

`A000523(2*n+1)-A276167(n)`
-/

namespace A276166.P9348639521642323588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1) - A276167 n

end

end A276166.P9348639521642323588

/-! ## A276166.P8949188262444862437

`A000120(A071162(n)/2)-A276167(n)`
-/

namespace A276166.P8949188262444862437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A071162 n : ℚ) / 2)).toNat - A276167 n

end

end A276166.P8949188262444862437

/-! ## A276166.P12007587723303730613

`A276167(A062383(n²)+n)`
-/

namespace A276166.P12007587723303730613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276167 (A062383 (n ^ 2) + (n : ℤ)).toNat

end

end A276166.P12007587723303730613

/-! ## A276166.P7992251767480106979

`A276167(8*4*(4*n+2))`
-/

namespace A276166.P7992251767480106979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276167 (8 * (4 * (4 * n + 2)))

end

end A276166.P7992251767480106979

/-! ## A276166.P17754663172397686406

`A000120(A071162(n))-A276167(n)`
-/

namespace A276166.P17754663172397686406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A071162 n).toNat - A276167 n

end

end A276166.P17754663172397686406

/-!
# A276167: a(n) is the second player's score in a "Coins in a Row" game over the n-th row of A066099 using a minimax strategy.

The programs for A276167, there is no canonical definition to state claims against.
-/

/-! ## A276167.P17858727274872156277

`A276166(n)-A276165(n)`
-/

namespace A276167.P17858727274872156277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276166 n - A276165 n

end

end A276167.P17858727274872156277

/-! ## A276167.P1632231052635712278

`A029837(n+1)-A276166(n)`
-/

namespace A276167.P1632231052635712278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A276166 n

end

end A276167.P1632231052635712278

/-! ## A276167.P5095815836347298328

`A023416(A333630(n))%A333601(3*n+4)`
-/

namespace A276167.P5095815836347298328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (A333630 n).toNat) (A333601 (3 * n + 4))

end

end A276167.P5095815836347298328

/-! ## A276167.P14780078946787265585

`A194636(A342457(n))%A335454(n)`
-/

namespace A276167.P14780078946787265585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194636 (A342457 n).toNat) (A335454 n)

end

end A276167.P14780078946787265585

/-! ## A276167.P13433023837470044996

`gcd(A099306(A000032(n)), A346633(n))`
-/

namespace A276167.P13433023837470044996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099306 (A000032 n).toNat) (A346633 n)

end

end A276167.P13433023837470044996

/-!
# A276168: a(n) is the minimum first-player score difference of a "Coins in a Row" game over all permutations of coins 1..n with both players using a minimax strategy.

The programs for A276168, there is no canonical definition to state claims against.
-/

/-! ## A276168.P9257160947347708783

`A133872(n)-A137932((n+2)*(n+1)%2/2)`
-/

namespace A276168.P9257160947347708783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n - A137932 (SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((((n + 1) % 2 : ℕ) : ℚ) / 2))).toNat

end

end A276168.P9257160947347708783

/-! ## A276168.P4684592534018799635

`n+2-A276163(n+2)`
-/

namespace A276168.P4684592534018799635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A276163 (n + 2)

end

end A276168.P4684592534018799635

/-!
# A276169: Primes that remain primes after adding to them their largest missing digit.

The programs for A276169, there is no canonical definition to state claims against.
-/

/-! ## A276169.P9229886045286930292

`p?[A008612(n)*A309857(n+1)]`
-/

namespace A276169.P9229886045286930292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n * A309857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276169.P9229886045286930292

/-! ## A276169.P1188906482284694671

`A309857(lt[A290800(n), A266964(3*n+4)])`
-/

namespace A276169.P1188906482284694671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266964 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309857 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276169.P1188906482284694671

/-!
# A276172: Number of primitive prime divisors of 3^n - 2^n.

The programs for A276172, there is no canonical definition to state claims against.
-/

/-! ## A276172.P9808606167506617852

`A001221(A336138(3*n+1)+A001221(n+1))`
-/

namespace A276172.P9808606167506617852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A336138 (3 * n + 1) + A001221 (n + 1)).toNat

end

end A276172.P9808606167506617852

/-! ## A276172.P4772832616035616731

`Δ[ceil(log(A215789(n+2)))]`
-/

namespace A276172.P4772832616035616731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A215789 (n + 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276172.P4772832616035616731

/-! ## A276172.P7265016086665483596

`A001222(A001222(A055389(n)+40))`
-/

namespace A276172.P7265016086665483596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (A055389 n + 40).toNat).toNat

end

end A276172.P7265016086665483596

/-! ## A276172.P13769170716186396076

`A259936(A096216(n+1))%A096168(n)`
-/

namespace A276172.P13769170716186396076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259936 (A096216 (n + 1)).toNat) (A096168 n)

end

end A276172.P13769170716186396076

/-! ## A276172.P13454413561300366265

`A001221(lt[A153490(n+1), A007814(3*n+1)])`
-/

namespace A276172.P13454413561300366265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276172.P13454413561300366265

/-!
# A276173: Number of solutions to the congruence y^2 + x*y + y == x^3 + 4*x - 6 (mod p) as p runs through the primes.

The programs for A276173, there is no canonical definition to state claims against.
-/

/-! ## A276173.P17014488146949655968

`Δ[A007504(n)]-A276193(n+1)`
-/

namespace A276173.P17014488146949655968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A276193 (n + 1)

end

end A276173.P17014488146949655968

/-! ## A276173.P13946392830187073707

`p?[A080412(n)]-A276193(n+1)`
-/

namespace A276173.P13946392830187073707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276193 (n + 1)

end

end A276173.P13946392830187073707

/-! ## A276173.P5273368688271107939

`A000040(n+1)-A276193(n+1)`
-/

namespace A276173.P5273368688271107939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A276193 (n + 1)

end

end A276173.P5273368688271107939

/-! ## A276173.P2568702652801088019

`A008578(n+2)-A276193(n+1)`
-/

namespace A276173.P2568702652801088019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A276193 (n + 1)

end

end A276173.P2568702652801088019

/-! ## A276173.P18096947210292016037

`A299763(n+2)-(A276193(n+1)+1)`
-/

namespace A276173.P18096947210292016037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 2) - (A276193 (n + 1) + 1)

end

end A276173.P18096947210292016037

/-! ## A276173.P557820942553370359

`A006530(A001749(n+1))-A276193(n+1)`
-/

namespace A276173.P557820942553370359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001749 (n + 1)).toNat - A276193 (n + 1)

end

end A276173.P557820942553370359

/-! ## A276173.P16907711384524469954

`A182986(n+2)-A030187(A182986(n+2))`
-/

namespace A276173.P16907711384524469954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A030187 (A182986 (n + 2)).toNat

end

end A276173.P16907711384524469954

/-! ## A276173.P15804734802752846126

`A275742(n+1)+A275745(n+1)-A276193(n+1)`
-/

namespace A276173.P15804734802752846126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275742 (n + 1) + (A275745 (n + 1) - A276193 (n + 1))

end

end A276173.P15804734802752846126

/-! ## A276173.P9526580455006178221

`A030187(2*A000040(n+1))+A000040(n+1)`
-/

namespace A276173.P9526580455006178221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (2 * A000040 (n + 1)).toNat + A000040 (n + 1)

end

end A276173.P9526580455006178221

/-!
# A276174: Primes p such that A276173(p) = p.

The programs for A276174, there is no canonical definition to state claims against.
-/

/-! ## A276174.P14157070229336501639

`p?[gcd(A073579(n+1), A276193(n+1))]`
-/

namespace A276174.P14157070229336501639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073579 (n + 1)) (A276193 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276174.P14157070229336501639

/-! ## A276174.P18331789204259520219

`record[gcd(A001750(n+2), A276173(n+2))]`
-/

namespace A276174.P18331789204259520219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001750 (n + 2)) (A276173 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276174.P18331789204259520219

/-! ## A276174.P5014727851836982780

`p?[gcd(A008578(n+2), A276173(n+1))]`
-/

namespace A276174.P5014727851836982780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008578 (n + 2)) (A276173 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276174.P5014727851836982780

/-! ## A276174.P5653218949321997679

`record[gcd(A008578(n+4), A276173(n+3))]`
-/

namespace A276174.P5653218949321997679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008578 (n + 4)) (A276173 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276174.P5653218949321997679

/-! ## A276174.P14485814359390693355

`p?[(A276193(n+1)+1)*A000040(n+1)]`
-/

namespace A276174.P14485814359390693355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A276193 (n + 1) + 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276174.P14485814359390693355

/-!
# A276175: a(n) = (a(n-1)+1)*(a(n-2)+1)*(a(n-3)+1)/a(n-4) with a(0) = a(1) = a(2) = a(3) = 1.

The programs for A276175, the canonical program `A276175.P675148348960178365` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276175 has offset 0).

The definition of A276175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276175.P675148348960178365

`(a(n-1)+1)*(a(n-2)+1)*(a(n-3)+1)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276175

/-- `(a(n-1)+1)*(a(n-2)+1)*(a(n-3)+1)/a(n-4)` -/
def P675148348960178365.Spec : Prop :=
  ∀ n, P675148348960178365.a n = (A276175 n : ℚ)

end A276175

/-! ## A276175.P3484353272987669961

`A362884(n)*A362884(n+1)*A362884(n+2)/64`
-/

namespace A276175.P3484353272987669961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362884 n * A362884 (n + 1) * A362884 (n + 2) : ℚ) / 64

end

end A276175.P3484353272987669961

namespace A276175

/-- `A362884(n)*A362884(n+1)*A362884(n+2)/64` -/
def P3484353272987669961.Spec : Prop :=
  ∀ n, P3484353272987669961.a n = (A276175 n : ℚ)

end A276175

/-! ## A276175.P3584591474456605273

`A000217(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=8`
-/

namespace A276175.P3584591474456605273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 8] fun n a =>
  A000217 (a (n - 1)).toNat

end

end A276175.P3584591474456605273

namespace A276175

/-- `A000217(a(n-1))` -/
def P3584591474456605273.Spec : Prop :=
  ∀ n, P3584591474456605273.a n = A276175 n

end A276175

/-! ## A276175.P5296295630593788122

`A264041(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=8`
-/

namespace A276175.P5296295630593788122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 8] fun n a =>
  A264041 (a (n - 1)).toNat

end

end A276175.P5296295630593788122

namespace A276175

/-- `A264041(a(n-1))` -/
def P5296295630593788122.Spec : Prop :=
  ∀ n, P5296295630593788122.a n = A276175 n

end A276175

/-!
# A276178: G.f.: 1/AGM(1, (1-4*x)^2).

The programs for A276178, there is no canonical definition to state claims against.
-/

/-! ## A276178.P11720970501588049797

`A263098(∑[(n+1)!])`
-/

namespace A276178.P11720970501588049797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263098 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276178.P11720970501588049797

/-! ## A276178.P10989324455172154793

`A263098(∑[∏[n+1]])`
-/

namespace A276178.P10989324455172154793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263098 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276178.P10989324455172154793

/-!
# A276179: n^2 * a(n) = 2*(7*n^2 - 7*n + 3)*a(n-1) - 12*(7*n^2 - 14*n + 9)*a(n-2) + 39*(7*n^2 - 21*n + 18) * a(n-3) - 72*(7*n^2 - 28*n + 30)*a(n-4) + 72*(7*n^2 - 35*n + 45) * a(n-5) - 216*(n-3)^2 * a(n-6), with a(0)=1, a(1)=6, a(2)=24, a(3)=78, a(4)=216, a(5)=504.

The programs for A276179, there is no canonical definition to state claims against.
-/

/-! ## A276179.P4678821838793639919

`A324842(A038402(n))`
-/

namespace A276179.P4678821838793639919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324842 (A038402 n).toNat

end

end A276179.P4678821838793639919

/-!
# A276181: Fricke's 37 cases for two-valued modular equations.

The programs for A276181, there is no canonical definition to state claims against.
-/

/-! ## A276181.P3284012486185617717

`lt[A276183(n+2), 1]+2`
-/

namespace A276181.P3284012486185617717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A276181.P3284012486185617717

/-! ## A276181.P1871085251859461648

`eq[floor(acot(n)), A276183(n+1)]+1`
-/

namespace A276181.P1871085251859461648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276181.P1871085251859461648

/-! ## A276181.P8565716841713455338

`eq[0, A276183(a(floor(n/2))+n)]` with `a(0)=72`
-/

namespace A276181.P8565716841713455338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [72] fun n f2 =>
  A276183 (f2 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276181.P8565716841713455338

/-! ## A276181.P8603576273120654095

`eq[A000007(n), A276183(n+1)]+1`
-/

namespace A276181.P8603576273120654095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276181.P8603576273120654095

/-! ## A276181.P3630862169371432237

`eq[A000038(n), A276183(n+1)]+1`
-/

namespace A276181.P3630862169371432237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276181.P3630862169371432237

/-!
# A276182: Numbers N such that the modular curve X_0(N) is hyperelliptic.

The programs for A276182, there is no canonical definition to state claims against.
-/

/-! ## A276182.P1898643433477638581

`A260993(∑[A127788(2*n+3)^A001617(n+2)])`
-/

namespace A276182.P1898643433477638581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127788 (2 * n + 3) : ℚ) ^ (A001617 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260993 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276182.P1898643433477638581

/-! ## A276182.P10373621765954198774

`A260993(∑[A014963(A260994(2*n+7))])`
-/

namespace A276182.P10373621765954198774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A260994 (2 * n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260993 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276182.P10373621765954198774

/-! ## A276182.P11895572681996101805

`A260993(A055645(n)+A007318(A056172(n+1)))`
-/

namespace A276182.P11895572681996101805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260993 (A055645 n + A007318 (A056172 (n + 1)).toNat).toNat

end

end A276182.P11895572681996101805

/-! ## A276182.P8839522596231803564

`A260993(A043717(n+1))`
-/

namespace A276182.P8839522596231803564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260993 (A043717 (n + 1)).toNat

end

end A276182.P8839522596231803564

/-! ## A276182.P17832265744283746463

`A260993(A044825(n+1))`
-/

namespace A276182.P17832265744283746463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260993 (A044825 (n + 1)).toNat

end

end A276182.P17832265744283746463

/-!
# A276183: Genus of the quotient of the modular curve X_0(n) by the Fricke involution.

The programs for A276183, there is no canonical definition to state claims against.
-/

/-! ## A276183.P6712935364574379172

`A100910(4*A100881(3*(n+1)))`
-/

namespace A276183.P6712935364574379172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (4 * A100881 (3 * (n + 1))).toNat

end

end A276183.P6712935364574379172

/-! ## A276183.P11888481498956100907

`A055641(A243354(2*(n+2))+∏{e}[n+1, floor(#/2)+1])`
-/

namespace A276183.P11888481498956100907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A243354 (2 * (n + 2)) + ∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1)).toNat

end

end A276183.P11888481498956100907

/-! ## A276183.P13780663593784986844

`((n+1)^4-∑[n]²)%A088530(A176168(2*n+5))`
-/

namespace A276183.P13780663593784986844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 4 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)) (A088530 (A176168 (2 * n + 5)).toNat)

end

end A276183.P13780663593784986844

/-! ## A276183.P5229086977527121283

`A065719(A065714(A035064(n+1)))`
-/

namespace A276183.P5229086977527121283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A065714 (A035064 (n + 1)).toNat).toNat

end

end A276183.P5229086977527121283

/-! ## A276183.P8678582395135651703

`A112010(n+1)%A330746(n+1)`
-/

namespace A276183.P8678582395135651703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112010 (n + 1)) (A330746 (n + 1))

end

end A276183.P8678582395135651703

/-!
# A276184: Numbers n such that A276183(n) = 1.

The programs for A276184, there is no canonical definition to state claims against.
-/

/-! ## A276184.P8104834741094216355

`eq[1, A276183(n+1)]+1`
-/

namespace A276184.P8104834741094216355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276184.P8104834741094216355

/-! ## A276184.P11659007236494656024

`eq[1, A276183(A028310(n))]`
-/

namespace A276184.P11659007236494656024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276184.P11659007236494656024

/-! ## A276184.P7270426809462184661

`A020725(eq[1, A276183(n+1)])`
-/

namespace A276184.P7270426809462184661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276184.P7270426809462184661

/-! ## A276184.P1648302982957918751

`A065475(eq[1, A276183(n+1)])`
-/

namespace A276184.P1648302982957918751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276184.P1648302982957918751

/-! ## A276184.P12998807840023356938

`A114637(eq[1, A276183(n+1)])`
-/

namespace A276184.P12998807840023356938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276184.P12998807840023356938

/-!
# A276185: Numbers n such that A276183(n) = 2.

The programs for A276185, there is no canonical definition to state claims against.
-/

/-! ## A276185.P15464494422053266280

`eq[2, A276183(n+1)]+1`
-/

namespace A276185.P15464494422053266280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276185.P15464494422053266280

/-! ## A276185.P764002344338095528

`eq[2, A276183(A028310(n))]`
-/

namespace A276185.P764002344338095528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276185.P764002344338095528

/-! ## A276185.P14965455103420642348

`A020725(eq[2, A276183(n+1)])`
-/

namespace A276185.P14965455103420642348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276185.P14965455103420642348

/-! ## A276185.P17237523457646655050

`eq[2, A276183(A060000(n+1))]`
-/

namespace A276185.P17237523457646655050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276185.P17237523457646655050

/-! ## A276185.P11095251321256658235

`A065475(eq[2, A276183(n+1)])`
-/

namespace A276185.P11095251321256658235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276185.P11095251321256658235

/-!
# A276186: Numbers n such that A276183(n) = 3.

The programs for A276186, there is no canonical definition to state claims against.
-/

/-! ## A276186.P5287256676738325018

`eq[3, A276183(n+1)]+1`
-/

namespace A276186.P5287256676738325018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276186.P5287256676738325018

/-! ## A276186.P2766983389189053180

`eq[3, A276183(A028310(n))]`
-/

namespace A276186.P2766983389189053180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276186.P2766983389189053180

/-! ## A276186.P15006268890946266315

`A020725(eq[3, A276183(n+1)])`
-/

namespace A276186.P15006268890946266315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276186.P15006268890946266315

/-! ## A276186.P8367523539884009096

`A065475(eq[3, A276183(n+1)])`
-/

namespace A276186.P8367523539884009096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276186.P8367523539884009096

/-! ## A276186.P17351412656515267103

`A114637(eq[3, A276183(n+1)])`
-/

namespace A276186.P17351412656515267103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276186.P17351412656515267103

/-!
# A276187: Number of subsets of {1,..,n} of cardinality >= 2 such that the elements of each counted subset are pairwise coprime.

The programs for A276187, there is no canonical definition to state claims against.
-/

/-! ## A276187.P4278611981850560434

`A320426(n+1)-1`
-/

namespace A276187.P4278611981850560434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320426 (n + 1) - 1

end

end A276187.P4278611981850560434

/-! ## A276187.P16279157245134575558

`∑[Δ[A084422(n)]-1]`
-/

namespace A276187.P16279157245134575558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276187.P16279157245134575558

/-! ## A276187.P2550809878041445730

`∑[A186973(n+1)-1]`
-/

namespace A276187.P2550809878041445730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186973 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276187.P2550809878041445730

/-! ## A276187.P7149103428624458119

`A187106(n+1)-(n+1)`
-/

namespace A276187.P7149103428624458119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187106 (n + 1) - (n + 1 : ℤ)

end

end A276187.P7149103428624458119

/-! ## A276187.P15707282654029375652

`A084422(n+1)-(n+2)`
-/

namespace A276187.P15707282654029375652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084422 (n + 1) - (n + 2 : ℤ)

end

end A276187.P15707282654029375652

/-! ## A276187.P4640859325796144586

`∑[A187106(n+1)%A084422(n)]`
-/

namespace A276187.P4640859325796144586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187106 (n + 1)) (A084422 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276187.P4640859325796144586

/-! ## A276187.P7069350915216593878

`∑[A186975(∑[A186971(n+1)])-1]`
-/

namespace A276187.P7069350915216593878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186971 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186975 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276187.P7069350915216593878

/-!
# A276189: Triangle read by rows: T(n,k) = 2*(6*k^2 + 1)*(n + 1 - k) for 0 < k <= n; for k = 0, T(n,0) = n + 1.

The programs for A276189, the canonical program `A276189.P219610882621668333` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276189 has offset 0).

The definition of A276189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276189.P219610882621668333

`A004736(n+1)*A005914(A002262(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276189

/-- `A004736(n+1)*A005914(A002262(n))` -/
def P219610882621668333.Spec : Prop :=
  ∀ n, P219610882621668333.a n = A276189 n

theorem P219610882621668333.correct : P219610882621668333.Spec := by
  intro n
  simp only [A276189]

end A276189

/-! ## A276189.P11232587825938356677

`sqrt(A055461(n+1))*A005914(A002262(n))`
-/

namespace A276189.P11232587825938356677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A005914 (A002262 n).toNat : ℝ)

end

end A276189.P11232587825938356677

namespace A276189

/-- `sqrt(A055461(n+1))*A005914(A002262(n))` -/
def P11232587825938356677.Spec : Prop :=
  ∀ n, P11232587825938356677.a n = (A276189 n : ℝ)

end A276189

/-! ## A276189.P522636436656839276

`A004736(n+1)*A005914(log2(A059268(n)))`
-/

namespace A276189.P522636436656839276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A005914 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A276189.P522636436656839276

namespace A276189

/-- `A004736(n+1)*A005914(log2(A059268(n)))` -/
def P522636436656839276.Spec : Prop :=
  ∀ n, P522636436656839276.a n = A276189 n

end A276189

/-! ## A276189.P11731547690791343895

`A004736(n+1)*A005918(2*A002262(n))`
-/

namespace A276189.P11731547690791343895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A005918 (2 * A002262 n).toNat

end

end A276189.P11731547690791343895

namespace A276189

/-- `A004736(n+1)*A005918(2*A002262(n))` -/
def P11731547690791343895.Spec : Prop :=
  ∀ n, P11731547690791343895.a n = A276189 n

end A276189

/-! ## A276189.P13512911426014445839

`A005914(A002262(n))*A008619(A099375(n))`
-/

namespace A276189.P13512911426014445839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 (A002262 n).toNat * A008619 (A099375 n).toNat

end

end A276189.P13512911426014445839

namespace A276189

/-- `A005914(A002262(n))*A008619(A099375(n))` -/
def P13512911426014445839.Spec : Prop :=
  ∀ n, P13512911426014445839.a n = A276189 n

end A276189

/-! ## A276189.P4370572822019246015

`A002260(A278818(n))*A005914(A002262(n))`
-/

namespace A276189.P4370572822019246015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A278818 n).toNat * A005914 (A002262 n).toNat

end

end A276189.P4370572822019246015

namespace A276189

/-- `A002260(A278818(n))*A005914(A002262(n))` -/
def P4370572822019246015.Spec : Prop :=
  ∀ n, P4370572822019246015.a n = A276189 n

end A276189

/-! ## A276189.P7144955354864926952

`A005914(A002262(n))*A035612(A035513(n+1))`
-/

namespace A276189.P7144955354864926952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 (A002262 n).toNat * A035612 (A035513 (n + 1)).toNat

end

end A276189.P7144955354864926952

namespace A276189

/-- `A005914(A002262(n))*A035612(A035513(n+1))` -/
def P7144955354864926952.Spec : Prop :=
  ∀ n, P7144955354864926952.a n = A276189 n

end A276189

/-! ## A276189.P15105433120056354925

`A000005(A130321(n))*A005914(A002262(n))`
-/

namespace A276189.P15105433120056354925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A005914 (A002262 n).toNat

end

end A276189.P15105433120056354925

namespace A276189

/-- `A000005(A130321(n))*A005914(A002262(n))` -/
def P15105433120056354925.Spec : Prop :=
  ∀ n, P15105433120056354925.a n = A276189 n

end A276189

/-! ## A276189.P5928826172165331133

`A005914(A002262(n))*A343029(A130330(n))`
-/

namespace A276189.P5928826172165331133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 (A002262 n).toNat * A343029 (A130330 n).toNat

end

end A276189.P5928826172165331133

namespace A276189

/-- `A005914(A002262(n))*A343029(A130330(n))` -/
def P5928826172165331133.Spec : Prop :=
  ∀ n, P5928826172165331133.a n = A276189 n

end A276189

/-!
# A276190: Sum of the squares of the digits of the base-4 representation of n.

The programs for A276190, there is no canonical definition to state claims against.
-/

/-! ## A276190.P15008186193162503069

`a(floor(n/4))+(n%4)²` with `a(0)=0`
-/

namespace A276190.P15008186193162503069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + (n % 4) ^ 2

end

end A276190.P15008186193162503069

/-! ## A276190.P7537679024597179038

`a(floor(n/4))+and(3, n)²` with `a(0)=0`
-/

namespace A276190.P7537679024597179038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + Nat.land 3 n ^ 2

end

end A276190.P7537679024597179038

/-! ## A276190.P14170266848767707869

`∑{digits}[A007090(n), #²]`
-/

namespace A276190.P14170266848767707869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276190.P14170266848767707869

/-! ## A276190.P5057267753327452234

`∑{digits}[A046030(n+1), #]`
-/

namespace A276190.P5057267753327452234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A276190.P5057267753327452234

/-! ## A276190.P16767662239658498554

`∑{digits}[record[A064770(n)], #²]`
-/

namespace A276190.P16767662239658498554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276190.P16767662239658498554

/-! ## A276190.P930337887016771145

`∑{digits}[lt[A054055(n), 4], #²]`
-/

namespace A276190.P930337887016771145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A276190.P930337887016771145

/-! ## A276190.P8878196077871697127

`∑{digits}[lt[A086066(n), 16], #²]`
-/

namespace A276190.P8878196077871697127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A276190.P8878196077871697127

/-! ## A276190.P14924611064512156823

`∑{digits}[lt[log(A306958(n)), 8], #²]`
-/

namespace A276190.P14924611064512156823
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A306958 n : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A276190.P14924611064512156823

/-! ## A276190.P16681683865140901146

`∑{digits}[A024644(2*n)/2, #²]`
-/

namespace A276190.P16681683865140901146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024644 (2 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276190.P16681683865140901146

/-! ## A276190.P16073982436659900665

`A003132(A007090(n))`
-/

namespace A276190.P16073982436659900665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A007090 n).toNat

end

end A276190.P16073982436659900665

/-!
# A276191: Sum of the squares of the digits of the base-5 representation of n.

The programs for A276191, there is no canonical definition to state claims against.
-/

/-! ## A276191.P933819013760863556

`∑{digits}[lt[sqrt(∑{digits}[n, #!]), 10], #²]`
-/

namespace A276191.P933819013760863556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℝ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℝ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A276191.P933819013760863556

/-! ## A276191.P13676144960702043574

`∑{digits}[lt[log2(∑{digits}[n, #!]), 6], #²]`
-/

namespace A276191.P13676144960702043574
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℝ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℝ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A276191.P13676144960702043574

/-! ## A276191.P9550858312947339233

`∑{digits}[A007091(n), #²]`
-/

namespace A276191.P9550858312947339233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276191.P9550858312947339233

/-! ## A276191.P16282571717686251083

`∑{digits}[record[A106747(n)], #²]`
-/

namespace A276191.P16282571717686251083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276191.P16282571717686251083

/-! ## A276191.P8749231740979864078

`∑{digits}[lt[A054055(n), 5], #²]`
-/

namespace A276191.P8749231740979864078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A276191.P8749231740979864078

/-! ## A276191.P14610739209699757429

`∑{digits}[lt[A086066(n), 32], #²]`
-/

namespace A276191.P14610739209699757429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A276191.P14610739209699757429

/-! ## A276191.P15235719197552353554

`∑{digits}[eq[n, A167831(n)], #²]`
-/

namespace A276191.P15235719197552353554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A276191.P15235719197552353554

/-! ## A276191.P7819789993062568124

`∑{digits}[record[A001613(n)/2], #²]`
-/

namespace A276191.P7819789993062568124
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001613 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276191.P7819789993062568124

/-! ## A276191.P16730471715225989510

`∑{digits}[record[A004520(n)/2], #²]`
-/

namespace A276191.P16730471715225989510
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004520 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276191.P16730471715225989510

/-! ## A276191.P17004108922391344091

`∑{digits}[A014263(n+1)/2, #²]`
-/

namespace A276191.P17004108922391344091
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276191.P17004108922391344091

/-!
# A276192: Numbers n such that there is no twin prime pair between A000217(n) and A000217(n+1) (n > 0).

The programs for A276192, there is no canonical definition to state claims against.
-/

/-! ## A276192.P3140182683443458013

`A198409(n+1)+A001221(A165526(n))`
-/

namespace A276192.P3140182683443458013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198409 (n + 1) + A001221 (A165526 n).toNat

end

end A276192.P3140182683443458013

/-!
# A276193: P-defects p - N(p) of the congruence y^2 + x*y + y == x^3 + 4*x - 6 (mod p) for primes p, where N(p) is the number of solutions given for p = prime(n) by A276173(n).

The programs for A276193, there is no canonical definition to state claims against.
-/

/-! ## A276193.P12877562380158125739

`A030187(p?[comp[n²]])`
-/

namespace A276193.P12877562380158125739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A276193.P12877562380158125739

/-! ## A276193.P14813979145893141384

`A030187(Δ[A007504(n)])`
-/

namespace A276193.P14813979145893141384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (f1 (n + 1) - f1 n).toNat

end

end A276193.P14813979145893141384

/-! ## A276193.P7056136996163013018

`A030187(A000040(n+1))`
-/

namespace A276193.P7056136996163013018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (A000040 (n + 1)).toNat

end

end A276193.P7056136996163013018

/-! ## A276193.P7934005186726882448

`A030187(A008578(n+2))`
-/

namespace A276193.P7934005186726882448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (A008578 (n + 2)).toNat

end

end A276193.P7934005186726882448

/-! ## A276193.P1324098445217455401

`A030187(A182986(n+2))`
-/

namespace A276193.P1324098445217455401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (A182986 (n + 2)).toNat

end

end A276193.P1324098445217455401

/-! ## A276193.P2671340898678138327

`A030187(record[A006530(n+2)])`
-/

namespace A276193.P2671340898678138327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276193.P2671340898678138327

/-! ## A276193.P6660871202864125612

`A030187(record[A014963(n+2)])`
-/

namespace A276193.P6660871202864125612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276193.P6660871202864125612

/-! ## A276193.P9510860661028424078

`A030187(record[A020639(n+2)])`
-/

namespace A276193.P9510860661028424078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276193.P9510860661028424078

/-! ## A276193.P5841994619321335431

`A000040(n+1)-A276173(n+1)`
-/

namespace A276193.P5841994619321335431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A276173 (n + 1)

end

end A276193.P5841994619321335431

/-! ## A276193.P4316241818708397989

`A008578(n+2)-A276173(n+1)`
-/

namespace A276193.P4316241818708397989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A276173 (n + 1)

end

end A276193.P4316241818708397989

/-! ## A276193.P2120993584117017132

`A030187(A006530(A001749(n+1)))`
-/

namespace A276193.P2120993584117017132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (A006530 (A001749 (n + 1)).toNat).toNat

end

end A276193.P2120993584117017132

/-! ## A276193.P2413884443005176688

`A030187(A275745(n+1)+A275742(n+1))`
-/

namespace A276193.P2413884443005176688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (A275745 (n + 1) + A275742 (n + 1)).toNat

end

end A276193.P2413884443005176688

/-! ## A276193.P8173206211018680777

`A275742(n+1)+A275745(n+1)-A276173(n+1)`
-/

namespace A276193.P8173206211018680777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275742 (n + 1) + (A275745 (n + 1) - A276173 (n + 1))

end

end A276193.P8173206211018680777

/-! ## A276193.P56621480382864020

`A030187(A001749(n+1))`
-/

namespace A276193.P56621480382864020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (A001749 (n + 1)).toNat

end

end A276193.P56621480382864020

/-! ## A276193.P17044655842467945188

`A030187(A072900(n+1))`
-/

namespace A276193.P17044655842467945188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (A072900 (n + 1)).toNat

end

end A276193.P17044655842467945188

/-! ## A276193.P1206267136532132291

`A030187(A272470(n+1))`
-/

namespace A276193.P1206267136532132291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030187 (A272470 (n + 1)).toNat

end

end A276193.P1206267136532132291

/-!
# A276194: Odd numbers whose binary representation contains an even number of 1's and at least one 0.

The programs for A276194, the canonical program `A276194.P6934674265485080533` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276194 has offset 1).

The definition of A276194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276194.P6934674265485080533

`A001969(eq[2%A001316(n+1), A001285(n)]+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A276194

/-- `A001969(eq[2%A001316(n+1), A001285(n)]+1)` -/
def P6934674265485080533.Spec : Prop :=
  ∀ n, P6934674265485080533.a n = A276194 (n + 1)

theorem P6934674265485080533.correct : P6934674265485080533.Spec := by
  intro n
  simp only [A276194, Nat.add_sub_cancel]

end A276194

/-! ## A276194.P10016385881063422419

`A129771(lt[A080100(2*n), A059009(n)])`
-/

namespace A276194.P10016385881063422419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A276194.P10016385881063422419

namespace A276194

/-- `A129771(lt[A080100(2*n), A059009(n)])` -/
def P10016385881063422419.Spec : Prop :=
  ∀ n, P10016385881063422419.a n = A276194 (n + 1)

end A276194

/-! ## A276194.P16294790843991020429

`lt[3, A324335((n-1)^and(1, n)+1)]`
-/

namespace A276194.P16294790843991020429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324335 (((n : ℤ) - 1) ^ Nat.land 1 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276194.P16294790843991020429

namespace A276194

/-- `lt[3, A324335((n-1)^and(1, n)+1)]` -/
def P16294790843991020429.Spec : Prop :=
  ∀ n, (P16294790843991020429.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P6076623222875146944

`∩[A129771(n+1), A347771(n+1)]`
-/

namespace A276194.P6076623222875146944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276194.P6076623222875146944

namespace A276194

/-- `∩[A129771(n+1), A347771(n+1)]` -/
def P6076623222875146944.Spec : Prop :=
  ∀ n, (P6076623222875146944.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P17808151065822826669

`∩[A080765(n+1), A129771(n+1)]`
-/

namespace A276194.P17808151065822826669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276194.P17808151065822826669

namespace A276194

/-- `∩[A080765(n+1), A129771(n+1)]` -/
def P17808151065822826669.Spec : Prop :=
  ∀ n, (P17808151065822826669.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P8317893713404360169

`∩[A129771(n+1), A257739(n+1)]`
-/

namespace A276194.P8317893713404360169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276194.P8317893713404360169

namespace A276194

/-- `∩[A129771(n+1), A257739(n+1)]` -/
def P8317893713404360169.Spec : Prop :=
  ∀ n, (P8317893713404360169.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P12488120495173282958

`∩[A101082(n+1), A129771(n+1)]`
-/

namespace A276194.P12488120495173282958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276194.P12488120495173282958

namespace A276194

/-- `∩[A101082(n+1), A129771(n+1)]` -/
def P12488120495173282958.Spec : Prop :=
  ∀ n, (P12488120495173282958.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P321485967708294685

`∩[A062289(n+1), A129771(n+1)]`
-/

namespace A276194.P321485967708294685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276194.P321485967708294685

namespace A276194

/-- `∩[A062289(n+1), A129771(n+1)]` -/
def P321485967708294685.Spec : Prop :=
  ∀ n, (P321485967708294685.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P3984282208388579108

`filter[A129771(n+1), A043545(#)]`
-/

namespace A276194.P3984282208388579108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A276194.P3984282208388579108

namespace A276194

/-- `filter[A129771(n+1), A043545(#)]` -/
def P3984282208388579108.Spec : Prop :=
  ∀ n, P3984282208388579108.a n = A276194 (n + 1)

end A276194

/-! ## A276194.P8813357143789920556

`filter[A129771(n+1), A267442(#)]`
-/

namespace A276194.P8813357143789920556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A276194.P8813357143789920556

namespace A276194

/-- `filter[A129771(n+1), A267442(#)]` -/
def P8813357143789920556.Spec : Prop :=
  ∀ n, P8813357143789920556.a n = A276194 (n + 1)

end A276194

/-! ## A276194.P13982438502979023699

`filter[A102394(2*n), A043545(#)]`
-/

namespace A276194.P13982438502979023699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102394 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A276194.P13982438502979023699

namespace A276194

/-- `filter[A102394(2*n), A043545(#)]` -/
def P13982438502979023699.Spec : Prop :=
  ∀ n, P13982438502979023699.a n = A276194 (n + 1)

end A276194

/-! ## A276194.P15147356009709552097

`eq[3, A277822(n)+A043545(n)]`
-/

namespace A276194.P15147356009709552097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n + A043545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276194.P15147356009709552097

namespace A276194

/-- `eq[3, A277822(n)+A043545(n)]` -/
def P15147356009709552097.Spec : Prop :=
  ∀ n, (P15147356009709552097.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P1750153062328526759

`eq[2, A277822(n*A043545(n))]`
-/

namespace A276194.P1750153062328526759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 ((n : ℤ) * A043545 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276194.P1750153062328526759

namespace A276194

/-- `eq[2, A277822(n*A043545(n))]` -/
def P1750153062328526759.Spec : Prop :=
  ∀ n, (P1750153062328526759.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P4156538955050400761

`filter[A102391(2*n+1), A043545(#)]`
-/

namespace A276194.P4156538955050400761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102391 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A276194.P4156538955050400761

namespace A276194

/-- `filter[A102391(2*n+1), A043545(#)]` -/
def P4156538955050400761.Spec : Prop :=
  ∀ n, P4156538955050400761.a n = A276194 (n + 1)

end A276194

/-! ## A276194.P7554429766950705853

`lt[A014963(n+2), A268726(n)]+1`
-/

namespace A276194.P7554429766950705853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A276194.P7554429766950705853

namespace A276194

/-- `lt[A014963(n+2), A268726(n)]+1` -/
def P7554429766950705853.Spec : Prop :=
  ∀ n, (P7554429766950705853.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P4509840260649808727

`eq[A014963(n+1)², and(n, A001285(n))]`
-/

namespace A276194.P4509840260649808727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A001285 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276194.P4509840260649808727

namespace A276194

/-- `eq[A014963(n+1)², and(n, A001285(n))]` -/
def P4509840260649808727.Spec : Prop :=
  ∀ n, (P4509840260649808727.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P15521563695285426588

`eq[A036987(n), A089263(A000069(n+1)-1)]`
-/

namespace A276194.P15521563695285426588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A000069 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276194.P15521563695285426588

namespace A276194

/-- `eq[A036987(n), A089263(A000069(n+1)-1)]` -/
def P15521563695285426588.Spec : Prop :=
  ∀ n, (P15521563695285426588.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P17130495576861548586

`eq[A010060(n)+1, A080940(A080940(n+1)+1)]`
-/

namespace A276194.P17130495576861548586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (A080940 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276194.P17130495576861548586

namespace A276194

/-- `eq[A010060(n)+1, A080940(A080940(n+1)+1)]` -/
def P17130495576861548586.Spec : Prop :=
  ∀ n, (P17130495576861548586.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P6537129365713203888

`lt[A001285(n), Δ[A266539(n+1)]]`
-/

namespace A276194.P6537129365713203888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276194.P6537129365713203888

namespace A276194

/-- `lt[A001285(n), Δ[A266539(n+1)]]` -/
def P6537129365713203888.Spec : Prop :=
  ∀ n, (P6537129365713203888.a n : ℤ) = A276194 (n + 1)

end A276194

/-! ## A276194.P1819770138791579427

`lt[A268676(n), Δ[A266539(n+1)]]`
-/

namespace A276194.P1819770138791579427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276194.P1819770138791579427

namespace A276194

/-- `lt[A268676(n), Δ[A266539(n+1)]]` -/
def P1819770138791579427.Spec : Prop :=
  ∀ n, (P1819770138791579427.a n : ℤ) = A276194 (n + 1)

end A276194

/-!
# A276195: Smallest prime >= decimal expansion of Pi truncated to n places (A011545).

The programs for A276195, the canonical program `A276195.P11905812276051658324` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276195 has offset 0).

The definition of A276195 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276195.P11905812276051658324

`A000040(A000720(A011545(n)-1)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276195

/-- `A000040(A000720(A011545(n)-1)+1)` -/
def P11905812276051658324.Spec : Prop :=
  ∀ n, P11905812276051658324.a n = A276195 n

theorem P11905812276051658324.correct : P11905812276051658324.Spec := by
  intro n
  simp only [A276195]

end A276195

/-!
# A276196: Smallest prime >= decimal expansion of e truncated to n places (A011543).

The programs for A276196, the canonical program `A276196.P14246465269572759540` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276196 has offset 0).

The definition of A276196 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276196.P14246465269572759540

`A000040(A000720(A011543(n)-1)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276196

/-- `A000040(A000720(A011543(n)-1)+1)` -/
def P14246465269572759540.Spec : Prop :=
  ∀ n, P14246465269572759540.a n = A276196 n

theorem P14246465269572759540.correct : P14246465269572759540.Spec := by
  intro n
  simp only [A276196]

end A276196

/-!
# A276198: Smallest prime >= decimal expansion of phi truncated to n places (A011551), where phi is the golden ratio (A001622).

The programs for A276198, there is no canonical definition to state claims against.
-/

/-! ## A276198.P12482351268689272592

`p?[A276237(n+2)+A011551(n)]`
-/

namespace A276198.P12482351268689272592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276237 (n + 2) + A011551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276198.P12482351268689272592

/-! ## A276198.P18075602918921078084

`A048793(A181197(n+1))+floor(ϕ*10^n)`
-/

namespace A276198.P18075602918921078084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A181197 (n + 1)).toNat + ⌊Real.goldenRatio * (10 ^ n : ℝ)⌋

end

end A276198.P18075602918921078084

