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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A184800: Numbers k such that floor(k*s) is prime, where s = (3 + sqrt(3))/2.

The programs for A184800, the canonical program `A184800.P9287086856315659630` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184800 has offset 1).

The definition of A184800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184800.P14873107721546757488

`A026254(A184799(n+1))`
-/

namespace A184800.P14873107721546757488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (A184799 (n + 1)).toNat

end

end A184800.P14873107721546757488

namespace A184800

/-- `A026254(A184799(n+1))` -/
def P14873107721546757488.Spec : Prop :=
  ∀ n, P14873107721546757488.a n = A184800 (n + 1)

end A184800

/-! ## A184800.P17529388834453402312

`A026254(p?[A054406(n+1)])`
-/

namespace A184800.P17529388834453402312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184800.P17529388834453402312

namespace A184800

/-- `A026254(p?[A054406(n+1)])` -/
def P17529388834453402312.Spec : Prop :=
  ∀ n, P17529388834453402312.a n = A184800 (n + 1)

end A184800

/-! ## A184800.P9327040761879271011

`A195072(p?[A054406(n+1)])`
-/

namespace A184800.P9327040761879271011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184800.P9327040761879271011

namespace A184800

/-- `A195072(p?[A054406(n+1)])` -/
def P9327040761879271011.Spec : Prop :=
  ∀ n, P9327040761879271011.a n = A184800 (n + 1)

end A184800

/-! ## A184800.P14937639970664552815

`A195072(p?[A184799(n+1)])`
-/

namespace A184800.P14937639970664552815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184800.P14937639970664552815

namespace A184800

/-- `A195072(p?[A184799(n+1)])` -/
def P14937639970664552815.Spec : Prop :=
  ∀ n, P14937639970664552815.a n = A184800 (n + 1)

end A184800

/-! ## A184800.P5659702503170418780

`A026254(p?[record[A026255(n+1)]])`
-/

namespace A184800.P5659702503170418780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184800.P5659702503170418780

namespace A184800

/-- `A026254(p?[record[A026255(n+1)]])` -/
def P5659702503170418780.Spec : Prop :=
  ∀ n, P5659702503170418780.a n = A184800 (n + 1)

end A184800

/-! ## A184800.P9287086856315659630

`A183142(p?[A054406(n+1)]+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184800

/-- `A183142(p?[A054406(n+1)]+1)` -/
def P9287086856315659630.Spec : Prop :=
  ∀ n, P9287086856315659630.a n = A184800 (n + 1)

theorem P9287086856315659630.correct : P9287086856315659630.Spec := by
  intro n
  simp only [A184800, Nat.add_sub_cancel]

end A184800

/-! ## A184800.P16441860243362864734

`A195072(record[A006530(A054406(n+1))])`
-/

namespace A184800.P16441860243362864734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A054406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184800.P16441860243362864734

namespace A184800

/-- `A195072(record[A006530(A054406(n+1))])` -/
def P16441860243362864734.Spec : Prop :=
  ∀ n, P16441860243362864734.a n = A184800 (n + 1)

end A184800

/-! ## A184800.P14891732274763120734

`A195072(record[A014963(A054406(n+1))])`
-/

namespace A184800.P14891732274763120734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A054406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184800.P14891732274763120734

namespace A184800

/-- `A195072(record[A014963(A054406(n+1))])` -/
def P14891732274763120734.Spec : Prop :=
  ∀ n, P14891732274763120734.a n = A184800 (n + 1)

end A184800

/-! ## A184800.P2154294814288113659

`A195072(record[A020639(A054406(n+1))])`
-/

namespace A184800.P2154294814288113659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184800.P2154294814288113659

namespace A184800

/-- `A195072(record[A020639(A054406(n+1))])` -/
def P2154294814288113659.Spec : Prop :=
  ∀ n, P2154294814288113659.a n = A184800 (n + 1)

end A184800

/-! ## A184800.P16261592893909078796

`record[A014963(A054406(n+1))-A003511(n+1)]`
-/

namespace A184800.P16261592893909078796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A054406 (n + 1)).toNat - A003511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184800.P16261592893909078796

namespace A184800

/-- `record[A014963(A054406(n+1))-A003511(n+1)]` -/
def P16261592893909078796.Spec : Prop :=
  ∀ n, P16261592893909078796.a n = A184800 (n + 1)

end A184800

/-!
# A184801: Numbers m such that prime(m) is of the form floor(ks), where s=(3+sqrt(3))/2; complement of A184778.

The programs for A184801, there is no canonical definition to state claims against.
-/

/-! ## A184801.P10778310231693545983

`A000720(A184799(n+1))`
-/

namespace A184801.P10778310231693545983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184799 (n + 1)).toNat

end

end A184801.P10778310231693545983

/-! ## A184801.P8021083433044360831

`A000720(p?[A054406(n+1)])`
-/

namespace A184801.P8021083433044360831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184801.P8021083433044360831

/-! ## A184801.P10795436848118323077

`A058933(p?[A054406(n+1)])`
-/

namespace A184801.P10795436848118323077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184801.P10795436848118323077

/-! ## A184801.P4987823228587346406

`record[A061395(A054406(A052938(n)))]`
-/

namespace A184801.P4987823228587346406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A054406 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184801.P4987823228587346406

/-! ## A184801.P15003288933978130914

`A056239(p?[floor((n+1)/(sqrt(3)-1))+n+1])`
-/

namespace A184801.P15003288933978130914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌋ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184801.P15003288933978130914

/-! ## A184801.P10964955033907029010

`A230980(p?[floor((n+1)/(sqrt(3)-1))+n+1])`
-/

namespace A184801.P10964955033907029010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌋ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184801.P10964955033907029010

/-! ## A184801.P162596909209377135

`A003963(p?[A054406(n+1)])`
-/

namespace A184801.P162596909209377135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184801.P162596909209377135

/-! ## A184801.P17756345841491217536

`A026233(p?[A054406(n+1)])`
-/

namespace A184801.P17756345841491217536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184801.P17756345841491217536

/-! ## A184801.P15868888531847446404

`A026238(p?[A054406(n+1)])`
-/

namespace A184801.P15868888531847446404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184801.P15868888531847446404

/-! ## A184801.P601378411677230694

`A049084(p?[A054406(n+1)])`
-/

namespace A184801.P601378411677230694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184801.P601378411677230694

/-! ## A184801.P4554251171990883694

`A055396(p?[A054406(n+1)])`
-/

namespace A184801.P4554251171990883694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184801.P4554251171990883694

/-!
# A184802: Primes of the form floor(k*sqrt(5)).

The programs for A184802, the canonical program `A184802.P18356932569561372844` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184802 has offset 1).

The definition of A184802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184802.P18356932569561372844

`p?[floor(n*sqrt(5))]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184802

/-- `p?[floor(n*sqrt(5))]` -/
def P18356932569561372844.Spec : Prop :=
  ∀ n, P18356932569561372844.a n = A184802 (n + 1)

theorem P18356932569561372844.correct : P18356932569561372844.Spec := by
  intro n
  simp only [A184802, Nat.add_sub_cancel]

end A184802

/-! ## A184802.P6315764355209624103

`∏{d}[p?[floor(n*root(5, 2))], #]`
-/

namespace A184802.P6315764355209624103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A184802.P6315764355209624103

namespace A184802

/-- `∏{d}[p?[floor(n*root(5, 2))], #]` -/
def P6315764355209624103.Spec : Prop :=
  ∀ n, (P6315764355209624103.a n : ℤ) = A184802 (n + 1)

end A184802

/-! ## A184802.P4490872287905251368

`∑{p}[p?[floor(n*root(5, 2))], #]`
-/

namespace A184802.P4490872287905251368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A184802.P4490872287905251368

namespace A184802

/-- `∑{p}[p?[floor(n*root(5, 2))], #]` -/
def P4490872287905251368.Spec : Prop :=
  ∀ n, (P4490872287905251368.a n : ℤ) = A184802 (n + 1)

end A184802

/-! ## A184802.P13887022575468344489

`∏{p}[p?[floor(n*root(5, 2))], #]`
-/

namespace A184802.P13887022575468344489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A184802.P13887022575468344489

namespace A184802

/-- `∏{p}[p?[floor(n*root(5, 2))], #]` -/
def P13887022575468344489.Spec : Prop :=
  ∀ n, (P13887022575468344489.a n : ℤ) = A184802 (n + 1)

end A184802

/-! ## A184802.P12117245057785983239

`root(p?[floor(n*root(5, 2))], 2)²`
-/

namespace A184802.P12117245057785983239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A184802.P12117245057785983239

namespace A184802

/-- `root(p?[floor(n*root(5, 2))], 2)²` -/
def P12117245057785983239.Spec : Prop :=
  ∀ n, P12117245057785983239.a n = (A184802 (n + 1) : ℝ)

end A184802

/-! ## A184802.P13185019980865635346

`or(n%2, p?[floor(n*root(5, 2))])`
-/

namespace A184802.P13185019980865635346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A184802.P13185019980865635346

namespace A184802

/-- `or(n%2, p?[floor(n*root(5, 2))])` -/
def P13185019980865635346.Spec : Prop :=
  ∀ n, P13185019980865635346.a n = A184802 (n + 1)

end A184802

/-! ## A184802.P14932491564715475245

`p?[floor(n*root(5, 2))]%(43*(n+1))`
-/

namespace A184802.P14932491564715475245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (43 * (n + 1) : ℤ)

end

end A184802.P14932491564715475245

namespace A184802

/-- `p?[floor(n*root(5, 2))]%(43*(n+1))` -/
def P14932491564715475245.Spec : Prop :=
  ∀ n, P14932491564715475245.a n = A184802 (n + 1)

end A184802

/-! ## A184802.P12917811347356242615

`A000040(A184804(n+1))`
-/

namespace A184802.P12917811347356242615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184804 (n + 1)).toNat

end

end A184802.P12917811347356242615

namespace A184802

/-- `A000040(A184804(n+1))` -/
def P12917811347356242615.Spec : Prop :=
  ∀ n, P12917811347356242615.a n = A184802 (n + 1)

end A184802

/-! ## A184802.P9136778029825805672

`record[A020639(floor((n+1)*sqrt(5)))]`
-/

namespace A184802.P9136778029825805672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184802.P9136778029825805672

namespace A184802

/-- `record[A020639(floor((n+1)*sqrt(5)))]` -/
def P9136778029825805672.Spec : Prop :=
  ∀ n, P9136778029825805672.a n = A184802 (n + 1)

end A184802

/-! ## A184802.P2667135569133001084

`A006530(2*p?[floor(n*root(5, 2))])`
-/

namespace A184802.P2667135569133001084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184802.P2667135569133001084

namespace A184802

/-- `A006530(2*p?[floor(n*root(5, 2))])` -/
def P2667135569133001084.Spec : Prop :=
  ∀ n, P2667135569133001084.a n = A184802 (n + 1)

end A184802

/-! ## A184802.P11600460404771734801

`A022839(A184803(n+1))`
-/

namespace A184802.P11600460404771734801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (A184803 (n + 1)).toNat

end

end A184802.P11600460404771734801

namespace A184802

/-- `A022839(A184803(n+1))` -/
def P11600460404771734801.Spec : Prop :=
  ∀ n, P11600460404771734801.a n = A184802 (n + 1)

end A184802

/-! ## A184802.P8082768151211589218

`filter[A022839(n+1), A010051(#)]`
-/

namespace A184802.P8082768151211589218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184802.P8082768151211589218

namespace A184802

/-- `filter[A022839(n+1), A010051(#)]` -/
def P8082768151211589218.Spec : Prop :=
  ∀ n, P8082768151211589218.a n = A184802 (n + 1)

end A184802

/-! ## A184802.P17736858879675464055

`∩[A000040(n+1), A022839(n+1)]`
-/

namespace A184802.P17736858879675464055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184802.P17736858879675464055

namespace A184802

/-- `∩[A000040(n+1), A022839(n+1)]` -/
def P17736858879675464055.Spec : Prop :=
  ∀ n, (P17736858879675464055.a n : ℤ) = A184802 (n + 1)

end A184802

/-! ## A184802.P9094969767141826661

`∩[A008578(n+1), A022839(n+1)]`
-/

namespace A184802.P9094969767141826661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184802.P9094969767141826661

namespace A184802

/-- `∩[A008578(n+1), A022839(n+1)]` -/
def P9094969767141826661.Spec : Prop :=
  ∀ n, (P9094969767141826661.a n : ℤ) = A184802 (n + 1)

end A184802

/-! ## A184802.P4329344537675665718

`∩[A022839(n+1), A033946(n+1)]`
-/

namespace A184802.P4329344537675665718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184802.P4329344537675665718

namespace A184802

/-- `∩[A022839(n+1), A033946(n+1)]` -/
def P4329344537675665718.Spec : Prop :=
  ∀ n, (P4329344537675665718.a n : ℤ) = A184802 (n + 1)

end A184802

/-! ## A184802.P7263005645672901684

`∩[A022839(n+1), A045319(n+1)]`
-/

namespace A184802.P7263005645672901684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184802.P7263005645672901684

namespace A184802

/-- `∩[A022839(n+1), A045319(n+1)]` -/
def P7263005645672901684.Spec : Prop :=
  ∀ n, (P7263005645672901684.a n : ℤ) = A184802 (n + 1)

end A184802

/-! ## A184802.P11768192068936038104

`∩[A022839(n+1), A045344(n+1)]`
-/

namespace A184802.P11768192068936038104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184802.P11768192068936038104

namespace A184802

/-- `∩[A022839(n+1), A045344(n+1)]` -/
def P11768192068936038104.Spec : Prop :=
  ∀ n, (P11768192068936038104.a n : ℤ) = A184802 (n + 1)

end A184802

/-! ## A184802.P5665355408649204066

`∩[A022839(n+1), A158611(n+1)]`
-/

namespace A184802.P5665355408649204066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184802.P5665355408649204066

namespace A184802

/-- `∩[A022839(n+1), A158611(n+1)]` -/
def P5665355408649204066.Spec : Prop :=
  ∀ n, (P5665355408649204066.a n : ℤ) = A184802 (n + 1)

end A184802

/-! ## A184802.P14280072803255040950

`∩[A022839(n+1), A182986(n+1)]`
-/

namespace A184802.P14280072803255040950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184802.P14280072803255040950

namespace A184802

/-- `∩[A022839(n+1), A182986(n+1)]` -/
def P14280072803255040950.Spec : Prop :=
  ∀ n, (P14280072803255040950.a n : ℤ) = A184802 (n + 1)

end A184802

/-! ## A184802.P3827498462632203351

`∩[A022839(n+1), A372059(n+1)]`
-/

namespace A184802.P3827498462632203351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184802.P3827498462632203351

namespace A184802

/-- `∩[A022839(n+1), A372059(n+1)]` -/
def P3827498462632203351.Spec : Prop :=
  ∀ n, (P3827498462632203351.a n : ℤ) = A184802 (n + 1)

end A184802

/-!
# A184803: Numbers k such that floor(k*sqrt(5)) is prime.

The programs for A184803, the canonical program `A184803.P11425205424734953809` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184803 has offset 1).

The definition of A184803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184803.P11425205424734953809

`record[(n+1)*A010051(A022839(n+1))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184803

/-- `record[(n+1)*A010051(A022839(n+1))]` -/
def P11425205424734953809.Spec : Prop :=
  ∀ n, P11425205424734953809.a n = A184803 (n + 1)

theorem P11425205424734953809.correct : P11425205424734953809.Spec := by
  intro n
  simp only [A184803, Nat.add_sub_cancel]

end A184803

/-! ## A184803.P13954177110990952256

`A026261(p?[floor(n*sqrt(5))])`
-/

namespace A184803.P13954177110990952256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184803.P13954177110990952256

namespace A184803

/-- `A026261(p?[floor(n*sqrt(5))])` -/
def P13954177110990952256.Spec : Prop :=
  ∀ n, P13954177110990952256.a n = A184803 (n + 1)

end A184803

/-! ## A184803.P15108866382177910241

`A194964(p?[floor(n*sqrt(5))])`
-/

namespace A184803.P15108866382177910241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184803.P15108866382177910241

namespace A184803

/-- `A194964(p?[floor(n*sqrt(5))])` -/
def P15108866382177910241.Spec : Prop :=
  ∀ n, P15108866382177910241.a n = A184803 (n + 1)

end A184803

/-! ## A184803.P18031033334575357701

`A194964(p?[floor(n*root(5, 2))]%(43*(n+1)))`
-/

namespace A184803.P18031033334575357701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (43 * (n + 1) : ℤ)).toNat

end

end A184803.P18031033334575357701

namespace A184803

/-- `A194964(p?[floor(n*root(5, 2))]%(43*(n+1)))` -/
def P18031033334575357701.Spec : Prop :=
  ∀ n, P18031033334575357701.a n = A184803 (n + 1)

end A184803

/-! ## A184803.P1416128875270043984

`A026261(A184802(n+1))`
-/

namespace A184803.P1416128875270043984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (A184802 (n + 1)).toNat

end

end A184803.P1416128875270043984

namespace A184803

/-- `A026261(A184802(n+1))` -/
def P1416128875270043984.Spec : Prop :=
  ∀ n, P1416128875270043984.a n = A184803 (n + 1)

end A184803

/-! ## A184803.P12107492766266035019

`eq[1, A032741(A198082(n+1)-1)]+1`
-/

namespace A184803.P12107492766266035019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A198082 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184803.P12107492766266035019

namespace A184803

/-- `eq[1, A032741(A198082(n+1)-1)]+1` -/
def P12107492766266035019.Spec : Prop :=
  ∀ n, (P12107492766266035019.a n : ℤ) = A184803 (n + 1)

end A184803

/-! ## A184803.P2475561923467401224

`eq[1, A014673(A001961(n+1)+n+1)]+1`
-/

namespace A184803.P2475561923467401224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A001961 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184803.P2475561923467401224

namespace A184803

/-- `eq[1, A014673(A001961(n+1)+n+1)]+1` -/
def P2475561923467401224.Spec : Prop :=
  ∀ n, (P2475561923467401224.a n : ℤ) = A184803 (n + 1)

end A184803

/-! ## A184803.P10913683525849588181

`A194964(record[A014963(A022839(n+1))])`
-/

namespace A184803.P10913683525849588181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A022839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184803.P10913683525849588181

namespace A184803

/-- `A194964(record[A014963(A022839(n+1))])` -/
def P10913683525849588181.Spec : Prop :=
  ∀ n, P10913683525849588181.a n = A184803 (n + 1)

end A184803

/-! ## A184803.P9565867886762160454

`A194964(record[A020639(A022839(n+1))])`
-/

namespace A184803.P9565867886762160454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184803.P9565867886762160454

namespace A184803

/-- `A194964(record[A020639(A022839(n+1))])` -/
def P9565867886762160454.Spec : Prop :=
  ∀ n, P9565867886762160454.a n = A184803 (n + 1)

end A184803

/-! ## A184803.P13276832624155812856

`∏{d}[A000040(A184804(n+1)), A026261(#)]`
-/

namespace A184803.P13276832624155812856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A026261 d

end

end A184803.P13276832624155812856

namespace A184803

/-- `∏{d}[A000040(A184804(n+1)), A026261(#)]` -/
def P13276832624155812856.Spec : Prop :=
  ∀ n, P13276832624155812856.a n = A184803 (n + 1)

end A184803

/-!
# A184804: Numbers m such that prime(m) is of the form floor(k*sqrt(5)); complement of A184807.

The programs for A184804, the canonical program `A184804.P5256680205815034056` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184804 has offset 1).

The definition of A184804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184804.P1344681170030038338

`A000720(p?[floor(n*sqrt(5))])`
-/

namespace A184804.P1344681170030038338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P1344681170030038338

namespace A184804

/-- `A000720(p?[floor(n*sqrt(5))])` -/
def P1344681170030038338.Spec : Prop :=
  ∀ n, P1344681170030038338.a n = A184804 (n + 1)

end A184804

/-! ## A184804.P5256680205815034056

`A061395(p?[floor(n*sqrt(5))])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A184804

/-- `A061395(p?[floor(n*sqrt(5))])` -/
def P5256680205815034056.Spec : Prop :=
  ∀ n, P5256680205815034056.a n = A184804 (n + 1)

theorem P5256680205815034056.correct : P5256680205815034056.Spec := by
  intro n
  simp only [A184804, Nat.add_sub_cancel]

end A184804

/-! ## A184804.P12589775718553930327

`A000720(A184802(n+1))`
-/

namespace A184804.P12589775718553930327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184802 (n + 1)).toNat

end

end A184804.P12589775718553930327

namespace A184804

/-- `A000720(A184802(n+1))` -/
def P12589775718553930327.Spec : Prop :=
  ∀ n, P12589775718553930327.a n = A184804 (n + 1)

end A184804

/-! ## A184804.P11557168448019963825

`A003963(p?[floor(n*sqrt(5))])`
-/

namespace A184804.P11557168448019963825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P11557168448019963825

namespace A184804

/-- `A003963(p?[floor(n*sqrt(5))])` -/
def P11557168448019963825.Spec : Prop :=
  ∀ n, P11557168448019963825.a n = A184804 (n + 1)

end A184804

/-! ## A184804.P4443342250562861284

`A026233(p?[floor(n*sqrt(5))])`
-/

namespace A184804.P4443342250562861284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P4443342250562861284

namespace A184804

/-- `A026233(p?[floor(n*sqrt(5))])` -/
def P4443342250562861284.Spec : Prop :=
  ∀ n, P4443342250562861284.a n = A184804 (n + 1)

end A184804

/-! ## A184804.P17965166415369068546

`A026238(p?[floor(n*sqrt(5))])`
-/

namespace A184804.P17965166415369068546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P17965166415369068546

namespace A184804

/-- `A026238(p?[floor(n*sqrt(5))])` -/
def P17965166415369068546.Spec : Prop :=
  ∀ n, P17965166415369068546.a n = A184804 (n + 1)

end A184804

/-! ## A184804.P6192558327070986098

`A049084(p?[floor(n*sqrt(5))])`
-/

namespace A184804.P6192558327070986098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P6192558327070986098

namespace A184804

/-- `A049084(p?[floor(n*sqrt(5))])` -/
def P6192558327070986098.Spec : Prop :=
  ∀ n, P6192558327070986098.a n = A184804 (n + 1)

end A184804

/-! ## A184804.P2648804254048862001

`A055396(p?[floor(n*sqrt(5))])`
-/

namespace A184804.P2648804254048862001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P2648804254048862001

namespace A184804

/-- `A055396(p?[floor(n*sqrt(5))])` -/
def P2648804254048862001.Spec : Prop :=
  ∀ n, P2648804254048862001.a n = A184804 (n + 1)

end A184804

/-! ## A184804.P6629457360369973258

`A056239(p?[floor(n*sqrt(5))])`
-/

namespace A184804.P6629457360369973258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P6629457360369973258

namespace A184804

/-- `A056239(p?[floor(n*sqrt(5))])` -/
def P6629457360369973258.Spec : Prop :=
  ∀ n, P6629457360369973258.a n = A184804 (n + 1)

end A184804

/-! ## A184804.P6784164262593033490

`A036234(p?[floor(n*root(5, 2))]-1)`
-/

namespace A184804.P6784164262593033490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A184804.P6784164262593033490

namespace A184804

/-- `A036234(p?[floor(n*root(5, 2))]-1)` -/
def P6784164262593033490.Spec : Prop :=
  ∀ n, P6784164262593033490.a n = A184804 (n + 1)

end A184804

/-! ## A184804.P7618508518920535060

`A056172(2*p?[floor(n*root(5, 2))])`
-/

namespace A184804.P7618508518920535060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184804.P7618508518920535060

namespace A184804

/-- `A056172(2*p?[floor(n*root(5, 2))])` -/
def P7618508518920535060.Spec : Prop :=
  ∀ n, P7618508518920535060.a n = A184804 (n + 1)

end A184804

/-!
# A184805: Primes of the form floor(k*s), where s=(5+sqrt(5))/4.

The programs for A184805, the canonical program `A184805.P4720329603602837182` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184805 has offset 1).

The definition of A184805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5551 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184805.P4720329603602837182

`A000040(A184807(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A184805

/-- `A000040(A184807(n+1))` -/
def P4720329603602837182.Spec : Prop :=
  ∀ n, P4720329603602837182.a n = A184805 (n + 1)

theorem P4720329603602837182.correct : P4720329603602837182.Spec := by
  intro n
  simp only [A184805, Nat.add_sub_cancel]

end A184805

/-! ## A184805.P17279377279140866006

`p?[comp[floor(n*sqrt(5))]]`
-/

namespace A184805.P17279377279140866006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A184805.P17279377279140866006

namespace A184805

/-- `p?[comp[floor(n*sqrt(5))]]` -/
def P17279377279140866006.Spec : Prop :=
  ∀ n, (P17279377279140866006.a n : ℤ) = A184805 (n + 1)

end A184805

/-! ## A184805.P1738438950204971492

`or(1, p?[A108598(n+1)])`
-/

namespace A184805.P1738438950204971492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A184805.P1738438950204971492

namespace A184805

/-- `or(1, p?[A108598(n+1)])` -/
def P1738438950204971492.Spec : Prop :=
  ∀ n, P1738438950204971492.a n = A184805 (n + 1)

end A184805

/-! ## A184805.P8899124119041987145

`∑{p}[p?[A108598(n+2)], #]`
-/

namespace A184805.P8899124119041987145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A184805.P8899124119041987145

namespace A184805

/-- `∑{p}[p?[A108598(n+2)], #]` -/
def P8899124119041987145.Spec : Prop :=
  ∀ n, (P8899124119041987145.a n : ℤ) = A184805 (n + 1)

end A184805

/-! ## A184805.P6517069017127019648

`∏{p}[p?[comp[A005206(2*n+1)+1+n]], #]`
-/

namespace A184805.P6517069017127019648
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1) + 1 + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A184805.P6517069017127019648

namespace A184805

/-- `∏{p}[p?[comp[A005206(2*n+1)+1+n]], #]` -/
def P6517069017127019648.Spec : Prop :=
  ∀ n, (P6517069017127019648.a n : ℤ) = A184805 (n + 1)

end A184805

/-! ## A184805.P15252301790942628894

`A108598(A184806(n+1))`
-/

namespace A184805.P15252301790942628894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (A184806 (n + 1)).toNat

end

end A184805.P15252301790942628894

namespace A184805

/-- `A108598(A184806(n+1))` -/
def P15252301790942628894.Spec : Prop :=
  ∀ n, P15252301790942628894.a n = A184805 (n + 1)

end A184805

/-! ## A184805.P13859382455046147449

`A000027(p?[A108598(n+1)])`
-/

namespace A184805.P13859382455046147449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184805.P13859382455046147449

namespace A184805

/-- `A000027(p?[A108598(n+1)])` -/
def P13859382455046147449.Spec : Prop :=
  ∀ n, P13859382455046147449.a n = A184805 (n + 1)

end A184805

/-! ## A184805.P14485557072728681524

`record[A006530(A108598(n+2))]`
-/

namespace A184805.P14485557072728681524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A108598 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184805.P14485557072728681524

namespace A184805

/-- `record[A006530(A108598(n+2))]` -/
def P14485557072728681524.Spec : Prop :=
  ∀ n, P14485557072728681524.a n = A184805 (n + 1)

end A184805

/-! ## A184805.P12882316992171436266

`filter[A108598(n+1), A010051(#)]`
-/

namespace A184805.P12882316992171436266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184805.P12882316992171436266

namespace A184805

/-- `filter[A108598(n+1), A010051(#)]` -/
def P12882316992171436266.Spec : Prop :=
  ∀ n, P12882316992171436266.a n = A184805 (n + 1)

end A184805

/-! ## A184805.P7730420816336995218

`A006530(2*p?[A108598(n+1)])`
-/

namespace A184805.P7730420816336995218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184805.P7730420816336995218

namespace A184805

/-- `A006530(2*p?[A108598(n+1)])` -/
def P7730420816336995218.Spec : Prop :=
  ∀ n, P7730420816336995218.a n = A184805 (n + 1)

end A184805

/-! ## A184805.P13252603111001122729

`∩[A000040(n+1), A108598(n+1)]`
-/

namespace A184805.P13252603111001122729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184805.P13252603111001122729

namespace A184805

/-- `∩[A000040(n+1), A108598(n+1)]` -/
def P13252603111001122729.Spec : Prop :=
  ∀ n, (P13252603111001122729.a n : ℤ) = A184805 (n + 1)

end A184805

/-! ## A184805.P4815073020458762181

`∩[A051948(n+1), A108598(n+1)]`
-/

namespace A184805.P4815073020458762181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184805.P4815073020458762181

namespace A184805

/-- `∩[A051948(n+1), A108598(n+1)]` -/
def P4815073020458762181.Spec : Prop :=
  ∀ n, (P4815073020458762181.a n : ℤ) = A184805 (n + 1)

end A184805

/-! ## A184805.P1539361049794496078

`∩[A065091(n+1), A108598(n+1)]`
-/

namespace A184805.P1539361049794496078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184805.P1539361049794496078

namespace A184805

/-- `∩[A065091(n+1), A108598(n+1)]` -/
def P1539361049794496078.Spec : Prop :=
  ∀ n, (P1539361049794496078.a n : ℤ) = A184805 (n + 1)

end A184805

/-! ## A184805.P8751031617533269462

`∩[A108598(n+1), A116974(n+1)]`
-/

namespace A184805.P8751031617533269462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184805.P8751031617533269462

namespace A184805

/-- `∩[A108598(n+1), A116974(n+1)]` -/
def P8751031617533269462.Spec : Prop :=
  ∀ n, (P8751031617533269462.a n : ℤ) = A184805 (n + 1)

end A184805

/-! ## A184805.P10567410896815583117

`∩[A108598(n+1), A175787(n+1)]`
-/

namespace A184805.P10567410896815583117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184805.P10567410896815583117

namespace A184805

/-- `∩[A108598(n+1), A175787(n+1)]` -/
def P10567410896815583117.Spec : Prop :=
  ∀ n, (P10567410896815583117.a n : ℤ) = A184805 (n + 1)

end A184805

/-! ## A184805.P8444655784553321412

`∩[A108598(n+1), A182986(n+1)]`
-/

namespace A184805.P8444655784553321412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184805.P8444655784553321412

namespace A184805

/-- `∩[A108598(n+1), A182986(n+1)]` -/
def P8444655784553321412.Spec : Prop :=
  ∀ n, (P8444655784553321412.a n : ℤ) = A184805 (n + 1)

end A184805

/-! ## A184805.P7580731300543110075

`filter[A108598(n+2), A080339(#)]`
-/

namespace A184805.P7580731300543110075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A184805.P7580731300543110075

namespace A184805

/-- `filter[A108598(n+2), A080339(#)]` -/
def P7580731300543110075.Spec : Prop :=
  ∀ n, P7580731300543110075.a n = A184805 (n + 1)

end A184805

/-! ## A184805.P16910030496733426648

`filter[A108598(n+2), A080545(#)]`
-/

namespace A184805.P16910030496733426648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A184805.P16910030496733426648

namespace A184805

/-- `filter[A108598(n+2), A080545(#)]` -/
def P16910030496733426648.Spec : Prop :=
  ∀ n, P16910030496733426648.a n = A184805 (n + 1)

end A184805

/-! ## A184805.P4209340376535620122

`∩[A108598(n+1), A240960(n+1)]`
-/

namespace A184805.P4209340376535620122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184805.P4209340376535620122

namespace A184805

/-- `∩[A108598(n+1), A240960(n+1)]` -/
def P4209340376535620122.Spec : Prop :=
  ∀ n, (P4209340376535620122.a n : ℤ) = A184805 (n + 1)

end A184805

/-!
# A184806: Numbers k such that floor(k*s) is prime, where s = (5 + sqrt(5))/4.

The programs for A184806, the canonical program `A184806.P15414560286594020557` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184806 has offset 1).

The definition of A184806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 678 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184806.P16272471354828728377

`A026261(p?[floor(ϕ*n/2+n)])`
-/

namespace A184806.P16272471354828728377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℚ) / 2 : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184806.P16272471354828728377

namespace A184806

/-- `A026261(p?[floor(ϕ*n/2+n)])` -/
def P16272471354828728377.Spec : Prop :=
  ∀ n, P16272471354828728377.a n = A184806 (n + 1)

end A184806

/-! ## A184806.P2300101665434199529

`A026261(A184805(n+1))`
-/

namespace A184806.P2300101665434199529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (A184805 (n + 1)).toNat

end

end A184806.P2300101665434199529

namespace A184806

/-- `A026261(A184805(n+1))` -/
def P2300101665434199529.Spec : Prop :=
  ∀ n, P2300101665434199529.a n = A184806 (n + 1)

end A184806

/-! ## A184806.P11161302235010230996

`A026261(or(1, p?[A108598(n+1)]))`
-/

namespace A184806.P11161302235010230996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A184806.P11161302235010230996

namespace A184806

/-- `A026261(or(1, p?[A108598(n+1)]))` -/
def P11161302235010230996.Spec : Prop :=
  ∀ n, P11161302235010230996.a n = A184806 (n + 1)

end A184806

/-! ## A184806.P15414560286594020557

`record[(n+2)%A014963(A108598(n+2))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A184806

/-- `record[(n+2)%A014963(A108598(n+2))]` -/
def P15414560286594020557.Spec : Prop :=
  ∀ n, P15414560286594020557.a n = A184806 (n + 1)

theorem P15414560286594020557.correct : P15414560286594020557.Spec := by
  intro n
  simp only [A184806, Nat.add_sub_cancel]

end A184806

/-! ## A184806.P11615716342093012055

`∏{d}[A000040(A184807(n+1)), A026261(#)]`
-/

namespace A184806.P11615716342093012055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184807 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A026261 d

end

end A184806.P11615716342093012055

namespace A184806

/-- `∏{d}[A000040(A184807(n+1)), A026261(#)]` -/
def P11615716342093012055.Spec : Prop :=
  ∀ n, P11615716342093012055.a n = A184806 (n + 1)

end A184806

/-! ## A184806.P18106060007026851949

`A026261(p?[A108598(n+1)]%A020233(n+1))`
-/

namespace A184806.P18106060007026851949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A020233 (n + 1))).toNat

end

end A184806.P18106060007026851949

namespace A184806

/-- `A026261(p?[A108598(n+1)]%A020233(n+1))` -/
def P18106060007026851949.Spec : Prop :=
  ∀ n, P18106060007026851949.a n = A184806 (n + 1)

end A184806

/-!
# A184807: Numbers m such that prime(m) is of the form floor(k*s), where s=(5+sqrt(5))/4; complement of A184804.

The programs for A184807, the canonical program `A184807.P9604685836924148984` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184807 has offset 1).

The definition of A184807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184807.P9604685836924148984

`comp[A184804(n+1)-1]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A184807

/-- `comp[A184804(n+1)-1]+1` -/
def P9604685836924148984.Spec : Prop :=
  ∀ n, (P9604685836924148984.a n : ℤ) = A184807 (n + 1)

theorem P9604685836924148984.correct : P9604685836924148984.Spec := by
  intro n
  simp only [A184807, Nat.add_sub_cancel]

end A184807

/-! ## A184807.P823767055240362324

`A000720(p?[floor(n*(ϕ/2+1))])`
-/

namespace A184807.P823767055240362324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio / 2 + 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184807.P823767055240362324

namespace A184807

/-- `A000720(p?[floor(n*(ϕ/2+1))])` -/
def P823767055240362324.Spec : Prop :=
  ∀ n, P823767055240362324.a n = A184807 (n + 1)

end A184807

/-! ## A184807.P16870117050370628088

`A061395(p?[floor(ϕ*n/2+n)])`
-/

namespace A184807.P16870117050370628088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℚ) / 2 : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184807.P16870117050370628088

namespace A184807

/-- `A061395(p?[floor(ϕ*n/2+n)])` -/
def P16870117050370628088.Spec : Prop :=
  ∀ n, P16870117050370628088.a n = A184807 (n + 1)

end A184807

/-! ## A184807.P8625455902028349327

`A000720(A184805(n+1))`
-/

namespace A184807.P8625455902028349327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184805 (n + 1)).toNat

end

end A184807.P8625455902028349327

namespace A184807

/-- `A000720(A184805(n+1))` -/
def P8625455902028349327.Spec : Prop :=
  ∀ n, P8625455902028349327.a n = A184807 (n + 1)

end A184807

/-! ## A184807.P7927329306159899101

`A003963(p?[floor(n*(ϕ/2+1))])`
-/

namespace A184807.P7927329306159899101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio / 2 + 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184807.P7927329306159899101

namespace A184807

/-- `A003963(p?[floor(n*(ϕ/2+1))])` -/
def P7927329306159899101.Spec : Prop :=
  ∀ n, P7927329306159899101.a n = A184807 (n + 1)

end A184807

/-! ## A184807.P2543665901128282399

`A026238(p?[floor(n*(ϕ/2+1))])`
-/

namespace A184807.P2543665901128282399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio / 2 + 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184807.P2543665901128282399

namespace A184807

/-- `A026238(p?[floor(n*(ϕ/2+1))])` -/
def P2543665901128282399.Spec : Prop :=
  ∀ n, P2543665901128282399.a n = A184807 (n + 1)

end A184807

/-! ## A184807.P10016087749739983589

`A056239(p?[floor(n*(ϕ+2)/2)])`
-/

namespace A184807.P10016087749739983589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 2) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184807.P10016087749739983589

namespace A184807

/-- `A056239(p?[floor(n*(ϕ+2)/2)])` -/
def P10016087749739983589.Spec : Prop :=
  ∀ n, P10016087749739983589.a n = A184807 (n + 1)

end A184807

/-! ## A184807.P5240444253067505191

`A026233(p?[floor(ϕ*n/2+n)])`
-/

namespace A184807.P5240444253067505191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℚ) / 2 : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184807.P5240444253067505191

namespace A184807

/-- `A026233(p?[floor(ϕ*n/2+n)])` -/
def P5240444253067505191.Spec : Prop :=
  ∀ n, P5240444253067505191.a n = A184807 (n + 1)

end A184807

/-! ## A184807.P10782124526598737211

`A049084(p?[floor(ϕ*n/2+n)])`
-/

namespace A184807.P10782124526598737211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℚ) / 2 : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184807.P10782124526598737211

namespace A184807

/-- `A049084(p?[floor(ϕ*n/2+n)])` -/
def P10782124526598737211.Spec : Prop :=
  ∀ n, P10782124526598737211.a n = A184807 (n + 1)

end A184807

/-! ## A184807.P1320069282740992553

`A055396(p?[floor(ϕ*n/2+n)])`
-/

namespace A184807.P1320069282740992553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℚ) / 2 : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184807.P1320069282740992553

namespace A184807

/-- `A055396(p?[floor(ϕ*n/2+n)])` -/
def P1320069282740992553.Spec : Prop :=
  ∀ n, P1320069282740992553.a n = A184807 (n + 1)

end A184807

/-!
# A184808: n + floor(r*n), where r = sqrt(2/3); complement of A184809.

The programs for A184808, the canonical program `A184808.P9868829150126178100` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184808 has offset 1).

The definition of A184808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184808.P1198513935500804977

`comp[floor(n/(sqrt(6)-2))]`
-/

namespace A184808.P1198513935500804977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184808.P1198513935500804977

namespace A184808

/-- `comp[floor(n/(sqrt(6)-2))]` -/
def P1198513935500804977.Spec : Prop :=
  ∀ n, (P1198513935500804977.a n : ℤ) = A184808 (n + 1)

end A184808

/-! ## A184808.P9868829150126178100

`A171974(n+1)+1+n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184808

/-- `A171974(n+1)+1+n` -/
def P9868829150126178100.Spec : Prop :=
  ∀ n, P9868829150126178100.a n = A184808 (n + 1)

theorem P9868829150126178100.correct : P9868829150126178100.Spec := by
  intro n
  simp only [A184808, Nat.add_sub_cancel]

end A184808

/-! ## A184808.P17446991794737933181

`∑[char[A277644(n+1)]+1]`
-/

namespace A184808.P17446991794737933181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184808.P17446991794737933181

namespace A184808

/-- `∑[char[A277644(n+1)]+1]` -/
def P17446991794737933181.Spec : Prop :=
  ∀ n, (P17446991794737933181.a n : ℤ) = A184808 (n + 1)

end A184808

/-! ## A184808.P17526764543748948990

`A189363(n+1)-A097337(n+1)`
-/

namespace A184808.P17526764543748948990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189363 (n + 1) - A097337 (n + 1)

end

end A184808.P17526764543748948990

namespace A184808

/-- `A189363(n+1)-A097337(n+1)` -/
def P17526764543748948990.Spec : Prop :=
  ∀ n, P17526764543748948990.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P17122985873956742697

`floor((A324116(A014963(n+1))+n)/(3-sqrt(6)))`
-/

namespace A184808.P17122985873956742697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324116 (A014963 (n + 1)).toNat + (n : ℤ) : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

end

end A184808.P17122985873956742697

namespace A184808

/-- `floor((A324116(A014963(n+1))+n)/(3-sqrt(6)))` -/
def P17122985873956742697.Spec : Prop :=
  ∀ n, P17122985873956742697.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P4894552971163174752

`floor((A051904(A005117(3*n+4))+n)/(3-sqrt(6)))`
-/

namespace A184808.P4894552971163174752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051904 (A005117 (3 * n + 4)).toNat + (n : ℤ) : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

end

end A184808.P4894552971163174752

namespace A184808

/-- `floor((A051904(A005117(3*n+4))+n)/(3-sqrt(6)))` -/
def P4894552971163174752.Spec : Prop :=
  ∀ n, P4894552971163174752.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P15200162121987668093

`floor((A051904(A157037(n+1))+n)/(3-sqrt(6)))`
-/

namespace A184808.P15200162121987668093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051904 (A157037 (n + 1)).toNat + (n : ℤ) : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

end

end A184808.P15200162121987668093

namespace A184808

/-- `floor((A051904(A157037(n+1))+n)/(3-sqrt(6)))` -/
def P15200162121987668093.Spec : Prop :=
  ∀ n, P15200162121987668093.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P1319274213549874950

`eq[A236213(n+1), A276856(n+1)]`
-/

namespace A184808.P1319274213549874950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184808.P1319274213549874950

namespace A184808

/-- `eq[A236213(n+1), A276856(n+1)]` -/
def P1319274213549874950.Spec : Prop :=
  ∀ n, (P1319274213549874950.a n : ℤ) = A184808 (n + 1)

end A184808

/-! ## A184808.P3014066534930175665

`A194986(2*(n+1))+n`
-/

namespace A184808.P3014066534930175665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (2 * (n + 1)) + (n : ℤ)

end

end A184808.P3014066534930175665

namespace A184808

/-- `A194986(2*(n+1))+n` -/
def P3014066534930175665.Spec : Prop :=
  ∀ n, P3014066534930175665.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P12553992148971133644

`ceil(sqrt(A008747(2*n+1))+n)`
-/

namespace A184808.P12553992148971133644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008747 (2 * n + 1) : ℝ) + (n : ℝ)⌉

end

end A184808.P12553992148971133644

namespace A184808

/-- `ceil(sqrt(A008747(2*n+1))+n)` -/
def P12553992148971133644.Spec : Prop :=
  ∀ n, P12553992148971133644.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P4377430741846306374

`∑[Δ[A172476(2*n)]+1]`
-/

namespace A184808.P4377430741846306374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184808.P4377430741846306374

namespace A184808

/-- `∑[Δ[A172476(2*n)]+1]` -/
def P4377430741846306374.Spec : Prop :=
  ∀ n, P4377430741846306374.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P13397695291084616839

`A172476(2*(n+1))+n+1`
-/

namespace A184808.P13397695291084616839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A184808.P13397695291084616839

namespace A184808

/-- `A172476(2*(n+1))+n+1` -/
def P13397695291084616839.Spec : Prop :=
  ∀ n, P13397695291084616839.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P9902581721818185362

`A172476(A103517(n))+1+n`
-/

namespace A184808.P9902581721818185362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (A103517 n).toNat + 1 + (n : ℤ)

end

end A184808.P9902581721818185362

namespace A184808

/-- `A172476(A103517(n))+1+n` -/
def P9902581721818185362.Spec : Prop :=
  ∀ n, P9902581721818185362.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P14529740827126964650

`A172476(A163300(n+1))+1+n`
-/

namespace A184808.P14529740827126964650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (A163300 (n + 1)).toNat + 1 + (n : ℤ)

end

end A184808.P14529740827126964650

namespace A184808

/-- `A172476(A163300(n+1))+1+n` -/
def P14529740827126964650.Spec : Prop :=
  ∀ n, P14529740827126964650.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P5746311806884816083

`Δ[A022783(n+1)]+n`
-/

namespace A184808.P5746311806884816083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A184808.P5746311806884816083

namespace A184808

/-- `Δ[A022783(n+1)]+n` -/
def P5746311806884816083.Spec : Prop :=
  ∀ n, P5746311806884816083.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P17150498986084074879

`A002264(A022840(n+1))+1+n`
-/

namespace A184808.P17150498986084074879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022840 (n + 1)).toNat + 1 + (n : ℤ)

end

end A184808.P17150498986084074879

namespace A184808

/-- `A002264(A022840(n+1))+1+n` -/
def P17150498986084074879.Spec : Prop :=
  ∀ n, P17150498986084074879.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P680115690703956601

`A008620(A277644(2*(n+1)))+n`
-/

namespace A184808.P680115690703956601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A277644 (2 * (n + 1))).toNat + (n : ℤ)

end

end A184808.P680115690703956601

namespace A184808

/-- `A008620(A277644(2*(n+1)))+n` -/
def P680115690703956601.Spec : Prop :=
  ∀ n, P680115690703956601.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P13551816430328388874

`A097992(2*A022840(n+1))+n`
-/

namespace A184808.P13551816430328388874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (2 * A022840 (n + 1)).toNat + (n : ℤ)

end

end A184808.P13551816430328388874

namespace A184808

/-- `A097992(2*A022840(n+1))+n` -/
def P13551816430328388874.Spec : Prop :=
  ∀ n, P13551816430328388874.a n = A184808 (n + 1)

end A184808

/-! ## A184808.P14523886271473328848

`A002264(A277645(n+1))`
-/

namespace A184808.P14523886271473328848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A277645 (n + 1)).toNat

end

end A184808.P14523886271473328848

namespace A184808

/-- `A002264(A277645(n+1))` -/
def P14523886271473328848.Spec : Prop :=
  ∀ n, P14523886271473328848.a n = A184808 (n + 1)

end A184808

/-!
# A184809: a(n) = n + floor(sqrt(3/2)*n).

The programs for A184809, the canonical program `A184809.P18042801614621916409` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184809 has offset 1).

The definition of A184809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184809.P6404298334764631826

`floor((n+1)/(sqrt(6)-2))`
-/

namespace A184809.P6404298334764631826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

end

end A184809.P6404298334764631826

namespace A184809

/-- `floor((n+1)/(sqrt(6)-2))` -/
def P6404298334764631826.Spec : Prop :=
  ∀ n, P6404298334764631826.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P892610594716546160

`comp[n-floor(n*sqrt(24))%2]`
-/

namespace A184809.P892610594716546160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ⌊(n : ℝ) * Real.sqrt (24 : ℝ)⌋ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184809.P892610594716546160

namespace A184809

/-- `comp[n-floor(n*sqrt(24))%2]` -/
def P892610594716546160.Spec : Prop :=
  ∀ n, (P892610594716546160.a n : ℤ) = A184809 (n + 1)

end A184809

/-! ## A184809.P13613926800826795726

`ceil(sqrt(∑[or(1, n)]+(n+1)²))+n`
-/

namespace A184809.P13613926800826795726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2 : ℕ) : ℝ)⌉ + (n : ℤ)

end

end A184809.P13613926800826795726

namespace A184809

/-- `ceil(sqrt(∑[or(1, n)]+(n+1)²))+n` -/
def P13613926800826795726.Spec : Prop :=
  ∀ n, P13613926800826795726.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P18042801614621916409

`A277644(n+1)+1+n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184809

/-- `A277644(n+1)+1+n` -/
def P18042801614621916409.Spec : Prop :=
  ∀ n, P18042801614621916409.a n = A184809 (n + 1)

theorem P18042801614621916409.correct : P18042801614621916409.Spec := by
  intro n
  simp only [A184809, Nat.add_sub_cancel]

end A184809

/-! ## A184809.P1872944236219483359

`A194146(n+1)-(n+1)`
-/

namespace A184809.P1872944236219483359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194146 (n + 1) - (n + 1 : ℤ)

end

end A184809.P1872944236219483359

namespace A184809

/-- `A194146(n+1)-(n+1)` -/
def P1872944236219483359.Spec : Prop :=
  ∀ n, P1872944236219483359.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P3101456449806168671

`A189385(n+1)-A022838(n+1)`
-/

namespace A184809.P3101456449806168671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189385 (n + 1) - A022838 (n + 1)

end

end A184809.P3101456449806168671

namespace A184809

/-- `A189385(n+1)-A022838(n+1)` -/
def P3101456449806168671.Spec : Prop :=
  ∀ n, P3101456449806168671.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P17266751435178698579

`A190367(n+1)-A277645(n+1)`
-/

namespace A184809.P17266751435178698579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190367 (n + 1) - A277645 (n + 1)

end

end A184809.P17266751435178698579

namespace A184809

/-- `A190367(n+1)-A277645(n+1)` -/
def P17266751435178698579.Spec : Prop :=
  ∀ n, P17266751435178698579.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P12823649477215660725

`ceil(sqrt(A238410(n+2))+n)`
-/

namespace A184809.P12823649477215660725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A238410 (n + 2) : ℝ) + (n : ℝ)⌉

end

end A184809.P12823649477215660725

namespace A184809

/-- `ceil(sqrt(A238410(n+2))+n)` -/
def P12823649477215660725.Spec : Prop :=
  ∀ n, P12823649477215660725.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P15140904332520904228

`ceil(sqrt(A000982(n+1)+(n+1)²))+n`
-/

namespace A184809.P15140904332520904228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000982 (n + 1) + ((n + 1) ^ 2 : ℤ) : ℝ)⌉ + (n : ℤ)

end

end A184809.P15140904332520904228

namespace A184809

/-- `ceil(sqrt(A000982(n+1)+(n+1)²))+n` -/
def P15140904332520904228.Spec : Prop :=
  ∀ n, P15140904332520904228.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P1733617881259161146

`ceil((record[A138236(n+1)]+2*n+1)/2)`
-/

namespace A184809.P1733617881259161146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n + 1 : ℤ) : ℚ) / 2⌉

end

end A184809.P1733617881259161146

namespace A184809

/-- `ceil((record[A138236(n+1)]+2*n+1)/2)` -/
def P1733617881259161146.Spec : Prop :=
  ∀ n, P1733617881259161146.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P12234142949055617418

`A171975(2*(n+1))+n+1`
-/

namespace A184809.P12234142949055617418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171975 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A184809.P12234142949055617418

namespace A184809

/-- `A171975(2*(n+1))+n+1` -/
def P12234142949055617418.Spec : Prop :=
  ∀ n, P12234142949055617418.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P2639105524962536494

`eq[A113923(n), A276856(n+1)]`
-/

namespace A184809.P2639105524962536494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184809.P2639105524962536494

namespace A184809

/-- `eq[A113923(n), A276856(n+1)]` -/
def P2639105524962536494.Spec : Prop :=
  ∀ n, (P2639105524962536494.a n : ℤ) = A184809 (n + 1)

end A184809

/-! ## A184809.P17394306646040458061

`lt[A327253(n+1), A327253(n)]`
-/

namespace A184809.P17394306646040458061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A184809.P17394306646040458061

namespace A184809

/-- `lt[A327253(n+1), A327253(n)]` -/
def P17394306646040458061.Spec : Prop :=
  ∀ n, (P17394306646040458061.a n : ℤ) = A184809 (n + 1)

end A184809

/-! ## A184809.P10473918227532287350

`lt[A327306(n+1), A327306(n)]`
-/

namespace A184809.P10473918227532287350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A184809.P10473918227532287350

namespace A184809

/-- `lt[A327306(n+1), A327306(n)]` -/
def P10473918227532287350.Spec : Prop :=
  ∀ n, (P10473918227532287350.a n : ℤ) = A184809 (n + 1)

end A184809

/-! ## A184809.P370048325298373708

`A008619(A022840(n+1))+n`
-/

namespace A184809.P370048325298373708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022840 (n + 1)).toNat + (n : ℤ)

end

end A184809.P370048325298373708

namespace A184809

/-- `A008619(A022840(n+1))+n` -/
def P370048325298373708.Spec : Prop :=
  ∀ n, P370048325298373708.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P10617895721075183270

`A065033(A198083(n+1))+n`
-/

namespace A184809.P10617895721075183270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A198083 (n + 1)).toNat + (n : ℤ)

end

end A184809.P10617895721075183270

namespace A184809

/-- `A065033(A198083(n+1))+n` -/
def P10617895721075183270.Spec : Prop :=
  ∀ n, P10617895721075183270.a n = A184809 (n + 1)

end A184809

/-! ## A184809.P5516118084963538096

`A004526(A022840(n+1)+2)+n`
-/

namespace A184809.P5516118084963538096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022840 (n + 1) + 2).toNat + (n : ℤ)

end

end A184809.P5516118084963538096

namespace A184809

/-- `A004526(A022840(n+1)+2)+n` -/
def P5516118084963538096.Spec : Prop :=
  ∀ n, P5516118084963538096.a n = A184809 (n + 1)

end A184809

/-!
# A184810: Numbers m such that prime(m) has the form floor(k*r), where r=sqrt(2/3); complement of A184811.

The programs for A184810, the canonical program `A184810.P4952026747299435353` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184810 has offset 1).

The definition of A184810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184810.P4952026747299435353

`comp[A184811(n+1)-1]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A184810

/-- `comp[A184811(n+1)-1]+1` -/
def P4952026747299435353.Spec : Prop :=
  ∀ n, (P4952026747299435353.a n : ℤ) = A184810 (n + 1)

theorem P4952026747299435353.correct : P4952026747299435353.Spec := by
  intro n
  simp only [A184810, Nat.add_sub_cancel]

end A184810

/-! ## A184810.P5595270444368004444

`A000720(p?[floor((n+1)/(3-sqrt(6)))])`
-/

namespace A184810.P5595270444368004444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P5595270444368004444

namespace A184810

/-- `A000720(p?[floor((n+1)/(3-sqrt(6)))])` -/
def P5595270444368004444.Spec : Prop :=
  ∀ n, P5595270444368004444.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P18246198699582644967

`A061395(p?[floor((n+1)/(3-sqrt(6)))])`
-/

namespace A184810.P18246198699582644967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P18246198699582644967

namespace A184810

/-- `A061395(p?[floor((n+1)/(3-sqrt(6)))])` -/
def P18246198699582644967.Spec : Prop :=
  ∀ n, P18246198699582644967.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P3383587135301835169

`record[A263111(floor((n+1)/(3-sqrt(6))))]`
-/

namespace A184810.P3383587135301835169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 ⌊(n + 1 : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184810.P3383587135301835169

namespace A184810

/-- `record[A263111(floor((n+1)/(3-sqrt(6))))]` -/
def P3383587135301835169.Spec : Prop :=
  ∀ n, P3383587135301835169.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P8400980708207796141

`A003963(p?[floor((n+1)/(3-sqrt(6)))])`
-/

namespace A184810.P8400980708207796141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P8400980708207796141

namespace A184810

/-- `A003963(p?[floor((n+1)/(3-sqrt(6)))])` -/
def P8400980708207796141.Spec : Prop :=
  ∀ n, P8400980708207796141.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P12038873048979422593

`A026233(p?[floor((n+1)/(3-sqrt(6)))])`
-/

namespace A184810.P12038873048979422593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P12038873048979422593

namespace A184810

/-- `A026233(p?[floor((n+1)/(3-sqrt(6)))])` -/
def P12038873048979422593.Spec : Prop :=
  ∀ n, P12038873048979422593.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P17924304252897553260

`A026238(p?[floor((n+1)/(3-sqrt(6)))])`
-/

namespace A184810.P17924304252897553260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P17924304252897553260

namespace A184810

/-- `A026238(p?[floor((n+1)/(3-sqrt(6)))])` -/
def P17924304252897553260.Spec : Prop :=
  ∀ n, P17924304252897553260.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P17233816142502596260

`A049084(p?[floor((n+1)/(3-sqrt(6)))])`
-/

namespace A184810.P17233816142502596260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P17233816142502596260

namespace A184810

/-- `A049084(p?[floor((n+1)/(3-sqrt(6)))])` -/
def P17233816142502596260.Spec : Prop :=
  ∀ n, P17233816142502596260.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P2808012547246255483

`A055396(p?[floor((n+1)/(3-sqrt(6)))])`
-/

namespace A184810.P2808012547246255483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (3 - Real.sqrt (6 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P2808012547246255483

namespace A184810

/-- `A055396(p?[floor((n+1)/(3-sqrt(6)))])` -/
def P2808012547246255483.Spec : Prop :=
  ∀ n, P2808012547246255483.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P93761119807639812

`record[A049084(A184808(n+2))]`
-/

namespace A184810.P93761119807639812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A184808 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184810.P93761119807639812

namespace A184810

/-- `record[A049084(A184808(n+2))]` -/
def P93761119807639812.Spec : Prop :=
  ∀ n, P93761119807639812.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P11688420406945508111

`A056239(p?[A184808(n+1)])`
-/

namespace A184810.P11688420406945508111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P11688420406945508111

namespace A184810

/-- `A056239(p?[A184808(n+1)])` -/
def P11688420406945508111.Spec : Prop :=
  ∀ n, P11688420406945508111.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P10130953062927552858

`A087712(p?[A184808(n+1)])`
-/

namespace A184810.P10130953062927552858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P10130953062927552858

namespace A184810

/-- `A087712(p?[A184808(n+1)])` -/
def P10130953062927552858.Spec : Prop :=
  ∀ n, P10130953062927552858.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P14331633379714835158

`A156061(p?[A184808(n+1)])`
-/

namespace A184810.P14331633379714835158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P14331633379714835158

namespace A184810

/-- `A156061(p?[A184808(n+1)])` -/
def P14331633379714835158.Spec : Prop :=
  ∀ n, P14331633379714835158.a n = A184810 (n + 1)

end A184810

/-! ## A184810.P13400329101641653709

`A230980(p?[A184808(n+1)])`
-/

namespace A184810.P13400329101641653709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184810.P13400329101641653709

namespace A184810

/-- `A230980(p?[A184808(n+1)])` -/
def P13400329101641653709.Spec : Prop :=
  ∀ n, P13400329101641653709.a n = A184810 (n + 1)

end A184810

/-!
# A184811: Numbers m such that prime(m) has the form floor(r*k), where r=sqrt(3/2); complement of A184810.

The programs for A184811, the canonical program `A184811.P17820329255503839465` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184811 has offset 1).

The definition of A184811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184811.P16341853161293960263

`A000720(p?[floor((n+1)/(sqrt(6)-2))])`
-/

namespace A184811.P16341853161293960263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184811.P16341853161293960263

namespace A184811

/-- `A000720(p?[floor((n+1)/(sqrt(6)-2))])` -/
def P16341853161293960263.Spec : Prop :=
  ∀ n, P16341853161293960263.a n = A184811 (n + 1)

end A184811

/-! ## A184811.P17820329255503839465

`A061395(p?[floor((n+1)/(sqrt(6)-2))])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A184811

/-- `A061395(p?[floor((n+1)/(sqrt(6)-2))])` -/
def P17820329255503839465.Spec : Prop :=
  ∀ n, P17820329255503839465.a n = A184811 (n + 1)

theorem P17820329255503839465.correct : P17820329255503839465.Spec := by
  intro n
  simp only [A184811, Nat.add_sub_cancel]

end A184811

/-! ## A184811.P7277275746235654344

`record[A263111(floor((n+1)/(sqrt(6)-2)))]`
-/

namespace A184811.P7277275746235654344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184811.P7277275746235654344

namespace A184811

/-- `record[A263111(floor((n+1)/(sqrt(6)-2)))]` -/
def P7277275746235654344.Spec : Prop :=
  ∀ n, P7277275746235654344.a n = A184811 (n + 1)

end A184811

/-! ## A184811.P5459252924736715917

`record[A049084(floor((n+1)/(sqrt(6)-2)))]`
-/

namespace A184811.P5459252924736715917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184811.P5459252924736715917

namespace A184811

/-- `record[A049084(floor((n+1)/(sqrt(6)-2)))]` -/
def P5459252924736715917.Spec : Prop :=
  ∀ n, P5459252924736715917.a n = A184811 (n + 1)

end A184811

/-! ## A184811.P6075457968705301912

`record[A055396(floor((n+1)/(sqrt(6)-2)))]`
-/

namespace A184811.P6075457968705301912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184811.P6075457968705301912

namespace A184811

/-- `record[A055396(floor((n+1)/(sqrt(6)-2)))]` -/
def P6075457968705301912.Spec : Prop :=
  ∀ n, P6075457968705301912.a n = A184811 (n + 1)

end A184811

/-! ## A184811.P1598278399353195839

`A003963(p?[floor((n+1)/(sqrt(6)-2))])`
-/

namespace A184811.P1598278399353195839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184811.P1598278399353195839

namespace A184811

/-- `A003963(p?[floor((n+1)/(sqrt(6)-2))])` -/
def P1598278399353195839.Spec : Prop :=
  ∀ n, P1598278399353195839.a n = A184811 (n + 1)

end A184811

/-! ## A184811.P3249845997188813720

`A026233(p?[floor((n+1)/(sqrt(6)-2))])`
-/

namespace A184811.P3249845997188813720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184811.P3249845997188813720

namespace A184811

/-- `A026233(p?[floor((n+1)/(sqrt(6)-2))])` -/
def P3249845997188813720.Spec : Prop :=
  ∀ n, P3249845997188813720.a n = A184811 (n + 1)

end A184811

/-! ## A184811.P10799100987922488517

`A049084(p?[floor((n+1)/(sqrt(6)-2))])`
-/

namespace A184811.P10799100987922488517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184811.P10799100987922488517

namespace A184811

/-- `A049084(p?[floor((n+1)/(sqrt(6)-2))])` -/
def P10799100987922488517.Spec : Prop :=
  ∀ n, P10799100987922488517.a n = A184811 (n + 1)

end A184811

/-! ## A184811.P16761328913928929113

`A055396(p?[floor((n+1)/(sqrt(6)-2))])`
-/

namespace A184811.P16761328913928929113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184811.P16761328913928929113

namespace A184811

/-- `A055396(p?[floor((n+1)/(sqrt(6)-2))])` -/
def P16761328913928929113.Spec : Prop :=
  ∀ n, P16761328913928929113.a n = A184811 (n + 1)

end A184811

/-! ## A184811.P13489065880556010693

`A026238(p?[A184809(n+1)])`
-/

namespace A184811.P13489065880556010693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184811.P13489065880556010693

namespace A184811

/-- `A026238(p?[A184809(n+1)])` -/
def P13489065880556010693.Spec : Prop :=
  ∀ n, P13489065880556010693.a n = A184811 (n + 1)

end A184811

/-!
# A184812: n+floor(ns/r)+floor(nt/r), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

The programs for A184812, the canonical program `A184812.P6220005435936590522` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184812 has offset 1).

The definition of A184812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184812.P11821081981954965266

`A184809(n+1)+A189371(n+1)-A003152(n+1)`
-/

namespace A184812.P11821081981954965266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (n + 1) + (A189371 (n + 1) - A003152 (n + 1))

end

end A184812.P11821081981954965266

namespace A184812

/-- `A184809(n+1)+A189371(n+1)-A003152(n+1)` -/
def P11821081981954965266.Spec : Prop :=
  ∀ n, P11821081981954965266.a n = A184812 (n + 1)

end A184812

/-! ## A184812.P3379225217081862440

`A189371(n+1)+A189385(n+1)-A189395(n+1)`
-/

namespace A184812.P3379225217081862440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189371 (n + 1) + (A189385 (n + 1) - A189395 (n + 1))

end

end A184812.P3379225217081862440

namespace A184812

/-- `A189371(n+1)+A189385(n+1)-A189395(n+1)` -/
def P3379225217081862440.Spec : Prop :=
  ∀ n, P3379225217081862440.a n = A184812 (n + 1)

end A184812

/-! ## A184812.P6220005435936590522

`A194146(n+1)+A004526(A187396(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184812

/-- `A194146(n+1)+A004526(A187396(n+1))` -/
def P6220005435936590522.Spec : Prop :=
  ∀ n, P6220005435936590522.a n = A184812 (n + 1)

theorem P6220005435936590522.correct : P6220005435936590522.Spec := by
  intro n
  simp only [A184812, Nat.add_sub_cancel]

end A184812

/-! ## A184812.P9453148877143045023

`A004526(A187396(n+1))+A184809(n+1)+1+n`
-/

namespace A184812.P9453148877143045023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187396 (n + 1)).toNat + (A184809 (n + 1) + 1 + (n : ℤ))

end

end A184812.P9453148877143045023

namespace A184812

/-- `A004526(A187396(n+1))+A184809(n+1)+1+n` -/
def P9453148877143045023.Spec : Prop :=
  ∀ n, P9453148877143045023.a n = A184812 (n + 1)

end A184812

/-! ## A184812.P13997924227254193068

`A184809(n+1)+A004526(A177102(n+1))`
-/

namespace A184812.P13997924227254193068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (n + 1) + A004526 (A177102 (n + 1)).toNat

end

end A184812.P13997924227254193068

namespace A184812

/-- `A184809(n+1)+A004526(A177102(n+1))` -/
def P13997924227254193068.Spec : Prop :=
  ∀ n, P13997924227254193068.a n = A184812 (n + 1)

end A184812

/-! ## A184812.P11254594608561248474

`A184809(n+1)+A000196(∑[A090771(n+1)])`
-/

namespace A184812.P11254594608561248474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (n + 1) + A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184812.P11254594608561248474

namespace A184812

/-- `A184809(n+1)+A000196(∑[A090771(n+1)])` -/
def P11254594608561248474.Spec : Prop :=
  ∀ n, P11254594608561248474.a n = A184812 (n + 1)

end A184812

/-! ## A184812.P4327106644032636188

`A109260(n+1)+A277644(n+1)%A206911(n+1)`
-/

namespace A184812.P4327106644032636188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109260 (n + 1) + Int.tmod (A277644 (n + 1)) (A206911 (n + 1))

end

end A184812.P4327106644032636188

namespace A184812

/-- `A109260(n+1)+A277644(n+1)%A206911(n+1)` -/
def P4327106644032636188.Spec : Prop :=
  ∀ n, P4327106644032636188.a n = A184812 (n + 1)

end A184812

/-!
# A184813: n+[nr/s]+[nt/s], where r=sqrt(2), s=sqrt(3), t=sqrt(5), and []=floor.

The programs for A184813, there is no canonical definition to state claims against.
-/

/-! ## A184813.P16200612605295791851

`∑[A194286(A129961(n+1))]+n`
-/

namespace A184813.P16200612605295791851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194286 (A129961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A184813.P16200612605295791851

/-! ## A184813.P10762110871949183974

`A258703(A187829(n+1)+ceil(2*n+(n+2)*sqrt(2)))`
-/

namespace A184813.P10762110871949183974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (A187829 (n + 1) + ⌈(2 * n : ℝ) + (n + 2 : ℝ) * Real.sqrt (2 : ℝ)⌉).toNat

end

end A184813.P10762110871949183974

/-! ## A184813.P5688885396084686103

`A258703(A187829(n+1))+A082845(n+1)`
-/

namespace A184813.P5688885396084686103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (A187829 (n + 1)).toNat + A082845 (n + 1)

end

end A184813.P5688885396084686103

/-! ## A184813.P11054622187641062008

`∑[A332273(∑[A307958(n+1)])]`
-/

namespace A184813.P11054622187641062008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332273 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184813.P11054622187641062008

/-! ## A184813.P9990848522392700021

`A258068(3*n+4)-A011655(A282071(n))`
-/

namespace A184813.P9990848522392700021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258068 (3 * n + 4) - A011655 (A282071 n).toNat

end

end A184813.P9990848522392700021

/-!
# A184814: n+[nr/t]+[ns/t], where r=sqrt(2), s=sqrt(3), t=sqrt(5), and []=floor.

The programs for A184814, there is no canonical definition to state claims against.
-/

/-! ## A184814.P10111245805374187563

`A000196(A098005(n+1)*A109259(n+1))`
-/

namespace A184814.P10111245805374187563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A098005 (n + 1) * A109259 (n + 1)).toNat

end

end A184814.P10111245805374187563

/-! ## A184814.P7178302407041478475

`A000196(A098005(n+1)*A292663(n+1))`
-/

namespace A184814.P7178302407041478475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A098005 (n + 1) * A292663 (n + 1)).toNat

end

end A184814.P7178302407041478475

/-! ## A184814.P15868848003109306642

`A101605(A007916(n+1))+∑[(A030102(2^n)%3)!]+n`
-/

namespace A184814.P15868848003109306642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A030102 (2 ^ n)) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A007916 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A184814.P15868848003109306642

/-! ## A184814.P6127233365575003746

`or(A005091(A274582(n)), A284654(n+1))`
-/

namespace A184814.P6127233365575003746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005091 (A274582 n).toNat) (A284654 (n + 1))

end

end A184814.P6127233365575003746

/-! ## A184814.P997651494766387351

`∑[A037827(A290018(2*(n+2))+A000602(n+3))]`
-/

namespace A184814.P997651494766387351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A290018 (2 * (n + 2)) + A000602 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184814.P997651494766387351

/-!
# A184815: Numbers m such that prime(m) is of the form k+floor(ks/r)+floor(kt/r), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

The programs for A184815, the canonical program `A184815.P17423450562420843` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184815 has offset 1).

The definition of A184815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1067 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184815.P17423450562420843

`A000720(p?[A184812(n+1)])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A184815

/-- `A000720(p?[A184812(n+1)])` -/
def P17423450562420843.Spec : Prop :=
  ∀ n, P17423450562420843.a n = A184815 (n + 1)

theorem P17423450562420843.correct : P17423450562420843.Spec := by
  intro n
  simp only [A184815, Nat.add_sub_cancel]

end A184815

/-! ## A184815.P8954555113132324889

`A026233(p?[A184812(n+1)])`
-/

namespace A184815.P8954555113132324889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184815.P8954555113132324889

namespace A184815

/-- `A026233(p?[A184812(n+1)])` -/
def P8954555113132324889.Spec : Prop :=
  ∀ n, P8954555113132324889.a n = A184815 (n + 1)

end A184815

/-! ## A184815.P10228198469737547570

`A026238(p?[A184812(n+1)])`
-/

namespace A184815.P10228198469737547570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184815.P10228198469737547570

namespace A184815

/-- `A026238(p?[A184812(n+1)])` -/
def P10228198469737547570.Spec : Prop :=
  ∀ n, P10228198469737547570.a n = A184815 (n + 1)

end A184815

/-! ## A184815.P6649069134793780851

`A049084(p?[A184812(n+1)])`
-/

namespace A184815.P6649069134793780851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184815.P6649069134793780851

namespace A184815

/-- `A049084(p?[A184812(n+1)])` -/
def P6649069134793780851.Spec : Prop :=
  ∀ n, P6649069134793780851.a n = A184815 (n + 1)

end A184815

/-! ## A184815.P14740081842076435180

`A055396(p?[A184812(n+1)])`
-/

namespace A184815.P14740081842076435180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184815.P14740081842076435180

namespace A184815

/-- `A055396(p?[A184812(n+1)])` -/
def P14740081842076435180.Spec : Prop :=
  ∀ n, P14740081842076435180.a n = A184815 (n + 1)

end A184815

/-! ## A184815.P9283483465592486202

`A056239(p?[A184812(n+1)])`
-/

namespace A184815.P9283483465592486202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184815.P9283483465592486202

namespace A184815

/-- `A056239(p?[A184812(n+1)])` -/
def P9283483465592486202.Spec : Prop :=
  ∀ n, P9283483465592486202.a n = A184815 (n + 1)

end A184815

/-! ## A184815.P9863347484896894645

`A230980(p?[A184812(n+1)])`
-/

namespace A184815.P9863347484896894645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184815.P9863347484896894645

namespace A184815

/-- `A230980(p?[A184812(n+1)])` -/
def P9863347484896894645.Spec : Prop :=
  ∀ n, P9863347484896894645.a n = A184815 (n + 1)

end A184815

/-!
# A184816: Numbers m such that prime(m) is of the form k+floor(kr/s)+floor(kt/s), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

The programs for A184816, there is no canonical definition to state claims against.
-/

/-! ## A184816.P4894067043180022468

`A000720(p?[A184813(n+1)])`
-/

namespace A184816.P4894067043180022468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184816.P4894067043180022468

/-! ## A184816.P15375650771831009368

`A026238(p?[A184813(n+1)])`
-/

namespace A184816.P15375650771831009368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184816.P15375650771831009368

/-! ## A184816.P224763112374287183

`A049084(p?[A184813(n+1)])`
-/

namespace A184816.P224763112374287183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184816.P224763112374287183

/-! ## A184816.P5198760199330373618

`A056239(p?[A184813(n+1)])`
-/

namespace A184816.P5198760199330373618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184816.P5198760199330373618

/-! ## A184816.P10819928179290047660

`A066136(p?[A184813(n+1)])`
-/

namespace A184816.P10819928179290047660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184816.P10819928179290047660

/-! ## A184816.P14332039351040967835

`A230980(p?[A184813(n+1)])`
-/

namespace A184816.P14332039351040967835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184816.P14332039351040967835

/-! ## A184816.P15994914707588980378

`A026238(record[A020639(A184813(n+1))])`
-/

namespace A184816.P15994914707588980378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A184813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184816.P15994914707588980378

/-! ## A184816.P2415359331161259610

`A049084(record[A014963(A184813(n+1))])`
-/

namespace A184816.P2415359331161259610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A184813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184816.P2415359331161259610

/-! ## A184816.P5397678421116896587

`A230980(record[A006530(A184813(n+1))])`
-/

namespace A184816.P5397678421116896587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A184813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184816.P5397678421116896587

/-! ## A184816.P10017819740131879535

`A230980(record[A014963(A184813(n+1))])`
-/

namespace A184816.P10017819740131879535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A184813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184816.P10017819740131879535

/-!
# A184817: Numbers m such that prime(m) is of the form k+floor(kr/t)+floor(ks/t), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

The programs for A184817, there is no canonical definition to state claims against.
-/

/-! ## A184817.P11132086153548115860

`A000720(p?[A184814(n+1)])`
-/

namespace A184817.P11132086153548115860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184817.P11132086153548115860

/-! ## A184817.P11321804944120513346

`A061395(p?[A184814(n+1)])`
-/

namespace A184817.P11321804944120513346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184817.P11321804944120513346

/-! ## A184817.P8678445562229426677

`A003963(p?[A184814(n+1)])`
-/

namespace A184817.P8678445562229426677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184817.P8678445562229426677

/-! ## A184817.P1480368861436723986

`A049084(p?[A184814(n+1)])`
-/

namespace A184817.P1480368861436723986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184817.P1480368861436723986

/-! ## A184817.P7147651740491643367

`A056239(p?[A184814(n+1)])`
-/

namespace A184817.P7147651740491643367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184817.P7147651740491643367

/-! ## A184817.P12172152165107985557

`A087712(p?[A184814(n+1)])`
-/

namespace A184817.P12172152165107985557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184817.P12172152165107985557

/-! ## A184817.P4258306371815268142

`A230980(p?[A184814(n+1)])`
-/

namespace A184817.P4258306371815268142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184817.P4258306371815268142

/-! ## A184817.P11388929668012013340

`A263323(p?[A184814(n+1)])`
-/

namespace A184817.P11388929668012013340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184817.P11388929668012013340

/-!
# A184818: E.g.f.: A(x) = Sum_{n>=0} (-log(1-x))^[n*phi] / [n*phi]!, where [n*phi] = A000201(n), the lower Wythoff sequence, and phi = (1+sqrt(5))/2.

The programs for A184818, there is no canonical definition to state claims against.
-/

/-! ## A184818.P7663512784582755111

`A066508(A020096(n))`
-/

namespace A184818.P7663512784582755111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A020096 n).toNat

end

end A184818.P7663512784582755111

/-! ## A184818.P5045322763543634096

`A007808(A220136(4^n))`
-/

namespace A184818.P5045322763543634096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007808 (A220136 (4 ^ n)).toNat

end

end A184818.P5045322763543634096

/-!
# A184819: E.g.f.: A(x) = Sum_{n>=0} (-log(1-x))^[n*phi^2] / [n*phi^2]!, where [n*phi^2] = A001950(n), the upper Wythoff sequence, and phi = (1+sqrt(5))/2.

The programs for A184819, there is no canonical definition to state claims against.
-/

/-! ## A184819.P18334259115136690290

`A357830(n)+A010054(A154638(n))`
-/

namespace A184819.P18334259115136690290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357830 n + A010054 (A154638 n).toNat

end

end A184819.P18334259115136690290

/-! ## A184819.P4771783467893833365

`A357830(n)-A010815(A134934(n))`
-/

namespace A184819.P4771783467893833365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357830 n - A010815 (A134934 n).toNat

end

end A184819.P4771783467893833365

/-! ## A184819.P13259709820803964449

`A008612(n*A152876(n))`
-/

namespace A184819.P13259709820803964449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 ((n : ℤ) * A152876 n).toNat

end

end A184819.P13259709820803964449

/-!
# A184820: a(n) = n + floor(n/t) + floor(n/t^2), where t is the tribonacci constant.

The programs for A184820, there is no canonical definition to state claims against.
-/

/-! ## A184820.P17010291239891355175

`or(A187835(n+1), A323162(A056040(n)))`
-/

namespace A184820.P17010291239891355175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A187835 (n + 1)) (A323162 (A056040 n).toNat)

end

end A184820.P17010291239891355175

/-! ## A184820.P15195544012742735278

`or(A187835(n+1), A213728(A048646(n+1)))`
-/

namespace A184820.P15195544012742735278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A187835 (n + 1)) (A213728 (A048646 (n + 1)).toNat)

end

end A184820.P15195544012742735278

/-!
# A184821: a(n) = n + floor(n*t) + floor(n/t), where t is the tribonacci constant.

The programs for A184821, there is no canonical definition to state claims against.
-/

/-! ## A184821.P17840889212001825847

`A158919(n+1)+A140098(n+1)`
-/

namespace A184821.P17840889212001825847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 (n + 1) + A140098 (n + 1)

end

end A184821.P17840889212001825847

/-! ## A184821.P12244193815727515257

`A158919(n+1)+comp[A158919(n)+n]`
-/

namespace A184821.P12244193815727515257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A184821.P12244193815727515257

/-! ## A184821.P10482377085172354635

`A140098(n+1)+A140099(n+1)-(n+1)`
-/

namespace A184821.P10482377085172354635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (n + 1) + (A140099 (n + 1) - (n + 1 : ℤ))

end

end A184821.P10482377085172354635

/-! ## A184821.P10732288472599454871

`A140099(n+1)+A276796(n)-A276404(n+1)`
-/

namespace A184821.P10732288472599454871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140099 (n + 1) + (A276796 n - A276404 (n + 1))

end

end A184821.P10732288472599454871

/-! ## A184821.P8799344811123855892

`A003144(n+1)+A275926(n+1)+A140098(n+1)`
-/

namespace A184821.P8799344811123855892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + (A275926 (n + 1) + A140098 (n + 1))

end

end A184821.P8799344811123855892

/-! ## A184821.P4704789651279751447

`A140098(A140099(n+1)+A140098(n+1))/2`
-/

namespace A184821.P4704789651279751447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140098 (A140099 (n + 1) + A140098 (n + 1)).toNat : ℚ) / 2

end

end A184821.P4704789651279751447

/-!
# A184822: a(n) = n + floor(n*t) + floor(n*t^2), where t is the tribonacci constant.

The programs for A184822, there is no canonical definition to state claims against.
-/

/-! ## A184822.P17661074093739248873

`A277722(n+1)+A140099(n+1)`
-/

namespace A184822.P17661074093739248873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 (n + 1) + A140099 (n + 1)

end

end A184822.P17661074093739248873

/-! ## A184822.P1251102137686634409

`A277722(n+1)+∑[Δ[A158919(n)]+1]`
-/

namespace A184822.P1251102137686634409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184822.P1251102137686634409

/-! ## A184822.P7321908631288801638

`A140098(A158919(n+1))+A277722(n+1)+1`
-/

namespace A184822.P7321908631288801638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (A158919 (n + 1)).toNat + (A277722 (n + 1) + 1)

end

end A184822.P7321908631288801638

/-! ## A184822.P7224359489623186045

`A003145(n+1)+A276799(n+1)+A140099(n+1)`
-/

namespace A184822.P7224359489623186045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) + (A276799 (n + 1) + A140099 (n + 1))

end

end A184822.P7224359489623186045

/-! ## A184822.P16149691015313521885

`A003146(n+1)+A276799(n+1)+A275926(n+1)`
-/

namespace A184822.P16149691015313521885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) + (A276799 (n + 1) + A275926 (n + 1))

end

end A184822.P16149691015313521885

/-! ## A184822.P2924401058977341872

`A276383(2*(n+1))+A158919(n+1)`
-/

namespace A184822.P2924401058977341872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276383 (2 * (n + 1)) + A158919 (n + 1)

end

end A184822.P2924401058977341872

/-!
# A184823: a(n) = n + floor(n/t) + floor(n/t^2) + floor(n/t^3), where t is the tetranacci constant.

The programs for A184823, there is no canonical definition to state claims against.
-/

/-! ## A184823.P4326675207628289632

`eq[A000007(A058348(n)), A079559(n)]`
-/

namespace A184823.P4326675207628289632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A058348 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184823.P4326675207628289632

/-! ## A184823.P10087682848663399101

`Δ[n²]-A196563(A231331(n))`
-/

namespace A184823.P10087682848663399101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A196563 (A231331 n).toNat

end

end A184823.P10087682848663399101

/-! ## A184823.P5350548015148655107

`A000027(n+1)+n-A196563(A231331(n))`
-/

namespace A184823.P5350548015148655107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A196563 (A231331 n).toNat)

end

end A184823.P5350548015148655107

/-! ## A184823.P14603076849585963519

`A000203(((-1)^n)²)+n-A196563(A231331(n))+n`
-/

namespace A184823.P14603076849585963519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat + ((n : ℤ) - A196563 (A231331 n).toNat + (n : ℤ))

end

end A184823.P14603076849585963519

/-! ## A184823.P2061311034416727020

`∑[A374706(6*A356166(n+1))]`
-/

namespace A184823.P2061311034416727020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (6 * A356166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184823.P2061311034416727020

/-!
# A184824: a(n) = n + floor(n*t) + floor(n/t) + floor(n/t^2), where t is the tetranacci constant.

The programs for A184824, there is no canonical definition to state claims against.
-/

/-! ## A184824.P13799323436579069623

`A214066(A151764(n+1))-A232550(A115068(n+1))`
-/

namespace A184824.P13799323436579069623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214066 (A151764 (n + 1)).toNat - A232550 (A115068 (n + 1)).toNat

end

end A184824.P13799323436579069623

/-! ## A184824.P5852171334840465902

`A186276(n+1)+A008621(A187829(n+1))`
-/

namespace A184824.P5852171334840465902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186276 (n + 1) + A008621 (A187829 (n + 1)).toNat

end

end A184824.P5852171334840465902

/-! ## A184824.P937031340240917332

`A016777(n)+A000120(A006977(n))`
-/

namespace A184824.P937031340240917332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A000120 (A006977 n).toNat

end

end A184824.P937031340240917332

/-! ## A184824.P15447972849273053283

`A005187(2*(n+1))-A010872(A278345(n))`
-/

namespace A184824.P15447972849273053283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * (n + 1)) - A010872 (A278345 n).toNat

end

end A184824.P15447972849273053283

/-! ## A184824.P16291140892515515655

`A275672(A110654(n))+A250246(3*n+2)`
-/

namespace A184824.P16291140892515515655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275672 (A110654 n).toNat + A250246 (3 * n + 2)

end

end A184824.P16291140892515515655

/-!
# A184825: a(n) = n + floor(n*t) + floor(n*t^2) + floor(n/t), where t is the tetranacci constant.

The programs for A184825, there is no canonical definition to state claims against.
-/

/-! ## A184825.P6611067570252322312

`A004396(A246300(n+1)+A032766(3*n+3)-A003602(2^n))`
-/

namespace A184825.P6611067570252322312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A246300 (n + 1) + (A032766 (3 * n + 3) - A003602 (2 ^ n))).toNat

end

end A184825.P6611067570252322312

/-! ## A184825.P12651890580444230707

`A017041(n)+A001221(A303366(n+1))`
-/

namespace A184825.P12651890580444230707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + A001221 (A303366 (n + 1)).toNat

end

end A184825.P12651890580444230707

/-! ## A184825.P11248416497680234102

`A080764(A120906(3*(n+1)))+A003151(3*n+2)`
-/

namespace A184825.P11248416497680234102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A120906 (3 * (n + 1))).toNat + A003151 (3 * n + 2)

end

end A184825.P11248416497680234102

/-! ## A184825.P13864928379812655842

`A076489(A363640(n+1))+A017041(n)`
-/

namespace A184825.P13864928379812655842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A363640 (n + 1)).toNat + A017041 n

end

end A184825.P13864928379812655842

/-! ## A184825.P14769992519432541710

`A005713(A001787(n))+A003151(3*n+2)`
-/

namespace A184825.P14769992519432541710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A001787 n).toNat + A003151 (3 * n + 2)

end

end A184825.P14769992519432541710

/-!
# A184826: a(n) = n + floor(n*t) + floor(n*t^2) + floor(n*t^3) where t is the tetranacci constant.

The programs for A184826, there is no canonical definition to state claims against.
-/

/-! ## A184826.P2727580864955179346

`A189528(n+1)-A085239(A124419(n))`
-/

namespace A184826.P2727580864955179346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189528 (n + 1) - A085239 (A124419 n).toNat

end

end A184826.P2727580864955179346

/-! ## A184826.P7600159845366435181

`A189528(n+1)-A105446(A070027(n+1))`
-/

namespace A184826.P7600159845366435181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189528 (n + 1) - A105446 (A070027 (n + 1)).toNat

end

end A184826.P7600159845366435181

/-! ## A184826.P360977104169172287

`A269100(n)+A000120(A244605(n))`
-/

namespace A184826.P360977104169172287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + A000120 (A244605 n).toNat

end

end A184826.P360977104169172287

/-! ## A184826.P16905447066888152928

`A123578(A017378(n))-A194621(n)`
-/

namespace A184826.P16905447066888152928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A017378 n).toNat - A194621 n

end

end A184826.P16905447066888152928

/-! ## A184826.P3110224529625345264

`A136773(n+1)-A136690(A049606(n))`
-/

namespace A184826.P3110224529625345264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136773 (n + 1) - A136690 (A049606 n).toNat

end

end A184826.P3110224529625345264

/-!
# A184827: a(n) = largest k such that A000959(n+1) = A000959(n) + (A000959(n) mod k), or 0 if no such k exists.

The programs for A184827, there is no canonical definition to state claims against.
-/

/-! ## A184827.P16671367026636317734

`lcm(A000959(n+1)-A031883(n+1), A184828(n+1))`
-/

namespace A184827.P16671367026636317734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000959 (n + 1) - A031883 (n + 1)) (A184828 (n + 1))

end

end A184827.P16671367026636317734

/-! ## A184827.P6939141942459807509

`A130889(n+1)*A184828(n+1)`
-/

namespace A184827.P6939141942459807509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130889 (n + 1) * A184828 (n + 1)

end

end A184827.P6939141942459807509

/-! ## A184827.P9418287112411577508

`lcm(A031883(n+1)-A000959(n+1), A130889(n+1))`
-/

namespace A184827.P9418287112411577508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A031883 (n + 1) - A000959 (n + 1)) (A130889 (n + 1))

end

end A184827.P9418287112411577508

/-! ## A184827.P3067158194304148591

`A004273(A049781(n+2)-A031883(n+1))`
-/

namespace A184827.P3067158194304148591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A049781 (n + 2) - A031883 (n + 1)).toNat

end

end A184827.P3067158194304148591

/-! ## A184827.P9431018324036187526

`record[A269370(n+3)]-A031883(n+1)`
-/

namespace A184827.P9431018324036187526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A031883 (n + 1)

end

end A184827.P9431018324036187526

/-!
# A184828: a(n) = A184827(n)/A130889(n) unless A130889(n) = 0 in which case a(n) = 0.

The programs for A184828, there is no canonical definition to state claims against.
-/

/-! ## A184828.P9603694594793998364

`A184827(n+1)/A093178(A130889(n+1))`
-/

namespace A184828.P9603694594793998364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184827 (n + 1) : ℚ) / (A093178 (A130889 (n + 1)).toNat : ℚ)

end

end A184828.P9603694594793998364

/-!
# A184830: a(n) = largest k such that A000961(n+1) = A000961(n) + (A000961(n) mod k), or 0 if no such k exists.

The programs for A184830, the canonical program `A184830.P16798279248287820796` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184830 has offset 1).

The definition of A184830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184830.P14628435035096818704

`A184829(n+1)*A184831(n+1)`
-/

namespace A184830.P14628435035096818704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184829 (n + 1) * A184831 (n + 1)

end

end A184830.P14628435035096818704

namespace A184830

/-- `A184829(n+1)*A184831(n+1)` -/
def P14628435035096818704.Spec : Prop :=
  ∀ n, P14628435035096818704.a n = A184830 (n + 1)

end A184830

/-! ## A184830.P9422157399390847614

`A000961(n+1)-(A057820(n+1)+char[1])`
-/

namespace A184830.P9422157399390847614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - (A057820 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A184830.P9422157399390847614

namespace A184830

/-- `A000961(n+1)-(A057820(n+1)+char[1])` -/
def P9422157399390847614.Spec : Prop :=
  ∀ n, P9422157399390847614.a n = A184830 (n + 1)

end A184830

/-! ## A184830.P16798279248287820796

`(A000961(n+1)-Δ[A000961(n+1)])%A002061(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A184830

/-- `(A000961(n+1)-Δ[A000961(n+1)])%A002061(n)` -/
def P16798279248287820796.Spec : Prop :=
  ∀ n, P16798279248287820796.a n = A184830 (n + 1)

theorem P16798279248287820796.correct : P16798279248287820796.Spec := by
  intro n
  simp only [A184830, Nat.add_sub_cancel]

end A184830

/-! ## A184830.P12989680255549627719

`lcm(A000961(n+1)-A057820(n+1), A184829(n+1))`
-/

namespace A184830.P12989680255549627719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000961 (n + 1) - A057820 (n + 1)) (A184829 (n + 1))

end

end A184830.P12989680255549627719

namespace A184830

/-- `lcm(A000961(n+1)-A057820(n+1), A184829(n+1))` -/
def P12989680255549627719.Spec : Prop :=
  ∀ n, (P12989680255549627719.a n : ℤ) = A184830 (n + 1)

end A184830

/-! ## A184830.P6962734179847501240

`lcm(A057820(n+1)-A000961(n+1), A184831(n+1))`
-/

namespace A184830.P6962734179847501240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057820 (n + 1) - A000961 (n + 1)) (A184831 (n + 1))

end

end A184830.P6962734179847501240

namespace A184830

/-- `lcm(A057820(n+1)-A000961(n+1), A184831(n+1))` -/
def P6962734179847501240.Spec : Prop :=
  ∀ n, (P6962734179847501240.a n : ℤ) = A184830 (n + 1)

end A184830

/-! ## A184830.P7131383518475312416

`(A138929(n+1)%A001597(n+1))%A000961(n+2)`
-/

namespace A184830.P7131383518475312416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A138929 (n + 1)) (A001597 (n + 1))) (A000961 (n + 2))

end

end A184830.P7131383518475312416

namespace A184830

/-- `(A138929(n+1)%A001597(n+1))%A000961(n+2)` -/
def P7131383518475312416.Spec : Prop :=
  ∀ n, P7131383518475312416.a n = A184830 (n + 1)

end A184830

/-! ## A184830.P14715514719117259894

`A000961(n+1)+Δ[A019590(n+1)-A000961(n+1)]`
-/

namespace A184830.P14715514719117259894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) - A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + (f1 (n + 1) - f1 n)

end

end A184830.P14715514719117259894

namespace A184830

/-- `A000961(n+1)+Δ[A019590(n+1)-A000961(n+1)]` -/
def P14715514719117259894.Spec : Prop :=
  ∀ n, P14715514719117259894.a n = A184830 (n + 1)

end A184830

/-! ## A184830.P10933982908009914839

`A283971(A000961(n+1))-Δ[A000961(n+1)]`
-/

namespace A184830.P10933982908009914839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A000961 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A184830.P10933982908009914839

namespace A184830

/-- `A283971(A000961(n+1))-Δ[A000961(n+1)]` -/
def P10933982908009914839.Spec : Prop :=
  ∀ n, P10933982908009914839.a n = A184830 (n + 1)

end A184830

/-!
# A184831: a(n) = A184830(n)/A184829(n) unless A184829(n) = 0 in which case a(n) = 0.

The programs for A184831, there is no canonical definition to state claims against.
-/

/-! ## A184831.P8487402106203028413

`A184830(n+1)/A028310(A184829(n+1))`
-/

namespace A184831.P8487402106203028413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184830 (n + 1) : ℚ) / (A028310 (A184829 (n + 1)).toNat : ℚ)

end

end A184831.P8487402106203028413

/-!
# A184832: a(n) = smallest k such that A005117(n+1) = A005117(n) + (A005117(n) mod k), or 0 if no such k exists.

The programs for A184832, there is no canonical definition to state claims against.
-/

/-! ## A184832.P6632453111524882449

`A184833(n+1)/A028310(A184834(n+1))`
-/

namespace A184832.P6632453111524882449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184833 (n + 1) : ℚ) / (A028310 (A184834 (n + 1)).toNat : ℚ)

end

end A184832.P6632453111524882449

/-!
# A184833: a(n) = largest k such that A005117(n+1) = A005117(n) + (A005117(n) mod k), or 0 if no such k exists.

The programs for A184833, there is no canonical definition to state claims against.
-/

/-! ## A184833.P7188191802541272682

`A184832(n+1)*A184834(n+1)`
-/

namespace A184833.P7188191802541272682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184832 (n + 1) * A184834 (n + 1)

end

end A184833.P7188191802541272682

/-!
# A184834: a(n) = A184833(n)/A184832(n) unless A184832(n) = 0 in which case a(n) = 0.

The programs for A184834, there is no canonical definition to state claims against.
-/

/-! ## A184834.P8101570014185907611

`A184833(n+1)/A028310(A184832(n+1))`
-/

namespace A184834.P8101570014185907611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184833 (n + 1) : ℚ) / (A028310 (A184832 (n + 1)).toNat : ℚ)

end

end A184834.P8101570014185907611

/-!
# A184835: a(n) = n + floor(n/t) + floor(n/t^2) + floor(n/t^3) + floor(n/t^4), where t is the pentanacci constant.

The programs for A184835, there is no canonical definition to state claims against.
-/

/-! ## A184835.P6575318683674803154

`A102683(A202702(n+1))+A011371(2*(n+1))`
-/

namespace A184835.P6575318683674803154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A202702 (n + 1)).toNat + A011371 (2 * (n + 1))

end

end A184835.P6575318683674803154

/-! ## A184835.P7650706586840378444

`A234016(4*n+2)%A270896(n+1)`
-/

namespace A184835.P7650706586840378444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234016 (4 * n + 2)) (A270896 (n + 1))

end

end A184835.P7650706586840378444

/-! ## A184835.P17031410951772959981

`A234016(A016825(n))%A034312(n)`
-/

namespace A184835.P17031410951772959981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234016 (A016825 n).toNat) (A034312 n)

end

end A184835.P17031410951772959981

/-! ## A184835.P12729080774980093681

`or(A005187(n+1), A108934(A102419(n+1)))`
-/

namespace A184835.P12729080774980093681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005187 (n + 1)) (A108934 (A102419 (n + 1)).toNat)

end

end A184835.P12729080774980093681

/-! ## A184835.P4923895088688417935

`A234016(A016825(n))+A064911(A002645(n+1))`
-/

namespace A184835.P4923895088688417935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 (A016825 n).toNat + A064911 (A002645 (n + 1)).toNat

end

end A184835.P4923895088688417935

/-!
# A184836: a(n) = n + floor(n*t) + floor(n/t) + floor(n/t^2) + floor(n/t^3), where t is the pentanacci constant.

The programs for A184836, there is no canonical definition to state claims against.
-/

/-! ## A184836.P13283268381022785059

`∑[A000194(A059141(n))]-A015161(n)!`
-/

namespace A184836.P13283268381022785059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A059141 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.factorial (A015161 n).toNat : ℤ)

end

end A184836.P13283268381022785059

/-! ## A184836.P8001697471014307332

`∑[A085058(n)]+A062157(A184955(n))+n`
-/

namespace A184836.P8001697471014307332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A062157 (A184955 n).toNat + (n : ℤ))

end

end A184836.P8001697471014307332

/-! ## A184836.P8621823092327968656

`A184835(2*(n+1))-A356936(A316413(3*n+1))`
-/

namespace A184836.P8621823092327968656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184835 (2 * (n + 1)) - A356936 (A316413 (3 * n + 1)).toNat

end

end A184836.P8621823092327968656

/-! ## A184836.P3782725800561778419

`A005187(2*(n+1))-A293522(A230398(n+2))`
-/

namespace A184836.P3782725800561778419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * (n + 1)) - A293522 (A230398 (n + 2)).toNat

end

end A184836.P3782725800561778419

/-! ## A184836.P17136589208697345600

`A120738(A187829(n+1))-1`
-/

namespace A184836.P17136589208697345600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 (A187829 (n + 1)).toNat - 1

end

end A184836.P17136589208697345600

/-!
# A184837: a(n) = n + floor(n*t) + floor(n*t^2) + floor(n/t) + floor(n/t^2), where t is the pentanacci constant.

The programs for A184837, there is no canonical definition to state claims against.
-/

/-! ## A184837.P10757717375283726519

`A100549(A130131(n+1))+A155095(n+1)-n`
-/

namespace A184837.P10757717375283726519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100549 (A130131 (n + 1)).toNat + (A155095 (n + 1) - (n : ℤ))

end

end A184837.P10757717375283726519

/-! ## A184837.P7771561012521399616

`A047218(3*(n+1))+A010059(A003418(n))`
-/

namespace A184837.P7771561012521399616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047218 (3 * (n + 1)) + A010059 (A003418 n).toNat

end

end A184837.P7771561012521399616

/-! ## A184837.P17946393323610331143

`A256269(A378427(n))+A047209(3*(n+1))`
-/

namespace A184837.P17946393323610331143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256269 (A378427 n).toNat + A047209 (3 * (n + 1))

end

end A184837.P17946393323610331143

/-! ## A184837.P3655255823304228583

`A295889(A029895(n))+A029919(3*n+2)`
-/

namespace A184837.P3655255823304228583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295889 (A029895 n).toNat + A029919 (3 * n + 2)

end

end A184837.P3655255823304228583

/-! ## A184837.P587232749077170152

`A047211(3*n+2)+A046698(A319616(n))`
-/

namespace A184837.P587232749077170152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (3 * n + 2) + A046698 (A319616 n).toNat

end

end A184837.P587232749077170152

/-!
# A184838: a(n) = n + floor(n*t) + floor(n*t^2) + floor(n*t^3) + floor(n/t), where t is the pentanacci constant.

The programs for A184838, there is no canonical definition to state claims against.
-/

/-! ## A184838.P1798212210329100844

`15*n+14-A136690(A073271(2*n+5)²)`
-/

namespace A184838.P1798212210329100844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n + 14 : ℤ) - A136690 (A073271 (2 * n + 5) ^ 2).toNat

end

end A184838.P1798212210329100844

/-! ## A184838.P18125276295794419091

`A349297(A018797(n+2))+A008585(5*n+4)`
-/

namespace A184838.P18125276295794419091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349297 (A018797 (n + 2)).toNat + A008585 (5 * n + 4)

end

end A184838.P18125276295794419091

/-! ## A184838.P8391114060844786189

`A297469(3*n+2)+A271344(A099612(n))`
-/

namespace A184838.P8391114060844786189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297469 (3 * n + 2) + A271344 (A099612 n).toNat

end

end A184838.P8391114060844786189

/-! ## A184838.P9952392643468353156

`A020987(A197159(n+1))+A016873(3*n+2)`
-/

namespace A184838.P9952392643468353156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 (A197159 (n + 1)).toNat + A016873 (3 * n + 2)

end

end A184838.P9952392643468353156

/-!
# A184839: a(n) = n + floor(n*t) + floor(n*t^2) + floor(n*t^3) + floor(n*t^4), where t is the pentanacci constant.

The programs for A184839, there is no canonical definition to state claims against.
-/

/-! ## A184839.P6463619836162241985

`A017341(3*n+2)-A102669(A087885(n+1))`
-/

namespace A184839.P6463619836162241985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (3 * n + 2) - A102669 (A087885 (n + 1)).toNat

end

end A184839.P6463619836162241985

/-! ## A184839.P9219908192980099818

`A183992(A004771(n)+1)+3`
-/

namespace A184839.P9219908192980099818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183992 (A004771 n + 1).toNat + 3

end

end A184839.P9219908192980099818

/-! ## A184839.P13232695474548708498

`A183992(A365886(n+1))+3`
-/

namespace A184839.P13232695474548708498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183992 (A365886 (n + 1)).toNat + 3

end

end A184839.P13232695474548708498

/-!
# A184840: Number of strings of numbers x(i=1..n) in 0..n with sum i*x(i)^4 equal to n^5.

The programs for A184840, there is no canonical definition to state claims against.
-/

/-! ## A184840.P16609569007713584809

`A184848(∑[4*n]+1)`
-/

namespace A184840.P16609569007713584809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184840.P16609569007713584809

/-! ## A184840.P16223678128997634245

`A184848(A001844(n))+char[12]`
-/

namespace A184840.P16223678128997634245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184840.P16223678128997634245

/-! ## A184840.P13226183317871099069

`A184848(A001844(n))*A361338(n)`
-/

namespace A184840.P13226183317871099069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A001844 n).toNat * A361338 n

end

end A184840.P13226183317871099069

/-! ## A184840.P17393928624446841513

`A184848(A001844(n))%A017488(n)`
-/

namespace A184840.P17393928624446841513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184848 (A001844 n).toNat) (A017488 n)

end

end A184840.P17393928624446841513

/-! ## A184840.P4977305726833820101

`gcd(A000038(n), A184848(A001844(n)))`
-/

namespace A184840.P4977305726833820101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A184848 (A001844 n).toNat)

end

end A184840.P4977305726833820101

/-!
# A184841: Number of strings of numbers x(i=1..n) in 0..2 with sum i*x(i)^4 equal to n*16.

The programs for A184841, there is no canonical definition to state claims against.
-/

/-! ## A184841.P4115002846495850877

`A184848(∑[n+2])`
-/

namespace A184841.P4115002846495850877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184841.P4115002846495850877

/-! ## A184841.P13116141645168719234

`or(char[1], A184848(A000096(n+1)))`
-/

namespace A184841.P13116141645168719234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184848 (A000096 (n + 1)).toNat)

end

end A184841.P13116141645168719234

/-! ## A184841.P461881964867324762

`A184848(A000096(n+1))%A184725(n+1)`
-/

namespace A184841.P461881964867324762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184848 (A000096 (n + 1)).toNat) (A184725 (n + 1))

end

end A184841.P461881964867324762

/-! ## A184841.P4110916530388024571

`A007318(C(2, n))*A184848(A000096(n+1))`
-/

namespace A184841.P4110916530388024571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184848 (A000096 (n + 1)).toNat

end

end A184841.P4110916530388024571

/-! ## A184841.P16426293511782046549

`A184848(A000096(n+1))/A007318(C(n, 2))`
-/

namespace A184841.P16426293511782046549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184848 (A000096 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A184841.P16426293511782046549

/-!
# A184842: Number of strings of numbers x(i=1..n) in 0..3 with sum i*x(i)^4 equal to n*81.

The programs for A184842, there is no canonical definition to state claims against.
-/

/-! ## A184842.P807979290281223468

`A184848(∑[n+3]+1)`
-/

namespace A184842.P807979290281223468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184842.P807979290281223468

/-! ## A184842.P13342370162802505177

`or(char[1], A184848(A034856(n+2)))`
-/

namespace A184842.P13342370162802505177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184848 (A034856 (n + 2)).toNat)

end

end A184842.P13342370162802505177

/-! ## A184842.P9769786720534951744

`A184848(Δ[A008778(n)])%A000108(n+2)`
-/

namespace A184842.P9769786720534951744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184848 (f1 (n + 1) - f1 n).toNat) (A000108 (n + 2))

end

end A184842.P9769786720534951744

/-! ## A184842.P1034889279584382893

`A184848(A034856(n+2))%A030281(n+1)`
-/

namespace A184842.P1034889279584382893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184848 (A034856 (n + 2)).toNat) (A030281 (n + 1))

end

end A184842.P1034889279584382893

/-! ## A184842.P8083124791155762432

`A007318(C(n, 2))*A184848(A034856(n+2))`
-/

namespace A184842.P8083124791155762432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A184848 (A034856 (n + 2)).toNat

end

end A184842.P8083124791155762432

/-!
# A184843: Number of strings of numbers x(i=1..n) in 0..4 with sum i*x(i)^4 equal to n*256.

The programs for A184843, there is no canonical definition to state claims against.
-/

/-! ## A184843.P7720391804531578577

`A184848(∑[n+4]+3)`
-/

namespace A184843.P7720391804531578577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A184843.P7720391804531578577

/-! ## A184843.P7504062545206072765

`A184848(A056000(n)+7)+char[22]`
-/

namespace A184843.P7504062545206072765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A056000 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184843.P7504062545206072765

/-! ## A184843.P13692450822686903938

`gcd(11, A007318(n))*A184848(A056000(n)+7)`
-/

namespace A184843.P13692450822686903938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A184848 (A056000 n + 7).toNat

end

end A184843.P13692450822686903938

/-! ## A184843.P2840527924086256295

`A000041(C(n, 64))*A184848(A056000(n)+7)`
-/

namespace A184843.P2840527924086256295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A184848 (A056000 n + 7).toNat

end

end A184843.P2840527924086256295

/-! ## A184843.P8216316154327073635

`A184848(A056000(n)+7)%A000032(n+4)²`
-/

namespace A184843.P8216316154327073635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184848 (A056000 n + 7).toNat) (A000032 (n + 4) ^ 2)

end

end A184843.P8216316154327073635

/-!
# A184844: Number of strings of numbers x(i=1..n) in 0..5 with sum i*x(i)^4 equal to n*625.

The programs for A184844, there is no canonical definition to state claims against.
-/

/-! ## A184844.P10363036709160750321

`A184848(∑[n+5]+6)`
-/

namespace A184844.P10363036709160750321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184844.P10363036709160750321

/-! ## A184844.P13901969391395431936

`A184848(A046691(n+3))+char[19]`
-/

namespace A184844.P13901969391395431936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184844.P13901969391395431936

/-! ## A184844.P17083747613076163503

`1/A184848(Δ[A264443(n)])^-1`
-/

namespace A184844.P17083747613076163503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A184848 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (-1 : ℤ)

end

end A184844.P17083747613076163503

/-! ## A184844.P17030799466174953216

`A000041(C(2, n+2))*A184848(A046691(n+3))`
-/

namespace A184844.P17030799466174953216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A184848 (A046691 (n + 3)).toNat

end

end A184844.P17030799466174953216

/-! ## A184844.P9611708771931737734

`A184848(A046691(n+3))%A000032(A000040(n+1))`
-/

namespace A184844.P9611708771931737734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184848 (A046691 (n + 3)).toNat) (A000032 (A000040 (n + 1)).toNat)

end

end A184844.P9611708771931737734

/-!
# A184845: Number of strings of numbers x(i=1..n) in 0..6 with sum i*x(i)^4 equal to n*1296.

The programs for A184845, there is no canonical definition to state claims against.
-/

/-! ## A184845.P9068370341003446796

`A184848(A052905(n+3))`
-/

namespace A184845.P9068370341003446796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A052905 (n + 3)).toNat

end

end A184845.P9068370341003446796

/-! ## A184845.P11598263046985457544

`A184848(A302537(n)+15)`
-/

namespace A184845.P11598263046985457544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A302537 n + 15).toNat

end

end A184845.P11598263046985457544

/-! ## A184845.P2627814724017206559

`A184848(A056119(n)+16)`
-/

namespace A184845.P2627814724017206559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A056119 n + 16).toNat

end

end A184845.P2627814724017206559

/-! ## A184845.P4808899122879893687

`A184848(eq[3, A219347(n)])`
-/

namespace A184845.P4808899122879893687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184845.P4808899122879893687

/-! ## A184845.P16889641761778445762

`A184848(eq[5, A152157(n)])`
-/

namespace A184845.P16889641761778445762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184845.P16889641761778445762

/-!
# A184846: Number of strings of numbers x(i=1..n) in 0..7 with sum i*x(i)^4 equal to n*2401.

The programs for A184846, there is no canonical definition to state claims against.
-/

/-! ## A184846.P14307319792245091914

`A184848(A055999(n+4))`
-/

namespace A184846.P14307319792245091914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A055999 (n + 4)).toNat

end

end A184846.P14307319792245091914

/-! ## A184846.P10810993559530281440

`A184848(eq[4, A219347(n)])`
-/

namespace A184846.P10810993559530281440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184846.P10810993559530281440

/-! ## A184846.P5209403775518894858

`A184848(eq[6, A193592(n)])`
-/

namespace A184846.P5209403775518894858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184846.P5209403775518894858

/-! ## A184846.P665491644812284073

`A184848(eq[7, A152157(n)])`
-/

namespace A184846.P665491644812284073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184846.P665491644812284073

/-! ## A184846.P9682070134133407316

`A184848(Δ[A023551(n+2)])`
-/

namespace A184846.P9682070134133407316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (f1 (n + 1) - f1 n).toNat

end

end A184846.P9682070134133407316

/-!
# A184847: Number of strings of numbers x(i=1..n) in 0..8 with sum i*x(i)^4 equal to n*4096.

The programs for A184847, there is no canonical definition to state claims against.
-/

/-! ## A184847.P11006415071525789006

`A184848(eq[5, A219347(n)])`
-/

namespace A184847.P11006415071525789006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184847.P11006415071525789006

/-! ## A184847.P16756466307101155970

`A184848(eq[7, A193592(n)])`
-/

namespace A184847.P16756466307101155970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184847.P16756466307101155970

/-! ## A184847.P3548217703314359585

`A184848(A034856(n+7)-5)`
-/

namespace A184847.P3548217703314359585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A034856 (n + 7) - 5).toNat

end

end A184847.P3548217703314359585

/-! ## A184847.P9253347970368597974

`A184848(A000124(n+8)-8)`
-/

namespace A184847.P9253347970368597974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A000124 (n + 8) - 8).toNat

end

end A184847.P9253347970368597974

/-! ## A184847.P15760073914689396698

`A184848(eq[12, A185782(n+1)])`
-/

namespace A184847.P15760073914689396698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184847.P15760073914689396698

/-!
# A184848: T(n,k)=Number of strings of numbers x(i=1..n) in 0..k with sum i*x(i)^4 equal to n*k^4.

The programs for A184848, there is no canonical definition to state claims against.
-/

/-! ## A184848.P10257066858730752485

`A331128(A184720(A014132(n+1))²)`
-/

namespace A184848.P10257066858730752485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331128 (A184720 (A014132 (n + 1)).toNat ^ 2).toNat

end

end A184848.P10257066858730752485

/-! ## A184848.P8151861860528713379

`A353863(A322308(n)+A002260(n+1))`
-/

namespace A184848.P8151861860528713379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353863 (A322308 n + A002260 (n + 1)).toNat

end

end A184848.P8151861860528713379

/-! ## A184848.P14108773876262655110

`A050361(A059268(n)*A069894(n+3))`
-/

namespace A184848.P14108773876262655110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A059268 n * A069894 (n + 3)).toNat

end

end A184848.P14108773876262655110

/-! ## A184848.P7470407764016185551

`A325277(or(A184720(n+1), A322308(n)))`
-/

namespace A184848.P7470407764016185551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325277 (Int.lor (A184720 (n + 1)) (A322308 n)).toNat

end

end A184848.P7470407764016185551

/-! ## A184848.P12247728182119603856

`A332577(A002260(n+1)%A057219(n))`
-/

namespace A184848.P12247728182119603856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 (Int.tmod (A002260 (n + 1)) (A057219 n)).toNat

end

end A184848.P12247728182119603856

/-!
# A184849: Number of strings of numbers x(i=1..5) in 0..n with sum i*x(i)^4 equal to 5*n^4.

The programs for A184849, there is no canonical definition to state claims against.
-/

/-! ## A184849.P740187749969469197

`A184848(A167499(A000265(n+1)+2))`
-/

namespace A184849.P740187749969469197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A167499 (A000265 (n + 1) + 2).toNat).toNat

end

end A184849.P740187749969469197

/-! ## A184849.P16667260897396677252

`A184848(∑[n+4]+11)`
-/

namespace A184849.P16667260897396677252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A184849.P16667260897396677252

/-! ## A184849.P15927095355338629548

`A184848(eq[6, A131818(n+1)])%20`
-/

namespace A184849.P15927095355338629548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 20

end

end A184849.P15927095355338629548

/-! ## A184849.P10699978701072074123

`A184848(eq[6, A131818(n+1)])*A304042(n)`
-/

namespace A184849.P10699978701072074123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A304042 n

end

end A184849.P10699978701072074123

/-!
# A184850: Number of strings of numbers x(i=1..6) in 0..n with sum i*x(i)^4 equal to 6*n^4.

The programs for A184850, there is no canonical definition to state claims against.
-/

/-! ## A184850.P6616457319310071803

`A184848(A056115(n)+21)`
-/

namespace A184850.P6616457319310071803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A056115 n + 21).toNat

end

end A184850.P6616457319310071803

/-! ## A184850.P10107810161360464414

`A184848(Δ[A255994(n+2)])`
-/

namespace A184850.P10107810161360464414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (f1 (n + 1) - f1 n).toNat

end

end A184850.P10107810161360464414

/-! ## A184850.P904631358396951603

`A184848(∑[A020710(n)]+16)`
-/

namespace A184850.P904631358396951603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A184850.P904631358396951603

/-! ## A184850.P2807035248338657466

`A184848(A167499(n+4)+1)`
-/

namespace A184850.P2807035248338657466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A167499 (n + 4) + 1).toNat

end

end A184850.P2807035248338657466

/-! ## A184850.P5215688991643377306

`A184848(A167487(n+4)-1)`
-/

namespace A184850.P5215688991643377306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A167487 (n + 4) - 1).toNat

end

end A184850.P5215688991643377306

/-!
# A184851: Number of strings of numbers x(i=1..7) in 0..n with sum i*x(i)^4 equal to 7*n^4.

The programs for A184851, there is no canonical definition to state claims against.
-/

/-! ## A184851.P12978300070020852657

`A184848(∑[n+7]+21-n)`
-/

namespace A184851.P12978300070020852657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (∑ j ∈ Finset.range (n + 1), f1 j + 21 - n)

end

end A184851.P12978300070020852657

/-! ## A184851.P13818527768780992382

`A184848(A167614(n+5)+4)%A088319(n+1)`
-/

namespace A184851.P13818527768780992382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184848 (A167614 (n + 5) + 4).toNat) (A088319 (n + 1))

end

end A184851.P13818527768780992382

/-!
# A184852: Number of strings of numbers x(i=1..8) in 0..n with sum i*x(i)^4 equal to 8*n^4.

The programs for A184852, there is no canonical definition to state claims against.
-/

/-! ## A184852.P636669595280778937

`A184848(A000124(n+7)+7)`
-/

namespace A184852.P636669595280778937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A000124 (n + 7) + 7).toNat

end

end A184852.P636669595280778937

/-! ## A184852.P2591816060886620264

`A184848(A000217(n+7)+8)`
-/

namespace A184852.P2591816060886620264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A000217 (n + 7) + 8).toNat

end

end A184852.P2591816060886620264

/-! ## A184852.P9817780448724267083

`A184848(A052905(n+4)+13)`
-/

namespace A184852.P9817780448724267083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A052905 (n + 4) + 13).toNat

end

end A184852.P9817780448724267083

/-! ## A184852.P7123153857974199373

`A184848(A055999(n+4)+14)`
-/

namespace A184852.P7123153857974199373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (A055999 (n + 4) + 14).toNat

end

end A184852.P7123153857974199373

/-! ## A184852.P5726494436648615598

`A184848(eq[9, A131818(n+1)])`
-/

namespace A184852.P5726494436648615598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184852.P5726494436648615598

/-!
# A184855: Numbers m such that prime(m) is of the form (k*e); complement of A184858.

The programs for A184855, the canonical program `A184855.P8976664609453704411` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184855 has offset 1).

The definition of A184855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3563 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184855.P13349525032660989899

`A000720(p?[floor(e*n)])`
-/

namespace A184855.P13349525032660989899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184855.P13349525032660989899

namespace A184855

/-- `A000720(p?[floor(e*n)])` -/
def P13349525032660989899.Spec : Prop :=
  ∀ n, P13349525032660989899.a n = A184855 (n + 1)

end A184855

/-! ## A184855.P8976664609453704411

`A000720(A077545(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184855

/-- `A000720(A077545(n+1))` -/
def P8976664609453704411.Spec : Prop :=
  ∀ n, P8976664609453704411.a n = A184855 (n + 1)

theorem P8976664609453704411.correct : P8976664609453704411.Spec := by
  intro n
  simp only [A184855, Nat.add_sub_cancel]

end A184855

/-! ## A184855.P17086918351451875135

`sqrt(A289506(p?[floor(e*n)]))`
-/

namespace A184855.P17086918351451875135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A289506 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℝ)

end

end A184855.P17086918351451875135

namespace A184855

/-- `sqrt(A289506(p?[floor(e*n)]))` -/
def P17086918351451875135.Spec : Prop :=
  ∀ n, P17086918351451875135.a n = (A184855 (n + 1) : ℝ)

end A184855

/-! ## A184855.P3482020509206879911

`A003963(p?[floor(e*n)])`
-/

namespace A184855.P3482020509206879911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184855.P3482020509206879911

namespace A184855

/-- `A003963(p?[floor(e*n)])` -/
def P3482020509206879911.Spec : Prop :=
  ∀ n, P3482020509206879911.a n = A184855 (n + 1)

end A184855

/-! ## A184855.P14859942137157647090

`A026233(p?[floor(e*n)])`
-/

namespace A184855.P14859942137157647090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184855.P14859942137157647090

namespace A184855

/-- `A026233(p?[floor(e*n)])` -/
def P14859942137157647090.Spec : Prop :=
  ∀ n, P14859942137157647090.a n = A184855 (n + 1)

end A184855

/-! ## A184855.P3152898993817063722

`A026238(p?[floor(e*n)])`
-/

namespace A184855.P3152898993817063722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184855.P3152898993817063722

namespace A184855

/-- `A026238(p?[floor(e*n)])` -/
def P3152898993817063722.Spec : Prop :=
  ∀ n, P3152898993817063722.a n = A184855 (n + 1)

end A184855

/-! ## A184855.P266695620149759727

`A049084(p?[floor(e*n)])`
-/

namespace A184855.P266695620149759727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184855.P266695620149759727

namespace A184855

/-- `A049084(p?[floor(e*n)])` -/
def P266695620149759727.Spec : Prop :=
  ∀ n, P266695620149759727.a n = A184855 (n + 1)

end A184855

/-! ## A184855.P18313854894492320640

`A055396(p?[floor(e*n)])`
-/

namespace A184855.P18313854894492320640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184855.P18313854894492320640

namespace A184855

/-- `A055396(p?[floor(e*n)])` -/
def P18313854894492320640.Spec : Prop :=
  ∀ n, P18313854894492320640.a n = A184855 (n + 1)

end A184855

/-! ## A184855.P13798390115910108777

`A056239(p?[floor(e*n)])`
-/

namespace A184855.P13798390115910108777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184855.P13798390115910108777

namespace A184855

/-- `A056239(p?[floor(e*n)])` -/
def P13798390115910108777.Spec : Prop :=
  ∀ n, P13798390115910108777.a n = A184855 (n + 1)

end A184855

/-! ## A184855.P1909013391354109254

`A067004(p?[floor(e*n)])`
-/

namespace A184855.P1909013391354109254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184855.P1909013391354109254

namespace A184855

/-- `A067004(p?[floor(e*n)])` -/
def P1909013391354109254.Spec : Prop :=
  ∀ n, P1909013391354109254.a n = A184855 (n + 1)

end A184855

/-! ## A184855.P10752915663343969165

`record[A055396(floor(e*(n+1)))]`
-/

namespace A184855.P10752915663343969165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 ⌊Real.exp 1 * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184855.P10752915663343969165

namespace A184855

/-- `record[A055396(floor(e*(n+1)))]` -/
def P10752915663343969165.Spec : Prop :=
  ∀ n, P10752915663343969165.a n = A184855 (n + 1)

end A184855

/-!
# A184856: Primes of the form floor(k*e/(e-1)).

The programs for A184856, the canonical program `A184856.P17031283218585029754` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184856 has offset 1).

The definition of A184856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184856.P17031283218585029754

`A000040(A184858(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184856

/-- `A000040(A184858(n+1))` -/
def P17031283218585029754.Spec : Prop :=
  ∀ n, P17031283218585029754.a n = A184856 (n + 1)

theorem P17031283218585029754.correct : P17031283218585029754.Spec := by
  intro n
  simp only [A184856, Nat.add_sub_cancel]

end A184856

/-! ## A184856.P14425824110909532670

`p?[comp[floor(e*n)]]`
-/

namespace A184856.P14425824110909532670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A184856.P14425824110909532670

namespace A184856

/-- `p?[comp[floor(e*n)]]` -/
def P14425824110909532670.Spec : Prop :=
  ∀ n, (P14425824110909532670.a n : ℤ) = A184856 (n + 1)

end A184856

/-! ## A184856.P10108562180532591296

`or(1, p?[A054385(n+1)])`
-/

namespace A184856.P10108562180532591296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A184856.P10108562180532591296

namespace A184856

/-- `or(1, p?[A054385(n+1)])` -/
def P10108562180532591296.Spec : Prop :=
  ∀ n, P10108562180532591296.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P1469396404930529398

`A054385(A184857(n+1))`
-/

namespace A184856.P1469396404930529398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (A184857 (n + 1)).toNat

end

end A184856.P1469396404930529398

namespace A184856

/-- `A054385(A184857(n+1))` -/
def P1469396404930529398.Spec : Prop :=
  ∀ n, P1469396404930529398.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P4714910437268012490

`A000027(p?[A054385(n+1)])`
-/

namespace A184856.P4714910437268012490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184856.P4714910437268012490

namespace A184856

/-- `A000027(p?[A054385(n+1)])` -/
def P4714910437268012490.Spec : Prop :=
  ∀ n, P4714910437268012490.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P9368018808906686494

`record[A006530(A054385(n+2))]`
-/

namespace A184856.P9368018808906686494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A054385 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184856.P9368018808906686494

namespace A184856

/-- `record[A006530(A054385(n+2))]` -/
def P9368018808906686494.Spec : Prop :=
  ∀ n, P9368018808906686494.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P12704501986180119160

`filter[A054385(n+1), A010051(#)]`
-/

namespace A184856.P12704501986180119160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184856.P12704501986180119160

namespace A184856

/-- `filter[A054385(n+1), A010051(#)]` -/
def P12704501986180119160.Spec : Prop :=
  ∀ n, P12704501986180119160.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P8316170586114695904

`A006530(2*p?[A054385(n+1)])`
-/

namespace A184856.P8316170586114695904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184856.P8316170586114695904

namespace A184856

/-- `A006530(2*p?[A054385(n+1)])` -/
def P8316170586114695904.Spec : Prop :=
  ∀ n, P8316170586114695904.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P18217693093130325107

`A006530(lcm(2, p?[A054385(n+1)]))`
-/

namespace A184856.P18217693093130325107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A184856.P18217693093130325107

namespace A184856

/-- `A006530(lcm(2, p?[A054385(n+1)]))` -/
def P18217693093130325107.Spec : Prop :=
  ∀ n, P18217693093130325107.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P3348275943400413142

`∑{d}[p?[A054385(n+1)], A000010(#)]`
-/

namespace A184856.P3348275943400413142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A184856.P3348275943400413142

namespace A184856

/-- `∑{d}[p?[A054385(n+1)], A000010(#)]` -/
def P3348275943400413142.Spec : Prop :=
  ∀ n, P3348275943400413142.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P2373424333553204382

`∏{p}[p?[A054385(n+1)], A006530(#)]`
-/

namespace A184856.P2373424333553204382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A184856.P2373424333553204382

namespace A184856

/-- `∏{p}[p?[A054385(n+1)], A006530(#)]` -/
def P2373424333553204382.Spec : Prop :=
  ∀ n, P2373424333553204382.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P669425072377548719

`∩[A000040(n+1), A054385(n+1)]`
-/

namespace A184856.P669425072377548719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184856.P669425072377548719

namespace A184856

/-- `∩[A000040(n+1), A054385(n+1)]` -/
def P669425072377548719.Spec : Prop :=
  ∀ n, (P669425072377548719.a n : ℤ) = A184856 (n + 1)

end A184856

/-! ## A184856.P7203202960328243834

`∩[A004139(n+1), A054385(n+1)]`
-/

namespace A184856.P7203202960328243834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184856.P7203202960328243834

namespace A184856

/-- `∩[A004139(n+1), A054385(n+1)]` -/
def P7203202960328243834.Spec : Prop :=
  ∀ n, (P7203202960328243834.a n : ℤ) = A184856 (n + 1)

end A184856

/-! ## A184856.P10088660125152956880

`∩[A045319(n+1), A054385(n+1)]`
-/

namespace A184856.P10088660125152956880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184856.P10088660125152956880

namespace A184856

/-- `∩[A045319(n+1), A054385(n+1)]` -/
def P10088660125152956880.Spec : Prop :=
  ∀ n, (P10088660125152956880.a n : ℤ) = A184856 (n + 1)

end A184856

/-! ## A184856.P8118089000077891531

`∩[A054385(n+1), A065091(n+1)]`
-/

namespace A184856.P8118089000077891531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184856.P8118089000077891531

namespace A184856

/-- `∩[A054385(n+1), A065091(n+1)]` -/
def P8118089000077891531.Spec : Prop :=
  ∀ n, (P8118089000077891531.a n : ℤ) = A184856 (n + 1)

end A184856

/-! ## A184856.P15963583233305910043

`∩[A054385(n+1), A182986(n+1)]`
-/

namespace A184856.P15963583233305910043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184856.P15963583233305910043

namespace A184856

/-- `∩[A054385(n+1), A182986(n+1)]` -/
def P15963583233305910043.Spec : Prop :=
  ∀ n, (P15963583233305910043.a n : ℤ) = A184856 (n + 1)

end A184856

/-! ## A184856.P8542162874494051301

`A000007(n+1)+p?[A054385(n+1)]`
-/

namespace A184856.P8542162874494051301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184856.P8542162874494051301

namespace A184856

/-- `A000007(n+1)+p?[A054385(n+1)]` -/
def P8542162874494051301.Spec : Prop :=
  ∀ n, P8542162874494051301.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P2304093723581331612

`p?[A054385(n+1)]%A002144(n+1)`
-/

namespace A184856.P2304093723581331612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002144 (n + 1))

end

end A184856.P2304093723581331612

namespace A184856

/-- `p?[A054385(n+1)]%A002144(n+1)` -/
def P2304093723581331612.Spec : Prop :=
  ∀ n, P2304093723581331612.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P14339413026454108184

`filter[A054385(n+2), A080339(#)]`
-/

namespace A184856.P14339413026454108184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A184856.P14339413026454108184

namespace A184856

/-- `filter[A054385(n+2), A080339(#)]` -/
def P14339413026454108184.Spec : Prop :=
  ∀ n, P14339413026454108184.a n = A184856 (n + 1)

end A184856

/-! ## A184856.P11928163492560963616

`filter[A054385(n+2), A080545(#)]`
-/

namespace A184856.P11928163492560963616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A184856.P11928163492560963616

namespace A184856

/-- `filter[A054385(n+2), A080545(#)]` -/
def P11928163492560963616.Spec : Prop :=
  ∀ n, P11928163492560963616.a n = A184856 (n + 1)

end A184856

/-!
# A184857: Numbers k such that floor(k*e/(e-1)) is prime.

The programs for A184857, the canonical program `A184857.P1403224485017277280` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184857 has offset 1).

The definition of A184857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184857.P1403224485017277280

`ceil((1-1/e)*p?[A054385(n+1)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184857

/-- `ceil((1-1/e)*p?[A054385(n+1)])` -/
def P1403224485017277280.Spec : Prop :=
  ∀ n, P1403224485017277280.a n = A184857 (n + 1)

theorem P1403224485017277280.correct : P1403224485017277280.Spec := by
  intro n
  simp only [A184857, Nat.add_sub_cancel]

end A184857

/-! ## A184857.P4331932163731297992

`lt[A000005(A184590(n+1)+1), 3]+2`
-/

namespace A184857.P4331932163731297992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A184590 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A184857.P4331932163731297992

namespace A184857

/-- `lt[A000005(A184590(n+1)+1), 3]+2` -/
def P4331932163731297992.Spec : Prop :=
  ∀ n, (P4331932163731297992.a n : ℤ) = A184857 (n + 1)

end A184857

/-! ## A184857.P3977807387182521761

`lt[n+1, A014963(comp[floor(e*n)])]+1`
-/

namespace A184857.P3977807387182521761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A184857.P3977807387182521761

namespace A184857

/-- `lt[n+1, A014963(comp[floor(e*n)])]+1` -/
def P3977807387182521761.Spec : Prop :=
  ∀ n, (P3977807387182521761.a n : ℤ) = A184857 (n + 1)

end A184857

/-! ## A184857.P5668869328933164588

`record[(n+2)%A014963(A054385(n+2))]`
-/

namespace A184857.P5668869328933164588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A014963 (A054385 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184857.P5668869328933164588

namespace A184857

/-- `record[(n+2)%A014963(A054385(n+2))]` -/
def P5668869328933164588.Spec : Prop :=
  ∀ n, P5668869328933164588.a n = A184857 (n + 1)

end A184857

/-! ## A184857.P17566012784316434475

`A194640(p?[comp[floor(e*n)]])`
-/

namespace A184857.P17566012784316434475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A184857.P17566012784316434475

namespace A184857

/-- `A194640(p?[comp[floor(e*n)]])` -/
def P17566012784316434475.Spec : Prop :=
  ∀ n, P17566012784316434475.a n = A184857 (n + 1)

end A184857

/-! ## A184857.P10018367789679628049

`A194640(A184856(n+1))`
-/

namespace A184857.P10018367789679628049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A184856 (n + 1)).toNat

end

end A184857.P10018367789679628049

namespace A184857

/-- `A194640(A184856(n+1))` -/
def P10018367789679628049.Spec : Prop :=
  ∀ n, P10018367789679628049.a n = A184857 (n + 1)

end A184857

/-! ## A184857.P17802299754203814232

`A194640(or(1, p?[A054385(n+1)]))`
-/

namespace A184857.P17802299754203814232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A184857.P17802299754203814232

namespace A184857

/-- `A194640(or(1, p?[A054385(n+1)]))` -/
def P17802299754203814232.Spec : Prop :=
  ∀ n, P17802299754203814232.a n = A184857 (n + 1)

end A184857

/-! ## A184857.P3316586905323477328

`∏{d}[A000040(A184858(n+1)), A194640(#)]`
-/

namespace A184857.P3316586905323477328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A194640 d

end

end A184857.P3316586905323477328

namespace A184857

/-- `∏{d}[A000040(A184858(n+1)), A194640(#)]` -/
def P3316586905323477328.Spec : Prop :=
  ∀ n, P3316586905323477328.a n = A184857 (n + 1)

end A184857

/-!
# A184858: Numbers m such that prime(m) is of the form floor(k*e/(e-1)); complement of A184855.

The programs for A184858, the canonical program `A184858.P6696207604000516288` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184858 has offset 1).

The definition of A184858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184858.P6696207604000516288

`comp[A184855(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184858

/-- `comp[A184855(n+1)-1]+1` -/
def P6696207604000516288.Spec : Prop :=
  ∀ n, (P6696207604000516288.a n : ℤ) = A184858 (n + 1)

theorem P6696207604000516288.correct : P6696207604000516288.Spec := by
  intro n
  simp only [A184858, Nat.add_sub_cancel]

end A184858

/-! ## A184858.P4599926166842622483

`A000720(A184856(n+1))`
-/

namespace A184858.P4599926166842622483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184856 (n + 1)).toNat

end

end A184858.P4599926166842622483

namespace A184858

/-- `A000720(A184856(n+1))` -/
def P4599926166842622483.Spec : Prop :=
  ∀ n, P4599926166842622483.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P6332671293851651893

`record[A263111(A054385(n+1))]`
-/

namespace A184858.P6332671293851651893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (A054385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184858.P6332671293851651893

namespace A184858

/-- `record[A263111(A054385(n+1))]` -/
def P6332671293851651893.Spec : Prop :=
  ∀ n, P6332671293851651893.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P17739137297027004388

`A000720(p?[A054385(n+1)])`
-/

namespace A184858.P17739137297027004388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P17739137297027004388

namespace A184858

/-- `A000720(p?[A054385(n+1)])` -/
def P17739137297027004388.Spec : Prop :=
  ∀ n, P17739137297027004388.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P14735504079068673427

`A058933(p?[A054385(n+1)])`
-/

namespace A184858.P14735504079068673427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P14735504079068673427

namespace A184858

/-- `A058933(p?[A054385(n+1)])` -/
def P14735504079068673427.Spec : Prop :=
  ∀ n, P14735504079068673427.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P7698090319753622856

`A066328(p?[A054385(n+1)])`
-/

namespace A184858.P7698090319753622856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P7698090319753622856

namespace A184858

/-- `A066328(p?[A054385(n+1)])` -/
def P7698090319753622856.Spec : Prop :=
  ∀ n, P7698090319753622856.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P18050605260153231986

`A003963(p?[A054385(n+1)])`
-/

namespace A184858.P18050605260153231986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P18050605260153231986

namespace A184858

/-- `A003963(p?[A054385(n+1)])` -/
def P18050605260153231986.Spec : Prop :=
  ∀ n, P18050605260153231986.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P3253254668320449947

`A026233(p?[A054385(n+1)])`
-/

namespace A184858.P3253254668320449947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P3253254668320449947

namespace A184858

/-- `A026233(p?[A054385(n+1)])` -/
def P3253254668320449947.Spec : Prop :=
  ∀ n, P3253254668320449947.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P2447561194408885636

`A026238(p?[A054385(n+1)])`
-/

namespace A184858.P2447561194408885636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P2447561194408885636

namespace A184858

/-- `A026238(p?[A054385(n+1)])` -/
def P2447561194408885636.Spec : Prop :=
  ∀ n, P2447561194408885636.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P16596953678746241309

`A049084(p?[A054385(n+1)])`
-/

namespace A184858.P16596953678746241309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P16596953678746241309

namespace A184858

/-- `A049084(p?[A054385(n+1)])` -/
def P16596953678746241309.Spec : Prop :=
  ∀ n, P16596953678746241309.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P13079327905718637572

`A055396(p?[A054385(n+1)])`
-/

namespace A184858.P13079327905718637572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P13079327905718637572

namespace A184858

/-- `A055396(p?[A054385(n+1)])` -/
def P13079327905718637572.Spec : Prop :=
  ∀ n, P13079327905718637572.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P14418973292109594996

`A056239(p?[A054385(n+1)])`
-/

namespace A184858.P14418973292109594996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P14418973292109594996

namespace A184858

/-- `A056239(p?[A054385(n+1)])` -/
def P14418973292109594996.Spec : Prop :=
  ∀ n, P14418973292109594996.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P8661231034119819989

`A230980(p?[A054385(n+1)])`
-/

namespace A184858.P8661231034119819989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P8661231034119819989

namespace A184858

/-- `A230980(p?[A054385(n+1)])` -/
def P8661231034119819989.Spec : Prop :=
  ∀ n, P8661231034119819989.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P15002957651920109945

`A243503(p?[A054385(n+1)])`
-/

namespace A184858.P15002957651920109945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P15002957651920109945

namespace A184858

/-- `A243503(p?[A054385(n+1)])` -/
def P15002957651920109945.Spec : Prop :=
  ∀ n, P15002957651920109945.a n = A184858 (n + 1)

end A184858

/-! ## A184858.P14563329832098246531

`A026099(p?[A054385(n+1)])`
-/

namespace A184858.P14563329832098246531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184858.P14563329832098246531

namespace A184858

/-- `A026099(p?[A054385(n+1)])` -/
def P14563329832098246531.Spec : Prop :=
  ∀ n, P14563329832098246531.a n = A184858 (n + 1)

end A184858

/-!
# A184859: Primes of the form floor(kr+h), where r=(1+sqrt(5))/2 and h=1/2.

The programs for A184859, the canonical program `A184859.P13303099330725981754` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184859 has offset 1).

The definition of A184859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184859.P1804172548782542610

`round(ϕ*A184860(n+1))`
-/

namespace A184859.P1804172548782542610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A184860 (n + 1) : ℝ))

end

end A184859.P1804172548782542610

namespace A184859

/-- `round(ϕ*A184860(n+1))` -/
def P1804172548782542610.Spec : Prop :=
  ∀ n, P1804172548782542610.a n = A184859 (n + 1)

end A184859

/-! ## A184859.P29880523348113927

`A385538(n)+a(n-1)` with `a(0)=2`
-/

namespace A184859.P29880523348113927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A385538 n + a (n - 1)

end

end A184859.P29880523348113927

namespace A184859

/-- `A385538(n)+a(n-1)` -/
def P29880523348113927.Spec : Prop :=
  ∀ n, P29880523348113927.a n = A184859 (n + 1)

end A184859

/-! ## A184859.P17379004261938583689

`p?[round(ϕ*n)]`
-/

namespace A184859.P17379004261938583689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184859.P17379004261938583689

namespace A184859

/-- `p?[round(ϕ*n)]` -/
def P17379004261938583689.Spec : Prop :=
  ∀ n, P17379004261938583689.a n = A184859 (n + 1)

end A184859

/-! ## A184859.P13303099330725981754

`A000040(A184861(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A184859

/-- `A000040(A184861(n+1))` -/
def P13303099330725981754.Spec : Prop :=
  ∀ n, P13303099330725981754.a n = A184859 (n + 1)

theorem P13303099330725981754.correct : P13303099330725981754.Spec := by
  intro n
  simp only [A184859, Nat.add_sub_cancel]

end A184859

/-! ## A184859.P6141638948723943816

`record[A006530(round(ϕ*(n+1)))]`
-/

namespace A184859.P6141638948723943816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184859.P6141638948723943816

namespace A184859

/-- `record[A006530(round(ϕ*(n+1)))]` -/
def P6141638948723943816.Spec : Prop :=
  ∀ n, P6141638948723943816.a n = A184859 (n + 1)

end A184859

/-! ## A184859.P16775066786599412924

`record[A020639(round(ϕ*(n+1)))]`
-/

namespace A184859.P16775066786599412924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184859.P16775066786599412924

namespace A184859

/-- `record[A020639(round(ϕ*(n+1)))]` -/
def P16775066786599412924.Spec : Prop :=
  ∀ n, P16775066786599412924.a n = A184859 (n + 1)

end A184859

/-! ## A184859.P17664874952775928919

`record[A000010(round(ϕ*(n+1)))+1]`
-/

namespace A184859.P17664874952775928919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184859.P17664874952775928919

namespace A184859

/-- `record[A000010(round(ϕ*(n+1)))+1]` -/
def P17664874952775928919.Spec : Prop :=
  ∀ n, P17664874952775928919.a n = A184859 (n + 1)

end A184859

/-! ## A184859.P10140504577587981549

`∏{d}[p?[A007067(n)], #]`
-/

namespace A184859.P10140504577587981549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A184859.P10140504577587981549

namespace A184859

/-- `∏{d}[p?[A007067(n)], #]` -/
def P10140504577587981549.Spec : Prop :=
  ∀ n, (P10140504577587981549.a n : ℤ) = A184859 (n + 1)

end A184859

/-! ## A184859.P14771685523208455566

`∩[round(ϕ*n), A000040(n+1)]`
-/

namespace A184859.P14771685523208455566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184859.P14771685523208455566

namespace A184859

/-- `∩[round(ϕ*n), A000040(n+1)]` -/
def P14771685523208455566.Spec : Prop :=
  ∀ n, (P14771685523208455566.a n : ℤ) = A184859 (n + 1)

end A184859

/-! ## A184859.P17893204588994320910

`A007067(A184860(n+1))`
-/

namespace A184859.P17893204588994320910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A184860 (n + 1)).toNat

end

end A184859.P17893204588994320910

namespace A184859

/-- `A007067(A184860(n+1))` -/
def P17893204588994320910.Spec : Prop :=
  ∀ n, P17893204588994320910.a n = A184859 (n + 1)

end A184859

/-! ## A184859.P8861854303399813846

`filter[A007067(n+1), A010051(#)]`
-/

namespace A184859.P8861854303399813846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184859.P8861854303399813846

namespace A184859

/-- `filter[A007067(n+1), A010051(#)]` -/
def P8861854303399813846.Spec : Prop :=
  ∀ n, P8861854303399813846.a n = A184859 (n + 1)

end A184859

/-! ## A184859.P937080603976694442

`∩[A000040(n+1), A007067(n)]`
-/

namespace A184859.P937080603976694442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184859.P937080603976694442

namespace A184859

/-- `∩[A000040(n+1), A007067(n)]` -/
def P937080603976694442.Spec : Prop :=
  ∀ n, (P937080603976694442.a n : ℤ) = A184859 (n + 1)

end A184859

/-! ## A184859.P14332735663079858408

`∩[A008578(n+1), A007067(n)]`
-/

namespace A184859.P14332735663079858408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184859.P14332735663079858408

namespace A184859

/-- `∩[A008578(n+1), A007067(n)]` -/
def P14332735663079858408.Spec : Prop :=
  ∀ n, (P14332735663079858408.a n : ℤ) = A184859 (n + 1)

end A184859

/-! ## A184859.P16218611554053501570

`∩[A046022(n+1), A007067(n)]`
-/

namespace A184859.P16218611554053501570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184859.P16218611554053501570

namespace A184859

/-- `∩[A046022(n+1), A007067(n)]` -/
def P16218611554053501570.Spec : Prop :=
  ∀ n, (P16218611554053501570.a n : ℤ) = A184859 (n + 1)

end A184859

/-! ## A184859.P10197213219510080701

`∩[A067126(n+1), A007067(n)]`
-/

namespace A184859.P10197213219510080701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184859.P10197213219510080701

namespace A184859

/-- `∩[A067126(n+1), A007067(n)]` -/
def P10197213219510080701.Spec : Prop :=
  ∀ n, (P10197213219510080701.a n : ℤ) = A184859 (n + 1)

end A184859

/-! ## A184859.P14040078199209402496

`∩[A175787(n+1), A007067(n)]`
-/

namespace A184859.P14040078199209402496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184859.P14040078199209402496

namespace A184859

/-- `∩[A175787(n+1), A007067(n)]` -/
def P14040078199209402496.Spec : Prop :=
  ∀ n, (P14040078199209402496.a n : ℤ) = A184859 (n + 1)

end A184859

/-! ## A184859.P5895835389722475602

`record[A014963(round(ϕ*(n+1)))]`
-/

namespace A184859.P5895835389722475602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184859.P5895835389722475602

namespace A184859

/-- `record[A014963(round(ϕ*(n+1)))]` -/
def P5895835389722475602.Spec : Prop :=
  ∀ n, P5895835389722475602.a n = A184859 (n + 1)

end A184859

/-! ## A184859.P382301570020982295

`filter[A130008(n), A166946(#)]`
-/

namespace A184859.P382301570020982295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A184859.P382301570020982295

namespace A184859

/-- `filter[A130008(n), A166946(#)]` -/
def P382301570020982295.Spec : Prop :=
  ∀ n, P382301570020982295.a n = A184859 (n + 1)

end A184859

/-! ## A184859.P12743167285395090381

`eq[A072491(n), A166946(n)]`
-/

namespace A184859.P12743167285395090381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184859.P12743167285395090381

namespace A184859

/-- `eq[A072491(n), A166946(n)]` -/
def P12743167285395090381.Spec : Prop :=
  ∀ n, (P12743167285395090381.a n : ℤ) = A184859 (n + 1)

end A184859

/-! ## A184859.P12542259462164264481

`eq[A074206(n), A166946(n)]`
-/

namespace A184859.P12542259462164264481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184859.P12542259462164264481

namespace A184859

/-- `eq[A074206(n), A166946(n)]` -/
def P12542259462164264481.Spec : Prop :=
  ∀ n, (P12542259462164264481.a n : ℤ) = A184859 (n + 1)

end A184859

/-!
# A184860: Numbers k such that floor(nr+h) is prime, where r=(1+sqrt(5))/2 and h=1/2.

The programs for A184860, the canonical program `A184860.P16539278793343903838` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184860 has offset 1).

The definition of A184860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184860.P16539278793343903838

`round(A184859(n+1)/ϕ)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A184860

/-- `round(A184859(n+1)/ϕ)` -/
def P16539278793343903838.Spec : Prop :=
  ∀ n, P16539278793343903838.a n = A184860 (n + 1)

theorem P16539278793343903838.correct : P16539278793343903838.Spec := by
  intro n
  simp only [A184860, Nat.add_sub_cancel]

end A184860

/-! ## A184860.P10395849070747740112

`round(p?[round(ϕ*n)]/ϕ)`
-/

namespace A184860.P10395849070747740112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / Real.goldenRatio)

end

end A184860.P10395849070747740112

namespace A184860

/-- `round(p?[round(ϕ*n)]/ϕ)` -/
def P10395849070747740112.Spec : Prop :=
  ∀ n, P10395849070747740112.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P1414546088502193590

`round(record[A006530(round(ϕ*(n+1)))]/ϕ)`
-/

namespace A184860.P1414546088502193590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) / Real.goldenRatio)

end

end A184860.P1414546088502193590

namespace A184860

/-- `round(record[A006530(round(ϕ*(n+1)))]/ϕ)` -/
def P1414546088502193590.Spec : Prop :=
  ∀ n, P1414546088502193590.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P48746147874776603

`round(record[A020639(round(ϕ*(n+1)))]/ϕ)`
-/

namespace A184860.P48746147874776603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) / Real.goldenRatio)

end

end A184860.P48746147874776603

namespace A184860

/-- `round(record[A020639(round(ϕ*(n+1)))]/ϕ)` -/
def P48746147874776603.Spec : Prop :=
  ∀ n, P48746147874776603.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P15249058866349327174

`round(record[A000010(round(ϕ*(n+1)))+1]/ϕ)`
-/

namespace A184860.P15249058866349327174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) / Real.goldenRatio)

end

end A184860.P15249058866349327174

namespace A184860

/-- `round(record[A000010(round(ϕ*(n+1)))+1]/ϕ)` -/
def P15249058866349327174.Spec : Prop :=
  ∀ n, P15249058866349327174.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P8226403970764198709

`record[A000027(n+1)%A006530(round(ϕ*(n+1)))]`
-/

namespace A184860.P8226403970764198709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A006530 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184860.P8226403970764198709

namespace A184860

/-- `record[A000027(n+1)%A006530(round(ϕ*(n+1)))]` -/
def P8226403970764198709.Spec : Prop :=
  ∀ n, P8226403970764198709.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P9421498706042109065

`eq[1, A001222(round(ϕ*(n+1)))]+1`
-/

namespace A184860.P9421498706042109065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184860.P9421498706042109065

namespace A184860

/-- `eq[1, A001222(round(ϕ*(n+1)))]+1` -/
def P9421498706042109065.Spec : Prop :=
  ∀ n, (P9421498706042109065.a n : ℤ) = A184860 (n + 1)

end A184860

/-! ## A184860.P17097836785164811839

`A005206(p?[round(ϕ*n)])`
-/

namespace A184860.P17097836785164811839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184860.P17097836785164811839

namespace A184860

/-- `A005206(p?[round(ϕ*n)])` -/
def P17097836785164811839.Spec : Prop :=
  ∀ n, P17097836785164811839.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P9449072408149235120

`eq[1, A074206(round(ϕ*n))]`
-/

namespace A184860.P9449072408149235120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184860.P9449072408149235120

namespace A184860

/-- `eq[1, A074206(round(ϕ*n))]` -/
def P9449072408149235120.Spec : Prop :=
  ∀ n, (P9449072408149235120.a n : ℤ) = A184860 (n + 1)

end A184860

/-! ## A184860.P1368658310503430565

`A005206(A184859(n+1))`
-/

namespace A184860.P1368658310503430565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A184859 (n + 1)).toNat

end

end A184860.P1368658310503430565

namespace A184860

/-- `A005206(A184859(n+1))` -/
def P1368658310503430565.Spec : Prop :=
  ∀ n, P1368658310503430565.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P2907878997454944740

`round(∩[round(ϕ*n), A000040(n+1)]/ϕ)`
-/

namespace A184860.P2907878997454944740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ) / Real.goldenRatio)

end

end A184860.P2907878997454944740

namespace A184860

/-- `round(∩[round(ϕ*n), A000040(n+1)]/ϕ)` -/
def P2907878997454944740.Spec : Prop :=
  ∀ n, P2907878997454944740.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P4824768749383053662

`eq[1, A003415(round(ϕ*n))]`
-/

namespace A184860.P4824768749383053662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184860.P4824768749383053662

namespace A184860

/-- `eq[1, A003415(round(ϕ*n))]` -/
def P4824768749383053662.Spec : Prop :=
  ∀ n, (P4824768749383053662.a n : ℤ) = A184860 (n + 1)

end A184860

/-! ## A184860.P15206392089580288205

`round(record[A014963(round(ϕ*(n+1)))]/ϕ)`
-/

namespace A184860.P15206392089580288205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) / Real.goldenRatio)

end

end A184860.P15206392089580288205

namespace A184860

/-- `round(record[A014963(round(ϕ*(n+1)))]/ϕ)` -/
def P15206392089580288205.Spec : Prop :=
  ∀ n, P15206392089580288205.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P4225451881513236875

`A005379(p?[A007067(n)])`
-/

namespace A184860.P4225451881513236875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184860.P4225451881513236875

namespace A184860

/-- `A005379(p?[A007067(n)])` -/
def P4225451881513236875.Spec : Prop :=
  ∀ n, P4225451881513236875.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P1566690648583525054

`A060143(p?[A007067(n)]+1)`
-/

namespace A184860.P1566690648583525054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A184860.P1566690648583525054

namespace A184860

/-- `A060143(p?[A007067(n)]+1)` -/
def P1566690648583525054.Spec : Prop :=
  ∀ n, P1566690648583525054.a n = A184860 (n + 1)

end A184860

/-! ## A184860.P5876916022925131192

`A007067(A184859(n+1))-p?[A007067(n)]`
-/

namespace A184860.P5876916022925131192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A184859 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184860.P5876916022925131192

namespace A184860

/-- `A007067(A184859(n+1))-p?[A007067(n)]` -/
def P5876916022925131192.Spec : Prop :=
  ∀ n, P5876916022925131192.a n = A184860 (n + 1)

end A184860

/-!
# A184861: Numbers m such that prime(m) is of the form floor(nr+h), where r=(1+sqrt(5))/2 and h=1/2; complement of A184864.

The programs for A184861, the canonical program `A184861.P8608652935001601078` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184861 has offset 1).

The definition of A184861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5897 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184861.P2325672834530134597

`A000720(p?[round(ϕ*n)])`
-/

namespace A184861.P2325672834530134597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P2325672834530134597

namespace A184861

/-- `A000720(p?[round(ϕ*n)])` -/
def P2325672834530134597.Spec : Prop :=
  ∀ n, P2325672834530134597.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P8608652935001601078

`A061395(p?[round(ϕ*n)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A184861

/-- `A061395(p?[round(ϕ*n)])` -/
def P8608652935001601078.Spec : Prop :=
  ∀ n, P8608652935001601078.a n = A184861 (n + 1)

theorem P8608652935001601078.correct : P8608652935001601078.Spec := by
  intro n
  simp only [A184861, Nat.add_sub_cancel]

end A184861

/-! ## A184861.P10849370655202932466

`A000720(A184859(n+1))`
-/

namespace A184861.P10849370655202932466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184859 (n + 1)).toNat

end

end A184861.P10849370655202932466

namespace A184861

/-- `A000720(A184859(n+1))` -/
def P10849370655202932466.Spec : Prop :=
  ∀ n, P10849370655202932466.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P4673599206526795998

`A000720(record[A006530(round(ϕ*(n+1)))])`
-/

namespace A184861.P4673599206526795998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184861.P4673599206526795998

namespace A184861

/-- `A000720(record[A006530(round(ϕ*(n+1)))])` -/
def P4673599206526795998.Spec : Prop :=
  ∀ n, P4673599206526795998.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P15329475113547927196

`A000720(record[A020639(round(ϕ*(n+1)))])`
-/

namespace A184861.P15329475113547927196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184861.P15329475113547927196

namespace A184861

/-- `A000720(record[A020639(round(ϕ*(n+1)))])` -/
def P15329475113547927196.Spec : Prop :=
  ∀ n, P15329475113547927196.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P6426894574641316889

`A297109(p?[round(ϕ*n)])`
-/

namespace A184861.P6426894574641316889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P6426894574641316889

namespace A184861

/-- `A297109(p?[round(ϕ*n)])` -/
def P6426894574641316889.Spec : Prop :=
  ∀ n, P6426894574641316889.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P14195392155138472163

`record[A263111(round(ϕ*n))]`
-/

namespace A184861.P14195392155138472163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184861.P14195392155138472163

namespace A184861

/-- `record[A263111(round(ϕ*n))]` -/
def P14195392155138472163.Spec : Prop :=
  ∀ n, P14195392155138472163.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P4094735481068513406

`A003963(p?[round(ϕ*n)])`
-/

namespace A184861.P4094735481068513406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P4094735481068513406

namespace A184861

/-- `A003963(p?[round(ϕ*n)])` -/
def P4094735481068513406.Spec : Prop :=
  ∀ n, P4094735481068513406.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P13663038883310918383

`A026233(p?[round(ϕ*n)])`
-/

namespace A184861.P13663038883310918383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P13663038883310918383

namespace A184861

/-- `A026233(p?[round(ϕ*n)])` -/
def P13663038883310918383.Spec : Prop :=
  ∀ n, P13663038883310918383.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P15032530757337694556

`A026238(p?[round(ϕ*n)])`
-/

namespace A184861.P15032530757337694556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P15032530757337694556

namespace A184861

/-- `A026238(p?[round(ϕ*n)])` -/
def P15032530757337694556.Spec : Prop :=
  ∀ n, P15032530757337694556.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P6389459959598435466

`A049084(p?[round(ϕ*n)])`
-/

namespace A184861.P6389459959598435466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P6389459959598435466

namespace A184861

/-- `A049084(p?[round(ϕ*n)])` -/
def P6389459959598435466.Spec : Prop :=
  ∀ n, P6389459959598435466.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P4054815076763016771

`A055396(p?[round(ϕ*n)])`
-/

namespace A184861.P4054815076763016771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P4054815076763016771

namespace A184861

/-- `A055396(p?[round(ϕ*n)])` -/
def P4054815076763016771.Spec : Prop :=
  ∀ n, P4054815076763016771.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P10873284424760099485

`A056239(p?[round(ϕ*n)])`
-/

namespace A184861.P10873284424760099485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P10873284424760099485

namespace A184861

/-- `A056239(p?[round(ϕ*n)])` -/
def P10873284424760099485.Spec : Prop :=
  ∀ n, P10873284424760099485.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P12444490596882819920

`A082058(p?[round(ϕ*n)])`
-/

namespace A184861.P12444490596882819920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P12444490596882819920

namespace A184861

/-- `A082058(p?[round(ϕ*n)])` -/
def P12444490596882819920.Spec : Prop :=
  ∀ n, P12444490596882819920.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P12632420606549282146

`record[A003963(round(ϕ*(n+1)))]`
-/

namespace A184861.P12632420606549282146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184861.P12632420606549282146

namespace A184861

/-- `record[A003963(round(ϕ*(n+1)))]` -/
def P12632420606549282146.Spec : Prop :=
  ∀ n, P12632420606549282146.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P18054001367413708845

`record[A055396(round(ϕ*(n+1)))]`
-/

namespace A184861.P18054001367413708845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184861.P18054001367413708845

namespace A184861

/-- `record[A055396(round(ϕ*(n+1)))]` -/
def P18054001367413708845.Spec : Prop :=
  ∀ n, P18054001367413708845.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P13496448319258051730

`A230980(p?[A007067(n)])`
-/

namespace A184861.P13496448319258051730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184861.P13496448319258051730

namespace A184861

/-- `A230980(p?[A007067(n)])` -/
def P13496448319258051730.Spec : Prop :=
  ∀ n, P13496448319258051730.a n = A184861 (n + 1)

end A184861

/-! ## A184861.P7890775776987982567

`A000720(record[A014963(round(ϕ*(n+1)))])`
-/

namespace A184861.P7890775776987982567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184861.P7890775776987982567

namespace A184861

/-- `A000720(record[A014963(round(ϕ*(n+1)))])` -/
def P7890775776987982567.Spec : Prop :=
  ∀ n, P7890775776987982567.a n = A184861 (n + 1)

end A184861

/-!
# A184862: Primes of the form floor(n+nr-r/2), where r=(1+sqrt(5))/2.

The programs for A184862, there is no canonical definition to state claims against.
-/

/-! ## A184862.P10298422796407248205

`A000040(A184864(n+1))`
-/

namespace A184862.P10298422796407248205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184864 (n + 1)).toNat

end

end A184862.P10298422796407248205

/-! ## A184862.P18184347731004996984

`p?[comp[round(ϕ*n)]]`
-/

namespace A184862.P18184347731004996984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A184862.P18184347731004996984

/-! ## A184862.P12396296666805469664

`or(1, p?[A007064(n+1)])`
-/

namespace A184862.P12396296666805469664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A184862.P12396296666805469664

/-! ## A184862.P13249335738008337619

`∏{d}[p?[A007064(n+2)], #]`
-/

namespace A184862.P13249335738008337619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A184862.P13249335738008337619

/-! ## A184862.P10240375742009515965

`A007064(A184863(n+1))`
-/

namespace A184862.P10240375742009515965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (A184863 (n + 1)).toNat

end

end A184862.P10240375742009515965

/-! ## A184862.P4504311807299357868

`A000027(p?[A007064(n+1)])`
-/

namespace A184862.P4504311807299357868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184862.P4504311807299357868

/-! ## A184862.P6459720877140924336

`record[A020639(A007064(n+3))]`
-/

namespace A184862.P6459720877140924336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007064 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184862.P6459720877140924336

/-! ## A184862.P4915307245074708426

`filter[A007064(n+1), A010051(#)]`
-/

namespace A184862.P4915307245074708426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184862.P4915307245074708426

/-! ## A184862.P980060101110632705

`A006530(2*p?[A007064(n+1)])`
-/

namespace A184862.P980060101110632705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184862.P980060101110632705

/-! ## A184862.P2892053231855205299

`∩[A000040(n+1), A007064(n+1)]`
-/

namespace A184862.P2892053231855205299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P2892053231855205299

/-! ## A184862.P15531732377789148715

`∩[A004139(n+1), A007064(n+1)]`
-/

namespace A184862.P15531732377789148715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P15531732377789148715

/-! ## A184862.P8652573738704637244

`∩[A007064(n+1), A045319(n+1)]`
-/

namespace A184862.P8652573738704637244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P8652573738704637244

/-! ## A184862.P9056182011390464322

`∩[A007064(n+1), A045344(n+1)]`
-/

namespace A184862.P9056182011390464322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P9056182011390464322

/-! ## A184862.P1901031377920477412

`∩[A007064(n+1), A065091(n+1)]`
-/

namespace A184862.P1901031377920477412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P1901031377920477412

/-! ## A184862.P10135779853466264211

`∩[A007064(n+1), A108719(n+1)]`
-/

namespace A184862.P10135779853466264211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P10135779853466264211

/-! ## A184862.P15147069252724618589

`∩[A007064(n+1), A116974(n+1)]`
-/

namespace A184862.P15147069252724618589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P15147069252724618589

/-! ## A184862.P14091762455704572184

`∩[A007064(n+1), A182986(n+1)]`
-/

namespace A184862.P14091762455704572184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P14091762455704572184

/-! ## A184862.P17989307194397503901

`∩[A007064(n+1), A197636(n+1)]`
-/

namespace A184862.P17989307194397503901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P17989307194397503901

/-! ## A184862.P14941880429857412351

`∩[A007064(n+1), A215848(n+1)]`
-/

namespace A184862.P14941880429857412351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P14941880429857412351

/-! ## A184862.P15528508179844667474

`∩[A007064(n+1), A216495(n+1)]`
-/

namespace A184862.P15528508179844667474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184862.P15528508179844667474

/-!
# A184863: Numbers k such that floor(n+nr-r/2) are prime, where r=(1+sqrt(5))/2.

The programs for A184863, the canonical program `A184863.P11681446772865368955` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184863 has offset 1).

The definition of A184863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184863.P7583569238739612156

`A005206(A005206(A184862(n+1)))`
-/

namespace A184863.P7583569238739612156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (A184862 (n + 1)).toNat).toNat

end

end A184863.P7583569238739612156

namespace A184863

/-- `A005206(A005206(A184862(n+1)))` -/
def P7583569238739612156.Spec : Prop :=
  ∀ n, P7583569238739612156.a n = A184863 (n + 1)

end A184863

/-! ## A184863.P11681446772865368955

`A005206(A005206(p?[A007064(n+1)]))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A184863

/-- `A005206(A005206(p?[A007064(n+1)]))` -/
def P11681446772865368955.Spec : Prop :=
  ∀ n, P11681446772865368955.a n = A184863 (n + 1)

theorem P11681446772865368955.correct : P11681446772865368955.Spec := by
  intro n
  simp only [A184863, Nat.add_sub_cancel]

end A184863

/-! ## A184863.P4133010655264254513

`A189663(A184862(n+1)+1)`
-/

namespace A184863.P4133010655264254513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A184862 (n + 1) + 1).toNat

end

end A184863.P4133010655264254513

namespace A184863

/-- `A189663(A184862(n+1)+1)` -/
def P4133010655264254513.Spec : Prop :=
  ∀ n, P4133010655264254513.a n = A184863 (n + 1)

end A184863

/-! ## A184863.P803447457379655450

`A060144(p?[A007064(n+1)])+1`
-/

namespace A184863.P803447457379655450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A184863.P803447457379655450

namespace A184863

/-- `A060144(p?[A007064(n+1)])+1` -/
def P803447457379655450.Spec : Prop :=
  ∀ n, P803447457379655450.a n = A184863 (n + 1)

end A184863

/-! ## A184863.P12797811766704479854

`A189663(p?[A007064(n+1)]+1)`
-/

namespace A184863.P12797811766704479854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A184863.P12797811766704479854

namespace A184863

/-- `A189663(p?[A007064(n+1)]+1)` -/
def P12797811766704479854.Spec : Prop :=
  ∀ n, P12797811766704479854.a n = A184863 (n + 1)

end A184863

/-! ## A184863.P11213083312869083715

`record[(n+3)%A014963(A007064(n+3))]`
-/

namespace A184863.P11213083312869083715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A014963 (A007064 (n + 3)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184863.P11213083312869083715

namespace A184863

/-- `record[(n+3)%A014963(A007064(n+3))]` -/
def P11213083312869083715.Spec : Prop :=
  ∀ n, P11213083312869083715.a n = A184863 (n + 1)

end A184863

/-! ## A184863.P11653519848852872313

`A005378(A005378(p?[A007064(n+1)]))`
-/

namespace A184863.P11653519848852872313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A005378 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A184863.P11653519848852872313

namespace A184863

/-- `A005378(A005378(p?[A007064(n+1)]))` -/
def P11653519848852872313.Spec : Prop :=
  ∀ n, P11653519848852872313.a n = A184863 (n + 1)

end A184863

/-!
# A184864: Numbers m such that prime(m) is of the form floor(n+nr-r/2), where r=(1+sqrt(5))/2; complement of A184861.

The programs for A184864, there is no canonical definition to state claims against.
-/

/-! ## A184864.P17266121836214514268

`A000720(A184862(n+1))`
-/

namespace A184864.P17266121836214514268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184862 (n + 1)).toNat

end

end A184864.P17266121836214514268

/-! ## A184864.P4065934816729938683

`A000720(p?[A007064(n+1)])`
-/

namespace A184864.P4065934816729938683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184864.P4065934816729938683

/-! ## A184864.P2558468407215502429

`A061395(p?[A007064(n+1)])`
-/

namespace A184864.P2558468407215502429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184864.P2558468407215502429

/-! ## A184864.P15625027099826397289

`A058933(p?[A007064(n+1)])`
-/

namespace A184864.P15625027099826397289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184864.P15625027099826397289

/-! ## A184864.P5185514283892551309

`A003963(p?[A007064(n+1)])`
-/

namespace A184864.P5185514283892551309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184864.P5185514283892551309

/-! ## A184864.P14646595117583598875

`A026233(p?[A007064(n+1)])`
-/

namespace A184864.P14646595117583598875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184864.P14646595117583598875

/-! ## A184864.P2379148160890880285

`A026238(p?[A007064(n+1)])`
-/

namespace A184864.P2379148160890880285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184864.P2379148160890880285

/-! ## A184864.P5820309983423060428

`A049084(p?[A007064(n+1)])`
-/

namespace A184864.P5820309983423060428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184864.P5820309983423060428

/-! ## A184864.P14404291416871389647

`A056239(p?[A007064(n+1)])`
-/

namespace A184864.P14404291416871389647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184864.P14404291416871389647

/-! ## A184864.P8683619175196019782

`record[A049084(A007064(n+3))]`
-/

namespace A184864.P8683619175196019782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A007064 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184864.P8683619175196019782

/-!
# A184865: Primes of the form floor(nr+h), where r=sqrt(2), h=1/2.

The programs for A184865, the canonical program `A184865.P7459794349795974316` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184865 has offset 1).

The definition of A184865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184865.P7459794349795974316

`p?[round(n*sqrt(2))]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184865

/-- `p?[round(n*sqrt(2))]` -/
def P7459794349795974316.Spec : Prop :=
  ∀ n, P7459794349795974316.a n = A184865 (n + 1)

theorem P7459794349795974316.correct : P7459794349795974316.Spec := by
  intro n
  simp only [A184865, Nat.add_sub_cancel]

end A184865

/-! ## A184865.P2994832070701423689

`A000040(A184867(n+1))`
-/

namespace A184865.P2994832070701423689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184867 (n + 1)).toNat

end

end A184865.P2994832070701423689

namespace A184865

/-- `A000040(A184867(n+1))` -/
def P2994832070701423689.Spec : Prop :=
  ∀ n, P2994832070701423689.a n = A184865 (n + 1)

end A184865

/-! ## A184865.P207473083903529676

`A022846(A184866(n+1))`
-/

namespace A184865.P207473083903529676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A184866 (n + 1)).toNat

end

end A184865.P207473083903529676

namespace A184865

/-- `A022846(A184866(n+1))` -/
def P207473083903529676.Spec : Prop :=
  ∀ n, P207473083903529676.a n = A184865 (n + 1)

end A184865

/-! ## A184865.P8879871965869867504

`filter[A022846(n+1), A010051(#)]`
-/

namespace A184865.P8879871965869867504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184865.P8879871965869867504

namespace A184865

/-- `filter[A022846(n+1), A010051(#)]` -/
def P8879871965869867504.Spec : Prop :=
  ∀ n, P8879871965869867504.a n = A184865 (n + 1)

end A184865

/-! ## A184865.P8353927126174902249

`filter[A214857(n+2), A010051(#)]`
-/

namespace A184865.P8353927126174902249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184865.P8353927126174902249

namespace A184865

/-- `filter[A214857(n+2), A010051(#)]` -/
def P8353927126174902249.Spec : Prop :=
  ∀ n, P8353927126174902249.a n = A184865 (n + 1)

end A184865

/-! ## A184865.P12081548268185199325

`∩[A000040(n+1), A022846(n)]`
-/

namespace A184865.P12081548268185199325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184865.P12081548268185199325

namespace A184865

/-- `∩[A000040(n+1), A022846(n)]` -/
def P12081548268185199325.Spec : Prop :=
  ∀ n, (P12081548268185199325.a n : ℤ) = A184865 (n + 1)

end A184865

/-! ## A184865.P16895505934773619317

`∩[A004139(n+1), A022846(n)]`
-/

namespace A184865.P16895505934773619317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184865.P16895505934773619317

namespace A184865

/-- `∩[A004139(n+1), A022846(n)]` -/
def P16895505934773619317.Spec : Prop :=
  ∀ n, (P16895505934773619317.a n : ℤ) = A184865 (n + 1)

end A184865

/-! ## A184865.P10011710583271035308

`∩[A045319(n+1), A022846(n)]`
-/

namespace A184865.P10011710583271035308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184865.P10011710583271035308

namespace A184865

/-- `∩[A045319(n+1), A022846(n)]` -/
def P10011710583271035308.Spec : Prop :=
  ∀ n, (P10011710583271035308.a n : ℤ) = A184865 (n + 1)

end A184865

/-! ## A184865.P13180941735280703011

`∩[A065091(n+1), A022846(n)]`
-/

namespace A184865.P13180941735280703011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184865.P13180941735280703011

namespace A184865

/-- `∩[A065091(n+1), A022846(n)]` -/
def P13180941735280703011.Spec : Prop :=
  ∀ n, (P13180941735280703011.a n : ℤ) = A184865 (n + 1)

end A184865

/-! ## A184865.P5178463410956494466

`∩[A004139(n+1), A214857(n)]`
-/

namespace A184865.P5178463410956494466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184865.P5178463410956494466

namespace A184865

/-- `∩[A004139(n+1), A214857(n)]` -/
def P5178463410956494466.Spec : Prop :=
  ∀ n, (P5178463410956494466.a n : ℤ) = A184865 (n + 1)

end A184865

/-! ## A184865.P6470940427151734018

`∩[A065091(n+1), A214857(n)]`
-/

namespace A184865.P6470940427151734018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184865.P6470940427151734018

namespace A184865

/-- `∩[A065091(n+1), A214857(n)]` -/
def P6470940427151734018.Spec : Prop :=
  ∀ n, (P6470940427151734018.a n : ℤ) = A184865 (n + 1)

end A184865

/-! ## A184865.P3473881442897534449

`filter[A214857(n+1), A080545(#)]`
-/

namespace A184865.P3473881442897534449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A184865.P3473881442897534449

namespace A184865

/-- `filter[A214857(n+1), A080545(#)]` -/
def P3473881442897534449.Spec : Prop :=
  ∀ n, P3473881442897534449.a n = A184865 (n + 1)

end A184865

/-! ## A184865.P12051398852181430494

`filter[A022846(n+2), A080339(#)]`
-/

namespace A184865.P12051398852181430494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A184865.P12051398852181430494

namespace A184865

/-- `filter[A022846(n+2), A080339(#)]` -/
def P12051398852181430494.Spec : Prop :=
  ∀ n, P12051398852181430494.a n = A184865 (n + 1)

end A184865

/-! ## A184865.P18382521617941327005

`filter[A022846(n+2), A080545(#)]`
-/

namespace A184865.P18382521617941327005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A184865.P18382521617941327005

namespace A184865

/-- `filter[A022846(n+2), A080545(#)]` -/
def P18382521617941327005.Spec : Prop :=
  ∀ n, P18382521617941327005.a n = A184865 (n + 1)

end A184865

/-! ## A184865.P6193920292456364841

`filter[A214857(n+2), A080339(#)]`
-/

namespace A184865.P6193920292456364841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A184865.P6193920292456364841

namespace A184865

/-- `filter[A214857(n+2), A080339(#)]` -/
def P6193920292456364841.Spec : Prop :=
  ∀ n, P6193920292456364841.a n = A184865 (n + 1)

end A184865

/-! ## A184865.P7992351599328432277

`∩[A240960(n+1), A022846(n)]`
-/

namespace A184865.P7992351599328432277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184865.P7992351599328432277

namespace A184865

/-- `∩[A240960(n+1), A022846(n)]` -/
def P7992351599328432277.Spec : Prop :=
  ∀ n, (P7992351599328432277.a n : ℤ) = A184865 (n + 1)

end A184865

/-! ## A184865.P14135785315055724210

`filter[A248231(2*(n+1)), A010051(#)]`
-/

namespace A184865.P14135785315055724210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184865.P14135785315055724210

namespace A184865

/-- `filter[A248231(2*(n+1)), A010051(#)]` -/
def P14135785315055724210.Spec : Prop :=
  ∀ n, P14135785315055724210.a n = A184865 (n + 1)

end A184865

/-!
# A184866: Numbers k such that floor(1/2+k*sqrt(2)) is prime.

The programs for A184866, the canonical program `A184866.P14827059429560223120` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184866 has offset 1).

The definition of A184866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184866.P14827059429560223120

`eq[1, ∑{e}[round(n*sqrt(2)), #]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184866

/-- `eq[1, ∑{e}[round(n*sqrt(2)), #]]` -/
def P14827059429560223120.Spec : Prop :=
  ∀ n, (P14827059429560223120.a n : ℤ) = A184866 (n + 1)

theorem P14827059429560223120.correct : P14827059429560223120.Spec := by
  intro n
  simp only [A184866, Nat.add_sub_cancel]

end A184866

/-! ## A184866.P8730254848553621608

`eq[1, A001222(A022846(n+1))]+1`
-/

namespace A184866.P8730254848553621608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A022846 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184866.P8730254848553621608

namespace A184866

/-- `eq[1, A001222(A022846(n+1))]+1` -/
def P8730254848553621608.Spec : Prop :=
  ∀ n, (P8730254848553621608.a n : ℤ) = A184866 (n + 1)

end A184866

/-! ## A184866.P7416520002174861013

`eq[1, A003415(round(n*sqrt(2)))]`
-/

namespace A184866.P7416520002174861013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184866.P7416520002174861013

namespace A184866

/-- `eq[1, A003415(round(n*sqrt(2)))]` -/
def P7416520002174861013.Spec : Prop :=
  ∀ n, (P7416520002174861013.a n : ℤ) = A184866 (n + 1)

end A184866

/-! ## A184866.P11202408121349334596

`A049473(A184865(n+1))`
-/

namespace A184866.P11202408121349334596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A184865 (n + 1)).toNat

end

end A184866.P11202408121349334596

namespace A184866

/-- `A049473(A184865(n+1))` -/
def P11202408121349334596.Spec : Prop :=
  ∀ n, P11202408121349334596.a n = A184866 (n + 1)

end A184866

/-! ## A184866.P480911485246106832

`eq[1, A032741(A022846(n))]`
-/

namespace A184866.P480911485246106832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A022846 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184866.P480911485246106832

namespace A184866

/-- `eq[1, A032741(A022846(n))]` -/
def P480911485246106832.Spec : Prop :=
  ∀ n, (P480911485246106832.a n : ℤ) = A184866 (n + 1)

end A184866

/-! ## A184866.P9929605813346053472

`eq[2, A048272(A214857(n))]`
-/

namespace A184866.P9929605813346053472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A214857 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184866.P9929605813346053472

namespace A184866

/-- `eq[2, A048272(A214857(n))]` -/
def P9929605813346053472.Spec : Prop :=
  ∀ n, (P9929605813346053472.a n : ℤ) = A184866 (n + 1)

end A184866

/-! ## A184866.P8476072849104140215

`A049473(p?[A049473(2*n)])`
-/

namespace A184866.P8476072849104140215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184866.P8476072849104140215

namespace A184866

/-- `A049473(p?[A049473(2*n)])` -/
def P8476072849104140215.Spec : Prop :=
  ∀ n, P8476072849104140215.a n = A184866 (n + 1)

end A184866

/-! ## A184866.P10178472199226260927

`A248231(p?[A248231(2*(n+1))])`
-/

namespace A184866.P10178472199226260927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184866.P10178472199226260927

namespace A184866

/-- `A248231(p?[A248231(2*(n+1))])` -/
def P10178472199226260927.Spec : Prop :=
  ∀ n, P10178472199226260927.a n = A184866 (n + 1)

end A184866

/-!
# A184867: Numbers m such that prime(m) is of the form floor(1/2+k*sqrt(2)). Complement of A184870.

The programs for A184867, the canonical program `A184867.P12412138484424509341` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184867 has offset 1).

The definition of A184867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184867.P11444976151587109597

`comp[A184870(n+1)-1]+1`
-/

namespace A184867.P11444976151587109597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184870 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184867.P11444976151587109597

namespace A184867

/-- `comp[A184870(n+1)-1]+1` -/
def P11444976151587109597.Spec : Prop :=
  ∀ n, (P11444976151587109597.a n : ℤ) = A184867 (n + 1)

end A184867

/-! ## A184867.P3323060492125542622

`A000720(p?[round(n*sqrt(2))])`
-/

namespace A184867.P3323060492125542622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184867.P3323060492125542622

namespace A184867

/-- `A000720(p?[round(n*sqrt(2))])` -/
def P3323060492125542622.Spec : Prop :=
  ∀ n, P3323060492125542622.a n = A184867 (n + 1)

end A184867

/-! ## A184867.P12412138484424509341

`A000720(A184865(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184867

/-- `A000720(A184865(n+1))` -/
def P12412138484424509341.Spec : Prop :=
  ∀ n, P12412138484424509341.a n = A184867 (n + 1)

theorem P12412138484424509341.correct : P12412138484424509341.Spec := by
  intro n
  simp only [A184867, Nat.add_sub_cancel]

end A184867

/-! ## A184867.P9916513338688948826

`A058933(A184865(n+1)%A001248(n+1))`
-/

namespace A184867.P9916513338688948826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (Int.tmod (A184865 (n + 1)) (A001248 (n + 1))).toNat

end

end A184867.P9916513338688948826

namespace A184867

/-- `A058933(A184865(n+1)%A001248(n+1))` -/
def P9916513338688948826.Spec : Prop :=
  ∀ n, P9916513338688948826.a n = A184867 (n + 1)

end A184867

/-! ## A184867.P10436859474015202941

`A058933(A184865(n+1))%A023201(n+1)`
-/

namespace A184867.P10436859474015202941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (A184865 (n + 1)).toNat) (A023201 (n + 1))

end

end A184867.P10436859474015202941

namespace A184867

/-- `A058933(A184865(n+1))%A023201(n+1)` -/
def P10436859474015202941.Spec : Prop :=
  ∀ n, P10436859474015202941.a n = A184867 (n + 1)

end A184867

/-! ## A184867.P10378157085528745460

`A058933(∪[A050434(n+1), A184865(n+1)])`
-/

namespace A184867.P10378157085528745460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184865 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A184867.P10378157085528745460

namespace A184867

/-- `A058933(∪[A050434(n+1), A184865(n+1)])` -/
def P10378157085528745460.Spec : Prop :=
  ∀ n, P10378157085528745460.a n = A184867 (n + 1)

end A184867

/-! ## A184867.P5094651830935087489

`A003963(p?[A022846(n)])`
-/

namespace A184867.P5094651830935087489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184867.P5094651830935087489

namespace A184867

/-- `A003963(p?[A022846(n)])` -/
def P5094651830935087489.Spec : Prop :=
  ∀ n, P5094651830935087489.a n = A184867 (n + 1)

end A184867

/-! ## A184867.P465836112612891490

`A243056(p?[A022846(n)])`
-/

namespace A184867.P465836112612891490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184867.P465836112612891490

namespace A184867

/-- `A243056(p?[A022846(n)])` -/
def P465836112612891490.Spec : Prop :=
  ∀ n, P465836112612891490.a n = A184867 (n + 1)

end A184867

/-! ## A184867.P16560397214758451100

`A003963(p?[A049473(2*n)])`
-/

namespace A184867.P16560397214758451100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184867.P16560397214758451100

namespace A184867

/-- `A003963(p?[A049473(2*n)])` -/
def P16560397214758451100.Spec : Prop :=
  ∀ n, P16560397214758451100.a n = A184867 (n + 1)

end A184867

/-!
# A184868: Primes of the form floor((k-1/2)*(2+sqrt(2))+1/2); i.e., primes in A063957.

The programs for A184868, there is no canonical definition to state claims against.
-/

/-! ## A184868.P14546522792948504210

`A000040(A184870(n+1))`
-/

namespace A184868.P14546522792948504210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184870 (n + 1)).toNat

end

end A184868.P14546522792948504210

/-! ## A184868.P5764277785882897039

`p?[comp[round(n*sqrt(2))]]`
-/

namespace A184868.P5764277785882897039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A184868.P5764277785882897039

/-! ## A184868.P4758486682557130307

`A063957(A184869(n+1))`
-/

namespace A184868.P4758486682557130307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (A184869 (n + 1)).toNat

end

end A184868.P4758486682557130307

/-! ## A184868.P10842301246007813401

`filter[A063957(n+1), A010051(#)]`
-/

namespace A184868.P10842301246007813401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184868.P10842301246007813401

/-! ## A184868.P13653502236315308883

`∩[A000040(n+1), A063957(n+1)]`
-/

namespace A184868.P13653502236315308883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P13653502236315308883

/-! ## A184868.P3124638980164603109

`∩[A008578(n+1), A063957(n+1)]`
-/

namespace A184868.P3124638980164603109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P3124638980164603109

/-! ## A184868.P3274266142147354225

`∩[A045344(n+1), A063957(n+1)]`
-/

namespace A184868.P3274266142147354225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P3274266142147354225

/-! ## A184868.P2639833568045755042

`∩[A046022(n+1), A063957(n+1)]`
-/

namespace A184868.P2639833568045755042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P2639833568045755042

/-! ## A184868.P5703132825505373672

`∩[A063957(n+1), A116974(n+1)]`
-/

namespace A184868.P5703132825505373672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P5703132825505373672

/-! ## A184868.P13780970719603686411

`∩[A063957(n+1), A138837(n+1)]`
-/

namespace A184868.P13780970719603686411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P13780970719603686411

/-! ## A184868.P11372271497380653423

`∩[A063957(n+1), A158611(n+1)]`
-/

namespace A184868.P11372271497380653423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P11372271497380653423

/-! ## A184868.P7826032117138111455

`∩[A063957(n+1), A175787(n+1)]`
-/

namespace A184868.P7826032117138111455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P7826032117138111455

/-! ## A184868.P16669604234881985995

`∩[A063957(n+1), A182986(n+1)]`
-/

namespace A184868.P16669604234881985995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P16669604234881985995

/-! ## A184868.P1171275068365277641

`∩[A063957(n+1), A184774(n+1)]`
-/

namespace A184868.P1171275068365277641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P1171275068365277641

/-! ## A184868.P3445005786026034754

`∩[A063957(n+1), A284696(n+1)]`
-/

namespace A184868.P3445005786026034754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P3445005786026034754

/-! ## A184868.P10661488501801689177

`∩[A348283(n+1), A063957(n+1)]`
-/

namespace A184868.P10661488501801689177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184868.P10661488501801689177

/-! ## A184868.P17641938807058355232

`record[A006530(A215247(n+1)-A001953(n))]`
-/

namespace A184868.P17641938807058355232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A215247 (n + 1) - A001953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184868.P17641938807058355232

/-! ## A184868.P14925959143964910714

`record[A020639(A215247(n+1)-A001953(n))]`
-/

namespace A184868.P14925959143964910714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A215247 (n + 1) - A001953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184868.P14925959143964910714

/-! ## A184868.P2849712455080396516

`record[p?[A081477((n+1)/and(n+1, -(n+1)))]]`
-/

namespace A184868.P2849712455080396516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184868.P2849712455080396516

/-! ## A184868.P14933150530140610978

`filter[A081477(2*n+1), A010051(#)]`
-/

namespace A184868.P14933150530140610978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184868.P14933150530140610978

/-!
# A184869: Numbers k such that floor[(k-1/2)*(2+2^(1/2))+1/2] is prime.

The programs for A184869, the canonical program `A184869.P15509007701373363628` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184869 has offset 1).

The definition of A184869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184869.P18054035490412521912

`A194920(A184868(n+1))`
-/

namespace A184869.P18054035490412521912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A184868 (n + 1)).toNat

end

end A184869.P18054035490412521912

namespace A184869

/-- `A194920(A184868(n+1))` -/
def P18054035490412521912.Spec : Prop :=
  ∀ n, P18054035490412521912.a n = A184869 (n + 1)

end A184869

/-! ## A184869.P15509007701373363628

`A194920(p?[A063957(n+1)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A184869

/-- `A194920(p?[A063957(n+1)])` -/
def P15509007701373363628.Spec : Prop :=
  ∀ n, P15509007701373363628.a n = A184869 (n + 1)

theorem P15509007701373363628.correct : P15509007701373363628.Spec := by
  intro n
  simp only [A184869, Nat.add_sub_cancel]

end A184869

/-! ## A184869.P12335544854663398969

`A183138(A184868(n+1)+3)`
-/

namespace A184869.P12335544854663398969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (A184868 (n + 1) + 3).toNat

end

end A184869.P12335544854663398969

namespace A184869

/-- `A183138(A184868(n+1)+3)` -/
def P12335544854663398969.Spec : Prop :=
  ∀ n, P12335544854663398969.a n = A184869 (n + 1)

end A184869

/-! ## A184869.P12857404907117724555

`A194920(p?[A081477(2*n+1)])`
-/

namespace A184869.P12857404907117724555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184869.P12857404907117724555

namespace A184869

/-- `A194920(p?[A081477(2*n+1)])` -/
def P12857404907117724555.Spec : Prop :=
  ∀ n, P12857404907117724555.a n = A184869 (n + 1)

end A184869

/-! ## A184869.P11624067442792454047

`A195119(A184868(n+1)+1)/2`
-/

namespace A184869.P11624067442792454047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195119 (A184868 (n + 1) + 1).toNat : ℚ) / 2

end

end A184869.P11624067442792454047

namespace A184869

/-- `A195119(A184868(n+1)+1)/2` -/
def P11624067442792454047.Spec : Prop :=
  ∀ n, P11624067442792454047.a n = (A184869 (n + 1) : ℚ)

end A184869

/-! ## A184869.P15410386114418856968

`A008619(A074840(p?[A063957(n+1)]))`
-/

namespace A184869.P15410386114418856968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A074840 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A184869.P15410386114418856968

namespace A184869

/-- `A008619(A074840(p?[A063957(n+1)]))` -/
def P15410386114418856968.Spec : Prop :=
  ∀ n, P15410386114418856968.a n = A184869 (n + 1)

end A184869

/-! ## A184869.P15193559390677139221

`A008619(A074840(p?[A184868(n+1)]))`
-/

namespace A184869.P15193559390677139221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A074840 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A184869.P15193559390677139221

namespace A184869

/-- `A008619(A074840(p?[A184868(n+1)]))` -/
def P15193559390677139221.Spec : Prop :=
  ∀ n, P15193559390677139221.a n = A184869 (n + 1)

end A184869

/-! ## A184869.P676492858456462144

`A195119(A004525(p?[A184868(n+1)]))`
-/

namespace A184869.P676492858456462144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A004525 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A184869.P676492858456462144

namespace A184869

/-- `A195119(A004525(p?[A184868(n+1)]))` -/
def P676492858456462144.Spec : Prop :=
  ∀ n, P676492858456462144.a n = A184869 (n + 1)

end A184869

/-! ## A184869.P5578658640014868311

`A074840(∑{d}[A184868(n+1), A008619(#)])`
-/

namespace A184869.P5578658640014868311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (∑ d ∈ Nat.divisors (f1 n).natAbs, A008619 d).toNat

end

end A184869.P5578658640014868311

namespace A184869

/-- `A074840(∑{d}[A184868(n+1), A008619(#)])` -/
def P5578658640014868311.Spec : Prop :=
  ∀ n, P5578658640014868311.a n = A184869 (n + 1)

end A184869

/-! ## A184869.P16073871306974524030

`A195177(∑{p}[A184868(n+1), A285074(#)])`
-/

namespace A184869.P16073871306974524030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285074 p).toNat

end

end A184869.P16073871306974524030

namespace A184869

/-- `A195177(∑{p}[A184868(n+1), A285074(#)])` -/
def P16073871306974524030.Spec : Prop :=
  ∀ n, P16073871306974524030.a n = A184869 (n + 1)

end A184869

/-! ## A184869.P15329889537385931691

`A195177(∏{p}[A184868(n+1), A285074(#)])`
-/

namespace A184869.P15329889537385931691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A285074 p).toNat

end

end A184869.P15329889537385931691

namespace A184869

/-- `A195177(∏{p}[A184868(n+1), A285074(#)])` -/
def P15329889537385931691.Spec : Prop :=
  ∀ n, P15329889537385931691.a n = A184869 (n + 1)

end A184869

/-!
# A184870: Numbers m such that prime(m) is of the form floor[(k-1/2)*(2+2^(1/2))+1/2]; complement of A184867.

The programs for A184870, there is no canonical definition to state claims against.
-/

/-! ## A184870.P9316591221231087202

`A000720(A184868(n+1))`
-/

namespace A184870.P9316591221231087202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184868 (n + 1)).toNat

end

end A184870.P9316591221231087202

/-! ## A184870.P14435590699984140334

`A061395(p?[A184868(n+1)])`
-/

namespace A184870.P14435590699984140334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184870.P14435590699984140334

/-! ## A184870.P8176024857744286209

`∑{d}[A184868(n+1), A061395(#)]`
-/

namespace A184870.P8176024857744286209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A184870.P8176024857744286209

/-! ## A184870.P4919529323613288502

`A061395(∏{p}[A184868(n+1), #])`
-/

namespace A184870.P4919529323613288502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A184870.P4919529323613288502

/-! ## A184870.P3871656757815386204

`A066328(p?[A184868(n+1)])`
-/

namespace A184870.P3871656757815386204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184870.P3871656757815386204

/-! ## A184870.P7227791919730123531

`∑{d}[A184868(n+1), A066328(#)]`
-/

namespace A184870.P7227791919730123531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A184870.P7227791919730123531

/-! ## A184870.P6488576664826319891

`A066328(∏{p}[A184868(n+1), #])`
-/

namespace A184870.P6488576664826319891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A184870.P6488576664826319891

/-! ## A184870.P6196418894302710052

`A066328(2*A184868(n+1)-A184868(n+1))`
-/

namespace A184870.P6196418894302710052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A184868 (n + 1) - A184868 (n + 1)).toNat

end

end A184870.P6196418894302710052

/-! ## A184870.P10248230857264290301

`A061395(2*A184868(n+1))`
-/

namespace A184870.P10248230857264290301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A184868 (n + 1)).toNat

end

end A184870.P10248230857264290301

/-! ## A184870.P2060765649248480039

`A000720(p?[A063957(n+1)])`
-/

namespace A184870.P2060765649248480039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184870.P2060765649248480039

/-! ## A184870.P728036399578367887

`A055396(∑{p}[A184868(n+1), #])`
-/

namespace A184870.P728036399578367887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A184870.P728036399578367887

/-! ## A184870.P15591081011615185177

`A290103(∑{p}[A184868(n+1), #])`
-/

namespace A184870.P15591081011615185177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A184870.P15591081011615185177

/-! ## A184870.P11134449402460827070

`A055396(A184868(n+1))%A049001(n+1)`
-/

namespace A184870.P11134449402460827070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A184868 (n + 1)).toNat) (A049001 (n + 1))

end

end A184870.P11134449402460827070

/-! ## A184870.P13725162224227248514

`A290103(A184868(n+1))%A002144(n+1)`
-/

namespace A184870.P13725162224227248514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A184868 (n + 1)).toNat) (A002144 (n + 1))

end

end A184870.P13725162224227248514

/-! ## A184870.P1812769308357111640

`A277707(A184868(n+1)%A031930(n+1))`
-/

namespace A184870.P1812769308357111640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (Int.tmod (A184868 (n + 1)) (A031930 (n + 1))).toNat

end

end A184870.P1812769308357111640

/-! ## A184870.P3734336706297986235

`A290103(2*A184868(n+1))`
-/

namespace A184870.P3734336706297986235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A184868 (n + 1)).toNat

end

end A184870.P3734336706297986235

/-! ## A184870.P4341347711348144149

`A277707(4*A184868(n+1))`
-/

namespace A184870.P4341347711348144149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (4 * A184868 (n + 1)).toNat

end

end A184870.P4341347711348144149

/-!
# A184871: n+floor(ns/r)+floor(nt/r), where r=log(2), s=log(3), t=log(5).

The programs for A184871, the canonical program `A184871.P9235573609580196540` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184871 has offset 1).

The definition of A184871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184871.P10777153318805061163

`floor((n+1)*log2(5))+floor((n+1)*log2(6))`
-/

namespace A184871.P10777153318805061163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.logb 2 (5 : ℝ)⌋ + ⌊(n + 1 : ℝ) * Real.logb 2 (6 : ℝ)⌋

end

end A184871.P10777153318805061163

namespace A184871

/-- `floor((n+1)*log2(5))+floor((n+1)*log2(6))` -/
def P10777153318805061163.Spec : Prop :=
  ∀ n, P10777153318805061163.a n = A184871 (n + 1)

end A184871

/-! ## A184871.P9235573609580196540

`A000027(A066343(n+1)+A056576(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A184871

/-- `A000027(A066343(n+1)+A056576(n+1))` -/
def P9235573609580196540.Spec : Prop :=
  ∀ n, P9235573609580196540.a n = A184871 (n + 1)

theorem P9235573609580196540.correct : P9235573609580196540.Spec := by
  intro n
  simp only [A184871, Nat.add_sub_cancel]

end A184871

/-! ## A184871.P6057832506310810379

`(A066343(n+1)+A056576(n+1))%A002997(n+1)`
-/

namespace A184871.P6057832506310810379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066343 (n + 1) + A056576 (n + 1)) (A002997 (n + 1))

end

end A184871.P6057832506310810379

namespace A184871

/-- `(A066343(n+1)+A056576(n+1))%A002997(n+1)` -/
def P6057832506310810379.Spec : Prop :=
  ∀ n, P6057832506310810379.a n = A184871 (n + 1)

end A184871

/-! ## A184871.P2625908937008135652

`∑[A022921(n)+Δ[A123384(n)]]`
-/

namespace A184871.P2625908937008135652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184871.P2625908937008135652

namespace A184871

/-- `∑[A022921(n)+Δ[A123384(n)]]` -/
def P2625908937008135652.Spec : Prop :=
  ∀ n, P2625908937008135652.a n = A184871 (n + 1)

end A184871

/-! ## A184871.P12280949914358077232

`A028310(A066343(n+1)+A056576(n+1))`
-/

namespace A184871.P12280949914358077232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A066343 (n + 1) + A056576 (n + 1)).toNat

end

end A184871.P12280949914358077232

namespace A184871

/-- `A028310(A066343(n+1)+A056576(n+1))` -/
def P12280949914358077232.Spec : Prop :=
  ∀ n, P12280949914358077232.a n = A184871 (n + 1)

end A184871

/-!
# A184872: n+floor(nr/s)+floor(nt/s), where r=log(2), s=log(3), t=log(5).

The programs for A184872, there is no canonical definition to state claims against.
-/

/-! ## A184872.P17673912609298205945

`∑[A022924(n)+A022927(n)+1]`
-/

namespace A184872.P17673912609298205945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022924 n + (A022927 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184872.P17673912609298205945

/-! ## A184872.P7027358367522871444

`∑[A022927(n)]+Δ[A022331(n)]+n`
-/

namespace A184872.P7027358367522871444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (f2 (n + 1) - f2 n + (n : ℤ))

end

end A184872.P7027358367522871444

/-! ## A184872.P1115352248416167579

`∑[A022927(n)]+A226720(n+1)-1`
-/

namespace A184872.P1115352248416167579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A226720 (n + 1) - 1)

end

end A184872.P1115352248416167579

/-! ## A184872.P668075294876743098

`∑[A022927(n)]+A020915(n+1)+n`
-/

namespace A184872.P668075294876743098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A020915 (n + 1) + (n : ℤ))

end

end A184872.P668075294876743098

/-! ## A184872.P16640163310448465324

`A206805(n+1)+∑[A022927(n)]`
-/

namespace A184872.P16640163310448465324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206805 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184872.P16640163310448465324

/-!
# A184873: a(n) = n + floor(nr/t) + floor(ns/t), where r=log(2), s=log(3), t=log(5).

The programs for A184873, there is no canonical definition to state claims against.
-/

/-! ## A184873.P10121296688526509692

`∑[A022925(n)+A022928(n)+1]`
-/

namespace A184873.P10121296688526509692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022925 n + (A022928 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184873.P10121296688526509692

/-! ## A184873.P16177946948755679741

`A066344(n+1)+∑[A022928(n)]`
-/

namespace A184873.P16177946948755679741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184873.P16177946948755679741

/-! ## A184873.P4982090272132432971

`A329997(n+1)-(A187386(n+1)+1)`
-/

namespace A184873.P4982090272132432971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329997 (n + 1) - (A187386 (n + 1) + 1)

end

end A184873.P4982090272132432971

/-! ## A184873.P585885917047266616

`A023443(A329997(n+1)-A187386(n+1))`
-/

namespace A184873.P585885917047266616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A329997 (n + 1) - A187386 (n + 1)).toNat

end

end A184873.P585885917047266616

/-! ## A184873.P10102194447303250070

`A066344(n+1)+A001222(A050293(n))`
-/

namespace A184873.P10102194447303250070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (n + 1) + A001222 (A050293 n).toNat

end

end A184873.P10102194447303250070

/-!
# A184874: Numbers m such that prime(m) is of the form k+floor(ks/r)+floor(kt/r), where r=log(2), s=log(3), t=log(5).

The programs for A184874, the canonical program `A184874.P12081557824146837878` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184874 has offset 1).

The definition of A184874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1045 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184874.P1321745302951598656

`A000720(p?[A184871(n+1)])`
-/

namespace A184874.P1321745302951598656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P1321745302951598656

namespace A184874

/-- `A000720(p?[A184871(n+1)])` -/
def P1321745302951598656.Spec : Prop :=
  ∀ n, P1321745302951598656.a n = A184874 (n + 1)

end A184874

/-! ## A184874.P12081557824146837878

`A061395(p?[A184871(n+1)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A184874

/-- `A061395(p?[A184871(n+1)])` -/
def P12081557824146837878.Spec : Prop :=
  ∀ n, P12081557824146837878.a n = A184874 (n + 1)

theorem P12081557824146837878.correct : P12081557824146837878.Spec := by
  intro n
  simp only [A184874, Nat.add_sub_cancel]

end A184874

/-! ## A184874.P15422422740328981621

`A065770(p?[A184871(n+1)])`
-/

namespace A184874.P15422422740328981621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P15422422740328981621

namespace A184874

/-- `A065770(p?[A184871(n+1)])` -/
def P15422422740328981621.Spec : Prop :=
  ∀ n, P15422422740328981621.a n = A184874 (n + 1)

end A184874

/-! ## A184874.P8231624401607700054

`A003963(p?[A184871(n+1)])`
-/

namespace A184874.P8231624401607700054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P8231624401607700054

namespace A184874

/-- `A003963(p?[A184871(n+1)])` -/
def P8231624401607700054.Spec : Prop :=
  ∀ n, P8231624401607700054.a n = A184874 (n + 1)

end A184874

/-! ## A184874.P6663497957789178353

`A026233(p?[A184871(n+1)])`
-/

namespace A184874.P6663497957789178353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P6663497957789178353

namespace A184874

/-- `A026233(p?[A184871(n+1)])` -/
def P6663497957789178353.Spec : Prop :=
  ∀ n, P6663497957789178353.a n = A184874 (n + 1)

end A184874

/-! ## A184874.P2499596404187628391

`A049084(p?[A184871(n+1)])`
-/

namespace A184874.P2499596404187628391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P2499596404187628391

namespace A184874

/-- `A049084(p?[A184871(n+1)])` -/
def P2499596404187628391.Spec : Prop :=
  ∀ n, P2499596404187628391.a n = A184874 (n + 1)

end A184874

/-! ## A184874.P3561131197113842402

`A055396(p?[A184871(n+1)])`
-/

namespace A184874.P3561131197113842402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P3561131197113842402

namespace A184874

/-- `A055396(p?[A184871(n+1)])` -/
def P3561131197113842402.Spec : Prop :=
  ∀ n, P3561131197113842402.a n = A184874 (n + 1)

end A184874

/-! ## A184874.P8864781087155736889

`A056239(p?[A184871(n+1)])`
-/

namespace A184874.P8864781087155736889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P8864781087155736889

namespace A184874

/-- `A056239(p?[A184871(n+1)])` -/
def P8864781087155736889.Spec : Prop :=
  ∀ n, P8864781087155736889.a n = A184874 (n + 1)

end A184874

/-! ## A184874.P4912372131789977104

`A087712(p?[A184871(n+1)])`
-/

namespace A184874.P4912372131789977104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184874.P4912372131789977104

namespace A184874

/-- `A087712(p?[A184871(n+1)])` -/
def P4912372131789977104.Spec : Prop :=
  ∀ n, P4912372131789977104.a n = A184874 (n + 1)

end A184874

/-! ## A184874.P6154616157874761812

`record[A049084(A184871(n+3))]`
-/

namespace A184874.P6154616157874761812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A184871 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184874.P6154616157874761812

namespace A184874

/-- `record[A049084(A184871(n+3))]` -/
def P6154616157874761812.Spec : Prop :=
  ∀ n, P6154616157874761812.a n = A184874 (n + 1)

end A184874

/-!
# A184875: Numbers m such that prime(m) is of the form k+floor(kr/s)+floor(kt/s), where r=log(2), s=log(3), t=log(5).

The programs for A184875, there is no canonical definition to state claims against.
-/

/-! ## A184875.P7707367787662474238

`A000720(p?[A184872(n+1)])`
-/

namespace A184875.P7707367787662474238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184875.P7707367787662474238

/-! ## A184875.P2195570102314016099

`A289507(p?[A184872(n+1)])`
-/

namespace A184875.P2195570102314016099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184875.P2195570102314016099

/-! ## A184875.P13688047336833492861

`A003963(p?[A184872(n+1)])`
-/

namespace A184875.P13688047336833492861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184875.P13688047336833492861

/-! ## A184875.P16834699246371076610

`A026233(p?[A184872(n+1)])`
-/

namespace A184875.P16834699246371076610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184875.P16834699246371076610

/-! ## A184875.P10229557403444679246

`A049084(p?[A184872(n+1)])`
-/

namespace A184875.P10229557403444679246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184875.P10229557403444679246

/-! ## A184875.P16030494732840944216

`A055396(p?[A184872(n+1)])`
-/

namespace A184875.P16030494732840944216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184875.P16030494732840944216

/-! ## A184875.P10557760350725432136

`A056239(p?[A184872(n+1)])`
-/

namespace A184875.P10557760350725432136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184875.P10557760350725432136

/-! ## A184875.P2275753067537836512

`A252464(p?[A184872(n+1)])`
-/

namespace A184875.P2275753067537836512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184875.P2275753067537836512

/-! ## A184875.P716587947676283146

`A064553(p?[A184872(n+1)])-1`
-/

namespace A184875.P716587947676283146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A184875.P716587947676283146

/-!
# A184876: Numbers m such that prime(m) is of the form k+floor(kr/t)+floor(ks/t), where r=log(2), s=log(3), t=log(5).

The programs for A184876, there is no canonical definition to state claims against.
-/

/-! ## A184876.P12134858613347031902

`A000720(p?[A184873(n+1)])`
-/

namespace A184876.P12134858613347031902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184876.P12134858613347031902

/-! ## A184876.P6438534150450476179

`A061395(p?[A184873(n+1)])`
-/

namespace A184876.P6438534150450476179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184876.P6438534150450476179

/-! ## A184876.P5447368323521221190

`A289507(p?[A184873(n+1)])`
-/

namespace A184876.P5447368323521221190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184876.P5447368323521221190

/-! ## A184876.P9976386263931609550

`A003963(p?[A184873(n+1)])`
-/

namespace A184876.P9976386263931609550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184876.P9976386263931609550

/-! ## A184876.P18316866010293159965

`A026233(p?[A184873(n+1)])`
-/

namespace A184876.P18316866010293159965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184876.P18316866010293159965

/-! ## A184876.P17879137847631428604

`A049084(p?[A184873(n+1)])`
-/

namespace A184876.P17879137847631428604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184876.P17879137847631428604

/-! ## A184876.P932695036869377492

`A055396(p?[A184873(n+1)])`
-/

namespace A184876.P932695036869377492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184876.P932695036869377492

/-! ## A184876.P2430806357420733778

`A056239(p?[A184873(n+1)])`
-/

namespace A184876.P2430806357420733778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184876.P2430806357420733778

/-! ## A184876.P5122605303826845559

`A036234(p?[A184873(n+1)]-1)`
-/

namespace A184876.P5122605303826845559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A184876.P5122605303826845559

/-! ## A184876.P11838199677499143536

`A036234(xor(1, p?[A184873(n+1)]))`
-/

namespace A184876.P11838199677499143536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A184876.P11838199677499143536

/-!
# A184877: a(n) = n^2*(n-2)^2*(n-4)^2*...*(1 or 2)^2.

The programs for A184877, the canonical program `A184877.P7658229116735972602` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184877 has offset 0).

The definition of A184877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184877.P7658229116735972602

`n²*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184877

/-- `n²*a(n-2)` -/
def P7658229116735972602.Spec : Prop :=
  ∀ n, (P7658229116735972602.a n : ℤ) = A184877 n

theorem P7658229116735972602.correct : P7658229116735972602.Spec := by
  intro n
  simp only [A184877]

end A184877

/-! ## A184877.P5984845217103864152

`A006882(n)²`
-/

namespace A184877.P5984845217103864152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n ^ 2

end

end A184877.P5984845217103864152

namespace A184877

/-- `A006882(n)²` -/
def P5984845217103864152.Spec : Prop :=
  ∀ n, P5984845217103864152.a n = A184877 n

end A184877

/-! ## A184877.P11029466070084446723

`∏[n/a(n-1)]²` with `a(0)=1`
-/

namespace A184877.P11029466070084446723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A184877.P11029466070084446723

namespace A184877

/-- `∏[n/a(n-1)]²` -/
def P11029466070084446723.Spec : Prop :=
  ∀ n, P11029466070084446723.a n = (A184877 n : ℚ)

end A184877

/-! ## A184877.P7444859274778777928

`n*n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A184877.P7444859274778777928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n * (n * a (n - 2))

end

end A184877.P7444859274778777928

namespace A184877

/-- `n*n*a(n-2)` -/
def P7444859274778777928.Spec : Prop :=
  ∀ n, (P7444859274778777928.a n : ℤ) = A184877 n

theorem P7444859274778777928.correct : P7444859274778777928.Spec := by
  intro n
  simp only [A184877, Nat.add_sub_cancel, A184877.P7444859274778777928.a, A184877.P7658229116735972602.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A184877

/-! ## A184877.P10604218403675466976

`∏[n^2/a(n-1)]` with `a(0)=1`
-/

namespace A184877.P10604218403675466976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n ^ 2 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A184877.P10604218403675466976

namespace A184877

/-- `∏[n^2/a(n-1)]` -/
def P10604218403675466976.Spec : Prop :=
  ∀ n, P10604218403675466976.a n = (A184877 n : ℚ)

end A184877

/-! ## A184877.P2860324982179795816

`a(n-2)/n^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A184877.P2860324982179795816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (n : ℚ) ^ (-2 : ℤ)

end

end A184877.P2860324982179795816

namespace A184877

/-- `a(n-2)/n^(-2)` -/
def P2860324982179795816.Spec : Prop :=
  ∀ n, P2860324982179795816.a n = (A184877 n : ℚ)

end A184877

/-! ## A184877.P15295040742801906929

`abs(A092396(n))`
-/

namespace A184877.P15295040742801906929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092396 n|

end

end A184877.P15295040742801906929

namespace A184877

/-- `abs(A092396(n))` -/
def P15295040742801906929.Spec : Prop :=
  ∀ n, P15295040742801906929.a n = A184877 n

end A184877

/-! ## A184877.P6792548756238330070

`A230698(∑[n])²`
-/

namespace A184877.P6792548756238330070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A184877.P6792548756238330070

namespace A184877

/-- `A230698(∑[n])²` -/
def P6792548756238330070.Spec : Prop :=
  ∀ n, P6792548756238330070.a n = A184877 n

end A184877

/-! ## A184877.P12714046527822946604

`(A128882(n)+1)²`
-/

namespace A184877.P12714046527822946604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128882 n + 1) ^ 2

end

end A184877.P12714046527822946604

namespace A184877

/-- `(A128882(n)+1)²` -/
def P12714046527822946604.Spec : Prop :=
  ∀ n, P12714046527822946604.a n = A184877 n

end A184877

/-! ## A184877.P16669905572620951010

`A248809(C(n, 2))²`
-/

namespace A184877.P16669905572620951010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (Nat.choose n 2) ^ 2

end

end A184877.P16669905572620951010

namespace A184877

/-- `A248809(C(n, 2))²` -/
def P16669905572620951010.Spec : Prop :=
  ∀ n, P16669905572620951010.a n = A184877 n

end A184877

/-!
# A184878: Third column (negated) of triangle in A182971.

The programs for A184878, there is no canonical definition to state claims against.
-/

/-! ## A184878.P5472596905287330822

`A186230(∑[n!²])²`
-/

namespace A184878.P5472596905287330822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186230 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A184878.P5472596905287330822

/-! ## A184878.P1426249847169260569

`Δ[A348676(2*C(n, 4))]²`
-/

namespace A184878.P1426249847169260569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348676 (2 * Nat.choose n 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A184878.P1426249847169260569

/-!
# A184879: Triangular array T read by rows: T(n, k) = Sum_{i=0..2*n-2*k} binomial(2*n-2*k, i)*binomial(2*k, i)*(-1)^i, 0 <= k <= n.

The programs for A184879, there is no canonical definition to state claims against.
-/

/-! ## A184879.P15541915260345946088

`A117352(∑[char[∑[n]]]²+(n+1)²-n²)`
-/

namespace A184879.P15541915260345946088
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117352 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ))).toNat

end

end A184879.P15541915260345946088

/-! ## A184879.P5291713268396919866

`A098593(A185868(n+1)-1)`
-/

namespace A184879.P5291713268396919866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098593 (A185868 (n + 1) - 1).toNat

end

end A184879.P5291713268396919866

/-! ## A184879.P15209240064641507180

`A098593(eq[0, A099390(n+1)])`
-/

namespace A184879.P15209240064641507180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184879.P15209240064641507180

/-! ## A184879.P17780718609818041749

`A098593(lt[A099390(n+1), 1])`
-/

namespace A184879.P17780718609818041749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098593 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A184879.P17780718609818041749

/-! ## A184879.P5437393756939921025

`A098593(eq[n+1, A380200(n+1)])`
-/

namespace A184879.P5437393756939921025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184879.P5437393756939921025

/-! ## A184879.P10964384213858430140

`A098593(record[A056011(n+1)-A053121(n)])`
-/

namespace A184879.P10964384213858430140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) - A053121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098593 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184879.P10964384213858430140

/-!
# A184881: a(n) = A184879(2*n, n) - A184879(2*n, n+1) where A184879(n, k) = Hypergeometric2F1(-2*k, 2*k-2*n, 1, -1) if 0<=k<=n.

The programs for A184881, there is no canonical definition to state claims against.
-/

/-! ## A184881.P10475160164988175447

`2-a(A184879(n*n))` with `a(0)=1, a(1)=-3, a(2)=2, a(3)=-3, a(4)=6, a(5)=-14, a(6)=36, a(7)=-99, a(8)=286`
-/

namespace A184881.P10475160164988175447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 2, -3, 6, -14, 36, -99, 286] fun n a =>
  2 - a (A184879 (n * n)).toNat

end

end A184881.P10475160164988175447

/-! ## A184881.P615019272754996473

`A198786(2*(n+1))-(A198786(2*n+1)+A090192(2*n+1))`
-/

namespace A184881.P615019272754996473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198786 (2 * (n + 1)) - (A198786 (2 * n + 1) + A090192 (2 * n + 1))

end

end A184881.P615019272754996473

/-! ## A184881.P26239738405913723

`A068555(A055998(n))/A280560(n)`
-/

namespace A184881.P26239738405913723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A055998 n).toNat : ℚ) / (A280560 n : ℚ)

end

end A184881.P26239738405913723

/-! ## A184881.P7634930287953897725

`A065432(A033537(n))`
-/

namespace A184881.P7634930287953897725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065432 (A033537 n).toNat

end

end A184881.P7634930287953897725

/-! ## A184881.P13392105337364979139

`A065432(A054000(n+1)+n)`
-/

namespace A184881.P13392105337364979139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065432 (A054000 (n + 1) + (n : ℤ)).toNat

end

end A184881.P13392105337364979139

/-! ## A184881.P11631531824579643341

`A065432(A183575(2*n+1)+n)`
-/

namespace A184881.P11631531824579643341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065432 (A183575 (2 * n + 1) + (n : ℤ)).toNat

end

end A184881.P11631531824579643341

/-!
# A184882: a(n) = 1 - 4*n - 4*n^2.

The programs for A184882, the canonical program `A184882.P3234641631961328159` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184882 has offset 0).

The definition of A184882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-4*n-4*n²` (program `A184882.P3234641631961328159`, by `A184882.P3234641631961328159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184882.P16710935768355731964

`a(n-1)-8*n` with `a(0)=1`
-/

namespace A184882.P16710935768355731964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (8 * n : ℤ)

end

end A184882.P16710935768355731964

namespace A184882

/-- `a(n-1)-8*n` -/
def P16710935768355731964.Spec : Prop :=
  ∀ n, P16710935768355731964.a n = A184882 n

theorem P16710935768355731964.correct : P16710935768355731964.Spec := by
  intro n
  induction n with
  | zero => simp [A184882, A184882.P16710935768355731964.a, A184882.P3234641631961328159.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A184882, Nat.add_sub_cancel, A184882.P16710935768355731964.a, A184882.P3234641631961328159.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A184882

/-! ## A184882.P3234641631961328159

`1-4*n-4*n²`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A184882

/-- `1-4*n-4*n²` -/
def P3234641631961328159.Spec : Prop :=
  ∀ n, P3234641631961328159.a n = A184882 n

theorem P3234641631961328159.correct : P3234641631961328159.Spec := by
  intro n
  simp only [A184882]

end A184882

/-! ## A184882.P6034985741944061350

`or(1, ∑[-8*n])`
-/

namespace A184882.P6034985741944061350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184882.P6034985741944061350

namespace A184882

/-- `or(1, ∑[-8*n])` -/
def P6034985741944061350.Spec : Prop :=
  ∀ n, P6034985741944061350.a n = A184882 n

end A184882

/-! ## A184882.P12504221047129367134

`xor(1, ∑[-8*n])`
-/

namespace A184882.P12504221047129367134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184882.P12504221047129367134

namespace A184882

/-- `xor(1, ∑[-8*n])` -/
def P12504221047129367134.Spec : Prop :=
  ∀ n, P12504221047129367134.a n = A184882 n

end A184882

/-! ## A184882.P4070640539384757539

`-record[xor(1, n)²-2]`
-/

namespace A184882.P4070640539384757539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184882.P4070640539384757539

namespace A184882

/-- `-record[xor(1, n)²-2]` -/
def P4070640539384757539.Spec : Prop :=
  ∀ n, P4070640539384757539.a n = A184882 n

end A184882

/-! ## A184882.P14419535376389116418

`∑[a(n-1)-8]` with `a(0)=1, a(1)=-8`
-/

namespace A184882.P14419535376389116418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -8] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184882.P14419535376389116418

namespace A184882

/-- `∑[a(n-1)-8]` -/
def P14419535376389116418.Spec : Prop :=
  ∀ n, P14419535376389116418.a n = A184882 n

end A184882

/-! ## A184882.P2693012228747821712

`floor(-(tan(2)+(2*n+1)²))`
-/

namespace A184882.P2693012228747821712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-(Real.tan (2 : ℝ) + ((2 * n + 1) ^ 2 : ℝ))⌋

end

end A184882.P2693012228747821712

namespace A184882

/-- `floor(-(tan(2)+(2*n+1)²))` -/
def P2693012228747821712.Spec : Prop :=
  ∀ n, P2693012228747821712.a n = A184882 n

end A184882

/-! ## A184882.P14237608505539942164

`round(-(tan(2)+(2*n+1)²))`
-/

namespace A184882.P14237608505539942164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(Real.tan (2 : ℝ) + ((2 * n + 1) ^ 2 : ℝ)))

end

end A184882.P14237608505539942164

namespace A184882

/-- `round(-(tan(2)+(2*n+1)²))` -/
def P14237608505539942164.Spec : Prop :=
  ∀ n, P14237608505539942164.a n = A184882 n

end A184882

/-! ## A184882.P17100843785522510015

`floor(-(cot(9)+(2*n+1)²))`
-/

namespace A184882.P17100843785522510015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-(Real.cot (9 : ℝ) + ((2 * n + 1) ^ 2 : ℝ))⌋

end

end A184882.P17100843785522510015

namespace A184882

/-- `floor(-(cot(9)+(2*n+1)²))` -/
def P17100843785522510015.Spec : Prop :=
  ∀ n, P17100843785522510015.a n = A184882 n

end A184882

/-! ## A184882.P5217282010999794606

`round(-(cot(9)+(2*n+1)²))`
-/

namespace A184882.P5217282010999794606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(Real.cot (9 : ℝ) + ((2 * n + 1) ^ 2 : ℝ)))

end

end A184882.P5217282010999794606

namespace A184882

/-- `round(-(cot(9)+(2*n+1)²))` -/
def P5217282010999794606.Spec : Prop :=
  ∀ n, P5217282010999794606.a n = A184882 n

end A184882

/-! ## A184882.P1742705357380789286

`Δ[2*n-C(2*n+1, 3)]`
-/

namespace A184882.P1742705357380789286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.choose (2 * n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184882.P1742705357380789286

namespace A184882

/-- `Δ[2*n-C(2*n+1, 3)]` -/
def P1742705357380789286.Spec : Prop :=
  ∀ n, P1742705357380789286.a n = A184882 n

end A184882

/-! ## A184882.P13274345046014002817

`(2*n+1)*(2/C(2*n+1, 2*n)-(2*n+1))`
-/

namespace A184882.P13274345046014002817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (2 / (Nat.choose (2 * n + 1) (2 * n) : ℚ) - (2 * n + 1 : ℚ))

end

end A184882.P13274345046014002817

namespace A184882

/-- `(2*n+1)*(2/C(2*n+1, 2*n)-(2*n+1))` -/
def P13274345046014002817.Spec : Prop :=
  ∀ n, P13274345046014002817.a n = (A184882 n : ℚ)

end A184882

/-! ## A184882.P8282812458764109222

`∑[4-A281813(n)]`
-/

namespace A184882.P8282812458764109222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A281813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184882.P8282812458764109222

namespace A184882

/-- `∑[4-A281813(n)]` -/
def P8282812458764109222.Spec : Prop :=
  ∀ n, P8282812458764109222.a n = A184882 n

end A184882

/-! ## A184882.P11787708261484618750

`(2-A035008(n))/2`
-/

namespace A184882.P11787708261484618750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A035008 n : ℚ) / 2

end

end A184882.P11787708261484618750

namespace A184882

/-- `(2-A035008(n))/2` -/
def P11787708261484618750.Spec : Prop :=
  ∀ n, P11787708261484618750.a n = (A184882 n : ℚ)

end A184882

/-! ## A184882.P1380011859295971099

`(3-A069129(n+1))/2`
-/

namespace A184882.P1380011859295971099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A069129 (n + 1) : ℚ) / 2

end

end A184882.P1380011859295971099

namespace A184882

/-- `(3-A069129(n+1))/2` -/
def P1380011859295971099.Spec : Prop :=
  ∀ n, P1380011859295971099.a n = (A184882 n : ℚ)

end A184882

/-!
# A184883: Number triangle T(n,k) = [k<=n]*Hypergeometric2F1([-k, 2k-2n], [1], 2).

The programs for A184883, there is no canonical definition to state claims against.
-/

/-! ## A184883.P10205841349666064083

`A114123(A061579(n))`
-/

namespace A184883.P10205841349666064083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (A061579 n).toNat

end

end A184883.P10205841349666064083

/-! ## A184883.P13281322890079630800

`A114123(A114327(n)+n)`
-/

namespace A184883.P13281322890079630800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (A114327 n + (n : ℤ)).toNat

end

end A184883.P13281322890079630800

/-! ## A184883.P16551834364988472936

`A114123(A038722(n+1)-1)`
-/

namespace A184883.P16551834364988472936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (A038722 (n + 1) - 1).toNat

end

end A184883.P16551834364988472936

/-! ## A184883.P17704642450215291366

`A114123(A002024(n+1)²-(n+1))`
-/

namespace A184883.P17704642450215291366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A184883.P17704642450215291366

/-! ## A184883.P3732659526961904081

`A114123(A038722(n+2))`
-/

namespace A184883.P3732659526961904081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (A038722 (n + 2)).toNat

end

end A184883.P3732659526961904081

/-! ## A184883.P9918095751034652778

`A140750(A361974(n+1))`
-/

namespace A184883.P9918095751034652778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A361974 (n + 1)).toNat

end

end A184883.P9918095751034652778

/-!
# A184884: Diagonal sums of number triangle A184883.

The programs for A184884, the canonical program `A184884.P3036636223459627772` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184884 has offset 0).

The definition of A184884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184884.P3036636223459627772

`A079972(2*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A184884

/-- `A079972(2*n)` -/
def P3036636223459627772.Spec : Prop :=
  ∀ n, P3036636223459627772.a n = A184884 n

theorem P3036636223459627772.correct : P3036636223459627772.Spec := by
  intro n
  simp only [A184884]

end A184884

/-! ## A184884.P5230028708463236567

`gcd(A000038(n), A079972(A004277(n)))`
-/

namespace A184884.P5230028708463236567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A079972 (A004277 n).toNat)

end

end A184884.P5230028708463236567

namespace A184884

/-- `gcd(A000038(n), A079972(A004277(n)))` -/
def P5230028708463236567.Spec : Prop :=
  ∀ n, (P5230028708463236567.a n : ℤ) = A184884 n

end A184884

/-! ## A184884.P16104927749583824456

`lcm(A033999(n), A079972(A004277(n)))`
-/

namespace A184884.P16104927749583824456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A079972 (A004277 n).toNat)

end

end A184884.P16104927749583824456

namespace A184884

/-- `lcm(A033999(n), A079972(A004277(n)))` -/
def P16104927749583824456.Spec : Prop :=
  ∀ n, (P16104927749583824456.a n : ℤ) = A184884 n

end A184884

/-! ## A184884.P6719000422507430893

`A079972(A004277(n))+A007814(Δ[n²])`
-/

namespace A184884.P6719000422507430893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079972 (A004277 n).toNat + A007814 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A184884.P6719000422507430893

namespace A184884

/-- `A079972(A004277(n))+A007814(Δ[n²])` -/
def P6719000422507430893.Spec : Prop :=
  ∀ n, P6719000422507430893.a n = A184884 n

end A184884

/-! ## A184884.P13967124200106465213

`A079972(A004277(n))+val(A000961(n+1), 6)`
-/

namespace A184884.P13967124200106465213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079972 (A004277 n).toNat + (SequenceMachineLib.valuation (A000961 (n + 1)).toNat 6 : ℤ)

end

end A184884.P13967124200106465213

namespace A184884

/-- `A079972(A004277(n))+val(A000961(n+1), 6)` -/
def P13967124200106465213.Spec : Prop :=
  ∀ n, P13967124200106465213.a n = A184884 n

end A184884

/-! ## A184884.P10364640081401863183

`A079972(A004277(n))^A001221(A048883(n))`
-/

namespace A184884.P10364640081401863183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079972 (A004277 n).toNat : ℚ) ^ (A001221 (A048883 n).toNat : ℤ)

end

end A184884.P10364640081401863183

namespace A184884

/-- `A079972(A004277(n))^A001221(A048883(n))` -/
def P10364640081401863183.Spec : Prop :=
  ∀ n, P10364640081401863183.a n = (A184884 n : ℚ)

end A184884

/-! ## A184884.P9524013073735238839

`A079972(A004277(n))^A033999(A257686(n))`
-/

namespace A184884.P9524013073735238839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079972 (A004277 n).toNat : ℚ) ^ (A033999 (A257686 n).toNat : ℤ)

end

end A184884.P9524013073735238839

namespace A184884

/-- `A079972(A004277(n))^A033999(A257686(n))` -/
def P9524013073735238839.Spec : Prop :=
  ∀ n, P9524013073735238839.a n = (A184884 n : ℚ)

end A184884

/-! ## A184884.P13108142123928918513

`A079972(A004277(n))%A049680(n)`
-/

namespace A184884.P13108142123928918513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079972 (A004277 n).toNat) (A049680 n)

end

end A184884.P13108142123928918513

namespace A184884

/-- `A079972(A004277(n))%A049680(n)` -/
def P13108142123928918513.Spec : Prop :=
  ∀ n, P13108142123928918513.a n = A184884 n

end A184884

/-! ## A184884.P7413493492668217254

`A079972(A004277(n))/A007318(∑[n])`
-/

namespace A184884.P7413493492668217254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079972 (A004277 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A184884.P7413493492668217254

namespace A184884

/-- `A079972(A004277(n))/A007318(∑[n])` -/
def P7413493492668217254.Spec : Prop :=
  ∀ n, P7413493492668217254.a n = (A184884 n : ℚ)

end A184884

/-!
# A184886: Irregular triangle of the square root of the sums of squares mentioned in A184763.

The programs for A184886, there is no canonical definition to state claims against.
-/

/-! ## A184886.P1842739660437053186

`A127721(A184763(n+1))`
-/

namespace A184886.P1842739660437053186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127721 (A184763 (n + 1)).toNat

end

end A184886.P1842739660437053186

/-!
# A184894: a(n) equals the coefficient of x^(2n-1) in the n-th iteration of x+x^3 for n>=1.

The programs for A184894, there is no canonical definition to state claims against.
-/

/-! ## A184894.P18347171995056470078

`A019446(n!*C(2*n, n))+C(n, 2)`
-/

namespace A184894.P18347171995056470078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (Nat.factorial n * Nat.choose (2 * n) n) + (Nat.choose n 2 : ℤ)

end

end A184894.P18347171995056470078

/-!
# A184899: n such that the n-th centered 12-gonal number is prime. Indices of prime star numbers.

The programs for A184899, there is no canonical definition to state claims against.
-/

/-! ## A184899.P15392987507392734832

`A111292(n+1)+1`
-/

namespace A184899.P15392987507392734832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111292 (n + 1) + 1

end

end A184899.P15392987507392734832

/-! ## A184899.P9231901580256375085

`A020725(A111292(n+1))`
-/

namespace A184899.P9231901580256375085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A111292 (n + 1)).toNat

end

end A184899.P9231901580256375085

/-! ## A184899.P617084751051415169

`lt[A245838(A194274(2*(n+1))), 2]+2`
-/

namespace A184899.P617084751051415169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A194274 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A184899.P617084751051415169

/-! ## A184899.P1408380650067322354

`eq[2, A305973(A003215(n))]+1`
-/

namespace A184899.P1408380650067322354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A003215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184899.P1408380650067322354

/-! ## A184899.P14332119737937748011

`eq[1, A001222(12*C(n, 2)+1)]`
-/

namespace A184899.P14332119737937748011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * Nat.choose n 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184899.P14332119737937748011

/-! ## A184899.P7056392451845308704

`eq[2, A000005(12*C(n, 2)+1)]`
-/

namespace A184899.P7056392451845308704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * Nat.choose n 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184899.P7056392451845308704

/-! ## A184899.P7702435342993444368

`eq[2, A000005(or(1, 12*C(n, 2)))]`
-/

namespace A184899.P7702435342993444368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor 1 (12 * Nat.choose n 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184899.P7702435342993444368

/-! ## A184899.P591783282329498543

`eq[1, A001222(xor(1, 12*C(n, 2)))]`
-/

namespace A184899.P591783282329498543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor 1 (12 * Nat.choose n 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184899.P591783282329498543

/-! ## A184899.P3756205936668544629

`eq[2, A000005(xor(1, 12*C(n, 2)))]`
-/

namespace A184899.P3756205936668544629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.xor 1 (12 * Nat.choose n 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184899.P3756205936668544629

/-! ## A184899.P9073045014773774395

`eq[1, A001222((n+1)*6*n+1)]+1`
-/

namespace A184899.P9073045014773774395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) * (6 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184899.P9073045014773774395

