import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A334403: Harshad numbers with sum of digits equal to 18.

The programs for A334403, there is no canonical definition to state claims against.
-/

/-! ## A334403.P17169649058990368347

`∩[A235228(n+1), A008600(n)]`
-/

namespace A334403.P17169649058990368347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P17169649058990368347

/-! ## A334403.P18269692888841948463

`∩[A218291(n+1), A235228(n+1)]`
-/

namespace A334403.P18269692888841948463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P18269692888841948463

/-! ## A334403.P5414121708664370831

`∩[A235228(n+1), A285829(n+1)]`
-/

namespace A334403.P5414121708664370831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P5414121708664370831

/-! ## A334403.P9365950115383289703

`∩[A101814(n+1), A235228(n+1)]`
-/

namespace A334403.P9365950115383289703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P9365950115383289703

/-! ## A334403.P6288871595141757404

`∩[A235228(n+1), A374198(n+1)]`
-/

namespace A334403.P6288871595141757404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P6288871595141757404

/-! ## A334403.P10705832970059614447

`filter[A235228(n+1), A374197(#)]`
-/

namespace A334403.P10705832970059614447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A334403.P10705832970059614447

/-! ## A334403.P3706622432873668022

`∩[A235228(n+1), A298031(n)]`
-/

namespace A334403.P3706622432873668022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P3706622432873668022

/-! ## A334403.P13600259101782323533

`∩[A118510(n+1), A235228(n+1)]`
-/

namespace A334403.P13600259101782323533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P13600259101782323533

/-! ## A334403.P11845605182793084327

`filter[A235228(n+1), A079979(#)]`
-/

namespace A334403.P11845605182793084327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A334403.P11845605182793084327

/-! ## A334403.P4000706382628251175

`∩[A235228(n+1), A008458(n)]`
-/

namespace A334403.P4000706382628251175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P4000706382628251175

/-! ## A334403.P2331574846762759466

`∩[A235228(n+1), A008588(n)]`
-/

namespace A334403.P2331574846762759466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P2331574846762759466

/-! ## A334403.P4035911623495714877

`∩[A230628(n+1), A235228(n+1)]`
-/

namespace A334403.P4035911623495714877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P4035911623495714877

/-! ## A334403.P16600784948484590765

`∩[A234904(n+1), A235228(n+1)]`
-/

namespace A334403.P16600784948484590765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P16600784948484590765

/-! ## A334403.P4459089535389481935

`∩[A235228(n+1), A350629(n+1)]`
-/

namespace A334403.P4459089535389481935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P4459089535389481935

/-! ## A334403.P17272728206769823042

`∩[A235228(n+1), A249628(n+1)]`
-/

namespace A334403.P17272728206769823042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P17272728206769823042

/-! ## A334403.P4133893459195344865

`∩[A098807(n+1), A235228(n+1)]`
-/

namespace A334403.P4133893459195344865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P4133893459195344865

/-! ## A334403.P4966667551310597249

`∩[A228870(n+1), A235228(n+1)]`
-/

namespace A334403.P4966667551310597249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P4966667551310597249

/-! ## A334403.P1987034297057781974

`∩[A235228(n+1), A072835(n)]`
-/

namespace A334403.P1987034297057781974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072835 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P1987034297057781974

/-! ## A334403.P13998798985428001755

`∩[A094519(n+1), A235228(n+1)]`
-/

namespace A334403.P13998798985428001755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334403.P13998798985428001755

/-!
# A334407: Numbers k whose divisors can be partitioned into two disjoint sets with equal sum, such that if d is in one set, then k/d is in the other set.

The programs for A334407, there is no canonical definition to state claims against.
-/

/-! ## A334407.P2464940884302971342

`A137487(n+1)/A180596(A180582(n+1))`
-/

namespace A334407.P2464940884302971342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137487 (n + 1) : ℚ) / (A180596 (A180582 (n + 1)).toNat : ℚ)

end

end A334407.P2464940884302971342

/-!
# A334412: Number of ordered pairs of permutations of [n] avoiding synchronous double descent pairs.

The programs for A334412, there is no canonical definition to state claims against.
-/

/-! ## A334412.P7046225231707335063

`A334257(A022856(n+2))`
-/

namespace A334412.P7046225231707335063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334257 (A022856 (n + 2)).toNat

end

end A334412.P7046225231707335063

/-! ## A334412.P11411437160516649857

`A334257(lt[A220183(n), 7])`
-/

namespace A334412.P11411437160516649857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220183 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334257 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A334412.P11411437160516649857

/-! ## A334412.P3160040574771963124

`A334257(lt[A174285(n+3), A334257(n)])`
-/

namespace A334412.P3160040574771963124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174285 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334257 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334412.P3160040574771963124

/-!
# A334413: First differences of A101803.

The programs for A334413, the canonical program `A334413.P6479622909685095010` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334413 has offset 0).

The definition of A334413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334413.P6479622909685095010

`round((n+1)/ϕ)-round(n/ϕ)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A334413

/-- `round((n+1)/ϕ)-round(n/ϕ)` -/
def P6479622909685095010.Spec : Prop :=
  ∀ n, P6479622909685095010.a n = A334413 n

theorem P6479622909685095010.correct : P6479622909685095010.Spec := by
  intro n
  simp only [A334413]

end A334413

/-! ## A334413.P11943221100999061327

`3%Δ[round(ϕ*n)]`
-/

namespace A334413.P11943221100999061327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A334413.P11943221100999061327

namespace A334413

/-- `3%Δ[round(ϕ*n)]` -/
def P11943221100999061327.Spec : Prop :=
  ∀ n, P11943221100999061327.a n = A334413 n

end A334413

/-! ## A334413.P6911049982747486980

`val(Δ[round(ϕ*n)], 2)`
-/

namespace A334413.P6911049982747486980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A334413.P6911049982747486980

namespace A334413

/-- `val(Δ[round(ϕ*n)], 2)` -/
def P6911049982747486980.Spec : Prop :=
  ∀ n, (P6911049982747486980.a n : ℤ) = A334413 n

end A334413

/-! ## A334413.P14480249198644923374

`C(Δ[round(ϕ*n)], 2)`
-/

namespace A334413.P14480249198644923374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A334413.P14480249198644923374

namespace A334413

/-- `C(Δ[round(ϕ*n)], 2)` -/
def P14480249198644923374.Spec : Prop :=
  ∀ n, (P14480249198644923374.a n : ℤ) = A334413 n

end A334413

/-! ## A334413.P8954426491771956519

`log2(Δ[round(ϕ*n)]!)`
-/

namespace A334413.P8954426491771956519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℝ)

end

end A334413.P8954426491771956519

namespace A334413

/-- `log2(Δ[round(ϕ*n)]!)` -/
def P8954426491771956519.Spec : Prop :=
  ∀ n, P8954426491771956519.a n = (A334413 n : ℝ)

end A334413

/-! ## A334413.P17199438216146378524

`dr(log2(Δ[round(ϕ*n)]))`
-/

namespace A334413.P17199438216146378524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ)))

end

end A334413.P17199438216146378524

namespace A334413

/-- `dr(log2(Δ[round(ϕ*n)]))` -/
def P17199438216146378524.Spec : Prop :=
  ∀ n, (P17199438216146378524.a n : ℤ) = A334413 n

end A334413

/-! ## A334413.P8301767857249680473

`∑{e}[Δ[round(ϕ*n)], #]`
-/

namespace A334413.P8301767857249680473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A334413.P8301767857249680473

namespace A334413

/-- `∑{e}[Δ[round(ϕ*n)], #]` -/
def P8301767857249680473.Spec : Prop :=
  ∀ n, (P8301767857249680473.a n : ℤ) = A334413 n

end A334413

/-! ## A334413.P6613234470370227725

`log2(A006340(n))`
-/

namespace A334413.P6613234470370227725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006340 n : ℝ)

end

end A334413.P6613234470370227725

namespace A334413

/-- `log2(A006340(n))` -/
def P6613234470370227725.Spec : Prop :=
  ∀ n, P6613234470370227725.a n = (A334413 n : ℝ)

end A334413

/-! ## A334413.P18102405570559362328

`log2(Δ[A007067(n)])`
-/

namespace A334413.P18102405570559362328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A334413.P18102405570559362328

namespace A334413

/-- `log2(Δ[A007067(n)])` -/
def P18102405570559362328.Spec : Prop :=
  ∀ n, P18102405570559362328.a n = (A334413 n : ℝ)

end A334413

/-! ## A334413.P7484525781925039042

`A001221(Δ[round(ϕ*n)])`
-/

namespace A334413.P7484525781925039042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A334413.P7484525781925039042

namespace A334413

/-- `A001221(Δ[round(ϕ*n)])` -/
def P7484525781925039042.Spec : Prop :=
  ∀ n, P7484525781925039042.a n = A334413 n

end A334413

/-! ## A334413.P9042026620961645815

`A001222(Δ[round(ϕ*n)])`
-/

namespace A334413.P9042026620961645815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A334413.P9042026620961645815

namespace A334413

/-- `A001222(Δ[round(ϕ*n)])` -/
def P9042026620961645815.Spec : Prop :=
  ∀ n, P9042026620961645815.a n = A334413 n

end A334413

/-! ## A334413.P18302303360281286841

`char[A078796(n+1)-1]`
-/

namespace A334413.P18302303360281286841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334413.P18302303360281286841

namespace A334413

/-- `char[A078796(n+1)-1]` -/
def P18302303360281286841.Spec : Prop :=
  ∀ n, (P18302303360281286841.a n : ℤ) = A334413 n

end A334413

/-! ## A334413.P18304858495966581286

`char[A089809(n+1)+n]`
-/

namespace A334413.P18304858495966581286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334413.P18304858495966581286

namespace A334413

/-- `char[A089809(n+1)+n]` -/
def P18304858495966581286.Spec : Prop :=
  ∀ n, (P18304858495966581286.a n : ℤ) = A334413 n

end A334413

/-! ## A334413.P18075012027167658800

`A005614(A343646(n))`
-/

namespace A334413.P18075012027167658800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A343646 n).toNat

end

end A334413.P18075012027167658800

namespace A334413

/-- `A005614(A343646(n))` -/
def P18075012027167658800.Spec : Prop :=
  ∀ n, P18075012027167658800.a n = A334413 n

end A334413

/-! ## A334413.P7064609476721840875

`A339052(A339051(n)+A022342(n+1))`
-/

namespace A334413.P7064609476721840875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A339051 n + A022342 (n + 1)).toNat

end

end A334413.P7064609476721840875

namespace A334413

/-- `A339052(A339051(n)+A022342(n+1))` -/
def P7064609476721840875.Spec : Prop :=
  ∀ n, P7064609476721840875.a n = A334413 n

end A334413

/-! ## A334413.P5915539054421525519

`A005043(A007067(n+1)-A007067(n))`
-/

namespace A334413.P5915539054421525519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (A007067 (n + 1) - A007067 n).toNat

end

end A334413.P5915539054421525519

namespace A334413

/-- `A005043(A007067(n+1)-A007067(n))` -/
def P5915539054421525519.Spec : Prop :=
  ∀ n, P5915539054421525519.a n = A334413 n

end A334413

/-! ## A334413.P13104882278140658426

`A005614(A007067(n+1)-A007067(n))`
-/

namespace A334413.P13104882278140658426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A007067 (n + 1) - A007067 n).toNat

end

end A334413.P13104882278140658426

namespace A334413

/-- `A005614(A007067(n+1)-A007067(n))` -/
def P13104882278140658426.Spec : Prop :=
  ∀ n, P13104882278140658426.a n = A334413 n

end A334413

/-! ## A334413.P4754409933209686069

`A005713(A214990(n+1)-A007067(n))`
-/

namespace A334413.P4754409933209686069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A214990 (n + 1) - A007067 n).toNat

end

end A334413.P4754409933209686069

namespace A334413

/-- `A005713(A214990(n+1)-A007067(n))` -/
def P4754409933209686069.Spec : Prop :=
  ∀ n, P4754409933209686069.a n = A334413 n

end A334413

/-! ## A334413.P7109995747322829342

`Δ[A101803(n)]`
-/

namespace A334413.P7109995747322829342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334413.P7109995747322829342

namespace A334413

/-- `Δ[A101803(n)]` -/
def P7109995747322829342.Spec : Prop :=
  ∀ n, P7109995747322829342.a n = A334413 n

end A334413

/-!
# A334414: First differences of A334415.

The programs for A334414, the canonical program `A334414.P15952998768866313226` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334414 has offset 0).

The definition of A334414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334414.P15952998768866313226

`round((n+1)/ϕ²)-round(n/ϕ²)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A334414

/-- `round((n+1)/ϕ²)-round(n/ϕ²)` -/
def P15952998768866313226.Spec : Prop :=
  ∀ n, P15952998768866313226.a n = A334414 n

theorem P15952998768866313226.correct : P15952998768866313226.Spec := by
  intro n
  simp only [A334414]

end A334414

/-! ## A334414.P9575317674230740860

`Δ[round(ϕ*n)]%2`
-/

namespace A334414.P9575317674230740860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A334414.P9575317674230740860

namespace A334414

/-- `Δ[round(ϕ*n)]%2` -/
def P9575317674230740860.Spec : Prop :=
  ∀ n, P9575317674230740860.a n = A334414 n

end A334414

/-! ## A334414.P530187029283846861

`and(1, Δ[round(ϕ*n)])`
-/

namespace A334414.P530187029283846861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A334414.P530187029283846861

namespace A334414

/-- `and(1, Δ[round(ϕ*n)])` -/
def P530187029283846861.Spec : Prop :=
  ∀ n, P530187029283846861.a n = A334414 n

end A334414

/-! ## A334414.P1063207847467996460

`xor(1, Δ[round(n/ϕ)])`
-/

namespace A334414.P1063207847467996460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A334414.P1063207847467996460

namespace A334414

/-- `xor(1, Δ[round(n/ϕ)])` -/
def P1063207847467996460.Spec : Prop :=
  ∀ n, P1063207847467996460.a n = A334414 n

end A334414

/-! ## A334414.P5006056007963405248

`floor(acot(Δ[round(n/ϕ)]))`
-/

namespace A334414.P5006056007963405248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌋

end

end A334414.P5006056007963405248

namespace A334414

/-- `floor(acot(Δ[round(n/ϕ)]))` -/
def P5006056007963405248.Spec : Prop :=
  ∀ n, P5006056007963405248.a n = A334414 n

end A334414

/-! ## A334414.P15277146138585848459

`C(2, Δ[round(n*ϕ²)])`
-/

namespace A334414.P15277146138585848459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A334414.P15277146138585848459

namespace A334414

/-- `C(2, Δ[round(n*ϕ²)])` -/
def P15277146138585848459.Spec : Prop :=
  ∀ n, (P15277146138585848459.a n : ℤ) = A334414 n

end A334414

/-! ## A334414.P6671121187262468742

`char[A188222(2*n+1)]`
-/

namespace A334414.P6671121187262468742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334414.P6671121187262468742

namespace A334414

/-- `char[A188222(2*n+1)]` -/
def P6671121187262468742.Spec : Prop :=
  ∀ n, (P6671121187262468742.a n : ℤ) = A334414 n

end A334414

/-! ## A334414.P15999616858265657777

`A008683(Δ[round(ϕ*n)]²)`
-/

namespace A334414.P15999616858265657777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A334414.P15999616858265657777

namespace A334414

/-- `A008683(Δ[round(ϕ*n)]²)` -/
def P15999616858265657777.Spec : Prop :=
  ∀ n, P15999616858265657777.a n = A334414 n

end A334414

/-! ## A334414.P6349552462702456296

`log2(A000032(Δ[round(n/ϕ)]))`
-/

namespace A334414.P6349552462702456296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000032 (f1 (n + 1) - f1 n).toNat : ℝ)

end

end A334414.P6349552462702456296

namespace A334414

/-- `log2(A000032(Δ[round(n/ϕ)]))` -/
def P6349552462702456296.Spec : Prop :=
  ∀ n, P6349552462702456296.a n = (A334414 n : ℝ)

end A334414

/-! ## A334414.P14941652878750588497

`char[A188188(2*(n+1))-1]`
-/

namespace A334414.P14941652878750588497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A334414.P14941652878750588497

namespace A334414

/-- `char[A188188(2*(n+1))-1]` -/
def P14941652878750588497.Spec : Prop :=
  ∀ n, (P14941652878750588497.a n : ℤ) = A334414 n

end A334414

/-! ## A334414.P12947419208549919707

`A003849(A343646(n))`
-/

namespace A334414.P12947419208549919707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A343646 n).toNat

end

end A334414.P12947419208549919707

namespace A334414

/-- `A003849(A343646(n))` -/
def P12947419208549919707.Spec : Prop :=
  ∀ n, P12947419208549919707.a n = A334414 n

end A334414

/-! ## A334414.P12766536627967231462

`A078588(n*A089809(n+1))`
-/

namespace A334414.P12766536627967231462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 ((n : ℤ) * A089809 (n + 1)).toNat

end

end A334414.P12766536627967231462

namespace A334414

/-- `A078588(n*A089809(n+1))` -/
def P12766536627967231462.Spec : Prop :=
  ∀ n, P12766536627967231462.a n = A334414 n

end A334414

/-! ## A334414.P10846328647749756032

`A096270(n*A096270(A001965(n)))`
-/

namespace A334414.P10846328647749756032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((n : ℤ) * A096270 (A001965 n).toNat).toNat

end

end A334414.P10846328647749756032

namespace A334414

/-- `A096270(n*A096270(A001965(n)))` -/
def P10846328647749756032.Spec : Prop :=
  ∀ n, P10846328647749756032.a n = A334414 n

end A334414

/-! ## A334414.P9851952583874032498

`A003849(A007067(n+1)-A007067(n))`
-/

namespace A334414.P9851952583874032498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A007067 (n + 1) - A007067 n).toNat

end

end A334414.P9851952583874032498

namespace A334414

/-- `A003849(A007067(n+1)-A007067(n))` -/
def P9851952583874032498.Spec : Prop :=
  ∀ n, P9851952583874032498.a n = A334414 n

end A334414

/-! ## A334414.P9456936946676299235

`A005713(A007067(n+1)-A007067(n))`
-/

namespace A334414.P9456936946676299235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A007067 (n + 1) - A007067 n).toNat

end

end A334414.P9456936946676299235

namespace A334414

/-- `A005713(A007067(n+1)-A007067(n))` -/
def P9456936946676299235.Spec : Prop :=
  ∀ n, P9456936946676299235.a n = A334414 n

end A334414

/-! ## A334414.P5607818500854986218

`A085002(A004937(n+1)-A004937(n))`
-/

namespace A334414.P5607818500854986218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A004937 (n + 1) - A004937 n).toNat

end

end A334414.P5607818500854986218

namespace A334414

/-- `A085002(A004937(n+1)-A004937(n))` -/
def P5607818500854986218.Spec : Prop :=
  ∀ n, P5607818500854986218.a n = A334414 n

end A334414

/-! ## A334414.P11940388907279745038

`Δ[A334415(n)]`
-/

namespace A334414.P11940388907279745038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334414.P11940388907279745038

namespace A334414

/-- `Δ[A334415(n)]` -/
def P11940388907279745038.Spec : Prop :=
  ∀ n, P11940388907279745038.a n = A334414 n

end A334414

/-! ## A334414.P7808233879365222861

`A005614(A101803(n+1)-A101803(n))`
-/

namespace A334414.P7808233879365222861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A101803 (n + 1) - A101803 n).toNat

end

end A334414.P7808233879365222861

namespace A334414

/-- `A005614(A101803(n+1)-A101803(n))` -/
def P7808233879365222861.Spec : Prop :=
  ∀ n, P7808233879365222861.a n = A334414 n

end A334414

/-! ## A334414.P13150791686418362895

`A166946(A007067(n)+1)`
-/

namespace A334414.P13150791686418362895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166946 (A007067 n + 1).toNat

end

end A334414.P13150791686418362895

namespace A334414

/-- `A166946(A007067(n)+1)` -/
def P13150791686418362895.Spec : Prop :=
  ∀ n, P13150791686418362895.a n = A334414 n

end A334414

/-! ## A334414.P1787747634565516236

`A166946(A026273(n+1))`
-/

namespace A334414.P1787747634565516236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166946 (A026273 (n + 1)).toNat

end

end A334414.P1787747634565516236

namespace A334414

/-- `A166946(A026273(n+1))` -/
def P1787747634565516236.Spec : Prop :=
  ∀ n, P1787747634565516236.a n = A334414 n

end A334414

/-!
# A334415: Nearest integer to n*(2-phi), where phi is the golden ratio (A001622).

The programs for A334415, the canonical program `A334415.P14383701703113336650` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334415 has offset 0).

The definition of A334415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334415.P7558367727564305336

`round(n*(2-ϕ))`
-/

namespace A334415.P7558367727564305336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (2 - Real.goldenRatio))

end

end A334415.P7558367727564305336

namespace A334415

/-- `round(n*(2-ϕ))` -/
def P7558367727564305336.Spec : Prop :=
  ∀ n, P7558367727564305336.a n = A334415 n

end A334415

/-! ## A334415.P14383701703113336650

`n-A101803(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A334415

/-- `n-A101803(n)` -/
def P14383701703113336650.Spec : Prop :=
  ∀ n, P14383701703113336650.a n = A334415 n

theorem P14383701703113336650.correct : P14383701703113336650.Spec := by
  intro n
  simp only [A334415]

end A334415

/-! ## A334415.P2991244069100400535

`or(round(n/(ϕ+1)), char[2])`
-/

namespace A334415.P2991244069100400535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n : ℝ) / (Real.goldenRatio + 1))) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A334415.P2991244069100400535

namespace A334415

/-- `or(round(n/(ϕ+1)), char[2])` -/
def P2991244069100400535.Spec : Prop :=
  ∀ n, P2991244069100400535.a n = A334415 n

end A334415

/-! ## A334415.P2329362445808289013

`floor(A195172(n)/2)`
-/

namespace A334415.P2329362445808289013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195172 n : ℚ) / 2⌋

end

end A334415.P2329362445808289013

namespace A334415

/-- `floor(A195172(n)/2)` -/
def P2329362445808289013.Spec : Prop :=
  ∀ n, P2329362445808289013.a n = A334415 n

end A334415

/-! ## A334415.P4046070185578758489

`ceil(A187329(n)/2)`
-/

namespace A334415.P4046070185578758489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187329 n : ℚ) / 2⌉

end

end A334415.P4046070185578758489

namespace A334415

/-- `ceil(A187329(n)/2)` -/
def P4046070185578758489.Spec : Prop :=
  ∀ n, P4046070185578758489.a n = A334415 n

end A334415

/-! ## A334415.P6859898350629645663

`2*n-A007067(n)`
-/

namespace A334415.P6859898350629645663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A007067 n

end

end A334415.P6859898350629645663

namespace A334415

/-- `2*n-A007067(n)` -/
def P6859898350629645663.Spec : Prop :=
  ∀ n, P6859898350629645663.a n = A334415 n

end A334415

/-! ## A334415.P7600634880196110763

`3*n-A004937(n)`
-/

namespace A334415.P7600634880196110763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A004937 n

end

end A334415.P7600634880196110763

namespace A334415

/-- `3*n-A004937(n)` -/
def P7600634880196110763.Spec : Prop :=
  ∀ n, P7600634880196110763.a n = A334415 n

end A334415

/-! ## A334415.P6489791891065785996

`∑[char[A188188(2*(n+1))]]`
-/

namespace A334415.P6489791891065785996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334415.P6489791891065785996

namespace A334415

/-- `∑[char[A188188(2*(n+1))]]` -/
def P6489791891065785996.Spec : Prop :=
  ∀ n, (P6489791891065785996.a n : ℤ) = A334415 n

end A334415

/-! ## A334415.P11773675950919783838

`n-∑[char[A078796(n+1)]]`
-/

namespace A334415.P11773675950919783838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A334415.P11773675950919783838

namespace A334415

/-- `n-∑[char[A078796(n+1)]]` -/
def P11773675950919783838.Spec : Prop :=
  ∀ n, P11773675950919783838.a n = A334415 n

end A334415

/-! ## A334415.P4912180844570228141

`ceil(abs((comp[A187339(n+1)]-n)/2))`
-/

namespace A334415.P4912180844570228141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187339 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) : ℚ) / 2|⌉

end

end A334415.P4912180844570228141

namespace A334415

/-- `ceil(abs((comp[A187339(n+1)]-n)/2))` -/
def P4912180844570228141.Spec : Prop :=
  ∀ n, P4912180844570228141.a n = A334415 n

end A334415

/-! ## A334415.P13835269633056570113

`A004526(A195172(n))`
-/

namespace A334415.P13835269633056570113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A195172 n).toNat

end

end A334415.P13835269633056570113

namespace A334415

/-- `A004526(A195172(n))` -/
def P13835269633056570113.Spec : Prop :=
  ∀ n, P13835269633056570113.a n = A334415 n

end A334415

/-! ## A334415.P15789486973365897771

`A110654(A187329(n))`
-/

namespace A334415.P15789486973365897771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A187329 n).toNat

end

end A334415.P15789486973365897771

namespace A334415

/-- `A110654(A187329(n))` -/
def P15789486973365897771.Spec : Prop :=
  ∀ n, P15789486973365897771.a n = A334415 n

end A334415

/-! ## A334415.P15389484879570026522

`A004526(A187329(n)+1)`
-/

namespace A334415.P15389484879570026522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187329 n + 1).toNat

end

end A334415.P15389484879570026522

namespace A334415

/-- `A004526(A187329(n)+1)` -/
def P15389484879570026522.Spec : Prop :=
  ∀ n, P15389484879570026522.a n = A334415 n

end A334415

/-! ## A334415.P17014761950855393334

`A004957(n)-A198082(n)`
-/

namespace A334415.P17014761950855393334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n - A198082 n

end

end A334415.P17014761950855393334

namespace A334415

/-- `A004957(n)-A198082(n)` -/
def P17014761950855393334.Spec : Prop :=
  ∀ n, P17014761950855393334.a n = A334415 n

end A334415

/-! ## A334415.P15160295572653109560

`A187329(n)-A060144(n)`
-/

namespace A334415.P15160295572653109560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 n - A060144 n

end

end A334415.P15160295572653109560

namespace A334415

/-- `A187329(n)-A060144(n)` -/
def P15160295572653109560.Spec : Prop :=
  ∀ n, P15160295572653109560.a n = A334415 n

end A334415

/-! ## A334415.P11875220283463351276

`A276855(n)-A004976(n)`
-/

namespace A334415.P11875220283463351276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n - A004976 n

end

end A334415.P11875220283463351276

namespace A334415

/-- `A276855(n)-A004976(n)` -/
def P11875220283463351276.Spec : Prop :=
  ∀ n, P11875220283463351276.a n = A334415 n

end A334415

/-! ## A334415.P8941095599366371805

`A195173(n)-A195121(n)`
-/

namespace A334415.P8941095599366371805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195173 n - A195121 n

end

end A334415.P8941095599366371805

namespace A334415

/-- `A195173(n)-A195121(n)` -/
def P8941095599366371805.Spec : Prop :=
  ∀ n, P8941095599366371805.a n = A334415 n

end A334415

/-! ## A334415.P17928134677150792812

`A189663(n+1)-A078588(n)`
-/

namespace A334415.P17928134677150792812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (n + 1) - A078588 n

end

end A334415.P17928134677150792812

namespace A334415

/-- `A189663(n+1)-A078588(n)` -/
def P17928134677150792812.Spec : Prop :=
  ∀ n, P17928134677150792812.a n = A334415 n

end A334415

/-! ## A334415.P8523054903304726836

`A195172(n)-A189663(n+1)`
-/

namespace A334415.P8523054903304726836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 n - A189663 (n + 1)

end

end A334415.P8523054903304726836

namespace A334415

/-- `A195172(n)-A189663(n+1)` -/
def P8523054903304726836.Spec : Prop :=
  ∀ n, P8523054903304726836.a n = A334415 n

end A334415

/-! ## A334415.P14256968978276129551

`A060143(A019446(n+1-A334414(n)))`
-/

namespace A334415.P14256968978276129551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A019446 ((n + 1 : ℤ) - A334414 n).toNat).toNat

end

end A334415.P14256968978276129551

namespace A334415

/-- `A060143(A019446(n+1-A334414(n)))` -/
def P14256968978276129551.Spec : Prop :=
  ∀ n, P14256968978276129551.a n = A334415 n

end A334415

/-!
# A334416: Numbers m such that (m / sum of digits of m) is a palindrome.

The programs for A334416, there is no canonical definition to state claims against.
-/

/-! ## A334416.P15939530973000182599

`record[A097569(n+1)%A184775(n+1)]`
-/

namespace A334416.P15939530973000182599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097569 (n + 1)) (A184775 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334416.P15939530973000182599

/-! ## A334416.P16432500598714344335

`or(A114440(n+1), A185284(A332579(n)))`
-/

namespace A334416.P16432500598714344335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A114440 (n + 1)) (A185284 (A332579 n).toNat)

end

end A334416.P16432500598714344335

/-! ## A334416.P969853691218343854

`or(A185284(A332579(n)), A343680(n+1))`
-/

namespace A334416.P969853691218343854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A332579 n).toNat) (A343680 (n + 1))

end

end A334416.P969853691218343854

/-! ## A334416.P14641970385175173125

`A217973(n+1)-A102681(A199832(n+1))`
-/

namespace A334416.P14641970385175173125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1) - A102681 (A199832 (n + 1)).toNat

end

end A334416.P14641970385175173125

/-! ## A334416.P6714699622627973460

`A217973(n+1)-A288707(A196856(n+1))`
-/

namespace A334416.P6714699622627973460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1) - A288707 (A196856 (n + 1)).toNat

end

end A334416.P6714699622627973460

/-!
# A334417: a(n) is the palindrome equal to A334416(n) divided by its sum of digits.

The programs for A334417, there is no canonical definition to state claims against.
-/

/-! ## A334417.P2604682528002509965

`A334416(n+1)/A007953(A334416(n+1))`
-/

namespace A334417.P2604682528002509965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334416 (n + 1) : ℚ) / (A007953 (A334416 (n + 1)).toNat : ℚ)

end

end A334417.P2604682528002509965

/-! ## A334417.P12570457003652002509

`A059514(A334416(n+1))`
-/

namespace A334417.P12570457003652002509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059514 (A334416 (n + 1)).toNat

end

end A334417.P12570457003652002509

/-! ## A334417.P6390527088264274893

`filter[A113315(n+1), A136522(#)]`
-/

namespace A334417.P6390527088264274893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A334417.P6390527088264274893

/-! ## A334417.P287877314769619493

`A343744(A097569(A235600(A097569(n+1))))`
-/

namespace A334417.P287877314769619493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343744 (A097569 (A235600 (A097569 (n + 1)).toNat).toNat).toNat

end

end A334417.P287877314769619493

/-! ## A334417.P4325531926794092789

`A097569(A005349(A005349(A235600(A114440(n+1)))))`
-/

namespace A334417.P4325531926794092789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097569 (A005349 (A005349 (A235600 (A114440 (n + 1)).toNat).toNat).toNat).toNat

end

end A334417.P4325531926794092789

/-!
# A334418: Primitive abundant numbers (A091191) with a record gap to the next primitive abundant number.

The programs for A334418, there is no canonical definition to state claims against.
-/

/-! ## A334418.P15175092401715130932

`A086958(A317834(n+1)+A065727(n+1))`
-/

namespace A334418.P15175092401715130932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086958 (A317834 (n + 1) + A065727 (n + 1)).toNat

end

end A334418.P15175092401715130932

/-!
# A334420: Numbers m such that sigma(d)/tau(d) is an integer for all divisors d of m.

The programs for A334420, the canonical program `A334420.P13131574615811348760` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334420 has offset 1).

The definition of A334420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334420.P13131574615811348760

`eq[A000005(n+1), A338170(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A334420

/-- `eq[A000005(n+1), A338170(n+1)]+1` -/
def P13131574615811348760.Spec : Prop :=
  ∀ n, (P13131574615811348760.a n : ℤ) = A334420 (n + 1)

theorem P13131574615811348760.correct : P13131574615811348760.Spec := by
  intro n
  simp only [A334420, Nat.add_sub_cancel]

end A334420

/-! ## A334420.P1516344969654267107

`A109613(eq[A000005(n+1), A338170(n+1)])`
-/

namespace A334420.P1516344969654267107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334420.P1516344969654267107

namespace A334420

/-- `A109613(eq[A000005(n+1), A338170(n+1)])` -/
def P1516344969654267107.Spec : Prop :=
  ∀ n, P1516344969654267107.a n = A334420 (n + 1)

end A334420

/-! ## A334420.P10278456088712637140

`eq[A000203(n+1), A338171(n+1)]+1`
-/

namespace A334420.P10278456088712637140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A334420.P10278456088712637140

namespace A334420

/-- `eq[A000203(n+1), A338171(n+1)]+1` -/
def P10278456088712637140.Spec : Prop :=
  ∀ n, (P10278456088712637140.a n : ℤ) = A334420 (n + 1)

end A334420

/-! ## A334420.P12218408583969029547

`eq[A109506(n+1), A338171(n+1)]+1`
-/

namespace A334420.P12218408583969029547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A334420.P12218408583969029547

namespace A334420

/-- `eq[A109506(n+1), A338171(n+1)]+1` -/
def P12218408583969029547.Spec : Prop :=
  ∀ n, (P12218408583969029547.a n : ℤ) = A334420 (n + 1)

end A334420

/-! ## A334420.P15192481921485254390

`eq[A211776(n+1), A334729(n+1)]+1`
-/

namespace A334420.P15192481921485254390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A334420.P15192481921485254390

namespace A334420

/-- `eq[A211776(n+1), A334729(n+1)]+1` -/
def P15192481921485254390.Spec : Prop :=
  ∀ n, (P15192481921485254390.a n : ℤ) = A334420 (n + 1)

end A334420

/-! ## A334420.P10060625165163721440

`A004442(eq[A211776(n+1), A334729(n+1)])`
-/

namespace A334420.P10060625165163721440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334420.P10060625165163721440

namespace A334420

/-- `A004442(eq[A211776(n+1), A334729(n+1)])` -/
def P10060625165163721440.Spec : Prop :=
  ∀ n, P10060625165163721440.a n = A334420 (n + 1)

end A334420

/-! ## A334420.P578005958203331808

`A109613(eq[A109506(n+1), A338171(n+1)])`
-/

namespace A334420.P578005958203331808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334420.P578005958203331808

namespace A334420

/-- `A109613(eq[A109506(n+1), A338171(n+1)])` -/
def P578005958203331808.Spec : Prop :=
  ∀ n, P578005958203331808.a n = A334420 (n + 1)

end A334420

/-! ## A334420.P16568179300779835627

`A342144(n+1)%p?[A195142(n)]`
-/

namespace A334420.P16568179300779835627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342144 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A334420.P16568179300779835627

namespace A334420

/-- `A342144(n+1)%p?[A195142(n)]` -/
def P16568179300779835627.Spec : Prop :=
  ∀ n, P16568179300779835627.a n = A334420 (n + 1)

end A334420

/-! ## A334420.P2153870356708659118

`A001511(A268581(n))*A342144(n+1)`
-/

namespace A334420.P2153870356708659118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A268581 n).toNat * A342144 (n + 1)

end

end A334420.P2153870356708659118

namespace A334420

/-- `A001511(A268581(n))*A342144(n+1)` -/
def P2153870356708659118.Spec : Prop :=
  ∀ n, P2153870356708659118.a n = A334420 (n + 1)

end A334420

/-! ## A334420.P3792453230644060949

`filter[A352830(n+1), A245656(#)]`
-/

namespace A334420.P3792453230644060949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A334420.P3792453230644060949

namespace A334420

/-- `filter[A352830(n+1), A245656(#)]` -/
def P3792453230644060949.Spec : Prop :=
  ∀ n, P3792453230644060949.a n = A334420 (n + 1)

end A334420

/-!
# A334421: a(n) is the smallest number m with n divisors d such that sigma(d)/tau(d) is an integer for all divisors d.

The programs for A334421, there is no canonical definition to state claims against.
-/

/-! ## A334421.P9152519810975448717

`∑[2^n]^n^(3-n)²`
-/

namespace A334421.P9152519810975448717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ ((n : ℚ) ^ ((3 - (n : ℤ)) ^ 2 : ℤ) : ℝ)

end

end A334421.P9152519810975448717

/-!
# A334423: Fixed points of A257345.

The programs for A334423, there is no canonical definition to state claims against.
-/

/-! ## A334423.P18288575203641910

`eq[2*n, A257345(2*n)]`
-/

namespace A334423.P18288575203641910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257345 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334423.P18288575203641910

/-! ## A334423.P8058048958781623891

`A154439(eq[n, A257345(n)])`
-/

namespace A334423.P8058048958781623891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334423.P8058048958781623891

/-! ## A334423.P2395833001240428390

`A154440(eq[n, A257345(n)])`
-/

namespace A334423.P2395833001240428390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A334423.P2395833001240428390

/-! ## A334423.P16358778843558441912

`lt[A167374(A278222(3*n)), 0]`
-/

namespace A334423.P16358778843558441912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (A278222 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334423.P16358778843558441912

/-! ## A334423.P12865222988311722787

`eq[1, A121373(A342634(n))]`
-/

namespace A334423.P12865222988311722787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A342634 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334423.P12865222988311722787

/-!
# A334428: Irregular triangle read by rows: row n gives the members of the smallest nonnegative reduced residue system in the modified congruence modulo 2*n - 1 by Brändli and Beyne, called mod*(2*n - 1).

The programs for A334428, there is no canonical definition to state claims against.
-/

/-! ## A334428.P12003948476100955423

`A000120(A023758(comp[10*n²²])²)`
-/

namespace A334428.P12003948476100955423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A023758 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2).toNat

end

end A334428.P12003948476100955423

/-! ## A334428.P7400975837871046637

`A099563(A200748(n)+A173068(n))`
-/

namespace A334428.P7400975837871046637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A200748 n + A173068 n).toNat

end

end A334428.P7400975837871046637

/-! ## A334428.P8732050588744000828

`A000120(eq[A231867(n+1), A340375(n)])`
-/

namespace A334428.P8732050588744000828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334428.P8732050588744000828

/-! ## A334428.P14540646171148513042

`A002487(eq[A231867(n+1), A340375(n)])`
-/

namespace A334428.P14540646171148513042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334428.P14540646171148513042

/-! ## A334428.P9720219431344571604

`A072273(lcm(A052905(n), A166350(n+1)))`
-/

namespace A334428.P9720219431344571604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (Int.lcm (A052905 n) (A166350 (n + 1)))

end

end A334428.P9720219431344571604

/-!
# A334430: Irregular triangle read by rows. Row n gives the cycles of positive integers of the complete modified doubling sequence MDS(b) for b = 2*n + 1, for n >= 1.

The programs for A334430, there is no canonical definition to state claims against.
-/

/-! ## A334430.P15910887870784075488

`A002260(lt[A014671(n), 1]+1)`
-/

namespace A334430.P15910887870784075488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014671 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A334430.P15910887870784075488

/-! ## A334430.P15305007250801968896

`A001222(A090033(n+1)+A070275(n+1))`
-/

namespace A334430.P15305007250801968896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A090033 (n + 1) + A070275 (n + 1)).toNat

end

end A334430.P15305007250801968896

/-! ## A334430.P16158064310643339726

`A264846(A128936(n)+n)`
-/

namespace A334430.P16158064310643339726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264846 (A128936 n + (n : ℤ)).toNat

end

end A334430.P16158064310643339726

/-! ## A334430.P17661115045977069512

`A195073(∑[A339780(n)!])`
-/

namespace A334430.P17661115045977069512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A339780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334430.P17661115045977069512

/-! ## A334430.P11871836092636476154

`A324190(A000045(2*n+1))+A060016(n+1)`
-/

namespace A334430.P11871836092636476154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (A000045 (2 * n + 1)).toNat + A060016 (n + 1)

end

end A334430.P11871836092636476154

/-!
# A334433: Heinz numbers of all integer partitions sorted first by sum, then by length, and finally lexicographically.

The programs for A334433, there is no canonical definition to state claims against.
-/

/-! ## A334433.P9769186888410072140

`A334435(n)%A002189(n)`
-/

namespace A334433.P9769186888410072140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334435 n) (A002189 n)

end

end A334433.P9769186888410072140

/-! ## A334433.P12384511031360881872

`A334435(n)+A000007(A303694(n))`
-/

namespace A334433.P12384511031360881872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334435 n + A000007 (A303694 n).toNat

end

end A334433.P12384511031360881872

/-! ## A334433.P15646578445129351226

`lcm(A009531(A003215(n)), A334435(n))`
-/

namespace A334433.P15646578445129351226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009531 (A003215 n).toNat) (A334435 n)

end

end A334433.P15646578445129351226

/-! ## A334433.P10856757718154586038

`A334435(n)+A000035(A086005(n+1))`
-/

namespace A334433.P10856757718154586038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334435 n + A000035 (A086005 (n + 1)).toNat

end

end A334433.P10856757718154586038

/-! ## A334433.P8711463488634938859

`A334435(n)+A010054(A260557(n+1))`
-/

namespace A334433.P8711463488634938859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334435 n + A010054 (A260557 (n + 1)).toNat

end

end A334433.P8711463488634938859

/-! ## A334433.P4891482416085737340

`A055975(A056809(n+1))*A334435(n)`
-/

namespace A334433.P4891482416085737340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A056809 (n + 1)).toNat * A334435 n

end

end A334433.P4891482416085737340

/-! ## A334433.P11246905102721849893

`A334435(n)+A000007(A323553(n+1)+1)`
-/

namespace A334433.P11246905102721849893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334435 n + A000007 (A323553 (n + 1) + 1).toNat

end

end A334433.P11246905102721849893

/-! ## A334433.P489964439465679190

`A334435(C(A363323(2*n+1), A385787(n+1))+n)`
-/

namespace A334433.P489964439465679190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334435 (Nat.choose (A363323 (2 * n + 1)).toNat (A385787 (n + 1)).toNat + n)

end

end A334433.P489964439465679190

/-! ## A334433.P5816953621824515804

`A334435(n)+A000007(A212363(n+3))`
-/

namespace A334433.P5816953621824515804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334435 n + A000007 (A212363 (n + 3)).toNat

end

end A334433.P5816953621824515804

/-! ## A334433.P3624379781960145730

`A334435(n)+A059841(A045708(2*(n+1)))`
-/

namespace A334433.P3624379781960145730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334435 n + A059841 (A045708 (2 * (n + 1))).toNat

end

end A334433.P3624379781960145730

/-!
# A334434: Heinz number of the n-th integer partition in graded lexicographic order.

The programs for A334434, there is no canonical definition to state claims against.
-/

/-! ## A334434.P6955757369311499483

`A122111(A185974(n))`
-/

namespace A334434.P6955757369311499483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A185974 n).toNat

end

end A334434.P6955757369311499483

/-! ## A334434.P14203460289846721333

`∑{d}[A185974(n), A329034(#)]`
-/

namespace A334434.P14203460289846721333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A334434.P14203460289846721333

/-! ## A334434.P6103741124132435183

`∑{d}[A064989(A344122(n+2)/4), A329034(#)]`
-/

namespace A334434.P6103741124132435183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A344122 (n + 2) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A334434.P6103741124132435183

/-! ## A334434.P2245274682284635665

`A122111(∏{e}[A036035(n), A000040(#)])`
-/

namespace A334434.P2245274682284635665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A334434.P2245274682284635665

/-! ## A334434.P1584647539934533933

`A122111(∏{e}[A036035(n), A054403(#)])`
-/

namespace A334434.P1584647539934533933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054403 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A334434.P1584647539934533933

/-!
# A334436: Heinz numbers of all reversed integer partitions sorted first by sum and then reverse-lexicographically.

The programs for A334436, there is no canonical definition to state claims against.
-/

/-! ## A334436.P13549973067878448826

`A333219(record[A005843(n)-A233569(n)]+1)`
-/

namespace A334436.P13549973067878448826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A233569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A334436.P13549973067878448826

/-! ## A334436.P4590395881403031039

`A333219(record[A375126(n)+1])`
-/

namespace A334436.P4590395881403031039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334436.P4590395881403031039

/-! ## A334436.P13437947546474148210

`A333219(eq[A124761(2*n)/32, A124761(n)]+1)`
-/

namespace A334436.P13437947546474148210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124761 (2 * n) : ℚ) / 32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1)

end

end A334436.P13437947546474148210

/-!
# A334437: Heinz number of the n-th reversed integer partition in graded lexicographical order.

The programs for A334437, there is no canonical definition to state claims against.
-/

/-! ## A334437.P14541413425049778540

`A246375(A246166(n+1))%A325853(3*n+2)`
-/

namespace A334437.P14541413425049778540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246375 (A246166 (n + 1)).toNat) (A325853 (3 * n + 2))

end

end A334437.P14541413425049778540

/-! ## A334437.P5870903015566569153

`A334033(A277331(n+1))`
-/

namespace A334437.P5870903015566569153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334033 (A277331 (n + 1)).toNat

end

end A334437.P5870903015566569153

/-! ## A334437.P5168781809668701206

`A005941(A246166(n+1))%A196753(n+5)`
-/

namespace A334437.P5168781809668701206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005941 (A246166 (n + 1)).toNat) (A196753 (n + 5))

end

end A334437.P5168781809668701206

/-! ## A334437.P3691207518867119255

`A333485(n)+Δ[A117896(A187363(2*n+3))]`
-/

namespace A334437.P3691207518867119255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117896 (A187363 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333485 n + (f1 (n + 1) - f1 n)

end

end A334437.P3691207518867119255

/-!
# A334440: Irregular triangle T(n,k) read by rows: row n lists numbers of distinct parts of the n-th integer partition in Abramowitz-Stegun (sum/length/lex) order.

The programs for A334440, there is no canonical definition to state claims against.
-/

/-! ## A334440.P16543595474481684015

`A001221(A334433(n))`
-/

namespace A334440.P16543595474481684015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A334433 n).toNat

end

end A334440.P16543595474481684015

/-! ## A334440.P13943031086108971298

`∑{p}[A334433(n), A000001(#)]`
-/

namespace A334440.P13943031086108971298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000001 p

end

end A334440.P13943031086108971298

/-! ## A334440.P1943718157320620816

`∑{p}[A334433(n), A000188(#)]`
-/

namespace A334440.P1943718157320620816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000188 p

end

end A334440.P1943718157320620816

/-! ## A334440.P15194557532849380178

`∑{p}[A334433(n), A000688(#)]`
-/

namespace A334440.P15194557532849380178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000688 p

end

end A334440.P15194557532849380178

/-! ## A334440.P518138795651359236

`∑{p}[A334433(n), A001055(#)]`
-/

namespace A334440.P518138795651359236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A334440.P518138795651359236

/-! ## A334440.P5388002795935255285

`∑{p}[A334433(n), A001222(#)]`
-/

namespace A334440.P5388002795935255285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A334440.P5388002795935255285

/-! ## A334440.P6327937728505092951

`A001222(∏{p}[A334433(n), #])`
-/

namespace A334440.P6327937728505092951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A334440.P6327937728505092951

/-! ## A334440.P1719212027332762389

`∑{d}[A334433(n), A010051(#)]`
-/

namespace A334440.P1719212027332762389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A334440.P1719212027332762389

/-! ## A334440.P4744211136629690748

`A106404(2*A334433(n))`
-/

namespace A334440.P4744211136629690748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (2 * A334433 n).toNat

end

end A334440.P4744211136629690748

/-!
# A334441: Maximum part of the n-th integer partition in Abramowitz-Stegun (sum/length/lex) order; a(0) = 0.

The programs for A334441, there is no canonical definition to state claims against.
-/

/-! ## A334441.P2541636385151098123

`A061395(A334433(n))`
-/

namespace A334441.P2541636385151098123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A334433 n).toNat

end

end A334441.P2541636385151098123

/-! ## A334441.P2692315638350496411

`A065770(∏{p}[A334433(n), #])`
-/

namespace A334441.P2692315638350496411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A334441.P2692315638350496411

/-! ## A334441.P4463752747645519681

`A297113(∏{p}[A334433(n), #])`
-/

namespace A334441.P4463752747645519681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A334441.P4463752747645519681

/-! ## A334441.P8346298478215476616

`A241919(A006530(A334433(n))²)`
-/

namespace A334441.P8346298478215476616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A006530 (A334433 n).toNat ^ 2).toNat

end

end A334441.P8346298478215476616

/-! ## A334441.P12345062493325689314

`A335123(n)+A243055(A334433(n))`
-/

namespace A334441.P12345062493325689314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335123 n + A243055 (A334433 n).toNat

end

end A334441.P12345062493325689314

/-! ## A334441.P17295311050743913559

`∑{d}[A006530(A334433(n)), A049084(#)]`
-/

namespace A334441.P17295311050743913559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A334433 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A334441.P17295311050743913559

/-! ## A334441.P11820594596033638642

`∑{p}[A006530(A334433(n)), A000720(#)]`
-/

namespace A334441.P11820594596033638642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A334433 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A334441.P11820594596033638642

/-!
# A334442: Irregular triangle whose reversed rows are all integer partitions sorted first by sum, then by length, and finally reverse-lexicographically.

The programs for A334442, there is no canonical definition to state claims against.
-/

/-! ## A334442.P1860652429594927956

`dr(A036036(n+1))`
-/

namespace A334442.P1860652429594927956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A036036 (n + 1))

end

end A334442.P1860652429594927956

/-! ## A334442.P3228754508404015287

`and(7, A036036(Δ[n²]-n))`
-/

namespace A334442.P3228754508404015287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A036036 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A334442.P3228754508404015287

/-! ## A334442.P17909201266853919196

`A036036(abs(1-n)+2)%8`
-/

namespace A334442.P17909201266853919196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036036 (|1 - (n : ℤ)| + 2).toNat) 8

end

end A334442.P17909201266853919196

/-! ## A334442.P17235102490199677637

`A036036((n+1)*floor(sqrt(root(n+1, 5))))`
-/

namespace A334442.P17235102490199677637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 ((n + 1 : ℤ) * ⌊Real.sqrt ((n + 1 : ℝ) ^ (1 / (5 : ℝ)))⌋).toNat

end

end A334442.P17235102490199677637

/-! ## A334442.P10029429371469697824

`A000189(A036036(n+1)²)`
-/

namespace A334442.P10029429371469697824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A036036 (n + 1) ^ 2).toNat

end

end A334442.P10029429371469697824

/-! ## A334442.P4153313660317516442

`A019555(A036036(n+1)²)`
-/

namespace A334442.P4153313660317516442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A036036 (n + 1) ^ 2).toNat

end

end A334442.P4153313660317516442

/-! ## A334442.P11122023653925653487

`A007094(A036036(abs(xor(n, -1))))`
-/

namespace A334442.P11122023653925653487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A036036 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A334442.P11122023653925653487

/-! ## A334442.P4554782137318662005

`A002113(A036036(n+1)+1)`
-/

namespace A334442.P4554782137318662005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A036036 (n + 1) + 1).toNat

end

end A334442.P4554782137318662005

/-! ## A334442.P8730245277556306959

`A029970(A036036(n+1)+1)`
-/

namespace A334442.P8730245277556306959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029970 (A036036 (n + 1) + 1).toNat

end

end A334442.P8730245277556306959

/-! ## A334442.P9527602656787674384

`A004186(A036036(n-log2(1/2)))`
-/

namespace A334442.P9527602656787674384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A036036 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A334442.P9527602656787674384

/-!
# A334444: Number of unlabeled n-vertex graphs for which the lights out puzzle has a unique solution.

The programs for A334444, there is no canonical definition to state claims against.
-/

/-! ## A334444.P14499461259556027273

`A254524(A000142(n+1)+n²)`
-/

namespace A334444.P14499461259556027273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254524 (A000142 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A334444.P14499461259556027273

/-! ## A334444.P7632102385027229919

`A100919(A111133(n)+A045629(n))`
-/

namespace A334444.P7632102385027229919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100919 (A111133 n + A045629 n).toNat

end

end A334444.P7632102385027229919

/-! ## A334444.P7084502089881603194

`A254524(A057147(n)+A000142(n+1))`
-/

namespace A334444.P7084502089881603194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254524 (A057147 n + A000142 (n + 1)).toNat

end

end A334444.P7084502089881603194

/-!
# A334453: Perimeters of primitive Heronian triangles whose middle side length is squarefree.

The programs for A334453, there is no canonical definition to state claims against.
-/

/-! ## A334453.P15314813394562490709

`∩[A096468(n+1), A335223(n+1)]%A334338(3*n+4)`
-/

namespace A334453.P15314813394562490709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335223 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A334338 (3 * n + 4))

end

end A334453.P15314813394562490709

/-! ## A334453.P17174409185598979791

`∪[A096468(3*(n+1)), A335246(n+1)]%A334338(3*n+4)`
-/

namespace A334453.P17174409185598979791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335246 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A334338 (3 * n + 4))

end

end A334453.P17174409185598979791

/-! ## A334453.P2485765518551313899

`record[A335223(n+1)/A014963(A247439(n+2))]`
-/

namespace A334453.P2485765518551313899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335223 (n + 1) : ℚ) / (A014963 (A247439 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334453.P2485765518551313899

/-! ## A334453.P4843663174751850241

`∪[A335246(n+1), A096468(3*(n+1))]%A335246(3*n+5)`
-/

namespace A334453.P4843663174751850241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A335246 (3 * n + 5))

end

end A334453.P4843663174751850241

/-!
# A334454: Number of distinct composite numbers in the n X n multiplication table.

The programs for A334454, there is no canonical definition to state claims against.
-/

/-! ## A334454.P2664063902568146464

`∑[A333995(n+1)]`
-/

namespace A334454.P2664063902568146464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334454.P2664063902568146464

/-! ## A334454.P2170997118205013894

`∑[A333995(-xor(n, -1))%67]`
-/

namespace A334454.P2170997118205013894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333995 (-Int.xor (n : ℤ) (-1)).toNat) 67

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334454.P2170997118205013894

/-! ## A334454.P15853445664602073440

`A027421(∑[n+1]+2)%(2^n)`
-/

namespace A334454.P15853445664602073440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027421 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (2 ^ n : ℤ)

end

end A334454.P15853445664602073440

/-! ## A334454.P10465678982404106220

`∑[ceil(n/(n+1)*A062854(n+1))]`
-/

namespace A334454.P10465678982404106220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ) * (A062854 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334454.P10465678982404106220

/-! ## A334454.P17754795019040943738

`A027424(n+1)-∑[C(2, ∑{e}[n+1, #+1])]`
-/

namespace A334454.P17754795019040943738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A334454.P17754795019040943738

/-! ## A334454.P18413609818806691952

`A027422(∑[n+2]-2)%(round(sqrt(n²²+6))-1)`
-/

namespace A334454.P18413609818806691952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027422 (∑ j ∈ Finset.range (n + 1), f1 j - 2)) (SequenceMachineLib.roundAway (Real.sqrt ((n ^ 2) ^ 2 + 6 : ℝ)) - 1)

end

end A334454.P18413609818806691952

/-! ## A334454.P11254152823970428302

`A027424(n+1)-Δ[A002815(n)]`
-/

namespace A334454.P11254152823970428302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - (f1 (n + 1) - f1 n)

end

end A334454.P11254152823970428302

/-! ## A334454.P5514814453810409471

`A027424(n+1)-A036234(n+1)`
-/

namespace A334454.P5514814453810409471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - A036234 (n + 1)

end

end A334454.P5514814453810409471

/-! ## A334454.P3642174773879380365

`∑[A062854(n+1)-A080339(n+1)]`
-/

namespace A334454.P3642174773879380365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1) - A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334454.P3642174773879380365

/-! ## A334454.P6011081579323452227

`A027424(n+1)-(A000720(n+1)+1)`
-/

namespace A334454.P6011081579323452227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - (A000720 (n + 1) + 1)

end

end A334454.P6011081579323452227

/-!
# A334456: Number h of points and of blocks of nontrivial biplanes.

The programs for A334456, there is no canonical definition to state claims against.
-/

/-! ## A334456.P1156867766275952875

`A000124(A344168(n+1))`
-/

namespace A334456.P1156867766275952875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A344168 (n + 1)).toNat

end

end A334456.P1156867766275952875

/-! ## A334456.P17798522460085376680

`A152947(A335911(n+2))`
-/

namespace A334456.P17798522460085376680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A335911 (n + 2)).toNat

end

end A334456.P17798522460085376680

/-! ## A334456.P16629683739664308874

`A000124(A325109(n+3))`
-/

namespace A334456.P16629683739664308874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A325109 (n + 3)).toNat

end

end A334456.P16629683739664308874

/-!
# A334458: Number of vertices in a polygon whose boundary consists of n+2 equally spaced points around a semicircle and n+2 equally spaced points along the diameter (a total of 2n+2 points). See Comments for precise definition.

The programs for A334458, there is no canonical definition to state claims against.
-/

/-! ## A334458.P15467448163158302211

`A334459(n)+1-A333519(n)`
-/

namespace A334458.P15467448163158302211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334459 n + (1 - A333519 n)

end

end A334458.P15467448163158302211

/-! ## A334458.P18225747257411963242

`A334459(n)+A024000(A333519(n))`
-/

namespace A334458.P18225747257411963242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334459 n + A024000 (A333519 n).toNat

end

end A334458.P18225747257411963242

/-! ## A334458.P4991788176582798876

`2-A024000(A334459(n)-A333519(n))`
-/

namespace A334458.P4991788176582798876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (A334459 n - A333519 n).toNat

end

end A334458.P4991788176582798876

/-!
# A334459: Number of edges in a polygon whose boundary consists of n+2 equally spaced points around a semicircle and n+2 equally spaced points along the diameter (a total of 2n+2 points). See Comments for precise definition.

The programs for A334459, there is no canonical definition to state claims against.
-/

/-! ## A334459.P16640278269010890778

`A333519(n)+A334458(n)-1`
-/

namespace A334459.P16640278269010890778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333519 n + (A334458 n - 1)

end

end A334459.P16640278269010890778

/-! ## A334459.P11163022606493588697

`A333519(n)+A023443(A334458(n))`
-/

namespace A334459.P11163022606493588697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333519 n + A023443 (A334458 n).toNat

end

end A334459.P11163022606493588697

/-!
# A334460: Irregular triangle read by rows: T(n,k) is the number of partitions of n into k consecutive parts that differ by 4, and the first element of column k is in the row that is the k-th hexagonal number (A000384).

The programs for A334460, there is no canonical definition to state claims against.
-/

/-! ## A334460.P8382943191563950784

`round(atan(A334462(n+1)))`
-/

namespace A334460.P8382943191563950784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A334462 (n + 1) : ℝ))

end

end A334460.P8382943191563950784

/-! ## A334460.P6204882707753996791

`round(round(A334462(C(n+1, n))/2)/2)`
-/

namespace A334460.P6204882707753996791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A334462 (Nat.choose (n + 1) n) : ℚ) / 2) : ℚ) / 2)

end

end A334460.P6204882707753996791

/-! ## A334460.P3027484955890267611

`ceil(A334462(n+1)/A000079(n))`
-/

namespace A334460.P3027484955890267611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334462 (n + 1) : ℚ) / (A000079 n : ℚ)⌉

end

end A334460.P3027484955890267611

/-! ## A334460.P16103081680730665682

`ceil(A334462(n+1)/A008486(n))`
-/

namespace A334460.P16103081680730665682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334462 (n + 1) : ℚ) / (A008486 n : ℚ)⌉

end

end A334460.P16103081680730665682

/-! ## A334460.P9779675820364392687

`ceil(A334462(n+1)/A022144(n))`
-/

namespace A334460.P9779675820364392687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334462 (n + 1) : ℚ) / (A022144 n : ℚ)⌉

end

end A334460.P9779675820364392687

/-! ## A334460.P4872128046591466341

`ceil(A334462(n+1)/A000040(n+1))`
-/

namespace A334460.P4872128046591466341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334462 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A334460.P4872128046591466341

/-! ## A334460.P10136213290310494962

`ceil(A334462(n+1)/A064789(n+1))`
-/

namespace A334460.P10136213290310494962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334462 (n + 1) : ℚ) / (A064789 (n + 1) : ℚ)⌉

end

end A334460.P10136213290310494962

/-! ## A334460.P6515398185935346512

`ceil(A334462(n+1)/A188663(n+1))`
-/

namespace A334460.P6515398185935346512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334462 (n + 1) : ℚ) / (A188663 (n + 1) : ℚ)⌉

end

end A334460.P6515398185935346512

/-! ## A334460.P5095003525940593984

`ceil(A334462(n+1)/A334455(n+1))`
-/

namespace A334460.P5095003525940593984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334462 (n + 1) : ℚ) / (A334455 (n + 1) : ℚ)⌉

end

end A334460.P5095003525940593984

/-! ## A334460.P6906415975594964069

`ceil(A334462(n+1)/A334468(n+1))`
-/

namespace A334460.P6906415975594964069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334462 (n + 1) : ℚ) / (A334468 (n + 1) : ℚ)⌉

end

end A334460.P6906415975594964069

/-! ## A334460.P787606593444059765

`ceil(A334462(n+1)/A334469(n+1))`
-/

namespace A334460.P787606593444059765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334462 (n + 1) : ℚ) / (A334469 (n + 1) : ℚ)⌉

end

end A334460.P787606593444059765

/-! ## A334460.P4144978755451741689

`ceil(A334462(n+1)/A334486(n+3))`
-/

namespace A334460.P4144978755451741689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334462 (n + 1) : ℚ) / (A334486 (n + 3) : ℚ)⌉

end

end A334460.P4144978755451741689

/-!
# A334461: a(n) is the number of partitions of n into consecutive parts that differ by 4.

The programs for A334461, there is no canonical definition to state claims against.
-/

/-! ## A334461.P10926020758831573686

`ceil(A340805(n+1)/2)`
-/

namespace A334461.P10926020758831573686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A340805 (n + 1) : ℚ) / 2⌉

end

end A334461.P10926020758831573686

/-! ## A334461.P3780895651736631519

`round(A340805(n+1)/A001316(A001316(n)))`
-/

namespace A334461.P3780895651736631519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A340805 (n + 1) : ℚ) / (A001316 (A001316 n).toNat : ℚ))

end

end A334461.P3780895651736631519

/-! ## A334461.P18151682982932840648

`ceil((A067743(n+1)-A197870(n+1))/2)`
-/

namespace A334461.P18151682982932840648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067743 (n + 1) - A197870 (n + 1) : ℚ) / 2⌉

end

end A334461.P18151682982932840648

/-! ## A334461.P6220632675942269759

`ceil((A067743(n+1)-Δ[A057211(n+1)])/2)`
-/

namespace A334461.P6220632675942269759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067743 (n + 1) - (f1 (n + 1) - f1 n) : ℚ) / 2⌉

end

end A334461.P6220632675942269759

/-! ## A334461.P3698134920516770152

`A065033(A067743(n+1)-A197870(n+1))`
-/

namespace A334461.P3698134920516770152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A067743 (n + 1) - A197870 (n + 1)).toNat

end

end A334461.P3698134920516770152

/-! ## A334461.P18249688677029119109

`A065033(A067743(n+1)-Δ[A057211(n+1)])`
-/

namespace A334461.P18249688677029119109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A067743 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A334461.P18249688677029119109

/-! ## A334461.P12413686676966249723

`A004526(A067743(n+1)-A197870(n+1)+1)`
-/

namespace A334461.P12413686676966249723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A067743 (n + 1) - A197870 (n + 1) + 1).toNat

end

end A334461.P12413686676966249723

/-! ## A334461.P15034862689041618031

`A008619(A067743(n+1)-A197870(n+1)-1)`
-/

namespace A334461.P15034862689041618031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A067743 (n + 1) - A197870 (n + 1) - 1).toNat

end

end A334461.P15034862689041618031

/-! ## A334461.P2080964916791328640

`A246552(2*(A067743(n+1)-A197870(n+1)))`
-/

namespace A334461.P2080964916791328640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (2 * (A067743 (n + 1) - A197870 (n + 1))).toNat

end

end A334461.P2080964916791328640

/-! ## A334461.P2483483671139544172

`A004526(A067743(n+1)-Δ[A057211(n+1)]+1)`
-/

namespace A334461.P2483483671139544172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A067743 (n + 1) - (f1 (n + 1) - f1 n) + 1).toNat

end

end A334461.P2483483671139544172

/-! ## A334461.P2589974671209903014

`A008619(A067743(n+1)-Δ[A057211(n+1)]-1)`
-/

namespace A334461.P2589974671209903014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A067743 (n + 1) - (f1 (n + 1) - f1 n) - 1).toNat

end

end A334461.P2589974671209903014

/-! ## A334461.P11525827600412252260

`A246552(2*(A067743(n+1)-Δ[A057211(n+1)]))`
-/

namespace A334461.P11525827600412252260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (2 * (A067743 (n + 1) - (f1 (n + 1) - f1 n))).toNat

end

end A334461.P11525827600412252260

/-! ## A334461.P3153460362553277501

`round(A340805(n+1)/A340805(A000040(n+1)))`
-/

namespace A334461.P3153460362553277501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A340805 (n + 1) : ℚ) / (A340805 (A000040 (n + 1)).toNat : ℚ))

end

end A334461.P3153460362553277501

/-! ## A334461.P7190577257334002558

`round(A340805(n+1)/A035214(∑[n]))`
-/

namespace A334461.P7190577257334002558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A340805 (n + 1) : ℚ) / (A035214 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A334461.P7190577257334002558

/-! ## A334461.P16507783101671385392

`A135539(∑[A010054(n)+n])`
-/

namespace A334461.P16507783101671385392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334461.P16507783101671385392

/-!
# A334462: Irregular triangle read by rows: T(n,k) is the number of parts in the partition of n into k consecutive parts that differ by 4, n >= 1, k >= 1, and the first element of column k is in the row that is the k-th hexagonal number (A000384).

The programs for A334462, there is no canonical definition to state claims against.
-/

/-! ## A334462.P1943604861676149888

`A334947(lt[A067743(2*n+5), A334473(n+1)])`
-/

namespace A334462.P1943604861676149888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067743 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334462.P1943604861676149888

/-! ## A334462.P16454242785114323992

`A334947(A138100(n+1))`
-/

namespace A334462.P16454242785114323992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (A138100 (n + 1)).toNat

end

end A334462.P16454242785114323992

/-! ## A334462.P17946905285143412413

`A334947(A137937(n)+2)`
-/

namespace A334462.P17946905285143412413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (A137937 n + 2).toNat

end

end A334462.P17946905285143412413

/-! ## A334462.P4938230189822214645

`A334947(A137913(n))`
-/

namespace A334462.P4938230189822214645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334947 (A137913 n).toNat

end

end A334462.P4938230189822214645

/-! ## A334462.P17254247068267134928

`A334540(∑[A204162(A033165(n+1))])`
-/

namespace A334462.P17254247068267134928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204162 (A033165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334540 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334462.P17254247068267134928

/-!
# A334463: a(n) is the sum of all parts of all partitions of n into consecutive parts that differ by 3.

The programs for A334463, there is no canonical definition to state claims against.
-/

/-! ## A334463.P9197314122918335254

`(n+1)*A117277(n+1)`
-/

namespace A334463.P9197314122918335254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117277 (n + 1)

end

end A334463.P9197314122918335254

/-! ## A334463.P24732859512994083

`(n+1)*(A243223(n+1)+1)`
-/

namespace A334463.P24732859512994083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A243223 (n + 1) + 1)

end

end A334463.P24732859512994083

/-! ## A334463.P6543429871333869520

`A075362(A117277(n+1)+∑[n])`
-/

namespace A334463.P6543429871333869520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A117277 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A334463.P6543429871333869520

/-! ## A334463.P6203443884507594128

`(n+1)*A000029(A243223(n+1))`
-/

namespace A334463.P6203443884507594128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000029 (A243223 (n + 1)).toNat

end

end A334463.P6203443884507594128

/-! ## A334463.P16331732313399108203

`(A001227(n+1)-A243224(n+1))*(n+1)`
-/

namespace A334463.P16331732313399108203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) - A243224 (n + 1)) * (n + 1 : ℤ)

end

end A334463.P16331732313399108203

/-! ## A334463.P18074817126886039404

`A075362(A243223(n+1)+A000124(n))`
-/

namespace A334463.P18074817126886039404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A243223 (n + 1) + A000124 n).toNat

end

end A334463.P18074817126886039404

/-! ## A334463.P3642203636092936360

`(n+1)*(gcd(A000005(n+1), A000005(2*(n+1)))-A243224(n+1))`
-/

namespace A334463.P3642203636092936360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Int.gcd (A000005 (n + 1)) (A000005 (2 * (n + 1))) : ℤ) - A243224 (n + 1))

end

end A334463.P3642203636092936360

/-!
# A334464: a(n) is the total number of parts in all partitions of n into consecutive parts that differ by 4.

The programs for A334464, there is no canonical definition to state claims against.
-/

/-! ## A334464.P10558216562417077123

`A127057(comp[∑[n-1]]+C(n, 2))`
-/

namespace A334464.P10558216562417077123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + Nat.choose n 2)

end

end A334464.P10558216562417077123

/-! ## A334464.P17556112271649715173

`A127057(∑[A010054(n)+n])`
-/

namespace A334464.P17556112271649715173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334464.P17556112271649715173

/-! ## A334464.P5176711044793912790

`A127057(A002024(n+1)+∑[n])`
-/

namespace A334464.P5176711044793912790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A002024 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A334464.P5176711044793912790

/-! ## A334464.P14777610733546320101

`A127057(A003056(n)+∑[n]+1)`
-/

namespace A334464.P14777610733546320101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A003056 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A334464.P14777610733546320101

/-! ## A334464.P7354808678488452564

`A127057(A000194(2*(n+1))+∑[n])`
-/

namespace A334464.P7354808678488452564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000194 (2 * (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A334464.P7354808678488452564

/-! ## A334464.P8982544461680854749

`A127057(A003056(n)+A000124(n))`
-/

namespace A334464.P8982544461680854749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A003056 n + A000124 n).toNat

end

end A334464.P8982544461680854749

/-! ## A334464.P5710705722521725288

`A127057(A000124(n)+∑[A073424(n)])`
-/

namespace A334464.P5710705722521725288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334464.P5710705722521725288

/-! ## A334464.P6810458841689903325

`A127057(A003056(n)+Δ[A004006(n)])`
-/

namespace A334464.P6810458841689903325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A003056 n + (f1 (n + 1) - f1 n)).toNat

end

end A334464.P6810458841689903325

/-! ## A334464.P12222263571998205215

`A127057(A161680(n)+A007401(n+1))`
-/

namespace A334464.P12222263571998205215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A161680 n + A007401 (n + 1)).toNat

end

end A334464.P12222263571998205215

/-! ## A334464.P14399514937710447614

`A127057(A000217(n)+sqrt(A093995(n+1)))`
-/

namespace A334464.P14399514937710447614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (SequenceMachineLib.roundAway ((A000217 n : ℝ) + Real.sqrt (A093995 (n + 1) : ℝ))).toNat

end

end A334464.P14399514937710447614

/-! ## A334464.P8681779673940889848

`A127057(A000217(n)+A000194(2*(n+1)))`
-/

namespace A334464.P8681779673940889848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000217 n + A000194 (2 * (n + 1))).toNat

end

end A334464.P8681779673940889848

/-! ## A334464.P5497351893892179063

`A127057(A000217(n)+A000196(A093995(n+1)))`
-/

namespace A334464.P5497351893892179063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000217 n + A000196 (A093995 (n + 1)).toNat).toNat

end

end A334464.P5497351893892179063

/-!
# A334465: Irregular triangle read by rows: T(n,k) is the number of partitions of n into k consecutive parts that differ by 5, and the first element of column k is in the row that is the k-th heptagonal number (A000566).

The programs for A334465, there is no canonical definition to state claims against.
-/

/-! ## A334465.P7869809045292981894

`round(atan(A334540(n+1)))`
-/

namespace A334465.P7869809045292981894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A334540 (n + 1) : ℝ))

end

end A334465.P7869809045292981894

/-! ## A334465.P14588445017315716658

`ceil(A334540(n+1)/A000009(n))`
-/

namespace A334465.P14588445017315716658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A000009 n : ℚ)⌉

end

end A334465.P14588445017315716658

/-! ## A334465.P10971989501579806588

`ceil(A334540(n+1)/A000041(n))`
-/

namespace A334465.P10971989501579806588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A000041 n : ℚ)⌉

end

end A334465.P10971989501579806588

/-! ## A334465.P679175891655458367

`ceil(A334540(n+1)/A000121(n))`
-/

namespace A334465.P679175891655458367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A000121 n : ℚ)⌉

end

end A334465.P679175891655458367

/-! ## A334465.P16863584824034237814

`ceil(A334540(n+1)/A000712(n))`
-/

namespace A334465.P16863584824034237814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A000712 n : ℚ)⌉

end

end A334465.P16863584824034237814

/-! ## A334465.P6912117424397819975

`ceil(A334540(n+1)/A002061(n))`
-/

namespace A334465.P6912117424397819975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A002061 n : ℚ)⌉

end

end A334465.P6912117424397819975

/-! ## A334465.P321646000168945039

`ceil(A334540(n+1)/A003215(n))`
-/

namespace A334465.P321646000168945039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A003215 n : ℚ)⌉

end

end A334465.P321646000168945039

/-! ## A334465.P6390449868769345916

`ceil(A334540(n+1)/A008000(n))`
-/

namespace A334465.P6390449868769345916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A008000 n : ℚ)⌉

end

end A334465.P6390449868769345916

/-! ## A334465.P15411358746015445963

`ceil(A334540(n+1)/A016777(n))`
-/

namespace A334465.P15411358746015445963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A016777 n : ℚ)⌉

end

end A334465.P15411358746015445963

/-! ## A334465.P5446609955836224564

`ceil(A334540(n+1)/A046682(n))`
-/

namespace A334465.P5446609955836224564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A046682 n : ℚ)⌉

end

end A334465.P5446609955836224564

/-! ## A334465.P3186225387714050563

`ceil(A334540(n+1)/A051878(n))`
-/

namespace A334465.P3186225387714050563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A051878 n : ℚ)⌉

end

end A334465.P3186225387714050563

/-! ## A334465.P17834037932388677385

`ceil(A334540(n+1)/A052839(n))`
-/

namespace A334465.P17834037932388677385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A052839 n : ℚ)⌉

end

end A334465.P17834037932388677385

/-! ## A334465.P17283171075511720971

`ceil(A334540(n+1)/A147663(n))`
-/

namespace A334465.P17283171075511720971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A147663 n : ℚ)⌉

end

end A334465.P17283171075511720971

/-! ## A334465.P13480204919842345594

`ceil(A334540(n+1)/A250120(n))`
-/

namespace A334465.P13480204919842345594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A250120 n : ℚ)⌉

end

end A334465.P13480204919842345594

/-! ## A334465.P2178931749000368202

`ceil(A334540(n+1)/A000040(n+1))`
-/

namespace A334465.P2178931749000368202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A334465.P2178931749000368202

/-! ## A334465.P1881045406606716774

`ceil(A334540(n+1)/A004808(n+1))`
-/

namespace A334465.P1881045406606716774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A004808 (n + 1) : ℚ)⌉

end

end A334465.P1881045406606716774

/-! ## A334465.P11010342830530473805

`ceil(A334540(n+1)/A048394(n+1))`
-/

namespace A334465.P11010342830530473805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A048394 (n + 1) : ℚ)⌉

end

end A334465.P11010342830530473805

/-! ## A334465.P1906542559041527107

`ceil(A334540(n+1)/A072294(n+1))`
-/

namespace A334465.P1906542559041527107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A072294 (n + 1) : ℚ)⌉

end

end A334465.P1906542559041527107

/-! ## A334465.P17613245252035138090

`ceil(A334540(n+1)/A080608(n+1))`
-/

namespace A334465.P17613245252035138090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A080608 (n + 1) : ℚ)⌉

end

end A334465.P17613245252035138090

/-! ## A334465.P5658296921143554049

`ceil(A334540(n+1)/A084544(n+1))`
-/

namespace A334465.P5658296921143554049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334540 (n + 1) : ℚ) / (A084544 (n + 1) : ℚ)⌉

end

end A334465.P5658296921143554049

/-!
# A334466: Square array read by antidiagonals upwards: T(n,k) is the total number of parts in all partitions of n into consecutive parts that differ by k, with n >= 1, k >= 0.

The programs for A334466, there is no canonical definition to state claims against.
-/

/-! ## A334466.P5761473205174204435

`A361012(A359576(n+1)+A008277(n+1))`
-/

namespace A334466.P5761473205174204435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361012 (A359576 (n + 1) + A008277 (n + 1)).toNat

end

end A334466.P5761473205174204435

/-! ## A334466.P4945563298350476145

`A127057(A026736(A331567(n))+n)`
-/

namespace A334466.P4945563298350476145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A026736 (A331567 n).toNat + (n : ℤ)).toNat

end

end A334466.P4945563298350476145

/-! ## A334466.P5448534370823494543

`gcd(A015585(A084938(n)), A127057(n+1))`
-/

namespace A334466.P5448534370823494543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015585 (A084938 n).toNat) (A127057 (n + 1))

end

end A334466.P5448534370823494543

/-! ## A334466.P15512339992187101814

`or(A059841(A143362(n+1)²), A130307(n))`
-/

namespace A334466.P15512339992187101814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A143362 (n + 1) ^ 2).toNat) (A130307 n)

end

end A334466.P15512339992187101814

/-! ## A334466.P17925829960604067378

`A094603(A176088(n))`
-/

namespace A334466.P17925829960604067378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094603 (A176088 n).toNat

end

end A334466.P17925829960604067378

/-!
# A334467: Square array read by antidiagonals upwards: T(n,k) is the sum of all parts of all partitions of n into consecutive parts that differ by k, with n >= 1, k >= 0.

The programs for A334467, there is no canonical definition to state claims against.
-/

/-! ## A334467.P10543950748402869783

`(C(comp[∑[n]]-n, 2)-n)*A323345(n+1)`
-/

namespace A334467.P10543950748402869783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A323345 (n + 1)

end

end A334467.P10543950748402869783

/-! ## A334467.P13229076538933201146

`A004736(n+1)*A323345(n+1)`
-/

namespace A334467.P13229076538933201146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A323345 (n + 1)

end

end A334467.P13229076538933201146

/-! ## A334467.P17922820516102630960

`(A025581(n)+1)*A323345(n+1)`
-/

namespace A334467.P17922820516102630960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A323345 (n + 1)

end

end A334467.P17922820516102630960

/-! ## A334467.P1546528498626545354

`sqrt(A055461(n+1))*A323345(n+1)`
-/

namespace A334467.P1546528498626545354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A323345 (n + 1) : ℝ)

end

end A334467.P1546528498626545354

/-! ## A334467.P18078656651673678484

`log2(A090988(n+1))*A323345(n+1)`
-/

namespace A334467.P18078656651673678484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ) * (A323345 (n + 1) : ℝ)

end

end A334467.P18078656651673678484

/-! ## A334467.P2901904148881827805

`(log2(A130321(n))+1)*A323345(n+1)`
-/

namespace A334467.P2901904148881827805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A130321 n : ℝ) + 1) * (A323345 (n + 1) : ℝ)

end

end A334467.P2901904148881827805

/-! ## A334467.P13239308533756215985

`(A127739(n+1)-n)*A323345(n+1)`
-/

namespace A334467.P13239308533756215985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) - (n : ℤ)) * A323345 (n + 1)

end

end A334467.P13239308533756215985

/-! ## A334467.P14582576701008773870

`A005496(A025581(n))*A323345(n+1)`
-/

namespace A334467.P14582576701008773870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A025581 n).toNat * A323345 (n + 1)

end

end A334467.P14582576701008773870

/-! ## A334467.P13680070076762072512

`A008619(A099375(n))*A323345(n+1)`
-/

namespace A334467.P13680070076762072512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A099375 n).toNat * A323345 (n + 1)

end

end A334467.P13680070076762072512

/-! ## A334467.P10265937154117648806

`A000005(A130321(n))*A323345(n+1)`
-/

namespace A334467.P10265937154117648806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A323345 (n + 1)

end

end A334467.P10265937154117648806

/-!
# A334468: List of distinct values of n + A217287(n).

The programs for A334468, there is no canonical definition to state claims against.
-/

/-! ## A334468.P16212929933890702087

`record[n-A131738(A217287(n+1))]`
-/

namespace A334468.P16212929933890702087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A131738 (A217287 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334468.P16212929933890702087

/-! ## A334468.P14678310604017909112

`A334469(n+1)+A217287(A334469(n+1))`
-/

namespace A334468.P14678310604017909112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334469 (n + 1) + A217287 (A334469 (n + 1)).toNat

end

end A334468.P14678310604017909112

/-! ## A334468.P4628500430552858904

`record[A217287(A160180(n+1))+A160180(n+1)]`
-/

namespace A334468.P4628500430552858904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217287 (A160180 (n + 1)).toNat + A160180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334468.P4628500430552858904

/-! ## A334468.P3694466609298819985

`record[A217287(A032742(n+1))+A032742(n+1)]`
-/

namespace A334468.P3694466609298819985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217287 (A032742 (n + 1)).toNat + A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334468.P3694466609298819985

/-! ## A334468.P3392202818109240188

`record[A322873(n+1)+A217287(A322873(n+1))]`
-/

namespace A334468.P3392202818109240188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322873 (n + 1) + A217287 (A322873 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334468.P3392202818109240188

/-! ## A334468.P10587639421180543588

`record[A217287(A054576(n+1))+A054576(n+1)]`
-/

namespace A334468.P10587639421180543588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217287 (A054576 (n + 1)).toNat + A054576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334468.P10587639421180543588

/-! ## A334468.P14708645567033577188

`record[A217438(n+1)+A217287(A217438(n+1))]`
-/

namespace A334468.P14708645567033577188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217438 (n + 1) + A217287 (A217438 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334468.P14708645567033577188

/-!
# A334469: Indices of zero or positive first differences in A217287.

The programs for A334469, the canonical program `A334469.P12018164679622748302` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334469 has offset 1).

The definition of A334469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5504 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334469.P11165632768612389107

`record[2-A006530(n+1)+n]`
-/

namespace A334469.P11165632768612389107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006530 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P11165632768612389107

namespace A334469

/-- `record[2-A006530(n+1)+n]` -/
def P11165632768612389107.Spec : Prop :=
  ∀ n, P11165632768612389107.a n = A334469 (n + 1)

end A334469

/-! ## A334469.P3220260008362548901

`record[((n+2)*A006530(n+2))%(n+3)]`
-/

namespace A334469.P3220260008362548901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 2 : ℤ) * A006530 (n + 2)) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P3220260008362548901

namespace A334469

/-- `record[((n+2)*A006530(n+2))%(n+3)]` -/
def P3220260008362548901.Spec : Prop :=
  ∀ n, P3220260008362548901.a n = A334469 (n + 1)

end A334469

/-! ## A334469.P12018164679622748302

`record[3-A000040(A061395(n+2))+n]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A334469

/-- `record[3-A000040(A061395(n+2))+n]` -/
def P12018164679622748302.Spec : Prop :=
  ∀ n, P12018164679622748302.a n = A334469 (n + 1)

theorem P12018164679622748302.correct : P12018164679622748302.Spec := by
  intro n
  simp only [A334469, Nat.add_sub_cancel]

end A334469

/-! ## A334469.P12033160684629243809

`record[A076563(n+2)+1]`
-/

namespace A334469.P12033160684629243809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076563 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P12033160684629243809

namespace A334469

/-- `record[A076563(n+2)+1]` -/
def P12033160684629243809.Spec : Prop :=
  ∀ n, P12033160684629243809.a n = A334469 (n + 1)

end A334469

/-! ## A334469.P274905972213211077

`record[A144396(n+1)-A070229(n+1)]`
-/

namespace A334469.P274905972213211077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - A070229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P274905972213211077

namespace A334469

/-- `record[A144396(n+1)-A070229(n+1)]` -/
def P274905972213211077.Spec : Prop :=
  ∀ n, P274905972213211077.a n = A334469 (n + 1)

end A334469

/-! ## A334469.P3191534729051244388

`record[n+1-A029578((n+1)/A052126(n+1))]`
-/

namespace A334469.P3191534729051244388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A029578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P3191534729051244388

namespace A334469

/-- `record[n+1-A029578((n+1)/A052126(n+1))]` -/
def P3191534729051244388.Spec : Prop :=
  ∀ n, P3191534729051244388.a n = A334469 (n + 1)

end A334469

/-! ## A334469.P3752714473901638470

`record[A005408(n+1)%(A006530(n+1)+n+1)]`
-/

namespace A334469.P3752714473901638470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (n + 1)) (A006530 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P3752714473901638470

namespace A334469

/-- `record[A005408(n+1)%(A006530(n+1)+n+1)]` -/
def P3752714473901638470.Spec : Prop :=
  ∀ n, P3752714473901638470.a n = A334469 (n + 1)

end A334469

/-! ## A334469.P12013176669925911543

`record[A160180(n+1)-A000010(A052369(n+1))]`
-/

namespace A334469.P12013176669925911543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160180 (n + 1) - A000010 (A052369 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P12013176669925911543

namespace A334469

/-- `record[A160180(n+1)-A000010(A052369(n+1))]` -/
def P12013176669925911543.Spec : Prop :=
  ∀ n, P12013176669925911543.a n = A334469 (n + 1)

end A334469

/-! ## A334469.P5621754751263009646

`record[A057979(n)-A046665(n+1)]`
-/

namespace A334469.P5621754751263009646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n - A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334469.P5621754751263009646

namespace A334469

/-- `record[A057979(n)-A046665(n+1)]` -/
def P5621754751263009646.Spec : Prop :=
  ∀ n, P5621754751263009646.a n = A334469 (n + 1)

end A334469

/-!
# A334470: a(n) = Product_{d|n} (A253139(n) / tau(d)) where A253139(n) = lcm_{d|n} tau(d).

The programs for A334470, the canonical program `A334470.P14237330415455119872` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334470 has offset 1).

The definition of A334470 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, A253139, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334470.P14237330415455119872

`A253139(n+1)^A000005(n+1)/A211776(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A334470

/-- `A253139(n+1)^A000005(n+1)/A211776(n+1)` -/
def P14237330415455119872.Spec : Prop :=
  ∀ n, P14237330415455119872.a n = (A334470 (n + 1) : ℚ)

end A334470

/-!
# A334471: a(n) = Product_{d|n} (A069934(n) / sigma(d)) where A069934(n) = lcm_{d|n} sigma(d).

The programs for A334471, there is no canonical definition to state claims against.
-/

/-! ## A334471.P17415546389095505570

`A069934(n+1)^A000005(n+1)/A206032(n+1)`
-/

namespace A334471.P17415546389095505570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069934 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ) / (A206032 (n + 1) : ℚ)

end

end A334471.P17415546389095505570

/-! ## A334471.P6628072141776542383

`A069934(n+1)^A098361(n)!`
-/

namespace A334471.P6628072141776542383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069934 (n + 1) ^ Nat.factorial (A098361 n).toNat

end

end A334471.P6628072141776542383

/-!
# A334473: The n-cowboy shootout problem: a(3^k) = 3^k, a((3^k)+b) = b if (3^k)+b <= 2*3^k, otherwise a((3^k)+b) = 2*b-3^k, where b is a positive integer.

The programs for A334473, there is no canonical definition to state claims against.
-/

/-! ## A334473.P14684612885066040862

`A026741(2*n+1-A171438(n))`
-/

namespace A334473.P14684612885066040862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((2 * n + 1 : ℤ) - A171438 n).toNat

end

end A334473.P14684612885066040862

/-! ## A334473.P14875539552848707280

`lcm(2, A005408(n)-A171438(n))/2`
-/

namespace A334473.P14875539552848707280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A005408 n - A171438 n) : ℚ) / 2

end

end A334473.P14875539552848707280

/-! ## A334473.P15987379611071172300

`A026741(abs(A005408(n)-A171438(n)))`
-/

namespace A334473.P15987379611071172300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 |A005408 n - A171438 n|.toNat

end

end A334473.P15987379611071172300

/-! ## A334473.P10162293600821654533

`A106609(4*(A005408(n)-A171438(n)))`
-/

namespace A334473.P10162293600821654533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * (A005408 n - A171438 n)).toNat

end

end A334473.P10162293600821654533

/-! ## A334473.P12712777498895500047

`A106615(7*(A005408(n)-A171438(n)))`
-/

namespace A334473.P12712777498895500047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (7 * (A005408 n - A171438 n)).toNat

end

end A334473.P12712777498895500047

/-! ## A334473.P17217467766506362510

`A001281(lcm(2, A005408(n)-A171438(n)))`
-/

namespace A334473.P17217467766506362510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A005408 n - A171438 n))

end

end A334473.P17217467766506362510

/-!
# A334475: a(n) is the X-coordinate of the n-th point of the space filling curve T defined in A334474; sequence A334476 gives Y-coordinates.

The programs for A334475, there is no canonical definition to state claims against.
-/

/-! ## A334475.P3146746161659887632

`A334476(A342224(n))`
-/

namespace A334475.P3146746161659887632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334476 (A342224 n).toNat

end

end A334475.P3146746161659887632

/-!
# A334476: a(n) is the Y-coordinate of the n-th point of the space filling curve T defined in A334474; sequence A334475 gives X-coordinates.

The programs for A334476, there is no canonical definition to state claims against.
-/

/-! ## A334476.P3615972066309794305

`A334475(A342224(n))`
-/

namespace A334476.P3615972066309794305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334475 (A342224 n).toNat

end

end A334476.P3615972066309794305

/-!
# A334483: a(n) is the X-coordinate of the n-th point of the Sierpinski arrowhead curve; sequence A334484 gives Y-coordinates.

The programs for A334483, there is no canonical definition to state claims against.
-/

/-! ## A334483.P16198228485213218635

`A334484(3*n)/2`
-/

namespace A334483.P16198228485213218635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334484 (3 * n) : ℚ) / 2

end

end A334483.P16198228485213218635

/-! ## A334483.P16015791120322052034

`A004526(A334484(A008585(n)))`
-/

namespace A334483.P16015791120322052034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A334484 (A008585 n).toNat).toNat

end

end A334483.P16015791120322052034

/-! ## A334483.P14690289663211101157

`A000035(2*n)-A001057(A334484(3*n))`
-/

namespace A334483.P14690289663211101157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A001057 (A334484 (3 * n)).toNat

end

end A334483.P14690289663211101157

/-! ## A334483.P7403121354257129140

`A023917(3*n+1)-A001057(A334484(3*n))`
-/

namespace A334483.P7403121354257129140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (3 * n + 1) - A001057 (A334484 (3 * n)).toNat

end

end A334483.P7403121354257129140

/-! ## A334483.P16566256519258553430

`A010892(3*n+2)-A001057(A334484(3*n))`
-/

namespace A334483.P16566256519258553430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n + 2) - A001057 (A334484 (3 * n)).toNat

end

end A334483.P16566256519258553430

/-!
# A334484: a(n) is the Y-coordinate of the n-th point of the Sierpinski arrowhead curve; sequence A334483 gives X-coordinates.

The programs for A334484, there is no canonical definition to state claims against.
-/

/-! ## A334484.P10863831236021359584

`A334483(3*n)/2`
-/

namespace A334484.P10863831236021359584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334483 (3 * n) : ℚ) / 2

end

end A334484.P10863831236021359584

/-! ## A334484.P8121534338260582758

`A004526(A334483(3*n))`
-/

namespace A334484.P8121534338260582758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A334483 (3 * n)).toNat

end

end A334484.P8121534338260582758

/-! ## A334484.P13404250764619780938

`A006370(A334483(A008585(n)))`
-/

namespace A334484.P13404250764619780938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A334483 (A008585 n).toNat).toNat

end

end A334484.P13404250764619780938

/-! ## A334484.P12647711581917016947

`A028242(A334483(A103517(n)+n))`
-/

namespace A334484.P12647711581917016947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A334483 (A103517 n + (n : ℤ)).toNat).toNat

end

end A334484.P12647711581917016947

/-!
# A334487: a(n) = p(n, 2)*p(n, 5)/p(n, 10) where p(n, b) is the period of repeating digits of 1/n in base b.

The programs for A334487, there is no canonical definition to state claims against.
-/

/-! ## A334487.P15541636411475077219

`A007733(n+1)*A007736(n+1)/A007732(n+1)`
-/

namespace A334487.P15541636411475077219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (n + 1) * A007736 (n + 1) : ℚ) / (A007732 (n + 1) : ℚ)

end

end A334487.P15541636411475077219

/-! ## A334487.P8272675304223160761

`A007733(n+1)*A007736(n+1)/A051626(A109047(n+1)/2)`
-/

namespace A334487.P8272675304223160761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (n + 1) * A007736 (n + 1) : ℚ) / (A051626 (SequenceMachineLib.roundAway ((A109047 (n + 1) : ℚ) / 2)).toNat : ℚ)

end

end A334487.P8272675304223160761

/-! ## A334487.P2552468530231989992

`A007733(n+1)*A007736(n+1)/A051626(A109050(n+1))`
-/

namespace A334487.P2552468530231989992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (n + 1) * A007736 (n + 1) : ℚ) / (A051626 (A109050 (n + 1)).toNat : ℚ)

end

end A334487.P2552468530231989992

/-! ## A334487.P17883891183696645011

`A007733(n+1)*A007736(n+1)/(A233583(A051626(n+1)+2)-1)`
-/

namespace A334487.P17883891183696645011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (n + 1) * A007736 (n + 1) : ℚ) / (A233583 (A051626 (n + 1) + 2).toNat - 1 : ℚ)

end

end A334487.P17883891183696645011

/-! ## A334487.P16439295932725503474

`A007733(n+1)*A007736(n+1)/A051626(A109053(n+1))`
-/

namespace A334487.P16439295932725503474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (n + 1) * A007736 (n + 1) : ℚ) / (A051626 (A109053 (n + 1)).toNat : ℚ)

end

end A334487.P16439295932725503474

/-!
# A334488: Numbers m for which p(m, 2)*p(m, 5) = p(m, 10), where p(m, b) is the period of repeating digits of 1/m in base b.

The programs for A334488, there is no canonical definition to state claims against.
-/

/-! ## A334488.P14838011141951122619

`eq[1, A334487(n+1)]+1`
-/

namespace A334488.P14838011141951122619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334488.P14838011141951122619

/-! ## A334488.P1199706402287275925

`A171558(A036484(n))`
-/

namespace A334488.P1199706402287275925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171558 (A036484 n).toNat

end

end A334488.P1199706402287275925

/-!
# A334489: a(n) = Product_{d|n} (pod(n)/pod(d)) where pod(n) = A007955(n), the product of divisors of n.

The programs for A334489, there is no canonical definition to state claims against.
-/

/-! ## A334489.P4645304765249553321

`∏{d}[n+1, A007955(n+1)/A007955(#)]`
-/

namespace A334489.P4645304765249553321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A007955 (n + 1) : ℚ) / (A007955 d : ℚ)

end

end A334489.P4645304765249553321

/-! ## A334489.P14561422671880353452

`A007955(n+1)^A000005(n+1)/A266265(n+1)`
-/

namespace A334489.P14561422671880353452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ) / (A266265 (n + 1) : ℚ)

end

end A334489.P14561422671880353452

/-! ## A334489.P14393486864940743613

`A354090((n+1)^A329607(n+1))`
-/

namespace A334489.P14393486864940743613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A329607 (n + 1) : ℤ))).toNat

end

end A334489.P14393486864940743613

/-! ## A334489.P1911139407881413482

`A007947(n+1)^A120393(A209601(n+3))`
-/

namespace A334489.P1911139407881413482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A120393 (A209601 (n + 3)).toNat : ℤ)

end

end A334489.P1911139407881413482

/-!
# A334490: a(n) = Sum_{d|n} gcd(d, sigma(d)).

The programs for A334490, the canonical program `A334490.P3091106705763769539` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334490 has offset 1).

The definition of A334490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334490.P3091106705763769539

`∑{d}[n+1, A009194(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A334490

/-- `∑{d}[n+1, A009194(#)]` -/
def P3091106705763769539.Spec : Prop :=
  ∀ n, P3091106705763769539.a n = A334490 (n + 1)

theorem P3091106705763769539.correct : P3091106705763769539.Spec := by
  intro n
  simp only [A334490, Nat.add_sub_cancel]

end A334490

/-! ## A334490.P1110627365744253620

`∑{d}[n+1, #/A017666(#)]`
-/

namespace A334490.P1110627365744253620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A017666 d : ℚ)

end

end A334490.P1110627365744253620

namespace A334490

/-- `∑{d}[n+1, #/A017666(#)]` -/
def P1110627365744253620.Spec : Prop :=
  ∀ n, P1110627365744253620.a n = (A334490 (n + 1) : ℚ)

end A334490

/-! ## A334490.P4745390940949168686

`∑{d}[n+1, gcd(#, A000203(#))]`
-/

namespace A334490.P4745390940949168686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A000203 d)

end

end A334490.P4745390940949168686

namespace A334490

/-- `∑{d}[n+1, gcd(#, A000203(#))]` -/
def P4745390940949168686.Spec : Prop :=
  ∀ n, (P4745390940949168686.a n : ℤ) = A334490 (n + 1)

end A334490

/-! ## A334490.P5400133463776914125

`∑{d}[n+1, A000203(#)/A017665(#)]`
-/

namespace A334490.P5400133463776914125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000203 d : ℚ) / (A017665 d : ℚ)

end

end A334490.P5400133463776914125

namespace A334490

/-- `∑{d}[n+1, A000203(#)/A017665(#)]` -/
def P5400133463776914125.Spec : Prop :=
  ∀ n, P5400133463776914125.a n = (A334490 (n + 1) : ℚ)

end A334490

/-! ## A334490.P8165283864036520495

`∑{d}[n+1, A324544(A250245(#))]`
-/

namespace A334490.P8165283864036520495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324544 (A250245 d).toNat

end

end A334490.P8165283864036520495

namespace A334490

/-- `∑{d}[n+1, A324544(A250245(#))]` -/
def P8165283864036520495.Spec : Prop :=
  ∀ n, P8165283864036520495.a n = A334490 (n + 1)

end A334490

/-!
# A334491: a(n) = Product_{d|n} gcd(d, sigma(d)).

The programs for A334491, the canonical program `A334491.P9359923496953105000` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334491 has offset 1).

The definition of A334491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334491.P9359923496953105000

`∏{d}[n+1, A009194(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A334491

/-- `∏{d}[n+1, A009194(#)]` -/
def P9359923496953105000.Spec : Prop :=
  ∀ n, P9359923496953105000.a n = A334491 (n + 1)

theorem P9359923496953105000.correct : P9359923496953105000.Spec := by
  intro n
  simp only [A334491, Nat.add_sub_cancel]

end A334491

/-! ## A334491.P12098534526421132559

`∏{d}[n+1, #/A017666(#)]`
-/

namespace A334491.P12098534526421132559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A017666 d : ℚ)

end

end A334491.P12098534526421132559

namespace A334491

/-- `∏{d}[n+1, #/A017666(#)]` -/
def P12098534526421132559.Spec : Prop :=
  ∀ n, P12098534526421132559.a n = (A334491 (n + 1) : ℚ)

end A334491

/-! ## A334491.P16980027193221685570

`∏{d}[n+1, gcd(#, A000203(#))]`
-/

namespace A334491.P16980027193221685570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A000203 d)

end

end A334491.P16980027193221685570

namespace A334491

/-- `∏{d}[n+1, gcd(#, A000203(#))]` -/
def P16980027193221685570.Spec : Prop :=
  ∀ n, (P16980027193221685570.a n : ℤ) = A334491 (n + 1)

end A334491

/-! ## A334491.P12409054836550247829

`A324980(n+1)/A334805(n+1)`
-/

namespace A334491.P12409054836550247829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / (A334805 (n + 1) : ℚ)

end

end A334491.P12409054836550247829

namespace A334491

/-- `A324980(n+1)/A334805(n+1)` -/
def P12409054836550247829.Spec : Prop :=
  ∀ n, P12409054836550247829.a n = (A334491 (n + 1) : ℚ)

end A334491

/-! ## A334491.P17405185317820855542

`A324980(n+1)/∏{d}[n+1, lcm(#, A000203(#))]`
-/

namespace A334491.P17405185317820855542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324980 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), Int.lcm (d : ℤ) (A000203 d) : ℕ) : ℚ)

end

end A334491.P17405185317820855542

namespace A334491

/-- `A324980(n+1)/∏{d}[n+1, lcm(#, A000203(#))]` -/
def P17405185317820855542.Spec : Prop :=
  ∀ n, P17405185317820855542.a n = (A334491 (n + 1) : ℚ)

end A334491

/-!
# A334494: Positions k of addition steps in Recamán's sequence A005132 where A005132(k-1)

The programs for A334494, there is no canonical definition to state claims against.
-/

/-! ## A334494.P12409441768352170222

`lt[A005132(n), n+1]+1`
-/

namespace A334494.P12409441768352170222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A334494.P12409441768352170222

/-! ## A334494.P1598171972007512377

`∩[A187921(n+1), comp[A333552(n+1)]]`
-/

namespace A334494.P1598171972007512377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187921 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333552 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A334494.P1598171972007512377

/-! ## A334494.P8670359767553073423

`lt[A334951(n), 0]`
-/

namespace A334494.P8670359767553073423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334494.P8670359767553073423

/-! ## A334494.P955938195138221568

`lt[A063733(n), n+1]`
-/

namespace A334494.P955938195138221568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334494.P955938195138221568

/-! ## A334494.P8091907951903456436

`lt[A209386(n), 2*n+1]+1`
-/

namespace A334494.P8091907951903456436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209386 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A334494.P8091907951903456436

/-! ## A334494.P15193785696071276218

`eq[A063733(n)%A098181(n), A063733(n)]`
-/

namespace A334494.P15193785696071276218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063733 n) (A098181 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334494.P15193785696071276218

/-! ## A334494.P107042552748423315

`lt[A023443(A063733(n)), n]`
-/

namespace A334494.P107042552748423315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063733 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A334494.P107042552748423315

/-! ## A334494.P3231587564842478645

`lt[A004524(A063733(n)), A004525(n)]`
-/

namespace A334494.P3231587564842478645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A063733 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334494.P3231587564842478645

/-!
# A334495: Position of prime(n) in A045572, a(1) = a(3) = 0.

The programs for A334495, there is no canonical definition to state claims against.
-/

/-! ## A334495.P8484267212271781478

`A138997(A100484(n+1))%(3*n+1)`
-/

namespace A334495.P8484267212271781478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138997 (A100484 (n + 1)).toNat) (3 * n + 1 : ℤ)

end

end A334495.P8484267212271781478

/-! ## A334495.P9940421177334317454

`A138997(A074845(n+2))%(3*n+1)`
-/

namespace A334495.P9940421177334317454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138997 (A074845 (n + 2)).toNat) (3 * n + 1 : ℤ)

end

end A334495.P9940421177334317454

/-! ## A334495.P6417947531382920068

`A138997(2*A000040(n+1))%(3*n+1)`
-/

namespace A334495.P6417947531382920068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138997 (2 * A000040 (n + 1)).toNat) (3 * n + 1 : ℤ)

end

end A334495.P6417947531382920068

/-! ## A334495.P5667666155480265978

`A008616(A001749(n+1))%A001588(n)`
-/

namespace A334495.P5667666155480265978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008616 (A001749 (n + 1)).toNat) (A001588 n)

end

end A334495.P5667666155480265978

/-! ## A334495.P14063515490547786789

`A008616(A001749(n+1)%A058383(n+1))`
-/

namespace A334495.P14063515490547786789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.tmod (A001749 (n + 1)) (A058383 (n + 1))).toNat

end

end A334495.P14063515490547786789

/-! ## A334495.P2038050893034836077

`A008616(A001749(n+1))*A008683(A161344(n+1))`
-/

namespace A334495.P2038050893034836077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A001749 (n + 1)).toNat * A008683 (A161344 (n + 1)).toNat

end

end A334495.P2038050893034836077

/-!
# A334496: Eventual period of a single cell in rule 30 cellular automaton in a cyclic universe of width n.

The programs for A334496, there is no canonical definition to state claims against.
-/

/-! ## A334496.P8489520980628719132

`A300362(A177983(n+1)+A115710(n+1))`
-/

namespace A334496.P8489520980628719132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (A177983 (n + 1) + A115710 (n + 1)).toNat

end

end A334496.P8489520980628719132

/-!
# A334498: Number of intervals in Fang's Schroeder-Tamari poset.

The programs for A334498, there is no canonical definition to state claims against.
-/

/-! ## A334498.P5660457679299129471

`A049988(A000079(3*n))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A334498.P5660457679299129471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049988 (A000079 (3 * n)).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A334498.P5660457679299129471

/-!
# A334499: For 0 <= R <= 255, let s(R,n) = eventual period of a single cell in a Rule R cellular automaton operating in a cyclic universe of width n; a(n) = max_R s(R,n).

The programs for A334499, there is no canonical definition to state claims against.
-/

/-! ## A334499.P2593782122228302306

`A357950(A193979(∑[n]))`
-/

namespace A334499.P2593782122228302306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357950 (A193979 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A334499.P2593782122228302306

/-! ## A334499.P6842562153463376424

`A357950(A043316(n+1))`
-/

namespace A334499.P6842562153463376424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357950 (A043316 (n + 1)).toNat

end

end A334499.P6842562153463376424

/-! ## A334499.P10548225564925884199

`A357950(A044913(n+1))`
-/

namespace A334499.P10548225564925884199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357950 (A044913 (n + 1)).toNat

end

end A334499.P10548225564925884199

/-! ## A334499.P8767864483951842853

`A357950(A049872(n+1))`
-/

namespace A334499.P8767864483951842853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357950 (A049872 (n + 1)).toNat

end

end A334499.P8767864483951842853

/-! ## A334499.P15755793351748935007

`A357950(A061147(n+1))`
-/

namespace A334499.P15755793351748935007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357950 (A061147 (n + 1)).toNat

end

end A334499.P15755793351748935007

