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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B010.C000
import Seq.B011.C000
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
# A059402: Numbers with more than one prime factor that do not end in 0 and contain as substrings every maximal prime power dividing them.

The programs for A059402, there is no canonical definition to state claims against.
-/

/-! ## A059402.P18148006672317291983

`∩[A059401(n+1), A059470(n+1)]`
-/

namespace A059402.P18148006672317291983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059402.P18148006672317291983

/-!
# A059403: Quarter-squared applied twice.

The programs for A059403, the canonical program `A059403.P2781636438327241709` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059403 has offset 0).

The definition of A059403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059403.P2781636438327241709

`floor(floor(n²/4)²/4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059403

/-- `floor(floor(n²/4)²/4)` -/
def P2781636438327241709.Spec : Prop :=
  ∀ n, P2781636438327241709.a n = A059403 n

theorem P2781636438327241709.correct : P2781636438327241709.Spec := by
  intro n
  simp only [A059403]

end A059403

/-! ## A059403.P10812712876147113743

`A002620(A002620(n))`
-/

namespace A059403.P10812712876147113743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002620 n).toNat

end

end A059403.P10812712876147113743

namespace A059403

/-- `A002620(A002620(n))` -/
def P10812712876147113743.Spec : Prop :=
  ∀ n, P10812712876147113743.a n = A059403 n

end A059403

/-! ## A059403.P3985438247699509721

`round(∑[C(n, 2)*floor(n/2)]/4)`
-/

namespace A059403.P3985438247699509721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4)

end

end A059403.P3985438247699509721

namespace A059403

/-- `round(∑[C(n, 2)*floor(n/2)]/4)` -/
def P3985438247699509721.Spec : Prop :=
  ∀ n, P3985438247699509721.a n = A059403 n

end A059403

/-! ## A059403.P10932097854220175970

`round(A030179(n)/4)`
-/

namespace A059403.P10932097854220175970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030179 n : ℚ) / 4)

end

end A059403.P10932097854220175970

namespace A059403

/-- `round(A030179(n)/4)` -/
def P10932097854220175970.Spec : Prop :=
  ∀ n, P10932097854220175970.a n = A059403 n

end A059403

/-! ## A059403.P15419481857172854093

`round(A212892(n)/8)`
-/

namespace A059403.P15419481857172854093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A212892 n : ℚ) / 8)

end

end A059403.P15419481857172854093

namespace A059403

/-- `round(A212892(n)/8)` -/
def P15419481857172854093.Spec : Prop :=
  ∀ n, P15419481857172854093.a n = A059403 n

end A059403

/-! ## A059403.P13751234890480806602

`round((A007590(n)/4)²)`
-/

namespace A059403.P13751234890480806602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A007590 n : ℚ) / 4) ^ 2)

end

end A059403.P13751234890480806602

namespace A059403

/-- `round((A007590(n)/4)²)` -/
def P13751234890480806602.Spec : Prop :=
  ∀ n, P13751234890480806602.a n = A059403 n

end A059403

/-! ## A059403.P10855650140120937226

`round(∑[A004526(n)/2]²)`
-/

namespace A059403.P10855650140120937226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A059403.P10855650140120937226

namespace A059403

/-- `round(∑[A004526(n)/2]²)` -/
def P10855650140120937226.Spec : Prop :=
  ∀ n, P10855650140120937226.a n = A059403 n

end A059403

/-! ## A059403.P16244706892368507803

`A001971(n)*A130519(n+1)`
-/

namespace A059403.P16244706892368507803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n * A130519 (n + 1)

end

end A059403.P16244706892368507803

namespace A059403

/-- `A001971(n)*A130519(n+1)` -/
def P16244706892368507803.Spec : Prop :=
  ∀ n, P16244706892368507803.a n = A059403 n

end A059403

/-! ## A059403.P3638318041352505001

`(A130519(n+1)+A011765(n+2))*A130519(n+1)`
-/

namespace A059403.P3638318041352505001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130519 (n + 1) + A011765 (n + 2)) * A130519 (n + 1)

end

end A059403.P3638318041352505001

namespace A059403

/-- `(A130519(n+1)+A011765(n+2))*A130519(n+1)` -/
def P3638318041352505001.Spec : Prop :=
  ∀ n, P3638318041352505001.a n = A059403 n

end A059403

/-! ## A059403.P4445677532838714068

`A033638(floor((n/2)²))-1`
-/

namespace A059403.P4445677532838714068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 ⌊((n : ℚ) / 2) ^ 2⌋.toNat - 1

end

end A059403.P4445677532838714068

namespace A059403

/-- `A033638(floor((n/2)²))-1` -/
def P4445677532838714068.Spec : Prop :=
  ∀ n, P4445677532838714068.a n = A059403 n

end A059403

/-! ## A059403.P13903378862279426612

`A078126(floor((n/2)²))+1`
-/

namespace A059403.P13903378862279426612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 ⌊((n : ℚ) / 2) ^ 2⌋.toNat + 1

end

end A059403.P13903378862279426612

namespace A059403

/-- `A078126(floor((n/2)²))+1` -/
def P13903378862279426612.Spec : Prop :=
  ∀ n, P13903378862279426612.a n = A059403 n

end A059403

/-! ## A059403.P12686176955537022279

`sqrt(A030179(sqrt(A030179(n))))`
-/

namespace A059403.P12686176955537022279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030179 (SequenceMachineLib.roundAway (Real.sqrt (A030179 n : ℝ))).toNat : ℝ)

end

end A059403.P12686176955537022279

namespace A059403

/-- `sqrt(A030179(sqrt(A030179(n))))` -/
def P12686176955537022279.Spec : Prop :=
  ∀ n, P12686176955537022279.a n = (A059403 n : ℝ)

end A059403

/-! ## A059403.P2111767794933416050

`A007590(∑[A004526(n)])/2`
-/

namespace A059403.P2111767794933416050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A059403.P2111767794933416050

namespace A059403

/-- `A007590(∑[A004526(n)])/2` -/
def P2111767794933416050.Spec : Prop :=
  ∀ n, P2111767794933416050.a n = (A059403 n : ℚ)

end A059403

/-! ## A059403.P9767863809107734376

`A007590(A008238(2*n))/2`
-/

namespace A059403.P9767863809107734376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (A008238 (2 * n)).toNat : ℚ) / 2

end

end A059403.P9767863809107734376

namespace A059403

/-- `A007590(A008238(2*n))/2` -/
def P9767863809107734376.Spec : Prop :=
  ∀ n, P9767863809107734376.a n = (A059403 n : ℚ)

end A059403

/-! ## A059403.P11203456797936214932

`A007590(A007590(n)/2)/2`
-/

namespace A059403.P11203456797936214932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (SequenceMachineLib.roundAway ((A007590 n : ℚ) / 2)).toNat : ℚ) / 2

end

end A059403.P11203456797936214932

namespace A059403

/-- `A007590(A007590(n)/2)/2` -/
def P11203456797936214932.Spec : Prop :=
  ∀ n, P11203456797936214932.a n = (A059403 n : ℚ)

end A059403

/-! ## A059403.P9187038244446296685

`A001971(n)*A004526(∑[A004526(n)])`
-/

namespace A059403.P9187038244446296685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n * A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059403.P9187038244446296685

namespace A059403

/-- `A001971(n)*A004526(∑[A004526(n)])` -/
def P9187038244446296685.Spec : Prop :=
  ∀ n, P9187038244446296685.a n = A059403 n

end A059403

/-! ## A059403.P14851406956840630359

`A004526(A004652(n))*A004526(A097066(n))`
-/

namespace A059403.P14851406956840630359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004652 n).toNat * A004526 (A097066 n).toNat

end

end A059403.P14851406956840630359

namespace A059403

/-- `A004526(A004652(n))*A004526(A097066(n))` -/
def P14851406956840630359.Spec : Prop :=
  ∀ n, P14851406956840630359.a n = A059403 n

end A059403

/-! ## A059403.P15418698647195074042

`A008130(A033436(n))`
-/

namespace A059403.P15418698647195074042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (A033436 n).toNat

end

end A059403.P15418698647195074042

namespace A059403

/-- `A008130(A033436(n))` -/
def P15418698647195074042.Spec : Prop :=
  ∀ n, P15418698647195074042.a n = A059403 n

end A059403

/-! ## A059403.P1753122835285752661

`A008238(A007590(n))`
-/

namespace A059403.P1753122835285752661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A007590 n).toNat

end

end A059403.P1753122835285752661

namespace A059403

/-- `A008238(A007590(n))` -/
def P1753122835285752661.Spec : Prop :=
  ∀ n, P1753122835285752661.a n = A059403 n

end A059403

/-! ## A059403.P4298659744718387593

`A008217(A061925(n))`
-/

namespace A059403.P4298659744718387593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A061925 n).toNat

end

end A059403.P4298659744718387593

namespace A059403

/-- `A008217(A061925(n))` -/
def P4298659744718387593.Spec : Prop :=
  ∀ n, P4298659744718387593.a n = A059403 n

end A059403

/-!
# A059404: Numbers with different exponents in their prime factorizations.

The programs for A059404, the canonical program `A059404.P7325982925562044201` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059404 has offset 1).

The definition of A059404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059404.P14968525951839184751

`lt[1, A309004(n+1)]+1`
-/

namespace A059404.P14968525951839184751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059404.P14968525951839184751

namespace A059404

/-- `lt[1, A309004(n+1)]+1` -/
def P14968525951839184751.Spec : Prop :=
  ∀ n, (P14968525951839184751.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P7325982925562044201

`lt[3, A323014(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A059404

/-- `lt[3, A323014(n+1)]+1` -/
def P7325982925562044201.Spec : Prop :=
  ∀ n, (P7325982925562044201.a n : ℤ) = A059404 (n + 1)

theorem P7325982925562044201.correct : P7325982925562044201.Spec := by
  intro n
  simp only [A059404, Nat.add_sub_cancel]

end A059404

/-! ## A059404.P10442323374732111947

`∪[A071365(n+1), A112769(n+1)]`
-/

namespace A059404.P10442323374732111947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059404.P10442323374732111947

namespace A059404

/-- `∪[A071365(n+1), A112769(n+1)]` -/
def P10442323374732111947.Spec : Prop :=
  ∀ n, (P10442323374732111947.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P5500576275461340556

`∪[A071365(n+1), A242416(n+1)]`
-/

namespace A059404.P5500576275461340556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059404.P5500576275461340556

namespace A059404

/-- `∪[A071365(n+1), A242416(n+1)]` -/
def P5500576275461340556.Spec : Prop :=
  ∀ n, (P5500576275461340556.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P5005355268719427040

`∪[A112769(n+1), A242416(n+1)]`
-/

namespace A059404.P5005355268719427040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059404.P5005355268719427040

namespace A059404

/-- `∪[A112769(n+1), A242416(n+1)]` -/
def P5005355268719427040.Spec : Prop :=
  ∀ n, (P5005355268719427040.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P4440177635319775458

`lt[A007947(n+1), A052410(n+1)]+1`
-/

namespace A059404.P4440177635319775458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A059404.P4440177635319775458

namespace A059404

/-- `lt[A007947(n+1), A052410(n+1)]+1` -/
def P4440177635319775458.Spec : Prop :=
  ∀ n, (P4440177635319775458.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P4150019597613305045

`eq[1, A051904(A062977(n+1)²+1)]+1`
-/

namespace A059404.P4150019597613305045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A062977 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059404.P4150019597613305045

namespace A059404

/-- `eq[1, A051904(A062977(n+1)²+1)]+1` -/
def P4150019597613305045.Spec : Prop :=
  ∀ n, (P4150019597613305045.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P2568916918483895381

`lt[2, A304455(n+1)]+1`
-/

namespace A059404.P2568916918483895381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059404.P2568916918483895381

namespace A059404

/-- `lt[2, A304455(n+1)]+1` -/
def P2568916918483895381.Spec : Prop :=
  ∀ n, (P2568916918483895381.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P9220151931291092487

`lt[1, A001222(A329601(n+1))]+1`
-/

namespace A059404.P9220151931291092487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329601 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059404.P9220151931291092487

namespace A059404

/-- `lt[1, A001222(A329601(n+1))]+1` -/
def P9220151931291092487.Spec : Prop :=
  ∀ n, (P9220151931291092487.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P10527903141007916707

`lt[1, A066636(n+1)]+1`
-/

namespace A059404.P10527903141007916707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059404.P10527903141007916707

namespace A059404

/-- `lt[1, A066636(n+1)]+1` -/
def P10527903141007916707.Spec : Prop :=
  ∀ n, (P10527903141007916707.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P9482481898040198069

`lt[2, A000005(A328830(n+1))]+1`
-/

namespace A059404.P9482481898040198069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A328830 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059404.P9482481898040198069

namespace A059404

/-- `lt[2, A000005(A328830(n+1))]+1` -/
def P9482481898040198069.Spec : Prop :=
  ∀ n, (P9482481898040198069.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P8775270517923454413

`eq[3, A388303(n)]`
-/

namespace A059404.P8775270517923454413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059404.P8775270517923454413

namespace A059404

/-- `eq[3, A388303(n)]` -/
def P8775270517923454413.Spec : Prop :=
  ∀ n, (P8775270517923454413.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P7569004700707913674

`lt[1, A062760(n+1)]+1`
-/

namespace A059404.P7569004700707913674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059404.P7569004700707913674

namespace A059404

/-- `lt[1, A062760(n+1)]+1` -/
def P7569004700707913674.Spec : Prop :=
  ∀ n, (P7569004700707913674.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P15386352509759031894

`lt[1, A071625(n+1)]+1`
-/

namespace A059404.P15386352509759031894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059404.P15386352509759031894

namespace A059404

/-- `lt[1, A071625(n+1)]+1` -/
def P15386352509759031894.Spec : Prop :=
  ∀ n, (P15386352509759031894.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P15182317023167620689

`lt[3, A182850(n+1)]+1`
-/

namespace A059404.P15182317023167620689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059404.P15182317023167620689

namespace A059404

/-- `lt[3, A182850(n+1)]+1` -/
def P15182317023167620689.Spec : Prop :=
  ∀ n, (P15182317023167620689.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P6224407801751394637

`lt[n*char[A072774(n+1)], n]`
-/

namespace A059404.P6224407801751394637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A059404.P6224407801751394637

namespace A059404

/-- `lt[n*char[A072774(n+1)], n]` -/
def P6224407801751394637.Spec : Prop :=
  ∀ n, (P6224407801751394637.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P7860222434357562391

`eq[2, and(2, A071625(n+2))]+2`
-/

namespace A059404.P7860222434357562391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A071625 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A059404.P7860222434357562391

namespace A059404

/-- `eq[2, and(2, A071625(n+2))]+2` -/
def P7860222434357562391.Spec : Prop :=
  ∀ n, (P7860222434357562391.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P957855467022345608

`lt[1, A071625(A028310(n))]`
-/

namespace A059404.P957855467022345608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059404.P957855467022345608

namespace A059404

/-- `lt[1, A071625(A028310(n))]` -/
def P957855467022345608.Spec : Prop :=
  ∀ n, (P957855467022345608.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P131394538393958332

`lt[char[A072774(n+1)], A057427(n)]`
-/

namespace A059404.P131394538393958332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A059404.P131394538393958332

namespace A059404

/-- `lt[char[A072774(n+1)], A057427(n)]` -/
def P131394538393958332.Spec : Prop :=
  ∀ n, (P131394538393958332.a n : ℤ) = A059404 (n + 1)

end A059404

/-! ## A059404.P18392660552294345059

`A061767(lt[1, A062977(n+1)+1])`
-/

namespace A059404.P18392660552294345059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059404.P18392660552294345059

namespace A059404

/-- `A061767(lt[1, A062977(n+1)+1])` -/
def P18392660552294345059.Spec : Prop :=
  ∀ n, P18392660552294345059.a n = A059404 (n + 1)

end A059404

/-!
# A059405: Numbers that are the product of their digits raised to positive integer powers.

The programs for A059405, there is no canonical definition to state claims against.
-/

/-! ## A059405.P4578985521300794900

`∑[A089633(A241643(n)!)]`
-/

namespace A059405.P4578985521300794900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (Nat.factorial (A241643 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059405.P4578985521300794900

/-! ## A059405.P6824057500073568888

`A100753(∑[A225656(n+1)!])`
-/

namespace A059405.P6824057500073568888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A225656 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100753 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059405.P6824057500073568888

/-! ## A059405.P7879090506073752197

`A343682(∏{digits}[A001104(n+1), #])`
-/

namespace A059405.P7879090506073752197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343682 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A059405.P7879090506073752197

/-! ## A059405.P3351280148255611714

`A343744(or(n+1, A343682(n+1)))`
-/

namespace A059405.P3351280148255611714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343744 (Int.lor (n + 1 : ℤ) (A343682 (n + 1))).toNat

end

end A059405.P3351280148255611714

/-! ## A059405.P10551141833041510107

`A343744(or(n+1, A343744(n+1)))`
-/

namespace A059405.P10551141833041510107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343744 (Int.lor (n + 1 : ℤ) (A343744 (n + 1))).toNat

end

end A059405.P10551141833041510107

/-!
# A059406: a(n) = a(n-1)*(3a(n-1) + 1)/2 with a(1) = 1.

The programs for A059406, the canonical program `A059406.P11096238919920084126` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059406 has offset 1).

The definition of A059406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059406.P11096238919920084126

`a(n-1)*(3*a(n-1)+1)/2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059406

/-- `a(n-1)*(3*a(n-1)+1)/2` -/
def P11096238919920084126.Spec : Prop :=
  ∀ n, P11096238919920084126.a n = (A059406 (n + 1) : ℚ)

end A059406

/-! ## A059406.P1706268732508686315

`(a(n-1)+3*a(n-1)²)/2` with `a(0)=1`
-/

namespace A059406.P1706268732508686315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 3 * a (n - 1) ^ 2) / 2

end

end A059406.P1706268732508686315

namespace A059406

/-- `(a(n-1)+3*a(n-1)²)/2` -/
def P1706268732508686315.Spec : Prop :=
  ∀ n, P1706268732508686315.a n = (A059406 (n + 1) : ℚ)

end A059406

/-! ## A059406.P17499429903171946086

`C(a(n-1)+1, 2)+a(n-1)²` with `a(0)=1`
-/

namespace A059406.P17499429903171946086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (a (n - 1) + 1) 2 + a (n - 1) ^ 2

end

end A059406.P17499429903171946086

namespace A059406

/-- `C(a(n-1)+1, 2)+a(n-1)²` -/
def P17499429903171946086.Spec : Prop :=
  ∀ n, (P17499429903171946086.a n : ℤ) = A059406 (n + 1)

end A059406

/-! ## A059406.P4673928497738972058

`A007501(n+1)/3`
-/

namespace A059406.P4673928497738972058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007501 (n + 1) : ℚ) / 3

end

end A059406.P4673928497738972058

namespace A059406

/-- `A007501(n+1)/3` -/
def P4673928497738972058.Spec : Prop :=
  ∀ n, P4673928497738972058.a n = (A059406 (n + 1) : ℚ)

end A059406

/-!
# A059407: a(n+1) = a(n)-th composite number, with a(1) = 11.

The programs for A059407, there is no canonical definition to state claims against.
-/

/-! ## A059407.P15980920947052938299

`A114577(C(n+7, 2)-n)`
-/

namespace A059407.P15980920947052938299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (Nat.choose (n + 7) 2 - n)

end

end A059407.P15980920947052938299

/-! ## A059407.P1019672312406180371

`A114577(A166136(n+4))`
-/

namespace A059407.P1019672312406180371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A166136 (n + 4)).toNat

end

end A059407.P1019672312406180371

/-! ## A059407.P7487870224841139194

`A114577(A167499(n+4)+1)`
-/

namespace A059407.P7487870224841139194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A167499 (n + 4) + 1).toNat

end

end A059407.P7487870224841139194

/-! ## A059407.P14358356178984206127

`A114577(A167614(n+4)+3)`
-/

namespace A059407.P14358356178984206127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A167614 (n + 4) + 3).toNat

end

end A059407.P14358356178984206127

/-! ## A059407.P4514179045556292928

`A114577(A133263(n+5)+4)`
-/

namespace A059407.P4514179045556292928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A133263 (n + 5) + 4).toNat

end

end A059407.P4514179045556292928

/-! ## A059407.P17599209749775624420

`A114577(A000124(n+5)+5)`
-/

namespace A059407.P17599209749775624420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A000124 (n + 5) + 5).toNat

end

end A059407.P17599209749775624420

/-! ## A059407.P12704125651076566872

`A114577(A000096(n+4)+7)`
-/

namespace A059407.P12704125651076566872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A000096 (n + 4) + 7).toNat

end

end A059407.P12704125651076566872

/-! ## A059407.P7619662730962768016

`A114577(A000217(n+5)+6)`
-/

namespace A059407.P7619662730962768016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A000217 (n + 5) + 6).toNat

end

end A059407.P7619662730962768016

/-! ## A059407.P1907757233237673445

`A114577(A055998(n+3)+9)`
-/

namespace A059407.P1907757233237673445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A055998 (n + 3) + 9).toNat

end

end A059407.P1907757233237673445

/-! ## A059407.P10602091682944411871

`A114577(A161680(n+6)+6)`
-/

namespace A059407.P10602091682944411871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A161680 (n + 6) + 6).toNat

end

end A059407.P10602091682944411871

/-!
# A059408: a(n+1) = a(n)-th composite and a(1) = 13.

The programs for A059408, there is no canonical definition to state claims against.
-/

/-! ## A059408.P16426316917358583401

`A114577(C(n+7, 2)+7)`
-/

namespace A059408.P16426316917358583401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (Nat.choose (n + 7) 2 + 7)

end

end A059408.P16426316917358583401

/-! ## A059408.P8222469431414098669

`A114577(A167487(n+5))`
-/

namespace A059408.P8222469431414098669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A167487 (n + 5)).toNat

end

end A059408.P8222469431414098669

/-! ## A059408.P17785456480650301018

`A114577(A056119(n)+28)`
-/

namespace A059408.P17785456480650301018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A056119 n + 28).toNat

end

end A059408.P17785456480650301018

/-! ## A059408.P4620065795688131139

`A114577(A166136(n+5)+1)`
-/

namespace A059408.P4620065795688131139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A166136 (n + 5) + 1).toNat

end

end A059408.P4620065795688131139

/-! ## A059408.P474034146058502582

`A114577(A167499(n+5)+2)`
-/

namespace A059408.P474034146058502582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A167499 (n + 5) + 2).toNat

end

end A059408.P474034146058502582

/-! ## A059408.P6112907370785187225

`A114577(A145018(n+7)+3)`
-/

namespace A059408.P6112907370785187225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A145018 (n + 7) + 3).toNat

end

end A059408.P6112907370785187225

/-! ## A059408.P9673392296272922193

`A114577(A000124(n+6)+6)`
-/

namespace A059408.P9673392296272922193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A000124 (n + 6) + 6).toNat

end

end A059408.P9673392296272922193

/-! ## A059408.P12864487681918758282

`A114577(A000096(n+5)+8)`
-/

namespace A059408.P12864487681918758282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A000096 (n + 5) + 8).toNat

end

end A059408.P12864487681918758282

/-! ## A059408.P16572027159539451047

`A114577(A000217(n+6)+7)`
-/

namespace A059408.P16572027159539451047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A000217 (n + 6) + 7).toNat

end

end A059408.P16572027159539451047

/-! ## A059408.P6189842108513174254

`A114577(A034856(n+5)+9)`
-/

namespace A059408.P6189842108513174254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A034856 (n + 5) + 9).toNat

end

end A059408.P6189842108513174254

/-!
# A059409: a(n) = 4^n * (2^n - 1).

The programs for A059409, the canonical program `A059409.P13303064921923202936` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059409 has offset 0).

The definition of A059409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*(2^n-1)` (program `A059409.P13303064921923202936`, by `A059409.P13303064921923202936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059409.P13303064921923202936

`4^n*(2^n-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059409

/-- `4^n*(2^n-1)` -/
def P13303064921923202936.Spec : Prop :=
  ∀ n, P13303064921923202936.a n = A059409 n

theorem P13303064921923202936.correct : P13303064921923202936.Spec := by
  intro n
  simp only [A059409]

end A059409

/-! ## A059409.P18073077269495884750

`12*a(n-1)-32*a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A059409.P18073077269495884750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  12 * a (n - 1) - 32 * a (n - 2)

end

end A059409.P18073077269495884750

namespace A059409

/-- `12*a(n-1)-32*a(n-2)` -/
def P18073077269495884750.Spec : Prop :=
  ∀ n, P18073077269495884750.a n = A059409 n

theorem P18073077269495884750.correct : P18073077269495884750.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A059409, Nat.add_sub_cancel, A059409.P18073077269495884750.a, A059409.P13303064921923202936.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A059409, Nat.add_sub_cancel, A059409.P18073077269495884750.a, A059409.P13303064921923202936.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059409

/-! ## A059409.P614119177075176467

`A291779(A008585(n))`
-/

namespace A059409.P614119177075176467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291779 (A008585 n).toNat

end

end A059409.P614119177075176467

namespace A059409

/-- `A291779(A008585(n))` -/
def P614119177075176467.Spec : Prop :=
  ∀ n, P614119177075176467.a n = A059409 n

end A059409

/-! ## A059409.P16702695477039826465

`A045991(A000079(n))`
-/

namespace A059409.P16702695477039826465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A000079 n).toNat

end

end A059409.P16702695477039826465

namespace A059409

/-- `A045991(A000079(n))` -/
def P16702695477039826465.Spec : Prop :=
  ∀ n, P16702695477039826465.a n = A059409 n

end A059409

/-! ## A059409.P10367881612755459276

`lcm(4^n, C(2^n, 2))`
-/

namespace A059409.P10367881612755459276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (4 ^ n) (Nat.choose (2 ^ n) 2)

end

end A059409.P10367881612755459276

namespace A059409

/-- `lcm(4^n, C(2^n, 2))` -/
def P10367881612755459276.Spec : Prop :=
  ∀ n, (P10367881612755459276.a n : ℤ) = A059409 n

end A059409

/-! ## A059409.P15739915467381084084

`A155629(n)-1`
-/

namespace A059409.P15739915467381084084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155629 n - 1

end

end A059409.P15739915467381084084

namespace A059409

/-- `A155629(n)-1` -/
def P15739915467381084084.Spec : Prop :=
  ∀ n, P15739915467381084084.a n = A059409 n

end A059409

/-! ## A059409.P15755346423087487229

`A291779(3*n)`
-/

namespace A059409.P15755346423087487229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291779 (3 * n)

end

end A059409.P15755346423087487229

namespace A059409

/-- `A291779(3*n)` -/
def P15755346423087487229.Spec : Prop :=
  ∀ n, P15755346423087487229.a n = A059409 n

end A059409

/-! ## A059409.P3559605083750257213

`A001018(n)-A000302(n)`
-/

namespace A059409.P3559605083750257213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n - A000302 n

end

end A059409.P3559605083750257213

namespace A059409

/-- `A001018(n)-A000302(n)` -/
def P3559605083750257213.Spec : Prop :=
  ∀ n, P3559605083750257213.a n = A059409 n

end A059409

/-! ## A059409.P1724866435542753912

`A024088(n)-A024036(n)`
-/

namespace A059409.P1724866435542753912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024088 n - A024036 n

end

end A059409.P1724866435542753912

namespace A059409

/-- `A024088(n)-A024036(n)` -/
def P1724866435542753912.Spec : Prop :=
  ∀ n, P1724866435542753912.a n = A059409 n

end A059409

/-! ## A059409.P9642489747076665302

`A024089(n)-A024037(n)`
-/

namespace A059409.P9642489747076665302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024089 n - A024037 n

end

end A059409.P9642489747076665302

namespace A059409

/-- `A024089(n)-A024037(n)` -/
def P9642489747076665302.Spec : Prop :=
  ∀ n, P9642489747076665302.a n = A059409 n

end A059409

/-! ## A059409.P5324994617198201312

`A024090(n)-A024038(n)`
-/

namespace A059409.P5324994617198201312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024090 n - A024038 n

end

end A059409.P5324994617198201312

namespace A059409

/-- `A024090(n)-A024038(n)` -/
def P5324994617198201312.Spec : Prop :=
  ∀ n, P5324994617198201312.a n = A059409 n

end A059409

/-! ## A059409.P3689257597425001065

`A024091(n)-A024039(n)`
-/

namespace A059409.P3689257597425001065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024091 n - A024039 n

end

end A059409.P3689257597425001065

namespace A059409

/-- `A024091(n)-A024039(n)` -/
def P3689257597425001065.Spec : Prop :=
  ∀ n, P3689257597425001065.a n = A059409 n

end A059409

/-! ## A059409.P15748362451953432595

`A024092(n)-A024040(n)`
-/

namespace A059409.P15748362451953432595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024092 n - A024040 n

end

end A059409.P15748362451953432595

namespace A059409

/-- `A024092(n)-A024040(n)` -/
def P15748362451953432595.Spec : Prop :=
  ∀ n, P15748362451953432595.a n = A059409 n

end A059409

/-! ## A059409.P10531139971048783129

`A024093(n)-A024041(n)`
-/

namespace A059409.P10531139971048783129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024093 n - A024041 n

end

end A059409.P10531139971048783129

namespace A059409

/-- `A024093(n)-A024041(n)` -/
def P10531139971048783129.Spec : Prop :=
  ∀ n, P10531139971048783129.a n = A059409 n

end A059409

/-! ## A059409.P9513104704775809917

`A024094(n)-A024042(n)`
-/

namespace A059409.P9513104704775809917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024094 n - A024042 n

end

end A059409.P9513104704775809917

namespace A059409

/-- `A024094(n)-A024042(n)` -/
def P9513104704775809917.Spec : Prop :=
  ∀ n, P9513104704775809917.a n = A059409 n

end A059409

/-! ## A059409.P12238632584111818233

`A024095(n)-A024043(n)`
-/

namespace A059409.P12238632584111818233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024095 n - A024043 n

end

end A059409.P12238632584111818233

namespace A059409

/-- `A024095(n)-A024043(n)` -/
def P12238632584111818233.Spec : Prop :=
  ∀ n, P12238632584111818233.a n = A059409 n

end A059409

/-! ## A059409.P9299190962168286239

`A024096(n)-A024044(n)`
-/

namespace A059409.P9299190962168286239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024096 n - A024044 n

end

end A059409.P9299190962168286239

namespace A059409

/-- `A024096(n)-A024044(n)` -/
def P9299190962168286239.Spec : Prop :=
  ∀ n, P9299190962168286239.a n = A059409 n

end A059409

/-! ## A059409.P6813277804586740769

`A024097(n)-A024045(n)`
-/

namespace A059409.P6813277804586740769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024097 n - A024045 n

end

end A059409.P6813277804586740769

namespace A059409

/-- `A024097(n)-A024045(n)` -/
def P6813277804586740769.Spec : Prop :=
  ∀ n, P6813277804586740769.a n = A059409 n

end A059409

/-! ## A059409.P6718078322732341444

`A062395(n)-A052539(n)`
-/

namespace A059409.P6718078322732341444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062395 n - A052539 n

end

end A059409.P6718078322732341444

namespace A059409

/-- `A062395(n)-A052539(n)` -/
def P6718078322732341444.Spec : Prop :=
  ∀ n, P6718078322732341444.a n = A059409 n

end A059409

/-!
# A059410: J_n(9) (see A059379).

The programs for A059410, the canonical program `A059410.P7875606528456501010` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059410 has offset 0).

The definition of A059410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059410.P7875606528456501010

`9^n-3^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059410

/-- `9^n-3^n` -/
def P7875606528456501010.Spec : Prop :=
  ∀ n, P7875606528456501010.a n = A059410 n

theorem P7875606528456501010.correct : P7875606528456501010.Spec := by
  intro n
  simp only [A059410]

end A059410

/-! ## A059410.P16142828789210698765

`A000244(n)*A024023(n)`
-/

namespace A059410.P16142828789210698765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A024023 n

end

end A059410.P16142828789210698765

namespace A059410

/-- `A000244(n)*A024023(n)` -/
def P16142828789210698765.Spec : Prop :=
  ∀ n, P16142828789210698765.a n = A059410 n

end A059410

/-! ## A059410.P2096769958010708832

`2*C(3^n, 2)`
-/

namespace A059410.P2096769958010708832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (3 ^ n) 2

end

end A059410.P2096769958010708832

namespace A059410

/-- `2*C(3^n, 2)` -/
def P2096769958010708832.Spec : Prop :=
  ∀ n, (P2096769958010708832.a n : ℤ) = A059410 n

end A059410

/-! ## A059410.P17254549356832566329

`3^n*xor(1, 3^n)`
-/

namespace A059410.P17254549356832566329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.xor 1 (3 ^ n)

end

end A059410.P17254549356832566329

namespace A059410

/-- `3^n*xor(1, 3^n)` -/
def P17254549356832566329.Spec : Prop :=
  ∀ n, (P17254549356832566329.a n : ℤ) = A059410 n

end A059410

/-! ## A059410.P12801914823796888567

`Δ[C(floor(3^n/2), 2)]`
-/

namespace A059410.P12801914823796888567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(3 ^ n : ℚ) / 2⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059410.P12801914823796888567

namespace A059410

/-- `Δ[C(floor(3^n/2), 2)]` -/
def P12801914823796888567.Spec : Prop :=
  ∀ n, P12801914823796888567.a n = A059410 n

end A059410

/-! ## A059410.P1340803612127169680

`C(3^n, 2)/sqrt(1/4)`
-/

namespace A059410.P1340803612127169680
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 ^ n) 2 : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A059410.P1340803612127169680

namespace A059410

/-- `C(3^n, 2)/sqrt(1/4)` -/
def P1340803612127169680.Spec : Prop :=
  ∀ n, P1340803612127169680.a n = (A059410 n : ℝ)

end A059410

/-! ## A059410.P4080839828228785997

`floor((∑[3*a(n-1)]/2)²)` with `a(0)=1, a(1)=4`
-/

namespace A059410.P4080839828228785997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2⌋

end

end A059410.P4080839828228785997

namespace A059410

/-- `floor((∑[3*a(n-1)]/2)²)` -/
def P4080839828228785997.Spec : Prop :=
  ∀ n, P4080839828228785997.a n = A059410 n

end A059410

/-! ## A059410.P8985962988312373364

`abs(12*a(n-1)-27*a(n-2))` with `a(0)=0, a(1)=6`
-/

namespace A059410.P8985962988312373364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  |12 * a (n - 1) - 27 * a (n - 2)|

end

end A059410.P8985962988312373364

namespace A059410

/-- `abs(12*a(n-1)-27*a(n-2))` -/
def P8985962988312373364.Spec : Prop :=
  ∀ n, P8985962988312373364.a n = A059410 n

end A059410

/-! ## A059410.P5404678394406961450

`2*A026121(n)`
-/

namespace A059410.P5404678394406961450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026121 n

end

end A059410.P5404678394406961450

namespace A059410

/-- `2*A026121(n)` -/
def P5404678394406961450.Spec : Prop :=
  ∀ n, P5404678394406961450.a n = A059410 n

end A059410

/-! ## A059410.P10951611288719486987

`3*A219205(n)`
-/

namespace A059410.P10951611288719486987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A219205 n

end

end A059410.P10951611288719486987

namespace A059410

/-- `3*A219205(n)` -/
def P10951611288719486987.Spec : Prop :=
  ∀ n, P10951611288719486987.a n = A059410 n

end A059410

/-! ## A059410.P9863942524422632825

`∑[C(A003946(n), 2)]`
-/

namespace A059410.P9863942524422632825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003946 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059410.P9863942524422632825

namespace A059410

/-- `∑[C(A003946(n), 2)]` -/
def P9863942524422632825.Spec : Prop :=
  ∀ n, (P9863942524422632825.a n : ℤ) = A059410 n

end A059410

/-! ## A059410.P13847804511486876526

`A122008(2*(n+1))`
-/

namespace A059410.P13847804511486876526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122008 (2 * (n + 1))

end

end A059410.P13847804511486876526

namespace A059410

/-- `A122008(2*(n+1))` -/
def P13847804511486876526.Spec : Prop :=
  ∀ n, P13847804511486876526.a n = A059410 n

end A059410

/-! ## A059410.P1339984158621453993

`(A220978(n)-1)/3`
-/

namespace A059410.P1339984158621453993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220978 n - 1 : ℚ) / 3

end

end A059410.P1339984158621453993

namespace A059410

/-- `(A220978(n)-1)/3` -/
def P1339984158621453993.Spec : Prop :=
  ∀ n, P1339984158621453993.a n = (A059410 n : ℚ)

end A059410

/-! ## A059410.P15961532337160838071

`6*A167993(2*n)`
-/

namespace A059410.P15961532337160838071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A167993 (2 * n)

end

end A059410.P15961532337160838071

namespace A059410

/-- `6*A167993(2*n)` -/
def P15961532337160838071.Spec : Prop :=
  ∀ n, P15961532337160838071.a n = A059410 n

end A059410

/-! ## A059410.P6884208621875171001

`floor((A048473(n)/2)²)`
-/

namespace A059410.P6884208621875171001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A048473 n : ℚ) / 2) ^ 2⌋

end

end A059410.P6884208621875171001

namespace A059410

/-- `floor((A048473(n)/2)²)` -/
def P6884208621875171001.Spec : Prop :=
  ∀ n, P6884208621875171001.a n = A059410 n

end A059410

/-! ## A059410.P3636081189254220942

`3*A122006(Δ[n²])`
-/

namespace A059410.P3636081189254220942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059410.P3636081189254220942

namespace A059410

/-- `3*A122006(Δ[n²])` -/
def P3636081189254220942.Spec : Prop :=
  ∀ n, P3636081189254220942.a n = A059410 n

end A059410

/-! ## A059410.P13379225054517133478

`3*A122007(Δ[n²])`
-/

namespace A059410.P13379225054517133478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122007 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059410.P13379225054517133478

namespace A059410

/-- `3*A122007(Δ[n²])` -/
def P13379225054517133478.Spec : Prop :=
  ∀ n, P13379225054517133478.a n = A059410 n

end A059410

/-! ## A059410.P5047283601218028775

`A262414(Δ[n²])/2`
-/

namespace A059410.P5047283601218028775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262414 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A059410.P5047283601218028775

namespace A059410

/-- `A262414(Δ[n²])/2` -/
def P5047283601218028775.Spec : Prop :=
  ∀ n, P5047283601218028775.a n = (A059410 n : ℚ)

end A059410

/-! ## A059410.P12638263270857352093

`A242278(Δ[n²])/3`
-/

namespace A059410.P12638263270857352093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A059410.P12638263270857352093

namespace A059410

/-- `A242278(Δ[n²])/3` -/
def P12638263270857352093.Spec : Prop :=
  ∀ n, P12638263270857352093.a n = (A059410 n : ℚ)

end A059410

/-! ## A059410.P10740070368098183504

`record[2*C(A112626(n), 2)]`
-/

namespace A059410.P10740070368098183504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A112626 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059410.P10740070368098183504

namespace A059410

/-- `record[2*C(A112626(n), 2)]` -/
def P10740070368098183504.Spec : Prop :=
  ∀ n, (P10740070368098183504.a n : ℤ) = A059410 n

end A059410

/-!
# A059411: a(1) = 2, a(n) = k*a(n-1) + 1, where a(n) is the smallest prime of the form k*a(n-1) + 1 and k > 1.

The programs for A059411, there is no canonical definition to state claims against.
-/

/-! ## A059411.P490879209508273032

`A070846(a(n-1))` with `a(0)=2`
-/

namespace A059411.P490879209508273032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070846 (a (n - 1)).toNat

end

end A059411.P490879209508273032

/-! ## A059411.P14818003995259905762

`A070846(abs(a(A023443(n))))` with `a(0)=2`
-/

namespace A059411.P14818003995259905762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070846 |a (A023443 n).toNat|.toNat

end

end A059411.P14818003995259905762

/-! ## A059411.P16054767525025333144

`record[A070846(a(A319700(n)))]` with `a(0)=2`
-/

namespace A059411.P16054767525025333144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A070846 (f1 (A319700 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059411.P16054767525025333144

/-! ## A059411.P114666060523836355

`A070846(a(A023443(n)))/A014963(6*(n+2))` with `a(0)=2`
-/

namespace A059411.P114666060523836355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A070846 (SequenceMachineLib.roundAway (a (A023443 n).toNat)).toNat : ℚ) / (A014963 (6 * (n + 2)) : ℚ)

end

end A059411.P114666060523836355

/-!
# A059412: Number of distinct minimal unary DFA's with exactly n states.

The programs for A059412, the canonical program `A059412.P1207478742608330448` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059412 has offset 1).

The definition of A059412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059412.P2775158775377353741

`A027375(n+1)+2*a(n-1)-A027375(n)` with `a(0)=2`
-/

namespace A059412.P2775158775377353741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A027375 (n + 1) + 2 * a (n - 1) - A027375 n

end

end A059412.P2775158775377353741

namespace A059412

/-- `A027375(n+1)+2*a(n-1)-A027375(n)` -/
def P2775158775377353741.Spec : Prop :=
  ∀ n, P2775158775377353741.a n = A059412 (n + 1)

end A059412

/-! ## A059412.P12155562176000904559

`A000740(n+1)+A059413(n+1)/2`
-/

namespace A059412.P12155562176000904559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000740 (n + 1) : ℚ) + (A059413 (n + 1) : ℚ) / 2

end

end A059412.P12155562176000904559

namespace A059412

/-- `A000740(n+1)+A059413(n+1)/2` -/
def P12155562176000904559.Spec : Prop :=
  ∀ n, P12155562176000904559.a n = (A059412 (n + 1) : ℚ)

end A059412

/-! ## A059412.P1207478742608330448

`A000038(n)+Δ[A059413(A028310(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A059412

/-- `A000038(n)+Δ[A059413(A028310(n))]` -/
def P1207478742608330448.Spec : Prop :=
  ∀ n, P1207478742608330448.a n = A059412 (n + 1)

theorem P1207478742608330448.correct : P1207478742608330448.Spec := by
  intro n
  simp only [A059412, Nat.add_sub_cancel]

end A059412

/-! ## A059412.P5213373688190381265

`Δ[A057427(n)*A059413(A028310(n))]`
-/

namespace A059412.P5213373688190381265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A059413 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059412.P5213373688190381265

namespace A059412

/-- `Δ[A057427(n)*A059413(A028310(n))]` -/
def P5213373688190381265.Spec : Prop :=
  ∀ n, P5213373688190381265.a n = A059412 (n + 1)

end A059412

/-! ## A059412.P6575141838819654595

`A059413(n+1)+A000038(n)-A059413(A028310(n))`
-/

namespace A059412.P6575141838819654595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059413 (n + 1) + (A000038 n - A059413 (A028310 n).toNat)

end

end A059412.P6575141838819654595

namespace A059412

/-- `A059413(n+1)+A000038(n)-A059413(A028310(n))` -/
def P6575141838819654595.Spec : Prop :=
  ∀ n, P6575141838819654595.a n = A059412 (n + 1)

end A059412

/-! ## A059412.P8177401187406120390

`A059413(n+1)-A057427(n)*A059413(A028310(n))`
-/

namespace A059412.P8177401187406120390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059413 (n + 1) - A057427 n * A059413 (A028310 n).toNat

end

end A059412.P8177401187406120390

namespace A059412

/-- `A059413(n+1)-A057427(n)*A059413(A028310(n))` -/
def P8177401187406120390.Spec : Prop :=
  ∀ n, P8177401187406120390.a n = A059412 (n + 1)

end A059412

/-!
# A059413: Number of distinct languages accepted by unary DFA's with n states.

The programs for A059413, the canonical program `A059413.P1689537449278519884` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059413 has offset 1).

The definition of A059413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059413.P2963625469771104037

`∑[A059412(n+1)]`
-/

namespace A059413.P2963625469771104037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059413.P2963625469771104037

namespace A059413

/-- `∑[A059412(n+1)]` -/
def P2963625469771104037.Spec : Prop :=
  ∀ n, P2963625469771104037.a n = A059413 (n + 1)

end A059413

/-! ## A059413.P1764952665318544907

`A027375(n+1)+2*a(n-1)` with `a(0)=2`
-/

namespace A059413.P1764952665318544907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A027375 (n + 1) + 2 * a (n - 1)

end

end A059413.P1764952665318544907

namespace A059413

/-- `A027375(n+1)+2*a(n-1)` -/
def P1764952665318544907.Spec : Prop :=
  ∀ n, P1764952665318544907.a n = A059413 (n + 1)

end A059413

/-! ## A059413.P1689537449278519884

`A038199(n+1)+2*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059413

/-- `A038199(n+1)+2*a(n-1)` -/
def P1689537449278519884.Spec : Prop :=
  ∀ n, P1689537449278519884.a n = A059413 (n + 1)

theorem P1689537449278519884.correct : P1689537449278519884.Spec := by
  intro n
  simp only [A059413, Nat.add_sub_cancel]

end A059413

/-! ## A059413.P3507733749862425854

`A056267(n+1)+2*a(n-1)` with `a(0)=2`
-/

namespace A059413.P3507733749862425854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056267 (n + 1) + 2 * a (n - 1)

end

end A059413.P3507733749862425854

namespace A059413

/-- `A056267(n+1)+2*a(n-1)` -/
def P3507733749862425854.Spec : Prop :=
  ∀ n, P3507733749862425854.a n = A059413 (n + 1)

end A059413

/-! ## A059413.P6415208188356173574

`A059412(n+2)-A027375(n+2)`
-/

namespace A059413.P6415208188356173574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059412 (n + 2) - A027375 (n + 2)

end

end A059413.P6415208188356173574

namespace A059413

/-- `A059412(n+2)-A027375(n+2)` -/
def P6415208188356173574.Spec : Prop :=
  ∀ n, P6415208188356173574.a n = A059413 (n + 1)

end A059413

/-! ## A059413.P3338320140865988137

`A059412(n+2)-A038199(n+2)`
-/

namespace A059413.P3338320140865988137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059412 (n + 2) - A038199 (n + 2)

end

end A059413.P3338320140865988137

namespace A059413

/-- `A059412(n+2)-A038199(n+2)` -/
def P3338320140865988137.Spec : Prop :=
  ∀ n, P3338320140865988137.a n = A059413 (n + 1)

end A059413

/-! ## A059413.P6215065295453227318

`A059412(n+2)-A056267(n+2)`
-/

namespace A059413.P6215065295453227318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059412 (n + 2) - A056267 (n + 2)

end

end A059413.P6215065295453227318

namespace A059413

/-- `A059412(n+2)-A056267(n+2)` -/
def P6215065295453227318.Spec : Prop :=
  ∀ n, P6215065295453227318.a n = A059413 (n + 1)

end A059413

/-! ## A059413.P8199250119578873296

`a(n-1)+A000041(C(2, n+2))*A059412(n+1)` with `a(0)=2`
-/

namespace A059413.P8199250119578873296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A000041 (Nat.choose 2 (n + 2)) * A059412 (n + 1)

end

end A059413.P8199250119578873296

namespace A059413

/-- `a(n-1)+A000041(C(2, n+2))*A059412(n+1)` -/
def P8199250119578873296.Spec : Prop :=
  ∀ n, P8199250119578873296.a n = A059413 (n + 1)

end A059413

/-!
# A059415: Numerators of sequence arising from Apery's proof that zeta(3) is irrational.

The programs for A059415, there is no canonical definition to state claims against.
-/

/-! ## A059415.P18320212544180471888

`A112637(n)/A168263(A064449(n+1))`
-/

namespace A059415.P18320212544180471888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112637 n : ℚ) / (A168263 (A064449 (n + 1)).toNat : ℚ)

end

end A059415.P18320212544180471888

/-!
# A059416: Denominators of sequence arising from Apery's proof that zeta(3) is irrational.

The programs for A059416, there is no canonical definition to state claims against.
-/

/-! ## A059416.P13916960602111747402

`A257045(n)/A005259(n)`
-/

namespace A059416.P13916960602111747402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257045 n : ℚ) / (A005259 n : ℚ)

end

end A059416.P13916960602111747402

/-! ## A059416.P13843592870574440112

`A257045(n)/A143007(∑[4*n])`
-/

namespace A059416.P13843592870574440112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257045 n : ℚ) / (A143007 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A059416.P13843592870574440112

/-! ## A059416.P17176918893952610611

`A257045(n)/or(1, A143007(2*(n²+n)))`
-/

namespace A059416.P17176918893952610611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257045 n : ℚ) / (Int.lor 1 (A143007 (2 * (n ^ 2 + n))) : ℚ)

end

end A059416.P17176918893952610611

/-! ## A059416.P16330149860069749579

`A257045(n)/record[A003982(n)*A143007(n)]`
-/

namespace A059416.P16330149860069749579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A143007 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257045 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A059416.P16330149860069749579

/-! ## A059416.P8185255907834317769

`A257045(n)/record[A143007(n*A008619(n))]`
-/

namespace A059416.P8185255907834317769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257045 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A059416.P8185255907834317769

/-!
# A059418: Triangle T(n,k) arising from enumeration of permutations with ordered orbits, read by rows (1<=k<=n).

The programs for A059418, there is no canonical definition to state claims against.
-/

/-! ## A059418.P13582615926000646693

`A308982(A326659(n+1))`
-/

namespace A059418.P13582615926000646693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308982 (A326659 (n + 1)).toNat

end

end A059418.P13582615926000646693

/-! ## A059418.P2102670262802911088

`A026741(A112356(n+1))%A036435(n+2)`
-/

namespace A059418.P2102670262802911088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A112356 (n + 1)).toNat) (A036435 (n + 2))

end

end A059418.P2102670262802911088

/-!
# A059419: Triangle T(n,k) (1 <= k <= n) of tangent numbers, read by rows: T(n,k) = coefficient of x^n/n! in expansion of (tan x)^k/k!.

The programs for A059419, the canonical program `A059419.P3490390999553107393` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059419 has offset 1).

The definition of A059419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2855 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059419.P3490390999553107393

`abs(A111593(comp[A000217(n)]))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059419

/-- `abs(A111593(comp[A000217(n)]))` -/
def P3490390999553107393.Spec : Prop :=
  ∀ n, P3490390999553107393.a n = A059419 (n + 1)

theorem P3490390999553107393.correct : P3490390999553107393.Spec := by
  intro n
  simp only [A059419, Nat.add_sub_cancel]

end A059419

/-! ## A059419.P6748454870605149118

`A107729(n)/A233543(n)`
-/

namespace A059419.P6748454870605149118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107729 n : ℚ) / (A233543 n : ℚ)

end

end A059419.P6748454870605149118

namespace A059419

/-- `A107729(n)/A233543(n)` -/
def P6748454870605149118.Spec : Prop :=
  ∀ n, P6748454870605149118.a n = (A059419 (n + 1) : ℚ)

end A059419

/-! ## A059419.P12390998940488288390

`A155100(A014132(n+1))/A002262(n)!`
-/

namespace A059419.P12390998940488288390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155100 (A014132 (n + 1)).toNat : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A059419.P12390998940488288390

namespace A059419

/-- `A155100(A014132(n+1))/A002262(n)!` -/
def P12390998940488288390.Spec : Prop :=
  ∀ n, P12390998940488288390.a n = (A059419 (n + 1) : ℚ)

end A059419

/-! ## A059419.P5742855460653285624

`A185896(n)/A166350(n+1)`
-/

namespace A059419.P5742855460653285624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (A166350 (n + 1) : ℚ)

end

end A059419.P5742855460653285624

namespace A059419

/-- `A185896(n)/A166350(n+1)` -/
def P5742855460653285624.Spec : Prop :=
  ∀ n, P5742855460653285624.a n = (A059419 (n + 1) : ℚ)

end A059419

/-! ## A059419.P15841045849391704420

`A185896(n)/A002260(n+1)!`
-/

namespace A059419.P15841045849391704420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (Nat.factorial (A002260 (n + 1)).toNat : ℚ)

end

end A059419.P15841045849391704420

namespace A059419

/-- `A185896(n)/A002260(n+1)!` -/
def P15841045849391704420.Spec : Prop :=
  ∀ n, P15841045849391704420.a n = (A059419 (n + 1) : ℚ)

end A059419

/-! ## A059419.P7805932419812487721

`A185896(n)/(A002262(n)+1)!`
-/

namespace A059419.P7805932419812487721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (Nat.factorial (A002262 n + 1).toNat : ℚ)

end

end A059419.P7805932419812487721

namespace A059419

/-- `A185896(n)/(A002262(n)+1)!` -/
def P7805932419812487721.Spec : Prop :=
  ∀ n, P7805932419812487721.a n = (A059419 (n + 1) : ℚ)

end A059419

/-! ## A059419.P6220270245007323576

`A185896(n)/A057555(2*n+1)!`
-/

namespace A059419.P6220270245007323576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (Nat.factorial (A057555 (2 * n + 1)).toNat : ℚ)

end

end A059419.P6220270245007323576

namespace A059419

/-- `A185896(n)/A057555(2*n+1)!` -/
def P6220270245007323576.Spec : Prop :=
  ∀ n, P6220270245007323576.a n = (A059419 (n + 1) : ℚ)

end A059419

/-! ## A059419.P7501915847123049622

`A185896(n)/A112007(A112367(n))`
-/

namespace A059419.P7501915847123049622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185896 n : ℚ) / (A112007 (A112367 n).toNat : ℚ)

end

end A059419.P7501915847123049622

namespace A059419

/-- `A185896(n)/A112007(A112367(n))` -/
def P7501915847123049622.Spec : Prop :=
  ∀ n, P7501915847123049622.a n = (A059419 (n + 1) : ℚ)

end A059419

/-! ## A059419.P12114307870962351252

`A147315(n)/A185421(n+1)*A185896(n)`
-/

namespace A059419.P12114307870962351252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147315 n : ℚ) / (A185421 (n + 1) : ℚ) * (A185896 n : ℚ)

end

end A059419.P12114307870962351252

namespace A059419

/-- `A147315(n)/A185421(n+1)*A185896(n)` -/
def P12114307870962351252.Spec : Prop :=
  ∀ n, P12114307870962351252.a n = (A059419 (n + 1) : ℚ)

end A059419

/-! ## A059419.P6300384048156101682

`A008277(n+1)/A019538(n+1)*A185896(n)`
-/

namespace A059419.P6300384048156101682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A019538 (n + 1) : ℚ) * (A185896 n : ℚ)

end

end A059419.P6300384048156101682

namespace A059419

/-- `A008277(n+1)/A019538(n+1)*A185896(n)` -/
def P6300384048156101682.Spec : Prop :=
  ∀ n, P6300384048156101682.a n = (A059419 (n + 1) : ℚ)

end A059419

/-!
# A059420: A diagonal of A059419.

The programs for A059420, there is no canonical definition to state claims against.
-/

/-! ## A059420.P11891808058250371241

`A008308((n+2)²-n)`
-/

namespace A059420.P11891808058250371241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008308 ((n + 2) ^ 2 - n)

end

end A059420.P11891808058250371241

/-! ## A059420.P1484594046499050869

`record[A059419(A167614(n+1))]`
-/

namespace A059420.P1484594046499050869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059420.P1484594046499050869

/-! ## A059420.P15105940074608592365

`A059419(A096376(n+1)+1)`
-/

namespace A059420.P15105940074608592365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (A096376 (n + 1) + 1).toNat

end

end A059420.P15105940074608592365

/-! ## A059420.P3280518716088961054

`A008293((n+2)²)/2`
-/

namespace A059420.P3280518716088961054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008293 ((n + 2) ^ 2) : ℚ) / 2

end

end A059420.P3280518716088961054

/-!
# A059421: A diagonal of A059419.

The programs for A059421, the canonical program `A059421.P15081835399936104983` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059421 has offset 1).

The definition of A059421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059421.P15081835399936104983

`∑[8*(n+2)*C(n+4, 4)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059421

/-- `∑[8*(n+2)*C(n+4, 4)]` -/
def P15081835399936104983.Spec : Prop :=
  ∀ n, (P15081835399936104983.a n : ℤ) = A059421 (n + 1)

theorem P15081835399936104983.correct : P15081835399936104983.Spec := by
  intro n
  simp only [A059421, Nat.add_sub_cancel]

end A059421

/-! ## A059421.P5816381450861210651

`8*∑[∑[∑[∑[∑[5*n+2]]]]]`
-/

namespace A059421.P5816381450861210651
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059421.P5816381450861210651

namespace A059421

/-- `8*∑[∑[∑[∑[∑[5*n+2]]]]]` -/
def P5816381450861210651.Spec : Prop :=
  ∀ n, (P5816381450861210651.a n : ℤ) = A059421 (n + 1)

end A059421

/-! ## A059421.P7445679327248935887

`∑[4*A027789(n+1)]`
-/

namespace A059421.P7445679327248935887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A027789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059421.P7445679327248935887

namespace A059421

/-- `∑[4*A027789(n+1)]` -/
def P7445679327248935887.Spec : Prop :=
  ∀ n, P7445679327248935887.a n = A059421 (n + 1)

theorem P7445679327248935887.correct : P7445679327248935887.Spec := by
  intro n
  simp only [A059421, Nat.add_sub_cancel, A059421.P7445679327248935887.f1, A059421.P7445679327248935887.a, A059421.P15081835399936104983.f1, A059421.P15081835399936104983.a, A027789, A027789.P11069753155162701175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059421

/-! ## A059421.P16547337472134761864

`∑[8*A006470(n+1)]`
-/

namespace A059421.P16547337472134761864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A006470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059421.P16547337472134761864

namespace A059421

/-- `∑[8*A006470(n+1)]` -/
def P16547337472134761864.Spec : Prop :=
  ∀ n, P16547337472134761864.a n = A059421 (n + 1)

theorem P16547337472134761864.correct : P16547337472134761864.Spec := by
  intro n
  simp only [A059421, Nat.add_sub_cancel, A059421.P16547337472134761864.f1, A059421.P16547337472134761864.a, A059421.P15081835399936104983.f1, A059421.P15081835399936104983.a, A006470, A006470.P17673189531466744654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059421

/-! ## A059421.P2951392646597080216

`∑[(n+2)*A162668(n+1)]`
-/

namespace A059421.P2951392646597080216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A162668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059421.P2951392646597080216

namespace A059421

/-- `∑[(n+2)*A162668(n+1)]` -/
def P2951392646597080216.Spec : Prop :=
  ∀ n, P2951392646597080216.a n = A059421 (n + 1)

theorem P2951392646597080216.correct : P2951392646597080216.Spec := by
  intro n
  simp only [A059421, Nat.add_sub_cancel, A059421.P2951392646597080216.f1, A059421.P2951392646597080216.a, A059421.P15081835399936104983.f1, A059421.P15081835399936104983.a, A162668, A162668.P8323676352970519687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059421

/-!
# A059422: Difference between number of even equivalence classes and odd classes of terms in a symmetric determinant of order n.

The programs for A059422, there is no canonical definition to state claims against.
-/

/-! ## A059422.P16659684646742290474

`A059423(n)-A059424(n)`
-/

namespace A059422.P16659684646742290474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059423 n - A059424 n

end

end A059422.P16659684646742290474

/-! ## A059422.P5226716978729281237

`2*A059423(n)-A002135(n)`
-/

namespace A059422.P5226716978729281237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059423 n - A002135 n

end

end A059422.P5226716978729281237

/-! ## A059422.P13670589571588089014

`A002135(n)-2*A059424(n)`
-/

namespace A059422.P13670589571588089014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002135 n - 2 * A059424 n

end

end A059422.P13670589571588089014

/-! ## A059422.P2357690928499578314

`2*A059423(n)-A260338(A000217(n))`
-/

namespace A059422.P2357690928499578314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059423 n - A260338 (A000217 n).toNat

end

end A059422.P2357690928499578314

/-! ## A059422.P15543509734518202172

`A260338(∑[n])-A059424(n)-A059424(n)`
-/

namespace A059422.P15543509734518202172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260338 (∑ j ∈ Finset.range (n + 1), f1 j) - A059424 n - A059424 n

end

end A059422.P15543509734518202172

/-! ## A059422.P15032822917665191531

`A059423(n)-(A260338(∑[n])-A059423(n))`
-/

namespace A059422.P15032822917665191531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059423 n - (A260338 (∑ j ∈ Finset.range (n + 1), f1 j) - A059423 n)

end

end A059422.P15032822917665191531

/-!
# A059423: Number of positive terms in a symmetric determinant of order n.

The programs for A059423, there is no canonical definition to state claims against.
-/

/-! ## A059423.P17299572477677705365

`A059424(n)+A059422(n)`
-/

namespace A059423.P17299572477677705365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059424 n + A059422 n

end

end A059423.P17299572477677705365

/-! ## A059423.P11986095291670294504

`A002135(n)-A059424(n)`
-/

namespace A059423.P11986095291670294504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002135 n - A059424 n

end

end A059423.P11986095291670294504

/-! ## A059423.P1912330372338111390

`A260338(∑[n])-A059424(n)`
-/

namespace A059423.P1912330372338111390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260338 (∑ j ∈ Finset.range (n + 1), f1 j) - A059424 n

end

end A059423.P1912330372338111390

/-! ## A059423.P12514829062195728036

`(A059422(n)+A002135(n))/2`
-/

namespace A059423.P12514829062195728036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059422 n + A002135 n : ℚ) / 2

end

end A059423.P12514829062195728036

/-! ## A059423.P14540641113517632804

`A260338(∑[n])-(A002135(n)-A059422(n))/2`
-/

namespace A059423.P14540641113517632804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260338 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) - (A002135 n - A059422 n : ℚ) / 2

end

end A059423.P14540641113517632804

/-!
# A059424: Number of negative terms in a symmetric determinant of order n.

The programs for A059424, there is no canonical definition to state claims against.
-/

/-! ## A059424.P8535501147269066966

`A002135(n)-A059423(n)`
-/

namespace A059424.P8535501147269066966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002135 n - A059423 n

end

end A059424.P8535501147269066966

/-! ## A059424.P2864602624682086282

`A059423(n)-A059422(n)`
-/

namespace A059424.P2864602624682086282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059423 n - A059422 n

end

end A059424.P2864602624682086282

/-! ## A059424.P3615492465281650448

`A260338(∑[n])-A059423(n)`
-/

namespace A059424.P3615492465281650448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260338 (∑ j ∈ Finset.range (n + 1), f1 j) - A059423 n

end

end A059424.P3615492465281650448

/-! ## A059424.P3967233508326241974

`(A002135(n)-A059422(n))/2`
-/

namespace A059424.P3967233508326241974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002135 n - A059422 n : ℚ) / 2

end

end A059424.P3967233508326241974

/-! ## A059424.P5812581451095231849

`A260338(A000217(n))%A066166(n+2)-A059423(n)`
-/

namespace A059424.P5812581451095231849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260338 (A000217 n).toNat) (A066166 (n + 2)) - A059423 n

end

end A059424.P5812581451095231849

/-!
# A059425: Primes of form n^2 + 19n + 17.

The programs for A059425, the canonical program `A059425.P14037987907372269504` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059425 has offset 1).

The definition of A059425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059425.P14037987907372269504

`p?[∑[2*n]-73]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059425

/-- `p?[∑[2*n]-73]` -/
def P14037987907372269504.Spec : Prop :=
  ∀ n, P14037987907372269504.a n = A059425 (n + 1)

theorem P14037987907372269504.correct : P14037987907372269504.Spec := by
  intro n
  simp only [A059425, Nat.add_sub_cancel]

end A059425

/-! ## A059425.P15839923282063485479

`or(1, p?[n²-73+n])`
-/

namespace A059425.P15839923282063485479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 73 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A059425.P15839923282063485479

namespace A059425

/-- `or(1, p?[n²-73+n])` -/
def P15839923282063485479.Spec : Prop :=
  ∀ n, P15839923282063485479.a n = A059425 (n + 1)

end A059425

/-! ## A059425.P13661550417507160899

`record[A020639(∑[2*n+17]+n)]`
-/

namespace A059425.P13661550417507160899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059425.P13661550417507160899

namespace A059425

/-- `record[A020639(∑[2*n+17]+n)]` -/
def P13661550417507160899.Spec : Prop :=
  ∀ n, P13661550417507160899.a n = A059425 (n + 1)

end A059425

/-! ## A059425.P659766049322986530

`record[A006530((n+18)*(n+1)-1)]`
-/

namespace A059425.P659766049322986530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 18) * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059425.P659766049322986530

namespace A059425

/-- `record[A006530((n+18)*(n+1)-1)]` -/
def P659766049322986530.Spec : Prop :=
  ∀ n, P659766049322986530.a n = A059425 (n + 1)

end A059425

/-!
# A059426: First differences of A026273.

The programs for A059426, the canonical program `A059426.P17153322619640356234` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059426 has offset 0).

The definition of A059426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059426.P7552015282424984813

`Δ[floor(ϕ*(n+2))]`
-/

namespace A059426.P7552015282424984813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059426.P7552015282424984813

namespace A059426

/-- `Δ[floor(ϕ*(n+2))]` -/
def P7552015282424984813.Spec : Prop :=
  ∀ n, P7552015282424984813.a n = A059426 n

end A059426

/-! ## A059426.P6493541985555007971

`Δ[ceil(ϕ*(n+2))]!`
-/

namespace A059426.P6493541985555007971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A059426.P6493541985555007971

namespace A059426

/-- `Δ[ceil(ϕ*(n+2))]!` -/
def P6493541985555007971.Spec : Prop :=
  ∀ n, (P6493541985555007971.a n : ℤ) = A059426 n

end A059426

/-! ## A059426.P4124429241805302455

`dr(Δ[ceil(ϕ*(n+2))])`
-/

namespace A059426.P4124429241805302455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 2 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A059426.P4124429241805302455

namespace A059426

/-- `dr(Δ[ceil(ϕ*(n+2))])` -/
def P4124429241805302455.Spec : Prop :=
  ∀ n, (P4124429241805302455.a n : ℤ) = A059426 n

end A059426

/-! ## A059426.P4121421316848346457

`Δ[ceil(ϕ*(n+2))]%3`
-/

namespace A059426.P4121421316848346457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A059426.P4121421316848346457

namespace A059426

/-- `Δ[ceil(ϕ*(n+2))]%3` -/
def P4121421316848346457.Spec : Prop :=
  ∀ n, P4121421316848346457.a n = A059426 n

end A059426

/-! ## A059426.P16725859331491134565

`C(2, Δ[floor((n+2)/ϕ)])`
-/

namespace A059426.P16725859331491134565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A059426.P16725859331491134565

namespace A059426

/-- `C(2, Δ[floor((n+2)/ϕ)])` -/
def P16725859331491134565.Spec : Prop :=
  ∀ n, (P16725859331491134565.a n : ℤ) = A059426 n

end A059426

/-! ## A059426.P17961799980368239194

`a(Δ[floor((n+2)/ϕ)])` with `a(0)=1, a(1)=2`
-/

namespace A059426.P17961799980368239194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A059426.P17961799980368239194

namespace A059426

/-- `a(Δ[floor((n+2)/ϕ)])` -/
def P17961799980368239194.Spec : Prop :=
  ∀ n, (P17961799980368239194.a n : ℤ) = A059426 n

end A059426

/-! ## A059426.P10750862184625449903

`gcd(2, Δ[floor((n+2)/ϕ²)])`
-/

namespace A059426.P10750862184625449903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A059426.P10750862184625449903

namespace A059426

/-- `gcd(2, Δ[floor((n+2)/ϕ²)])` -/
def P10750862184625449903.Spec : Prop :=
  ∀ n, (P10750862184625449903.a n : ℤ) = A059426 n

end A059426

/-! ## A059426.P53032919795242002

`and(1, Δ[floor((n+2)/ϕ)])+1`
-/

namespace A059426.P53032919795242002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n) + 1

end

end A059426.P53032919795242002

namespace A059426

/-- `and(1, Δ[floor((n+2)/ϕ)])+1` -/
def P53032919795242002.Spec : Prop :=
  ∀ n, P53032919795242002.a n = A059426 n

end A059426

/-! ## A059426.P17153322619640356234

`Δ[n-1-a(a(n-1))]+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059426

/-- `Δ[n-1-a(a(n-1))]+1` -/
def P17153322619640356234.Spec : Prop :=
  ∀ n, P17153322619640356234.a n = A059426 n

theorem P17153322619640356234.correct : P17153322619640356234.Spec := by
  intro n
  simp only [A059426]

end A059426

/-! ## A059426.P17343919427404498610

`Δ[floor((n+2)/ϕ)]+gcd(n, n+1)`
-/

namespace A059426.P17343919427404498610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.gcd n (n + 1) : ℤ)

end

end A059426.P17343919427404498610

namespace A059426

/-- `Δ[floor((n+2)/ϕ)]+gcd(n, n+1)` -/
def P17343919427404498610.Spec : Prop :=
  ∀ n, P17343919427404498610.a n = A059426 n

end A059426

/-! ## A059426.P10720278171121894223

`A014675(n+1)`
-/

namespace A059426.P10720278171121894223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (n + 1)

end

end A059426.P10720278171121894223

namespace A059426

/-- `A014675(n+1)` -/
def P10720278171121894223.Spec : Prop :=
  ∀ n, P10720278171121894223.a n = A059426 n

end A059426

/-! ## A059426.P14784160334556154843

`A296135(n)+1`
-/

namespace A059426.P14784160334556154843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296135 n + 1

end

end A059426.P14784160334556154843

namespace A059426

/-- `A296135(n)+1` -/
def P14784160334556154843.Spec : Prop :=
  ∀ n, P14784160334556154843.a n = A059426 n

end A059426

/-! ## A059426.P12997817824268976151

`Δ[A319433(n)]+1`
-/

namespace A059426.P12997817824268976151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A059426.P12997817824268976151

namespace A059426

/-- `Δ[A319433(n)]+1` -/
def P12997817824268976151.Spec : Prop :=
  ∀ n, P12997817824268976151.a n = A059426 n

end A059426

/-! ## A059426.P13706865697017995590

`1+A005614(n+1)`
-/

namespace A059426.P13706865697017995590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A005614 (n + 1)

end

end A059426.P13706865697017995590

namespace A059426

/-- `1+A005614(n+1)` -/
def P13706865697017995590.Spec : Prop :=
  ∀ n, P13706865697017995590.a n = A059426 n

end A059426

/-! ## A059426.P15279725038445269332

`A096270(n+2)+1`
-/

namespace A059426.P15279725038445269332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (n + 2) + 1

end

end A059426.P15279725038445269332

namespace A059426

/-- `A096270(n+2)+1` -/
def P15279725038445269332.Spec : Prop :=
  ∀ n, P15279725038445269332.a n = A059426 n

end A059426

/-! ## A059426.P17399882758447947365

`2-A003849(n+1)`
-/

namespace A059426.P17399882758447947365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003849 (n + 1)

end

end A059426.P17399882758447947365

namespace A059426

/-- `2-A003849(n+1)` -/
def P17399882758447947365.Spec : Prop :=
  ∀ n, P17399882758447947365.a n = A059426 n

end A059426

/-! ## A059426.P3302575365546416211

`3-A003842(n+1)`
-/

namespace A059426.P3302575365546416211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A003842 (n + 1)

end

end A059426.P3302575365546416211

namespace A059426

/-- `3-A003842(n+1)` -/
def P3302575365546416211.Spec : Prop :=
  ∀ n, P3302575365546416211.a n = A059426 n

end A059426

/-! ## A059426.P939167518003276615

`floor(sqrt(A159917(n)))+1`
-/

namespace A059426.P939167518003276615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A159917 n) + 1

end

end A059426.P939167518003276615

namespace A059426

/-- `floor(sqrt(A159917(n)))+1` -/
def P939167518003276615.Spec : Prop :=
  ∀ n, P939167518003276615.a n = A059426 n

end A059426

/-! ## A059426.P7511993105412948592

`Δ[A005206(n+1)]+1`
-/

namespace A059426.P7511993105412948592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A059426.P7511993105412948592

namespace A059426

/-- `Δ[A005206(n+1)]+1` -/
def P7511993105412948592.Spec : Prop :=
  ∀ n, P7511993105412948592.a n = A059426 n

end A059426

/-!
# A059427: Triangle read by rows: T(n,k) is the number of permutations of [n] with k alternating runs (n>=2, k>=1).

The programs for A059427, there is no canonical definition to state claims against.
-/

/-! ## A059427.P15529753461648322799

`2*A008970(n+2)`
-/

namespace A059427.P15529753461648322799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008970 (n + 2)

end

end A059427.P15529753461648322799

/-! ## A059427.P6198672048744989959

`A008970(2-char[1]+n)+A008970(n+2)`
-/

namespace A059427.P6198672048744989959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat + A008970 (n + 2)

end

end A059427.P6198672048744989959

/-! ## A059427.P13299560371566752268

`lcm(A008970(n+2)+A008970(n+2), A000034(n))`
-/

namespace A059427.P13299560371566752268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008970 (n + 2) + A008970 (n + 2)) (A000034 n)

end

end A059427.P13299560371566752268

/-! ## A059427.P4299135024889406644

`A008970(n+2)+or(A000007(n), A008970(n+2))`
-/

namespace A059427.P4299135024889406644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (n + 2) + Int.lor (A000007 n) (A008970 (n + 2))

end

end A059427.P4299135024889406644

/-! ## A059427.P16972158448504839002

`A008970(n+2)+A008970(n+2)+A053698(n)%(n+1)`
-/

namespace A059427.P16972158448504839002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (n + 2) + (A008970 (n + 2) + Int.tmod (A053698 n) (n + 1 : ℤ))

end

end A059427.P16972158448504839002

/-! ## A059427.P15340348944575701238

`A008970(n+2)+A008970(n+2)%A305581(n+1)`
-/

namespace A059427.P15340348944575701238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (n + 2) + Int.tmod (A008970 (n + 2)) (A305581 (n + 1))

end

end A059427.P15340348944575701238

/-!
# A059428: Number of points of rotation in a prime block spiral.

The programs for A059428, the canonical program `A059428.P1821215506372492075` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059428 has offset 1).

The definition of A059428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059428.P1821215506372492075

`A000040(1+floor((n+1)²/4))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059428

/-- `A000040(1+floor((n+1)²/4))` -/
def P1821215506372492075.Spec : Prop :=
  ∀ n, P1821215506372492075.a n = A059428 (n + 1)

theorem P1821215506372492075.correct : P1821215506372492075.Spec := by
  intro n
  simp only [A059428, Nat.add_sub_cancel]

end A059428

/-! ## A059428.P13002119047550812895

`∪[A122566(n), A243896(n)]`
-/

namespace A059428.P13002119047550812895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122566 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243896 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059428.P13002119047550812895

namespace A059428

/-- `∪[A122566(n), A243896(n)]` -/
def P13002119047550812895.Spec : Prop :=
  ∀ n, (P13002119047550812895.a n : ℤ) = A059428 (n + 1)

end A059428

/-! ## A059428.P2374600097400081622

`A001748(∑[ceil(n/2)]+1)/3`
-/

namespace A059428.P2374600097400081622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat : ℚ) / 3

end

end A059428.P2374600097400081622

namespace A059428

/-- `A001748(∑[ceil(n/2)]+1)/3` -/
def P2374600097400081622.Spec : Prop :=
  ∀ n, P2374600097400081622.a n = (A059428 (n + 1) : ℚ)

end A059428

/-! ## A059428.P16496171784923352746

`A001749(∑[∑[n%2]]+1)/4`
-/

namespace A059428.P16496171784923352746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 4

end

end A059428.P16496171784923352746

namespace A059428

/-- `A001749(∑[∑[n%2]]+1)/4` -/
def P16496171784923352746.Spec : Prop :=
  ∀ n, P16496171784923352746.a n = (A059428 (n + 1) : ℚ)

end A059428

/-! ## A059428.P800299447563600979

`A001749(A033638(n+1))/4`
-/

namespace A059428.P800299447563600979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A033638 (n + 1)).toNat : ℚ) / 4

end

end A059428.P800299447563600979

namespace A059428

/-- `A001749(A033638(n+1))/4` -/
def P800299447563600979.Spec : Prop :=
  ∀ n, P800299447563600979.a n = (A059428 (n + 1) : ℚ)

theorem P800299447563600979.correct : P800299447563600979.Spec := by
  intro n
  simp only [A059428, Nat.add_sub_cancel, A059428.P800299447563600979.a, A059428.P1821215506372492075.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, A033638, A033638.P14460038369392948833.a, A002620, A002620.P9002536657626793813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059428

/-! ## A059428.P5149365215226141905

`ceil(A001748(Δ[A173196(n)]+1)/3)`
-/

namespace A059428.P5149365215226141905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001748 (f1 (n + 1) - f1 n + 1).toNat : ℚ) / 3⌉

end

end A059428.P5149365215226141905

namespace A059428

/-- `ceil(A001748(Δ[A173196(n)]+1)/3)` -/
def P5149365215226141905.Spec : Prop :=
  ∀ n, P5149365215226141905.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P4719520542876266082

`A008578(∑[ceil(n/2)]+2)`
-/

namespace A059428.P4719520542876266082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A059428.P4719520542876266082

namespace A059428

/-- `A008578(∑[ceil(n/2)]+2)` -/
def P4719520542876266082.Spec : Prop :=
  ∀ n, P4719520542876266082.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P11165808213739321493

`A182986(∑[∑[n%2]]+2)`
-/

namespace A059428.P11165808213739321493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A059428.P11165808213739321493

namespace A059428

/-- `A182986(∑[∑[n%2]]+2)` -/
def P11165808213739321493.Spec : Prop :=
  ∀ n, P11165808213739321493.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P11399297082477887284

`A006093(∑[ceil(n/2)]+1)+1`
-/

namespace A059428.P11399297082477887284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + 1

end

end A059428.P11399297082477887284

namespace A059428

/-- `A006093(∑[ceil(n/2)]+1)+1` -/
def P11399297082477887284.Spec : Prop :=
  ∀ n, P11399297082477887284.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P16232210574398473840

`A093515(A080476(n+1))`
-/

namespace A059428.P16232210574398473840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A080476 (n + 1)).toNat

end

end A059428.P16232210574398473840

namespace A059428

/-- `A093515(A080476(n+1))` -/
def P16232210574398473840.Spec : Prop :=
  ∀ n, P16232210574398473840.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P2940894236235039961

`record[A000040(A076110(n+1))]`
-/

namespace A059428.P2940894236235039961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059428.P2940894236235039961

namespace A059428

/-- `record[A000040(A076110(n+1))]` -/
def P2940894236235039961.Spec : Prop :=
  ∀ n, P2940894236235039961.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P16085290010258451722

`record[A000040(A079904(n)+1)]`
-/

namespace A059428.P16085290010258451722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A079904 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059428.P16085290010258451722

namespace A059428

/-- `record[A000040(A079904(n)+1)]` -/
def P16085290010258451722.Spec : Prop :=
  ∀ n, P16085290010258451722.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P14750905835277570256

`record[A000040(A162609(n+1))]`
-/

namespace A059428.P14750905835277570256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A162609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059428.P14750905835277570256

namespace A059428

/-- `record[A000040(A162609(n+1))]` -/
def P14750905835277570256.Spec : Prop :=
  ∀ n, P14750905835277570256.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P14507855049315880482

`record[A000040(A213921(n+1))]`
-/

namespace A059428.P14507855049315880482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A213921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059428.P14507855049315880482

namespace A059428

/-- `record[A000040(A213921(n+1))]` -/
def P14507855049315880482.Spec : Prop :=
  ∀ n, P14507855049315880482.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P13300474743611821784

`record[A000040(A214870(n+1))]`
-/

namespace A059428.P13300474743611821784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A214870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059428.P13300474743611821784

namespace A059428

/-- `record[A000040(A214870(n+1))]` -/
def P13300474743611821784.Spec : Prop :=
  ∀ n, P13300474743611821784.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P8461852330526182024

`A067747(A080827(n+1))`
-/

namespace A059428.P8461852330526182024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A080827 (n + 1)).toNat

end

end A059428.P8461852330526182024

namespace A059428

/-- `A067747(A080827(n+1))` -/
def P8461852330526182024.Spec : Prop :=
  ∀ n, P8461852330526182024.a n = A059428 (n + 1)

end A059428

/-! ## A059428.P16016807626236889190

`A109763(A061925(n+1))`
-/

namespace A059428.P16016807626236889190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A061925 (n + 1)).toNat

end

end A059428.P16016807626236889190

namespace A059428

/-- `A109763(A061925(n+1))` -/
def P16016807626236889190.Spec : Prop :=
  ∀ n, P16016807626236889190.a n = A059428 (n + 1)

end A059428

/-!
# A059429: Cumulative boustrophedon transform of 1, 0, 0, 0, ...

The programs for A059429, there is no canonical definition to state claims against.
-/

/-! ## A059429.P16402701030138788429

`A059432(∑[n]+n)`
-/

namespace A059429.P16402701030138788429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059432 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059429.P16402701030138788429

/-! ## A059429.P11822048759288817301

`A074840((∑[n]+1)*a(n-1))` with `a(0)=1`
-/

namespace A059429.P11822048759288817301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074840 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * a (n - 1)).toNat

end

end A059429.P11822048759288817301

/-!
# A059430: Cumulative boustrophedon transform of 1, 1, 1, 1, ...

The programs for A059430, there is no canonical definition to state claims against.
-/

/-! ## A059430.P16869424378185762625

`A059434(∑[n]+n)`
-/

namespace A059430.P16869424378185762625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059434 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059430.P16869424378185762625

/-! ## A059430.P10928376684684974388

`record[A059434(A061579(n))]`
-/

namespace A059430.P10928376684684974388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059434 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059430.P10928376684684974388

/-! ## A059430.P14168179371897492901

`record[A059433(∑[A152271(n)])]`
-/

namespace A059430.P14168179371897492901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059433 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059430.P14168179371897492901

/-! ## A059430.P835241989852396046

`record[A059434(∑[A152271(n)])]`
-/

namespace A059430.P835241989852396046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059434 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059430.P835241989852396046

/-! ## A059430.P15490701695966227533

`record[A059433(A117142(n+1))]`
-/

namespace A059430.P15490701695966227533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059433 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059430.P15490701695966227533

/-!
# A059431: Triangle formed when cumulative boustrophedon transform is applied to 1, 0, 0, 0, ..., read by rows from left to right.

The programs for A059431, there is no canonical definition to state claims against.
-/

/-! ## A059431.P6495478415143848348

`A059432(A056023(n+1)-1)`
-/

namespace A059431.P6495478415143848348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059432 (A056023 (n + 1) - 1).toNat

end

end A059431.P6495478415143848348

/-! ## A059431.P12822520701518012647

`A059432(A093995(n+1)-A056011(n+1))`
-/

namespace A059431.P12822520701518012647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059432 (A093995 (n + 1) - A056011 (n + 1)).toNat

end

end A059431.P12822520701518012647

/-!
# A059432: Triangle formed when cumulative boustrophedon transform is applied to 1, 0, 0, 0, ..., read by rows in natural order.

The programs for A059432, there is no canonical definition to state claims against.
-/

/-! ## A059432.P9169990989591620807

`A059431(A056023(n+1)-1)`
-/

namespace A059432.P9169990989591620807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059431 (A056023 (n + 1) - 1).toNat

end

end A059432.P9169990989591620807

/-! ## A059432.P5323181002998312214

`A059431(A093995(n+1)-A056011(n+1))`
-/

namespace A059432.P5323181002998312214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059431 (A093995 (n + 1) - A056011 (n + 1)).toNat

end

end A059432.P5323181002998312214

/-!
# A059433: Triangle formed when the cumulative boustrophedon transform is applied to 1, 1, 1, 1, ..., read by rows from left to right.

The programs for A059433, there is no canonical definition to state claims against.
-/

/-! ## A059433.P18176224565155664546

`A059434(A056023(n+1)-1)`
-/

namespace A059433.P18176224565155664546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059434 (A056023 (n + 1) - 1).toNat

end

end A059433.P18176224565155664546

/-! ## A059433.P3634881251389259077

`A059434(A093995(n+1)-A056011(n+1))`
-/

namespace A059433.P3634881251389259077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059434 (A093995 (n + 1) - A056011 (n + 1)).toNat

end

end A059433.P3634881251389259077

/-!
# A059434: Triangle formed when cumulative boustrophedon transform is applied to 1, 1, 1, 1, ..., read by rows in natural order.

The programs for A059434, there is no canonical definition to state claims against.
-/

/-! ## A059434.P2612079175165909929

`A059433(A056023(n+1)-1)`
-/

namespace A059434.P2612079175165909929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059433 (A056023 (n + 1) - 1).toNat

end

end A059434.P2612079175165909929

/-! ## A059434.P2807000661767864666

`A059433(A093995(n+1)-A056011(n+1))`
-/

namespace A059434.P2807000661767864666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059433 (A093995 (n + 1) - A056011 (n + 1)).toNat

end

end A059434.P2807000661767864666

/-!
# A059435: Number of lattice paths in plane starting at (0,0) and ending at (n,n) with steps from {(i,j): i+j > 0, i, j >= 0} that never go below the line y = x.

The programs for A059435, the canonical program `A059435.P3368301534231985512` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059435 has offset 0).

The definition of A059435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059435.P3368301534231985512

`2^n*A001003(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059435

/-- `2^n*A001003(n)` -/
def P3368301534231985512.Spec : Prop :=
  ∀ n, P3368301534231985512.a n = A059435 n

theorem P3368301534231985512.correct : P3368301534231985512.Spec := by
  intro n
  simp only [A059435]

end A059435

/-! ## A059435.P14340594709737865481

`ceil(A156017(n)/2)`
-/

namespace A059435.P14340594709737865481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156017 n : ℚ) / 2⌉

end

end A059435.P14340594709737865481

namespace A059435

/-- `ceil(A156017(n)/2)` -/
def P14340594709737865481.Spec : Prop :=
  ∀ n, P14340594709737865481.a n = A059435 n

end A059435

/-! ## A059435.P9485683186953134789

`lcm(2^n, A006318(n))`
-/

namespace A059435.P9485683186953134789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A006318 n)

end

end A059435.P9485683186953134789

namespace A059435

/-- `lcm(2^n, A006318(n))` -/
def P9485683186953134789.Spec : Prop :=
  ∀ n, (P9485683186953134789.a n : ℤ) = A059435 n

end A059435

/-! ## A059435.P15376736747566724396

`abs(2^n*A080243(n))`
-/

namespace A059435.P15376736747566724396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * A080243 n|

end

end A059435.P15376736747566724396

namespace A059435

/-- `abs(2^n*A080243(n))` -/
def P15376736747566724396.Spec : Prop :=
  ∀ n, P15376736747566724396.a n = A059435 n

end A059435

/-! ## A059435.P1639117978747769659

`lcm((-2)^n, A155069(n+1))`
-/

namespace A059435.P1639117978747769659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-2) ^ n) (A155069 (n + 1))

end

end A059435.P1639117978747769659

namespace A059435

/-- `lcm((-2)^n, A155069(n+1))` -/
def P1639117978747769659.Spec : Prop :=
  ∀ n, (P1639117978747769659.a n : ℤ) = A059435 n

end A059435

/-! ## A059435.P12203649504844628385

`ceil(2^(n-1))*∑[A006319(n)]`
-/

namespace A059435.P12203649504844628385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059435.P12203649504844628385

namespace A059435

/-- `ceil(2^(n-1))*∑[A006319(n)]` -/
def P12203649504844628385.Spec : Prop :=
  ∀ n, P12203649504844628385.a n = A059435 n

end A059435

/-! ## A059435.P15518653201065857529

`ceil(2^(n-1))*Δ[A176006(n)]`
-/

namespace A059435.P15518653201065857529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (f1 (n + 1) - f1 n)

end

end A059435.P15518653201065857529

namespace A059435

/-- `ceil(2^(n-1))*Δ[A176006(n)]` -/
def P15518653201065857529.Spec : Prop :=
  ∀ n, P15518653201065857529.a n = A059435 n

end A059435

/-! ## A059435.P4661165690872309128

`A006318(n)*A011782(n)`
-/

namespace A059435.P4661165690872309128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n * A011782 n

end

end A059435.P4661165690872309128

namespace A059435

/-- `A006318(n)*A011782(n)` -/
def P4661165690872309128.Spec : Prop :=
  ∀ n, P4661165690872309128.a n = A059435 n

end A059435

/-! ## A059435.P11508193015104477162

`A080243(n)*A122803(n)`
-/

namespace A059435.P11508193015104477162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080243 n * A122803 n

end

end A059435.P11508193015104477162

namespace A059435

/-- `A080243(n)*A122803(n)` -/
def P11508193015104477162.Spec : Prop :=
  ∀ n, P11508193015104477162.a n = A059435 n

end A059435

/-! ## A059435.P16306605123040168984

`lcm(A000079(n), A001003(n))`
-/

namespace A059435.P16306605123040168984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001003 n)

end

end A059435.P16306605123040168984

namespace A059435

/-- `lcm(A000079(n), A001003(n))` -/
def P16306605123040168984.Spec : Prop :=
  ∀ n, (P16306605123040168984.a n : ℤ) = A059435 n

end A059435

/-!
# A059438: Triangle T(n,k) (1 <= k <= n) read by rows: T(n,k) is the number of permutations of [1..n] with k components.

The programs for A059438, there is no canonical definition to state claims against.
-/

/-! ## A059438.P8628852233629614502

`A085771(comp[C(n, 2)])`
-/

namespace A059438.P8628852233629614502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A059438.P8628852233629614502

/-! ## A059438.P6687712350754348188

`A085771(A014132(n+1))`
-/

namespace A059438.P6687712350754348188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A014132 (n + 1)).toNat

end

end A059438.P6687712350754348188

/-! ## A059438.P2767593745383261350

`A263484(A038722(n+1))`
-/

namespace A059438.P2767593745383261350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A038722 (n + 1)).toNat

end

end A059438.P2767593745383261350

/-! ## A059438.P17390811130386333873

`A263484(A061579(n)+1)`
-/

namespace A059438.P17390811130386333873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A061579 n + 1).toNat

end

end A059438.P17390811130386333873

/-! ## A059438.P15726223943806101411

`A085771(eq[0, A010054(n)])`
-/

namespace A059438.P15726223943806101411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059438.P15726223943806101411

/-! ## A059438.P14599419534775096336

`A263484(A093995(n+1)-n)`
-/

namespace A059438.P14599419534775096336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A059438.P14599419534775096336

/-! ## A059438.P5192386118794736097

`A263484(A002024(n+1)²-n)`
-/

namespace A059438.P5192386118794736097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A059438.P5192386118794736097

/-! ## A059438.P12100866037428191383

`A085771(A002024(n+1)+1+n)`
-/

namespace A059438.P12100866037428191383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A002024 (n + 1) + 1 + (n : ℤ)).toNat

end

end A059438.P12100866037428191383

/-! ## A059438.P12762671221871273866

`A263484(A000194(2*(n+1))²-n)`
-/

namespace A059438.P12762671221871273866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A000194 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A059438.P12762671221871273866

/-!
# A059439: A diagonal of A059438.

The programs for A059439, there is no canonical definition to state claims against.
-/

/-! ## A059439.P6487217457802966053

`A085771(A133263(n))`
-/

namespace A059439.P6487217457802966053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A133263 n).toNat

end

end A059439.P6487217457802966053

/-! ## A059439.P8500333833749203872

`A085771(A238531(n+1))`
-/

namespace A059439.P8500333833749203872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A238531 (n + 1)).toNat

end

end A059439.P8500333833749203872

/-! ## A059439.P15001188333957811266

`A085771(A134869(n+1)-n)`
-/

namespace A059439.P15001188333957811266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A134869 (n + 1) - (n : ℤ)).toNat

end

end A059439.P15001188333957811266

/-! ## A059439.P2857730979189703606

`A059438(A238531(n))%A000142(n)`
-/

namespace A059439.P2857730979189703606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059438 (A238531 n).toNat) (A000142 n)

end

end A059439.P2857730979189703606

/-! ## A059439.P17043682007753482631

`A059438(A152948(n+1))%A059438(A133263(n))`
-/

namespace A059439.P17043682007753482631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059438 (A152948 (n + 1)).toNat) (A059438 (A133263 n).toNat)

end

end A059439.P17043682007753482631

/-! ## A059439.P7055092853208966313

`A059438(A152948(n+1))%A005640(n)`
-/

namespace A059439.P7055092853208966313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059438 (A152948 (n + 1)).toNat) (A005640 n)

end

end A059439.P7055092853208966313

/-!
# A059440: A diagonal of A059438.

The programs for A059440, there is no canonical definition to state claims against.
-/

/-! ## A059440.P2736205512410857954

`A263484(∑[n+3]+1)`
-/

namespace A059440.P2736205512410857954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059440.P2736205512410857954

/-! ## A059440.P15366852262734484116

`record[A059438(∑[n]+3)]`
-/

namespace A059440.P15366852262734484116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059438 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059440.P15366852262734484116

/-! ## A059440.P10992529149109164185

`A059438(∑[n+2]+4)`
-/

namespace A059440.P10992529149109164185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059438 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A059440.P10992529149109164185

/-! ## A059440.P2451424247128945972

`A085771(A167614(n+2))`
-/

namespace A059440.P2451424247128945972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A167614 (n + 2)).toNat

end

end A059440.P2451424247128945972

/-! ## A059440.P447335496613307803

`A085771(A166136(n+1)+n)`
-/

namespace A059440.P447335496613307803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A166136 (n + 1) + (n : ℤ)).toNat

end

end A059440.P447335496613307803

/-! ## A059440.P7758652717715118327

`A065357(n)²*A059438(A055998(n)+6)`
-/

namespace A059440.P7758652717715118327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n ^ 2 * A059438 (A055998 n + 6).toNat

end

end A059440.P7758652717715118327

/-! ## A059440.P14376977482954481396

`A059438(A055998(n)+6)^A001221(A137688(n))`
-/

namespace A059440.P14376977482954481396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059438 (A055998 n + 6).toNat : ℚ) ^ (A001221 (A137688 n).toNat : ℤ)

end

end A059440.P14376977482954481396

/-!
# A059441: Triangle T(n,k) (n >= 1, 0 <= k <= n-1) giving number of regular labeled graphs with n nodes and degree k, read by rows.

The programs for A059441, there is no canonical definition to state claims against.
-/

/-! ## A059441.P8271603447779548665

`A324163(A127739(n+1)-A004197(n))`
-/

namespace A059441.P8271603447779548665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324163 (A127739 (n + 1) - A004197 n).toNat

end

end A059441.P8271603447779548665

/-! ## A059441.P3995945777027307581

`A103489(2*A022166(n))`
-/

namespace A059441.P3995945777027307581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103489 (2 * A022166 n).toNat

end

end A059441.P3995945777027307581

/-! ## A059441.P12332900743122472693

`A103489(lcm(2, A022166(n)))`
-/

namespace A059441.P12332900743122472693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103489 (Int.lcm 2 (A022166 n))

end

end A059441.P12332900743122472693

/-! ## A059441.P7974474656668838821

`xor(1, A343678(A008459(n)))`
-/

namespace A059441.P7974474656668838821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A343678 (A008459 n).toNat)

end

end A059441.P7974474656668838821

/-! ## A059441.P16052524470266466949

`A004198(4*A007318(n)!)`
-/

namespace A059441.P16052524470266466949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (4 * Nat.factorial (A007318 n).toNat)

end

end A059441.P16052524470266466949

/-!
# A059442: Array of Ramsey numbers R(n,k) (n >= 2, k >= 2) read by antidiagonals.

The programs for A059442, there is no canonical definition to state claims against.
-/

/-! ## A059442.P4847595927406608650

`A212954(lt[1, A002262(n)])`
-/

namespace A059442.P4847595927406608650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059442.P4847595927406608650

/-! ## A059442.P10462348896728149328

`A212954(lt[1, A166692(n)])`
-/

namespace A059442.P10462348896728149328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059442.P10462348896728149328

/-! ## A059442.P10220349305957012115

`A212954(lt[1, A256116(n)])`
-/

namespace A059442.P10220349305957012115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059442.P10220349305957012115

/-! ## A059442.P10141750157463100561

`A212954(eq[0, A128541(n)]+2)`
-/

namespace A059442.P10141750157463100561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A059442.P10141750157463100561

/-! ## A059442.P10273787564004284276

`A212954(lt[1, A135597(n+1)])`
-/

namespace A059442.P10273787564004284276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A059442.P10273787564004284276

/-!
# A059446: Triangle T(n,k) = coefficient of x^n*y^k/(n!*k!) in 1/(1-x-y-x*y), read by rows in order 00, 10, 01, 20, 11, 02, ...

The programs for A059446, the canonical program `A059446.P4999761851496587859` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059446 has offset 0).

The definition of A059446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059446.P4999761851496587859

`A008288(n)*A098361(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059446

/-- `A008288(n)*A098361(n)` -/
def P4999761851496587859.Spec : Prop :=
  ∀ n, P4999761851496587859.a n = A059446 n

theorem P4999761851496587859.correct : P4999761851496587859.Spec := by
  intro n
  simp only [A059446]

end A059446

/-! ## A059446.P13112802683197838213

`A098361(n)*A112475(comp[∑[n]])`
-/

namespace A059446.P13112802683197838213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A112475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A059446.P13112802683197838213

namespace A059446

/-- `A098361(n)*A112475(comp[∑[n]])` -/
def P13112802683197838213.Spec : Prop :=
  ∀ n, P13112802683197838213.a n = A059446 n

end A059446

/-! ## A059446.P4018276588638789286

`A098361(n)*A140750(A001614(n+1))`
-/

namespace A059446.P4018276588638789286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A140750 (A001614 (n + 1)).toNat

end

end A059446.P4018276588638789286

namespace A059446

/-- `A098361(n)*A140750(A001614(n+1))` -/
def P4018276588638789286.Spec : Prop :=
  ∀ n, P4018276588638789286.a n = A059446 n

end A059446

/-! ## A059446.P16771092265468695220

`A098361(n)*A140750(A133280(n)+1)`
-/

namespace A059446.P16771092265468695220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A140750 (A133280 n + 1).toNat

end

end A059446.P16771092265468695220

namespace A059446

/-- `A098361(n)*A140750(A133280(n)+1)` -/
def P16771092265468695220.Spec : Prop :=
  ∀ n, P16771092265468695220.a n = A059446 n

end A059446

/-! ## A059446.P3734555142519742859

`A098361(n)*A140750(A195437(n)+1)`
-/

namespace A059446.P3734555142519742859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A140750 (A195437 n + 1).toNat

end

end A059446.P3734555142519742859

namespace A059446

/-- `A098361(n)*A140750(A195437(n)+1)` -/
def P3734555142519742859.Spec : Prop :=
  ∀ n, P3734555142519742859.a n = A059446 n

end A059446

/-! ## A059446.P15299602324944192362

`A098361(n)*A140750(eq[1, A071028(n)]+1)`
-/

namespace A059446.P15299602324944192362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A140750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A059446.P15299602324944192362

namespace A059446

/-- `A098361(n)*A140750(eq[1, A071028(n)]+1)` -/
def P15299602324944192362.Spec : Prop :=
  ∀ n, P15299602324944192362.a n = A059446 n

end A059446

/-! ## A059446.P12078132450230407469

`A004273(A108350(n))*A098361(n)`
-/

namespace A059446.P12078132450230407469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A108350 n).toNat * A098361 n

end

end A059446.P12078132450230407469

namespace A059446

/-- `A004273(A108350(n))*A098361(n)` -/
def P12078132450230407469.Spec : Prop :=
  ∀ n, P12078132450230407469.a n = A059446 n

end A059446

/-! ## A059446.P13944371163730996461

`A008288(n)*A112624(A036561(n))`
-/

namespace A059446.P13944371163730996461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n * A112624 (A036561 n).toNat

end

end A059446.P13944371163730996461

namespace A059446

/-- `A008288(n)*A112624(A036561(n))` -/
def P13944371163730996461.Spec : Prop :=
  ∀ n, P13944371163730996461.a n = A059446 n

end A059446

/-!
# A059448: The parity of the number of zero digits when n is written in binary.

The programs for A059448, the canonical program `A059448.P3674555559967751262` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059448 has offset 1).

The definition of A059448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059448.P16506402423877187845

`A023416(n+1)%2`
-/

namespace A059448.P16506402423877187845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (n + 1)) 2

end

end A059448.P16506402423877187845

namespace A059448

/-- `A023416(n+1)%2` -/
def P16506402423877187845.Spec : Prop :=
  ∀ n, P16506402423877187845.a n = A059448 (n + 1)

end A059448

/-! ## A059448.P11290535495400600256

`A059009(n+1)-2*(n+1)`
-/

namespace A059448.P11290535495400600256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (n + 1) - (2 * (n + 1) : ℤ)

end

end A059448.P11290535495400600256

namespace A059448

/-- `A059009(n+1)-2*(n+1)` -/
def P11290535495400600256.Spec : Prop :=
  ∀ n, P11290535495400600256.a n = A059448 (n + 1)

end A059448

/-! ## A059448.P18206531293434945497

`2*(n+1)+1-A059010(n+1)`
-/

namespace A059448.P18206531293434945497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + 1 : ℤ) - A059010 (n + 1)

end

end A059448.P18206531293434945497

namespace A059448

/-- `2*(n+1)+1-A059010(n+1)` -/
def P18206531293434945497.Spec : Prop :=
  ∀ n, P18206531293434945497.a n = A059448 (n + 1)

end A059448

/-! ## A059448.P3674555559967751262

`A010059(A054429(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059448

/-- `A010059(A054429(n+1))` -/
def P3674555559967751262.Spec : Prop :=
  ∀ n, P3674555559967751262.a n = A059448 (n + 1)

theorem P3674555559967751262.correct : P3674555559967751262.Spec := by
  intro n
  simp only [A059448, Nat.add_sub_cancel]

end A059448

/-! ## A059448.P13518564341216954963

`(1+A008836(A163511(n+1)))/2`
-/

namespace A059448.P13518564341216954963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A008836 (A163511 (n + 1)).toNat : ℚ) / 2

end

end A059448.P13518564341216954963

namespace A059448

/-- `(1+A008836(A163511(n+1)))/2` -/
def P13518564341216954963.Spec : Prop :=
  ∀ n, P13518564341216954963.a n = (A059448 (n + 1) : ℚ)

end A059448

/-! ## A059448.P8178520394527543708

`a(∑[n%4-1])` with `a(0)=0, a(1)=1`
-/

namespace A059448.P8178520394527543708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 4 : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059448.P8178520394527543708

namespace A059448

/-- `a(∑[n%4-1])` -/
def P8178520394527543708.Spec : Prop :=
  ∀ n, (P8178520394527543708.a n : ℤ) = A059448 (n + 1)

end A059448

/-! ## A059448.P12738304515394831973

`1-a(lcm(2, 1-n)/2)` with `a(0)=0`
-/

namespace A059448.P12738304515394831973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (SequenceMachineLib.roundAway ((Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2)).toNat

end

end A059448.P12738304515394831973

namespace A059448

/-- `1-a(lcm(2, 1-n)/2)` -/
def P12738304515394831973.Spec : Prop :=
  ∀ n, P12738304515394831973.a n = A059448 (n + 1)

end A059448

/-! ## A059448.P13585484476009548117

`1-a(gcd(n-1, C(n, 2)))` with `a(0)=0`
-/

namespace A059448.P13585484476009548117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (Int.gcd ((n : ℤ) - 1) (Nat.choose n 2 : ℤ))

end

end A059448.P13585484476009548117

namespace A059448

/-- `1-a(gcd(n-1, C(n, 2)))` -/
def P13585484476009548117.Spec : Prop :=
  ∀ n, P13585484476009548117.a n = A059448 (n + 1)

end A059448

/-! ## A059448.P2633332922871973694

`(a(floor((n-1)/2))+n)%2` with `a(0)=0`
-/

namespace A059448.P2633332922871973694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + n) % 2

end

end A059448.P2633332922871973694

namespace A059448

/-- `(a(floor((n-1)/2))+n)%2` -/
def P2633332922871973694.Spec : Prop :=
  ∀ n, (P2633332922871973694.a n : ℤ) = A059448 (n + 1)

end A059448

/-! ## A059448.P10247586198541501913

`(n-a(floor((n-1)/2)))%2` with `a(0)=0`
-/

namespace A059448.P10247586198541501913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n : ℤ) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat) 2

end

end A059448.P10247586198541501913

namespace A059448

/-- `(n-a(floor((n-1)/2)))%2` -/
def P10247586198541501913.Spec : Prop :=
  ∀ n, P10247586198541501913.a n = A059448 (n + 1)

end A059448

/-! ## A059448.P5668030190655623168

`1-a((n-1)/gcd(2, n+1))` with `a(0)=0`
-/

namespace A059448.P5668030190655623168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

end

end A059448.P5668030190655623168

namespace A059448

/-- `1-a((n-1)/gcd(2, n+1))` -/
def P5668030190655623168.Spec : Prop :=
  ∀ n, P5668030190655623168.a n = A059448 (n + 1)

end A059448

/-! ## A059448.P6725626170721292610

`log2(A122497(n+1))`
-/

namespace A059448.P6725626170721292610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A122497 (n + 1) : ℝ)

end

end A059448.P6725626170721292610

namespace A059448

/-- `log2(A122497(n+1))` -/
def P6725626170721292610.Spec : Prop :=
  ∀ n, P6725626170721292610.a n = (A059448 (n + 1) : ℝ)

end A059448

/-! ## A059448.P4943159008007992200

`char[A059009(n)-1]`
-/

namespace A059448.P4943159008007992200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A059448.P4943159008007992200

namespace A059448

/-- `char[A059009(n)-1]` -/
def P4943159008007992200.Spec : Prop :=
  ∀ n, (P4943159008007992200.a n : ℤ) = A059448 (n + 1)

end A059448

/-! ## A059448.P12706312184515547034

`Δ[A059015(n)]%2`
-/

namespace A059448.P12706312184515547034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A059448.P12706312184515547034

namespace A059448

/-- `Δ[A059015(n)]%2` -/
def P12706312184515547034.Spec : Prop :=
  ∀ n, P12706312184515547034.a n = A059448 (n + 1)

end A059448

/-! ## A059448.P2225869581242566514

`1-A298952(n+1)`
-/

namespace A059448.P2225869581242566514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A298952 (n + 1)

end

end A059448.P2225869581242566514

namespace A059448

/-- `1-A298952(n+1)` -/
def P2225869581242566514.Spec : Prop :=
  ∀ n, P2225869581242566514.a n = A059448 (n + 1)

end A059448

/-! ## A059448.P1731605447914068226

`A014701(n+1)%2`
-/

namespace A059448.P1731605447914068226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014701 (n + 1)) 2

end

end A059448.P1731605447914068226

namespace A059448

/-- `A014701(n+1)%2` -/
def P1731605447914068226.Spec : Prop :=
  ∀ n, P1731605447914068226.a n = A059448 (n + 1)

end A059448

/-! ## A059448.P5964171339199958078

`A056791(n+1)%2`
-/

namespace A059448.P5964171339199958078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056791 (n + 1)) 2

end

end A059448.P5964171339199958078

namespace A059448

/-- `A056791(n+1)%2` -/
def P5964171339199958078.Spec : Prop :=
  ∀ n, P5964171339199958078.a n = A059448 (n + 1)

end A059448

/-!
# A059449: a(n)! begins with 2^n.

The programs for A059449, there is no canonical definition to state claims against.
-/

/-! ## A059449.P4039364527952042447

`A018799(2^n)+floor(acot(n))`
-/

namespace A059449.P4039364527952042447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018799 (2 ^ n) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A059449.P4039364527952042447

/-! ## A059449.P5674162953585876773

`A018799(2^n)+A000007(n)`
-/

namespace A059449.P5674162953585876773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018799 (2 ^ n) + A000007 n

end

end A059449.P5674162953585876773

/-! ## A059449.P15866418542188693082

`A018799(A000079(n))+floor(1/(n+1))`
-/

namespace A059449.P15866418542188693082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018799 (A000079 n).toNat + ⌊1 / (n + 1 : ℚ)⌋

end

end A059449.P15866418542188693082

/-! ## A059449.P10117336509474745810

`A018799(2^n)+C(2, n+2)*A016313(n)`
-/

namespace A059449.P10117336509474745810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018799 (2 ^ n) + (Nat.choose 2 (n + 2) : ℤ) * A016313 n

end

end A059449.P10117336509474745810

/-! ## A059449.P15378451553519246324

`A018843(n)+A018799(A000079(n))`
-/

namespace A059449.P15378451553519246324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 n + A018799 (A000079 n).toNat

end

end A059449.P15378451553519246324

/-!
# A059451: Number of ways n can be written as the sum of two numbers whose binary expansions have even numbers of zeros; also number of ways n can be written as the sum of two numbers whose binary expansions have odd numbers of zeros.

The programs for A059451, there is no canonical definition to state claims against.
-/

/-! ## A059451.P12426463574763791191

`A326820(A326844(3*(n+1))%A326788(3*n+2))`
-/

namespace A059451.P12426463574763791191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326820 (Int.tmod (A326844 (3 * (n + 1))) (A326788 (3 * n + 2))).toNat

end

end A059451.P12426463574763791191

/-! ## A059451.P3566625970113003385

`(A194395(n+3)+A141476(3*(n+1)))%A089610(2*(n+1))`
-/

namespace A059451.P3566625970113003385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194395 (n + 3) + A141476 (3 * (n + 1))) (A089610 (2 * (n + 1)))

end

end A059451.P3566625970113003385

/-! ## A059451.P16790463497897262500

`floor(log(A104000(3*n+5))/3)`
-/

namespace A059451.P16790463497897262500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A104000 (3 * n + 5) : ℝ) / 3⌋

end

end A059451.P16790463497897262500

/-! ## A059451.P6854517877965274952

`A055642(A221573(3*n+5))-1`
-/

namespace A059451.P6854517877965274952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A221573 (3 * n + 5)).toNat - 1

end

end A059451.P6854517877965274952

/-! ## A059451.P9600993970794409668

`A004216(2*A200192(3*n+5))`
-/

namespace A059451.P9600993970794409668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (2 * A200192 (3 * n + 5)).toNat

end

end A059451.P9600993970794409668

/-!
# A059452: Safe primes (A005385) that are not Sophie Germain primes.

The programs for A059452, the canonical program `A059452.P7730538796313932387` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059452 has offset 1).

The definition of A059452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059452.P1323286946956266096

`∩[A005385(n+1), A053176(n+1)]`
-/

namespace A059452.P1323286946956266096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P1323286946956266096

namespace A059452

/-- `∩[A005385(n+1), A053176(n+1)]` -/
def P1323286946956266096.Spec : Prop :=
  ∀ n, (P1323286946956266096.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P9054256965601089579

`∩[A053176(n+1), A065966(n+1)]`
-/

namespace A059452.P9054256965601089579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P9054256965601089579

namespace A059452

/-- `∩[A053176(n+1), A065966(n+1)]` -/
def P9054256965601089579.Spec : Prop :=
  ∀ n, (P9054256965601089579.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P7730538796313932387

`∩[A053176(n+1), A072055(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059452

/-- `∩[A053176(n+1), A072055(n+1)]` -/
def P7730538796313932387.Spec : Prop :=
  ∀ n, (P7730538796313932387.a n : ℤ) = A059452 (n + 1)

theorem P7730538796313932387.correct : P7730538796313932387.Spec := by
  intro n
  simp only [A059452, Nat.add_sub_cancel]

end A059452

/-! ## A059452.P6229088315269671811

`∩[A053176(n+1), A079148(n+1)]`
-/

namespace A059452.P6229088315269671811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P6229088315269671811

namespace A059452

/-- `∩[A053176(n+1), A079148(n+1)]` -/
def P6229088315269671811.Spec : Prop :=
  ∀ n, (P6229088315269671811.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P15827813499199713458

`∩[A053176(n+1), A156658(n+1)]`
-/

namespace A059452.P15827813499199713458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P15827813499199713458

namespace A059452

/-- `∩[A053176(n+1), A156658(n+1)]` -/
def P15827813499199713458.Spec : Prop :=
  ∀ n, (P15827813499199713458.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P17724442442463637572

`∩[A053176(n+1), A166496(n+1)]`
-/

namespace A059452.P17724442442463637572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P17724442442463637572

namespace A059452

/-- `∩[A053176(n+1), A166496(n+1)]` -/
def P17724442442463637572.Spec : Prop :=
  ∀ n, (P17724442442463637572.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P18408412042208132461

`∩[A053176(n+1), A395563(n+1)]`
-/

namespace A059452.P18408412042208132461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P18408412042208132461

namespace A059452

/-- `∩[A053176(n+1), A395563(n+1)]` -/
def P18408412042208132461.Spec : Prop :=
  ∀ n, (P18408412042208132461.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P17435724161705864496

`∩[A053176(n+1), A124109(n+1)]`
-/

namespace A059452.P17435724161705864496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P17435724161705864496

namespace A059452

/-- `∩[A053176(n+1), A124109(n+1)]` -/
def P17435724161705864496.Spec : Prop :=
  ∀ n, (P17435724161705864496.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P10430348383427026406

`∩[A005385(n+1), A156543(n+1)]`
-/

namespace A059452.P10430348383427026406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P10430348383427026406

namespace A059452

/-- `∩[A005385(n+1), A156543(n+1)]` -/
def P10430348383427026406.Spec : Prop :=
  ∀ n, (P10430348383427026406.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P10170679219309318004

`∩[A065966(n+1), A156543(n+1)]`
-/

namespace A059452.P10170679219309318004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P10170679219309318004

namespace A059452

/-- `∩[A065966(n+1), A156543(n+1)]` -/
def P10170679219309318004.Spec : Prop :=
  ∀ n, (P10170679219309318004.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P11261619166885242716

`∩[A079148(n+1), A156543(n+1)]`
-/

namespace A059452.P11261619166885242716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P11261619166885242716

namespace A059452

/-- `∩[A079148(n+1), A156543(n+1)]` -/
def P11261619166885242716.Spec : Prop :=
  ∀ n, (P11261619166885242716.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P16826208119826745016

`∩[A156543(n+1), A156658(n+1)]`
-/

namespace A059452.P16826208119826745016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P16826208119826745016

namespace A059452

/-- `∩[A156543(n+1), A156658(n+1)]` -/
def P16826208119826745016.Spec : Prop :=
  ∀ n, (P16826208119826745016.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P2096023123156372976

`∩[A156543(n+1), A395563(n+1)]`
-/

namespace A059452.P2096023123156372976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P2096023123156372976

namespace A059452

/-- `∩[A156543(n+1), A395563(n+1)]` -/
def P2096023123156372976.Spec : Prop :=
  ∀ n, (P2096023123156372976.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P12127737722872892143

`∩[A053176(n+1), A088707(n+1)]`
-/

namespace A059452.P12127737722872892143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P12127737722872892143

namespace A059452

/-- `∩[A053176(n+1), A088707(n+1)]` -/
def P12127737722872892143.Spec : Prop :=
  ∀ n, (P12127737722872892143.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P2425878145429442277

`∩[A005385(n+1), A079698(n)]`
-/

namespace A059452.P2425878145429442277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P2425878145429442277

namespace A059452

/-- `∩[A005385(n+1), A079698(n)]` -/
def P2425878145429442277.Spec : Prop :=
  ∀ n, (P2425878145429442277.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P13742700537022996008

`∩[A065966(n+1), A079698(n)]`
-/

namespace A059452.P13742700537022996008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P13742700537022996008

namespace A059452

/-- `∩[A065966(n+1), A079698(n)]` -/
def P13742700537022996008.Spec : Prop :=
  ∀ n, (P13742700537022996008.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P5494206539458211054

`∩[A079148(n+1), A079698(n)]`
-/

namespace A059452.P5494206539458211054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P5494206539458211054

namespace A059452

/-- `∩[A079148(n+1), A079698(n)]` -/
def P5494206539458211054.Spec : Prop :=
  ∀ n, (P5494206539458211054.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P13096948984441587574

`∩[A156658(n+1), A079698(n)]`
-/

namespace A059452.P13096948984441587574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P13096948984441587574

namespace A059452

/-- `∩[A156658(n+1), A079698(n)]` -/
def P13096948984441587574.Spec : Prop :=
  ∀ n, (P13096948984441587574.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P6931568245898633267

`∩[A005385(n+1), A067776(n+1)]`
-/

namespace A059452.P6931568245898633267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P6931568245898633267

namespace A059452

/-- `∩[A005385(n+1), A067776(n+1)]` -/
def P6931568245898633267.Spec : Prop :=
  ∀ n, (P6931568245898633267.a n : ℤ) = A059452 (n + 1)

end A059452

/-! ## A059452.P2680364014739572826

`∩[A067776(n+1), A079148(n+1)]`
-/

namespace A059452.P2680364014739572826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059452.P2680364014739572826

namespace A059452

/-- `∩[A067776(n+1), A079148(n+1)]` -/
def P2680364014739572826.Spec : Prop :=
  ∀ n, (P2680364014739572826.a n : ℤ) = A059452 (n + 1)

end A059452

/-!
# A059453: Sophie Germain primes (A005384) that are not safe primes (A005385).

The programs for A059453, the canonical program `A059453.P3518453852902920616` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059453 has offset 1).

The definition of A059453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059453.P721625376664896

`∩[A005384(n+1), A059456(n+1)]`
-/

namespace A059453.P721625376664896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P721625376664896

namespace A059453

/-- `∩[A005384(n+1), A059456(n+1)]` -/
def P721625376664896.Spec : Prop :=
  ∀ n, (P721625376664896.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P9594828163387882523

`∩[A059456(n+1), A156658(n+1)]`
-/

namespace A059453.P9594828163387882523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P9594828163387882523

namespace A059453

/-- `∩[A059456(n+1), A156658(n+1)]` -/
def P9594828163387882523.Spec : Prop :=
  ∀ n, (P9594828163387882523.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P7955837554089423169

`∩[A059456(n+1), A246857(n+1)]`
-/

namespace A059453.P7955837554089423169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P7955837554089423169

namespace A059453

/-- `∩[A059456(n+1), A246857(n+1)]` -/
def P7955837554089423169.Spec : Prop :=
  ∀ n, (P7955837554089423169.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P8666930061305677365

`∩[A059456(n+1), A259973(n+1)]`
-/

namespace A059453.P8666930061305677365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P8666930061305677365

namespace A059453

/-- `∩[A059456(n+1), A259973(n+1)]` -/
def P8666930061305677365.Spec : Prop :=
  ∀ n, (P8666930061305677365.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P2633774538250049031

`∩[A059456(n+1), A348511(n+1)]`
-/

namespace A059453.P2633774538250049031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P2633774538250049031

namespace A059453

/-- `∩[A059456(n+1), A348511(n+1)]` -/
def P2633774538250049031.Spec : Prop :=
  ∀ n, (P2633774538250049031.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P4014312172518160800

`∩[A059456(n+1), A364926(n+1)]`
-/

namespace A059453.P4014312172518160800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P4014312172518160800

namespace A059453

/-- `∩[A059456(n+1), A364926(n+1)]` -/
def P4014312172518160800.Spec : Prop :=
  ∀ n, (P4014312172518160800.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P8919742448102416099

`∩[A059456(n+1), A078762(n+1)]`
-/

namespace A059453.P8919742448102416099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P8919742448102416099

namespace A059453

/-- `∩[A059456(n+1), A078762(n+1)]` -/
def P8919742448102416099.Spec : Prop :=
  ∀ n, (P8919742448102416099.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P17812929904741192238

`∩[A054639(n+1), A059456(n+1)]`
-/

namespace A059453.P17812929904741192238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P17812929904741192238

namespace A059453

/-- `∩[A054639(n+1), A059456(n+1)]` -/
def P17812929904741192238.Spec : Prop :=
  ∀ n, (P17812929904741192238.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P14248195595906535918

`∩[A014109(n+1), A059456(n+1)]`
-/

namespace A059453.P14248195595906535918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P14248195595906535918

namespace A059453

/-- `∩[A014109(n+1), A059456(n+1)]` -/
def P14248195595906535918.Spec : Prop :=
  ∀ n, (P14248195595906535918.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P9452442552921223865

`∩[A059456(n+1), A156541(n+1)]`
-/

namespace A059453.P9452442552921223865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P9452442552921223865

namespace A059453

/-- `∩[A059456(n+1), A156541(n+1)]` -/
def P9452442552921223865.Spec : Prop :=
  ∀ n, (P9452442552921223865.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P10185077924213445971

`∩[A059456(n+1), A074821(n+1)]`
-/

namespace A059453.P10185077924213445971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P10185077924213445971

namespace A059453

/-- `∩[A059456(n+1), A074821(n+1)]` -/
def P10185077924213445971.Spec : Prop :=
  ∀ n, (P10185077924213445971.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P17998093974378770340

`∩[A059456(n+1), A117360(n+1)]`
-/

namespace A059453.P17998093974378770340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P17998093974378770340

namespace A059453

/-- `∩[A059456(n+1), A117360(n+1)]` -/
def P17998093974378770340.Spec : Prop :=
  ∀ n, (P17998093974378770340.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P3446652026044424395

`∩[A005097(n+1), A059456(n+1)]`
-/

namespace A059453.P3446652026044424395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P3446652026044424395

namespace A059453

/-- `∩[A005097(n+1), A059456(n+1)]` -/
def P3446652026044424395.Spec : Prop :=
  ∀ n, (P3446652026044424395.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P1385404460692957003

`∩[A059456(n+1), A102781(n+1)]`
-/

namespace A059453.P1385404460692957003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P1385404460692957003

namespace A059453

/-- `∩[A059456(n+1), A102781(n+1)]` -/
def P1385404460692957003.Spec : Prop :=
  ∀ n, (P1385404460692957003.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P16246326981200296680

`∩[A059456(n+1), A139791(n+1)]`
-/

namespace A059453.P16246326981200296680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P16246326981200296680

namespace A059453

/-- `∩[A059456(n+1), A139791(n+1)]` -/
def P16246326981200296680.Spec : Prop :=
  ∀ n, (P16246326981200296680.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P2072066429255609378

`∩[A059456(n+1), A326583(n+1)]`
-/

namespace A059453.P2072066429255609378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059453.P2072066429255609378

namespace A059453

/-- `∩[A059456(n+1), A326583(n+1)]` -/
def P2072066429255609378.Spec : Prop :=
  ∀ n, (P2072066429255609378.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P3518453852902920616

`filter[A059456(n+1), A101264(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059453

/-- `filter[A059456(n+1), A101264(#)]` -/
def P3518453852902920616.Spec : Prop :=
  ∀ n, P3518453852902920616.a n = A059453 (n + 1)

theorem P3518453852902920616.correct : P3518453852902920616.Spec := by
  intro n
  simp only [A059453, Nat.add_sub_cancel]

end A059453

/-! ## A059453.P17432095750573177944

`eq[2, A292936(2*n+1)]`
-/

namespace A059453.P17432095750573177944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059453.P17432095750573177944

namespace A059453

/-- `eq[2, A292936(2*n+1)]` -/
def P17432095750573177944.Spec : Prop :=
  ∀ n, (P17432095750573177944.a n : ℤ) = A059453 (n + 1)

end A059453

/-! ## A059453.P5069570811117054457

`eq[2, A292936(n+1)]/2`
-/

namespace A059453.P5069570811117054457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A059453.P5069570811117054457

namespace A059453

/-- `eq[2, A292936(n+1)]/2` -/
def P5069570811117054457.Spec : Prop :=
  ∀ n, P5069570811117054457.a n = (A059453 (n + 1) : ℚ)

end A059453

/-! ## A059453.P18111396193389144310

`A006530(eq[2, A292936(n+1)])`
-/

namespace A059453.P18111396193389144310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059453.P18111396193389144310

namespace A059453

/-- `A006530(eq[2, A292936(n+1)])` -/
def P18111396193389144310.Spec : Prop :=
  ∀ n, P18111396193389144310.a n = A059453 (n + 1)

end A059453

/-!
# A059455: Safe primes which are also Sophie Germain primes.

The programs for A059455, there is no canonical definition to state claims against.
-/

/-! ## A059455.P1905823929828500049

`floor(A066179(n+1)/2)`
-/

namespace A059455.P1905823929828500049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066179 (n + 1) : ℚ) / 2⌋

end

end A059455.P1905823929828500049

/-! ## A059455.P795548544420343093

`2*A007700(n+1)+1`
-/

namespace A059455.P795548544420343093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007700 (n + 1) + 1

end

end A059455.P795548544420343093

/-! ## A059455.P11718489535310720074

`ceil(sqrt(lcm(A007700(n+1), A066179(n+1))))`
-/

namespace A059455.P11718489535310720074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Int.lcm (A007700 (n + 1)) (A066179 (n + 1)) : ℝ)⌉

end

end A059455.P11718489535310720074

/-! ## A059455.P12843611047019885433

`∑{d}[A000040(n+1), A007700(n+1)+A001221(#)]`
-/

namespace A059455.P12843611047019885433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A007700 (n + 1) + A001221 d)

end

end A059455.P12843611047019885433

/-! ## A059455.P16341001338505115325

`A007700(n+1)+A010051(A059456(n+1))+A007700(n+1)`
-/

namespace A059455.P16341001338505115325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1) + (A010051 (A059456 (n + 1)).toNat + A007700 (n + 1))

end

end A059455.P16341001338505115325

/-! ## A059455.P10179823220069974604

`∩[A005384(n+1), A005385(n+1)]`
-/

namespace A059455.P10179823220069974604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059455.P10179823220069974604

/-! ## A059455.P2026318532123474207

`A007700(n+1)+A007700(n+1)+A001222(A005384(n+1))`
-/

namespace A059455.P2026318532123474207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1) + (A007700 (n + 1) + A001222 (A005384 (n + 1)).toNat)

end

end A059455.P2026318532123474207

/-! ## A059455.P7006703938049339727

`∩[A005384(n+1), A065966(n+1)]`
-/

namespace A059455.P7006703938049339727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059455.P7006703938049339727

/-! ## A059455.P12902322881157800105

`ceil(sqrt(A100930(n+1)))`
-/

namespace A059455.P12902322881157800105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A100930 (n + 1) : ℝ)⌉

end

end A059455.P12902322881157800105

/-! ## A059455.P7709903436585974891

`A231967(n+1)/A100930(n+1)`
-/

namespace A059455.P7709903436585974891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231967 (n + 1) : ℚ) / (A100930 (n + 1) : ℚ)

end

end A059455.P7709903436585974891

/-! ## A059455.P1724478478923622272

`2*p?[A152843(n+1)+1]+1`
-/

namespace A059455.P1724478478923622272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152843 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A059455.P1724478478923622272

/-! ## A059455.P11611702438311243138

`∩[A005385(n+1), A348511(n+1)]`
-/

namespace A059455.P11611702438311243138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059455.P11611702438311243138

/-! ## A059455.P3920740226631855069

`∩[A005385(n+1), A364926(n+1)]`
-/

namespace A059455.P3920740226631855069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059455.P3920740226631855069

/-! ## A059455.P17512005750919291101

`∩[A005385(n+1), A246857(n+1)]`
-/

namespace A059455.P17512005750919291101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059455.P17512005750919291101

/-! ## A059455.P11770598354301035347

`∩[A065966(n+1), A246857(n+1)]`
-/

namespace A059455.P11770598354301035347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059455.P11770598354301035347

/-! ## A059455.P12626039873008465977

`∩[A005384(n+1), A372113(n+1)]`
-/

namespace A059455.P12626039873008465977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059455.P12626039873008465977

/-! ## A059455.P9248015221170220969

`∩[A005385(n+1), A372113(n+1)]`
-/

namespace A059455.P9248015221170220969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059455.P9248015221170220969

/-!
# A059456: Unsafe primes: primes not in A005385.

The programs for A059456, the canonical program `A059456.P4556274000742435863` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059456 has offset 1).

The definition of A059456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059456.P8928998431474719006

`A176888(n+1)+1`
-/

namespace A059456.P8928998431474719006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176888 (n + 1) + 1

end

end A059456.P8928998431474719006

namespace A059456

/-- `A176888(n+1)+1` -/
def P8928998431474719006.Spec : Prop :=
  ∀ n, P8928998431474719006.a n = A059456 (n + 1)

theorem P8928998431474719006.correct : P8928998431474719006.Spec := by
  intro n
  simp only [A059456, Nat.add_sub_cancel, A059456.P8928998431474719006.a, A059456.P4556274000742435863.f1, A059456.P4556274000742435863.f2, A059456.P4556274000742435863.a, A082539, A082539.P16555288702611882584.f1, A082539.P16555288702611882584.f2, A082539.P16555288702611882584.a, A176888, A176888.P9111566822716569314.a, A176902, A176902.P2034357475414807943.f1, A176902.P2034357475414807943.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084196, A084196.P3907743680021484046.a, A323162, A323162.P4199434762193306250.a, A008864, A008864.P9177617808325052279.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, A072627, A072627.P14863741919564884877.f1, A072627.P14863741919564884877.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059456

/-! ## A059456.P9161654655961632216

`∪[A053998(n), A099184(n+2)]`
-/

namespace A059456.P9161654655961632216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P9161654655961632216

namespace A059456

/-- `∪[A053998(n), A099184(n+2)]` -/
def P9161654655961632216.Spec : Prop :=
  ∀ n, (P9161654655961632216.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P16265386258011824469

`∪[A055739(n), A099184(n+2)]`
-/

namespace A059456.P16265386258011824469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P16265386258011824469

namespace A059456

/-- `∪[A055739(n), A099184(n+2)]` -/
def P16265386258011824469.Spec : Prop :=
  ∀ n, (P16265386258011824469.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P10324890404597169483

`∪[A059453(n+1), A059500(n+1)]`
-/

namespace A059456.P10324890404597169483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P10324890404597169483

namespace A059456

/-- `∪[A059453(n+1), A059500(n+1)]` -/
def P10324890404597169483.Spec : Prop :=
  ∀ n, (P10324890404597169483.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P11533006494388608920

`∪[A060254(n+1), A082539(n+1)]`
-/

namespace A059456.P11533006494388608920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P11533006494388608920

namespace A059456

/-- `∪[A060254(n+1), A082539(n+1)]` -/
def P11533006494388608920.Spec : Prop :=
  ∀ n, (P11533006494388608920.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P4556274000742435863

`∪[A082539(n+1), A176902(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059456

/-- `∪[A082539(n+1), A176902(n+1)]` -/
def P4556274000742435863.Spec : Prop :=
  ∀ n, (P4556274000742435863.a n : ℤ) = A059456 (n + 1)

theorem P4556274000742435863.correct : P4556274000742435863.Spec := by
  intro n
  simp only [A059456, Nat.add_sub_cancel]

end A059456

/-! ## A059456.P17359615065002500520

`∪[A060254(n+1), A274589(n+1)]`
-/

namespace A059456.P17359615065002500520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P17359615065002500520

namespace A059456

/-- `∪[A060254(n+1), A274589(n+1)]` -/
def P17359615065002500520.Spec : Prop :=
  ∀ n, (P17359615065002500520.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P7507791851556752342

`∪[A176902(n+1), A274589(n+1)]`
-/

namespace A059456.P7507791851556752342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P7507791851556752342

namespace A059456

/-- `∪[A176902(n+1), A274589(n+1)]` -/
def P7507791851556752342.Spec : Prop :=
  ∀ n, (P7507791851556752342.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P8317383373395213064

`∪[A038537(n+1), A099184(n+2)]`
-/

namespace A059456.P8317383373395213064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P8317383373395213064

namespace A059456

/-- `∪[A038537(n+1), A099184(n+2)]` -/
def P8317383373395213064.Spec : Prop :=
  ∀ n, (P8317383373395213064.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P9934233626100439864

`∪[A059453(n+1), A099184(n+2)]`
-/

namespace A059456.P9934233626100439864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P9934233626100439864

namespace A059456

/-- `∪[A059453(n+1), A099184(n+2)]` -/
def P9934233626100439864.Spec : Prop :=
  ∀ n, (P9934233626100439864.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P13083529914786838022

`∪[A062459(n+1), A099184(n+2)]`
-/

namespace A059456.P13083529914786838022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P13083529914786838022

namespace A059456

/-- `∪[A062459(n+1), A099184(n+2)]` -/
def P13083529914786838022.Spec : Prop :=
  ∀ n, (P13083529914786838022.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P16180124285500074301

`∪[A080359(n+1), A099184(n+2)]`
-/

namespace A059456.P16180124285500074301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P16180124285500074301

namespace A059456

/-- `∪[A080359(n+1), A099184(n+2)]` -/
def P16180124285500074301.Spec : Prop :=
  ∀ n, (P16180124285500074301.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P11258141886690250625

`∪[A082539(n+1), A099184(n+2)]`
-/

namespace A059456.P11258141886690250625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P11258141886690250625

namespace A059456

/-- `∪[A082539(n+1), A099184(n+2)]` -/
def P11258141886690250625.Spec : Prop :=
  ∀ n, (P11258141886690250625.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P1246139681853411693

`∪[A084445(n+1), A099184(n+2)]`
-/

namespace A059456.P1246139681853411693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P1246139681853411693

namespace A059456

/-- `∪[A084445(n+1), A099184(n+2)]` -/
def P1246139681853411693.Spec : Prop :=
  ∀ n, (P1246139681853411693.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P18328982001848829323

`∪[A234999(n+1), A099184(n+2)]`
-/

namespace A059456.P18328982001848829323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P18328982001848829323

namespace A059456

/-- `∪[A234999(n+1), A099184(n+2)]` -/
def P18328982001848829323.Spec : Prop :=
  ∀ n, (P18328982001848829323.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P9608126315044253079

`p?[2-A064911(n+1)+n]`
-/

namespace A059456.P9608126315044253079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A064911 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059456.P9608126315044253079

namespace A059456

/-- `p?[2-A064911(n+1)+n]` -/
def P9608126315044253079.Spec : Prop :=
  ∀ n, P9608126315044253079.a n = A059456 (n + 1)

end A059456

/-! ## A059456.P17681439525196788993

`p?[(n+1)*A292936(n+1)]`
-/

namespace A059456.P17681439525196788993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A292936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059456.P17681439525196788993

namespace A059456

/-- `p?[(n+1)*A292936(n+1)]` -/
def P17681439525196788993.Spec : Prop :=
  ∀ n, P17681439525196788993.a n = A059456 (n + 1)

end A059456

/-! ## A059456.P2989283256817325021

`eq[1, A292936(n+1)]+1`
-/

namespace A059456.P2989283256817325021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059456.P2989283256817325021

namespace A059456

/-- `eq[1, A292936(n+1)]+1` -/
def P2989283256817325021.Spec : Prop :=
  ∀ n, (P2989283256817325021.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P15327398860137743148

`∪[A096787(n+1), A274589(n+1)]`
-/

namespace A059456.P15327398860137743148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059456.P15327398860137743148

namespace A059456

/-- `∪[A096787(n+1), A274589(n+1)]` -/
def P15327398860137743148.Spec : Prop :=
  ∀ n, (P15327398860137743148.a n : ℤ) = A059456 (n + 1)

end A059456

/-! ## A059456.P8425328832018023237

`record[A020639(A016726(n+2))]`
-/

namespace A059456.P8425328832018023237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016726 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059456.P8425328832018023237

namespace A059456

/-- `record[A020639(A016726(n+2))]` -/
def P8425328832018023237.Spec : Prop :=
  ∀ n, P8425328832018023237.a n = A059456 (n + 1)

end A059456

/-!
# A059457: Numerator of Sum_{k=0..n} (-1)^k/(3*k+1).

The programs for A059457, there is no canonical definition to state claims against.
-/

/-! ## A059457.P2486579081443678687

`lcm(A007559(n), A024217(n+1))/A007559(n)`
-/

namespace A059457.P2486579081443678687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007559 n) (A024217 (n + 1)) : ℚ) / (A007559 n : ℚ)

end

end A059457.P2486579081443678687

/-! ## A059457.P12470395561595647271

`A000265(A024217(n+1))`
-/

namespace A059457.P12470395561595647271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A024217 (n + 1)).toNat

end

end A059457.P12470395561595647271

/-!
# A059458: A binary sequence: a(1) = 10 (2 in decimal) and a(n+1) is obtained by trying to complement just one bit of a(n), starting with the least significant bit, until a new prime is reached.

The programs for A059458, there is no canonical definition to state claims against.
-/

/-! ## A059458.P17548088792736308048

`A007088(A059459(n+1))`
-/

namespace A059458.P17548088792736308048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A059459 (n + 1)).toNat

end

end A059458.P17548088792736308048

/-! ## A059458.P13806024254533398015

`A007088(A294205(A077168(n)))`
-/

namespace A059458.P13806024254533398015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A294205 (A077168 n).toNat).toNat

end

end A059458.P13806024254533398015

/-! ## A059458.P3847235788053639831

`∏{d}[A294205(A043319(n+1)), A007088(#)]`
-/

namespace A059458.P3847235788053639831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294205 (A043319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A007088 d

end

end A059458.P3847235788053639831

/-! ## A059458.P17326959786863029466

`∏{d}[A294205(A044916(n+1)), A007088(#)]`
-/

namespace A059458.P17326959786863029466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294205 (A044916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A007088 d

end

end A059458.P17326959786863029466

/-!
# A059459: a(1) = 2; a(n+1) is obtained by writing a(n) in binary and trying to complement just one bit, starting with the least significant bit, until a new prime is reached.

The programs for A059459, there is no canonical definition to state claims against.
-/

/-! ## A059459.P10715944342128669303

`A294205(A077168(n))`
-/

namespace A059459.P10715944342128669303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294205 (A077168 n).toNat

end

end A059459.P10715944342128669303

/-! ## A059459.P10999877021105264374

`A294205(A043319(n+1))`
-/

namespace A059459.P10999877021105264374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294205 (A043319 (n + 1)).toNat

end

end A059459.P10999877021105264374

/-! ## A059459.P141439047728421598

`A294205(A044916(n+1))`
-/

namespace A059459.P141439047728421598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294205 (A044916 (n + 1)).toNat

end

end A059459.P141439047728421598

/-! ## A059459.P17666342794135805664

`A294205(A055646(n+1))`
-/

namespace A059459.P17666342794135805664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294205 (A055646 (n + 1)).toNat

end

end A059459.P17666342794135805664

/-! ## A059459.P13482243932085500974

`A294205(A055647(n)+1)`
-/

namespace A059459.P13482243932085500974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294205 (A055647 n + 1).toNat

end

end A059459.P13482243932085500974

/-!
# A059460: Iteration of unitary-sigma function: a(1) = 2, a(n) = usigma(a(n-1)).

The programs for A059460, the canonical program `A059460.P3948424867528968538` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059460 has offset 1).

The definition of A059460 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059460.P3948424867528968538

`A034448(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A059460

/-- `A034448(a(n-1))` -/
def P3948424867528968538.Spec : Prop :=
  ∀ n, P3948424867528968538.a n = A059460 (n + 1)

theorem P3948424867528968538.correct : P3948424867528968538.Spec := by
  intro n
  simp only [A059460, Nat.add_sub_cancel]

end A059460

/-! ## A059460.P425071807929125857

`A034460(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A059460.P425071807929125857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A034460 (a (n - 1)).toNat + a (n - 1)

end

end A059460.P425071807929125857

namespace A059460

/-- `A034460(a(n-1))+a(n-1)` -/
def P425071807929125857.Spec : Prop :=
  ∀ n, P425071807929125857.a n = A059460 (n + 1)

end A059460

/-! ## A059460.P1323159074599550022

`A063919(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A059460.P1323159074599550022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A063919 (a (n - 1)).toNat + a (n - 1)

end

end A059460.P1323159074599550022

namespace A059460

/-- `A063919(a(n-1))+a(n-1)` -/
def P1323159074599550022.Spec : Prop :=
  ∀ n, P1323159074599550022.a n = A059460 (n + 1)

end A059460

/-! ## A059460.P6693761578957625537

`A055033(a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A059460.P6693761578957625537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A055033 (a (n - 2)).toNat

end

end A059460.P6693761578957625537

namespace A059460

/-- `A055033(a(n-2))` -/
def P6693761578957625537.Spec : Prop :=
  ∀ n, P6693761578957625537.a n = A059460 (n + 1)

end A059460

/-! ## A059460.P2669425483821427750

`A345451(a(n-1))+1` with `a(0)=2`
-/

namespace A059460.P2669425483821427750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A345451 (a (n - 1)).toNat + 1

end

end A059460.P2669425483821427750

namespace A059460

/-- `A345451(a(n-1))+1` -/
def P2669425483821427750.Spec : Prop :=
  ∀ n, P2669425483821427750.a n = A059460 (n + 1)

theorem P2669425483821427750.correct : P2669425483821427750.Spec := by
  intro n
  simp only [A059460, Nat.add_sub_cancel, A059460.P2669425483821427750.a, A059460.P3948424867528968538.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A345451, A345451.P7254326500789221208.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059460

/-!
# A059469: Numbers that are the products of distinct substrings of themselves.

The programs for A059469, there is no canonical definition to state claims against.
-/

/-! ## A059469.P1759141378771715092

`A162305(A117954(n+1)+3)`
-/

namespace A059469.P1759141378771715092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162305 (A117954 (n + 1) + 3).toNat

end

end A059469.P1759141378771715092

/-! ## A059469.P13683759984174824090

`A162305(A219326(n+1)+3)`
-/

namespace A059469.P13683759984174824090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162305 (A219326 (n + 1) + 3).toNat

end

end A059469.P13683759984174824090

/-! ## A059469.P6860050060609208385

`A162305(A004903(n+1)+4)`
-/

namespace A059469.P6860050060609208385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162305 (A004903 (n + 1) + 4).toNat

end

end A059469.P6860050060609208385

/-! ## A059469.P9730604581003853350

`A162305(n+4)+A162289(A162269(n))`
-/

namespace A059469.P9730604581003853350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162305 (n + 4) + A162289 (A162269 n).toNat

end

end A059469.P9730604581003853350

/-! ## A059469.P6711962641863918980

`A162305(n+4)*A294336(A195261(n))`
-/

namespace A059469.P6711962641863918980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162305 (n + 4) * A294336 (A195261 n).toNat

end

end A059469.P6711962641863918980

/-!
# A059470: Numbers that are the products of distinct substrings (>1) of themselves and do not end in 0.

The programs for A059470, there is no canonical definition to state claims against.
-/

/-! ## A059470.P3017184723452190719

`filter[A059469(n+1), A168184(#)]`
-/

namespace A059470.P3017184723452190719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A059470.P3017184723452190719

/-! ## A059470.P8481924388040444276

`filter[A059469(n+1), A168046(#)]`
-/

namespace A059470.P8481924388040444276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A059470.P8481924388040444276

/-!
# A059471: a(1) = 2; a(n+1) is obtained by trying to change just one digit of a(n), starting with the least significant digit, until a new prime is reached.

The programs for A059471, there is no canonical definition to state claims against.
-/

/-! ## A059471.P16899897163681093316

`A059496(n+1)%A128941(n)`
-/

namespace A059471.P16899897163681093316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059496 (n + 1)) (A128941 n)

end

end A059471.P16899897163681093316

/-! ## A059471.P17635610083620083184

`A059496(n+1)+A000007(A007368(n))`
-/

namespace A059471.P17635610083620083184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059496 (n + 1) + A000007 (A007368 n).toNat

end

end A059471.P17635610083620083184

/-! ## A059471.P17982609784426964380

`A185284(A125781(n))+A059496(n+1)`
-/

namespace A059471.P17982609784426964380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A125781 n).toNat + A059496 (n + 1)

end

end A059471.P17982609784426964380

/-! ## A059471.P14741508120626009625

`A057237(A027423(n))*A059496(n+1)`
-/

namespace A059471.P14741508120626009625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A027423 n).toNat * A059496 (n + 1)

end

end A059471.P14741508120626009625

/-! ## A059471.P17336615056576800256

`A006530(A059496(n+1)*A300951(n))`
-/

namespace A059471.P17336615056576800256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059496 (n + 1) * A300951 n).toNat

end

end A059471.P17336615056576800256

/-!
# A059472: Primes omitted from A059471.

The programs for A059472, there is no canonical definition to state claims against.
-/

/-! ## A059472.P6975952288978891824

`A059497(∑[A146465(n+1)!])`
-/

namespace A059472.P6975952288978891824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A146465 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059472.P6975952288978891824

/-!
# A059473: Triangle T(n, k) is coefficient of z^n*w^k in 1/(1 - 2*z - 2*w - 2*z*w) read by rows in order 00, 10, 01, 20, 11, 02, ...

The programs for A059473, the canonical program `A059473.P5479498727839078699` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059473 has offset 0).

The definition of A059473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059473.P5479498727839078699

`2*T(n-1,k)+2*T(n-1,k-1)+2*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059473

/-- `2*T(n-1,k)+2*T(n-1,k-1)+2*T(n-2,k-1)` -/
def P5479498727839078699.Spec : Prop :=
  ∀ n, (P5479498727839078699.a n : ℤ) = A059473 n

theorem P5479498727839078699.correct : P5479498727839078699.Spec := by
  intro n
  simp only [A059473]

end A059473

/-! ## A059473.P1206521607208879797

`A059268(n)*A121574(n)`
-/

namespace A059473.P1206521607208879797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A121574 n

end

end A059473.P1206521607208879797

namespace A059473

/-- `A059268(n)*A121574(n)` -/
def P1206521607208879797.Spec : Prop :=
  ∀ n, P1206521607208879797.a n = A059473 n

end A059473

/-! ## A059473.P11821582713352104046

`A000079(A002262(n))*A121574(n)`
-/

namespace A059473.P11821582713352104046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A121574 n

end

end A059473.P11821582713352104046

namespace A059473

/-- `A000079(A002262(n))*A121574(n)` -/
def P11821582713352104046.Spec : Prop :=
  ∀ n, P11821582713352104046.a n = A059473 n

end A059473

/-! ## A059473.P4529252241486257913

`A013620(A112367(n))*A121574(n)`
-/

namespace A059473.P4529252241486257913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A112367 n).toNat * A121574 n

end

end A059473.P4529252241486257913

namespace A059473

/-- `A013620(A112367(n))*A121574(n)` -/
def P4529252241486257913.Spec : Prop :=
  ∀ n, P4529252241486257913.a n = A059473 n

end A059473

/-! ## A059473.P8423110452761854871

`A011782(A002260(n+1))*A121574(n)`
-/

namespace A059473.P8423110452761854871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A121574 n

end

end A059473.P8423110452761854871

namespace A059473

/-- `A011782(A002260(n+1))*A121574(n)` -/
def P8423110452761854871.Spec : Prop :=
  ∀ n, P8423110452761854871.a n = A059473 n

end A059473

/-! ## A059473.P10380984279874514888

`and(A018900(n+1), A135764(n+1))*A121574(n)`
-/

namespace A059473.P10380984279874514888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018900 (n + 1)) (A135764 (n + 1)) * A121574 n

end

end A059473.P10380984279874514888

namespace A059473

/-- `and(A018900(n+1), A135764(n+1))*A121574(n)` -/
def P10380984279874514888.Spec : Prop :=
  ∀ n, P10380984279874514888.a n = A059473 n

end A059473

/-! ## A059473.P15472683915119076755

`A121574(A061579(n))*A130321(n)`
-/

namespace A059473.P15472683915119076755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121574 (A061579 n).toNat * A130321 n

end

end A059473.P15472683915119076755

namespace A059473

/-- `A121574(A061579(n))*A130321(n)` -/
def P15472683915119076755.Spec : Prop :=
  ∀ n, P15472683915119076755.a n = A059473 n

end A059473

/-! ## A059473.P2757693002603307023

`A006519(A135764(n+1))*A121574(n)`
-/

namespace A059473.P2757693002603307023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A135764 (n + 1)).toNat * A121574 n

end

end A059473.P2757693002603307023

namespace A059473

/-- `A006519(A135764(n+1))*A121574(n)` -/
def P2757693002603307023.Spec : Prop :=
  ∀ n, P2757693002603307023.a n = A059473 n

end A059473

/-! ## A059473.P7071267204923317460

`A006519(A018900(n+1))*A121574(n)`
-/

namespace A059473.P7071267204923317460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A018900 (n + 1)).toNat * A121574 n

end

end A059473.P7071267204923317460

namespace A059473

/-- `A006519(A018900(n+1))*A121574(n)` -/
def P7071267204923317460.Spec : Prop :=
  ∀ n, P7071267204923317460.a n = A059473 n

end A059473

/-!
# A059474: Triangle read by rows: T(n,k) is coefficient of z^n*w^k in 1/(1 - 2*z - 2*w + 2*z*w) read by rows in order 00, 10, 01, 20, 11, 02, ...

The programs for A059474, the canonical program `A059474.P6745960559423120194` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059474 has offset 0).

The definition of A059474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059474.P6745960559423120194

`2*(T(n-1,k)+T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059474

/-- `2*(T(n-1,k)+T(n-1,k-1)-T(n-2,k-1))` -/
def P6745960559423120194.Spec : Prop :=
  ∀ n, P6745960559423120194.a n = A059474 n

theorem P6745960559423120194.correct : P6745960559423120194.Spec := by
  intro n
  simp only [A059474]

end A059474

/-! ## A059474.P3495886302522588166

`A059268(n)*A106195(n)`
-/

namespace A059474.P3495886302522588166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A106195 n

end

end A059474.P3495886302522588166

namespace A059474

/-- `A059268(n)*A106195(n)` -/
def P3495886302522588166.Spec : Prop :=
  ∀ n, P3495886302522588166.a n = A059474 n

end A059474

/-! ## A059474.P15858663174709365129

`A130321(n)*A208341(n)`
-/

namespace A059474.P15858663174709365129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A208341 n

end

end A059474.P15858663174709365129

namespace A059474

/-- `A130321(n)*A208341(n)` -/
def P15858663174709365129.Spec : Prop :=
  ∀ n, P15858663174709365129.a n = A059474 n

end A059474

/-! ## A059474.P17514960715427321766

`(2-A000007(n))*A059576(n)`
-/

namespace A059474.P17514960715427321766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A059576 n

end

end A059474.P17514960715427321766

namespace A059474

/-- `(2-A000007(n))*A059576(n)` -/
def P17514960715427321766.Spec : Prop :=
  ∀ n, P17514960715427321766.a n = A059474 n

end A059474

/-! ## A059474.P13211287888014855806

`A059576(n)*A108590(floor(1/(n+1))+1)`
-/

namespace A059474.P13211287888014855806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 n * A108590 (⌊1 / (n + 1 : ℚ)⌋ + 1).toNat

end

end A059474.P13211287888014855806

namespace A059474

/-- `A059576(n)*A108590(floor(1/(n+1))+1)` -/
def P13211287888014855806.Spec : Prop :=
  ∀ n, P13211287888014855806.a n = A059474 n

end A059474

/-! ## A059474.P9358809248686595541

`A036453(2*n+1)*A059576(n)`
-/

namespace A059474.P9358809248686595541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A059576 n

end

end A059474.P9358809248686595541

namespace A059474

/-- `A036453(2*n+1)*A059576(n)` -/
def P9358809248686595541.Spec : Prop :=
  ∀ n, P9358809248686595541.a n = A059474 n

end A059474

/-! ## A059474.P6952342913183988237

`A059576(n)*A176591(2*n+1)`
-/

namespace A059474.P6952342913183988237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059576 n * A176591 (2 * n + 1)

end

end A059474.P6952342913183988237

namespace A059474

/-- `A059576(n)*A176591(2*n+1)` -/
def P6952342913183988237.Spec : Prop :=
  ∀ n, P6952342913183988237.a n = A059474 n

end A059474

/-! ## A059474.P6963471155161830579

`A011782(n+1)/A011782(n)*A059576(n)`
-/

namespace A059474.P6963471155161830579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A059576 n : ℚ)

end

end A059474.P6963471155161830579

namespace A059474

/-- `A011782(n+1)/A011782(n)*A059576(n)` -/
def P6963471155161830579.Spec : Prop :=
  ∀ n, P6963471155161830579.a n = (A059474 n : ℚ)

end A059474

/-! ## A059474.P16625671274125314813

`A007070(n)/A003480(n)*A059576(n)`
-/

namespace A059474.P16625671274125314813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 n : ℚ) / (A003480 n : ℚ) * (A059576 n : ℚ)

end

end A059474.P16625671274125314813

namespace A059474

/-- `A007070(n)/A003480(n)*A059576(n)` -/
def P16625671274125314813.Spec : Prop :=
  ∀ n, P16625671274125314813.a n = (A059474 n : ℚ)

end A059474

/-!
# A059475: Number of 2n X 2n half-turn symmetric alternating-sign matrices (HTSASM's).

The programs for A059475, there is no canonical definition to state claims against.
-/

/-! ## A059475.P13028917440092410568

`A005130(n)*A006366(n)`
-/

namespace A059475.P13028917440092410568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n * A006366 n

end

end A059475.P13028917440092410568

/-! ## A059475.P5223000986575394311

`A005158(comp[2*(n+1)]+1)`
-/

namespace A059475.P5223000986575394311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005158 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A059475.P5223000986575394311

/-! ## A059475.P4986013360362103860

`sqrt(A049503(n))*A006366(n)`
-/

namespace A059475.P4986013360362103860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049503 n : ℝ) * (A006366 n : ℝ)

end

end A059475.P4986013360362103860

/-! ## A059475.P15120650590000233278

`record[gcd(A005158(n+1), A035457(n))]`
-/

namespace A059475.P15120650590000233278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005158 (n + 1)) (A035457 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059475.P15120650590000233278

/-! ## A059475.P5036329015011640668

`A008793(n)/A005130(n)`
-/

namespace A059475.P5036329015011640668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008793 n : ℚ) / (A005130 n : ℚ)

end

end A059475.P5036329015011640668

/-!
# A059476: Number of 4n X 4n quarter-turn symmetric alternating-sign matrices (QTSASM's).

The programs for A059476, there is no canonical definition to state claims against.
-/

/-! ## A059476.P14191389285629630834

`A059475(n)*A005130(n)²`
-/

namespace A059476.P14191389285629630834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059475 n * A005130 n ^ 2

end

end A059476.P14191389285629630834

/-! ## A059476.P17640357609655800718

`A005130(n)*A008793(n)`
-/

namespace A059476.P17640357609655800718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n * A008793 n

end

end A059476.P17640357609655800718

/-! ## A059476.P17374494933531310356

`A049503(n)*A059475(n)`
-/

namespace A059476.P17374494933531310356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049503 n * A059475 n

end

end A059476.P17374494933531310356

/-! ## A059476.P266797003765937432

`sqrt(A049503(n))*A008793(n)`
-/

namespace A059476.P266797003765937432
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049503 n : ℝ) * (A008793 n : ℝ)

end

end A059476.P266797003765937432

/-! ## A059476.P1368683179548854533

`A005130(n)*A120258(∑[4*n])`
-/

namespace A059476.P1368683179548854533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n * A120258 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059476.P1368683179548854533

/-!
# A059477: 3-enumeration of n X n alternating-sign matrices.

The programs for A059477, there is no canonical definition to state claims against.
-/

/-! ## A059477.P1854517675057110947

`A210697(∑[n+1])`
-/

namespace A059477.P1854517675057110947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210697 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059477.P1854517675057110947

/-! ## A059477.P13951436416193037344

`and(-1, A210697(A000124(n)))`
-/

namespace A059477.P13951436416193037344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A210697 (A000124 n).toNat)

end

end A059477.P13951436416193037344

/-! ## A059477.P15700926893585065438

`A210697(A000124(n))+A061858(n)`
-/

namespace A059477.P15700926893585065438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210697 (A000124 n).toNat + A061858 n

end

end A059477.P15700926893585065438

/-!
# A059478: Arrange irreducible polynomials over GF(2) in lexicographic order and write down the order of each polynomial.

The programs for A059478, there is no canonical definition to state claims against.
-/

/-! ## A059478.P4985845286589556889

`or(A007953(A293737(n)), A334727(n))`
-/

namespace A059478.P4985845286589556889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007953 (A293737 n).toNat) (A334727 n)

end

end A059478.P4985845286589556889

/-! ## A059478.P8135785848564369932

`or(A002260(A034731(n+1)), A227351(n))`
-/

namespace A059478.P8135785848564369932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (A034731 (n + 1)).toNat) (A227351 n)

end

end A059478.P8135785848564369932

/-! ## A059478.P11571041762032276508

`A329034(or(A077739(n+1), A307018(n)))`
-/

namespace A059478.P11571041762032276508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329034 (Int.lor (A077739 (n + 1)) (A307018 n)).toNat

end

end A059478.P11571041762032276508

/-! ## A059478.P2761810694482105622

`or(A279341(n+1), A330195(A265408(n)))`
-/

namespace A059478.P2761810694482105622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279341 (n + 1)) (A330195 (A265408 n).toNat)

end

end A059478.P2761810694482105622

/-!
# A059479: Number of 3 X 3 matrices with elements from {0,...,n-1} such that the middle element of each of the eight lines of three (rows, columns and diagonals) is the square (mod n) of the difference of the end elements.

The programs for A059479, the canonical program `A059479.P16928363870094844603` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059479 has offset 1).

The definition of A059479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059479.P16928363870094844603

`A008833(n+1)*(n+1)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059479

/-- `A008833(n+1)*(n+1)²` -/
def P16928363870094844603.Spec : Prop :=
  ∀ n, P16928363870094844603.a n = A059479 (n + 1)

theorem P16928363870094844603.correct : P16928363870094844603.Spec := by
  intro n
  simp only [A059479, Nat.add_sub_cancel]

end A059479

/-! ## A059479.P11835453004684699603

`(n+1)^3/A007913(n+1)`
-/

namespace A059479.P11835453004684699603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A007913 (n + 1) : ℚ)

end

end A059479.P11835453004684699603

namespace A059479

/-- `(n+1)^3/A007913(n+1)` -/
def P11835453004684699603.Spec : Prop :=
  ∀ n, P11835453004684699603.a n = (A059479 (n + 1) : ℚ)

end A059479

/-! ## A059479.P17464652159649958448

`A355264(n+1)²`
-/

namespace A059479.P17464652159649958448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355264 (n + 1) ^ 2

end

end A059479.P17464652159649958448

namespace A059479

/-- `A355264(n+1)²` -/
def P17464652159649958448.Spec : Prop :=
  ∀ n, P17464652159649958448.a n = A059479 (n + 1)

theorem P17464652159649958448.correct : P17464652159649958448.Spec := by
  intro n
  simp only [A059479, Nat.add_sub_cancel, A059479.P17464652159649958448.a, A059479.P16928363870094844603.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A355264, A355264.P11732837253981206670.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059479

/-! ## A059479.P15489478104790736751

`((n+1)*A000188(n+1))²`
-/

namespace A059479.P15489478104790736751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000188 (n + 1)) ^ 2

end

end A059479.P15489478104790736751

namespace A059479

/-- `((n+1)*A000188(n+1))²` -/
def P15489478104790736751.Spec : Prop :=
  ∀ n, P15489478104790736751.a n = A059479 (n + 1)

theorem P15489478104790736751.correct : P15489478104790736751.Spec := by
  intro n
  simp only [A059479, Nat.add_sub_cancel, A059479.P15489478104790736751.a, A059479.P16928363870094844603.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059479

/-! ## A059479.P10074652824153352021

`((n+1)²/A019554(n+1))²`
-/

namespace A059479.P10074652824153352021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) / (A019554 (n + 1) : ℚ)) ^ 2

end

end A059479.P10074652824153352021

namespace A059479

/-- `((n+1)²/A019554(n+1))²` -/
def P10074652824153352021.Spec : Prop :=
  ∀ n, P10074652824153352021.a n = (A059479 (n + 1) : ℚ)

end A059479

/-! ## A059479.P2177027776403650373

`(n+1)²²/A053143(n+1)`
-/

namespace A059479.P2177027776403650373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℚ) / (A053143 (n + 1) : ℚ)

end

end A059479.P2177027776403650373

namespace A059479

/-- `(n+1)²²/A053143(n+1)` -/
def P2177027776403650373.Spec : Prop :=
  ∀ n, P2177027776403650373.a n = (A059479 (n + 1) : ℚ)

end A059479

/-! ## A059479.P16168666011184172596

`((n+1)*(A057918(n+1)+1))²`
-/

namespace A059479.P16168666011184172596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A057918 (n + 1) + 1)) ^ 2

end

end A059479.P16168666011184172596

namespace A059479

/-- `((n+1)*(A057918(n+1)+1))²` -/
def P16168666011184172596.Spec : Prop :=
  ∀ n, P16168666011184172596.a n = A059479 (n + 1)

theorem P16168666011184172596.correct : P16168666011184172596.Spec := by
  intro n
  simp only [A059479, Nat.add_sub_cancel, A059479.P16168666011184172596.a, A059479.P16928363870094844603.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A057918, A057918.P8779601029509101892.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059479

/-! ## A059479.P16490108823870755188

`((n+1)*A337101(2*(n+1)))²`
-/

namespace A059479.P16490108823870755188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A337101 (2 * (n + 1))) ^ 2

end

end A059479.P16490108823870755188

namespace A059479

/-- `((n+1)*A337101(2*(n+1)))²` -/
def P16490108823870755188.Spec : Prop :=
  ∀ n, P16490108823870755188.a n = A059479 (n + 1)

end A059479

/-! ## A059479.P16194623820436063337

`A000290(n+1)*A008833(n+1)`
-/

namespace A059479.P16194623820436063337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) * A008833 (n + 1)

end

end A059479.P16194623820436063337

namespace A059479

/-- `A000290(n+1)*A008833(n+1)` -/
def P16194623820436063337.Spec : Prop :=
  ∀ n, P16194623820436063337.a n = A059479 (n + 1)

theorem P16194623820436063337.correct : P16194623820436063337.Spec := by
  intro n
  simp only [A059479, Nat.add_sub_cancel, A059479.P16194623820436063337.a, A059479.P16928363870094844603.a, A000290, A000290.P12206242496348924484.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059479

/-! ## A059479.P14026919058301533075

`A102631(n+1)*A356191(n+1)`
-/

namespace A059479.P14026919058301533075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1) * A356191 (n + 1)

end

end A059479.P14026919058301533075

namespace A059479

/-- `A102631(n+1)*A356191(n+1)` -/
def P14026919058301533075.Spec : Prop :=
  ∀ n, P14026919058301533075.a n = A059479 (n + 1)

end A059479

/-! ## A059479.P16072889253432919081

`A189393(n+1)/A327171(n+1)`
-/

namespace A059479.P16072889253432919081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) : ℚ) / (A327171 (n + 1) : ℚ)

end

end A059479.P16072889253432919081

namespace A059479

/-- `A189393(n+1)/A327171(n+1)` -/
def P16072889253432919081.Spec : Prop :=
  ∀ n, P16072889253432919081.a n = (A059479 (n + 1) : ℚ)

end A059479

/-! ## A059479.P2324426736521600872

`(A003557(n+1)*A355261(n+1))²`
-/

namespace A059479.P2324426736521600872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A355261 (n + 1)) ^ 2

end

end A059479.P2324426736521600872

namespace A059479

/-- `(A003557(n+1)*A355261(n+1))²` -/
def P2324426736521600872.Spec : Prop :=
  ∀ n, P2324426736521600872.a n = A059479 (n + 1)

end A059479

/-! ## A059479.P16127925506526214965

`A008833(n+1)/(1/A000027(n+1))²`
-/

namespace A059479.P16127925506526214965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) : ℚ) / (1 / (A000027 (n + 1) : ℚ)) ^ 2

end

end A059479.P16127925506526214965

namespace A059479

/-- `A008833(n+1)/(1/A000027(n+1))²` -/
def P16127925506526214965.Spec : Prop :=
  ∀ n, P16127925506526214965.a n = (A059479 (n + 1) : ℚ)

end A059479

/-! ## A059479.P3579279817224990067

`(A000203(n+1)-A326053(n+1))*(n+1)²`
-/

namespace A059479.P3579279817224990067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A326053 (n + 1)) * ((n + 1) ^ 2 : ℤ)

end

end A059479.P3579279817224990067

namespace A059479

/-- `(A000203(n+1)-A326053(n+1))*(n+1)²` -/
def P3579279817224990067.Spec : Prop :=
  ∀ n, P3579279817224990067.a n = A059479 (n + 1)

theorem P3579279817224990067.correct : P3579279817224990067.Spec := by
  intro n
  simp only [A059479, Nat.add_sub_cancel, A059479.P3579279817224990067.a, A059479.P16928363870094844603.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A326053, A326053.P16383788461503311404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059479

/-! ## A059479.P15776949969436729604

`(n+1)²*A102631(n+1)/A350390(n+1)`
-/

namespace A059479.P15776949969436729604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * A102631 (n + 1) : ℚ) / (A350390 (n + 1) : ℚ)

end

end A059479.P15776949969436729604

namespace A059479

/-- `(n+1)²*A102631(n+1)/A350390(n+1)` -/
def P15776949969436729604.Spec : Prop :=
  ∀ n, P15776949969436729604.a n = (A059479 (n + 1) : ℚ)

end A059479

/-! ## A059479.P3200824542274126626

`A102631(n+1)*A102631(A355261(n+1))`
-/

namespace A059479.P3200824542274126626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1) * A102631 (A355261 (n + 1)).toNat

end

end A059479.P3200824542274126626

namespace A059479

/-- `A102631(n+1)*A102631(A355261(n+1))` -/
def P3200824542274126626.Spec : Prop :=
  ∀ n, P3200824542274126626.a n = A059479 (n + 1)

end A059479

/-! ## A059479.P9222632561197079815

`A053143(A003557(n+1))²*A053143(n+1)`
-/

namespace A059479.P9222632561197079815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A003557 (n + 1)).toNat ^ 2 * A053143 (n + 1)

end

end A059479.P9222632561197079815

namespace A059479

/-- `A053143(A003557(n+1))²*A053143(n+1)` -/
def P9222632561197079815.Spec : Prop :=
  ∀ n, P9222632561197079815.a n = A059479 (n + 1)

end A059479

/-! ## A059479.P15403200198812909171

`A008833(n+1)+A005563(n)*A008833(n+1)`
-/

namespace A059479.P15403200198812909171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) + A005563 n * A008833 (n + 1)

end

end A059479.P15403200198812909171

namespace A059479

/-- `A008833(n+1)+A005563(n)*A008833(n+1)` -/
def P15403200198812909171.Spec : Prop :=
  ∀ n, P15403200198812909171.a n = A059479 (n + 1)

theorem P15403200198812909171.correct : P15403200198812909171.Spec := by
  intro n
  simp only [A059479, Nat.add_sub_cancel, A059479.P15403200198812909171.a, A059479.P16928363870094844603.a, A005563, A005563.P13300161655551567421.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059479

/-! ## A059479.P8583691915310542229

`(A019554(A003557(n+1))²*A019554(n+1))²`
-/

namespace A059479.P8583691915310542229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A019554 (A003557 (n + 1)).toNat ^ 2 * A019554 (n + 1)) ^ 2

end

end A059479.P8583691915310542229

namespace A059479

/-- `(A019554(A003557(n+1))²*A019554(n+1))²` -/
def P8583691915310542229.Spec : Prop :=
  ∀ n, P8583691915310542229.a n = A059479 (n + 1)

end A059479

/-! ## A059479.P2696857222736187694

`A008833(n+1)*A008833(n+1)*A053143(n+1)`
-/

namespace A059479.P2696857222736187694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A008833 (n + 1) * A053143 (n + 1)

end

end A059479.P2696857222736187694

namespace A059479

/-- `A008833(n+1)*A008833(n+1)*A053143(n+1)` -/
def P2696857222736187694.Spec : Prop :=
  ∀ n, P2696857222736187694.a n = A059479 (n + 1)

end A059479

/-!
# A059480: a(0) = a(1) = 1; a(n) = a(n-1) + (n+1)*a(n-2).

The programs for A059480, the canonical program `A059480.P7087230362654775916` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059480 has offset 0).

The definition of A059480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n+1)*a(n-2)` (program `A059480.P7087230362654775916`, by `A059480.P7087230362654775916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059480.P7087230362654775916

`a(n-1)+(n+1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059480

/-- `a(n-1)+(n+1)*a(n-2)` -/
def P7087230362654775916.Spec : Prop :=
  ∀ n, (P7087230362654775916.a n : ℤ) = A059480 n

theorem P7087230362654775916.correct : P7087230362654775916.Spec := by
  intro n
  simp only [A059480]

end A059480

/-! ## A059480.P16274812472314060222

`∏[(n+1)/a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A059480.P16274812472314060222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059480.P16274812472314060222

namespace A059480

/-- `∏[(n+1)/a(n-1)+1]` -/
def P16274812472314060222.Spec : Prop :=
  ∀ n, P16274812472314060222.a n = (A059480 n : ℚ)

end A059480

/-! ## A059480.P2383876487605983229

`a(n-1)+a(n-2)/(n+1)^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A059480.P2383876487605983229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A059480.P2383876487605983229

namespace A059480

/-- `a(n-1)+a(n-2)/(n+1)^(-1)` -/
def P2383876487605983229.Spec : Prop :=
  ∀ n, P2383876487605983229.a n = (A059480 n : ℚ)

end A059480

/-! ## A059480.P10919221281179886555

`A000932(n+1)-A291856(n+2)`
-/

namespace A059480.P10919221281179886555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000932 (n + 1) - A291856 (n + 2)

end

end A059480.P10919221281179886555

namespace A059480

/-- `A000932(n+1)-A291856(n+2)` -/
def P10919221281179886555.Spec : Prop :=
  ∀ n, P10919221281179886555.a n = A059480 n

end A059480

/-! ## A059480.P17927891400574450840

`A186738(n+2)-A185308(n+1)`
-/

namespace A059480.P17927891400574450840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186738 (n + 2) - A185308 (n + 1)

end

end A059480.P17927891400574450840

namespace A059480

/-- `A186738(n+2)-A185308(n+1)` -/
def P17927891400574450840.Spec : Prop :=
  ∀ n, P17927891400574450840.a n = A059480 n

end A059480

/-! ## A059480.P4025249117281680246

`A000932(n+1)/A225436(n+1)*A225435(n+1)`
-/

namespace A059480.P4025249117281680246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000932 (n + 1) : ℚ) / (A225436 (n + 1) : ℚ) * (A225435 (n + 1) : ℚ)

end

end A059480.P4025249117281680246

namespace A059480

/-- `A000932(n+1)/A225436(n+1)*A225435(n+1)` -/
def P4025249117281680246.Spec : Prop :=
  ∀ n, P4025249117281680246.a n = (A059480 n : ℚ)

end A059480

/-! ## A059480.P225861213584853423

`A070895(A340266(n+1))`
-/

namespace A059480.P225861213584853423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (A340266 (n + 1)).toNat

end

end A059480.P225861213584853423

namespace A059480

/-- `A070895(A340266(n+1))` -/
def P225861213584853423.Spec : Prop :=
  ∀ n, P225861213584853423.a n = A059480 n

end A059480

/-! ## A059480.P10471645646525301690

`A000085(n+2)-A000932(n+1)`
-/

namespace A059480.P10471645646525301690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 2) - A000932 (n + 1)

end

end A059480.P10471645646525301690

namespace A059480

/-- `A000085(n+2)-A000932(n+1)` -/
def P10471645646525301690.Spec : Prop :=
  ∀ n, P10471645646525301690.a n = A059480 n

end A059480

/-! ## A059480.P15851635704819490925

`2*A001475(n+1)-A000932(n+1)`
-/

namespace A059480.P15851635704819490925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001475 (n + 1) - A000932 (n + 1)

end

end A059480.P15851635704819490925

namespace A059480

/-- `2*A001475(n+1)-A000932(n+1)` -/
def P15851635704819490925.Spec : Prop :=
  ∀ n, P15851635704819490925.a n = A059480 n

end A059480

/-! ## A059480.P10291344895664328301

`A173004(∑[n+2])`
-/

namespace A059480.P10291344895664328301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173004 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059480.P10291344895664328301

namespace A059480

/-- `A173004(∑[n+2])` -/
def P10291344895664328301.Spec : Prop :=
  ∀ n, P10291344895664328301.a n = A059480 n

end A059480

/-!
# A059481: Triangle read by rows. T(n, k) = binomial(n+k-1, k) for 0 <= k <= n.

The programs for A059481, the canonical program `A059481.P9969934564956536567` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059481 has offset 0).

The definition of A059481 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027555, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059481.P9969934564956536567

`abs(A027555(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059481

/-- `abs(A027555(n))` -/
def P9969934564956536567.Spec : Prop :=
  ∀ n, P9969934564956536567.a n = A059481 n

theorem P9969934564956536567.correct : P9969934564956536567.Spec := by
  intro n
  simp only [A059481]

end A059481

/-! ## A059481.P15758641964760941890

`gcd(A000038(n), A027555(n))`
-/

namespace A059481.P15758641964760941890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A027555 n)

end

end A059481.P15758641964760941890

namespace A059481

/-- `gcd(A000038(n), A027555(n))` -/
def P15758641964760941890.Spec : Prop :=
  ∀ n, (P15758641964760941890.a n : ℤ) = A059481 n

end A059481

/-! ## A059481.P16081906547971660094

`lcm(A020985(n), A027555(n))`
-/

namespace A059481.P16081906547971660094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A027555 n)

end

end A059481.P16081906547971660094

namespace A059481

/-- `lcm(A020985(n), A027555(n))` -/
def P16081906547971660094.Spec : Prop :=
  ∀ n, (P16081906547971660094.a n : ℤ) = A059481 n

end A059481

/-! ## A059481.P8172710747032712252

`A100100(A061579(n))`
-/

namespace A059481.P8172710747032712252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (A061579 n).toNat

end

end A059481.P8172710747032712252

namespace A059481

/-- `A100100(A061579(n))` -/
def P8172710747032712252.Spec : Prop :=
  ∀ n, P8172710747032712252.a n = A059481 n

end A059481

/-! ## A059481.P18243668056401101210

`A100100(A093995(n+1)-(n+1))`
-/

namespace A059481.P18243668056401101210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A059481.P18243668056401101210

namespace A059481

/-- `A100100(A093995(n+1)-(n+1))` -/
def P18243668056401101210.Spec : Prop :=
  ∀ n, P18243668056401101210.a n = A059481 n

end A059481

/-! ## A059481.P4783924724266454663

`C(A134478(n)-1, A002262(n))`
-/

namespace A059481.P4783924724266454663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n - 1).toNat (A002262 n).toNat

end

end A059481.P4783924724266454663

namespace A059481

/-- `C(A134478(n)-1, A002262(n))` -/
def P4783924724266454663.Spec : Prop :=
  ∀ n, (P4783924724266454663.a n : ℤ) = A059481 n

end A059481

/-! ## A059481.P11247951667048948027

`A071919(A245300(n))`
-/

namespace A059481.P11247951667048948027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A245300 n).toNat

end

end A059481.P11247951667048948027

namespace A059481

/-- `A071919(A245300(n))` -/
def P11247951667048948027.Spec : Prop :=
  ∀ n, P11247951667048948027.a n = A059481 n

end A059481

/-! ## A059481.P10948036839085410823

`A097805(A245300(n)+A025581(n))`
-/

namespace A059481.P10948036839085410823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A245300 n + A025581 n).toNat

end

end A059481.P10948036839085410823

namespace A059481

/-- `A097805(A245300(n)+A025581(n))` -/
def P10948036839085410823.Spec : Prop :=
  ∀ n, P10948036839085410823.a n = A059481 n

end A059481

/-! ## A059481.P15830401531410282978

`A007318(A245300(n)-A003056(A245300(n)))`
-/

namespace A059481.P15830401531410282978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A245300 n - A003056 (A245300 n).toNat).toNat

end

end A059481.P15830401531410282978

namespace A059481

/-- `A007318(A245300(n)-A003056(A245300(n)))` -/
def P15830401531410282978.Spec : Prop :=
  ∀ n, P15830401531410282978.a n = A059481 n

end A059481

/-! ## A059481.P903311878780582954

`A124320(n)/A233543(n)`
-/

namespace A059481.P903311878780582954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124320 n : ℚ) / (A233543 n : ℚ)

end

end A059481.P903311878780582954

namespace A059481

/-- `A124320(n)/A233543(n)` -/
def P903311878780582954.Spec : Prop :=
  ∀ n, P903311878780582954.a n = (A059481 n : ℚ)

end A059481

/-! ## A059481.P15405626117950969346

`A370706(n)/A008279(n)`
-/

namespace A059481.P15405626117950969346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370706 n : ℚ) / (A008279 n : ℚ)

end

end A059481.P15405626117950969346

namespace A059481

/-- `A370706(n)/A008279(n)` -/
def P15405626117950969346.Spec : Prop :=
  ∀ n, P15405626117950969346.a n = (A059481 n : ℚ)

end A059481

/-! ## A059481.P1207161946078707602

`A123160(n)/A007318(n)`
-/

namespace A059481.P1207161946078707602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123160 n : ℚ) / (A007318 n : ℚ)

end

end A059481.P1207161946078707602

namespace A059481

/-- `A123160(n)/A007318(n)` -/
def P1207161946078707602.Spec : Prop :=
  ∀ n, P1207161946078707602.a n = (A059481 n : ℚ)

end A059481

/-! ## A059481.P3058562667717443102

`A178300(n+1)/A178301(n)*A123160(n)`
-/

namespace A059481.P3058562667717443102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178300 (n + 1) : ℚ) / (A178301 n : ℚ) * (A123160 n : ℚ)

end

end A059481.P3058562667717443102

namespace A059481

/-- `A178300(n+1)/A178301(n)*A123160(n)` -/
def P3058562667717443102.Spec : Prop :=
  ∀ n, P3058562667717443102.a n = (A059481 n : ℚ)

end A059481

/-! ## A059481.P9734474837437518208

`A370707(n)/A371767(n)`
-/

namespace A059481.P9734474837437518208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370707 n : ℚ) / (A371767 n : ℚ)

end

end A059481.P9734474837437518208

namespace A059481

/-- `A370707(n)/A371767(n)` -/
def P9734474837437518208.Spec : Prop :=
  ∀ n, P9734474837437518208.a n = (A059481 n : ℚ)

end A059481

/-!
# A059482: a(0)=1, a(n) = a(n-1) + 8*10^(n-1).

The programs for A059482, the canonical program `A059482.P3144517274054644298` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059482 has offset 0).

The definition of A059482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059482.P3144517274054644298

`10*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059482

/-- `10*a(n-1)-1` -/
def P3144517274054644298.Spec : Prop :=
  ∀ n, P3144517274054644298.a n = A059482 n

theorem P3144517274054644298.correct : P3144517274054644298.Spec := by
  intro n
  simp only [A059482]

end A059482

/-! ## A059482.P17977180823180363999

`a(n-1)+8*10^(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059482.P17977180823180363999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 8 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A059482.P17977180823180363999

namespace A059482

/-- `a(n-1)+8*10^(n-1)` -/
def P17977180823180363999.Spec : Prop :=
  ∀ n, P17977180823180363999.a n = (A059482 n : ℚ)

end A059482

/-! ## A059482.P3777438780237099867

`A002282(n)+1`
-/

namespace A059482.P3777438780237099867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n + 1

end

end A059482.P3777438780237099867

namespace A059482

/-- `A002282(n)+1` -/
def P3777438780237099867.Spec : Prop :=
  ∀ n, P3777438780237099867.a n = A059482 n

end A059482

/-! ## A059482.P17307920623371014834

`(8*10^n+1)/9`
-/

namespace A059482.P17307920623371014834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * 10 ^ n + 1 : ℚ) / 9

end

end A059482.P17307920623371014834

namespace A059482

/-- `(8*10^n+1)/9` -/
def P17307920623371014834.Spec : Prop :=
  ∀ n, P17307920623371014834.a n = (A059482 n : ℚ)

theorem P17307920623371014834.correct : P17307920623371014834.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A059482, Nat.add_sub_cancel, A059482.P17307920623371014834.a, A059482.P3144517274054644298.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A059482, Nat.add_sub_cancel, A059482.P17307920623371014834.a, A059482.P3144517274054644298.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059482

/-! ## A059482.P9527984146878402725

`ogf((1-2x)/(1-11x+10x^2))`
-/

namespace A059482.P9527984146878402725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -11, 10] n

end

end A059482.P9527984146878402725

namespace A059482

/-- `ogf((1-2x)/(1-11x+10x^2))` -/
def P9527984146878402725.Spec : Prop :=
  ∀ n, P9527984146878402725.a n = A059482 n

end A059482

/-! ## A059482.P18197258023478948562

`lcm(10, a(n-1))-1` with `a(0)=1`
-/

namespace A059482.P18197258023478948562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - 1

end

end A059482.P18197258023478948562

namespace A059482

/-- `lcm(10, a(n-1))-1` -/
def P18197258023478948562.Spec : Prop :=
  ∀ n, P18197258023478948562.a n = A059482 n

end A059482

/-! ## A059482.P8478349524411672023

`lcm(8, floor(10^n/9))+1`
-/

namespace A059482.P8478349524411672023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 ⌊(10 ^ n : ℚ) / 9⌋ + 1

end

end A059482.P8478349524411672023

namespace A059482

/-- `lcm(8, floor(10^n/9))+1` -/
def P8478349524411672023.Spec : Prop :=
  ∀ n, (P8478349524411672023.a n : ℤ) = A059482 n

end A059482

/-! ## A059482.P13125918209354385808

`or(1, floor(8/9*10^n))`
-/

namespace A059482.P13125918209354385808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(8 : ℚ) / 9 * (10 ^ n : ℚ)⌋

end

end A059482.P13125918209354385808

namespace A059482

/-- `or(1, floor(8/9*10^n))` -/
def P13125918209354385808.Spec : Prop :=
  ∀ n, P13125918209354385808.a n = A059482 n

end A059482

/-! ## A059482.P4900850756323879297

`xor(1, floor(8/9*10^n))`
-/

namespace A059482.P4900850756323879297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(8 : ℚ) / 9 * (10 ^ n : ℚ)⌋

end

end A059482.P4900850756323879297

namespace A059482

/-- `xor(1, floor(8/9*10^n))` -/
def P4900850756323879297.Spec : Prop :=
  ∀ n, P4900850756323879297.a n = A059482 n

end A059482

/-! ## A059482.P1630709270769078601

`∑[A346178(n)]`
-/

namespace A059482.P1630709270769078601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059482.P1630709270769078601

namespace A059482

/-- `∑[A346178(n)]` -/
def P1630709270769078601.Spec : Prop :=
  ∀ n, P1630709270769078601.a n = A059482 n

end A059482

/-! ## A059482.P5956061820747260084

`A328333(2*n)`
-/

namespace A059482.P5956061820747260084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328333 (2 * n)

end

end A059482.P5956061820747260084

namespace A059482

/-- `A328333(2*n)` -/
def P5956061820747260084.Spec : Prop :=
  ∀ n, P5956061820747260084.a n = A059482 n

end A059482

/-! ## A059482.P16235552511752607586

`2*A002278(n)+1`
-/

namespace A059482.P16235552511752607586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002278 n + 1

end

end A059482.P16235552511752607586

namespace A059482

/-- `2*A002278(n)+1` -/
def P16235552511752607586.Spec : Prop :=
  ∀ n, P16235552511752607586.a n = A059482 n

end A059482

/-! ## A059482.P8557061652363776653

`2*A093140(n)-1`
-/

namespace A059482.P8557061652363776653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093140 n - 1

end

end A059482.P8557061652363776653

namespace A059482

/-- `2*A093140(n)-1` -/
def P8557061652363776653.Spec : Prop :=
  ∀ n, P8557061652363776653.a n = A059482 n

end A059482

/-! ## A059482.P7817757683772016945

`4*A002276(n)+1`
-/

namespace A059482.P7817757683772016945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002276 n + 1

end

end A059482.P7817757683772016945

namespace A059482

/-- `4*A002276(n)+1` -/
def P7817757683772016945.Spec : Prop :=
  ∀ n, P7817757683772016945.a n = A059482 n

end A059482

/-! ## A059482.P2284647539206699251

`4*A093135(n)-3`
-/

namespace A059482.P2284647539206699251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A093135 n - 3

end

end A059482.P2284647539206699251

namespace A059482

/-- `4*A093135(n)-3` -/
def P2284647539206699251.Spec : Prop :=
  ∀ n, P2284647539206699251.a n = A059482 n

end A059482

/-! ## A059482.P1945254333905728519

`8*A002275(n)+1`
-/

namespace A059482.P1945254333905728519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002275 n + 1

end

end A059482.P1945254333905728519

namespace A059482

/-- `8*A002275(n)+1` -/
def P1945254333905728519.Spec : Prop :=
  ∀ n, P1945254333905728519.a n = A059482 n

end A059482

/-! ## A059482.P6789541513503775532

`∑[2*A093141(n)]-1`
-/

namespace A059482.P6789541513503775532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A059482.P6789541513503775532

namespace A059482

/-- `∑[2*A093141(n)]-1` -/
def P6789541513503775532.Spec : Prop :=
  ∀ n, P6789541513503775532.a n = A059482 n

end A059482

/-! ## A059482.P14936537033423469519

`A047855(n)+A002281(n)`
-/

namespace A059482.P14936537033423469519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + A002281 n

end

end A059482.P14936537033423469519

namespace A059482

/-- `A047855(n)+A002281(n)` -/
def P14936537033423469519.Spec : Prop :=
  ∀ n, P14936537033423469519.a n = A059482 n

end A059482

/-! ## A059482.P7663586050189637715

`A093137(n)+A002279(n)`
-/

namespace A059482.P7663586050189637715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n + A002279 n

end

end A059482.P7663586050189637715

namespace A059482

/-- `A093137(n)+A002279(n)` -/
def P7663586050189637715.Spec : Prop :=
  ∀ n, P7663586050189637715.a n = A059482 n

end A059482

/-! ## A059482.P773260707358369656

`A093142(n)+A002277(n)`
-/

namespace A059482.P773260707358369656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093142 n + A002277 n

end

end A059482.P773260707358369656

namespace A059482

/-- `A093142(n)+A002277(n)` -/
def P773260707358369656.Spec : Prop :=
  ∀ n, P773260707358369656.a n = A059482 n

end A059482

/-!
# A059483: Triangle T(n,k) = number of fixed 2 X n polyominoes with k cells = coefficient of x^n*y^k in (1+x*y)/(1-x*y-x*y^2-x^2*y^3)-1, read by rows in order 00, 10, 01, 20, 11, 02, ...

The programs for A059483, there is no canonical definition to state claims against.
-/

/-! ## A059483.P7717914145982474486

`A064821(n+1)%A054429(A059484(n)+1)`
-/

namespace A059483.P7717914145982474486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064821 (n + 1)) (A054429 (A059484 n + 1).toNat)

end

end A059483.P7717914145982474486

/-! ## A059483.P12558438311438040906

`and(A000594(n+1), A069010(A062917(n+1)))`
-/

namespace A059483.P12558438311438040906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000594 (n + 1)) (A069010 (A062917 (n + 1)).toNat)

end

end A059483.P12558438311438040906

/-! ## A059483.P6595307924767441029

`and(A069010(A062917(n+1)), A092877(n+1))`
-/

namespace A059483.P6595307924767441029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069010 (A062917 (n + 1)).toNat) (A092877 (n + 1))

end

end A059483.P6595307924767441029

/-!
# A059484: Triangle T(n,k) = coefficient of x^n*y^k in 1/(1-x*y-x*y^2-x^2*y^3), read by rows in order 00, 10, 01, 20, 11, 02, ...

The programs for A059484, there is no canonical definition to state claims against.
-/

/-! ## A059484.P11853995776157378968

`C(A090379(n+2), A138117(2*(n+1))-2)`
-/

namespace A059484.P11853995776157378968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090379 (n + 2)).toNat (A138117 (2 * (n + 1)) - 2).toNat

end

end A059484.P11853995776157378968

/-! ## A059484.P4733059175354811223

`A000045(A059483(n))^A053288(n+1)`
-/

namespace A059484.P4733059175354811223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A059483 n).toNat : ℚ) ^ (A053288 (n + 1) : ℤ)

end

end A059484.P4733059175354811223

/-! ## A059484.P10491153892636640350

`C(A090379(n+2), A001590(A138117(2*(n+1))))`
-/

namespace A059484.P10491153892636640350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090379 (n + 2)).toNat (A001590 (A138117 (2 * (n + 1))).toNat).toNat

end

end A059484.P10491153892636640350

/-! ## A059484.P14764351716563531678

`A102354(lcm(A028310(n), A078817(n)))`
-/

namespace A059484.P14764351716563531678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (Int.lcm (A028310 n) (A078817 n))

end

end A059484.P14764351716563531678

/-! ## A059484.P14664146832933941570

`C(A000003(n+1), A001223(A052347(n+1)))`
-/

namespace A059484.P14664146832933941570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000003 (n + 1)).toNat (A001223 (A052347 (n + 1)).toNat).toNat

end

end A059484.P14664146832933941570

/-!
# A059485: Highest prime factor is greater than 3.

The programs for A059485, the canonical program `A059485.P2045085870398299258` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059485 has offset 1).

The definition of A059485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059485.P3928853599510756977

`lt[1, floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3)]+1`
-/

namespace A059485.P3928853599510756977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A059485.P3928853599510756977

namespace A059485

/-- `lt[1, floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3)]+1` -/
def P3928853599510756977.Spec : Prop :=
  ∀ n, (P3928853599510756977.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P4280622717025847336

`lt[1, A126760(n)]`
-/

namespace A059485.P4280622717025847336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059485.P4280622717025847336

namespace A059485

/-- `lt[1, A126760(n)]` -/
def P4280622717025847336.Spec : Prop :=
  ∀ n, (P4280622717025847336.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P6620576403886059950

`comp[A069353(n+1)]+1`
-/

namespace A059485.P6620576403886059950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059485.P6620576403886059950

namespace A059485

/-- `comp[A069353(n+1)]+1` -/
def P6620576403886059950.Spec : Prop :=
  ∀ n, (P6620576403886059950.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P8232883854794230277

`comp[A036561(n)-1]+1`
-/

namespace A059485.P8232883854794230277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059485.P8232883854794230277

namespace A059485

/-- `comp[A036561(n)-1]+1` -/
def P8232883854794230277.Spec : Prop :=
  ∀ n, (P8232883854794230277.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P6271659106422991849

`comp[A175840(n)-1]+1`
-/

namespace A059485.P6271659106422991849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059485.P6271659106422991849

namespace A059485

/-- `comp[A175840(n)-1]+1` -/
def P6271659106422991849.Spec : Prop :=
  ∀ n, (P6271659106422991849.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P8733409847974574683

`comp[A247936(n)-1]+1`
-/

namespace A059485.P8733409847974574683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247936 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059485.P8733409847974574683

namespace A059485

/-- `comp[A247936(n)-1]+1` -/
def P8733409847974574683.Spec : Prop :=
  ∀ n, (P8733409847974574683.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P2045085870398299258

`lt[1, A035218(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059485

/-- `lt[1, A035218(n+1)]+1` -/
def P2045085870398299258.Spec : Prop :=
  ∀ n, (P2045085870398299258.a n : ℤ) = A059485 (n + 1)

theorem P2045085870398299258.correct : P2045085870398299258.Spec := by
  intro n
  simp only [A059485, Nat.add_sub_cancel]

end A059485

/-! ## A059485.P11358839487435537761

`lt[2, A061395(n+1)]+1`
-/

namespace A059485.P11358839487435537761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059485.P11358839487435537761

namespace A059485

/-- `lt[2, A061395(n+1)]+1` -/
def P11358839487435537761.Spec : Prop :=
  ∀ n, (P11358839487435537761.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P14718005198448422604

`lt[2, A173557(n+1)]+1`
-/

namespace A059485.P14718005198448422604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059485.P14718005198448422604

namespace A059485

/-- `lt[2, A173557(n+1)]+1` -/
def P14718005198448422604.Spec : Prop :=
  ∀ n, (P14718005198448422604.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P4849319143568565954

`lt[2, A332899(n+1)]+1`
-/

namespace A059485.P4849319143568565954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059485.P4849319143568565954

namespace A059485

/-- `lt[2, A332899(n+1)]+1` -/
def P4849319143568565954.Spec : Prop :=
  ∀ n, (P4849319143568565954.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P5901668371803654684

`lt[2, A336395(n+1)]+1`
-/

namespace A059485.P5901668371803654684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059485.P5901668371803654684

namespace A059485

/-- `lt[2, A336395(n+1)]+1` -/
def P5901668371803654684.Spec : Prop :=
  ∀ n, (P5901668371803654684.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P10514879451440833191

`lt[3, A006530(n+1)]+1`
-/

namespace A059485.P10514879451440833191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059485.P10514879451440833191

namespace A059485

/-- `lt[3, A006530(n+1)]+1` -/
def P10514879451440833191.Spec : Prop :=
  ∀ n, (P10514879451440833191.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P15384311235980184082

`lt[3, A318884(n+1)]+1`
-/

namespace A059485.P15384311235980184082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059485.P15384311235980184082

namespace A059485

/-- `lt[3, A318884(n+1)]+1` -/
def P15384311235980184082.Spec : Prop :=
  ∀ n, (P15384311235980184082.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P4218750855483169964

`lt[A079065(n+1), n]+1`
-/

namespace A059485.P4218750855483169964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A059485.P4218750855483169964

namespace A059485

/-- `lt[A079065(n+1), n]+1` -/
def P4218750855483169964.Spec : Prop :=
  ∀ n, (P4218750855483169964.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P9976310684000697658

`∪[A069900(n+1), A064479(n)]`
-/

namespace A059485.P9976310684000697658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064479 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059485.P9976310684000697658

namespace A059485

/-- `∪[A069900(n+1), A064479(n)]` -/
def P9976310684000697658.Spec : Prop :=
  ∀ n, (P9976310684000697658.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P10310960334936152286

`∪[A081062(n+1), A064479(n)]`
-/

namespace A059485.P10310960334936152286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064479 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059485.P10310960334936152286

namespace A059485

/-- `∪[A081062(n+1), A064479(n)]` -/
def P10310960334936152286.Spec : Prop :=
  ∀ n, (P10310960334936152286.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P12262233250713134189

`∪[A251727(n+1), A064479(n)]`
-/

namespace A059485.P12262233250713134189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064479 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059485.P12262233250713134189

namespace A059485

/-- `∪[A251727(n+1), A064479(n)]` -/
def P12262233250713134189.Spec : Prop :=
  ∀ n, (P12262233250713134189.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P7150329291394183086

`∪[A330136(n+1), A064479(n)]`
-/

namespace A059485.P7150329291394183086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064479 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059485.P7150329291394183086

namespace A059485

/-- `∪[A330136(n+1), A064479(n)]` -/
def P7150329291394183086.Spec : Prop :=
  ∀ n, (P7150329291394183086.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P7841216175418278973

`∪[A081062(n+1), A111906(n+1)]`
-/

namespace A059485.P7841216175418278973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059485.P7841216175418278973

namespace A059485

/-- `∪[A081062(n+1), A111906(n+1)]` -/
def P7841216175418278973.Spec : Prop :=
  ∀ n, (P7841216175418278973.a n : ℤ) = A059485 (n + 1)

end A059485

/-! ## A059485.P11808998419709969931

`∪[A009003(n+1), A279622(n+1)]`
-/

namespace A059485.P11808998419709969931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059485.P11808998419709969931

namespace A059485

/-- `∪[A009003(n+1), A279622(n+1)]` -/
def P11808998419709969931.Spec : Prop :=
  ∀ n, (P11808998419709969931.a n : ℤ) = A059485 (n + 1)

end A059485

/-!
# A059486: 3-enumeration of 2n+1 X 2n+1 vertically symmetric alternating-sign matrices.

The programs for A059486, there is no canonical definition to state claims against.
-/

/-! ## A059486.P5288262229754156397

`A203434(Δ[n²])/3^n`
-/

namespace A059486.P5288262229754156397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203434 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (3 ^ n : ℚ)

end

end A059486.P5288262229754156397

/-! ## A059486.P1764929917143598978

`A227379(n)/Δ[A003462(n)]`
-/

namespace A059486.P1764929917143598978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227379 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A059486.P1764929917143598978

/-! ## A059486.P4882859019935950797

`A203432(2*n+1)/A108411(2*n)`
-/

namespace A059486.P4882859019935950797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203432 (2 * n + 1) : ℚ) / (A108411 (2 * n) : ℚ)

end

end A059486.P4882859019935950797

/-! ## A059486.P6561114046190138282

`A227379(n)/A013610(A000096(n))`
-/

namespace A059486.P6561114046190138282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227379 n : ℚ) / (A013610 (A000096 n).toNat : ℚ)

end

end A059486.P6561114046190138282

/-! ## A059486.P12388216037518177650

`A227379(n)/A003961(A000079(n))`
-/

namespace A059486.P12388216037518177650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227379 n : ℚ) / (A003961 (A000079 n).toNat : ℚ)

end

end A059486.P12388216037518177650

/-!
# A059487: 2-enumeration of 4n X 4n quarter-turn symmetric alternating-sign matrices.

The programs for A059487, there is no canonical definition to state claims against.
-/

/-! ## A059487.P8348918110080022283

`2^n²*A059490(n)`
-/

namespace A059487.P8348918110080022283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) * A059490 n

end

end A059487.P8348918110080022283

/-!
# A059488: Expansion of generating function A_{UU}^(2)(4n;2,1,1).

The programs for A059488, there is no canonical definition to state claims against.
-/

/-! ## A059488.P570814725508837304

`∏[A001448(n)/A088218(n)]`
-/

namespace A059488.P570814725508837304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001448 n : ℚ) / (A088218 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059488.P570814725508837304

/-! ## A059488.P3483941304043815015

`∏[A000984(2*n)/A088218(n)]`
-/

namespace A059488.P3483941304043815015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (2 * n) : ℚ) / (A088218 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059488.P3483941304043815015

/-! ## A059488.P15160305986774932639

`∏[A100320(2*n)/A000984(n)]`
-/

namespace A059488.P15160305986774932639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100320 (2 * n) : ℚ) / (A000984 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059488.P15160305986774932639

/-! ## A059488.P17084356014716219321

`∏[A126869(4*n)/A088218(n)]`
-/

namespace A059488.P17084356014716219321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126869 (4 * n) : ℚ) / (A088218 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059488.P17084356014716219321

/-! ## A059488.P2517719469506961240

`∏[A001448(n)]/A296590(n)`
-/

namespace A059488.P2517719469506961240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A296590 n : ℚ)

end

end A059488.P2517719469506961240

/-!
# A059489: Expansion of generating function A_{UU}^(2)(4n;1,1,1).

The programs for A059489, there is no canonical definition to state claims against.
-/

/-! ## A059489.P15940046622438616433

`A005157(2*n)`
-/

namespace A059489.P15940046622438616433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005157 (2 * n)

end

end A059489.P15940046622438616433

/-! ## A059489.P10149564963859245901

`record[A005157(A046666(n+2))]`
-/

namespace A059489.P10149564963859245901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005157 (A046666 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059489.P10149564963859245901

/-! ## A059489.P2317227890130178065

`A107445(n)/A005156(n)`
-/

namespace A059489.P2317227890130178065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107445 n : ℚ) / (A005156 n : ℚ)

end

end A059489.P2317227890130178065

/-! ## A059489.P9703900956238672524

`A049505(2*n)/A005130(2*n)`
-/

namespace A059489.P9703900956238672524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049505 (2 * n) : ℚ) / (A005130 (2 * n) : ℚ)

end

end A059489.P9703900956238672524

/-! ## A059489.P18132938175585218052

`A049505(2*n)/sqrt(A049503(2*n))`
-/

namespace A059489.P18132938175585218052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A049505 (2 * n) : ℝ) / Real.sqrt (A049503 (2 * n) : ℝ)

end

end A059489.P18132938175585218052

/-!
# A059490: Expansion of generating function A_{QT}^(1)(4n;2).

The programs for A059490, there is no canonical definition to state claims against.
-/

/-! ## A059490.P4987134870160958723

`∏[A002420(2*n)/A002420(n)]`
-/

namespace A059490.P4987134870160958723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002420 (2 * n) : ℚ) / (A002420 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059490.P4987134870160958723

/-! ## A059490.P9634378780353338990

`∏[A115140(2*n)/A115140(n)]`
-/

namespace A059490.P9634378780353338990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115140 (2 * n) : ℚ) / (A115140 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059490.P9634378780353338990

/-! ## A059490.P18121961995793632570

`∏[A120588(2*n)/A120588(n)]`
-/

namespace A059490.P18121961995793632570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (2 * n) : ℚ) / (A120588 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059490.P18121961995793632570

/-! ## A059490.P13559162384283431650

`∏[A000108(A004273(n))/A120588(n)]`
-/

namespace A059490.P13559162384283431650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (A004273 n).toNat : ℚ) / (A120588 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059490.P13559162384283431650

/-!
# A059491: Expansion of generating function A_{QT}^(1)(4n;3).

The programs for A059491, there is no canonical definition to state claims against.
-/

/-! ## A059491.P1797316299209384750

`3^(n*(n-1)/2)*A005130(n)`
-/

namespace A059491.P1797316299209384750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) * (A005130 n : ℝ)

end

end A059491.P1797316299209384750

/-! ## A059491.P11004980394813708359

`A203434(floor(acot(n)+n)+n)`
-/

namespace A059491.P11004980394813708359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203434 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A059491.P11004980394813708359

/-! ## A059491.P17382018353236093895

`A203434(A004273(n)+1)`
-/

namespace A059491.P17382018353236093895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203434 (A004273 n + 1).toNat

end

end A059491.P17382018353236093895

/-! ## A059491.P668918765472418951

`A203434(A028310(2*n))`
-/

namespace A059491.P668918765472418951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203434 (A028310 (2 * n)).toNat

end

end A059491.P668918765472418951

/-! ## A059491.P17606228844507680802

`A203434(A028310(n)+n)`
-/

namespace A059491.P17606228844507680802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203434 (A028310 n + (n : ℤ)).toNat

end

end A059491.P17606228844507680802

/-!
# A059492: Expansion of generating function A_{UO}^(1)(8n).

The programs for A059492, there is no canonical definition to state claims against.
-/

/-! ## A059492.P7410631364297005476

`A005156(n)²`
-/

namespace A059492.P7410631364297005476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005156 n ^ 2

end

end A059492.P7410631364297005476

/-! ## A059492.P15212572364778401947

`A005156(n)^A020639((n+1)*2^∑{e}[n+1, #])`
-/

namespace A059492.P15212572364778401947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005156 n : ℚ) ^ (A020639 ((n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A059492.P15212572364778401947

/-! ## A059492.P15347228780715827166

`A005156(n)^A006530(A011782(n))`
-/

namespace A059492.P15347228780715827166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005156 n : ℚ) ^ (A006530 (A011782 n).toNat : ℤ)

end

end A059492.P15347228780715827166

/-! ## A059492.P17707778699269753538

`A005156(n)^A020639(A010023(n))`
-/

namespace A059492.P17707778699269753538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005156 n : ℚ) ^ (A020639 (A010023 n).toNat : ℤ)

end

end A059492.P17707778699269753538

/-! ## A059492.P14484890823883692744

`(A005161(2*n+1)/A051255(n+1))²`
-/

namespace A059492.P14484890823883692744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005161 (2 * n + 1) : ℚ) / (A051255 (n + 1) : ℚ)) ^ 2

end

end A059492.P14484890823883692744

/-!
# A059494: For odd p such that 2^p-1 is a prime (A000043), write 2^p-1 = x^2+3*y^2; sequence gives values of x.

The programs for A059494, there is no canonical definition to state claims against.
-/

/-! ## A059494.P9128115938415813937

`lcm(2, p?[A241314(3*n)])`
-/

namespace A059494.P9128115938415813937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A059494.P9128115938415813937

/-!
# A059495: For odd p such that 2^p-1 is a prime (A000043), write 2^p-1 = x^2+3*y^2; sequence gives values of y.

The programs for A059495, there is no canonical definition to state claims against.
-/

/-! ## A059495.P13452412287176425638

`∏{p}[A128787(n), A163383(#)]`
-/

namespace A059495.P13452412287176425638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A163383 p

end

end A059495.P13452412287176425638

/-! ## A059495.P3366089284774964532

`A323580(∏{p}[A128787(n), #])`
-/

namespace A059495.P3366089284774964532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323580 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A059495.P3366089284774964532

/-!
# A059497: Primes omitted from A059496.

The programs for A059497, there is no canonical definition to state claims against.
-/

/-! ## A059497.P7887668416362610523

`p?[lt[15, A211355(2*n+3)]]`
-/

namespace A059497.P7887668416362610523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211355 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059497.P7887668416362610523

/-! ## A059497.P8215911376972960775

`p?[lt[23, A211353(2*n+3)]]`
-/

namespace A059497.P8215911376972960775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211353 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059497.P8215911376972960775

/-! ## A059497.P10085141120192977499

`p?[A335433(A116451(n))+36]`
-/

namespace A059497.P10085141120192977499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (A116451 n).toNat + 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059497.P10085141120192977499

/-! ## A059497.P7922703374424403924

`A000040(lt[A274513(n+1), A274491(n+2)])`
-/

namespace A059497.P7922703374424403924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A059497.P7922703374424403924

/-! ## A059497.P981338966794687346

`A126769(A077739(n+1)+7)`
-/

namespace A059497.P981338966794687346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126769 (A077739 (n + 1) + 7).toNat

end

end A059497.P981338966794687346

/-!
# A059498: a(1) = 2; a(n+1) is obtained by trying to change just one digit of a(n), starting with the least significant digit, until a new prime is reached. Take the lexicographically earliest sequence. Digits may be replaced by any larger digit.

The programs for A059498, there is no canonical definition to state claims against.
-/

/-! ## A059498.P3603723519201395586

`A061248(A029970(n+1)+1)`
-/

namespace A059498.P3603723519201395586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061248 (A029970 (n + 1) + 1).toNat

end

end A059498.P3603723519201395586

/-! ## A059498.P842356145663357316

`filter[A061248(n+1), A178788(#)]`
-/

namespace A059498.P842356145663357316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A059498.P842356145663357316

/-! ## A059498.P15104744071497034650

`filter[A061248(n+1), A196368(#)]`
-/

namespace A059498.P15104744071497034650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A059498.P15104744071497034650

/-! ## A059498.P6001959729182095224

`∩[A061248(n+1), A043091(n)]`
-/

namespace A059498.P6001959729182095224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059498.P6001959729182095224

/-! ## A059498.P3044680738648703019

`∩[A009993(n+1), A061248(n+1)]`
-/

namespace A059498.P3044680738648703019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059498.P3044680738648703019

/-!
# A059499: a(n) = |{m : multiplicative order of 2 mod m = n}|.

The programs for A059499, the canonical program `A059499.P462625843943646342` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059499 has offset 1).

The definition of A059499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059499.P462625843943646342

`∑{d}[n+1, A008683(#)*A046801((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059499

/-- `∑{d}[n+1, A008683(#)*A046801((n+1)/#)]` -/
def P462625843943646342.Spec : Prop :=
  ∀ n, P462625843943646342.a n = A059499 (n + 1)

theorem P462625843943646342.correct : P462625843943646342.Spec := by
  intro n
  simp only [A059499, Nat.add_sub_cancel]

end A059499

/-! ## A059499.P1700339792638009520

`A212957(∑[n+2])`
-/

namespace A059499.P1700339792638009520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059499.P1700339792638009520

namespace A059499

/-- `A212957(∑[n+2])` -/
def P1700339792638009520.Spec : Prop :=
  ∀ n, P1700339792638009520.a n = A059499 (n + 1)

end A059499

/-! ## A059499.P6052254310923360241

`or(char[1], A212957(A000096(n+1)))`
-/

namespace A059499.P6052254310923360241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212957 (A000096 (n + 1)).toNat)

end

end A059499.P6052254310923360241

namespace A059499

/-- `or(char[1], A212957(A000096(n+1)))` -/
def P6052254310923360241.Spec : Prop :=
  ∀ n, P6052254310923360241.a n = A059499 (n + 1)

end A059499

/-! ## A059499.P5568011423132925051

`A212957(A000096(n+1))%A002756(n)`
-/

namespace A059499.P5568011423132925051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (A000096 (n + 1)).toNat) (A002756 n)

end

end A059499.P5568011423132925051

namespace A059499

/-- `A212957(A000096(n+1))%A002756(n)` -/
def P5568011423132925051.Spec : Prop :=
  ∀ n, P5568011423132925051.a n = A059499 (n + 1)

end A059499

/-! ## A059499.P2330213724382666549

`A007318(C(n, 2))*A212957(A000096(n+1))`
-/

namespace A059499.P2330213724382666549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A212957 (A000096 (n + 1)).toNat

end

end A059499.P2330213724382666549

namespace A059499

/-- `A007318(C(n, 2))*A212957(A000096(n+1))` -/
def P2330213724382666549.Spec : Prop :=
  ∀ n, P2330213724382666549.a n = A059499 (n + 1)

end A059499

/-! ## A059499.P9105688506593317894

`A212957(A000096(n+1))+A008683(4*(n+1))`
-/

namespace A059499.P9105688506593317894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000096 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A059499.P9105688506593317894

namespace A059499

/-- `A212957(A000096(n+1))+A008683(4*(n+1))` -/
def P9105688506593317894.Spec : Prop :=
  ∀ n, P9105688506593317894.a n = A059499 (n + 1)

end A059499

/-! ## A059499.P11387371808993629214

`A212957(A000096(n+1))/A014963(A017137(n))`
-/

namespace A059499.P11387371808993629214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212957 (A000096 (n + 1)).toNat : ℚ) / (A014963 (A017137 n).toNat : ℚ)

end

end A059499.P11387371808993629214

namespace A059499

/-- `A212957(A000096(n+1))/A014963(A017137(n))` -/
def P11387371808993629214.Spec : Prop :=
  ∀ n, P11387371808993629214.a n = (A059499 (n + 1) : ℚ)

end A059499

/-! ## A059499.P14837597683085508626

`A007318(A000096(2*n))*A212957(A000096(n+1))`
-/

namespace A059499.P14837597683085508626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (2 * n)).toNat * A212957 (A000096 (n + 1)).toNat

end

end A059499.P14837597683085508626

namespace A059499

/-- `A007318(A000096(2*n))*A212957(A000096(n+1))` -/
def P14837597683085508626.Spec : Prop :=
  ∀ n, P14837597683085508626.a n = A059499 (n + 1)

end A059499

