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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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
# A224701: Table read by antidiagonals of numbers of form (2^n - 1)*2^(m+3) + 5 where n>=1, m>=1.

The programs for A224701, the canonical program `A224701.P15756178297460564340` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224701 has offset 1).

The definition of A224701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224701.P15756178297460564340

`2*A224380(n+1)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A224701

/-- `2*A224380(n+1)-1` -/
def P15756178297460564340.Spec : Prop :=
  ∀ n, P15756178297460564340.a n = A224701 (n + 1)

theorem P15756178297460564340.correct : P15756178297460564340.Spec := by
  intro n
  simp only [A224701, Nat.add_sub_cancel]

end A224701

/-! ## A224701.P15178153527130812450

`8*A224195(n+1)-3`
-/

namespace A224701.P15178153527130812450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A224195 (n + 1) - 3

end

end A224701.P15178153527130812450

namespace A224701

/-- `8*A224195(n+1)-3` -/
def P15178153527130812450.Spec : Prop :=
  ∀ n, P15178153527130812450.a n = A224701 (n + 1)

end A224701

/-! ## A224701.P11523436171775328571

`5+8*A043569(n+1)`
-/

namespace A224701.P11523436171775328571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 + 8 * A043569 (n + 1)

end

end A224701.P11523436171775328571

namespace A224701

/-- `5+8*A043569(n+1)` -/
def P11523436171775328571.Spec : Prop :=
  ∀ n, P11523436171775328571.a n = A224701 (n + 1)

end A224701

/-! ## A224701.P16088718923651501152

`8*A081118(n+1)+13`
-/

namespace A224701.P16088718923651501152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A081118 (n + 1) + 13

end

end A224701.P16088718923651501152

namespace A224701

/-- `8*A081118(n+1)+13` -/
def P16088718923651501152.Spec : Prop :=
  ∀ n, P16088718923651501152.a n = A224701 (n + 1)

end A224701

/-! ## A224701.P13501869475367760505

`4*4*A023758(n+2)+5`
-/

namespace A224701.P13501869475367760505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A023758 (n + 2)) + 5

end

end A224701.P13501869475367760505

namespace A224701

/-- `4*4*A023758(n+2)+5` -/
def P13501869475367760505.Spec : Prop :=
  ∀ n, P13501869475367760505.a n = A224701 (n + 1)

end A224701

/-! ## A224701.P3979986232989126275

`A224380(A002024(n+1)+n+1)+2`
-/

namespace A224701.P3979986232989126275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224380 (A002024 (n + 1) + (n : ℤ) + 1).toNat + 2

end

end A224701.P3979986232989126275

namespace A224701

/-- `A224380(A002024(n+1)+n+1)+2` -/
def P3979986232989126275.Spec : Prop :=
  ∀ n, P3979986232989126275.a n = A224701 (n + 1)

end A224701

/-! ## A224701.P16492983736529375116

`2*A004769(A089633(n))-1`
-/

namespace A224701.P16492983736529375116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004769 (A089633 n).toNat - 1

end

end A224701.P16492983736529375116

namespace A224701

/-- `2*A004769(A089633(n))-1` -/
def P16492983736529375116.Spec : Prop :=
  ∀ n, P16492983736529375116.a n = A224701 (n + 1)

end A224701

/-! ## A224701.P14714522436965252075

`∩[A043572(n+1), A170837(n)]`
-/

namespace A224701.P14714522436965252075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224701.P14714522436965252075

namespace A224701

/-- `∩[A043572(n+1), A170837(n)]` -/
def P14714522436965252075.Spec : Prop :=
  ∀ n, (P14714522436965252075.a n : ℤ) = A224701 (n + 1)

end A224701

/-! ## A224701.P9457231433276069176

`∩[A043688(n+1), A170837(n)]`
-/

namespace A224701.P9457231433276069176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224701.P9457231433276069176

namespace A224701

/-- `∩[A043688(n+1), A170837(n)]` -/
def P9457231433276069176.Spec : Prop :=
  ∀ n, (P9457231433276069176.a n : ℤ) = A224701 (n + 1)

end A224701

/-!
# A224702: Number of partition sums between powers of 2 where the partition sums b(k) are A000070 and 2^n <= b(k) < 2^(n+1).

The programs for A224702, there is no canonical definition to state claims against.
-/

/-! ## A224702.P5387201573495809118

`A043566((comp[xor(n, 2*n)]+2+n)*A007360(2*n+3))`
-/

namespace A224702.P5387201573495809118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n : ℤ) * A007360 (2 * n + 3)).toNat

end

end A224702.P5387201573495809118

/-!
# A224703: Numbers divisible by the twice the number of their prime factors (counted with multiplicity), or numbers n divisible by 2*Omega(n).

The programs for A224703, there is no canonical definition to state claims against.
-/

/-! ## A224703.P560314223860631195

`eq[n+1, lcm(n+1, A001222((n+1)²))]+1`
-/

namespace A224703.P560314223860631195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001222 ((n + 1) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A224703.P560314223860631195

/-! ## A224703.P6924667878611376699

`record[A056926(A224705(n+1))]`
-/

namespace A224703.P6924667878611376699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A224705 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224703.P6924667878611376699

/-! ## A224703.P9021964150796678051

`lt[A060438(n+1)², (n+1)/∏{p}[n+1, (n+1)/#]]`
-/

namespace A224703.P9021964150796678051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060438 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f3 n), (n + 1 : ℚ) / (p : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A224703.P9021964150796678051

/-! ## A224703.P1924695845579953597

`record[A169805(A009262(n+1))]`
-/

namespace A224703.P1924695845579953597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A009262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224703.P1924695845579953597

/-! ## A224703.P2445562548423666173

`eq[gcd(4, n)%4, A257920(A061855(n))]`
-/

namespace A224703.P2445562548423666173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257920 (A061855 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224703.P2445562548423666173

/-!
# A224704: Number of stacks of n triangles, pointing upwards or downwards depending on row parity.

The programs for A224704, there is no canonical definition to state claims against.
-/

/-! ## A224704.P1813095094678763775

`∑[A316356(n)]`
-/

namespace A224704.P1813095094678763775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224704.P1813095094678763775

/-! ## A224704.P2500335086184165728

`A316354(∑[A316355(abs(1-n))])`
-/

namespace A224704.P2500335086184165728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316354 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224704.P2500335086184165728

/-! ## A224704.P8522265306760924600

`A316354(∑[A316355(n)]-A316355(n)+1)`
-/

namespace A224704.P8522265306760924600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316354 (∑ j ∈ Finset.range (n + 1), f1 j - A316355 n + 1).toNat

end

end A224704.P8522265306760924600

/-! ## A224704.P12215711852872499470

`∑{d}[2^n, A316356(log2(#))]`
-/

namespace A224704.P12215711852872499470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316356 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A224704.P12215711852872499470

/-! ## A224704.P9480507279456442119

`A235963(A022553(n))`
-/

namespace A224704.P9480507279456442119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A022553 n).toNat

end

end A224704.P9480507279456442119

/-!
# A224705: Composite numbers n divisible by Omega(n)^2 (the square of the number of their prime factors, counted with multiplicity).

The programs for A224705, the canonical program `A224705.P15495614676293168380` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224705 has offset 1).

The definition of A224705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2621 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224705.P15495614676293168380

`filter[A231878(n+1), A005171(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A224705

/-- `filter[A231878(n+1), A005171(#)]` -/
def P15495614676293168380.Spec : Prop :=
  ∀ n, P15495614676293168380.a n = A224705 (n + 1)

theorem P15495614676293168380.correct : P15495614676293168380.Spec := by
  intro n
  simp only [A224705, Nat.add_sub_cancel]

end A224705

/-! ## A224705.P13657493879851680141

`filter[A231878(n+1), A066247(#)]`
-/

namespace A224705.P13657493879851680141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A224705.P13657493879851680141

namespace A224705

/-- `filter[A231878(n+1), A066247(#)]` -/
def P13657493879851680141.Spec : Prop :=
  ∀ n, P13657493879851680141.a n = A224705 (n + 1)

end A224705

/-! ## A224705.P16599016588163347322

`filter[A231878(n+1), A087049(#)]`
-/

namespace A224705.P16599016588163347322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A224705.P16599016588163347322

namespace A224705

/-- `filter[A231878(n+1), A087049(#)]` -/
def P16599016588163347322.Spec : Prop :=
  ∀ n, P16599016588163347322.a n = A224705 (n + 1)

end A224705

/-! ## A224705.P8334456812818294173

`∩[A013929(n+1), A231878(n+1)]`
-/

namespace A224705.P8334456812818294173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P8334456812818294173

namespace A224705

/-- `∩[A013929(n+1), A231878(n+1)]` -/
def P8334456812818294173.Spec : Prop :=
  ∀ n, (P8334456812818294173.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P677451954252046474

`∩[A072903(n+1), A231878(n+1)]`
-/

namespace A224705.P677451954252046474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P677451954252046474

namespace A224705

/-- `∩[A072903(n+1), A231878(n+1)]` -/
def P677451954252046474.Spec : Prop :=
  ∀ n, (P677451954252046474.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P2847047912389547168

`∩[A137230(n+1), A231878(n+1)]`
-/

namespace A224705.P2847047912389547168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P2847047912389547168

namespace A224705

/-- `∩[A137230(n+1), A231878(n+1)]` -/
def P2847047912389547168.Spec : Prop :=
  ∀ n, (P2847047912389547168.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P18087527089376101194

`∩[A162966(n+1), A231878(n+1)]`
-/

namespace A224705.P18087527089376101194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P18087527089376101194

namespace A224705

/-- `∩[A162966(n+1), A231878(n+1)]` -/
def P18087527089376101194.Spec : Prop :=
  ∀ n, (P18087527089376101194.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P3899201889189677581

`∩[A231878(n+1), A389462(n+1)]`
-/

namespace A224705.P3899201889189677581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P3899201889189677581

namespace A224705

/-- `∩[A231878(n+1), A389462(n+1)]` -/
def P3899201889189677581.Spec : Prop :=
  ∀ n, (P3899201889189677581.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P7833656322716643460

`∩[A231878(n+1), A343597(n+1)]`
-/

namespace A224705.P7833656322716643460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P7833656322716643460

namespace A224705

/-- `∩[A231878(n+1), A343597(n+1)]` -/
def P7833656322716643460.Spec : Prop :=
  ∀ n, (P7833656322716643460.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P3896601518294763038

`∩[A231878(n+1), A246282(n+1)]`
-/

namespace A224705.P3896601518294763038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P3896601518294763038

namespace A224705

/-- `∩[A231878(n+1), A246282(n+1)]` -/
def P3896601518294763038.Spec : Prop :=
  ∀ n, (P3896601518294763038.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P1115159109850300339

`∩[A231878(n+1), A377723(n+1)]`
-/

namespace A224705.P1115159109850300339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P1115159109850300339

namespace A224705

/-- `∩[A231878(n+1), A377723(n+1)]` -/
def P1115159109850300339.Spec : Prop :=
  ∀ n, (P1115159109850300339.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P5760676240639445545

`∩[A231878(n+1), A289553(n+1)]`
-/

namespace A224705.P5760676240639445545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P5760676240639445545

namespace A224705

/-- `∩[A231878(n+1), A289553(n+1)]` -/
def P5760676240639445545.Spec : Prop :=
  ∀ n, (P5760676240639445545.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P4227468681552882849

`∩[A002808(n+1), A231878(n+1)]`
-/

namespace A224705.P4227468681552882849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P4227468681552882849

namespace A224705

/-- `∩[A002808(n+1), A231878(n+1)]` -/
def P4227468681552882849.Spec : Prop :=
  ∀ n, (P4227468681552882849.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P9163978680106452306

`∩[A018252(n+1), A231878(n+1)]`
-/

namespace A224705.P9163978680106452306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P9163978680106452306

namespace A224705

/-- `∩[A018252(n+1), A231878(n+1)]` -/
def P9163978680106452306.Spec : Prop :=
  ∀ n, (P9163978680106452306.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P5376674888153979657

`∩[A141468(n+1), A231878(n+1)]`
-/

namespace A224705.P5376674888153979657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P5376674888153979657

namespace A224705

/-- `∩[A141468(n+1), A231878(n+1)]` -/
def P5376674888153979657.Spec : Prop :=
  ∀ n, (P5376674888153979657.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P8686794015737867369

`∩[A060679(n+1), A231878(n+1)]`
-/

namespace A224705.P8686794015737867369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P8686794015737867369

namespace A224705

/-- `∩[A060679(n+1), A231878(n+1)]` -/
def P8686794015737867369.Spec : Prop :=
  ∀ n, (P8686794015737867369.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P3703656158915056601

`∩[A174891(n+1), A231878(n+1)]`
-/

namespace A224705.P3703656158915056601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P3703656158915056601

namespace A224705

/-- `∩[A174891(n+1), A231878(n+1)]` -/
def P3703656158915056601.Spec : Prop :=
  ∀ n, (P3703656158915056601.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P6164026593783386379

`∩[A179891(n+1), A231878(n+1)]`
-/

namespace A224705.P6164026593783386379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P6164026593783386379

namespace A224705

/-- `∩[A179891(n+1), A231878(n+1)]` -/
def P6164026593783386379.Spec : Prop :=
  ∀ n, (P6164026593783386379.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P10234203100981998325

`∩[A231878(n+1), A257586(n+1)]`
-/

namespace A224705.P10234203100981998325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P10234203100981998325

namespace A224705

/-- `∩[A231878(n+1), A257586(n+1)]` -/
def P10234203100981998325.Spec : Prop :=
  ∀ n, (P10234203100981998325.a n : ℤ) = A224705 (n + 1)

end A224705

/-! ## A224705.P9409271351390297900

`∩[A175526(n+1), A231878(n+1)]`
-/

namespace A224705.P9409271351390297900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224705.P9409271351390297900

namespace A224705

/-- `∩[A175526(n+1), A231878(n+1)]` -/
def P9409271351390297900.Spec : Prop :=
  ∀ n, (P9409271351390297900.a n : ℤ) = A224705 (n + 1)

end A224705

/-!
# A224708: The number of unordered partitions {a,b} of n such that a and b are composite.

The programs for A224708, there is no canonical definition to state claims against.
-/

/-! ## A224708.P4795279177647883362

`ceil(A331622(n+1)/2)`
-/

namespace A224708.P4795279177647883362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331622 (n + 1) : ℚ) / 2⌉

end

end A224708.P4795279177647883362

/-! ## A224708.P14128754846536718938

`A110654(A331622(n+1))`
-/

namespace A224708.P14128754846536718938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A331622 (n + 1)).toNat

end

end A224708.P14128754846536718938

/-! ## A224708.P4870079305527258240

`A004526(A331622(n+1)+1)`
-/

namespace A224708.P4870079305527258240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A331622 (n + 1) + 1).toNat

end

end A224708.P4870079305527258240

/-! ## A224708.P6894889072301621843

`A123108(A331622(n+1)+1)`
-/

namespace A224708.P6894889072301621843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A331622 (n + 1) + 1).toNat

end

end A224708.P6894889072301621843

/-! ## A224708.P18393411049143694432

`A028242(xor(1, A331622(n+1)))`
-/

namespace A224708.P18393411049143694432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A331622 (n + 1))).toNat

end

end A224708.P18393411049143694432

/-! ## A224708.P8266631489897129620

`A062610(n+1)-char[A018252(n+1)]`
-/

namespace A224708.P8266631489897129620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224708.P8266631489897129620

/-! ## A224708.P6541915025535714974

`A004526(A076608(n+1)-A107393(n))`
-/

namespace A224708.P6541915025535714974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076608 (n + 1) - A107393 n).toNat

end

end A224708.P6541915025535714974

/-!
# A224709: The number of unordered partitions {a,b} of the even numbers 2n such that a and b are composite.

The programs for A224709, there is no canonical definition to state claims against.
-/

/-! ## A224709.P13005742537943776842

`A334207(n+1)-A005171(2*n+1)`
-/

namespace A224709.P13005742537943776842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334207 (n + 1) - A005171 (2 * n + 1)

end

end A224709.P13005742537943776842

/-! ## A224709.P12316341642076637087

`A224708(2*(n+1))`
-/

namespace A224709.P12316341642076637087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (2 * (n + 1))

end

end A224709.P12316341642076637087

/-! ## A224709.P14306867542199662029

`ceil(A331622(2*(n+1))/2)`
-/

namespace A224709.P14306867542199662029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331622 (2 * (n + 1)) : ℚ) / 2⌉

end

end A224709.P14306867542199662029

/-! ## A224709.P2756289823426509251

`A224708(n+2+n)%(n+1)`
-/

namespace A224709.P2756289823426509251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224708 (n + 2 + n)) (n + 1 : ℤ)

end

end A224709.P2756289823426509251

/-! ## A224709.P13429858158452377206

`A110654(A331622(2*(n+1)))`
-/

namespace A224709.P13429858158452377206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A331622 (2 * (n + 1))).toNat

end

end A224709.P13429858158452377206

/-! ## A224709.P14262285992906786868

`A004526(A331622(2*(n+1))+1)`
-/

namespace A224709.P14262285992906786868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A331622 (2 * (n + 1)) + 1).toNat

end

end A224709.P14262285992906786868

/-! ## A224709.P10782881057969002757

`A123108(A331622(2*(n+1))+1)`
-/

namespace A224709.P10782881057969002757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A331622 (2 * (n + 1)) + 1).toNat

end

end A224709.P10782881057969002757

/-! ## A224709.P17873856531511885077

`A028242(xor(1, A331622(2*(n+1))))`
-/

namespace A224709.P17873856531511885077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A331622 (2 * (n + 1)))).toNat

end

end A224709.P17873856531511885077

/-! ## A224709.P8001843213733395445

`A062610(2*(n+1))-A005171(2*n+1)`
-/

namespace A224709.P8001843213733395445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (2 * (n + 1)) - A005171 (2 * n + 1)

end

end A224709.P8001843213733395445

/-! ## A224709.P7006139265649953761

`A010051(2*n+1)+A062610(2*(n+1))-1`
-/

namespace A224709.P7006139265649953761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1) + (A062610 (2 * (n + 1)) - 1)

end

end A224709.P7006139265649953761

/-! ## A224709.P6170885885494620001

`A171691(2*(n+1))-(A066247(2*n+1)+1)`
-/

namespace A224709.P6170885885494620001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (2 * (n + 1)) - (A066247 (2 * n + 1) + 1)

end

end A224709.P6170885885494620001

/-! ## A224709.P12446393951742103991

`A004526(A076608(2*(n+1))-A107393(2*n+1))`
-/

namespace A224709.P12446393951742103991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076608 (2 * (n + 1)) - A107393 (2 * n + 1)).toNat

end

end A224709.P12446393951742103991

/-! ## A224709.P16859923805670863648

`A171691(2*(n+1))-(A005171(2*n+1)+A005171(2*(n+1)))`
-/

namespace A224709.P16859923805670863648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (2 * (n + 1)) - (A005171 (2 * n + 1) + A005171 (2 * (n + 1)))

end

end A224709.P16859923805670863648

/-! ## A224709.P11525715388180741811

`A141100(n+1)+∑[char[2*n+3]]`
-/

namespace A224709.P11525715388180741811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A224709.P11525715388180741811

/-! ## A224709.P12975613236236583487

`A118759(A224708(Δ[lcm(n, n+1)]))`
-/

namespace A224709.P12975613236236583487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A224708 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A224709.P12975613236236583487

/-!
# A224710: The number of unordered partitions {a,b} of 2n-1 such that a and b are composite.

The programs for A224710, the canonical program `A224710.P16961705520595192506` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224710 has offset 1).

The definition of A224710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224710.P10976249511228627905

`∑[char[A153043(n+2)]]`
-/

namespace A224710.P10976249511228627905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224710.P10976249511228627905

namespace A224710

/-- `∑[char[A153043(n+2)]]` -/
def P10976249511228627905.Spec : Prop :=
  ∀ n, (P10976249511228627905.a n : ℤ) = A224710 (n + 1)

end A224710

/-! ## A224710.P16961705520595192506

`A210469((2*n)%(n+2)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A224710

/-- `A210469((2*n)%(n+2)+1)` -/
def P16961705520595192506.Spec : Prop :=
  ∀ n, P16961705520595192506.a n = A224710 (n + 1)

theorem P16961705520595192506.correct : P16961705520595192506.Spec := by
  intro n
  simp only [A224710, Nat.add_sub_cancel]

end A224710

/-! ## A224710.P1596507711278845832

`∑[A323162(abs(2*(2-n))+1)]`
-/

namespace A224710.P1596507711278845832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (|2 * (2 - (n : ℤ))| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224710.P1596507711278845832

namespace A224710

/-- `∑[A323162(abs(2*(2-n))+1)]` -/
def P1596507711278845832.Spec : Prop :=
  ∀ n, P1596507711278845832.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P3062700553790644485

`∑[char[lt[A006530(2*n+3), 2*n]+3]]`
-/

namespace A224710.P3062700553790644485
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 3)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224710.P3062700553790644485

namespace A224710

/-- `∑[char[lt[A006530(2*n+3), 2*n]+3]]` -/
def P3062700553790644485.Spec : Prop :=
  ∀ n, (P3062700553790644485.a n : ℤ) = A224710 (n + 1)

end A224710

/-! ## A224710.P6401703149364028459

`A226982(A004279(n+1))`
-/

namespace A224710.P6401703149364028459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226982 (A004279 (n + 1)).toNat

end

end A224710.P6401703149364028459

namespace A224710

/-- `A226982(A004279(n+1))` -/
def P6401703149364028459.Spec : Prop :=
  ∀ n, P6401703149364028459.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P6941940434130835373

`A224708(Δ[n²])`
-/

namespace A224710.P6941940434130835373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A224710.P6941940434130835373

namespace A224710

/-- `A224708(Δ[n²])` -/
def P6941940434130835373.Spec : Prop :=
  ∀ n, P6941940434130835373.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P15948365789984852961

`A331622(Δ[n²])/2`
-/

namespace A224710.P15948365789984852961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A224710.P15948365789984852961

namespace A224710

/-- `A331622(Δ[n²])/2` -/
def P15948365789984852961.Spec : Prop :=
  ∀ n, P15948365789984852961.a n = (A224710 (n + 1) : ℚ)

end A224710

/-! ## A224710.P3985560272085680599

`ceil(A331622(2*n+1)/2)`
-/

namespace A224710.P3985560272085680599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331622 (2 * n + 1) : ℚ) / 2⌉

end

end A224710.P3985560272085680599

namespace A224710

/-- `ceil(A331622(2*n+1)/2)` -/
def P3985560272085680599.Spec : Prop :=
  ∀ n, P3985560272085680599.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P6033654025063247507

`A224708(2*n+1)%(n+1)`
-/

namespace A224710.P6033654025063247507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224708 (2 * n + 1)) (n + 1 : ℤ)

end

end A224710.P6033654025063247507

namespace A224710

/-- `A224708(2*n+1)%(n+1)` -/
def P6033654025063247507.Spec : Prop :=
  ∀ n, P6033654025063247507.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P306300354499178898

`A004526(A331622(2*n+1))`
-/

namespace A224710.P306300354499178898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A331622 (2 * n + 1)).toNat

end

end A224710.P306300354499178898

namespace A224710

/-- `A004526(A331622(2*n+1))` -/
def P306300354499178898.Spec : Prop :=
  ∀ n, P306300354499178898.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P3277626681644644966

`A140106(A076608(2*n+1)+1)`
-/

namespace A224710.P3277626681644644966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A076608 (2 * n + 1) + 1).toNat

end

end A224710.P3277626681644644966

namespace A224710

/-- `A140106(A076608(2*n+1)+1)` -/
def P3277626681644644966.Spec : Prop :=
  ∀ n, P3277626681644644966.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P2274316641392815362

`A028242(A331622(2*n+1)+1)`
-/

namespace A224710.P2274316641392815362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A331622 (2 * n + 1) + 1).toNat

end

end A224710.P2274316641392815362

namespace A224710

/-- `A028242(A331622(2*n+1)+1)` -/
def P2274316641392815362.Spec : Prop :=
  ∀ n, P2274316641392815362.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P16825141139317756439

`A123108(A331622(2*n+1)+1)`
-/

namespace A224710.P16825141139317756439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A331622 (2 * n + 1) + 1).toNat

end

end A224710.P16825141139317756439

namespace A224710

/-- `A123108(A331622(2*n+1)+1)` -/
def P16825141139317756439.Spec : Prop :=
  ∀ n, P16825141139317756439.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P3134534160458323419

`A028310(A062610(2*n+1))-1`
-/

namespace A224710.P3134534160458323419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A062610 (2 * n + 1)).toNat - 1

end

end A224710.P3134534160458323419

namespace A224710

/-- `A028310(A062610(2*n+1))-1` -/
def P3134534160458323419.Spec : Prop :=
  ∀ n, P3134534160458323419.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P11093171184722432533

`A028310(A302479(2*n+1))-1`
-/

namespace A224710.P11093171184722432533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A302479 (2 * n + 1)).toNat - 1

end

end A224710.P11093171184722432533

namespace A224710

/-- `A028310(A302479(2*n+1))-1` -/
def P11093171184722432533.Spec : Prop :=
  ∀ n, P11093171184722432533.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P9231485371613146965

`A057427(n)*A224708(2*n+1)`
-/

namespace A224710.P9231485371613146965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A224708 (2 * n + 1)

end

end A224710.P9231485371613146965

namespace A224710

/-- `A057427(n)*A224708(2*n+1)` -/
def P9231485371613146965.Spec : Prop :=
  ∀ n, P9231485371613146965.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P7225472458485152213

`A059841(2*n)*A224708(2*n+1)`
-/

namespace A224710.P7225472458485152213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A224708 (2 * n + 1)

end

end A224710.P7225472458485152213

namespace A224710

/-- `A059841(2*n)*A224708(2*n+1)` -/
def P7225472458485152213.Spec : Prop :=
  ∀ n, P7225472458485152213.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P14234306644089946733

`A005171(2*(n+1))*A224708(2*n+1)`
-/

namespace A224710.P14234306644089946733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 1)) * A224708 (2 * n + 1)

end

end A224710.P14234306644089946733

namespace A224710

/-- `A005171(2*(n+1))*A224708(2*n+1)` -/
def P14234306644089946733.Spec : Prop :=
  ∀ n, P14234306644089946733.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P5508736519549389304

`A066247(2*(n+1))*A224708(2*n+1)`
-/

namespace A224710.P5508736519549389304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (2 * (n + 1)) * A224708 (2 * n + 1)

end

end A224710.P5508736519549389304

namespace A224710

/-- `A066247(2*(n+1))*A224708(2*n+1)` -/
def P5508736519549389304.Spec : Prop :=
  ∀ n, P5508736519549389304.a n = A224710 (n + 1)

end A224710

/-! ## A224710.P4094273364841059296

`A004526(A076608(2*n+1)-A107393(2*n))`
-/

namespace A224710.P4094273364841059296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076608 (2 * n + 1) - A107393 (2 * n)).toNat

end

end A224710.P4094273364841059296

namespace A224710

/-- `A004526(A076608(2*n+1)-A107393(2*n))` -/
def P4094273364841059296.Spec : Prop :=
  ∀ n, P4094273364841059296.a n = A224710 (n + 1)

end A224710

/-!
# A224712: The number of unordered partitions {a, b} of n such that a or b is composite and the other is prime.

The programs for A224712, there is no canonical definition to state claims against.
-/

/-! ## A224712.P18199906910583780824

`A062602(n+1)-char[A007918(n)]`
-/

namespace A224712.P18199906910583780824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224712.P18199906910583780824

/-! ## A224712.P9433265987683577693

`A062602(n+1)-char[A062584(n)]`
-/

namespace A224712.P9433265987683577693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224712.P9433265987683577693

/-! ## A224712.P1369406278223511237

`A062602(n+1)-char[A151800(n)]`
-/

namespace A224712.P1369406278223511237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224712.P1369406278223511237

/-! ## A224712.P17796603799228668468

`A062602(n+1)-and(1, A105700(n))`
-/

namespace A224712.P17796603799228668468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) - Int.land 1 (A105700 n)

end

end A224712.P17796603799228668468

/-! ## A224712.P14496289354796747517

`A062602(n+1)-char[A000040(n+1)]`
-/

namespace A224712.P14496289354796747517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224712.P14496289354796747517

/-! ## A224712.P8300709784709228726

`A062602(n+1)-char[A034694(n+1)]`
-/

namespace A224712.P8300709784709228726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224712.P8300709784709228726

/-!
# A224713: The number of unordered partitions {a, b} of the even numbers 2n such that a or b is composite and the other is prime.

The programs for A224713, there is no canonical definition to state claims against.
-/

/-! ## A224713.P13848015910978056132

`A291564(n+1)-A101264(n)`
-/

namespace A224713.P13848015910978056132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291564 (n + 1) - A101264 n

end

end A224713.P13848015910978056132

/-! ## A224713.P6193665974732965688

`A291564(n+1)-A010051(2*n+1)`
-/

namespace A224713.P6193665974732965688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291564 (n + 1) - A010051 (2 * n + 1)

end

end A224713.P6193665974732965688

/-! ## A224713.P17575992390997981101

`A291564(n+1)-A370482(2*n+1)`
-/

namespace A224713.P17575992390997981101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291564 (n + 1) - A370482 (2 * n + 1)

end

end A224713.P17575992390997981101

/-! ## A224713.P11253153829761104974

`n-(A224709(n+1)+A045917(n+1))`
-/

namespace A224713.P11253153829761104974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A224709 (n + 1) + A045917 (n + 1))

end

end A224713.P11253153829761104974

/-! ## A224713.P13820303939336558272

`A224712(2*(n+1))`
-/

namespace A224713.P13820303939336558272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (2 * (n + 1))

end

end A224713.P13820303939336558272

/-! ## A224713.P10928121326366844781

`A224712(n+2+n)%(n+1)`
-/

namespace A224713.P10928121326366844781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224712 (n + 2 + n)) (n + 1 : ℤ)

end

end A224713.P10928121326366844781

/-! ## A224713.P14068681190008141442

`A230980(2*n)-A073610(2*(n+1))`
-/

namespace A224713.P14068681190008141442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * n) - A073610 (2 * (n + 1))

end

end A224713.P14068681190008141442

/-! ## A224713.P6910169729947365577

`A062602(2*(n+1))-A010051(2*n+1)`
-/

namespace A224713.P6910169729947365577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (2 * (n + 1)) - A010051 (2 * n + 1)

end

end A224713.P6910169729947365577

/-! ## A224713.P13970633752672227236

`A005171(2*n+1)+A062602(2*(n+1))-1`
-/

namespace A224713.P13970633752672227236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * n + 1) + (A062602 (2 * (n + 1)) - 1)

end

end A224713.P13970633752672227236

/-! ## A224713.P4165430692303049241

`A062602(2*(n+1))-and(1, A105700(2*n+1))`
-/

namespace A224713.P4165430692303049241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (2 * (n + 1)) - Int.land 1 (A105700 (2 * n + 1))

end

end A224713.P4165430692303049241

/-! ## A224713.P2133441051705580200

`A062602(2*(n+1))+A230980(2*n)-A230980(2*n+1)`
-/

namespace A224713.P2133441051705580200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (2 * (n + 1)) + (A230980 (2 * n) - A230980 (2 * n + 1))

end

end A224713.P2133441051705580200

/-! ## A224713.P17722162735169438802

`A000720(2*n+1)-(A073610(2*(n+1))+A010051(2*n+1))`
-/

namespace A224713.P17722162735169438802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) - (A073610 (2 * (n + 1)) + A010051 (2 * n + 1))

end

end A224713.P17722162735169438802

/-! ## A224713.P11918497751883321410

`A062602(2*(n+1))-A061358(2*n+3)`
-/

namespace A224713.P11918497751883321410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (2 * (n + 1)) - A061358 (2 * n + 3)

end

end A224713.P11918497751883321410

/-!
# A224714: The number of unordered partitions {a,b} of the odd numbers 2n-1 such that one of a and b is composite and the other is prime.

The programs for A224714, there is no canonical definition to state claims against.
-/

/-! ## A224714.P15184151223658909718

`A224712(Δ[n²])`
-/

namespace A224714.P15184151223658909718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A224714.P15184151223658909718

/-! ## A224714.P11946218014767251565

`A062602(2*n+1)-char[1]`
-/

namespace A224714.P11946218014767251565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224714.P11946218014767251565

/-! ## A224714.P18286277579313992516

`xor(1, xor(1, A224712(2*n+1)))`
-/

namespace A224714.P18286277579313992516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A224712 (2 * n + 1)))

end

end A224714.P18286277579313992516

/-! ## A224714.P9972964740999291669

`A062602(n*(n+3)%(n+1)+1)`
-/

namespace A224714.P9972964740999291669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n * ((n + 3) % (n + 1)) + 1)

end

end A224714.P9972964740999291669

/-! ## A224714.P7906169599193018934

`A062602(A267872(n))`
-/

namespace A224714.P7906169599193018934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A267872 n).toNat

end

end A224714.P7906169599193018934

/-! ## A224714.P9441535509556964460

`A062602(A140139(n+1))`
-/

namespace A224714.P9441535509556964460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A140139 (n + 1)).toNat

end

end A224714.P9441535509556964460

/-! ## A224714.P8016027590686786072

`A062602(A163985(n+1))`
-/

namespace A224714.P8016027590686786072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A163985 (n + 1)).toNat

end

end A224714.P8016027590686786072

/-! ## A224714.P15486037484718603224

`A224712(2*n+1)+A010051(2*(n+2))`
-/

namespace A224714.P15486037484718603224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A224714.P15486037484718603224

/-! ## A224714.P17219285513498851988

`A062602(comp[(n+1)*gcd(2, A280193(n))+1]+1)`
-/

namespace A224714.P17219285513498851988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 2 (A280193 n) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A224714.P17219285513498851988

/-! ## A224714.P4964672265572070027

`A062602(2*n+1)+A007918(2*n)-A007918(2*n+1)`
-/

namespace A224714.P4964672265572070027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (2 * n + 1) + A007918 (2 * n) - A007918 (2 * n + 1)

end

end A224714.P4964672265572070027

/-! ## A224714.P16158623987648386159

`A062602(2*n+1)%A000032(n)`
-/

namespace A224714.P16158623987648386159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062602 (2 * n + 1)) (A000032 n)

end

end A224714.P16158623987648386159

/-!
# A224715: The number of unordered partitions {a,b} of prime(n) such that a or b is a nonnegative composite and the other is prime.

The programs for A224715, the canonical program `A224715.P6193958608171359175` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224715 has offset 1).

The definition of A224715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224715.P17571002384999953473

`A062302(n+1)-char[1]`
-/

namespace A224715.P17571002384999953473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224715.P17571002384999953473

namespace A224715

/-- `A062302(n+1)-char[1]` -/
def P17571002384999953473.Spec : Prop :=
  ∀ n, P17571002384999953473.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P305591351041760137

`n-2*A062301(n+1)-char[1]`
-/

namespace A224715.P305591351041760137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A062301 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224715.P305591351041760137

namespace A224715

/-- `n-2*A062301(n+1)-char[1]` -/
def P305591351041760137.Spec : Prop :=
  ∀ n, P305591351041760137.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P6193958608171359175

`A062302(A171526(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A224715

/-- `A062302(A171526(n+1))` -/
def P6193958608171359175.Spec : Prop :=
  ∀ n, P6193958608171359175.a n = A224715 (n + 1)

theorem P6193958608171359175.correct : P6193958608171359175.Spec := by
  intro n
  simp only [A224715, Nat.add_sub_cancel]

end A224715

/-! ## A224715.P2976122190159961485

`A062302(A060576(n)+n)`
-/

namespace A224715.P2976122190159961485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (A060576 n + (n : ℤ)).toNat

end

end A224715.P2976122190159961485

namespace A224715

/-- `A062302(A060576(n)+n)` -/
def P2976122190159961485.Spec : Prop :=
  ∀ n, P2976122190159961485.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P6055341733594106129

`A062302(A159075(n)+1+n)`
-/

namespace A224715.P6055341733594106129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (A159075 n + 1 + (n : ℤ)).toNat

end

end A224715.P6055341733594106129

namespace A224715

/-- `A062302(A159075(n)+1+n)` -/
def P6055341733594106129.Spec : Prop :=
  ∀ n, P6055341733594106129.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P9029621398810012048

`A062302(n+1)*A157928(n)`
-/

namespace A224715.P9029621398810012048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (n + 1) * A157928 n

end

end A224715.P9029621398810012048

namespace A224715

/-- `A062302(n+1)*A157928(n)` -/
def P9029621398810012048.Spec : Prop :=
  ∀ n, P9029621398810012048.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P7861208876927906217

`A062302(1-(A159075(n)-n))`
-/

namespace A224715.P7861208876927906217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (1 - (A159075 n - (n : ℤ))).toNat

end

end A224715.P7861208876927906217

namespace A224715

/-- `A062302(1-(A159075(n)-n))` -/
def P7861208876927906217.Spec : Prop :=
  ∀ n, P7861208876927906217.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P1938618104181945951

`A062302(n+1)*A179184(n)`
-/

namespace A224715.P1938618104181945951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062302 (n + 1) * A179184 n

end

end A224715.P1938618104181945951

namespace A224715

/-- `A062302(n+1)*A179184(n)` -/
def P1938618104181945951.Spec : Prop :=
  ∀ n, P1938618104181945951.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P4901587656181894822

`lcm(A062302(n+1), A081729(n))`
-/

namespace A224715.P4901587656181894822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062302 (n + 1)) (A081729 n)

end

end A224715.P4901587656181894822

namespace A224715

/-- `lcm(A062302(n+1), A081729(n))` -/
def P4901587656181894822.Spec : Prop :=
  ∀ n, (P4901587656181894822.a n : ℤ) = A224715 (n + 1)

end A224715

/-! ## A224715.P940506003627087287

`xor(A062302(n+1), A063524(n))`
-/

namespace A224715.P940506003627087287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062302 (n + 1)) (A063524 n)

end

end A224715.P940506003627087287

namespace A224715

/-- `xor(A062302(n+1), A063524(n))` -/
def P940506003627087287.Spec : Prop :=
  ∀ n, P940506003627087287.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P7430806337273567689

`A224714(A111333(n+1))`
-/

namespace A224715.P7430806337273567689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224714 (A111333 (n + 1)).toNat

end

end A224715.P7430806337273567689

namespace A224715

/-- `A224714(A111333(n+1))` -/
def P7430806337273567689.Spec : Prop :=
  ∀ n, P7430806337273567689.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P7830052216894008195

`A224714(A130291(n+1))`
-/

namespace A224715.P7830052216894008195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224714 (A130291 (n + 1)).toNat

end

end A224715.P7830052216894008195

namespace A224715

/-- `A224714(A130291(n+1))` -/
def P7830052216894008195.Spec : Prop :=
  ∀ n, P7830052216894008195.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P10742921181756454756

`A224714(A102781(n+1)+1)`
-/

namespace A224715.P10742921181756454756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224714 (A102781 (n + 1) + 1).toNat

end

end A224715.P10742921181756454756

namespace A224715

/-- `A224714(A102781(n+1)+1)` -/
def P10742921181756454756.Spec : Prop :=
  ∀ n, P10742921181756454756.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P501474445330494338

`A224712(A000040(n+1))`
-/

namespace A224715.P501474445330494338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (A000040 (n + 1)).toNat

end

end A224715.P501474445330494338

namespace A224715

/-- `A224712(A000040(n+1))` -/
def P501474445330494338.Spec : Prop :=
  ∀ n, P501474445330494338.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P4123321862499969287

`A224712(A006005(n+1))`
-/

namespace A224715.P4123321862499969287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (A006005 (n + 1)).toNat

end

end A224715.P4123321862499969287

namespace A224715

/-- `A224712(A006005(n+1))` -/
def P4123321862499969287.Spec : Prop :=
  ∀ n, P4123321862499969287.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P15222394484543546455

`A224712(A161847(n+1))`
-/

namespace A224715.P15222394484543546455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (A161847 (n + 1)).toNat

end

end A224715.P15222394484543546455

namespace A224715

/-- `A224712(A161847(n+1))` -/
def P15222394484543546455.Spec : Prop :=
  ∀ n, P15222394484543546455.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P6035440350835534710

`A224712(A008578(n+2))`
-/

namespace A224715.P6035440350835534710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (A008578 (n + 2)).toNat

end

end A224715.P6035440350835534710

namespace A224715

/-- `A224712(A008578(n+2))` -/
def P6035440350835534710.Spec : Prop :=
  ∀ n, P6035440350835534710.a n = A224715 (n + 1)

end A224715

/-! ## A224715.P16539514605268288244

`A062602(A171525(n+2))`
-/

namespace A224715.P16539514605268288244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A171525 (n + 2)).toNat

end

end A224715.P16539514605268288244

namespace A224715

/-- `A062602(A171525(n+2))` -/
def P16539514605268288244.Spec : Prop :=
  ∀ n, P16539514605268288244.a n = A224715 (n + 1)

end A224715

/-!
# A224716: Number of primes contained in the concatenations of the length-1 to length-n partial permutations of {1,..., n}.

The programs for A224716, there is no canonical definition to state claims against.
-/

/-! ## A224716.P10010542692169278844

`A164923(a(n-1))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A224716.P10010542692169278844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  A164923 (a (n - 1)).toNat

end

end A224716.P10010542692169278844

/-! ## A224716.P2984586394450023310

`A378086(A283177(n))`
-/

namespace A224716.P2984586394450023310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378086 (A283177 n).toNat

end

end A224716.P2984586394450023310

/-!
# A224717: Number of times the digit 4 appears in the first 10^n digits of Catalan's constant.

The programs for A224717, there is no canonical definition to state claims against.
-/

/-! ## A224717.P11235408795514642071

`A007310(∑[A000041(n)*A181067(n+1)])`
-/

namespace A224717.P11235408795514642071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A181067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224717.P11235408795514642071

/-!
# A224718: Primes p such that p^2 + 1 is not squarefree.

The programs for A224718, there is no canonical definition to state claims against.
-/

/-! ## A224718.P14499482599826824241

`p?[A049532(n+1)]`
-/

namespace A224718.P14499482599826824241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224718.P14499482599826824241

/-! ## A224718.P14293716243117843590

`p?[A080666(n+1)]`
-/

namespace A224718.P14293716243117843590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224718.P14293716243117843590

/-! ## A224718.P11483742331160486746

`p?[A383672(n+1)]`
-/

namespace A224718.P11483742331160486746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224718.P11483742331160486746

/-! ## A224718.P15613210114815371122

`filter[A049532(n+1), A010051(#)]`
-/

namespace A224718.P15613210114815371122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A224718.P15613210114815371122

/-! ## A224718.P8963697660654419444

`filter[A080666(n+1), A010051(#)]`
-/

namespace A224718.P8963697660654419444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A224718.P8963697660654419444

/-! ## A224718.P310237236895776204

`filter[A383672(n+1), A010051(#)]`
-/

namespace A224718.P310237236895776204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A224718.P310237236895776204

/-! ## A224718.P6636100415223179563

`filter[A383672(n+1), A069513(#)]`
-/

namespace A224718.P6636100415223179563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A224718.P6636100415223179563

/-! ## A224718.P6632769504340032869

`∩[A383672(n+1), A061345(n)]`
-/

namespace A224718.P6632769504340032869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P6632769504340032869

/-! ## A224718.P13808810152696756057

`∩[A000040(n+1), A049532(n+1)]`
-/

namespace A224718.P13808810152696756057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P13808810152696756057

/-! ## A224718.P1130193210945237540

`∩[A004139(n+1), A049532(n+1)]`
-/

namespace A224718.P1130193210945237540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P1130193210945237540

/-! ## A224718.P12853984617109386687

`∩[A006005(n+1), A049532(n+1)]`
-/

namespace A224718.P12853984617109386687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P12853984617109386687

/-! ## A224718.P1752677402742056309

`∩[A008578(n+1), A049532(n+1)]`
-/

namespace A224718.P1752677402742056309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P1752677402742056309

/-! ## A224718.P7940683736854583410

`∩[A000040(n+1), A080666(n+1)]`
-/

namespace A224718.P7940683736854583410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P7940683736854583410

/-! ## A224718.P16456642528737400730

`∩[A033946(n+1), A049532(n+1)]`
-/

namespace A224718.P16456642528737400730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P16456642528737400730

/-! ## A224718.P3718298957358020901

`∩[A004139(n+1), A080666(n+1)]`
-/

namespace A224718.P3718298957358020901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P3718298957358020901

/-! ## A224718.P9253357048049831949

`∩[A006005(n+1), A080666(n+1)]`
-/

namespace A224718.P9253357048049831949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P9253357048049831949

/-! ## A224718.P6136719586925198689

`∩[A008578(n+1), A080666(n+1)]`
-/

namespace A224718.P6136719586925198689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P6136719586925198689

/-! ## A224718.P131902164757308087

`∩[A045319(n+1), A049532(n+1)]`
-/

namespace A224718.P131902164757308087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P131902164757308087

/-! ## A224718.P2295273157302351938

`∩[A045344(n+1), A049532(n+1)]`
-/

namespace A224718.P2295273157302351938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224718.P2295273157302351938

/-!
# A224720: Number of (n+3) X (n+3) 0..2 matrices with each 4 X 4 subblock idempotent.

The programs for A224720, there is no canonical definition to state claims against.
-/

/-! ## A224720.P10376050388401063149

`A224728(∑[4*n]+1)`
-/

namespace A224720.P10376050388401063149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224720.P10376050388401063149

/-! ## A224720.P9711823075608625360

`lcm(2, A224728(A001844(n)))`
-/

namespace A224720.P9711823075608625360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224728 (A001844 n).toNat)

end

end A224720.P9711823075608625360

/-! ## A224720.P10618681053106527069

`A224728(A001844(n))+A185284(n)`
-/

namespace A224720.P10618681053106527069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A001844 n).toNat + A185284 n

end

end A224720.P10618681053106527069

/-! ## A224720.P4620081581446272271

`A224728(A001844(n))+A034538(n+1)`
-/

namespace A224720.P4620081581446272271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A001844 n).toNat + A034538 (n + 1)

end

end A224720.P4620081581446272271

/-! ## A224720.P9939206307014728028

`A224728(A001844(n))%A003416(n+1)`
-/

namespace A224720.P9939206307014728028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224728 (A001844 n).toNat) (A003416 (n + 1))

end

end A224720.P9939206307014728028

/-!
# A224721: Number of (n+3) X 4 0..2 matrices with each 4 X 4 subblock idempotent.

The programs for A224721, there is no canonical definition to state claims against.
-/

/-! ## A224721.P8853784031136889843

`A224728(∑[n]+1)`
-/

namespace A224721.P8853784031136889843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224721.P8853784031136889843

/-! ## A224721.P1802845691204311863

`or(char[1], A224728(A000124(n)))`
-/

namespace A224721.P1802845691204311863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224728 (A000124 n).toNat)

end

end A224721.P1802845691204311863

/-! ## A224721.P1140688903939361999

`lcm(A054977(n), A224728(A000124(n)))`
-/

namespace A224721.P1140688903939361999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A224728 (A000124 n).toNat)

end

end A224721.P1140688903939361999

/-! ## A224721.P8810226332631222915

`A007318(∑[n])*A224728(A000124(n))`
-/

namespace A224721.P8810226332631222915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A224728 (A000124 n).toNat

end

end A224721.P8810226332631222915

/-! ## A224721.P2526154003821126660

`char[A001057(n)]*A224728(A000124(n))`
-/

namespace A224721.P2526154003821126660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224728 (A000124 n).toNat

end

end A224721.P2526154003821126660

/-! ## A224721.P15221139923877069989

`char[A035043(n)]*A224728(A000124(n))`
-/

namespace A224721.P15221139923877069989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224728 (A000124 n).toNat

end

end A224721.P15221139923877069989

/-! ## A224721.P2967290141927595432

`char[A063946(n)]*A224728(A000124(n))`
-/

namespace A224721.P2967290141927595432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224728 (A000124 n).toNat

end

end A224721.P2967290141927595432

/-! ## A224721.P14959153509647364406

`char[A085170(n)]*A224728(A000124(n))`
-/

namespace A224721.P14959153509647364406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224728 (A000124 n).toNat

end

end A224721.P14959153509647364406

/-! ## A224721.P9872582162886259352

`A224728(A000124(n))+A000038(n+1)`
-/

namespace A224721.P9872582162886259352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A000124 n).toNat + A000038 (n + 1)

end

end A224721.P9872582162886259352

/-! ## A224721.P12951322317828918419

`A224728(A000124(n))+A000035(2*n)`
-/

namespace A224721.P12951322317828918419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A000124 n).toNat + A000035 (2 * n)

end

end A224721.P12951322317828918419

/-!
# A224722: Number of (n+3) X 5 0..2 matrices with each 4 X 4 subblock idempotent.

The programs for A224722, there is no canonical definition to state claims against.
-/

/-! ## A224722.P11535141027044644719

`A224728(∑[n+1]+2)`
-/

namespace A224722.P11535141027044644719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224722.P11535141027044644719

/-! ## A224722.P7938260873958456118

`and(-1, A224728(A000096(n+1)))`
-/

namespace A224722.P7938260873958456118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224728 (A000096 (n + 1)).toNat)

end

end A224722.P7938260873958456118

/-! ## A224722.P1532514680967383893

`abs(A033999(n)*A224728(A000096(n+1)))`
-/

namespace A224722.P1532514680967383893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A224728 (A000096 (n + 1)).toNat|

end

end A224722.P1532514680967383893

/-! ## A224722.P2598760816614319142

`A164660(n)²*A224728(A000096(n+1))`
-/

namespace A224722.P2598760816614319142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 n ^ 2 * A224728 (A000096 (n + 1)).toNat

end

end A224722.P2598760816614319142

/-! ## A224722.P8985664442804575210

`char[A028242(n)]*A224728(A000096(n+1))`
-/

namespace A224722.P8985664442804575210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224728 (A000096 (n + 1)).toNat

end

end A224722.P8985664442804575210

/-! ## A224722.P1151295273635437045

`A033999(2*n)*A224728(A000096(n+1))`
-/

namespace A224722.P1151295273635437045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A224728 (A000096 (n + 1)).toNat

end

end A224722.P1151295273635437045

/-! ## A224722.P10948125794542047313

`A007318(C(2, n))*A224728(A000096(n+1))`
-/

namespace A224722.P10948125794542047313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224728 (A000096 (n + 1)).toNat

end

end A224722.P10948125794542047313

/-! ## A224722.P1325534569129908793

`A224728(A000096(n+1))/A007318(C(3, n))`
-/

namespace A224722.P1325534569129908793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224728 (A000096 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A224722.P1325534569129908793

/-! ## A224722.P9527843772113978671

`A224728(A000096(n+1))+A008683(4*(n+1))`
-/

namespace A224722.P9527843772113978671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A000096 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A224722.P9527843772113978671

/-! ## A224722.P18025187180927991968

`A224728(A000096(n+1))/gcd(4, A000040(n+2))`
-/

namespace A224722.P18025187180927991968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224728 (A000096 (n + 1)).toNat : ℚ) / (Int.gcd 4 (A000040 (n + 2)) : ℚ)

end

end A224722.P18025187180927991968

/-!
# A224723: Number of (n+3) X 6 0..2 matrices with each 4 X 4 subblock idempotent.

The programs for A224723, there is no canonical definition to state claims against.
-/

/-! ## A224723.P5022944509848668561

`A224728(∑[n+2]+4)`
-/

namespace A224723.P5022944509848668561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224723.P5022944509848668561

/-! ## A224723.P11173212875900040938

`or(char[1], A224728(A167614(n+1)))`
-/

namespace A224723.P11173212875900040938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224728 (A167614 (n + 1)).toNat)

end

end A224723.P11173212875900040938

/-! ## A224723.P433280407251546449

`dr(A033999(n))*A224728(A167614(n+1))`
-/

namespace A224723.P433280407251546449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A033999 n) : ℤ) * A224728 (A167614 (n + 1)).toNat

end

end A224723.P433280407251546449

/-! ## A224723.P4565396496310407364

`char[A028242(n)]*A224728(A167614(n+1))`
-/

namespace A224723.P4565396496310407364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224728 (A167614 (n + 1)).toNat

end

end A224723.P4565396496310407364

/-! ## A224723.P6408681808550681202

`char[A064429(n)]*A224728(A167614(n+1))`
-/

namespace A224723.P6408681808550681202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224728 (A167614 (n + 1)).toNat

end

end A224723.P6408681808550681202

/-! ## A224723.P14731513612620709682

`∏{p}[n, A001221(#)]*A224728(A167614(n+1))`
-/

namespace A224723.P14731513612620709682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A224728 (A167614 (n + 1)).toNat

end

end A224723.P14731513612620709682

/-! ## A224723.P3962494372646523275

`A224728(A167614(n+1))+A008683(4*(n+1))`
-/

namespace A224723.P3962494372646523275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A167614 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A224723.P3962494372646523275

/-! ## A224723.P12276777593808228913

`∏{e}[A000040(n+1), #]*A224728(A167614(n+1))`
-/

namespace A224723.P12276777593808228913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A224728 (A167614 (n + 1)).toNat

end

end A224723.P12276777593808228913

/-!
# A224724: Number of (n+3) X 7 0..2 matrices with each 4 X 4 subblock idempotent.

The programs for A224724, there is no canonical definition to state claims against.
-/

/-! ## A224724.P11696766553253171128

`A224728(∑[n+3]+7)`
-/

namespace A224724.P11696766553253171128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224724.P11696766553253171128

/-! ## A224724.P5917592204001184534

`or(char[1], A224728(A052905(n)+9))`
-/

namespace A224724.P5917592204001184534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224728 (A052905 n + 9).toNat)

end

end A224724.P5917592204001184534

/-! ## A224724.P3679320430934503204

`or(char[1], A224728(A167614(n+2)+1))`
-/

namespace A224724.P3679320430934503204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224728 (A167614 (n + 2) + 1).toNat)

end

end A224724.P3679320430934503204

/-! ## A224724.P15863412110495440640

`char[A073195(n)]*A224728(A052905(n)+9)`
-/

namespace A224724.P15863412110495440640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073195 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224728 (A052905 n + 9).toNat

end

end A224724.P15863412110495440640

/-! ## A224724.P12555249740130109408

`char[A351702(n)]*A224728(A052905(n)+9)`
-/

namespace A224724.P12555249740130109408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351702 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A224728 (A052905 n + 9).toNat

end

end A224724.P12555249740130109408

/-! ## A224724.P12457006711958710209

`A007318(C(2, n))*A224728(A052905(n)+9)`
-/

namespace A224724.P12457006711958710209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224728 (A052905 n + 9).toNat

end

end A224724.P12457006711958710209

/-! ## A224724.P5289742669383727685

`A224728(A052905(n)+9)/A007318(C(n, 2))`
-/

namespace A224724.P5289742669383727685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224728 (A052905 n + 9).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A224724.P5289742669383727685

/-! ## A224724.P899394217544063963

`A224728(A052905(n)+9)+A008683(4*(n+1))`
-/

namespace A224724.P899394217544063963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A052905 n + 9).toNat + A008683 (4 * (n + 1))

end

end A224724.P899394217544063963

/-! ## A224724.P15946271584629665379

`A000041(C(2, n+2))*A224728(A052905(n)+9)`
-/

namespace A224724.P15946271584629665379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A224728 (A052905 n + 9).toNat

end

end A224724.P15946271584629665379

/-!
# A224725: Number of (n+3) X 8 0..2 matrices with each 4 X 4 subblock idempotent.

The programs for A224725, there is no canonical definition to state claims against.
-/

/-! ## A224725.P12444085755331679213

`A224728(∑[n+4]+11)`
-/

namespace A224725.P12444085755331679213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A224725.P12444085755331679213

/-! ## A224725.P2349703429046951644

`or(char[1], A224728(A000217(n+4)+5))`
-/

namespace A224725.P2349703429046951644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A224728 (A000217 (n + 4) + 5).toNat)

end

end A224725.P2349703429046951644

/-! ## A224725.P6244156266157860516

`A224728(A167499(n+3))+C(n, n+1)`
-/

namespace A224725.P6244156266157860516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A167499 (n + 3)).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A224725.P6244156266157860516

/-! ## A224725.P4439924673044803706

`A224728(A167499(n+3))%A224727(n+1)`
-/

namespace A224725.P4439924673044803706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224728 (A167499 (n + 3)).toNat) (A224727 (n + 1))

end

end A224725.P4439924673044803706

/-! ## A224725.P14358079290411780759

`A224728(A167499(n+3))+floor(A219180(n)/3)`
-/

namespace A224725.P14358079290411780759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A167499 (n + 3)).toNat + ⌊(A219180 n : ℚ) / 3⌋

end

end A224725.P14358079290411780759

/-! ## A224725.P9388634411902907004

`A224728(A167499(n+3))+A000038(2*(n+1))`
-/

namespace A224725.P9388634411902907004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A167499 (n + 3)).toNat + A000038 (2 * (n + 1))

end

end A224725.P9388634411902907004

/-! ## A224725.P8205973101471240928

`A224728(A167499(n+3))+A154272(3*n+2)`
-/

namespace A224725.P8205973101471240928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A167499 (n + 3)).toNat + A154272 (3 * n + 2)

end

end A224725.P8205973101471240928

/-! ## A224725.P4507157064561379684

`A007318(C(2, n))*A224728(A000217(n+4)+5)`
-/

namespace A224725.P4507157064561379684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A224728 (A000217 (n + 4) + 5).toNat

end

end A224725.P4507157064561379684

/-! ## A224725.P9797567109066686307

`lcm((-1)^A007318(n), A224728(A000217(n+4)+5))`
-/

namespace A224725.P9797567109066686307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A007318 n : ℤ))) (A224728 (A000217 (n + 4) + 5).toNat)

end

end A224725.P9797567109066686307

/-! ## A224725.P5553315930012929107

`A224728(A000217(n+4)+5)+A008683(4*(n+1))`
-/

namespace A224725.P5553315930012929107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A000217 (n + 4) + 5).toNat + A008683 (4 * (n + 1))

end

end A224725.P5553315930012929107

/-!
# A224726: Number of (n+3) X 9 0..2 matrices with each 4 X 4 subblock idempotent.

The programs for A224726, there is no canonical definition to state claims against.
-/

/-! ## A224726.P3236865150836337801

`A224728(∑[n+5]+16)`
-/

namespace A224726.P3236865150836337801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A224726.P3236865150836337801

/-!
# A224727: Number of (n+3) X 10 0..2 matrices with each 4 X 4 subblock idempotent.

The programs for A224727, there is no canonical definition to state claims against.
-/

/-! ## A224727.P10081811590061180689

`A224728(A167487(n+5))`
-/

namespace A224727.P10081811590061180689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A167487 (n + 5)).toNat

end

end A224727.P10081811590061180689

/-! ## A224727.P5685905759153014356

`A224728(A056119(n)+28)`
-/

namespace A224727.P5685905759153014356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A056119 n + 28).toNat

end

end A224727.P5685905759153014356

/-! ## A224727.P11723054042774330168

`A224728(A167499(n+5)+2)`
-/

namespace A224727.P11723054042774330168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A167499 (n + 5) + 2).toNat

end

end A224727.P11723054042774330168

/-! ## A224727.P2075656864344981995

`A224728(A167614(n+5)+4)`
-/

namespace A224727.P2075656864344981995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A167614 (n + 5) + 4).toNat

end

end A224727.P2075656864344981995

/-! ## A224727.P13935843714995499431

`A224728(A000124(n+6)+6)`
-/

namespace A224727.P13935843714995499431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A000124 (n + 6) + 6).toNat

end

end A224727.P13935843714995499431

/-! ## A224727.P8669553872808683490

`A224728(A000217(n+6)+7)`
-/

namespace A224727.P8669553872808683490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A000217 (n + 6) + 7).toNat

end

end A224727.P8669553872808683490

/-! ## A224727.P8928901610990650807

`A224728(A027379(n+4)+10)`
-/

namespace A224727.P8928901610990650807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A027379 (n + 4) + 10).toNat

end

end A224727.P8928901610990650807

/-! ## A224727.P6213036546935029018

`A224728(A046691(n+4)+11)`
-/

namespace A224727.P6213036546935029018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A046691 (n + 4) + 11).toNat

end

end A224727.P6213036546935029018

/-! ## A224727.P9884327105240040026

`A224728(A052905(n+3)+12)`
-/

namespace A224727.P9884327105240040026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A052905 (n + 3) + 12).toNat

end

end A224727.P9884327105240040026

/-! ## A224727.P7356168230402303715

`A224728(A055999(n+3)+13)`
-/

namespace A224727.P7356168230402303715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224728 (A055999 (n + 3) + 13).toNat

end

end A224727.P7356168230402303715

/-!
# A224729: Central terms of the triangle in A059283.

The programs for A224729, there is no canonical definition to state claims against.
-/

/-! ## A224729.P11714618048695513624

`A059283(∑[4*n])`
-/

namespace A224729.P11714618048695513624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059283 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224729.P11714618048695513624

/-! ## A224729.P14956431921135378418

`record[A059283(∑[A186731(n)])]`
-/

namespace A224729.P14956431921135378418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059283 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224729.P14956431921135378418

/-! ## A224729.P3284349020083495632

`or(A000007(n), A059283(A046092(n)))`
-/

namespace A224729.P3284349020083495632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A059283 (A046092 n).toNat)

end

end A224729.P3284349020083495632

/-! ## A224729.P14526696169193344886

`A057427(n+1)*A059283(A046092(n))`
-/

namespace A224729.P14526696169193344886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A059283 (A046092 n).toNat

end

end A224729.P14526696169193344886

/-!
# A224731: b(n+1) - b(n) + n where b(n) = A095114(n).

The programs for A224731, the canonical program `A224731.P83435940744742189` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224731 has offset 1).

The definition of A224731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224731.P18314558191354035580

`comp[A109512(n)]`
-/

namespace A224731.P18314558191354035580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A224731.P18314558191354035580

namespace A224731

/-- `comp[A109512(n)]` -/
def P18314558191354035580.Spec : Prop :=
  ∀ n, (P18314558191354035580.a n : ℤ) = A224731 (n + 1)

end A224731

/-! ## A224731.P18204836693318912892

`n+1+A001462(n+1)`
-/

namespace A224731.P18204836693318912892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001462 (n + 1)

end

end A224731.P18204836693318912892

namespace A224731

/-- `n+1+A001462(n+1)` -/
def P18204836693318912892.Spec : Prop :=
  ∀ n, P18204836693318912892.a n = A224731 (n + 1)

end A224731

/-! ## A224731.P83435940744742189

`Δ[A095114(n+1)+∑[n]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A224731

/-- `Δ[A095114(n+1)+∑[n]]` -/
def P83435940744742189.Spec : Prop :=
  ∀ n, P83435940744742189.a n = A224731 (n + 1)

theorem P83435940744742189.correct : P83435940744742189.Spec := by
  intro n
  simp only [A224731, Nat.add_sub_cancel]

end A224731

/-! ## A224731.P7299294132612992178

`A088517(n)+a(n-1)+1` with `a(0)=2`
-/

namespace A224731.P7299294132612992178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088517 n + a (n - 1) + 1

end

end A224731.P7299294132612992178

namespace A224731

/-- `A088517(n)+a(n-1)+1` -/
def P7299294132612992178.Spec : Prop :=
  ∀ n, P7299294132612992178.a n = A224731 (n + 1)

end A224731

/-! ## A224731.P10967672260639602729

`A104236(n+1)/(n+1)+n+1`
-/

namespace A224731.P10967672260639602729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104236 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A224731.P10967672260639602729

namespace A224731

/-- `A104236(n+1)/(n+1)+n+1` -/
def P10967672260639602729.Spec : Prop :=
  ∀ n, P10967672260639602729.a n = (A224731 (n + 1) : ℚ)

end A224731

/-! ## A224731.P7912418367343048705

`∑[A088517(A028310(n))+1]`
-/

namespace A224731.P7912418367343048705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224731.P7912418367343048705

namespace A224731

/-- `∑[A088517(A028310(n))+1]` -/
def P7912418367343048705.Spec : Prop :=
  ∀ n, P7912418367343048705.a n = A224731 (n + 1)

end A224731

/-! ## A224731.P12796980265293620307

`A020725(A001462(n+1))+n`
-/

namespace A224731.P12796980265293620307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A001462 (n + 1)).toNat + (n : ℤ)

end

end A224731.P12796980265293620307

namespace A224731

/-- `A020725(A001462(n+1))+n` -/
def P12796980265293620307.Spec : Prop :=
  ∀ n, P12796980265293620307.a n = A224731 (n + 1)

end A224731

/-! ## A224731.P4710927387301015373

`Δ[A001463(n+1)]-A088517(n+1)+1+n`
-/

namespace A224731.P4710927387301015373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088517 (n + 1) + 1 + (n : ℤ)

end

end A224731.P4710927387301015373

namespace A224731

/-- `Δ[A001463(n+1)]-A088517(n+1)+1+n` -/
def P4710927387301015373.Spec : Prop :=
  ∀ n, P4710927387301015373.a n = A224731 (n + 1)

end A224731

/-! ## A224731.P668188903046426257

`record[A328396(n)+A001462(A328396(n))]`
-/

namespace A224731.P668188903046426257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328396 n + A001462 (A328396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224731.P668188903046426257

namespace A224731

/-- `record[A328396(n)+A001462(A328396(n))]` -/
def P668188903046426257.Spec : Prop :=
  ∀ n, P668188903046426257.a n = A224731 (n + 1)

end A224731

/-! ## A224731.P4045373693270816711

`Δ[A109512(n+1)]+n`
-/

namespace A224731.P4045373693270816711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A224731.P4045373693270816711

namespace A224731

/-- `Δ[A109512(n+1)]+n` -/
def P4045373693270816711.Spec : Prop :=
  ∀ n, P4045373693270816711.a n = A224731 (n + 1)

end A224731

/-! ## A224731.P13457250799503234286

`A109512(n+2)-A095114(n+1)`
-/

namespace A224731.P13457250799503234286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (n + 2) - A095114 (n + 1)

end

end A224731.P13457250799503234286

namespace A224731

/-- `A109512(n+2)-A095114(n+1)` -/
def P13457250799503234286.Spec : Prop :=
  ∀ n, P13457250799503234286.a n = A224731 (n + 1)

end A224731

/-! ## A224731.P3960339363400120769

`record[A126759(n)+A001462(A126759(n))]`
-/

namespace A224731.P3960339363400120769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n + A001462 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224731.P3960339363400120769

namespace A224731

/-- `record[A126759(n)+A001462(A126759(n))]` -/
def P3960339363400120769.Spec : Prop :=
  ∀ n, P3960339363400120769.a n = A224731 (n + 1)

end A224731

/-! ## A224731.P4816513367353483205

`record[A154958(n)+A001462(A154958(n))]`
-/

namespace A224731.P4816513367353483205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n + A001462 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224731.P4816513367353483205

namespace A224731

/-- `record[A154958(n)+A001462(A154958(n))]` -/
def P4816513367353483205.Spec : Prop :=
  ∀ n, P4816513367353483205.a n = A224731 (n + 1)

end A224731

/-! ## A224731.P9498151103453188000

`record[A141256(n)+A001462(A141256(n))]`
-/

namespace A224731.P9498151103453188000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n + A001462 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224731.P9498151103453188000

namespace A224731

/-- `record[A141256(n)+A001462(A141256(n))]` -/
def P9498151103453188000.Spec : Prop :=
  ∀ n, P9498151103453188000.a n = A224731 (n + 1)

end A224731

/-!
# A224732: G.f.: exp( Sum_{n>=1} binomial(2*n,n)^n * x^n/n ).

The programs for A224732, there is no canonical definition to state claims against.
-/

/-! ## A224732.P9712449294444679152

`2^n*A200002(n)`
-/

namespace A224732.P9712449294444679152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A200002 n

end

end A224732.P9712449294444679152

/-!
# A224733: a(n) = binomial(2*n,n)^n.

The programs for A224733, there is no canonical definition to state claims against.
-/

/-! ## A224733.P4826078859778766316

`C(2*n, n)^n`
-/

namespace A224733.P4826078859778766316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n ^ n

end

end A224733.P4826078859778766316

/-! ## A224733.P8206303837000508566

`(∏[floor(abs(4*n-ϕ))]/n!)^n`
-/

namespace A224733.P8206303837000508566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.factorial n : ℚ)) ^ n

end

end A224733.P8206303837000508566

/-! ## A224733.P10360945123842086129

`sqrt(record[C(n, floor(n/2))²/(-1)^n])^n`
-/

namespace A224733.P10360945123842086129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ n

end

end A224733.P10360945123842086129

/-! ## A224733.P17967484173167189132

`record[a(n-1)/(floor(n/2)/n-1)]^n` with `a(0)=1`
-/

namespace A224733.P17967484173167189132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n

end

end A224733.P17967484173167189132

/-! ## A224733.P14981629365209717468

`A000984(n)^n`
-/

namespace A224733.P14981629365209717468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ n

end

end A224733.P14981629365209717468

/-!
# A224734: G.f.: exp( Sum_{n>=1} binomial(2*n,n)^2 * x^n/n ).

The programs for A224734, there is no canonical definition to state claims against.
-/

/-! ## A224734.P12308661109747618662

`∑[∑[A005180(A132847(n))]]`
-/

namespace A224734.P12308661109747618662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (A132847 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224734.P12308661109747618662

/-!
# A224737: Number of (n+1)X(n+1) 0..1 matrices with each 2X2 permanent equal.

The programs for A224737, there is no canonical definition to state claims against.
-/

/-! ## A224737.P10372359680936864656

`A224745((n+1)²+n²)`
-/

namespace A224737.P10372359680936864656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 ((n + 1) ^ 2 + n ^ 2)

end

end A224737.P10372359680936864656

/-! ## A224737.P12180222702612175319

`record[gcd(A114327(n), A224745(n+1))]`
-/

namespace A224737.P12180222702612175319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A224745 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224737.P12180222702612175319

/-! ## A224737.P8411838847776030602

`record[A077606(n+1)*A224745(n+1)]`
-/

namespace A224737.P8411838847776030602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A224745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224737.P8411838847776030602

/-! ## A224737.P15006047924496228063

`lcm(A033999(n), A224745(A001844(n)))`
-/

namespace A224737.P15006047924496228063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A224745 (A001844 n).toNat)

end

end A224737.P15006047924496228063

/-! ## A224737.P1299688440905392975

`A224745(A001844(n))/A001222(A000043(n+1))`
-/

namespace A224737.P1299688440905392975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224745 (A001844 n).toNat : ℚ) / (A001222 (A000043 (n + 1)).toNat : ℚ)

end

end A224737.P1299688440905392975

/-!
# A224738: Number of (n+1) X 2 0..1 matrices with each 2 X 2 permanent equal.

The programs for A224738, the canonical program `A224738.P9135199709558797852` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224738 has offset 1).

The definition of A224738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224738.P9135199709558797852

`abs(6*2^n-2)+A020695(n+1)²+3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A224738

/-- `abs(6*2^n-2)+A020695(n+1)²+3` -/
def P9135199709558797852.Spec : Prop :=
  ∀ n, P9135199709558797852.a n = A224738 (n + 1)

theorem P9135199709558797852.correct : P9135199709558797852.Spec := by
  intro n
  simp only [A224738, Nat.add_sub_cancel]

end A224738

/-! ## A224738.P17979353965165652785

`A181565(n+1)+A020701(n)²`
-/

namespace A224738.P17979353965165652785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 (n + 1) + A020701 n ^ 2

end

end A224738.P17979353965165652785

namespace A224738

/-- `A181565(n+1)+A020701(n)²` -/
def P17979353965165652785.Spec : Prop :=
  ∀ n, P17979353965165652785.a n = A224738 (n + 1)

end A224738

/-! ## A224738.P4038360718314167216

`A007283(n+1)+A020701(n)²+1`
-/

namespace A224738.P4038360718314167216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 1) + (A020701 n ^ 2 + 1)

end

end A224738.P4038360718314167216

namespace A224738

/-- `A007283(n+1)+A020701(n)²+1` -/
def P4038360718314167216.Spec : Prop :=
  ∀ n, P4038360718314167216.a n = A224738 (n + 1)

end A224738

/-! ## A224738.P15747385937870036301

`A181565(n+1)+A020695(n+1)²`
-/

namespace A224738.P15747385937870036301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 (n + 1) + A020695 (n + 1) ^ 2

end

end A224738.P15747385937870036301

namespace A224738

/-- `A181565(n+1)+A020695(n+1)²` -/
def P15747385937870036301.Spec : Prop :=
  ∀ n, P15747385937870036301.a n = A224738 (n + 1)

end A224738

/-! ## A224738.P10886086837024770945

`A004119(n+2)+Δ[A001654(n+3)]`
-/

namespace A224738.P10886086837024770945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (n + 2) + (f1 (n + 1) - f1 n)

end

end A224738.P10886086837024770945

namespace A224738

/-- `A004119(n+2)+Δ[A001654(n+3)]` -/
def P10886086837024770945.Spec : Prop :=
  ∀ n, P10886086837024770945.a n = A224738 (n + 1)

end A224738

/-! ## A224738.P15863673587114458159

`A003945(n+2)+A094967(n+2)*A094967(n+5)`
-/

namespace A224738.P15863673587114458159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 2) + A094967 (n + 2) * A094967 (n + 5)

end

end A224738.P15863673587114458159

namespace A224738

/-- `A003945(n+2)+A094967(n+2)*A094967(n+5)` -/
def P15863673587114458159.Spec : Prop :=
  ∀ n, P15863673587114458159.a n = A224738 (n + 1)

end A224738

/-!
# A224739: Number of (n+1) X 3 0..1 matrices with each 2 X 2 permanent equal.

The programs for A224739, there is no canonical definition to state claims against.
-/

/-! ## A224739.P12381919276850849618

`A224745(∑[n+1]+2)`
-/

namespace A224739.P12381919276850849618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224739.P12381919276850849618

/-! ## A224739.P10387149350150584760

`record[A224745(A130270(n+1)+2)]`
-/

namespace A224739.P10387149350150584760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224739.P10387149350150584760

/-! ## A224739.P11082687085441510590

`record[root(A224745(n+2), A074909(n))]`
-/

namespace A224739.P11082687085441510590
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224745 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224739.P11082687085441510590

/-! ## A224739.P18040094525613892530

`record[gcd(A002262(n), A224745(n+2))]`
-/

namespace A224739.P18040094525613892530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A224745 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224739.P18040094525613892530

/-! ## A224739.P11314008930845781606

`record[A224745(Δ[A003453(n+5)])]`
-/

namespace A224739.P11314008930845781606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224739.P11314008930845781606

/-!
# A224740: Number of (n+1) X 4 0..1 matrices with each 2 X 2 permanent equal.

The programs for A224740, there is no canonical definition to state claims against.
-/

/-! ## A224740.P10050020416834045918

`A224745(∑[n+2]+4)`
-/

namespace A224740.P10050020416834045918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224740.P10050020416834045918

/-! ## A224740.P2201554683662088771

`or(1, A224745(A167614(n+1)))`
-/

namespace A224740.P2201554683662088771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A224745 (A167614 (n + 1)).toNat)

end

end A224740.P2201554683662088771

/-! ## A224740.P8633184530095267356

`A224745(A167614(n+1))+A185284(n)`
-/

namespace A224740.P8633184530095267356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A167614 (n + 1)).toNat + A185284 n

end

end A224740.P8633184530095267356

/-! ## A224740.P6369758196499826233

`lcm(A057077(n), A224745(A167614(n+1)))`
-/

namespace A224740.P6369758196499826233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A224745 (A167614 (n + 1)).toNat)

end

end A224740.P6369758196499826233

/-! ## A224740.P2826069697326276750

`A224745(A167614(n+1))+A112802(n+1)`
-/

namespace A224740.P2826069697326276750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A167614 (n + 1)).toNat + A112802 (n + 1)

end

end A224740.P2826069697326276750

/-!
# A224741: Number of (n+1)X5 0..1 matrices with each 2X2 permanent equal.

The programs for A224741, there is no canonical definition to state claims against.
-/

/-! ## A224741.P754691277442940480

`A224745(A374004(n+1))`
-/

namespace A224741.P754691277442940480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A374004 (n + 1)).toNat

end

end A224741.P754691277442940480

/-! ## A224741.P15076823102478530030

`A224745(A052905(n)+9)`
-/

namespace A224741.P15076823102478530030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A052905 n + 9).toNat

end

end A224741.P15076823102478530030

/-! ## A224741.P12528448786258004487

`A224745(A167614(n+2)+1)`
-/

namespace A224741.P12528448786258004487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A167614 (n + 2) + 1).toNat

end

end A224741.P12528448786258004487

/-! ## A224741.P12634818585451477486

`A224745(Δ[A264443(n)-n²])`
-/

namespace A224741.P12634818585451477486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (f1 (n + 1) - f1 n).toNat

end

end A224741.P12634818585451477486

/-! ## A224741.P3177786476818266892

`A224745(Δ[A023545(n+1)-n²])`
-/

namespace A224741.P3177786476818266892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (f1 (n + 1) - f1 n).toNat

end

end A224741.P3177786476818266892

/-!
# A224742: Number of (n+1) X 6 0..1 matrices with each 2 X 2 permanent equal.

The programs for A224742, there is no canonical definition to state claims against.
-/

/-! ## A224742.P88394973235652051

`A224745(A374005(n+1))`
-/

namespace A224742.P88394973235652051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A374005 (n + 1)).toNat

end

end A224742.P88394973235652051

/-! ## A224742.P9825765711658449539

`A224745(A155212(n)+13)`
-/

namespace A224742.P9825765711658449539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A155212 n + 13).toNat

end

end A224742.P9825765711658449539

/-! ## A224742.P7425511271734935679

`A224745(Δ[A264443(n)])`
-/

namespace A224742.P7425511271734935679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (f1 (n + 1) - f1 n).toNat

end

end A224742.P7425511271734935679

/-! ## A224742.P17723660033524563782

`A224745(eq[2, A092921(n)])`
-/

namespace A224742.P17723660033524563782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224742.P17723660033524563782

/-! ## A224742.P10635613534610179862

`A224745(eq[4, A193592(n)])`
-/

namespace A224742.P10635613534610179862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224742.P10635613534610179862

/-!
# A224743: Number of (n+1)X7 0..1 matrices with each 2X2 permanent equal.

The programs for A224743, there is no canonical definition to state claims against.
-/

/-! ## A224743.P7105512613493358217

`A224745(A374007(n+1))`
-/

namespace A224743.P7105512613493358217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A374007 (n + 1)).toNat

end

end A224743.P7105512613493358217

/-! ## A224743.P17594061781061063627

`A224745(Δ[A111396(n)]+9)`
-/

namespace A224743.P17594061781061063627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (f1 (n + 1) - f1 n + 9).toNat

end

end A224743.P17594061781061063627

/-! ## A224743.P9764893358007915313

`A224745(Δ[A264443(n)]+10)`
-/

namespace A224743.P9764893358007915313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (f1 (n + 1) - f1 n + 10).toNat

end

end A224743.P9764893358007915313

/-! ## A224743.P7222485937290831931

`A224745(A000217(n+5)+6)`
-/

namespace A224743.P7222485937290831931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A000217 (n + 5) + 6).toNat

end

end A224743.P7222485937290831931

/-! ## A224743.P5430205885717959597

`A224745(Δ[A023545(n+1)]+10)`
-/

namespace A224743.P5430205885717959597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (f1 (n + 1) - f1 n + 10).toNat

end

end A224743.P5430205885717959597

/-!
# A224744: Number of (n+1)X8 0..1 matrices with each 2X2 permanent equal.

The programs for A224744, there is no canonical definition to state claims against.
-/

/-! ## A224744.P15482377101717109769

`A224745(A374008(n+1))`
-/

namespace A224744.P15482377101717109769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A374008 (n + 1)).toNat

end

end A224744.P15482377101717109769

/-! ## A224744.P3308962452261230685

`A224745(eq[11, A066657(n)])`
-/

namespace A224744.P3308962452261230685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224744.P3308962452261230685

/-! ## A224744.P2663841651240394970

`A224745(eq[6, A002262(n)]+1)`
-/

namespace A224744.P2663841651240394970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A224744.P2663841651240394970

/-! ## A224744.P8027573869160606199

`A224745(eq[8, A131818(n+1)])`
-/

namespace A224744.P8027573869160606199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224744.P8027573869160606199

/-! ## A224744.P11463601929342045538

`A224745(A055999(n+4))`
-/

namespace A224744.P11463601929342045538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224745 (A055999 (n + 4)).toNat

end

end A224744.P11463601929342045538

/-!
# A224746: a(n) = (Product_{d=1..n-1} (2^d-1)) mod (2^n-1).

The programs for A224746, there is no canonical definition to state claims against.
-/

/-! ## A224746.P7176012257107060275

`∏[or(1, 2^n-1)]%∑[2^n]`
-/

namespace A224746.P7176012257107060275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A224746.P7176012257107060275

/-! ## A224746.P3181098611028834988

`A005329(n)%∑[2^n]`
-/

namespace A224746.P3181098611028834988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005329 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A224746.P3181098611028834988

/-! ## A224746.P18374823130129925337

`∏[A255047(n)]%A126646(n)`
-/

namespace A224746.P18374823130129925337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A126646 n)

end

end A224746.P18374823130129925337

/-! ## A224746.P6346194230019444529

`A203011(n+1)%A126646(n)`
-/

namespace A224746.P6346194230019444529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203011 (n + 1)) (A126646 n)

end

end A224746.P6346194230019444529

/-! ## A224746.P5784455377148141506

`∏[A095121(A028310(n))]%A126646(n)`
-/

namespace A224746.P5784455377148141506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A126646 n)

end

end A224746.P5784455377148141506

/-!
# A224747: Number of lattice paths from (0,0) to (n,0) that do not go below the x-axis and consist of steps U=(1,1), D=(1,-1) and H=(1,0), where H-steps are only allowed if y=1.

The programs for A224747, there is no canonical definition to state claims against.
-/

/-! ## A224747.P13894644664249429796

`A274115(n)-a(n-1)` with `a(0)=1`
-/

namespace A224747.P13894644664249429796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274115 n - a (n - 1)

end

end A224747.P13894644664249429796

/-! ## A224747.P3728345176897352675

`A274112(2*(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A224747.P3728345176897352675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274112 (2 * ((n : ℤ) - 1)).toNat - a (n - 1)

end

end A224747.P3728345176897352675

/-! ## A224747.P10940651308416619064

`A274112(comp[2*(n+2)])+A159075(n)`
-/

namespace A224747.P10940651308416619064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A159075 n

end

end A224747.P10940651308416619064

/-! ## A224747.P5408440861560023272

`A274112(2*n+1)-Δ[A274112(2*n)]`
-/

namespace A224747.P5408440861560023272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A224747.P5408440861560023272

/-! ## A224747.P12002339524552661454

`A329702(A087051(n))-A000045(n)`
-/

namespace A224747.P12002339524552661454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329702 (A087051 n).toNat - A000045 n

end

end A224747.P12002339524552661454

/-!
# A224748: Given n-th prime p, a(n) = number of primes of the form p + q - 1 where q is any prime < p.

The programs for A224748, there is no canonical definition to state claims against.
-/

/-! ## A224748.P1981894774808547947

`A202472(A130290(n+1))`
-/

namespace A224748.P1981894774808547947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202472 (A130290 (n + 1)).toNat

end

end A224748.P1981894774808547947

/-! ## A224748.P14309277689323456198

`A202472(A130291(n+1)-1)`
-/

namespace A224748.P14309277689323456198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202472 (A130291 (n + 1) - 1).toNat

end

end A224748.P14309277689323456198

/-! ## A224748.P7799969720214008760

`A092953(A006093(n+1))`
-/

namespace A224748.P7799969720214008760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A006093 (n + 1)).toNat

end

end A224748.P7799969720214008760

/-! ## A224748.P9268882122663841814

`A092953(A156037(n+1))`
-/

namespace A224748.P9268882122663841814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A156037 (n + 1)).toNat

end

end A224748.P9268882122663841814

/-! ## A224748.P8436413030837680865

`A092953(record[A000010(n+1)])`
-/

namespace A224748.P8436413030837680865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A224748.P8436413030837680865

/-! ## A224748.P17603845571534471625

`A092953(A040976(n+1)+1)`
-/

namespace A224748.P17603845571534471625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A040976 (n + 1) + 1).toNat

end

end A224748.P17603845571534471625

/-! ## A224748.P6965410970942452185

`A092953(A000040(n+1)-1)`
-/

namespace A224748.P6965410970942452185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A000040 (n + 1) - 1).toNat

end

end A224748.P6965410970942452185

/-! ## A224748.P631126227421438092

`A092953(A008578(n+2)-1)`
-/

namespace A224748.P631126227421438092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A008578 (n + 2) - 1).toNat

end

end A224748.P631126227421438092

/-! ## A224748.P6488660073918297517

`A092953(A008864(n+1)-2)`
-/

namespace A224748.P6488660073918297517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A008864 (n + 1) - 2).toNat

end

end A224748.P6488660073918297517

/-! ## A224748.P9784150059738133591

`A092953(A028815(n+1)-2)`
-/

namespace A224748.P9784150059738133591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A028815 (n + 1) - 2).toNat

end

end A224748.P9784150059738133591

/-! ## A224748.P11984372970035094272

`A092953(A175216(n+1)-2)`
-/

namespace A224748.P11984372970035094272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A175216 (n + 1) - 2).toNat

end

end A224748.P11984372970035094272

/-! ## A224748.P13859394770212156342

`A092953(A299763(n+2)-2)`
-/

namespace A224748.P13859394770212156342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A299763 (n + 2) - 2).toNat

end

end A224748.P13859394770212156342

/-! ## A224748.P4615360537296504891

`A092953(eq[2, A000005(n+1)])`
-/

namespace A224748.P4615360537296504891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224748.P4615360537296504891

/-! ## A224748.P12261818691021205539

`A092953(A014689(n+1)+n)`
-/

namespace A224748.P12261818691021205539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A014689 (n + 1) + (n : ℤ)).toNat

end

end A224748.P12261818691021205539

/-! ## A224748.P13815618782106556532

`A092953(record[A006530(n+2)-1])`
-/

namespace A224748.P13815618782106556532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A224748.P13815618782106556532

/-! ## A224748.P7842914920722450196

`A092953(record[A014963(n+2)-1])`
-/

namespace A224748.P7842914920722450196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A224748.P7842914920722450196

/-! ## A224748.P14374185543995873650

`A092953(record[A020639(n+2)-1])`
-/

namespace A224748.P14374185543995873650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A224748.P14374185543995873650

/-! ## A224748.P6684322439132728891

`A092953(A014692(n+1)-1+n)`
-/

namespace A224748.P6684322439132728891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A014692 (n + 1) - 1 + (n : ℤ)).toNat

end

end A224748.P6684322439132728891

/-! ## A224748.P9722160736110133155

`A092953(A018252(A014689(n+1)))`
-/

namespace A224748.P9722160736110133155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A018252 (A014689 (n + 1)).toNat).toNat

end

end A224748.P9722160736110133155

/-! ## A224748.P10625399721961718233

`A092953(A000010(A008578(n+2)))`
-/

namespace A224748.P10625399721961718233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A000010 (A008578 (n + 2)).toNat).toNat

end

end A224748.P10625399721961718233

/-!
# A224749: Vauban's sequence: a(n)=0 if n<=0, a(1)=1; thereafter a(n) = 3*a(n-1) + 6*a(n-2) + 6*a(n-3) + 6*a(n-4) + 6*a(n-5).

The programs for A224749, the canonical program `A224749.P2352427245304416054` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224749 has offset 0).

The definition of A224749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224749.P2352427245304416054

`3*a(n-1)+6*a(n-2)+6*a(n-3)+6*a(n-4)+6*a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=15, a(4)=69`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224749

/-- `3*a(n-1)+6*a(n-2)+6*a(n-3)+6*a(n-4)+6*a(n-5)` -/
def P2352427245304416054.Spec : Prop :=
  ∀ n, (P2352427245304416054.a n : ℤ) = A224749 n

theorem P2352427245304416054.correct : P2352427245304416054.Spec := by
  intro n
  simp only [A224749]

end A224749

/-! ## A224749.P2722141078673792159

`A160706(Δ[4*a(n-1)+3*a(n-2)])` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A224749.P2722141078673792159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n f1 =>
  4 * f1 (n - 1) + 3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160706 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A224749.P2722141078673792159

namespace A224749

/-- `A160706(Δ[4*a(n-1)+3*a(n-2)])` -/
def P2722141078673792159.Spec : Prop :=
  ∀ n, P2722141078673792159.a n = A224749 n

end A224749

/-!
# A224752: a(1)=1; thereafter a(n) = smallest number m such that a(n-1)+m = (a(n-1) followed by the leading digit of m).

The programs for A224752, there is no canonical definition to state claims against.
-/

/-! ## A224752.P8317995858388687385

`gcd(A000038(n), A224761(abs(1-n)+1))`
-/

namespace A224752.P8317995858388687385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224761 (|1 - (n : ℤ)| + 1).toNat)

end

end A224752.P8317995858388687385

/-! ## A224752.P14923397289652514412

`A224761(A000007(n)+n)%A224754(n+1)`
-/

namespace A224752.P14923397289652514412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224761 (A000007 n + (n : ℤ)).toNat) (A224754 (n + 1))

end

end A224752.P14923397289652514412

/-! ## A224752.P14091034535142768960

`A224761(A000007(n)+n)^(A013918(n+1)%2)`
-/

namespace A224752.P14091034535142768960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224761 (A000007 n + (n : ℤ)).toNat : ℚ) ^ (Int.tmod (A013918 (n + 1)) 2 : ℤ)

end

end A224752.P14091034535142768960

/-! ## A224752.P6624865209425774614

`A224761(A028310(n))-A198954(A323294(n+6)-5)`
-/

namespace A224752.P6624865209425774614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224761 (A028310 n).toNat - A198954 (A323294 (n + 6) - 5).toNat

end

end A224752.P6624865209425774614

/-! ## A224752.P16317677504596661603

`A224761(A000007(n)+n)^A001222(A006005(n+1))`
-/

namespace A224752.P16317677504596661603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224761 (A000007 n + (n : ℤ)).toNat : ℚ) ^ (A001222 (A006005 (n + 1)).toNat : ℤ)

end

end A224752.P16317677504596661603

/-! ## A224752.P1687094503134366427

`A224761(A000007(n)+n)^A246277(A020639(n+1))`
-/

namespace A224752.P1687094503134366427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224761 (A000007 n + (n : ℤ)).toNat : ℚ) ^ (A246277 (A020639 (n + 1)).toNat : ℤ)

end

end A224752.P1687094503134366427

/-! ## A224752.P14616127158844790889

`A224761(gcd(n*a(n-1), A028310(n)))` with `a(0)=1`
-/

namespace A224752.P14616127158844790889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A224761 (Int.gcd ((n : ℤ) * a (n - 1)) (A028310 n))

end

end A224752.P14616127158844790889

/-! ## A224752.P5409315124892297851

`A224761(A028310(n))%A224760(n+1)`
-/

namespace A224752.P5409315124892297851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224761 (A028310 n).toNat) (A224760 (n + 1))

end

end A224752.P5409315124892297851

/-! ## A224752.P1560783112221886856

`A224761(abs(1-n)+1)%A020522(A114571(n+1))`
-/

namespace A224752.P1560783112221886856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224761 (|1 - (n : ℤ)| + 1).toNat) (A020522 (A114571 (n + 1)).toNat)

end

end A224752.P1560783112221886856

/-!
# A224753: a(2)=2; thereafter a(n) = smallest number m such that a(n-1)+m = (a(n-1) followed by the leading digit of m).

The programs for A224753, there is no canonical definition to state claims against.
-/

/-! ## A224753.P6877123473037404349

`A054977(n!)+9*a(n-1)` with `a(0)=2`
-/

namespace A224753.P6877123473037404349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A054977 (Nat.factorial n) + 9 * a (n - 1)

end

end A224753.P6877123473037404349

/-! ## A224753.P3409987052114815388

`A057427(n!)+9*a(n-1)` with `a(0)=2`
-/

namespace A224753.P3409987052114815388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A057427 (Nat.factorial n) + 9 * a (n - 1)

end

end A224753.P3409987052114815388

/-! ## A224753.P17339115681094330890

`∑[9^n]+9^A004902(n+1)`
-/

namespace A224753.P17339115681094330890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (9 : ℚ) ^ (A004902 (n + 1) : ℤ)

end

end A224753.P17339115681094330890

/-! ## A224753.P7159762236664030636

`record[(9*a(n-1)+1)*A328306(n)]` with `a(0)=2`
-/

namespace A224753.P7159762236664030636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (9 * f1 (n - 1) + 1) * A328306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224753.P7159762236664030636

/-!
# A224754: a(2)=3; thereafter a(n) = smallest number m such that a(n-1)+m = (a(n-1) followed by the leading digit of m).

The programs for A224754, there is no canonical definition to state claims against.
-/

/-! ## A224754.P4037809726281756929

`A088227(9^n)+1`
-/

namespace A224754.P4037809726281756929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088227 (9 ^ n) + 1

end

end A224754.P4037809726281756929

/-!
# A224755: a(2)=4; thereafter a(n) = smallest number m such that a(n-1)+m = (a(n-1) followed by the leading digit of m).

The programs for A224755, there is no canonical definition to state claims against.
-/

/-! ## A224755.P5821894195605378028

`A224756(n+1)-A017173(A002452(n))`
-/

namespace A224755.P5821894195605378028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224756 (n + 1) - A017173 (A002452 n).toNat

end

end A224755.P5821894195605378028

/-!
# A224756: a(2)=5; thereafter a(n) = smallest number m such that a(n-1)+m = (a(n-1) followed by the leading digit of m).

The programs for A224756, there is no canonical definition to state claims against.
-/

/-! ## A224756.P14081715377130016564

`A224755(n+1)+A017173(A002452(n))`
-/

namespace A224756.P14081715377130016564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224755 (n + 1) + A017173 (A002452 n).toNat

end

end A224756.P14081715377130016564

/-!
# A224757: a(2)=6; thereafter a(n) = smallest number m such that a(n-1)+m = (a(n-1) followed by the leading digit of m).

The programs for A224757, there is no canonical definition to state claims against.
-/

/-! ## A224757.P5945110237997206333

`A224758(n+1)-A017173(A002452(n))`
-/

namespace A224757.P5945110237997206333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224758 (n + 1) - A017173 (A002452 n).toNat

end

end A224757.P5945110237997206333

/-!
# A224758: a(2)=7; thereafter a(n) = smallest number m such that a(n-1)+m = (a(n-1) followed by the leading digit of m).

The programs for A224758, there is no canonical definition to state claims against.
-/

/-! ## A224758.P17399975478704398070

`A224757(n+1)+A017173(A002452(n))`
-/

namespace A224758.P17399975478704398070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224757 (n + 1) + A017173 (A002452 n).toNat

end

end A224758.P17399975478704398070

/-!
# A224759: a(2)=8; thereafter a(n) = smallest number m such that a(n-1)+m = (a(n-1) followed by the leading digit of m).

The programs for A224759, there is no canonical definition to state claims against.
-/

/-! ## A224759.P5977630188861891950

`A224760(n+1)-A248375(A001019(n))`
-/

namespace A224759.P5977630188861891950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224760 (n + 1) - A248375 (A001019 n).toNat

end

end A224759.P5977630188861891950

/-!
# A224760: a(2)=9; thereafter a(n) = smallest number m such that a(n-1)+m = (a(n-1) followed by the leading digit of m).

The programs for A224760, there is no canonical definition to state claims against.
-/

/-! ## A224760.P14168133989478926183

`A248375(A001019(n))+A224759(n+1)`
-/

namespace A224760.P14168133989478926183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A001019 n).toNat + A224759 (n + 1)

end

end A224760.P14168133989478926183

/-!
# A224761: a(2)=10; thereafter a(n) = smallest number m such that a(n-1)+m = (a(n-1) followed by the leading digit of m).

The programs for A224761, there is no canonical definition to state claims against.
-/

/-! ## A224761.P7198236277211393794

`A224752(n+2)`
-/

namespace A224761.P7198236277211393794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224752 (n + 2)

end

end A224761.P7198236277211393794

/-! ## A224761.P6259915342004361946

`record[A224752(A012257(n))]`
-/

namespace A224761.P6259915342004361946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224752 (A012257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224761.P6259915342004361946

/-! ## A224761.P10020077658342357445

`record[A224752(abs(n-A000038(n)))]`
-/

namespace A224761.P10020077658342357445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224752 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224761.P10020077658342357445

/-! ## A224761.P7931025680315836608

`record[A224752(A059126(∑[(-1)^(n%3)]))]`
-/

namespace A224761.P7931025680315836608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224752 (A059126 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224761.P7931025680315836608

/-! ## A224761.P10106001447713652460

`record[A224752(A085058(n))]`
-/

namespace A224761.P10106001447713652460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224752 (A085058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224761.P10106001447713652460

/-!
# A224762: Define a sequence of rationals by S(1)=1; for n>=1, write S(1),...,S(n) as XY^k, Y nonempty, where the fractional exponent k is maximized, and set S(n+1)=k; sequence gives numerators of S(1), S(2), ...

The programs for A224762, there is no canonical definition to state claims against.
-/

/-! ## A224762.P12200770416887340509

`A325770(n*A293718(n)+2)`
-/

namespace A224762.P12200770416887340509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 ((n : ℤ) * A293718 n + 2).toNat

end

end A224762.P12200770416887340509

/-! ## A224762.P6534910539526177263

`A091916(3*n+4)%Δ[A350426(n+2)]`
-/

namespace A224762.P6534910539526177263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350426 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091916 (3 * n + 4)) (f1 (n + 1) - f1 n)

end

end A224762.P6534910539526177263

/-! ## A224762.P294945329833856926

`A263922(A322993(n+2)^A291118(n))`
-/

namespace A224762.P294945329833856926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263922 (SequenceMachineLib.roundAway ((A322993 (n + 2) : ℚ) ^ (A291118 n : ℤ))).toNat

end

end A224762.P294945329833856926

/-! ## A224762.P5302590808278019599

`lcm(A001221(A000129(n+2)), A144150(n))`
-/

namespace A224762.P5302590808278019599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A000129 (n + 2)).toNat) (A144150 n)

end

end A224762.P5302590808278019599

/-! ## A224762.P13545349614199042075

`A076435(A076435(n+2)-A000688(n+1))`
-/

namespace A224762.P13545349614199042075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076435 (A076435 (n + 2) - A000688 (n + 1)).toNat

end

end A224762.P13545349614199042075

/-!
# A224763: Define a sequence of rationals by S(1)=1; for n>=1, write S(1),...,S(n) as XY^k, Y nonempty, where the fractional exponent k is maximized, and set S(n+1)=k; sequence gives denominators of S(1), S(2), ...

The programs for A224763, there is no canonical definition to state claims against.
-/

/-! ## A224763.P6869170386753561001

`A226046(7*A224762(n+1))`
-/

namespace A224763.P6869170386753561001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (7 * A224762 (n + 1)).toNat

end

end A224763.P6869170386753561001

/-! ## A224763.P11559763258923424262

`A190867(3^A224762(n+1))`
-/

namespace A224763.P11559763258923424262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A224762 (n + 1) : ℤ))).toNat

end

end A224763.P11559763258923424262

/-! ## A224763.P11012017382380071831

`A264440(3^A224762(n+1))`
-/

namespace A224763.P11012017382380071831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264440 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A224762 (n + 1) : ℤ))).toNat

end

end A224763.P11012017382380071831

/-! ## A224763.P620425690272092899

`A294892(3^A224762(n+1))`
-/

namespace A224763.P620425690272092899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294892 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A224762 (n + 1) : ℤ))).toNat

end

end A224763.P620425690272092899

/-! ## A224763.P17239129170904416151

`A226046(lcm(7, A224762(n+1)))`
-/

namespace A224763.P17239129170904416151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (Int.lcm 7 (A224762 (n + 1)))

end

end A224763.P17239129170904416151

/-!
# A224764: Numerator of fractional curling number of binary expansion of n.

The programs for A224764, there is no canonical definition to state claims against.
-/

/-! ## A224764.P13267169720386825441

`A062756(xor(A008911(n), A117123(n+1)))`
-/

namespace A224764.P13267169720386825441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.xor (A008911 n) (A117123 (n + 1))).toNat

end

end A224764.P13267169720386825441

/-! ## A224764.P492162206908239205

`A008687(A092486(n+1)%A342546(n+2))`
-/

namespace A224764.P492162206908239205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (Int.tmod (A092486 (n + 1)) (A342546 (n + 2))).toNat

end

end A224764.P492162206908239205

/-!
# A224765: Denominator of fractional curling number of binary expansion of n.

The programs for A224765, there is no canonical definition to state claims against.
-/

/-! ## A224765.P8941765018335983449

`A001511(A036487(n)^A124761(n))`
-/

namespace A224765.P8941765018335983449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A036487 n : ℚ) ^ (A124761 n : ℤ))).toNat

end

end A224765.P8941765018335983449

/-! ## A224765.P6948666068076664864

`A001511(C(A036487(n), A124761(n)))`
-/

namespace A224765.P6948666068076664864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.choose (A036487 n).toNat (A124761 n).toNat)

end

end A224765.P6948666068076664864

/-! ## A224765.P11016163325495640471

`∏{e}[A375138(A238279(n))+1, #]`
-/

namespace A224765.P11016163325495640471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375138 (A238279 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A224765.P11016163325495640471

/-! ## A224765.P5094185642864227313

`A028310(and(A285097(n), A345728(2*n+5)))`
-/

namespace A224765.P5094185642864227313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.land (A285097 n) (A345728 (2 * n + 5))).toNat

end

end A224765.P5094185642864227313

/-! ## A224765.P5843600036497857573

`A001221(A216955(A276086(n)))`
-/

namespace A224765.P5843600036497857573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A216955 (A276086 n).toNat).toNat

end

end A224765.P5843600036497857573

/-!
# A224766: Number of non-degenerate fanout-free Boolean functions of n variables using And, Or and Not gates.

The programs for A224766, there is no canonical definition to state claims against.
-/

/-! ## A224766.P3935365064682387227

`lcm(2, A005640(n+1))`
-/

namespace A224766.P3935365064682387227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005640 (n + 1))

end

end A224766.P3935365064682387227

/-! ## A224766.P7567249558867576399

`A005640(round(sqrt(n²+1))+1)`
-/

namespace A224766.P7567249558867576399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005640 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A224766.P7567249558867576399

/-! ## A224766.P1787640079183200404

`2*A005172(A028310(n))`
-/

namespace A224766.P1787640079183200404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005172 (A028310 n).toNat

end

end A224766.P1787640079183200404

/-! ## A224766.P12931171372918341586

`2*A005172(A000007(n)+n)`
-/

namespace A224766.P12931171372918341586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005172 (A000007 n + (n : ℤ)).toNat

end

end A224766.P12931171372918341586

/-! ## A224766.P14279903026985888029

`A005640(n+1)+A225170(n+1)-A005172(n+1)`
-/

namespace A224766.P14279903026985888029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005640 (n + 1) + (A225170 (n + 1) - A005172 (n + 1))

end

end A224766.P14279903026985888029

/-!
# A224767: Number of non-degenerate fanout-free Boolean functions of n variables having AND rank 3.

The programs for A224767, there is no canonical definition to state claims against.
-/

/-! ## A224767.P3046635821233209507

`A225171(A167614(n+1))`
-/

namespace A224767.P3046635821233209507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225171 (A167614 (n + 1)).toNat

end

end A224767.P3046635821233209507

/-! ## A224767.P2840956377162438584

`A225171(A046691(n)+7)`
-/

namespace A224767.P2840956377162438584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225171 (A046691 n + 7).toNat

end

end A224767.P2840956377162438584

/-! ## A224767.P532672911213402847

`A225171(A000217(n+3)-n)`
-/

namespace A224767.P532672911213402847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225171 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A224767.P532672911213402847

/-! ## A224767.P15995734090887737090

`A225171(A000124(n+3)-(n+1))`
-/

namespace A224767.P15995734090887737090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225171 (A000124 (n + 3) - (n + 1 : ℤ)).toNat

end

end A224767.P15995734090887737090

/-!
# A224768: Number of non-degenerate fanout-free Boolean functions of n variables having AND rank 4.

The programs for A224768, there is no canonical definition to state claims against.
-/

/-! ## A224768.P895276269709639335

`A225171(∑[n+3]+7)`
-/

namespace A224768.P895276269709639335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225171 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A224768.P895276269709639335

/-!
# A224769: Number of lattice paths from (0,0) to (n,n) that do not go below the x-axis or above the diagonal x=y and consist of steps U=(1,1), D=(1,-1) and S=(0,1).

The programs for A224769, there is no canonical definition to state claims against.
-/

/-! ## A224769.P8600528854712548624

`A008619(A274804(n)-A022168(n))`
-/

namespace A224769.P8600528854712548624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A274804 n - A022168 n).toNat

end

end A224769.P8600528854712548624

/-! ## A224769.P9015685338038057351

`A008619(A274804(n)-A058281(n))`
-/

namespace A224769.P9015685338038057351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A274804 n - A058281 n).toNat

end

end A224769.P9015685338038057351

/-! ## A224769.P17924667255496504935

`A008619(A274804(n)-A146771(n))`
-/

namespace A224769.P17924667255496504935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A274804 n - A146771 n).toNat

end

end A224769.P17924667255496504935

/-!
# A224770: Numbers that are the primitive sum of two squares in exactly two ways.

The programs for A224770, the canonical program `A224770.P4749613609057412326` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224770 has offset 1).

The definition of A224770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 615 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224770.P2896651636442176203

`eq[4, A295819(n)]`
-/

namespace A224770.P2896651636442176203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224770.P2896651636442176203

namespace A224770

/-- `eq[4, A295819(n)]` -/
def P2896651636442176203.Spec : Prop :=
  ∀ n, (P2896651636442176203.a n : ℤ) = A224770 (n + 1)

end A224770

/-! ## A224770.P5451362573446816505

`eq[2, A157228(n+1)]+1`
-/

namespace A224770.P5451362573446816505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A224770.P5451362573446816505

namespace A224770

/-- `eq[2, A157228(n+1)]+1` -/
def P5451362573446816505.Spec : Prop :=
  ∀ n, (P5451362573446816505.a n : ℤ) = A224770 (n + 1)

end A224770

/-! ## A224770.P13451693442567732369

`eq[2, A157228(A028310(n))]`
-/

namespace A224770.P13451693442567732369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224770.P13451693442567732369

namespace A224770

/-- `eq[2, A157228(A028310(n))]` -/
def P13451693442567732369.Spec : Prop :=
  ∀ n, (P13451693442567732369.a n : ℤ) = A224770 (n + 1)

end A224770

/-! ## A224770.P3183442481713924961

`A020725(eq[2, A157228(n+1)])`
-/

namespace A224770.P3183442481713924961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224770.P3183442481713924961

namespace A224770

/-- `A020725(eq[2, A157228(n+1)])` -/
def P3183442481713924961.Spec : Prop :=
  ∀ n, P3183442481713924961.a n = A224770 (n + 1)

end A224770

/-! ## A224770.P10582840150747876948

`A065475(eq[2, A157228(n+1)])`
-/

namespace A224770.P10582840150747876948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224770.P10582840150747876948

namespace A224770

/-- `A065475(eq[2, A157228(n+1)])` -/
def P10582840150747876948.Spec : Prop :=
  ∀ n, P10582840150747876948.a n = A224770 (n + 1)

end A224770

/-! ## A224770.P6836755441884003504

`A011760(eq[4, A000089(n+1)])`
-/

namespace A224770.P6836755441884003504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224770.P6836755441884003504

namespace A224770

/-- `A011760(eq[4, A000089(n+1)])` -/
def P6836755441884003504.Spec : Prop :=
  ∀ n, P6836755441884003504.a n = A224770 (n + 1)

end A224770

/-! ## A224770.P4749613609057412326

`A020725(eq[4, A000089(n+1)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A224770

/-- `A020725(eq[4, A000089(n+1)])` -/
def P4749613609057412326.Spec : Prop :=
  ∀ n, P4749613609057412326.a n = A224770 (n + 1)

theorem P4749613609057412326.correct : P4749613609057412326.Spec := by
  intro n
  simp only [A224770, Nat.add_sub_cancel]

end A224770

/-! ## A224770.P6787439147430115180

`A065475(eq[4, A000089(n+1)])`
-/

namespace A224770.P6787439147430115180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224770.P6787439147430115180

namespace A224770

/-- `A065475(eq[4, A000089(n+1)])` -/
def P6787439147430115180.Spec : Prop :=
  ∀ n, P6787439147430115180.a n = A224770 (n + 1)

end A224770

/-! ## A224770.P9866299851125343945

`eq[4, A000089(A060000(n+1))]`
-/

namespace A224770.P9866299851125343945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224770.P9866299851125343945

namespace A224770

/-- `eq[4, A000089(A060000(n+1))]` -/
def P9866299851125343945.Spec : Prop :=
  ∀ n, (P9866299851125343945.a n : ℤ) = A224770 (n + 1)

end A224770

/-!
# A224771: Numbers that are the sum of 3 distinct and primitive nonzero squares.

The programs for A224771, there is no canonical definition to state claims against.
-/

/-! ## A224771.P3621911467278629238

`record[A065883(A004432(n+1))]`
-/

namespace A224771.P3621911467278629238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A004432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224771.P3621911467278629238

/-! ## A224771.P11671906393107256330

`filter[A004432(n+1), A166486(#)]`
-/

namespace A224771.P11671906393107256330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A224771.P11671906393107256330

/-! ## A224771.P960073935930598693

`∩[A004432(n+1), A042968(n+1)]`
-/

namespace A224771.P960073935930598693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224771.P960073935930598693

/-! ## A224771.P4835911443965637561

`∩[A004432(n+1), A047449(n+1)]`
-/

namespace A224771.P4835911443965637561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224771.P4835911443965637561

/-! ## A224771.P18220681358442904289

`∩[A004432(n+1), A223731(n+1)]`
-/

namespace A224771.P18220681358442904289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224771.P18220681358442904289

/-! ## A224771.P16856386412050304999

`lt[2, ((A025442(n)+1)²*A166486(n))²]`
-/

namespace A224771.P16856386412050304999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A025442 n + 1) ^ 2 * A166486 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A224771.P16856386412050304999

/-! ## A224771.P14489420926574994302

`eq[A000038(A025442(n)), A121262(n)]`
-/

namespace A224771.P14489420926574994302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224771.P14489420926574994302

/-! ## A224771.P18253717160398605502

`eq[A000038(A025442(n)), A264769(n)]`
-/

namespace A224771.P18253717160398605502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224771.P18253717160398605502

/-! ## A224771.P9853889393583285541

`lt[A142150(A142150(n)), A025442(n)]`
-/

namespace A224771.P9853889393583285541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A142150 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224771.P9853889393583285541

/-! ## A224771.P6493690386183451783

`eq[A000038(A025442(n))!, A040632(n)]`
-/

namespace A224771.P6493690386183451783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 (A025442 n).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224771.P6493690386183451783

/-! ## A224771.P15107605734868019746

`record[A214392(A024803(n+1))]`
-/

namespace A224771.P15107605734868019746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (A024803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224771.P15107605734868019746

/-! ## A224771.P10781889454473458568

`∩[A004432(n+1), A224448(n+1)]`
-/

namespace A224771.P10781889454473458568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224771.P10781889454473458568

/-!
# A224772: Multiplicities for representations of numbers as primitive sums of three distinct nonzero squares.

The programs for A224772, there is no canonical definition to state claims against.
-/

/-! ## A224772.P7982935453892653371

`A025442(A032742((n+1)²)%A299232(n+1))`
-/

namespace A224772.P7982935453892653371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (Int.tmod (A032742 ((n + 1) ^ 2)) (A299232 (n + 1))).toNat

end

end A224772.P7982935453892653371

/-! ## A224772.P12974721480260749320

`and(A005563(A070262(n+1)), A025442(n+1))`
-/

namespace A224772.P12974721480260749320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005563 (A070262 (n + 1)).toNat) (A025442 (n + 1))

end

end A224772.P12974721480260749320

/-! ## A224772.P4698135012289141071

`A025442(n+1)%A124765(A046138(n+1))`
-/

namespace A224772.P4698135012289141071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025442 (n + 1)) (A124765 (A046138 (n + 1)).toNat)

end

end A224772.P4698135012289141071

/-! ## A224772.P9926830988736521298

`A025442(n+1)%A201593(n+1)`
-/

namespace A224772.P9926830988736521298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025442 (n + 1)) (A201593 (n + 1))

end

end A224772.P9926830988736521298

/-! ## A224772.P3785467492340273691

`A025442(C(n+1, n))%A335261(n+5)`
-/

namespace A224772.P3785467492340273691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025442 (Nat.choose (n + 1) n)) (A335261 (n + 5))

end

end A224772.P3785467492340273691

/-! ## A224772.P10550120701689478810

`and(A025442(n+1), A317923(A096900(n+2)))`
-/

namespace A224772.P10550120701689478810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025442 (n + 1)) (A317923 (A096900 (n + 2)).toNat)

end

end A224772.P10550120701689478810

/-! ## A224772.P14132380666073332685

`A025442(n+1)^A245022(n+1)`
-/

namespace A224772.P14132380666073332685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025442 (n + 1) : ℚ) ^ (A245022 (n + 1) : ℤ)

end

end A224772.P14132380666073332685

/-! ## A224772.P9019733036437276406

`A025442(n+1)*A035444(A035444(n+1)²)`
-/

namespace A224772.P9019733036437276406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (n + 1) * A035444 (A035444 (n + 1) ^ 2).toNat

end

end A224772.P9019733036437276406

/-!
# A224773: One half of the even terms of A224771.

The programs for A224773, there is no canonical definition to state claims against.
-/

/-! ## A224773.P9728843184840459895

`∩[2*n, A224771(n+1)]/2`
-/

namespace A224773.P9728843184840459895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224771 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A224773.P9728843184840459895

/-! ## A224773.P6022471639517909140

`∩[4*n+2, A004432(n+1)]/2`
-/

namespace A224773.P6022471639517909140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A224773.P6022471639517909140

/-! ## A224773.P14176887445698445079

`lt[290, (289/2)^(A025442(2*n)-(-1)^n)]`
-/

namespace A224773.P14176887445698445079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  290

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((289 : ℚ) / 2) ^ (A025442 (2 * n) - (-1) ^ n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A224773.P14176887445698445079

/-! ## A224773.P2641050011748434130

`record[A028234(A004432(n+1))]`
-/

namespace A224773.P2641050011748434130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A004432 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224773.P2641050011748434130

/-! ## A224773.P3495392198707489472

`record[A028234(A024803(n+1))]`
-/

namespace A224773.P3495392198707489472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A024803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224773.P3495392198707489472

/-! ## A224773.P11843748564437153142

`record[A025480(A224771(n+1))]`
-/

namespace A224773.P11843748564437153142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A224771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224773.P11843748564437153142

/-! ## A224773.P12736884633327693587

`record[A028234(A224771(n+2))]`
-/

namespace A224773.P12736884633327693587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A224771 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224773.P12736884633327693587

/-! ## A224773.P6692317276263659300

`lt[A142150(n), A025442(2*n)]`
-/

namespace A224773.P6692317276263659300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224773.P6692317276263659300

/-! ## A224773.P15063777351168301644

`record[A195938(A024803(A065033(n)))]`
-/

namespace A224773.P15063777351168301644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195938 (A024803 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224773.P15063777351168301644

/-! ## A224773.P14846833902063033923

`eq[A000038(A025442(2*n)), A121262(n²)]`
-/

namespace A224773.P14846833902063033923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025442 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224773.P14846833902063033923

/-!
# A224776: Number of lattice paths from (0,0) to (n,n) that do not go below the x-axis or above the diagonal x=y and consist of steps D=(1,-1), H=(1,0) and S=(0,1).

The programs for A224776, there is no canonical definition to state claims against.
-/

/-! ## A224776.P14224876051796806126

`A194920(A346626(n)+1)`
-/

namespace A224776.P14224876051796806126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A346626 n + 1).toNat

end

end A224776.P14224876051796806126

/-! ## A224776.P15793742927321988284

`A008615(∑[A028418(n+1)]+1)`
-/

namespace A224776.P15793742927321988284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A224776.P15793742927321988284

/-!
# A224777: Triangle with integer geometric mean sqrt(n*m) for 1 <= m <= n, and 0 if sqrt(n*m) is not integer.

The programs for A224777, the canonical program `A224777.P17996834867425370218` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224777 has offset 1).

The definition of A224777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224777.P17996834867425370218

`A037213(A075362(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A224777

/-- `A037213(A075362(n+1))` -/
def P17996834867425370218.Spec : Prop :=
  ∀ n, P17996834867425370218.a n = A224777 (n + 1)

theorem P17996834867425370218.correct : P17996834867425370218.Spec := by
  intro n
  simp only [A224777, Nat.add_sub_cancel]

end A224777

/-! ## A224777.P5454783471113356367

`A037213(A223544(n+1)+1)`
-/

namespace A224777.P5454783471113356367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A223544 (n + 1) + 1).toNat

end

end A224777.P5454783471113356367

namespace A224777

/-- `A037213(A223544(n+1)+1)` -/
def P5454783471113356367.Spec : Prop :=
  ∀ n, P5454783471113356367.a n = A224777 (n + 1)

end A224777

/-! ## A224777.P14213509486164612

`A037213(∑[A010054(n)]*A002260(n+1))`
-/

namespace A224777.P14213509486164612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((∑ j ∈ Finset.range (n + 1), f1 j) * A002260 (n + 1)).toNat

end

end A224777.P14213509486164612

namespace A224777

/-- `A037213(∑[A010054(n)]*A002260(n+1))` -/
def P14213509486164612.Spec : Prop :=
  ∀ n, P14213509486164612.a n = A224777 (n + 1)

end A224777

/-! ## A224777.P7640910375467613641

`A037213(A002024(n+1)*A002260(n+1))`
-/

namespace A224777.P7640910375467613641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A002024 (n + 1) * A002260 (n + 1)).toNat

end

end A224777.P7640910375467613641

namespace A224777

/-- `A037213(A002024(n+1)*A002260(n+1))` -/
def P7640910375467613641.Spec : Prop :=
  ∀ n, P7640910375467613641.a n = A224777 (n + 1)

end A224777

/-! ## A224777.P2925746895525529301

`A037213((A003056(n)+1)*A002260(n+1))`
-/

namespace A224777.P2925746895525529301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((A003056 n + 1) * A002260 (n + 1)).toNat

end

end A224777.P2925746895525529301

namespace A224777

/-- `A037213((A003056(n)+1)*A002260(n+1))` -/
def P2925746895525529301.Spec : Prop :=
  ∀ n, P2925746895525529301.a n = A224777 (n + 1)

end A224777

/-!
# A224778: One half of the even numbers that are the sum of four nonzero squares.

The programs for A224778, there is no canonical definition to state claims against.
-/

/-! ## A224778.P3113905898138958435

`comp[4*a(n-4)]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=7`
-/

namespace A224778.P3113905898138958435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 7] fun n f1 =>
  4 * f1 (n - 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A224778.P3113905898138958435

/-! ## A224778.P15972144593572628296

`lt[0, A025428(2*n)]`
-/

namespace A224778.P15972144593572628296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A224778.P15972144593572628296

/-! ## A224778.P6597213038490164976

`lt[0, A037216(2*n)]`
-/

namespace A224778.P6597213038490164976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037216 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A224778.P6597213038490164976

/-! ## A224778.P18025295516530027572

`lt[0, A063730(2*n)]`
-/

namespace A224778.P18025295516530027572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A224778.P18025295516530027572

/-! ## A224778.P3768786922402864799

`lt[0, A307510(2*n)]`
-/

namespace A224778.P3768786922402864799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307510 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A224778.P3768786922402864799

/-! ## A224778.P14339251811240054355

`lt[0, A347803(2*n)]`
-/

namespace A224778.P14339251811240054355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347803 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A224778.P14339251811240054355

/-! ## A224778.P9702637641003350208

`lt[1, A002635(2*n)]`
-/

namespace A224778.P9702637641003350208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A224778.P9702637641003350208

/-! ## A224778.P2779149816365880721

`record[A025480(A000414(n+1))]`
-/

namespace A224778.P2779149816365880721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224778.P2779149816365880721

/-! ## A224778.P8726859060795121108

`eq[2, A000122(A025428(2*n)²)]`
-/

namespace A224778.P8726859060795121108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A025428 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224778.P8726859060795121108

/-! ## A224778.P9499021880743126775

`eq[1, gcd(A000040(n+2), A025428(2*n))]`
-/

namespace A224778.P9499021880743126775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 2)) (A025428 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224778.P9499021880743126775

/-!
# A224779: One half of the even numbers that are a primitive sum of four nonzero squares at least once.

The programs for A224779, there is no canonical definition to state claims against.
-/

/-! ## A224779.P6383819273739675678

`comp[a(n-1)+4]` with `a(0)=1, a(1)=3, a(2)=7, a(3)=0`
-/

namespace A224779.P6383819273739675678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 0] fun n f1 =>
  f1 (n - 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A224779.P6383819273739675678

/-! ## A224779.P3537215394105229184

`∑[gcd(2, a(n%3))]` with `a(0)=2, a(1)=3, a(2)=1, a(3)=3`
-/

namespace A224779.P3537215394105229184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 1, 3] fun n f1 =>
  Nat.gcd 2 (f1 (n % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224779.P3537215394105229184

/-! ## A224779.P14012561386081423007

`lt[xor(8-n, a(n-1)), 3]` with `a(0)=3`
-/

namespace A224779.P14012561386081423007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (8 - (n : ℤ)) (f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224779.P14012561386081423007

/-! ## A224779.P13697721076311515998

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=3, a(2)=1, a(3)=3, a(4)=1, a(5)=1, a(6)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A224779.P13697721076311515998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 1, 3, 1, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224779.P13697721076311515998

/-! ## A224779.P18318589485561025506

`comp[xor(1, n)-or(1, a(n-1))]` with `a(0)=7, a(1)=3`
-/

namespace A224779.P18318589485561025506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 3] fun n f1 =>
  (Nat.xor 1 n : ℤ) - Int.lor 1 (f1 (n - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A224779.P18318589485561025506

/-! ## A224779.P11139845116186659544

`∑[a(n-3)!]-char[2]` with `a(0)=2, a(1)=3, a(2)=2, a(3)=2, a(4)=1, a(5)=1`
-/

namespace A224779.P11139845116186659544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 2, 1, 1] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A224779.P11139845116186659544

/-! ## A224779.P1901782524301732698

`comp[gcd(2*n², xor(2, xor(1, n+1)))-1]`
-/

namespace A224779.P1901782524301732698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n ^ 2) (Nat.xor 2 (Nat.xor 1 (n + 1))) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A224779.P1901782524301732698

/-! ## A224779.P2336171516615529036

`comp[xor(2, A266249(n)+1)]`
-/

namespace A224779.P2336171516615529036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A266249 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A224779.P2336171516615529036

/-! ## A224779.P17484725819207364882

`lt[n, (A137329(n)/2)²]`
-/

namespace A224779.P17484725819207364882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A137329 n : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A224779.P17484725819207364882

/-! ## A224779.P4784986910475124889

`comp[xor(n, (n+1)*A046978(n))]`
-/

namespace A224779.P4784986910475124889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n + 1 : ℤ) * A046978 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A224779.P4784986910475124889

/-!
# A224781: Primes p such that both 2*p + 1 and p^2 + p + 1 are primes.

The programs for A224781, there is no canonical definition to state claims against.
-/

/-! ## A224781.P16344086828028876663

`∩[A005384(n+1), A342690(n+1)]`
-/

namespace A224781.P16344086828028876663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P16344086828028876663

/-! ## A224781.P12907680401879460309

`∩[A005384(n+1), A053182(n+1)]`
-/

namespace A224781.P12907680401879460309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P12907680401879460309

/-! ## A224781.P1348302118822163938

`∩[A005384(n+1), A055638(n+1)]`
-/

namespace A224781.P1348302118822163938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P1348302118822163938

/-! ## A224781.P10221143239169126317

`∩[A053182(n+1), A348511(n+1)]`
-/

namespace A224781.P10221143239169126317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P10221143239169126317

/-! ## A224781.P2332089308373009989

`∩[A053182(n+1), A364926(n+1)]`
-/

namespace A224781.P2332089308373009989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P2332089308373009989

/-! ## A224781.P8478649049005007865

`∩[A342690(n+1), A348511(n+1)]`
-/

namespace A224781.P8478649049005007865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P8478649049005007865

/-! ## A224781.P6634811576461119947

`∩[A053182(n+1), A246857(n+1)]`
-/

namespace A224781.P6634811576461119947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P6634811576461119947

/-! ## A224781.P7525539415495582013

`∩[A055638(n+1), A246857(n+1)]`
-/

namespace A224781.P7525539415495582013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P7525539415495582013

/-! ## A224781.P16411938077074634385

`∩[A246857(n+1), A342690(n+1)]`
-/

namespace A224781.P16411938077074634385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P16411938077074634385

/-! ## A224781.P8196661871526473925

`∩[A053182(n+1), A259973(n+1)]`
-/

namespace A224781.P8196661871526473925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P8196661871526473925

/-! ## A224781.P12245234384154454951

`∩[A053182(n+1), A078762(n+1)]`
-/

namespace A224781.P12245234384154454951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P12245234384154454951

/-! ## A224781.P18407121526720523880

`filter[A005384(n+1), A355938(#)]`
-/

namespace A224781.P18407121526720523880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A224781.P18407121526720523880

/-! ## A224781.P9499167581625802833

`filter[A246857(n+1), A355938(#)]`
-/

namespace A224781.P9499167581625802833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A224781.P9499167581625802833

/-! ## A224781.P2500945626091228785

`record[A020639(root(A240859(n+2), 3))]`
-/

namespace A224781.P2500945626091228785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A240859 (n + 2) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224781.P2500945626091228785

/-! ## A224781.P1651906890748720149

`filter[A014109(n+2), A355938(#)]`
-/

namespace A224781.P1651906890748720149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A224781.P1651906890748720149

/-! ## A224781.P16590344677023399400

`filter[A054639(n+2), A355938(#)]`
-/

namespace A224781.P16590344677023399400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A224781.P16590344677023399400

/-! ## A224781.P18233317311671226778

`∩[A014109(n+1), A053182(n+1)]`
-/

namespace A224781.P18233317311671226778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P18233317311671226778

/-! ## A224781.P13668442957554793254

`∩[A014109(n+1), A055638(n+1)]`
-/

namespace A224781.P13668442957554793254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P13668442957554793254

/-! ## A224781.P6232251282859822155

`∩[A053182(n+1), A054639(n+1)]`
-/

namespace A224781.P6232251282859822155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224781.P6232251282859822155

/-!
# A224782: Length of longest run of consecutive zeros in decimal representation of 2^n.

The programs for A224782, there is no canonical definition to state claims against.
-/

/-! ## A224782.P1044250257526264577

`A007510(A135283(n+1))%A174296(A027870(n))`
-/

namespace A224782.P1044250257526264577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007510 (A135283 (n + 1)).toNat) (A174296 (A027870 n).toNat)

end

end A224782.P1044250257526264577

/-! ## A224782.P6076690962498488534

`A269369(A113730(n+1))%A174296(A027870(n))`
-/

namespace A224782.P6076690962498488534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269369 (A113730 (n + 1)).toNat) (A174296 (A027870 n).toNat)

end

end A224782.P6076690962498488534

/-! ## A224782.P7109418078857690476

`ceil(A027870(n)/A000005(A320601(n+1)))`
-/

namespace A224782.P7109418078857690476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027870 n : ℚ) / (A000005 (A320601 (n + 1)).toNat : ℚ)⌉

end

end A224782.P7109418078857690476

/-! ## A224782.P12567984311213723798

`A094194(A210791(n+1))%A174296(A027870(n))`
-/

namespace A224782.P12567984311213723798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094194 (A210791 (n + 1)).toNat) (A174296 (A027870 n).toNat)

end

end A224782.P12567984311213723798

/-! ## A224782.P7863640251602923980

`A300748(A069770(n+1))%A174296(A027870(n))`
-/

namespace A224782.P7863640251602923980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300748 (A069770 (n + 1)).toNat) (A174296 (A027870 n).toNat)

end

end A224782.P7863640251602923980

/-! ## A224782.P5617162245309720161

`A346021(A133310(n))%A174296(A027870(n))`
-/

namespace A224782.P5617162245309720161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346021 (A133310 n).toNat) (A174296 (A027870 n).toNat)

end

end A224782.P5617162245309720161

/-! ## A224782.P10174457766655366353

`A174895(A174896(n+1))%A174296(A027870(n))`
-/

namespace A224782.P10174457766655366353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174895 (A174896 (n + 1)).toNat) (A174296 (A027870 n).toNat)

end

end A224782.P10174457766655366353

/-! ## A224782.P12333863745372247816

`A126208(A027870(A027870(A306112(n))))`
-/

namespace A224782.P12333863745372247816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126208 (A027870 (A027870 (A306112 n).toNat).toNat).toNat

end

end A224782.P12333863745372247816

/-!
# A224783: Denominator of Bernoulli(n,1/2) - Bernoulli(n,0).

The programs for A224783, the canonical program `A224783.P13898245825622441015` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224783 has offset 0).

The definition of A224783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224783.P13898245825622441015

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=1, a(4)=16, a(5)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224783

/-- `5*a(n-2)-4*a(n-4)` -/
def P13898245825622441015.Spec : Prop :=
  ∀ n, P13898245825622441015.a n = A224783 n

theorem P13898245825622441015.correct : P13898245825622441015.Spec := by
  intro n
  simp only [A224783]

end A224783

/-! ## A224783.P13339732386033095914

`char[1]+gcd(2, n)^n`
-/

namespace A224783.P13339732386033095914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.gcd 2 n ^ n

end

end A224783.P13339732386033095914

namespace A224783

/-- `char[1]+gcd(2, n)^n` -/
def P13339732386033095914.Spec : Prop :=
  ∀ n, (P13339732386033095914.a n : ℤ) = A224783 n

end A224783

/-! ## A224783.P2958809725348791592

`floor(2^n^(-1)^n)`
-/

namespace A224783.P2958809725348791592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n : ℚ) ^ ((-1) ^ n : ℤ) : ℝ)⌋

end

end A224783.P2958809725348791592

namespace A224783

/-- `floor(2^n^(-1)^n)` -/
def P2958809725348791592.Spec : Prop :=
  ∀ n, P2958809725348791592.a n = A224783 n

end A224783

/-! ## A224783.P1170403813444026827

`a(∑[(-1)^n])^n` with `a(0)=1, a(1)=2`
-/

namespace A224783.P1170403813444026827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ n

end

end A224783.P1170403813444026827

namespace A224783

/-- `a(∑[(-1)^n])^n` -/
def P1170403813444026827.Spec : Prop :=
  ∀ n, (P1170403813444026827.a n : ℤ) = A224783 n

end A224783

/-! ## A224783.P14551456325325665410

`2^and(n, -a(n-1))` with `a(0)=1`
-/

namespace A224783.P14551456325325665410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ (Int.land (n : ℤ) (SequenceMachineLib.roundAway (-a (n - 1))) : ℤ)

end

end A224783.P14551456325325665410

namespace A224783

/-- `2^and(n, -a(n-1))` -/
def P14551456325325665410.Spec : Prop :=
  ∀ n, P14551456325325665410.a n = (A224783 n : ℚ)

end A224783

/-! ## A224783.P12821852467714928598

`2^C(n, a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A224783.P12821852467714928598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 ^ Nat.choose n (a (n - 1))

end

end A224783.P12821852467714928598

namespace A224783

/-- `2^C(n, a(n-1))` -/
def P12821852467714928598.Spec : Prop :=
  ∀ n, (P12821852467714928598.a n : ℤ) = A224783 n

end A224783

/-! ## A224783.P458311716064130932

`gcd(4*a(n-2), n%2)` with `a(0)=1, a(1)=2`
-/

namespace A224783.P458311716064130932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd (4 * a (n - 2)) (n % 2)

end

end A224783.P458311716064130932

namespace A224783

/-- `gcd(4*a(n-2), n%2)` -/
def P458311716064130932.Spec : Prop :=
  ∀ n, (P458311716064130932.a n : ℤ) = A224783 n

end A224783

/-! ## A224783.P2534949742942956698

`gcd(4, n²)*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=1`
-/

namespace A224783.P2534949742942956698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 1] fun n a =>
  Nat.gcd 4 (n ^ 2) * a (n - 2)

end

end A224783.P2534949742942956698

namespace A224783

/-- `gcd(4, n²)*a(n-2)` -/
def P2534949742942956698.Spec : Prop :=
  ∀ n, (P2534949742942956698.a n : ℤ) = A224783 n

end A224783

/-! ## A224783.P15422986327815865778

`ceil(lcm(2, n+3)/(2*n+1))^n`
-/

namespace A224783.P15422986327815865778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (n + 3) : ℚ) / (2 * n + 1 : ℚ)⌉ ^ n

end

end A224783.P15422986327815865778

namespace A224783

/-- `ceil(lcm(2, n+3)/(2*n+1))^n` -/
def P15422986327815865778.Spec : Prop :=
  ∀ n, P15422986327815865778.a n = A224783 n

end A224783

/-! ## A224783.P3734998204438303162

`a(n-2)%6*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=1`
-/

namespace A224783.P3734998204438303162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 1] fun n a =>
  a (n - 2) % 6 * a (n - 2)

end

end A224783.P3734998204438303162

namespace A224783

/-- `a(n-2)%6*a(n-2)` -/
def P3734998204438303162.Spec : Prop :=
  ∀ n, (P3734998204438303162.a n : ℤ) = A224783 n

end A224783

/-! ## A224783.P275723345452903895

`gcd(a(n-1)-1, floor(4*a(n-2)))` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A224783.P275723345452903895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) - 1) (4 * a (n - 2) : ℤ)

end

end A224783.P275723345452903895

namespace A224783

/-- `gcd(a(n-1)-1, floor(4*a(n-2)))` -/
def P275723345452903895.Spec : Prop :=
  ∀ n, (P275723345452903895.a n : ℤ) = A224783 n

end A224783

/-! ## A224783.P14411867602391924601

`a(floor(2/a(n-1)))*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=1`
-/

namespace A224783.P14411867602391924601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 1] fun n a =>
  a ⌊2 / (a (n - 1) : ℚ)⌋.toNat * a (n - 2)

end

end A224783.P14411867602391924601

namespace A224783

/-- `a(floor(2/a(n-1)))*a(n-2)` -/
def P14411867602391924601.Spec : Prop :=
  ∀ n, (P14411867602391924601.a n : ℤ) = A224783 n

end A224783

/-! ## A224783.P16514931618403737603

`(A266591(n)+1)^n`
-/

namespace A224783.P16514931618403737603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266591 n + 1) ^ n

end

end A224783.P16514931618403737603

namespace A224783

/-- `(A266591(n)+1)^n` -/
def P16514931618403737603.Spec : Prop :=
  ∀ n, P16514931618403737603.a n = A224783 n

end A224783

/-! ## A224783.P3833122322316962144

`(2-A266070(n))^n`
-/

namespace A224783.P3833122322316962144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A266070 n) ^ n

end

end A224783.P3833122322316962144

namespace A224783

/-- `(2-A266070(n))^n` -/
def P3833122322316962144.Spec : Prop :=
  ∀ n, P3833122322316962144.a n = A224783 n

end A224783

/-! ## A224783.P5990998829326679507

`(3-A072996(n))^n`
-/

namespace A224783.P5990998829326679507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A072996 n) ^ n

end

end A224783.P5990998829326679507

namespace A224783

/-- `(3-A072996(n))^n` -/
def P5990998829326679507.Spec : Prop :=
  ∀ n, P5990998829326679507.a n = A224783 n

end A224783

/-! ## A224783.P14279261057639740234

`(A266719(n+1)+1)^n`
-/

namespace A224783.P14279261057639740234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266719 (n + 1) + 1) ^ n

end

end A224783.P14279261057639740234

namespace A224783

/-- `(A266719(n+1)+1)^n` -/
def P14279261057639740234.Spec : Prop :=
  ∀ n, P14279261057639740234.a n = A224783 n

end A224783

/-! ## A224783.P6135477324520523010

`(A296066(n+1)+1)^n`
-/

namespace A224783.P6135477324520523010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A296066 (n + 1) + 1) ^ n

end

end A224783.P6135477324520523010

namespace A224783

/-- `(A296066(n+1)+1)^n` -/
def P6135477324520523010.Spec : Prop :=
  ∀ n, P6135477324520523010.a n = A224783 n

end A224783

/-! ## A224783.P14821246116581686766

`(2-A267043(n+1))^n`
-/

namespace A224783.P14821246116581686766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A267043 (n + 1)) ^ n

end

end A224783.P14821246116581686766

namespace A224783

/-- `(2-A267043(n+1))^n` -/
def P14821246116581686766.Spec : Prop :=
  ∀ n, P14821246116581686766.a n = A224783 n

end A224783

/-! ## A224783.P8359925450309315452

`A011782(C(n, a(n-1))+1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A224783.P8359925450309315452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A011782 (Nat.choose n (a (n - 1)).toNat + 1)

end

end A224783.P8359925450309315452

namespace A224783

/-- `A011782(C(n, a(n-1))+1)` -/
def P8359925450309315452.Spec : Prop :=
  ∀ n, P8359925450309315452.a n = A224783 n

end A224783

/-! ## A224783.P14981889772537396823

`A072345(A266664(n))`
-/

namespace A224783.P14981889772537396823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 (A266664 n).toNat

end

end A224783.P14981889772537396823

namespace A224783

/-- `A072345(A266664(n))` -/
def P14981889772537396823.Spec : Prop :=
  ∀ n, P14981889772537396823.a n = A224783 n

end A224783

/-!
# A224785: Expansion of (1+4*x+8*x^2-x^3)/((1-x)*(1+x)*(1-3*x^2)).

The programs for A224785, the canonical program `A224785.P8523232827799439205` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224785 has offset 0).

The definition of A224785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224785.P8523232827799439205

`4*a(n-2)-3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=15`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224785

/-- `4*a(n-2)-3*a(n-4)` -/
def P8523232827799439205.Spec : Prop :=
  ∀ n, P8523232827799439205.a n = A224785 n

theorem P8523232827799439205.correct : P8523232827799439205.Spec := by
  intro n
  simp only [A224785]

end A224785

/-! ## A224785.P770772765383830068

`(11*3^floor(n/2)-3*(2+(-1)^n))/2`
-/

namespace A224785.P770772765383830068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (3 * (2 + (-1) ^ n) : ℚ)) / 2

end

end A224785.P770772765383830068

namespace A224785

/-- `(11*3^floor(n/2)-3*(2+(-1)^n))/2` -/
def P770772765383830068.Spec : Prop :=
  ∀ n, P770772765383830068.a n = (A224785 n : ℚ)

end A224785

/-! ## A224785.P9783129216189820774

`3*(a(n-2)+gcd(3, n%2))` with `a(0)=1, a(1)=4`
-/

namespace A224785.P9783129216189820774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 2) + Nat.gcd 3 (n % 2))

end

end A224785.P9783129216189820774

namespace A224785

/-- `3*(a(n-2)+gcd(3, n%2))` -/
def P9783129216189820774.Spec : Prop :=
  ∀ n, (P9783129216189820774.a n : ℤ) = A224785 n

end A224785

/-! ## A224785.P16260976330799892063

`A219605(A167614(n+2))`
-/

namespace A224785.P16260976330799892063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219605 (A167614 (n + 2)).toNat

end

end A224785.P16260976330799892063

namespace A224785

/-- `A219605(A167614(n+2))` -/
def P16260976330799892063.Spec : Prop :=
  ∀ n, P16260976330799892063.a n = A224785 n

end A224785

/-! ## A224785.P11577889742873726012

`A219605(A052905(n)+8)`
-/

namespace A224785.P11577889742873726012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219605 (A052905 n + 8).toNat

end

end A224785.P11577889742873726012

namespace A224785

/-- `A219605(A052905(n)+8)` -/
def P11577889742873726012.Spec : Prop :=
  ∀ n, P11577889742873726012.a n = A224785 n

end A224785

/-!
# A224786: G.f. satisfies: A(x) = Sum_{n>=0} x^n / (A(x) - n*x)^n.

The programs for A224786, there is no canonical definition to state claims against.
-/

/-! ## A224786.P11590357704057851606

`A004526(A352856(n)+A253012(n))`
-/

namespace A224786.P11590357704057851606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A352856 n + A253012 n).toNat

end

end A224786.P11590357704057851606

/-! ## A224786.P8659163377130665037

`A004526(A352856(n)+A187219(n+1))`
-/

namespace A224786.P8659163377130665037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A352856 n + A187219 (n + 1)).toNat

end

end A224786.P8659163377130665037

/-! ## A224786.P15660183702195767349

`A004524(A352856(n)+A233583(n+1))`
-/

namespace A224786.P15660183702195767349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A352856 n + A233583 (n + 1)).toNat

end

end A224786.P15660183702195767349

/-! ## A224786.P16069284363601451503

`A108356(A327722(∑[n]+n)-n)`
-/

namespace A224786.P16069284363601451503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108356 (A327722 (∑ j ∈ Finset.range (n + 1), f1 j + n) - (n : ℤ)).toNat

end

end A224786.P16069284363601451503

/-!
# A224787: Sum of cubes of prime factors of n (counted with multiplicity).

The programs for A224787, the canonical program `A224787.P11375264175183954260` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224787 has offset 1).

The definition of A224787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224787.P11375264175183954260

`∑{d}[n+1, A120007((n+1)/#)^3]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A224787

/-- `∑{d}[n+1, A120007((n+1)/#)^3]` -/
def P11375264175183954260.Spec : Prop :=
  ∀ n, P11375264175183954260.a n = A224787 (n + 1)

theorem P11375264175183954260.correct : P11375264175183954260.Spec := by
  intro n
  simp only [A224787, Nat.add_sub_cancel]

end A224787

/-! ## A224787.P15961135380898714253

`∑{d}[n+1, A005064(A014963(#))]`
-/

namespace A224787.P15961135380898714253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005064 (A014963 d).toNat

end

end A224787.P15961135380898714253

namespace A224787

/-- `∑{d}[n+1, A005064(A014963(#))]` -/
def P15961135380898714253.Spec : Prop :=
  ∀ n, P15961135380898714253.a n = A224787 (n + 1)

end A224787

/-! ## A224787.P3267374706857142979

`∑{d}[n+1, A000578(A120007(#))]`
-/

namespace A224787.P3267374706857142979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (A120007 d).toNat

end

end A224787.P3267374706857142979

namespace A224787

/-- `∑{d}[n+1, A000578(A120007(#))]` -/
def P3267374706857142979.Spec : Prop :=
  ∀ n, P3267374706857142979.a n = A224787 (n + 1)

end A224787

/-! ## A224787.P1054884117505474634

`∑{d}[n+1, (A020639(#)%A014963(#)²)^3]`
-/

namespace A224787.P1054884117505474634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A020639 d) (A014963 d ^ 2) ^ 3

end

end A224787.P1054884117505474634

namespace A224787

/-- `∑{d}[n+1, (A020639(#)%A014963(#)²)^3]` -/
def P1054884117505474634.Spec : Prop :=
  ∀ n, P1054884117505474634.a n = A224787 (n + 1)

end A224787

/-! ## A224787.P2556525819654632143

`∑{d}[n+1, A000578(A020639(#)%A014963(#)²)]`
-/

namespace A224787.P2556525819654632143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (Int.tmod (A020639 d) (A014963 d ^ 2)).toNat

end

end A224787.P2556525819654632143

namespace A224787

/-- `∑{d}[n+1, A000578(A020639(#)%A014963(#)²)]` -/
def P2556525819654632143.Spec : Prop :=
  ∀ n, P2556525819654632143.a n = A224787 (n + 1)

end A224787

/-! ## A224787.P3936410205366643833

`∑{d}[n+1, A051953(A014963(#)²)^3]`
-/

namespace A224787.P3936410205366643833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 (A014963 d ^ 2).toNat ^ 3

end

end A224787.P3936410205366643833

namespace A224787

/-- `∑{d}[n+1, A051953(A014963(#)²)^3]` -/
def P3936410205366643833.Spec : Prop :=
  ∀ n, P3936410205366643833.a n = A224787 (n + 1)

end A224787

/-! ## A224787.P13274262362528119721

`∑{e}[A181821(n+1), A030078(#)]`
-/

namespace A224787.P13274262362528119721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A030078 (Nat.factorization (f1 n).natAbs p)

end

end A224787.P13274262362528119721

namespace A224787

/-- `∑{e}[A181821(n+1), A030078(#)]` -/
def P13274262362528119721.Spec : Prop :=
  ∀ n, P13274262362528119721.a n = A224787 (n + 1)

end A224787

/-! ## A224787.P7616495305498471819

`∑{e}[A181821(n+1), A000578(A000040(#))]`
-/

namespace A224787.P7616495305498471819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000578 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A224787.P7616495305498471819

namespace A224787

/-- `∑{e}[A181821(n+1), A000578(A000040(#))]` -/
def P7616495305498471819.Spec : Prop :=
  ∀ n, P7616495305498471819.a n = A224787 (n + 1)

end A224787

/-!
# A224788: E.g.f. satisfies: A(x) = exp( Integral A(x)/(1 - x*A(x)^2) dx ).

The programs for A224788, there is no canonical definition to state claims against.
-/

/-! ## A224788.P5981195687206551254

`A310136(C(A310573(n), 5))`
-/

namespace A224788.P5981195687206551254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310136 (Nat.choose (A310573 n).toNat 5)

end

end A224788.P5981195687206551254

/-! ## A224788.P10435600899995926959

`A008621(A084096(n)+A000108(n))`
-/

namespace A224788.P10435600899995926959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A084096 n + A000108 n).toNat

end

end A224788.P10435600899995926959

/-!
# A224789: Primes p such that both p + nextprime(p) + 1 and p*nextprime(p) + 2 are primes.

The programs for A224789, there is no canonical definition to state claims against.
-/

/-! ## A224789.P6903113987993920850

`∩[A051507(n+1), A177017(n+1)]`
-/

namespace A224789.P6903113987993920850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224789.P6903113987993920850

/-! ## A224789.P9658124390154836237

`A051507(lt[A051495(n+3), A051513(n+1)])`
-/

namespace A224789.P9658124390154836237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051495 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A224789.P9658124390154836237

/-!
# A224790: a(n) = 3*9^n + 8.

The programs for A224790, the canonical program `A224790.P17955270264766288805` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224790 has offset 0).

The definition of A224790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*9^n+8` (program `A224790.P17955270264766288805`, by `A224790.P17955270264766288805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224790.P17955270264766288805

`3*9^n+8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224790

/-- `3*9^n+8` -/
def P17955270264766288805.Spec : Prop :=
  ∀ n, (P17955270264766288805.a n : ℤ) = A224790 n

theorem P17955270264766288805.correct : P17955270264766288805.Spec := by
  intro n
  simp only [A224790]

end A224790

/-! ## A224790.P4700024871880791910

`record[3^xor(1, n)+8]`
-/

namespace A224790.P4700024871880791910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.xor 1 n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224790.P4700024871880791910

namespace A224790

/-- `record[3^xor(1, n)+8]` -/
def P4700024871880791910.Spec : Prop :=
  ∀ n, (P4700024871880791910.a n : ℤ) = A224790 n

end A224790

/-! ## A224790.P17550175629566481155

`∑[9*a(n-1)]` with `a(0)=11, a(1)=24`
-/

namespace A224790.P17550175629566481155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 24] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224790.P17550175629566481155

namespace A224790

/-- `∑[9*a(n-1)]` -/
def P17550175629566481155.Spec : Prop :=
  ∀ n, (P17550175629566481155.a n : ℤ) = A224790 n

end A224790

/-! ## A224790.P11485756497965830472

`record[8-(-3)^(n+1)]`
-/

namespace A224790.P11485756497965830472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (-3) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224790.P11485756497965830472

namespace A224790

/-- `record[8-(-3)^(n+1)]` -/
def P11485756497965830472.Spec : Prop :=
  ∀ n, P11485756497965830472.a n = A224790 n

end A224790

/-! ## A224790.P18197773924167167622

`or(2, A013708(n)+6)`
-/

namespace A224790.P18197773924167167622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A013708 n + 6)

end

end A224790.P18197773924167167622

namespace A224790

/-- `or(2, A013708(n)+6)` -/
def P18197773924167167622.Spec : Prop :=
  ∀ n, P18197773924167167622.a n = A224790 n

end A224790

/-! ## A224790.P13869021012090654907

`Δ[A039306(n)+8*n]`
-/

namespace A224790.P13869021012090654907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039306 n + (8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224790.P13869021012090654907

namespace A224790

/-- `Δ[A039306(n)+8*n]` -/
def P13869021012090654907.Spec : Prop :=
  ∀ n, P13869021012090654907.a n = A224790 n

end A224790

/-! ## A224790.P6577724145295782567

`Δ[8*n+A039300(2*n)]`
-/

namespace A224790.P6577724145295782567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) + A039300 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224790.P6577724145295782567

namespace A224790

/-- `Δ[8*n+A039300(2*n)]` -/
def P6577724145295782567.Spec : Prop :=
  ∀ n, P6577724145295782567.a n = A224790 n

end A224790

/-! ## A224790.P16107020042757877648

`Δ[A325153(n+1)+A017029(n)]`
-/

namespace A224790.P16107020042757877648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325153 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A224790.P16107020042757877648

namespace A224790

/-- `Δ[A325153(n+1)+A017029(n)]` -/
def P16107020042757877648.Spec : Prop :=
  ∀ n, P16107020042757877648.a n = A224790 n

end A224790

/-!
# A224792: Smallest skinny number (A061909) with digit sum n.

The programs for A224792, there is no canonical definition to state claims against.
-/

/-! ## A224792.P7950625613416162555

`A038585(a(n-1))+2` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A224792.P7950625613416162555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A038585 (a (n - 1)).toNat + 2

end

end A224792.P7950625613416162555

/-! ## A224792.P4970673216605972985

`A257831(a(n-1))+2` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A224792.P4970673216605972985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  A257831 (a (n - 1)).toNat + 2

end

end A224792.P4970673216605972985

/-! ## A224792.P13743082995650900481

`10*A289207(a(n-1))+3` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A224792.P13743082995650900481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  10 * A289207 (a (n - 1)).toNat + 3

end

end A224792.P13743082995650900481

/-! ## A224792.P423573306801079359

`A000265(10*a(n-1)-17)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A224792.P423573306801079359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A000265 (10 * a (n - 1) - 17).toNat

end

end A224792.P423573306801079359

/-!
# A224796: Pi*n rounded to the nearest integer is prime.

The programs for A224796, the canonical program `A224796.P15941943453624883055` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224796 has offset 1).

The definition of A224796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224796.P15941943453624883055

`round(p?[round(π*n)]/π)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A224796

/-- `round(p?[round(π*n)]/π)` -/
def P15941943453624883055.Spec : Prop :=
  ∀ n, P15941943453624883055.a n = A224796 (n + 1)

theorem P15941943453624883055.correct : P15941943453624883055.Spec := by
  intro n
  simp only [A224796, Nat.add_sub_cancel]

end A224796

/-! ## A224796.P2268596608465333511

`eq[2, A000005(A022853(n+1))]+1`
-/

namespace A224796.P2268596608465333511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A022853 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A224796.P2268596608465333511

namespace A224796

/-- `eq[2, A000005(A022853(n+1))]+1` -/
def P2268596608465333511.Spec : Prop :=
  ∀ n, (P2268596608465333511.a n : ℤ) = A224796 (n + 1)

end A224796

/-! ## A224796.P10164471218929806169

`eq[1, A107463(A022853(n))]`
-/

namespace A224796.P10164471218929806169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A022853 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224796.P10164471218929806169

namespace A224796

/-- `eq[1, A107463(A022853(n))]` -/
def P10164471218929806169.Spec : Prop :=
  ∀ n, (P10164471218929806169.a n : ℤ) = A224796 (n + 1)

end A224796

/-! ## A224796.P1920072294567191391

`A062299(p?[A022853(n)])`
-/

namespace A224796.P1920072294567191391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A224796.P1920072294567191391

namespace A224796

/-- `A062299(p?[A022853(n)])` -/
def P1920072294567191391.Spec : Prop :=
  ∀ n, P1920072294567191391.a n = A224796 (n + 1)

end A224796

/-! ## A224796.P2672615682760080243

`A062300(p?[A022853(n)])`
-/

namespace A224796.P2672615682760080243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A224796.P2672615682760080243

namespace A224796

/-- `A062300(p?[A022853(n)])` -/
def P2672615682760080243.Spec : Prop :=
  ∀ n, P2672615682760080243.a n = A224796 (n + 1)

end A224796

/-! ## A224796.P3123904775657145161

`eq[A000007(n), A007920(A022853(n))]`
-/

namespace A224796.P3123904775657145161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A022853 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224796.P3123904775657145161

namespace A224796

/-- `eq[A000007(n), A007920(A022853(n))]` -/
def P3123904775657145161.Spec : Prop :=
  ∀ n, (P3123904775657145161.a n : ℤ) = A224796 (n + 1)

end A224796

/-! ## A224796.P18009079803524642424

`eq[A032741(A022853(n)), A267871(n)]`
-/

namespace A224796.P18009079803524642424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A022853 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224796.P18009079803524642424

namespace A224796

/-- `eq[A032741(A022853(n)), A267871(n)]` -/
def P18009079803524642424.Spec : Prop :=
  ∀ n, (P18009079803524642424.a n : ℤ) = A224796 (n + 1)

end A224796

/-! ## A224796.P12811950363646031876

`eq[A032741(A022853(n)), A135517(2*n)]`
-/

namespace A224796.P12811950363646031876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A022853 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224796.P12811950363646031876

namespace A224796

/-- `eq[A032741(A022853(n)), A135517(2*n)]` -/
def P12811950363646031876.Spec : Prop :=
  ∀ n, (P12811950363646031876.a n : ℤ) = A224796 (n + 1)

end A224796

/-! ## A224796.P9727030095687115685

`eq[A034947(n+1)², A003415(A022853(n))]`
-/

namespace A224796.P9727030095687115685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A022853 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224796.P9727030095687115685

namespace A224796

/-- `eq[A034947(n+1)², A003415(A022853(n))]` -/
def P9727030095687115685.Spec : Prop :=
  ∀ n, (P9727030095687115685.a n : ℤ) = A224796 (n + 1)

end A224796

/-!
# A224797: E.g.f. satisfies: A(x) = Sum_{n>=0} (exp(x*A(x)^n) - 1)^n / n!.

The programs for A224797, there is no canonical definition to state claims against.
-/

/-! ## A224797.P2420693561373080472

`A261231((∑[n]²+1)*a(n-1))` with `a(0)=1`
-/

namespace A224797.P2420693561373080472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261231 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℤ) * a (n - 1)).toNat

end

end A224797.P2420693561373080472

/-!
# A224799: Column 0 of the matrix square of triangle A224798.

The programs for A224799, there is no canonical definition to state claims against.
-/

/-! ## A224799.P1312590132926567844

`A000010(a(n-1)*A016437(n))` with `a(0)=1`
-/

namespace A224799.P1312590132926567844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (a (n - 1) * A016437 n).toNat

end

end A224799.P1312590132926567844

/-! ## A224799.P9618898397264379185

`A000010(A027660(n)*A375795(n))`
-/

namespace A224799.P9618898397264379185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A027660 n * A375795 n).toNat

end

end A224799.P9618898397264379185

