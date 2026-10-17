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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
# A237500: Number of binary strings of length 2n which contain the ones' complement of each of their two halves.

The programs for A237500, the canonical program `A237500.P16062265895415662057` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237500 has offset 1).

The definition of A237500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237500.P4950826153542551238

`∑[A045663(n+1)]`
-/

namespace A237500.P4950826153542551238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237500.P4950826153542551238

namespace A237500

/-- `∑[A045663(n+1)]` -/
def P4950826153542551238.Spec : Prop :=
  ∀ n, P4950826153542551238.a n = A237500 (n + 1)

end A237500

/-! ## A237500.P16062265895415662057

`∑[2*A011946(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A237500

/-- `∑[2*A011946(n+1)]` -/
def P16062265895415662057.Spec : Prop :=
  ∀ n, P16062265895415662057.a n = A237500 (n + 1)

theorem P16062265895415662057.correct : P16062265895415662057.Spec := by
  intro n
  simp only [A237500, Nat.add_sub_cancel]

end A237500

/-! ## A237500.P15765041055511885758

`∑[record[A045663(abs(1-n))]]`
-/

namespace A237500.P15765041055511885758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045663 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237500.P15765041055511885758

namespace A237500

/-- `∑[record[A045663(abs(1-n))]]` -/
def P15765041055511885758.Spec : Prop :=
  ∀ n, P15765041055511885758.a n = A237500 (n + 1)

end A237500

/-! ## A237500.P7207646482443281917

`Δ[∑[∑[A045663(n)]]-n]`
-/

namespace A237500.P7207646482443281917
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237500.P7207646482443281917

namespace A237500

/-- `Δ[∑[∑[A045663(n)]]-n]` -/
def P7207646482443281917.Spec : Prop :=
  ∀ n, P7207646482443281917.a n = A237500 (n + 1)

end A237500

/-! ## A237500.P3535167561998329848

`∑[2*A045683(2*(n+1))]`
-/

namespace A237500.P3535167561998329848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045683 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237500.P3535167561998329848

namespace A237500

/-- `∑[2*A045683(2*(n+1))]` -/
def P3535167561998329848.Spec : Prop :=
  ∀ n, P3535167561998329848.a n = A237500 (n + 1)

end A237500

/-! ## A237500.P4635843303305999108

`∑[(n+1)*A064355(n+1)]`
-/

namespace A237500.P4635843303305999108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237500.P4635843303305999108

namespace A237500

/-- `∑[(n+1)*A064355(n+1)]` -/
def P4635843303305999108.Spec : Prop :=
  ∀ n, P4635843303305999108.a n = A237500 (n + 1)

end A237500

/-!
# A237501: Number of binary strings of length 2n which contain the reversals of each of their two halves.

The programs for A237501, there is no canonical definition to state claims against.
-/

/-! ## A237501.P7960479819514982667

`A225924(A225921(n+2)+A225895(n+1))`
-/

namespace A237501.P7960479819514982667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225924 (A225921 (n + 2) + A225895 (n + 1)).toNat

end

end A237501.P7960479819514982667

/-!
# A237503: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237503, there is no canonical definition to state claims against.
-/

/-! ## A237503.P16816668479406018646

`A237511(∑[4*n]+1)`
-/

namespace A237503.P16816668479406018646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237503.P16816668479406018646

/-! ## A237503.P866882709813659386

`record[A237511(A330613(n+1))]`
-/

namespace A237503.P866882709813659386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237503.P866882709813659386

/-! ## A237503.P17948064041632699270

`or(char[2], A237511(A001844(n)))`
-/

namespace A237503.P17948064041632699270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A237511 (A001844 n).toNat)

end

end A237503.P17948064041632699270

/-! ## A237503.P10724831240443056875

`record[A003982(n)*A237511(n+1)]`
-/

namespace A237503.P10724831240443056875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A237511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237503.P10724831240443056875

/-!
# A237504: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237504, there is no canonical definition to state claims against.
-/

/-! ## A237504.P2790594120421147527

`A237511(∑[n]+1)`
-/

namespace A237504.P2790594120421147527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237504.P2790594120421147527

/-! ## A237504.P12363471005509372597

`record[root(A237511(n+1), A117418(n))]`
-/

namespace A237504.P12363471005509372597
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237511 (n + 1) : ℝ) ^ (1 / (A117418 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237504.P12363471005509372597

/-! ## A237504.P16515181262696613530

`record[lcm(A103452(n), A237511(n+1))]`
-/

namespace A237504.P16515181262696613530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103452 n) (A237511 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237504.P16515181262696613530

/-! ## A237504.P4041320158968867399

`record[A237511(n+1)/A139382(n+1)]`
-/

namespace A237504.P4041320158968867399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237511 (n + 1) : ℚ) / (A139382 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237504.P4041320158968867399

/-! ## A237504.P10123235171891818382

`record[A008683(A059268(n))*A237511(n+1)]`
-/

namespace A237504.P10123235171891818382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A059268 n).toNat * A237511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237504.P10123235171891818382

/-!
# A237505: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237505, there is no canonical definition to state claims against.
-/

/-! ## A237505.P9089251381842497659

`A237511(∑[n+1]+2)`
-/

namespace A237505.P9089251381842497659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237505.P9089251381842497659

/-! ## A237505.P17414007247033654121

`A237511(A133263(n+1))+A235358(n+1)`
-/

namespace A237505.P17414007247033654121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A133263 (n + 1)).toNat + A235358 (n + 1)

end

end A237505.P17414007247033654121

/-! ## A237505.P15958682616205333815

`A237511(A133263(n+1))%A152510(n+3)`
-/

namespace A237505.P15958682616205333815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237511 (A133263 (n + 1)).toNat) (A152510 (n + 3))

end

end A237505.P15958682616205333815

/-! ## A237505.P2867539840625971879

`record[A237511(A101881(n)+1)]`
-/

namespace A237505.P2867539840625971879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237505.P2867539840625971879

/-! ## A237505.P10674813183715326817

`record[A237511(A198455(n+1))]`
-/

namespace A237505.P10674813183715326817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237505.P10674813183715326817

/-!
# A237506: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237506, there is no canonical definition to state claims against.
-/

/-! ## A237506.P4101366054319983822

`A237511(∑[n+2]+4)`
-/

namespace A237506.P4101366054319983822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237506.P4101366054319983822

/-! ## A237506.P15465011295735115573

`lcm(A020985(n), A237511(A167614(n+1)))`
-/

namespace A237506.P15465011295735115573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A237511 (A167614 (n + 1)).toNat)

end

end A237506.P15465011295735115573

/-! ## A237506.P9772670739931225102

`A062379(n+1)*A237511(A167614(n+1))`
-/

namespace A237506.P9772670739931225102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (n + 1) * A237511 (A167614 (n + 1)).toNat

end

end A237506.P9772670739931225102

/-! ## A237506.P13782208297816688710

`A184303(n+1)*A237511(A167614(n+1))`
-/

namespace A237506.P13782208297816688710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (n + 1) * A237511 (A167614 (n + 1)).toNat

end

end A237506.P13782208297816688710

/-! ## A237506.P4807157548337069478

`A237511(A034856(n+2))%A267950(n+2)`
-/

namespace A237506.P4807157548337069478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237511 (A034856 (n + 2)).toNat) (A267950 (n + 2))

end

end A237506.P4807157548337069478

/-!
# A237507: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237507, there is no canonical definition to state claims against.
-/

/-! ## A237507.P12972636086727434034

`A237511(A374004(n+1))`
-/

namespace A237507.P12972636086727434034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A374004 (n + 1)).toNat

end

end A237507.P12972636086727434034

/-! ## A237507.P9782879592310942182

`A237511(A141214(n)+7)`
-/

namespace A237507.P9782879592310942182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A141214 n + 7).toNat

end

end A237507.P9782879592310942182

/-! ## A237507.P4066731110517940410

`A237511(A052905(n)+9)`
-/

namespace A237507.P4066731110517940410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A052905 n + 9).toNat

end

end A237507.P4066731110517940410

/-! ## A237507.P6490846349734850534

`A237511(A167614(n+2)+1)`
-/

namespace A237507.P6490846349734850534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A167614 (n + 2) + 1).toNat

end

end A237507.P6490846349734850534

/-! ## A237507.P5649619112250950466

`A237511(Δ[A264443(n)-n²])`
-/

namespace A237507.P5649619112250950466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (f1 (n + 1) - f1 n).toNat

end

end A237507.P5649619112250950466

/-!
# A237508: Number of (n+1) X (5+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237508, there is no canonical definition to state claims against.
-/

/-! ## A237508.P15275592227749765479

`A237511(A374005(n+1))`
-/

namespace A237508.P15275592227749765479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A374005 (n + 1)).toNat

end

end A237508.P15275592227749765479

/-! ## A237508.P16760199192153074838

`A237511(A056000(n)+15)`
-/

namespace A237508.P16760199192153074838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A056000 n + 15).toNat

end

end A237508.P16760199192153074838

/-! ## A237508.P13296637609556063417

`A237511(eq[6, A131818(n+1)])`
-/

namespace A237508.P13296637609556063417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237508.P13296637609556063417

/-! ## A237508.P10474431221496792201

`A237511(Δ[A264443(n)])`
-/

namespace A237508.P10474431221496792201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (f1 (n + 1) - f1 n).toNat

end

end A237508.P10474431221496792201

/-! ## A237508.P18390664656692112433

`A237511(A056115(n)+11)`
-/

namespace A237508.P18390664656692112433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A056115 n + 11).toNat

end

end A237508.P18390664656692112433

/-!
# A237509: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237509, there is no canonical definition to state claims against.
-/

/-! ## A237509.P8432103031872126452

`A237511(A374007(n+1))`
-/

namespace A237509.P8432103031872126452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A374007 (n + 1)).toNat

end

end A237509.P8432103031872126452

/-! ## A237509.P2578145686055090809

`A237511(eq[7, A131818(n+1)])`
-/

namespace A237509.P2578145686055090809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237509.P2578145686055090809

/-! ## A237509.P10072367790477218870

`A237511(A052905(n+3))`
-/

namespace A237509.P10072367790477218870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A052905 (n + 3)).toNat

end

end A237509.P10072367790477218870

/-! ## A237509.P16788467752623519591

`A237511(eq[3, A219347(n)])`
-/

namespace A237509.P16788467752623519591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237509.P16788467752623519591

/-! ## A237509.P7426438709863873150

`A237511(eq[5, A193592(n)])`
-/

namespace A237509.P7426438709863873150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237509.P7426438709863873150

/-!
# A237510: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237510, there is no canonical definition to state claims against.
-/

/-! ## A237510.P15253563403696254613

`A237511(A374008(n+1))`
-/

namespace A237510.P15253563403696254613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (A374008 (n + 1)).toNat

end

end A237510.P15253563403696254613

/-! ## A237510.P16062128337066709359

`A237511(eq[8, A131818(n+1)])`
-/

namespace A237510.P16062128337066709359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237510.P16062128337066709359

/-! ## A237510.P621919367754131664

`A237511(eq[4, A219347(n)])`
-/

namespace A237510.P621919367754131664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237510.P621919367754131664

/-! ## A237510.P16669676429375196571

`A237511(eq[6, A193592(n)])`
-/

namespace A237510.P16669676429375196571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237510.P16669676429375196571

/-! ## A237510.P3902814671871927982

`A237511(eq[7, A200370(n+1)])`
-/

namespace A237510.P3902814671871927982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237510.P3902814671871927982

/-!
# A237513: T(n,k) = number of maximal horizontal rectangles that contain the Durfee square for partitions of n that consist of k nodes, 1 <= k <= n; triangular array read by rows.

The programs for A237513, there is no canonical definition to state claims against.
-/

/-! ## A237513.P8196613295477953644

`A053164(A119586(n+1))`
-/

namespace A237513.P8196613295477953644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A119586 (n + 1)).toNat

end

end A237513.P8196613295477953644

/-! ## A237513.P9688580062240713891

`gcd(A104887(n+1), A174345(A166350(n+1)))`
-/

namespace A237513.P9688580062240713891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104887 (n + 1)) (A174345 (A166350 (n + 1)).toNat)

end

end A237513.P9688580062240713891

/-!
# A237514: Numbers k such that 2^(k-1) < 3^(m-1) < 2^k < 3^m < 2^(k+1), for some m > 2, a(1) = 1.

The programs for A237514, the canonical program `A237514.P3967440001977244503` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237514 has offset 1).

The definition of A237514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237514.P3967440001977244503

`A020914(comp[floor((n+1)/(log2(3)-1))])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A237514

/-- `A020914(comp[floor((n+1)/(log2(3)-1))])` -/
def P3967440001977244503.Spec : Prop :=
  ∀ n, P3967440001977244503.a n = A237514 (n + 1)

theorem P3967440001977244503.correct : P3967440001977244503.Spec := by
  intro n
  simp only [A237514, Nat.add_sub_cancel]

end A237514

/-! ## A237514.P2387392660691787305

`∩[floor(n*log2(3)), A020914(n)]`
-/

namespace A237514.P2387392660691787305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237514.P2387392660691787305

namespace A237514

/-- `∩[floor(n*log2(3)), A020914(n)]` -/
def P2387392660691787305.Spec : Prop :=
  ∀ n, (P2387392660691787305.a n : ℤ) = A237514 (n + 1)

end A237514

/-! ## A237514.P17889191434808569148

`∩[floor(n*log2(3))+1, A056576(n)]`
-/

namespace A237514.P17889191434808569148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237514.P17889191434808569148

namespace A237514

/-- `∩[floor(n*log2(3))+1, A056576(n)]` -/
def P17889191434808569148.Spec : Prop :=
  ∀ n, (P17889191434808569148.a n : ℤ) = A237514 (n + 1)

end A237514

/-! ## A237514.P16977415175511139256

`2*eq[n, n*A022921(n)]-(n-1)`
-/

namespace A237514.P16977415175511139256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A022921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((n : ℤ) - 1)

end

end A237514.P16977415175511139256

namespace A237514

/-- `2*eq[n, n*A022921(n)]-(n-1)` -/
def P16977415175511139256.Spec : Prop :=
  ∀ n, P16977415175511139256.a n = A237514 (n + 1)

end A237514

/-! ## A237514.P4743877938886876077

`A056576(comp[floor((n+1)/(log2(3)-1))]+1)`
-/

namespace A237514.P4743877938886876077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.logb 2 (3 : ℝ) - 1)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A237514.P4743877938886876077

namespace A237514

/-- `A056576(comp[floor((n+1)/(log2(3)-1))]+1)` -/
def P4743877938886876077.Spec : Prop :=
  ∀ n, P4743877938886876077.a n = A237514 (n + 1)

end A237514

/-! ## A237514.P14895514390903829778

`record[A020914(n)/A022921(n)]`
-/

namespace A237514.P14895514390903829778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020914 n : ℚ) / (A022921 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237514.P14895514390903829778

namespace A237514

/-- `record[A020914(n)/A022921(n)]` -/
def P14895514390903829778.Spec : Prop :=
  ∀ n, P14895514390903829778.a n = (A237514 (n + 1) : ℚ)

end A237514

/-! ## A237514.P1324779894519907991

`filter[A020914(n), A022924(#)]`
-/

namespace A237514.P1324779894519907991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022924 (f1 j).toNat = 1) n)

end

end A237514.P1324779894519907991

namespace A237514

/-- `filter[A020914(n), A022924(#)]` -/
def P1324779894519907991.Spec : Prop :=
  ∀ n, P1324779894519907991.a n = A237514 (n + 1)

end A237514

/-! ## A237514.P14038743318983591972

`lt[A328334(n), 1]`
-/

namespace A237514.P14038743318983591972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328334 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A237514.P14038743318983591972

namespace A237514

/-- `lt[A328334(n), 1]` -/
def P14038743318983591972.Spec : Prop :=
  ∀ n, (P14038743318983591972.a n : ℤ) = A237514 (n + 1)

end A237514

/-! ## A237514.P15287510783191412810

`2*A372780(n+1)-(n+1)`
-/

namespace A237514.P15287510783191412810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A372780 (n + 1) - (n + 1 : ℤ)

end

end A237514.P15287510783191412810

namespace A237514

/-- `2*A372780(n+1)-(n+1)` -/
def P15287510783191412810.Spec : Prop :=
  ∀ n, P15287510783191412810.a n = A237514 (n + 1)

end A237514

/-! ## A237514.P6913618528946094627

`A054385(A372780(n+1))`
-/

namespace A237514.P6913618528946094627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (A372780 (n + 1)).toNat

end

end A237514.P6913618528946094627

namespace A237514

/-- `A054385(A372780(n+1))` -/
def P6913618528946094627.Spec : Prop :=
  ∀ n, P6913618528946094627.a n = A237514 (n + 1)

end A237514

/-!
# A237516: Pyramidal centered square numbers.

The programs for A237516, the canonical program `A237516.P9214444796791290871` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237516 has offset 1).

The definition of A237516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237516.P9214444796791290871

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=15, a(2)=91, a(3)=325, a(4)=861`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A237516

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9214444796791290871.Spec : Prop :=
  ∀ n, P9214444796791290871.a n = A237516 (n + 1)

theorem P9214444796791290871.correct : P9214444796791290871.Spec := by
  intro n
  simp only [A237516, Nat.add_sub_cancel]

end A237516

/-! ## A237516.P14628132384686281944

`(A002378(n)+1)*(2*A002378(n)+1)`
-/

namespace A237516.P14628132384686281944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 n + 1) * (2 * A002378 n + 1)

end

end A237516.P14628132384686281944

namespace A237516

/-- `(A002378(n)+1)*(2*A002378(n)+1)` -/
def P14628132384686281944.Spec : Prop :=
  ∀ n, P14628132384686281944.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P2357691669047304388

`A000217(A001844(n))`
-/

namespace A237516.P2357691669047304388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001844 n).toNat

end

end A237516.P2357691669047304388

namespace A237516

/-- `A000217(A001844(n))` -/
def P2357691669047304388.Spec : Prop :=
  ∀ n, P2357691669047304388.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P1453778990013954034

`C(∑[4*n]+2, 2)`
-/

namespace A237516.P1453778990013954034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2

end

end A237516.P1453778990013954034

namespace A237516

/-- `C(∑[4*n]+2, 2)` -/
def P1453778990013954034.Spec : Prop :=
  ∀ n, (P1453778990013954034.a n : ℤ) = A237516 (n + 1)

end A237516

/-! ## A237516.P7385499363624333433

`(∑[3*n]+1)²-∑[n]²`
-/

namespace A237516.P7385499363624333433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A237516.P7385499363624333433

namespace A237516

/-- `(∑[3*n]+1)²-∑[n]²` -/
def P7385499363624333433.Spec : Prop :=
  ∀ n, P7385499363624333433.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P155265557313350327

`(∑[4*n]+1)*∑[A004277(n)]`
-/

namespace A237516.P155265557313350327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A237516.P155265557313350327

namespace A237516

/-- `(∑[4*n]+1)*∑[A004277(n)]` -/
def P155265557313350327.Spec : Prop :=
  ∀ n, P155265557313350327.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P8650275556003942843

`(n²+1+n)*(A046092(n)+1)`
-/

namespace A237516.P8650275556003942843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℤ) * (A046092 n + 1)

end

end A237516.P8650275556003942843

namespace A237516

/-- `(n²+1+n)*(A046092(n)+1)` -/
def P8650275556003942843.Spec : Prop :=
  ∀ n, P8650275556003942843.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P17583165402048619909

`A001844(n)*A002061(n+1)`
-/

namespace A237516.P17583165402048619909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n * A002061 (n + 1)

end

end A237516.P17583165402048619909

namespace A237516

/-- `A001844(n)*A002061(n+1)` -/
def P17583165402048619909.Spec : Prop :=
  ∀ n, P17583165402048619909.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P6007463059251047117

`(4*A000124(n)-3)*A002061(n+1)`
-/

namespace A237516.P6007463059251047117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A000124 n - 3) * A002061 (n + 1)

end

end A237516.P6007463059251047117

namespace A237516

/-- `(4*A000124(n)-3)*A002061(n+1)` -/
def P6007463059251047117.Spec : Prop :=
  ∀ n, P6007463059251047117.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P11759242210273441677

`(A000384(n+1)-n)*A002061(n+1)`
-/

namespace A237516.P11759242210273441677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000384 (n + 1) - (n : ℤ)) * A002061 (n + 1)

end

end A237516.P11759242210273441677

namespace A237516

/-- `(A000384(n+1)-n)*A002061(n+1)` -/
def P11759242210273441677.Spec : Prop :=
  ∀ n, P11759242210273441677.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P15236077381073620327

`∑[A079908(2*n)]`
-/

namespace A237516.P15236077381073620327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237516.P15236077381073620327

namespace A237516

/-- `∑[A079908(2*n)]` -/
def P15236077381073620327.Spec : Prop :=
  ∀ n, P15236077381073620327.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P2903599302584968581

`A304726(2*n+1)/8`
-/

namespace A237516.P2903599302584968581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304726 (2 * n + 1) : ℚ) / 8

end

end A237516.P2903599302584968581

namespace A237516

/-- `A304726(2*n+1)/8` -/
def P2903599302584968581.Spec : Prop :=
  ∀ n, P2903599302584968581.a n = (A237516 (n + 1) : ℚ)

end A237516

/-! ## A237516.P14706341789407413180

`A000982(2*n+1)*(n²+1+n)`
-/

namespace A237516.P14706341789407413180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (2 * n + 1) * (n ^ 2 + 1 + n : ℤ)

end

end A237516.P14706341789407413180

namespace A237516

/-- `A000982(2*n+1)*(n²+1+n)` -/
def P14706341789407413180.Spec : Prop :=
  ∀ n, P14706341789407413180.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P13530577359496541147

`(A000290(n+1)-n)*A000982(2*n+1)`
-/

namespace A237516.P13530577359496541147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 1) - (n : ℤ)) * A000982 (2 * n + 1)

end

end A237516.P13530577359496541147

namespace A237516

/-- `(A000290(n+1)-n)*A000982(2*n+1)` -/
def P13530577359496541147.Spec : Prop :=
  ∀ n, P13530577359496541147.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P15747661281002393663

`A014634(∑[n])`
-/

namespace A237516.P15747661281002393663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237516.P15747661281002393663

namespace A237516

/-- `A014634(∑[n])` -/
def P15747661281002393663.Spec : Prop :=
  ∀ n, P15747661281002393663.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P14914278654381491114

`A157870(∑[n])/2`
-/

namespace A237516.P14914278654381491114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157870 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A237516.P14914278654381491114

namespace A237516

/-- `A157870(∑[n])/2` -/
def P14914278654381491114.Spec : Prop :=
  ∀ n, P14914278654381491114.a n = (A237516 (n + 1) : ℚ)

end A237516

/-! ## A237516.P7089324104752971950

`A000217(∑[4*n]+1)`
-/

namespace A237516.P7089324104752971950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237516.P7089324104752971950

namespace A237516

/-- `A000217(∑[4*n]+1)` -/
def P7089324104752971950.Spec : Prop :=
  ∀ n, P7089324104752971950.a n = A237516 (n + 1)

end A237516

/-! ## A237516.P4694625662340847842

`lcm(n+1, A000217(A046092(n)+1))/(n+1)`
-/

namespace A237516.P4694625662340847842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000217 (A046092 n + 1).toNat) : ℚ) / (n + 1 : ℚ)

end

end A237516.P4694625662340847842

namespace A237516

/-- `lcm(n+1, A000217(A046092(n)+1))/(n+1)` -/
def P4694625662340847842.Spec : Prop :=
  ∀ n, P4694625662340847842.a n = (A237516 (n + 1) : ℚ)

end A237516

/-! ## A237516.P3094673396648516794

`record[A000217(n+1)/A007913(2*n+1)²]`
-/

namespace A237516.P3094673396648516794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A007913 (2 * n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237516.P3094673396648516794

namespace A237516

/-- `record[A000217(n+1)/A007913(2*n+1)²]` -/
def P3094673396648516794.Spec : Prop :=
  ∀ n, P3094673396648516794.a n = (A237516 (n + 1) : ℚ)

end A237516

/-! ## A237516.P3243032132683257701

`sqrt(A014736(∑[2*n]))`
-/

namespace A237516.P3243032132683257701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A237516.P3243032132683257701

namespace A237516

/-- `sqrt(A014736(∑[2*n]))` -/
def P3243032132683257701.Spec : Prop :=
  ∀ n, P3243032132683257701.a n = (A237516 (n + 1) : ℝ)

end A237516

/-!
# A237517: Pisano period of n^2 divided by Pisano period of n.

The programs for A237517, there is no canonical definition to state claims against.
-/

/-! ## A237517.P13428704983519823477

`(n+1)/A237835(n+1)`
-/

namespace A237517.P13428704983519823477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A237835 (n + 1) : ℚ)

end

end A237517.P13428704983519823477

/-! ## A237517.P11373919655616056321

`A237836(n+1)/A001175(n+1)`
-/

namespace A237517.P11373919655616056321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237836 (n + 1) : ℚ) / (A001175 (n + 1) : ℚ)

end

end A237517.P11373919655616056321

/-! ## A237517.P5656804584124176648

`gcd(A237836(n+1)/A106291(n+1), n+1)`
-/

namespace A237517.P5656804584124176648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A237836 (n + 1) : ℚ) / (A106291 (n + 1) : ℚ))) (n + 1 : ℤ)

end

end A237517.P5656804584124176648

/-! ## A237517.P17522856854298362521

`A237836(n+1)/(A001176(n+1)*A001177(n+1))`
-/

namespace A237517.P17522856854298362521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237836 (n + 1) : ℚ) / (A001176 (n + 1) * A001177 (n + 1) : ℚ)

end

end A237517.P17522856854298362521

/-! ## A237517.P5379176334514629967

`A237836(n+1)/lcm(A001177(n+1), A106291(n+1))`
-/

namespace A237517.P5379176334514629967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237836 (n + 1) : ℚ) / (Int.lcm (A001177 (n + 1)) (A106291 (n + 1)) : ℚ)

end

end A237517.P5379176334514629967

/-! ## A237517.P1685079303719039379

`A054531(A237835(n+1)+∑[n])`
-/

namespace A237517.P1685079303719039379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A237835 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A237517.P1685079303719039379

/-! ## A237517.P13219199637833340878

`A001175((n+1)²)/A001175(n+1)`
-/

namespace A237517.P13219199637833340878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 ((n + 1) ^ 2) : ℚ) / (A001175 (n + 1) : ℚ)

end

end A237517.P13219199637833340878

/-!
# A237525: Numbers k such that the sum of digits of k^3 is a cube.

The programs for A237525, there is no canonical definition to state claims against.
-/

/-! ## A237525.P13025576137519552758

`A053058(n+1)^(1/3)`
-/

namespace A237525.P13025576137519552758
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053058 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A237525.P13025576137519552758

/-! ## A237525.P5242358612096773894

`eq[1, A010057(A004164(n))]`
-/

namespace A237525.P5242358612096773894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A004164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237525.P5242358612096773894

/-! ## A237525.P10320135084042677982

`record[(n*A010057(A004164(n)))%A000203(n+1)]`
-/

namespace A237525.P10320135084042677982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A010057 (A004164 n).toNat) (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237525.P10320135084042677982

/-! ## A237525.P12146624138641508594

`record[(n*A010057(A004164(n)))%A000124(n)]`
-/

namespace A237525.P12146624138641508594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A010057 (A004164 n).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237525.P12146624138641508594

/-! ## A237525.P4023144540562043057

`record[A000007(n+1)+n*A010057(A004164(n))]`
-/

namespace A237525.P4023144540562043057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (n : ℤ) * A010057 (A004164 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237525.P4023144540562043057

/-!
# A237526: a(n) = number of unit squares in the first quadrant of a disk of radius sqrt(n) centered at the origin of a square lattice.

The programs for A237526, the canonical program `A237526.P3622557248388023722` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237526 has offset 0).

The definition of A237526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237526.P8420621170315424212

`∑[A063725(n)]`
-/

namespace A237526.P8420621170315424212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237526.P8420621170315424212

namespace A237526

/-- `∑[A063725(n)]` -/
def P8420621170315424212.Spec : Prop :=
  ∀ n, P8420621170315424212.a n = A237526 n

end A237526

/-! ## A237526.P3622557248388023722

`A014200(n)-floor(sqrt(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A237526

/-- `A014200(n)-floor(sqrt(n))` -/
def P3622557248388023722.Spec : Prop :=
  ∀ n, P3622557248388023722.a n = A237526 n

theorem P3622557248388023722.correct : P3622557248388023722.Spec := by
  intro n
  simp only [A237526]

end A237526

/-! ## A237526.P3213678608217953614

`∑[A000925(n)-(char[(n+1)²]+char[n²])]`
-/

namespace A237526.P3213678608217953614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n - (((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237526.P3213678608217953614

namespace A237526

/-- `∑[A000925(n)-(char[(n+1)²]+char[n²])]` -/
def P3213678608217953614.Spec : Prop :=
  ∀ n, P3213678608217953614.a n = A237526 n

end A237526

/-! ## A237526.P10262772630818387051

`A224212(n)-∑[char[(n+1)²]+char[n²]]`
-/

namespace A237526.P10262772630818387051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224212 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A237526.P10262772630818387051

namespace A237526

/-- `A224212(n)-∑[char[(n+1)²]+char[n²]]` -/
def P10262772630818387051.Spec : Prop :=
  ∀ n, P10262772630818387051.a n = A237526 n

end A237526

/-! ## A237526.P10157296215536842701

`abs(A000196(n)-A014200(n))`
-/

namespace A237526.P10157296215536842701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000196 n - A014200 n|

end

end A237526.P10157296215536842701

namespace A237526

/-- `abs(A000196(n)-A014200(n))` -/
def P10157296215536842701.Spec : Prop :=
  ∀ n, P10157296215536842701.a n = A237526 n

end A237526

/-! ## A237526.P6514655317302783886

`∑[A025441(n)+A025426(n)]`
-/

namespace A237526.P6514655317302783886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + A025426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237526.P6514655317302783886

namespace A237526

/-- `∑[A025441(n)+A025426(n)]` -/
def P6514655317302783886.Spec : Prop :=
  ∀ n, P6514655317302783886.a n = A237526 n

end A237526

/-! ## A237526.P10123938002031392054

`a(n-1)+A063725(n)+A008683(4*(n+1))` with `a(0)=0`
-/

namespace A237526.P10123938002031392054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A063725 n + A008683 (4 * (n + 1)))

end

end A237526.P10123938002031392054

namespace A237526

/-- `a(n-1)+A063725(n)+A008683(4*(n+1))` -/
def P10123938002031392054.Spec : Prop :=
  ∀ n, P10123938002031392054.a n = A237526 n

end A237526

/-! ## A237526.P10446499134988220790

`∑[A025441(n)+A025435(2*n)]`
-/

namespace A237526.P10446499134988220790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + A025435 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237526.P10446499134988220790

namespace A237526

/-- `∑[A025441(n)+A025435(2*n)]` -/
def P10446499134988220790.Spec : Prop :=
  ∀ n, P10446499134988220790.a n = A237526 n

end A237526

/-! ## A237526.P3824525342102202636

`∑[A281154(4*n)]`
-/

namespace A237526.P3824525342102202636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237526.P3824525342102202636

namespace A237526

/-- `∑[A281154(4*n)]` -/
def P3824525342102202636.Spec : Prop :=
  ∀ n, P3824525342102202636.a n = A237526 n

end A237526

/-! ## A237526.P6698377427152756879

`a(n-1)+A063725(n)%A000045(n+4)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A237526.P6698377427152756879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + Int.tmod (A063725 n) (A000045 (n + 4))

end

end A237526.P6698377427152756879

namespace A237526

/-- `a(n-1)+A063725(n)%A000045(n+4)` -/
def P6698377427152756879.Spec : Prop :=
  ∀ n, P6698377427152756879.a n = A237526 n

end A237526

/-! ## A237526.P16879050085338449648

`∑[A337165(∑[char[1]+n]+1)]`
-/

namespace A237526.P16879050085338449648
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237526.P16879050085338449648

namespace A237526

/-- `∑[A337165(∑[char[1]+n]+1)]` -/
def P16879050085338449648.Spec : Prop :=
  ∀ n, P16879050085338449648.a n = A237526 n

end A237526

/-!
# A237527: Numbers n of the form p^2-p-1 = A165900(p), for prime p, such that n^2-n-1 = A165900(n) is also prime.

The programs for A237527, there is no canonical definition to state claims against.
-/

/-! ## A237527.P16986511732028170898

`A165900(A230026(n+1))`
-/

namespace A237527.P16986511732028170898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A230026 (n + 1)).toNat

end

end A237527.P16986511732028170898

/-! ## A237527.P3503222384328156379

`A063445(p?[A230026(n+1)])`
-/

namespace A237527.P3503222384328156379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063445 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237527.P3503222384328156379

/-! ## A237527.P15875146277409224784

`A028387(A230026(n+1)-2)`
-/

namespace A237527.P15875146277409224784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A230026 (n + 1) - 2).toNat

end

end A237527.P15875146277409224784

/-! ## A237527.P6181670176097011570

`A063445(2*A230026(n+1))`
-/

namespace A237527.P6181670176097011570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063445 (2 * A230026 (n + 1)).toNat

end

end A237527.P6181670176097011570

/-!
# A237528: Numbers n of the form p^3-p^2-p-1 (for prime p) such that n^3-n^2-n-1 is prime.

The programs for A237528, there is no canonical definition to state claims against.
-/

/-! ## A237528.P10578927412105426723

`A083074(A230027(n+1))`
-/

namespace A237528.P10578927412105426723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083074 (A230027 (n + 1)).toNat

end

end A237528.P10578927412105426723

/-! ## A237528.P3248179823618405419

`∑{d}[A230027(n+1), A152015(#)]`
-/

namespace A237528.P3248179823618405419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A152015 d

end

end A237528.P3248179823618405419

/-! ## A237528.P4327536144163208196

`A152015(p?[A230027(n+1)])-1`
-/

namespace A237528.P4327536144163208196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A237528.P4327536144163208196

/-! ## A237528.P17971859699685943283

`A152015(A230027(n+1))-A007318(C(n, 2))`
-/

namespace A237528.P17971859699685943283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 (A230027 (n + 1)).toNat - A007318 (Nat.choose n 2)

end

end A237528.P17971859699685943283

/-! ## A237528.P4815658767400442549

`A087908(p?[A230027(n+1)])-A230027(n+1)`
-/

namespace A237528.P4815658767400442549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087908 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A230027 (n + 1)

end

end A237528.P4815658767400442549

/-!
# A237530: Number of non-equivalent (mod D_3) ways to choose three points in an n X n X n triangular grid so that they do not form a 2 X 2 X 2 subtriangle.

The programs for A237530, there is no canonical definition to state claims against.
-/

/-! ## A237530.P1467457543639777072

`A243208(n+2)+A006918(n)`
-/

namespace A237530.P1467457543639777072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243208 (n + 2) + A006918 n

end

end A237530.P1467457543639777072

/-! ## A237530.P5904038742505663602

`A230723(n+2)-∑[A008620(n)]`
-/

namespace A237530.P5904038742505663602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230723 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237530.P5904038742505663602

/-! ## A237530.P1382243737622531139

`A230723(n+2)-A001840(n+1)`
-/

namespace A237530.P1382243737622531139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230723 (n + 2) - A001840 (n + 1)

end

end A237530.P1382243737622531139

/-! ## A237530.P8334138531391966135

`A230723(n+2)-A002264(∑[n+2]+1)`
-/

namespace A237530.P8334138531391966135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230723 (n + 2) - A002264 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237530.P8334138531391966135

/-!
# A237532: Number of (n+1) X (1+1) 0..3 arrays with the upper median minus the lower median of every 2 X 2 subblock equal.

The programs for A237532, there is no canonical definition to state claims against.
-/

/-! ## A237532.P5716730577588500264

`A237538(∑[n]+1)`
-/

namespace A237532.P5716730577588500264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237532.P5716730577588500264

/-! ## A237532.P12821237971107523995

`lcm(2, A237538(A000124(n)))`
-/

namespace A237532.P12821237971107523995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237538 (A000124 n).toNat)

end

end A237532.P12821237971107523995

/-! ## A237532.P9331910528323241121

`record[root(A237538(n+1), A137153(n))]`
-/

namespace A237532.P9331910528323241121
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237538 (n + 1) : ℝ) ^ (1 / (A137153 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237532.P9331910528323241121

/-! ## A237532.P12092337204966175013

`record[root(A237538(n+1), A143453(n))]`
-/

namespace A237532.P12092337204966175013
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237538 (n + 1) : ℝ) ^ (1 / (A143453 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237532.P12092337204966175013

/-! ## A237532.P1407152675849685045

`record[root(A237538(n+1), A002260(n+1))]`
-/

namespace A237532.P1407152675849685045
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237538 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237532.P1407152675849685045

/-!
# A237533: Number of (n+1)X(2+1) 0..3 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237533, there is no canonical definition to state claims against.
-/

/-! ## A237533.P13045041375015673054

`A237538(∑[n+1]+2)`
-/

namespace A237533.P13045041375015673054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237533.P13045041375015673054

/-! ## A237533.P11759074468136543696

`lcm(2, A237538(A000096(n)+3))`
-/

namespace A237533.P11759074468136543696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237538 (A000096 n + 3).toNat)

end

end A237533.P11759074468136543696

/-! ## A237533.P7202165694378272006

`record[root(A237538(n+2), A143453(n))]`
-/

namespace A237533.P7202165694378272006
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237538 (n + 2) : ℝ) ^ (1 / (A143453 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237533.P7202165694378272006

/-! ## A237533.P2506087610010228754

`record[A237538(A237519(n+1)+1)]`
-/

namespace A237533.P2506087610010228754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A237519 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237533.P2506087610010228754

/-! ## A237533.P18025796706214228564

`and(A237538(A000096(n+1)), A321804(n))`
-/

namespace A237533.P18025796706214228564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A237538 (A000096 (n + 1)).toNat) (A321804 n)

end

end A237533.P18025796706214228564

/-!
# A237534: Number of (n+1)X(3+1) 0..3 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237534, there is no canonical definition to state claims against.
-/

/-! ## A237534.P9728530740588806716

`A237538(∑[n+2]+4)`
-/

namespace A237534.P9728530740588806716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237534.P9728530740588806716

/-! ## A237534.P11026480480224004903

`lcm(2, A237538(A167614(n+1)))`
-/

namespace A237534.P11026480480224004903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237538 (A167614 (n + 1)).toNat)

end

end A237534.P11026480480224004903

/-! ## A237534.P2328837211650616508

`A237538(A167614(n+1))+A025443(n)`
-/

namespace A237534.P2328837211650616508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A167614 (n + 1)).toNat + A025443 n

end

end A237534.P2328837211650616508

/-! ## A237534.P10455593130634264657

`A237538(A167614(n+1))+A137579(n)`
-/

namespace A237534.P10455593130634264657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A167614 (n + 1)).toNat + A137579 n

end

end A237534.P10455593130634264657

/-! ## A237534.P6990828896979034978

`record[A237538(A237519(n+2))]`
-/

namespace A237534.P6990828896979034978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A237519 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237534.P6990828896979034978

/-!
# A237535: Number of (n+1)X(4+1) 0..3 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237535, there is no canonical definition to state claims against.
-/

/-! ## A237535.P15741281231393036787

`A237538(A141214(n)+7)`
-/

namespace A237535.P15741281231393036787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A141214 n + 7).toNat

end

end A237535.P15741281231393036787

/-! ## A237535.P16518718532985333762

`A237538(A052905(n)+9)`
-/

namespace A237535.P16518718532985333762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A052905 n + 9).toNat

end

end A237535.P16518718532985333762

/-! ## A237535.P14170838957277402531

`A237538(A055999(n)+10)`
-/

namespace A237535.P14170838957277402531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A055999 n + 10).toNat

end

end A237535.P14170838957277402531

/-! ## A237535.P5243871632254723244

`A237538(A167614(n+2)+1)`
-/

namespace A237535.P5243871632254723244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A167614 (n + 2) + 1).toNat

end

end A237535.P5243871632254723244

/-! ## A237535.P9821477173954510874

`A237538(A112355(n+1)+4)`
-/

namespace A237535.P9821477173954510874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A112355 (n + 1) + 4).toNat

end

end A237535.P9821477173954510874

/-!
# A237536: Number of (n+1)X(5+1) 0..3 arrays with the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237536, there is no canonical definition to state claims against.
-/

/-! ## A237536.P717000559494272257

`A237538(A374005(n+1))`
-/

namespace A237536.P717000559494272257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A374005 (n + 1)).toNat

end

end A237536.P717000559494272257

/-! ## A237536.P4299587181685627412

`A237538(Δ[A264443(n)])`
-/

namespace A237536.P4299587181685627412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (f1 (n + 1) - f1 n).toNat

end

end A237536.P4299587181685627412

/-! ## A237536.P13025143865659029744

`A237538(A264443(n+1)-A264443(n))`
-/

namespace A237536.P13025143865659029744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237538 (A264443 (n + 1) - A264443 n).toNat

end

end A237536.P13025143865659029744

/-!
# A237539: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237539, there is no canonical definition to state claims against.
-/

/-! ## A237539.P13395482066630936401

`A237544(∑[n]+1)`
-/

namespace A237539.P13395482066630936401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237539.P13395482066630936401

/-! ## A237539.P4260411970097316618

`lcm(2, A237544(A000124(n)))`
-/

namespace A237539.P4260411970097316618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237544 (A000124 n).toNat)

end

end A237539.P4260411970097316618

/-! ## A237539.P16772066582097849467

`record[A237544(A114091(n+1))]`
-/

namespace A237539.P16772066582097849467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237539.P16772066582097849467

/-! ## A237539.P10991941944392648103

`record[A237544(A286245(n+1))]`
-/

namespace A237539.P10991941944392648103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237539.P10991941944392648103

/-! ## A237539.P16154114827563716374

`record[A010054(n)*A237544(n+1)]`
-/

namespace A237539.P16154114827563716374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237539.P16154114827563716374

/-!
# A237540: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237540, there is no canonical definition to state claims against.
-/

/-! ## A237540.P7795212538874933061

`A237544(∑[n+1]+2)`
-/

namespace A237540.P7795212538874933061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237540.P7795212538874933061

/-! ## A237540.P11808529113255917121

`record[A237544(A114091(n+1)+1)]`
-/

namespace A237540.P11808529113255917121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237540.P11808529113255917121

/-! ## A237540.P18344262831489216289

`record[A010054(n)*A237544(n+2)]`
-/

namespace A237540.P18344262831489216289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237544 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237540.P18344262831489216289

/-! ## A237540.P6713948335766145305

`record[gcd(A237544(n+3), A238750(n+1))]`
-/

namespace A237540.P6713948335766145305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A237544 (n + 3)) (A238750 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237540.P6713948335766145305

/-! ## A237540.P1865750456810055761

`record[A237544(A286245(n+1)+A010054(n))]`
-/

namespace A237540.P1865750456810055761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A286245 (n + 1) + A010054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237540.P1865750456810055761

/-!
# A237541: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237541, there is no canonical definition to state claims against.
-/

/-! ## A237541.P16389074970356020527

`A237544(∑[n+2]+4)`
-/

namespace A237541.P16389074970356020527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237541.P16389074970356020527

/-! ## A237541.P14246153457472791353

`lcm(2, A237544(A167614(n+1)))`
-/

namespace A237541.P14246153457472791353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237544 (A167614 (n + 1)).toNat)

end

end A237541.P14246153457472791353

/-! ## A237541.P1156895649033585587

`record[root(A237544(n+4), A359670(n))]`
-/

namespace A237541.P1156895649033585587
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237544 (n + 4) : ℝ) ^ (1 / (A359670 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237541.P1156895649033585587

/-! ## A237541.P4114883133643428594

`A237544(A167614(n+1))+A025437(n)`
-/

namespace A237541.P4114883133643428594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A167614 (n + 1)).toNat + A025437 n

end

end A237541.P4114883133643428594

/-! ## A237541.P12362034180580751868

`A237544(A167614(n+1))+A025443(n)`
-/

namespace A237541.P12362034180580751868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A167614 (n + 1)).toNat + A025443 n

end

end A237541.P12362034180580751868

/-!
# A237542: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237542, there is no canonical definition to state claims against.
-/

/-! ## A237542.P16019271079079987466

`A237544(A374004(n+1))`
-/

namespace A237542.P16019271079079987466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A374004 (n + 1)).toNat

end

end A237542.P16019271079079987466

/-! ## A237542.P13628906872472858741

`A237544(A141214(n)+7)`
-/

namespace A237542.P13628906872472858741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A141214 n + 7).toNat

end

end A237542.P13628906872472858741

/-! ## A237542.P4301966014389971805

`A237544(A052905(n)+9)`
-/

namespace A237542.P4301966014389971805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A052905 n + 9).toNat

end

end A237542.P4301966014389971805

/-! ## A237542.P14812642140509263864

`A237544(A055999(n)+10)`
-/

namespace A237542.P14812642140509263864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A055999 n + 10).toNat

end

end A237542.P14812642140509263864

/-!
# A237543: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237543, there is no canonical definition to state claims against.
-/

/-! ## A237543.P12116364615100293345

`A237544(A374005(n+1))`
-/

namespace A237543.P12116364615100293345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (A374005 (n + 1)).toNat

end

end A237543.P12116364615100293345

/-! ## A237543.P4331050052203758039

`A237544(eq[6, A131818(n+1)])`
-/

namespace A237543.P4331050052203758039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237543.P4331050052203758039

/-!
# A237545: Odious powers of 3.

The programs for A237545, there is no canonical definition to state claims against.
-/

/-! ## A237545.P905268714070409284

`3^A223024(n+1)`
-/

namespace A237545.P905268714070409284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A223024 (n + 1) : ℤ)

end

end A237545.P905268714070409284

/-! ## A237545.P1629964033611597783

`3^record[(n+1)*A011754(n+1)%2]`
-/

namespace A237545.P1629964033611597783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A011754 (n + 1)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A237545.P1629964033611597783

/-! ## A237545.P13019428770641221366

`A000244(A223024(n+1))`
-/

namespace A237545.P13019428770641221366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A223024 (n + 1)).toNat

end

end A237545.P13019428770641221366

/-! ## A237545.P11158070383977458282

`3^eq[2, A020639(A011754(n)+1)]`
-/

namespace A237545.P11158070383977458282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A011754 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237545.P11158070383977458282

/-! ## A237545.P8286508514886213008

`3^eq[3, A020639(3*A011754(n))]`
-/

namespace A237545.P8286508514886213008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A237545.P8286508514886213008

/-! ## A237545.P10849532057756627164

`3^eq[1, gcd(A001316(n), A011754(n))]`
-/

namespace A237545.P10849532057756627164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001316 n) (A011754 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237545.P10849532057756627164

/-! ## A237545.P1325723643579946656

`record[A000035(A011754(n))*A000244(n)]`
-/

namespace A237545.P1325723643579946656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A011754 n).toNat * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237545.P1325723643579946656

/-!
# A237546: Number of (n+2)X(1+2) 0..2 arrays with the (lower) median of each row and column nondecreasing.

The programs for A237546, there is no canonical definition to state claims against.
-/

/-! ## A237546.P3350638408400847428

`A237548(∑[n]+1)`
-/

namespace A237546.P3350638408400847428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237548 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237546.P3350638408400847428

/-! ## A237546.P2293203905851692690

`record[A237548(A256909(n)+1)]`
-/

namespace A237546.P2293203905851692690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237548 (A256909 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237546.P2293203905851692690

/-! ## A237546.P3183648277243298699

`record[A010054(n)*A237548(n+1)]`
-/

namespace A237546.P3183648277243298699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237546.P3183648277243298699

/-!
# A237547: Number of (n+2)X(2+2) 0..2 arrays with the (lower) median of each row and column nondecreasing.

The programs for A237547, there is no canonical definition to state claims against.
-/

/-! ## A237547.P7162073590837334420

`A237548(∑[n+1]+2)`
-/

namespace A237547.P7162073590837334420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237548 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237547.P7162073590837334420

/-! ## A237547.P13945212329105046826

`record[A237548(floor(ϕ*n+2*n+1)+1)]`
-/

namespace A237547.P13945212329105046826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237548 (⌊Real.goldenRatio * (n : ℝ) + (2 * n + 1 : ℝ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237547.P13945212329105046826

/-!
# A237549: Number of (n+1)X(n+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237549, there is no canonical definition to state claims against.
-/

/-! ## A237549.P10950425270888193287

`A237557(∑[4*n]+1)`
-/

namespace A237549.P10950425270888193287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237549.P10950425270888193287

/-! ## A237549.P3653661531884961464

`A237557(A001844(n))+char[12]`
-/

namespace A237549.P3653661531884961464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237549.P3653661531884961464

/-! ## A237549.P3484153102125862395

`record[gcd(A037012(n), A237557(n+1))]`
-/

namespace A237549.P3484153102125862395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A237557 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237549.P3484153102125862395

/-! ## A237549.P4769437012558791995

`A299905(n)+A237557(A001844(n))`
-/

namespace A237549.P4769437012558791995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A237557 (A001844 n).toNat

end

end A237549.P4769437012558791995

/-! ## A237549.P8278533995991803114

`A308921(n)+A237557(A001844(n))`
-/

namespace A237549.P8278533995991803114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308921 n + A237557 (A001844 n).toNat

end

end A237549.P8278533995991803114

/-!
# A237550: Number of (n+1) X (1+1) 0..2 arrays with the maximum minus the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237550, there is no canonical definition to state claims against.
-/

/-! ## A237550.P16256770977192959220

`A237557(∑[n]+1)`
-/

namespace A237550.P16256770977192959220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237550.P16256770977192959220

/-! ## A237550.P3715604520505373354

`record[A010054(n)*A237557(n+1)]`
-/

namespace A237550.P3715604520505373354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237550.P3715604520505373354

/-! ## A237550.P1016772229072744065

`record[root(A237557(n+1), A007318(n))]`
-/

namespace A237550.P1016772229072744065
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237557 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237550.P1016772229072744065

/-! ## A237550.P18406839763494726611

`record[root(A237557(n+1), A132735(n))]`
-/

namespace A237550.P18406839763494726611
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237557 (n + 1) : ℝ) ^ (1 / (A132735 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237550.P18406839763494726611

/-! ## A237550.P29767785377726413

`record[root(A237557(n+1), A245049(n))]`
-/

namespace A237550.P29767785377726413
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237557 (n + 1) : ℝ) ^ (1 / (A245049 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237550.P29767785377726413

/-!
# A237551: Number of (n+1)X(2+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237551, there is no canonical definition to state claims against.
-/

/-! ## A237551.P15437884662464516122

`A237557(∑[n+1]+2)`
-/

namespace A237551.P15437884662464516122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237551.P15437884662464516122

/-! ## A237551.P4687125863640762483

`record[A010054(n)*A237557(n+2)]`
-/

namespace A237551.P4687125863640762483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237557 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237551.P4687125863640762483

/-! ## A237551.P3546123761876244560

`record[root(A237557(n+2), A245049(n))]`
-/

namespace A237551.P3546123761876244560
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237557 (n + 2) : ℝ) ^ (1 / (A245049 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237551.P3546123761876244560

/-! ## A237551.P619416840691100910

`record[gcd(A221683(n+1), A237557(n+2))]`
-/

namespace A237551.P619416840691100910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221683 (n + 1)) (A237557 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237551.P619416840691100910

/-! ## A237551.P15003585886393799832

`record[A237557(Δ[A003453(n+5)])]`
-/

namespace A237551.P15003585886393799832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237551.P15003585886393799832

/-!
# A237552: Number of (n+1)X(3+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237552, there is no canonical definition to state claims against.
-/

/-! ## A237552.P16763057266719267248

`A237557(∑[n+2]+4)`
-/

namespace A237552.P16763057266719267248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237552.P16763057266719267248

/-! ## A237552.P8959440115255185235

`lcm(2, A237557(A167614(n+1)))`
-/

namespace A237552.P8959440115255185235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237557 (A167614 (n + 1)).toNat)

end

end A237552.P8959440115255185235

/-! ## A237552.P14727222987448582312

`A237557(A167614(n+1))+A025469(n)`
-/

namespace A237552.P14727222987448582312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A167614 (n + 1)).toNat + A025469 n

end

end A237552.P14727222987448582312

/-! ## A237552.P4828911112390078494

`A237557(A167614(n+1))+A137579(n)`
-/

namespace A237552.P4828911112390078494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A167614 (n + 1)).toNat + A137579 n

end

end A237552.P4828911112390078494

/-! ## A237552.P17417302398820144431

`A237557(A167614(n+1))+A185238(n)`
-/

namespace A237552.P17417302398820144431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A167614 (n + 1)).toNat + A185238 n

end

end A237552.P17417302398820144431

/-!
# A237553: Number of (n+1)X(4+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237553, there is no canonical definition to state claims against.
-/

/-! ## A237553.P17294494362261205127

`A237557(A374004(n+1))`
-/

namespace A237553.P17294494362261205127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A374004 (n + 1)).toNat

end

end A237553.P17294494362261205127

/-! ## A237553.P5010954269664934748

`A237557(A141214(n)+7)`
-/

namespace A237553.P5010954269664934748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A141214 n + 7).toNat

end

end A237553.P5010954269664934748

/-! ## A237553.P10332009082845443533

`A237557(A052905(n)+9)`
-/

namespace A237553.P10332009082845443533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A052905 n + 9).toNat

end

end A237553.P10332009082845443533

/-! ## A237553.P18153790553406281618

`A237557(A055999(n)+10)`
-/

namespace A237553.P18153790553406281618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A055999 n + 10).toNat

end

end A237553.P18153790553406281618

/-! ## A237553.P17112479903720332730

`A237557(A167614(n+2)+1)`
-/

namespace A237553.P17112479903720332730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A167614 (n + 2) + 1).toNat

end

end A237553.P17112479903720332730

/-!
# A237554: Number of (n+1)X(5+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237554, there is no canonical definition to state claims against.
-/

/-! ## A237554.P15147827618072789882

`A237557(A374005(n+1))`
-/

namespace A237554.P15147827618072789882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A374005 (n + 1)).toNat

end

end A237554.P15147827618072789882

/-! ## A237554.P5484837154194506955

`A237557(A167499(n+3))`
-/

namespace A237554.P5484837154194506955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A167499 (n + 3)).toNat

end

end A237554.P5484837154194506955

/-! ## A237554.P8061072787486513688

`A237557(eq[6, A131818(n+1)])`
-/

namespace A237554.P8061072787486513688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237554.P8061072787486513688

/-! ## A237554.P2717512835520391847

`A237557(A046691(n+3))`
-/

namespace A237554.P2717512835520391847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A046691 (n + 3)).toNat

end

end A237554.P2717512835520391847

/-! ## A237554.P17527704793981831562

`A237557(eq[4, A193592(n)])`
-/

namespace A237554.P17527704793981831562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237554.P17527704793981831562

/-!
# A237555: Number of (n+1)X(6+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237555, there is no canonical definition to state claims against.
-/

/-! ## A237555.P1710928427482956257

`A237557(A374007(n+1))`
-/

namespace A237555.P1710928427482956257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A374007 (n + 1)).toNat

end

end A237555.P1710928427482956257

/-! ## A237555.P17869385377084479685

`A237557(A056115(n)+21)`
-/

namespace A237555.P17869385377084479685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A056115 n + 21).toNat

end

end A237555.P17869385377084479685

/-! ## A237555.P8691100517824813691

`A237557(A246172(n+1)+20)`
-/

namespace A237555.P8691100517824813691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A246172 (n + 1) + 20).toNat

end

end A237555.P8691100517824813691

/-! ## A237555.P2428561458860670196

`A237557(eq[7, A131818(n+1)])`
-/

namespace A237555.P2428561458860670196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237555.P2428561458860670196

/-! ## A237555.P2587874510609932101

`A237557(A052905(n+3))`
-/

namespace A237555.P2587874510609932101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A052905 (n + 3)).toNat

end

end A237555.P2587874510609932101

/-!
# A237556: Number of (n+1)X(7+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237556, there is no canonical definition to state claims against.
-/

/-! ## A237556.P2780447441138390632

`A237557(A374008(n+1))`
-/

namespace A237556.P2780447441138390632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A374008 (n + 1)).toNat

end

end A237556.P2780447441138390632

/-! ## A237556.P2145193299085331881

`A237557(A056119(n)+28)`
-/

namespace A237556.P2145193299085331881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A056119 n + 28).toNat

end

end A237556.P2145193299085331881

/-! ## A237556.P9988691102201823269

`A237557(A161680(n+7)+7)`
-/

namespace A237556.P9988691102201823269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A161680 (n + 7) + 7).toNat

end

end A237556.P9988691102201823269

/-! ## A237556.P8495881455917250332

`A237557(eq[8, A131818(n+1)])`
-/

namespace A237556.P8495881455917250332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237556.P8495881455917250332

/-! ## A237556.P2309483183884557553

`A237557(A055999(n+4))`
-/

namespace A237556.P2309483183884557553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237557 (A055999 (n + 4)).toNat

end

end A237556.P2309483183884557553

/-!
# A237559: Number of (n+1)X(n+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237559, there is no canonical definition to state claims against.
-/

/-! ## A237559.P6564153269761822256

`A237567(∑[4*n]+1)`
-/

namespace A237559.P6564153269761822256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237559.P6564153269761822256

/-! ## A237559.P13952061343311759982

`record[A237567(Δ[A235355(n)])]`
-/

namespace A237559.P13952061343311759982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237559.P13952061343311759982

/-! ## A237559.P4751000692263064339

`A237567(A001844(n))+char[8]`
-/

namespace A237559.P4751000692263064339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237559.P4751000692263064339

/-! ## A237559.P5836458159594322114

`record[A003982(n)*A237567(n+1)]`
-/

namespace A237559.P5836458159594322114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A237567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237559.P5836458159594322114

/-!
# A237560: Number of (n+1) X (1+1) 0..2 arrays with the upper median plus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237560, there is no canonical definition to state claims against.
-/

/-! ## A237560.P7174247471298648790

`A237567(∑[n]+1)`
-/

namespace A237560.P7174247471298648790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237560.P7174247471298648790

/-! ## A237560.P15462973176653275611

`and(-3, A237567(A000124(n)))`
-/

namespace A237560.P15462973176653275611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A237567 (A000124 n).toNat)

end

end A237560.P15462973176653275611

/-! ## A237560.P12572628936304994743

`record[A237567(A249742(n+1))]`
-/

namespace A237560.P12572628936304994743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237560.P12572628936304994743

/-! ## A237560.P3800830152151575519

`record[A237567(A267104(n+1))]`
-/

namespace A237560.P3800830152151575519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237560.P3800830152151575519

/-! ## A237560.P11774353574967143449

`record[A010054(n)*A237567(n+1)]`
-/

namespace A237560.P11774353574967143449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237560.P11774353574967143449

/-!
# A237561: Number of (n+1)X(2+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237561, there is no canonical definition to state claims against.
-/

/-! ## A237561.P281003558515487810

`A237567(∑[n+1]+2)`
-/

namespace A237561.P281003558515487810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237561.P281003558515487810

/-! ## A237561.P9797457167028991635

`lcm(2, A237567(A133263(n+1)))`
-/

namespace A237561.P9797457167028991635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237567 (A133263 (n + 1)).toNat)

end

end A237561.P9797457167028991635

/-! ## A237561.P133526496054952922

`and(-2, A237567(Δ[A000292(n)]+2))`
-/

namespace A237561.P133526496054952922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A237567 (f1 (n + 1) - f1 n + 2).toNat)

end

end A237561.P133526496054952922

/-! ## A237561.P14681637333789929156

`A007318(C(2, n))*A237567(A000096(n)+3)`
-/

namespace A237561.P14681637333789929156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A237567 (A000096 n + 3).toNat

end

end A237561.P14681637333789929156

/-! ## A237561.P13829773633967245332

`A237567(A252460(2*(n+2)))+A023533(2*n+3)`
-/

namespace A237561.P13829773633967245332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A252460 (2 * (n + 2))).toNat + A023533 (2 * n + 3)

end

end A237561.P13829773633967245332

/-!
# A237562: Number of (n+1)X(3+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237562, there is no canonical definition to state claims against.
-/

/-! ## A237562.P8259383319306803969

`A237567(∑[n+2]+4)`
-/

namespace A237562.P8259383319306803969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237562.P8259383319306803969

/-! ## A237562.P7525633887154498293

`lcm(2, A237567(A167614(n+1)))`
-/

namespace A237562.P7525633887154498293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237567 (A167614 (n + 1)).toNat)

end

end A237562.P7525633887154498293

/-! ## A237562.P7544522126767236417

`A237567(A167614(n+1))+A011738(n)`
-/

namespace A237562.P7544522126767236417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A167614 (n + 1)).toNat + A011738 n

end

end A237562.P7544522126767236417

/-! ## A237562.P10113914077730517169

`A237567(A167614(n+1))+A025437(n)`
-/

namespace A237562.P10113914077730517169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A167614 (n + 1)).toNat + A025437 n

end

end A237562.P10113914077730517169

/-! ## A237562.P4490949471091283057

`A237567(A167614(n+1))+A025438(n)`
-/

namespace A237562.P4490949471091283057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A167614 (n + 1)).toNat + A025438 n

end

end A237562.P4490949471091283057

/-!
# A237563: Number of (n+1)X(4+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237563, there is no canonical definition to state claims against.
-/

/-! ## A237563.P6956563065810063544

`A237567(C(n+5, 2)-n)`
-/

namespace A237563.P6956563065810063544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (Nat.choose (n + 5) 2 - n)

end

end A237563.P6956563065810063544

/-! ## A237563.P17705063521750686935

`A237567(A141214(n)+7)`
-/

namespace A237563.P17705063521750686935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A141214 n + 7).toNat

end

end A237563.P17705063521750686935

/-! ## A237563.P8612908878821111306

`A237567(A052905(n)+9)`
-/

namespace A237563.P8612908878821111306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A052905 n + 9).toNat

end

end A237563.P8612908878821111306

/-! ## A237563.P12054541007050669627

`A237567(A055999(n)+10)`
-/

namespace A237563.P12054541007050669627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A055999 n + 10).toNat

end

end A237563.P12054541007050669627

/-! ## A237563.P2775702768201822036

`A237567(eq[5, A066657(n)])`
-/

namespace A237563.P2775702768201822036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237563.P2775702768201822036

/-!
# A237564: Number of (n+1)X(5+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237564, there is no canonical definition to state claims against.
-/

/-! ## A237564.P16853112661918048746

`A237567(C(n+6, 2)-n)`
-/

namespace A237564.P16853112661918048746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (Nat.choose (n + 6) 2 - n)

end

end A237564.P16853112661918048746

/-! ## A237564.P4311477397222110830

`A237567(A167499(n+3))`
-/

namespace A237564.P4311477397222110830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A167499 (n + 3)).toNat

end

end A237564.P4311477397222110830

/-! ## A237564.P8006821307324713138

`A237567(A077169(n+5))`
-/

namespace A237564.P8006821307324713138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A077169 (n + 5)).toNat

end

end A237564.P8006821307324713138

/-! ## A237564.P5238174018057895736

`A237567(A155212(n)+13)`
-/

namespace A237564.P5238174018057895736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A155212 n + 13).toNat

end

end A237564.P5238174018057895736

/-! ## A237564.P213390862028522643

`A237567(A056000(n)+15)`
-/

namespace A237564.P213390862028522643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A056000 n + 15).toNat

end

end A237564.P213390862028522643

/-!
# A237565: Number of (n+1)X(6+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237565, there is no canonical definition to state claims against.
-/

/-! ## A237565.P13227833477502187126

`A237567(A166136(n+4))`
-/

namespace A237565.P13227833477502187126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A166136 (n + 4)).toNat

end

end A237565.P13227833477502187126

/-! ## A237565.P4079647565568975238

`A237567(A167499(n+4)+1)`
-/

namespace A237565.P4079647565568975238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A167499 (n + 4) + 1).toNat

end

end A237565.P4079647565568975238

/-! ## A237565.P11948960373189191230

`A237567(A167614(n+4)+3)`
-/

namespace A237565.P11948960373189191230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A167614 (n + 4) + 3).toNat

end

end A237565.P11948960373189191230

/-! ## A237565.P12966696579396856134

`A237567(A000217(n+5)+6)`
-/

namespace A237565.P12966696579396856134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A000217 (n + 5) + 6).toNat

end

end A237565.P12966696579396856134

/-! ## A237565.P3674083944096288541

`A237567(A141214(n+2)+9)`
-/

namespace A237565.P3674083944096288541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A141214 (n + 2) + 9).toNat

end

end A237565.P3674083944096288541

/-!
# A237566: Number of (n+1)X(7+1) 0..2 arrays with the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237566, there is no canonical definition to state claims against.
-/

/-! ## A237566.P18017265651030406001

`A237567(A056119(n)+28)`
-/

namespace A237566.P18017265651030406001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A056119 n + 28).toNat

end

end A237566.P18017265651030406001

/-! ## A237566.P10940048817089493524

`A237567(eq[11, A066657(n)])`
-/

namespace A237566.P10940048817089493524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237566.P10940048817089493524

/-! ## A237566.P11346039365903492527

`A237567(eq[8, A131818(n+1)])`
-/

namespace A237566.P11346039365903492527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237566.P11346039365903492527

/-! ## A237566.P7510661694468943069

`A237567(A374008(n+1))`
-/

namespace A237566.P7510661694468943069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A374008 (n + 1)).toNat

end

end A237566.P7510661694468943069

/-! ## A237566.P14961763067861060857

`A237567(A055999(n+4))`
-/

namespace A237566.P14961763067861060857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237567 (A055999 (n + 4)).toNat

end

end A237566.P14961763067861060857

/-!
# A237568: Fibonacci-like sequence of numbers with nondecreasing positive digits. Let a^+ denote the number that is obtained from a if its positive digits are written in nondecreasing order, while zeros remain in their places. Let a<+>b = (a + b)^+. a(0)=0, a(1)=1, for n>=2, a(n) = a(n-1) <+> a(n-2).

The programs for A237568, there is no canonical definition to state claims against.
-/

/-! ## A237568.P5367901993554873616

`A345672(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A237568.P5367901993554873616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A345672 (a (n - 1) + a (n - 2)).toNat

end

end A237568.P5367901993554873616

/-! ## A237568.P4959502591439264612

`A345672(2-(4/2-a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A237568.P4959502591439264612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A345672 (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 2) : ℚ)))).toNat

end

end A237568.P4959502591439264612

/-!
# A237569: Number of (n+1)X(1+1) 0..3 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237569, there is no canonical definition to state claims against.
-/

/-! ## A237569.P14101019033289695161

`A237574(∑[n]+1)`
-/

namespace A237569.P14101019033289695161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237569.P14101019033289695161

/-! ## A237569.P6208017417363903487

`record[root(A237574(n+1), A054143(n))]`
-/

namespace A237569.P6208017417363903487
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237574 (n + 1) : ℝ) ^ (1 / (A054143 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237569.P6208017417363903487

/-! ## A237569.P12745737774455557508

`record[root(A237574(n+1), A128227(n))]`
-/

namespace A237569.P12745737774455557508
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237574 (n + 1) : ℝ) ^ (1 / (A128227 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237569.P12745737774455557508

/-! ## A237569.P4906736322045983889

`record[root(A237574(n+1), A238303(n))]`
-/

namespace A237569.P4906736322045983889
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237574 (n + 1) : ℝ) ^ (1 / (A238303 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237569.P4906736322045983889

/-! ## A237569.P8657570548356303465

`record[root(A237574(n+1), A278218(n))]`
-/

namespace A237569.P8657570548356303465
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237574 (n + 1) : ℝ) ^ (1 / (A278218 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237569.P8657570548356303465

/-!
# A237570: Number of (n+1)X(2+1) 0..3 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237570, there is no canonical definition to state claims against.
-/

/-! ## A237570.P15577248317825829711

`A237574(∑[n+1]+2)`
-/

namespace A237570.P15577248317825829711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237570.P15577248317825829711

/-! ## A237570.P10980928150558562449

`record[root(A237574(n+2), A054143(n))]`
-/

namespace A237570.P10980928150558562449
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237574 (n + 2) : ℝ) ^ (1 / (A054143 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237570.P10980928150558562449

/-! ## A237570.P14093237268136359413

`record[root(A237574(n+2), A238303(n))]`
-/

namespace A237570.P14093237268136359413
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237574 (n + 2) : ℝ) ^ (1 / (A238303 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237570.P14093237268136359413

/-! ## A237570.P2025747302668443576

`record[gcd(A090181(n+1), A237574(n+3))]`
-/

namespace A237570.P2025747302668443576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090181 (n + 1)) (A237574 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237570.P2025747302668443576

/-! ## A237570.P17838954083737512276

`record[A237574(Δ[A003453(n+5)])]`
-/

namespace A237570.P17838954083737512276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237570.P17838954083737512276

/-!
# A237571: Number of (n+1)X(3+1) 0..3 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237571, there is no canonical definition to state claims against.
-/

/-! ## A237571.P16226055321222792767

`A237574(∑[n+2]+4)`
-/

namespace A237571.P16226055321222792767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237571.P16226055321222792767

/-! ## A237571.P15524489147037880252

`lcm(2, A237574(A167614(n+1)))`
-/

namespace A237571.P15524489147037880252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237574 (A167614 (n + 1)).toNat)

end

end A237571.P15524489147037880252

/-! ## A237571.P9790114425112458036

`record[gcd(A090181(n+1), A237574(n+4))]`
-/

namespace A237571.P9790114425112458036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090181 (n + 1)) (A237574 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237571.P9790114425112458036

/-! ## A237571.P17499623214739571847

`A237574(A167614(n+1))+A011741(n)`
-/

namespace A237571.P17499623214739571847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (A167614 (n + 1)).toNat + A011741 n

end

end A237571.P17499623214739571847

/-! ## A237571.P16202681556958702908

`A237574(A167614(n+1))+A191928(n)`
-/

namespace A237571.P16202681556958702908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (A167614 (n + 1)).toNat + A191928 n

end

end A237571.P16202681556958702908

/-!
# A237572: Number of (n+1)X(4+1) 0..3 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237572, there is no canonical definition to state claims against.
-/

/-! ## A237572.P9272214435114933598

`A237574(A374004(n+1))`
-/

namespace A237572.P9272214435114933598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (A374004 (n + 1)).toNat

end

end A237572.P9272214435114933598

/-! ## A237572.P14181262976809832

`A237574(A052905(n)+9)`
-/

namespace A237572.P14181262976809832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (A052905 n + 9).toNat

end

end A237572.P14181262976809832

/-! ## A237572.P14958174224874658503

`A237574(A167614(n+2)+1)`
-/

namespace A237572.P14958174224874658503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (A167614 (n + 2) + 1).toNat

end

end A237572.P14958174224874658503

/-! ## A237572.P10652856897179052178

`A237574(eq[5, A131818(n+1)])`
-/

namespace A237572.P10652856897179052178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237572.P10652856897179052178

/-! ## A237572.P15946567965918002808

`A237574(A141214(n+1))`
-/

namespace A237572.P15946567965918002808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (A141214 (n + 1)).toNat

end

end A237572.P15946567965918002808

/-!
# A237573: Number of (n+1)X(5+1) 0..3 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237573, there is no canonical definition to state claims against.
-/

/-! ## A237573.P16371695446622144046

`A237574(A374005(n+1))`
-/

namespace A237573.P16371695446622144046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (A374005 (n + 1)).toNat

end

end A237573.P16371695446622144046

/-! ## A237573.P4457002463387254631

`A237574(eq[6, A131818(n+1)])`
-/

namespace A237573.P4457002463387254631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237573.P4457002463387254631

/-! ## A237573.P16745457587150072068

`A237574(Δ[A023545(n+1)])`
-/

namespace A237573.P16745457587150072068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237574 (f1 (n + 1) - f1 n).toNat

end

end A237573.P16745457587150072068

/-!
# A237575: Fibonacci-like numbers with nonincreasing positive digits. Let a** denote the number that is obtained from a if its digits are written in nonincreasing order. Let a<+>b = (a + b)**. a(0)=0, a(1)=1, for n>=2, a(n) = a(n-1) <+> a(n-2).

The programs for A237575, there is no canonical definition to state claims against.
-/

/-! ## A237575.P2252379939348924200

`A004186(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A237575.P2252379939348924200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004186 (a (n - 1) + a (n - 2)).toNat

end

end A237575.P2252379939348924200

/-! ## A237575.P15651496517516955869

`A004186(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A237575.P15651496517516955869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004186 (a (n - 1) - (-a (n - 2))).toNat

end

end A237575.P15651496517516955869

/-! ## A237575.P4638398318419965968

`A004186(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A237575.P4638398318419965968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004186 (a (n - 1) - (-a (n - 2))).toNat

end

end A237575.P4638398318419965968

/-! ## A237575.P13268449804878147762

`A004186(a(n-1)-round(-a(n-2)))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A237575.P13268449804878147762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004186 (a (n - 1) - (-a (n - 2))).toNat

end

end A237575.P13268449804878147762

/-! ## A237575.P4836180686517243813

`A004186(a(n-1)-(char[1]-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A237575.P4836180686517243813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004186 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A237575.P4836180686517243813

/-!
# A237576: Smallest integer areas of integer-sided triangles such that the perimeter equals n times the smallest side.

The programs for A237576, there is no canonical definition to state claims against.
-/

/-! ## A237576.P16324309910602137739

`lcm(n, A053590(∏[n+1])%∏[n+1])`
-/

namespace A237576.P16324309910602137739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod (A053590 (∏ j ∈ Finset.range (n + 1), f1 j)) ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A237576.P16324309910602137739

/-! ## A237576.P16472352796613169021

`∑[n]*A244798(A212581(n))`
-/

namespace A237576.P16472352796613169021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A244798 (A212581 n).toNat

end

end A237576.P16472352796613169021

/-! ## A237576.P4702106288816519014

`lcm(n, A065712(A183827(n+1)))`
-/

namespace A237576.P4702106288816519014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A065712 (A183827 (n + 1)).toNat)

end

end A237576.P4702106288816519014

/-!
# A237580: a(n) = (2n)! - n! + 1.

The programs for A237580, the canonical program `A237580.P14951216141646075549` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237580 has offset 0).

The definition of A237580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237580.P14951216141646075549

`(2*n)!-n!+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A237580

/-- `(2*n)!-n!+1` -/
def P14951216141646075549.Spec : Prop :=
  ∀ n, P14951216141646075549.a n = A237580 n

theorem P14951216141646075549.correct : P14951216141646075549.Spec := by
  intro n
  simp only [A237580]

end A237580

/-! ## A237580.P605901740734206910

`1-(n!-(2*n)!)`
-/

namespace A237580.P605901740734206910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.factorial n : ℤ) - (Nat.factorial (2 * n) : ℤ))

end

end A237580.P605901740734206910

namespace A237580

/-- `1-(n!-(2*n)!)` -/
def P605901740734206910.Spec : Prop :=
  ∀ n, P605901740734206910.a n = A237580 n

theorem P605901740734206910.correct : P605901740734206910.Spec := by
  intro n
  simp only [A237580, Nat.add_sub_cancel, A237580.P605901740734206910.a, A237580.P14951216141646075549.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A237580

/-! ## A237580.P12082513953878382578

`floor(2/acot(n))!-(n!-1)`
-/

namespace A237580.P12082513953878382578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ) - ((Nat.factorial n : ℤ) - 1)

end

end A237580.P12082513953878382578

namespace A237580

/-- `floor(2/acot(n))!-(n!-1)` -/
def P12082513953878382578.Spec : Prop :=
  ∀ n, P12082513953878382578.a n = A237580 n

end A237580

/-! ## A237580.P15104446026500106045

`record[∏[floor(acot(n)-n)]]-(n!-1)`
-/

namespace A237580.P15104446026500106045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((Nat.factorial n : ℤ) - 1)

end

end A237580.P15104446026500106045

namespace A237580

/-- `record[∏[floor(acot(n)-n)]]-(n!-1)` -/
def P15104446026500106045.Spec : Prop :=
  ∀ n, P15104446026500106045.a n = A237580 n

end A237580

/-! ## A237580.P7015000380055924860

`A127231(n)-n!`
-/

namespace A237580.P7015000380055924860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127231 n - (Nat.factorial n : ℤ)

end

end A237580.P7015000380055924860

namespace A237580

/-- `A127231(n)-n!` -/
def P7015000380055924860.Spec : Prop :=
  ∀ n, P7015000380055924860.a n = A237580 n

end A237580

/-!
# A237581: A024282(n)/2^(n-1).

The programs for A237581, there is no canonical definition to state claims against.
-/

/-! ## A237581.P1929497573702422909

`A024282(n)/2^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A237581.P1929497573702422909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024282 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A237581.P1929497573702422909

/-! ## A237581.P5080280748574860275

`A009833(n)/2^n`
-/

namespace A237581.P5080280748574860275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009833 n : ℚ) / (2 ^ n : ℚ)

end

end A237581.P5080280748574860275

/-! ## A237581.P10998310477541642293

`floor(A009833(n)/A000079(n))`
-/

namespace A237581.P10998310477541642293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009833 n : ℚ) / (A000079 n : ℚ)⌋

end

end A237581.P10998310477541642293

/-! ## A237581.P13978681708252764470

`A235145(n)+A009833(n)/A000079(n)`
-/

namespace A237581.P13978681708252764470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235145 n : ℚ) + (A009833 n : ℚ) / (A000079 n : ℚ)

end

end A237581.P13978681708252764470

/-! ## A237581.P12205876354701242447

`A009833(n)/A000079(n)*A007318(C(2, n²))`
-/

namespace A237581.P12205876354701242447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009833 n : ℚ) / (A000079 n : ℚ) * (A007318 (Nat.choose 2 (n ^ 2)) : ℚ)

end

end A237581.P12205876354701242447

/-!
# A237583: Automorphic numbers: n^2 ends with n in base 6.

The programs for A237583, there is no canonical definition to state claims against.
-/

/-! ## A237583.P18363058467284209697

`sqrt(A308248(n+1))`
-/

namespace A237583.P18363058467284209697
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A308248 (n + 1) : ℝ)

end

end A237583.P18363058467284209697

/-! ## A237583.P6883712781621493028

`A308248(n+1)^(A209615(n+1)²/2)`
-/

namespace A237583.P6883712781621493028
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A308248 (n + 1) : ℝ) ^ ((A209615 (n + 1) ^ 2 : ℚ) / 2 : ℝ)

end

end A237583.P6883712781621493028

/-! ## A237583.P7439712811518938513

`A308248(n+1)^(A008574(n)/A022144(n))`
-/

namespace A237583.P7439712811518938513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A308248 (n + 1) : ℝ) ^ ((A008574 n : ℚ) / (A022144 n : ℚ) : ℝ)

end

end A237583.P7439712811518938513

/-! ## A237583.P4076498444349752855

`A308248(n+1)^(A014577(A278254(n+1))/2)`
-/

namespace A237583.P4076498444349752855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A308248 (n + 1) : ℝ) ^ ((A014577 (A278254 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A237583.P4076498444349752855

/-!
# A237584: a(n) = number of iterations needed to stabilize the map m -> f(m) where f(m) is the concatenation in descending order of the prime distinct divisors of the numbers m = 2n+1, or = -1 if there is no such a(n).

The programs for A237584, there is no canonical definition to state claims against.
-/

/-! ## A237584.P586511292546803651

`A082516(A284465(n+2))%A294138(2*n+3)`
-/

namespace A237584.P586511292546803651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082516 (A284465 (n + 2)).toNat) (A294138 (2 * n + 3))

end

end A237584.P586511292546803651

/-! ## A237584.P14917675855248162393

`A243840(A244149(2*n+3))`
-/

namespace A237584.P14917675855248162393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243840 (A244149 (2 * n + 3)).toNat

end

end A237584.P14917675855248162393

/-! ## A237584.P8812110354250034262

`A213301(n)%A016014(n+1)`
-/

namespace A237584.P8812110354250034262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213301 n) (A016014 (n + 1))

end

end A237584.P8812110354250034262

/-! ## A237584.P2743837591898105050

`A056146(n+1)%A016014(n+1)`
-/

namespace A237584.P2743837591898105050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056146 (n + 1)) (A016014 (n + 1))

end

end A237584.P2743837591898105050

/-! ## A237584.P9796538232119137540

`A086977(n+1)%A016014(n+1)`
-/

namespace A237584.P9796538232119137540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086977 (n + 1)) (A016014 (n + 1))

end

end A237584.P9796538232119137540

/-!
# A237586: Arrange n^2 distinct positive integers in an n X n grid so that numbers on a given row or column are pairwise coprime. a(n) gives the smallest number which can be the maximal value on such a grid.

The programs for A237586, there is no canonical definition to state claims against.
-/

/-! ## A237586.P4890549240121435431

`or((-1)^(n%3)+n, ∑[∑[∑[(n%3)!]]])`
-/

namespace A237586.P4890549240121435431
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ (n % 3) + (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A237586.P4890549240121435431

/-! ## A237586.P8426940519936287180

`A134421(∑[comp[5^n]])`
-/

namespace A237586.P8426940519936287180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134421 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237586.P8426940519936287180

/-! ## A237586.P7774743350863371105

`A335402(∑[n+1]+1)`
-/

namespace A237586.P7774743350863371105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237586.P7774743350863371105

/-!
# A237587: Triangle read by rows in which row n lists the first n odd squares in decreasing order.

The programs for A237587, the canonical program `A237587.P9425086099865115615` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237587 has offset 1).

The definition of A237587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237587.P10792884291318752259

`(∑[2*n]%(comp[∑[n]]+1)+1)²`
-/

namespace A237587.P10792884291318752259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1) ^ 2

end

end A237587.P10792884291318752259

namespace A237587

/-- `(∑[2*n]%(comp[∑[n]]+1)+1)²` -/
def P10792884291318752259.Spec : Prop :=
  ∀ n, (P10792884291318752259.a n : ℤ) = A237587 (n + 1)

end A237587

/-! ## A237587.P6074713705392944399

`(2*(C(comp[∑[n]]-n, 2)-n)-1)²`
-/

namespace A237587.P6074713705392944399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1) ^ 2

end

end A237587.P6074713705392944399

namespace A237587

/-- `(2*(C(comp[∑[n]]-n, 2)-n)-1)²` -/
def P6074713705392944399.Spec : Prop :=
  ∀ n, P6074713705392944399.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P18189164992392174073

`(2*(C(comp[∑[n]]-n, 2)-n)-1)^2`
-/

namespace A237587.P18189164992392174073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1) ^ 2

end

end A237587.P18189164992392174073

namespace A237587

/-- `(2*(C(comp[∑[n]]-n, 2)-n)-1)^2` -/
def P18189164992392174073.Spec : Prop :=
  ∀ n, P18189164992392174073.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P9425086099865115615

`A099375(n)²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A237587

/-- `A099375(n)²` -/
def P9425086099865115615.Spec : Prop :=
  ∀ n, P9425086099865115615.a n = A237587 (n + 1)

theorem P9425086099865115615.correct : P9425086099865115615.Spec := by
  intro n
  simp only [A237587, Nat.add_sub_cancel]

end A237587

/-! ## A237587.P14887964864635181309

`Δ[A394927(n)]²`
-/

namespace A237587.P14887964864635181309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A237587.P14887964864635181309

namespace A237587

/-- `Δ[A394927(n)]²` -/
def P14887964864635181309.Spec : Prop :=
  ∀ n, P14887964864635181309.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P15206920720511984381

`(log2(A262616(n))+1)²`
-/

namespace A237587.P15206920720511984381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A262616 n : ℝ) + 1) ^ 2

end

end A237587.P15206920720511984381

namespace A237587

/-- `(log2(A262616(n))+1)²` -/
def P15206920720511984381.Spec : Prop :=
  ∀ n, P15206920720511984381.a n = (A237587 (n + 1) : ℝ)

end A237587

/-! ## A237587.P1796310691157650003

`A099375(comp[∑[n]])^2`
-/

namespace A237587.P1796310691157650003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A237587.P1796310691157650003

namespace A237587

/-- `A099375(comp[∑[n]])^2` -/
def P1796310691157650003.Spec : Prop :=
  ∀ n, P1796310691157650003.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P4039799398651357606

`(1-A212012(n+1))²`
-/

namespace A237587.P4039799398651357606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A212012 (n + 1)) ^ 2

end

end A237587.P4039799398651357606

namespace A237587

/-- `(1-A212012(n+1))²` -/
def P4039799398651357606.Spec : Prop :=
  ∀ n, P4039799398651357606.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P18420476944404241052

`(2*A025581(n)+1)²`
-/

namespace A237587.P18420476944404241052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A025581 n + 1) ^ 2

end

end A237587.P18420476944404241052

namespace A237587

/-- `(2*A025581(n)+1)²` -/
def P18420476944404241052.Spec : Prop :=
  ∀ n, P18420476944404241052.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P15772655533884235457

`or(1, A185782(n+1))²`
-/

namespace A237587.P15772655533884235457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A185782 (n + 1)) ^ 2

end

end A237587.P15772655533884235457

namespace A237587

/-- `or(1, A185782(n+1))²` -/
def P15772655533884235457.Spec : Prop :=
  ∀ n, P15772655533884235457.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P10066725139749142817

`(log2(A130321(n)²)+1)²`
-/

namespace A237587.P10066725139749142817
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A130321 n ^ 2 : ℝ) + 1) ^ 2

end

end A237587.P10066725139749142817

namespace A237587

/-- `(log2(A130321(n)²)+1)²` -/
def P10066725139749142817.Spec : Prop :=
  ∀ n, P10066725139749142817.a n = (A237587 (n + 1) : ℝ)

end A237587

/-! ## A237587.P8616043692545588193

`4*A095832(n+1)+1`
-/

namespace A237587.P8616043692545588193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A095832 (n + 1) + 1

end

end A237587.P8616043692545588193

namespace A237587

/-- `4*A095832(n+1)+1` -/
def P8616043692545588193.Spec : Prop :=
  ∀ n, P8616043692545588193.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P980324465501315266

`(1-2*A004736(n+1))²`
-/

namespace A237587.P980324465501315266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A004736 (n + 1)) ^ 2

end

end A237587.P980324465501315266

namespace A237587

/-- `(1-2*A004736(n+1))²` -/
def P980324465501315266.Spec : Prop :=
  ∀ n, P980324465501315266.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P10939336538569851288

`(1-log2(A090988(n+1)²))²`
-/

namespace A237587.P10939336538569851288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - Real.logb 2 (A090988 (n + 1) ^ 2 : ℝ)) ^ 2

end

end A237587.P10939336538569851288

namespace A237587

/-- `(1-log2(A090988(n+1)²))²` -/
def P10939336538569851288.Spec : Prop :=
  ∀ n, P10939336538569851288.a n = (A237587 (n + 1) : ℝ)

end A237587

/-! ## A237587.P2567708573249316030

`(1-2*sqrt(A055461(n+1)))²`
-/

namespace A237587.P2567708573249316030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - 2 * Real.sqrt (A055461 (n + 1) : ℝ)) ^ 2

end

end A237587.P2567708573249316030

namespace A237587

/-- `(1-2*sqrt(A055461(n+1)))²` -/
def P2567708573249316030.Spec : Prop :=
  ∀ n, P2567708573249316030.a n = (A237587 (n + 1) : ℝ)

end A237587

/-! ## A237587.P10923867358597507889

`(2*n+1-A002378(∑[char[∑[n]]]))²`
-/

namespace A237587.P10923867358597507889
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A002378 (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A237587.P10923867358597507889

namespace A237587

/-- `(2*n+1-A002378(∑[char[∑[n]]]))²` -/
def P10923867358597507889.Spec : Prop :=
  ∀ n, P10923867358597507889.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P998301852731898517

`A016754(A025581(n))`
-/

namespace A237587.P998301852731898517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A025581 n).toNat

end

end A237587.P998301852731898517

namespace A237587

/-- `A016754(A025581(n))` -/
def P998301852731898517.Spec : Prop :=
  ∀ n, P998301852731898517.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P9909677871123755454

`A133256(A104571(n))²`
-/

namespace A237587.P9909677871123755454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A104571 n).toNat ^ 2

end

end A237587.P9909677871123755454

namespace A237587

/-- `A133256(A104571(n))²` -/
def P9909677871123755454.Spec : Prop :=
  ∀ n, P9909677871123755454.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P10966899963817821269

`A373710(A055461(n+1))`
-/

namespace A237587.P10966899963817821269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373710 (A055461 (n + 1)).toNat

end

end A237587.P10966899963817821269

namespace A237587

/-- `A373710(A055461(n+1))` -/
def P10966899963817821269.Spec : Prop :=
  ∀ n, P10966899963817821269.a n = A237587 (n + 1)

end A237587

/-! ## A237587.P2870275380335552309

`A000463(2*A099375(n))`
-/

namespace A237587.P2870275380335552309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A099375 n).toNat

end

end A237587.P2870275380335552309

namespace A237587

/-- `A000463(2*A099375(n))` -/
def P2870275380335552309.Spec : Prop :=
  ∀ n, P2870275380335552309.a n = A237587 (n + 1)

end A237587

/-!
# A237588: a(n) = sigma(n) - 2n + 1.

The programs for A237588, the canonical program `A237588.P7919289499905681947` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237588 has offset 1).

The definition of A237588 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033880, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A237588.P7919289499905681947

`1+A033880(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A237588

/-- `1+A033880(n+1)` -/
def P7919289499905681947.Spec : Prop :=
  ∀ n, P7919289499905681947.a n = A237588 (n + 1)

theorem P7919289499905681947.correct : P7919289499905681947.Spec := by
  intro n
  simp only [A237588, Nat.add_sub_cancel]

end A237588

/-! ## A237588.P5944547503012990422

`1-A033879(n+1)`
-/

namespace A237588.P5944547503012990422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033879 (n + 1)

end

end A237588.P5944547503012990422

namespace A237588

/-- `1-A033879(n+1)` -/
def P5944547503012990422.Spec : Prop :=
  ∀ n, P5944547503012990422.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P7298792127616412711

`A000203(n+1)-A005408(n)`
-/

namespace A237588.P7298792127616412711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A005408 n

end

end A237588.P7298792127616412711

namespace A237588

/-- `A000203(n+1)-A005408(n)` -/
def P7298792127616412711.Spec : Prop :=
  ∀ n, P7298792127616412711.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P13149048754512711755

`∑{d}[n+1, #]-Δ[n²]`
-/

namespace A237588.P13149048754512711755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A237588.P13149048754512711755

namespace A237588

/-- `∑{d}[n+1, #]-Δ[n²]` -/
def P13149048754512711755.Spec : Prop :=
  ∀ n, P13149048754512711755.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P13734987535147381452

`∑{d}[n+1, #]-1-2*n`
-/

namespace A237588.P13734987535147381452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1 - (2 * n : ℤ)

end

end A237588.P13734987535147381452

namespace A237588

/-- `∑{d}[n+1, #]-1-2*n` -/
def P13734987535147381452.Spec : Prop :=
  ∀ n, P13734987535147381452.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P13993232397000939107

`-(n+1-∑{d}[n+1, #]+n)`
-/

namespace A237588.P13993232397000939107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (n : ℤ))

end

end A237588.P13993232397000939107

namespace A237588

/-- `-(n+1-∑{d}[n+1, #]+n)` -/
def P13993232397000939107.Spec : Prop :=
  ∀ n, P13993232397000939107.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P1622943834399150215

`abs(n+1-∑{d}[n+1, #])-n`
-/

namespace A237588.P1622943834399150215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)| - (n : ℤ)

end

end A237588.P1622943834399150215

namespace A237588

/-- `abs(n+1-∑{d}[n+1, #])-n` -/
def P1622943834399150215.Spec : Prop :=
  ∀ n, P1622943834399150215.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P10466755990887144665

`-A235796(n+1)`
-/

namespace A237588.P10466755990887144665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A235796 (n + 1)

end

end A237588.P10466755990887144665

namespace A237588

/-- `-A235796(n+1)` -/
def P10466755990887144665.Spec : Prop :=
  ∀ n, P10466755990887144665.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P7798280674771025541

`1-Δ[A111490(n)]`
-/

namespace A237588.P7798280674771025541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A237588.P7798280674771025541

namespace A237588

/-- `1-Δ[A111490(n)]` -/
def P7798280674771025541.Spec : Prop :=
  ∀ n, P7798280674771025541.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P5731741725999498840

`A001065(n+1)-n`
-/

namespace A237588.P5731741725999498840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (n : ℤ)

end

end A237588.P5731741725999498840

namespace A237588

/-- `A001065(n+1)-n` -/
def P5731741725999498840.Spec : Prop :=
  ∀ n, P5731741725999498840.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P14504737973331348546

`Δ[A160664(n)-n²]`
-/

namespace A237588.P14504737973331348546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237588.P14504737973331348546

namespace A237588

/-- `Δ[A160664(n)-n²]` -/
def P14504737973331348546.Spec : Prop :=
  ∀ n, P14504737973331348546.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P11403760522925336581

`n²-A235799(n+1)`
-/

namespace A237588.P11403760522925336581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A235799 (n + 1)

end

end A237588.P11403760522925336581

namespace A237588

/-- `n²-A235799(n+1)` -/
def P11403760522925336581.Spec : Prop :=
  ∀ n, P11403760522925336581.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P17448257426115674337

`1-A353190(n+1)+n`
-/

namespace A237588.P17448257426115674337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353190 (n + 1) + (n : ℤ)

end

end A237588.P17448257426115674337

namespace A237588

/-- `1-A353190(n+1)+n` -/
def P17448257426115674337.Spec : Prop :=
  ∀ n, P17448257426115674337.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P859635801638692186

`2-A033885(n+1)+n`
-/

namespace A237588.P859635801638692186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033885 (n + 1) + (n : ℤ)

end

end A237588.P859635801638692186

namespace A237588

/-- `2-A033885(n+1)+n` -/
def P859635801638692186.Spec : Prop :=
  ∀ n, P859635801638692186.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P6328585773764261537

`A039653(n+1)-2*n`
-/

namespace A237588.P6328585773764261537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - (2 * n : ℤ)

end

end A237588.P6328585773764261537

namespace A237588

/-- `A039653(n+1)-2*n` -/
def P6328585773764261537.Spec : Prop :=
  ∀ n, P6328585773764261537.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P5905130447239896450

`A091818(n+1)/2-n`
-/

namespace A237588.P5905130447239896450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A237588.P5905130447239896450

namespace A237588

/-- `A091818(n+1)/2-n` -/
def P5905130447239896450.Spec : Prop :=
  ∀ n, P5905130447239896450.a n = (A237588 (n + 1) : ℚ)

end A237588

/-! ## A237588.P16430095338195624922

`C(n, 2)-A024816(n+1)`
-/

namespace A237588.P16430095338195624922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A024816 (n + 1)

end

end A237588.P16430095338195624922

namespace A237588

/-- `C(n, 2)-A024816(n+1)` -/
def P16430095338195624922.Spec : Prop :=
  ∀ n, P16430095338195624922.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P6481989449073882262

`∑[A340793(n+1)-2]+1`
-/

namespace A237588.P6481989449073882262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A237588.P6481989449073882262

namespace A237588

/-- `∑[A340793(n+1)-2]+1` -/
def P6481989449073882262.Spec : Prop :=
  ∀ n, P6481989449073882262.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P5183174710335464713

`floor(A294015(n+1)/2-n)`
-/

namespace A237588.P5183174710335464713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294015 (n + 1) : ℚ) / 2 - (n : ℚ)⌋

end

end A237588.P5183174710335464713

namespace A237588

/-- `floor(A294015(n+1)/2-n)` -/
def P5183174710335464713.Spec : Prop :=
  ∀ n, P5183174710335464713.a n = A237588 (n + 1)

end A237588

/-! ## A237588.P8523633033233174735

`ceil(A062967(n+1)/2-n)`
-/

namespace A237588.P8523633033233174735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062967 (n + 1) : ℚ) / 2 - (n : ℚ)⌉

end

end A237588.P8523633033233174735

namespace A237588

/-- `ceil(A062967(n+1)/2-n)` -/
def P8523633033233174735.Spec : Prop :=
  ∀ n, P8523633033233174735.a n = A237588 (n + 1)

end A237588

/-!
# A237589: Sum of first n odd noncomposite numbers.

The programs for A237589, the canonical program `A237589.P15064465826932885110` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237589 has offset 1).

The definition of A237589 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014284, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A237589.P15064465826932885110

`A014284(n+2)-2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A237589

/-- `A014284(n+2)-2` -/
def P15064465826932885110.Spec : Prop :=
  ∀ n, P15064465826932885110.a n = A237589 (n + 1)

theorem P15064465826932885110.correct : P15064465826932885110.Spec := by
  intro n
  simp only [A237589, Nat.add_sub_cancel]

end A237589

/-! ## A237589.P267497458456930742

`∑[p?[2*n+1]]+1-p?[2*n+1]`
-/

namespace A237589.P267497458456930742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

end

end A237589.P267497458456930742

namespace A237589

/-- `∑[p?[2*n+1]]+1-p?[2*n+1]` -/
def P267497458456930742.Spec : Prop :=
  ∀ n, P267497458456930742.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P2510318991459576904

`∑[A006005(n+1)]`
-/

namespace A237589.P2510318991459576904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237589.P2510318991459576904

namespace A237589

/-- `∑[A006005(n+1)]` -/
def P2510318991459576904.Spec : Prop :=
  ∀ n, P2510318991459576904.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P15147830548618357018

`A007504(n+1)-1`
-/

namespace A237589.P15147830548618357018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - 1

end

end A237589.P15147830548618357018

namespace A237589

/-- `A007504(n+1)-1` -/
def P15147830548618357018.Spec : Prop :=
  ∀ n, P15147830548618357018.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P6488337360930089431

`A101301(n+1)+n`
-/

namespace A237589.P6488337360930089431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) + (n : ℤ)

end

end A237589.P6488337360930089431

namespace A237589

/-- `A101301(n+1)+n` -/
def P6488337360930089431.Spec : Prop :=
  ∀ n, P6488337360930089431.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P15000657075611826704

`floor(sqrt(A092780(n+1)))`
-/

namespace A237589.P15000657075611826704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A092780 (n + 1))

end

end A237589.P15000657075611826704

namespace A237589

/-- `floor(sqrt(A092780(n+1)))` -/
def P15000657075611826704.Spec : Prop :=
  ∀ n, P15000657075611826704.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P8093971188975190025

`∑[p?[A259153(n)]]-1`
-/

namespace A237589.P8093971188975190025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A237589.P8093971188975190025

namespace A237589

/-- `∑[p?[A259153(n)]]-1` -/
def P8093971188975190025.Spec : Prop :=
  ∀ n, P8093971188975190025.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P14850894939031621684

`∑[A000040(n+1)]-1`
-/

namespace A237589.P14850894939031621684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A237589.P14850894939031621684

namespace A237589

/-- `∑[A000040(n+1)]-1` -/
def P14850894939031621684.Spec : Prop :=
  ∀ n, P14850894939031621684.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P12601417137909814491

`∑[A062876(n+1)/4]`
-/

namespace A237589.P12601417137909814491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062876 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237589.P12601417137909814491

namespace A237589

/-- `∑[A062876(n+1)/4]` -/
def P12601417137909814491.Spec : Prop :=
  ∀ n, P12601417137909814491.a n = (A237589 (n + 1) : ℚ)

end A237589

/-! ## A237589.P11441555979818315930

`∑[A006093(n+1)]+n`
-/

namespace A237589.P11441555979818315930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A237589.P11441555979818315930

namespace A237589

/-- `∑[A006093(n+1)]+n` -/
def P11441555979818315930.Spec : Prop :=
  ∀ n, P11441555979818315930.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P13687161596652531421

`∑[A055670(n+1)]-n`
-/

namespace A237589.P13687161596652531421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A237589.P13687161596652531421

namespace A237589

/-- `∑[A055670(n+1)]-n` -/
def P13687161596652531421.Spec : Prop :=
  ∀ n, P13687161596652531421.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P16341763566977698877

`A060939(n+1)-(n+2)`
-/

namespace A237589.P16341763566977698877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060939 (n + 1) - (n + 2 : ℤ)

end

end A237589.P16341763566977698877

namespace A237589

/-- `A060939(n+1)-(n+2)` -/
def P16341763566977698877.Spec : Prop :=
  ∀ n, P16341763566977698877.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P1911460154987455404

`A065091(n)+a(n-1)` with `a(0)=1`
-/

namespace A237589.P1911460154987455404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065091 n + a (n - 1)

end

end A237589.P1911460154987455404

namespace A237589

/-- `A065091(n)+a(n-1)` -/
def P1911460154987455404.Spec : Prop :=
  ∀ n, P1911460154987455404.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P820394334836683130

`A102724(n)-a(n-1)` with `a(0)=1`
-/

namespace A237589.P820394334836683130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102724 n - a (n - 1)

end

end A237589.P820394334836683130

namespace A237589

/-- `A102724(n)-a(n-1)` -/
def P820394334836683130.Spec : Prop :=
  ∀ n, P820394334836683130.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P11093698962713652327

`∑[sqrt(A001248(n+1))]-1`
-/

namespace A237589.P11093698962713652327
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A237589.P11093698962713652327

namespace A237589

/-- `∑[sqrt(A001248(n+1))]-1` -/
def P11093698962713652327.Spec : Prop :=
  ∀ n, P11093698962713652327.a n = (A237589 (n + 1) : ℝ)

end A237589

/-! ## A237589.P5867214127204895115

`A000040(C(n+1, n))+a(n-1)` with `a(0)=1`
-/

namespace A237589.P5867214127204895115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Nat.choose (n + 1) n) + a (n - 1)

end

end A237589.P5867214127204895115

namespace A237589

/-- `A000040(C(n+1, n))+a(n-1)` -/
def P5867214127204895115.Spec : Prop :=
  ∀ n, P5867214127204895115.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P8283851112912503316

`A000040(Δ[n²]-n)+a(n-1)` with `a(0)=1`
-/

namespace A237589.P8283851112912503316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A237589.P8283851112912503316

namespace A237589

/-- `A000040(Δ[n²]-n)+a(n-1)` -/
def P8283851112912503316.Spec : Prop :=
  ∀ n, P8283851112912503316.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P3830260720608054157

`∑[lcm(2, A000040(2*n-(n-1)))/2]`
-/

namespace A237589.P3830260720608054157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237589.P3830260720608054157

namespace A237589

/-- `∑[lcm(2, A000040(2*n-(n-1)))/2]` -/
def P3830260720608054157.Spec : Prop :=
  ∀ n, P3830260720608054157.a n = (A237589 (n + 1) : ℚ)

end A237589

/-! ## A237589.P14244508357731277791

`A112997(n+1)+A000096(n)`
-/

namespace A237589.P14244508357731277791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 1) + A000096 n

end

end A237589.P14244508357731277791

namespace A237589

/-- `A112997(n+1)+A000096(n)` -/
def P14244508357731277791.Spec : Prop :=
  ∀ n, P14244508357731277791.a n = A237589 (n + 1)

end A237589

/-! ## A237589.P6804955038055234216

`A108754(n+1)+A005563(n)`
-/

namespace A237589.P6804955038055234216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1) + A005563 n

end

end A237589.P6804955038055234216

namespace A237589

/-- `A108754(n+1)+A005563(n)` -/
def P6804955038055234216.Spec : Prop :=
  ∀ n, P6804955038055234216.a n = A237589 (n + 1)

end A237589

/-!
# A237590: a(n) is the total number of regions (or parts) after n-th stage in the diagram of the symmetries of sigma described in A236104.

The programs for A237590, there is no canonical definition to state claims against.
-/

/-! ## A237590.P11896886260399401309

`∑[A237271(n+1)]`
-/

namespace A237590.P11896886260399401309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237590.P11896886260399401309

/-! ## A237590.P16032073271226693510

`A237271(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A237590.P16032073271226693510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A237271 (n + 1) + a (A023443 n).toNat

end

end A237590.P16032073271226693510

/-! ## A237590.P18426656857706055373

`∑[A001227(n+1)-A239657(n+1)]`
-/

namespace A237590.P18426656857706055373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A239657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237590.P18426656857706055373

/-! ## A237590.P12219098686527825994

`∑[A000005(n+1)-A243982(n+1)]`
-/

namespace A237590.P12219098686527825994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A243982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237590.P12219098686527825994

/-! ## A237590.P12246782932237009521

`A390880(n+2)-(A390880(n+1)+A237271(n+2))`
-/

namespace A237590.P12246782932237009521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390880 (n + 2) - (A390880 (n + 1) + A237271 (n + 2))

end

end A237590.P12246782932237009521

/-! ## A237590.P6368327386066571475

`∑[A008621(A244971(n+1))]`
-/

namespace A237590.P6368327386066571475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A244971 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237590.P6368327386066571475

/-! ## A237590.P13222850886280793653

`∑[A008624(A244971(n+1)+2)]`
-/

namespace A237590.P13222850886280793653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A244971 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237590.P13222850886280793653

/-! ## A237590.P14764529626478727907

`∑[A110622(A244971(n+1)+2)]`
-/

namespace A237590.P14764529626478727907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A244971 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237590.P14764529626478727907

/-! ## A237590.P15618816497825031654

`∑[A348327(n+1)+A262619(n+1)]`
-/

namespace A237590.P15618816497825031654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1) + A262619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237590.P15618816497825031654

/-! ## A237590.P2335074512387176340

`A317109(n+1)+1-A294723(n+1)`
-/

namespace A237590.P2335074512387176340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317109 (n + 1) + (1 - A294723 (n + 1))

end

end A237590.P2335074512387176340

/-! ## A237590.P293667122940570806

`A331274(A331274(a(n-1)))+A237271(n+1)` with `a(0)=1`
-/

namespace A237590.P293667122940570806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A331274 (A331274 (a (n - 1)).toNat).toNat + A237271 (n + 1)

end

end A237590.P293667122940570806

/-! ## A237590.P2526419422841103767

`∑[A390877(∑[n+1])]`
-/

namespace A237590.P2526419422841103767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390877 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237590.P2526419422841103767

/-! ## A237590.P17766285848983550041

`∑[A390879(∑[n+1])]`
-/

namespace A237590.P17766285848983550041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390879 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237590.P17766285848983550041

/-!
# A237591: Irregular triangle read by rows: T(n,k) is the difference between the total number of partitions of all positive integers <= n into exactly k consecutive parts, and the total number of partitions of all positive integers <= n into exactly k+1 consecutive parts (n>=1, 1<=k<=A003056(n)).

The programs for A237591, there is no canonical definition to state claims against.
-/

/-! ## A237591.P8010726170554622554

`A235791(n+1)-sqrt(A236112(n+1))`
-/

namespace A237591.P8010726170554622554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235791 (n + 1) : ℝ) - Real.sqrt (A236112 (n + 1) : ℝ)

end

end A237591.P8010726170554622554

/-! ## A237591.P5290035563172556193

`sqrt(A236104(n+1))-sqrt(A236112(n+1))`
-/

namespace A237591.P5290035563172556193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A236104 (n + 1) : ℝ) - Real.sqrt (A236112 (n + 1) : ℝ)

end

end A237591.P5290035563172556193

/-! ## A237591.P10757910676682722831

`(A338721(n+1)+1)/2-sqrt(A236112(n+1))`
-/

namespace A237591.P10757910676682722831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A338721 (n + 1) + 1 : ℚ) / 2 : ℝ) - Real.sqrt (A236112 (n + 1) : ℝ)

end

end A237591.P10757910676682722831

/-! ## A237591.P102789565500322093

`A000463(A338721(n+1))-sqrt(A236112(n+1))`
-/

namespace A237591.P102789565500322093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000463 (A338721 (n + 1)).toNat : ℝ) - Real.sqrt (A236112 (n + 1) : ℝ)

end

end A237591.P102789565500322093

/-! ## A237591.P14217884978177060267

`A001281(A338721(n+1)+1)-sqrt(A236112(n+1))`
-/

namespace A237591.P14217884978177060267
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001281 (A338721 (n + 1) + 1).toNat : ℝ) - Real.sqrt (A236112 (n + 1) : ℝ)

end

end A237591.P14217884978177060267

/-! ## A237591.P6634956845542346676

`A235791(n+1)-A236112(n+1)/A235791(n+2)`
-/

namespace A237591.P6634956845542346676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235791 (n + 1) : ℚ) - (A236112 (n + 1) : ℚ) / (A235791 (n + 2) : ℚ)

end

end A237591.P6634956845542346676

/-! ## A237591.P8020730713795211091

`A127093(2*A236104(n+1))-A056926(A236112(n+1))`
-/

namespace A237591.P8020730713795211091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (2 * A236104 (n + 1)).toNat - A056926 (A236112 (n + 1)).toNat

end

end A237591.P8020730713795211091

/-!
# A237592: Odd numbers n divisible by 3 such that for all k >= 1 the numbers n*2^k - 1 and n*2^k + 1 do not form a twin prime pair.

The programs for A237592, there is no canonical definition to state claims against.
-/

/-! ## A237592.P15029583878651569588

`sqrt(A252020(n+1))`
-/

namespace A237592.P15029583878651569588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A252020 (n + 1) : ℝ)

end

end A237592.P15029583878651569588

/-! ## A237592.P15122841260305838330

`root(A252020(n+1), A020639(2*(n+1)))`
-/

namespace A237592.P15122841260305838330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252020 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A237592.P15122841260305838330

/-! ## A237592.P6852257744986332841

`root(A252020(n+1), 2)*A007318(C(2, n))`
-/

namespace A237592.P6852257744986332841
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252020 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (Nat.choose 2 n) : ℝ)

end

end A237592.P6852257744986332841

/-! ## A237592.P11854538808695357338

`root(A252020(n+1), A020725(n+1)-n)`
-/

namespace A237592.P11854538808695357338
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252020 (n + 1) : ℝ) ^ (1 / (A020725 (n + 1) - (n : ℤ) : ℝ))

end

end A237592.P11854538808695357338

/-! ## A237592.P4529110687847827404

`∑{d}[root(A252020(n+1), 2), A000010(#)]`
-/

namespace A237592.P4529110687847827404
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252020 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A237592.P4529110687847827404

/-!
# A237594: Number of primes p < prime(n)/2 such that the Bell number B(p) is a primitive root modulo prime(n).

The programs for A237594, there is no canonical definition to state claims against.
-/

/-! ## A237594.P5979204940680319011

`A124060(∑[∑[A047920(2*n+1)]])`
-/

namespace A237594.P5979204940680319011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237594.P5979204940680319011

/-! ## A237594.P1753782934572572781

`A250185(A000051(n))%A008619(n)`
-/

namespace A237594.P1753782934572572781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250185 (A000051 n).toNat) (A008619 n)

end

end A237594.P1753782934572572781

/-! ## A237594.P498621554336967810

`gcd(A127322(A000217(n)), A251748(n))`
-/

namespace A237594.P498621554336967810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127322 (A000217 n).toNat) (A251748 n)

end

end A237594.P498621554336967810

/-! ## A237594.P8917837502851042533

`A001222(or(A148019(n), A187069(n)))`
-/

namespace A237594.P8917837502851042533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A148019 n) (A187069 n)).toNat

end

end A237594.P8917837502851042533

/-! ## A237594.P13968734551335620126

`A322027(A339376(3*n+1)+A000129(n))`
-/

namespace A237594.P13968734551335620126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A339376 (3 * n + 1) + A000129 n).toNat

end

end A237594.P13968734551335620126

/-!
# A237595: a(n) = |{1 <= k <= n: n + pi(k^2) is prime}|, where pi(.) is given by A000720.

The programs for A237595, there is no canonical definition to state claims against.
-/

/-! ## A237595.P16169360499187954063

`A000120(3*n+1)%A006047(A000583(n))`
-/

namespace A237595.P16169360499187954063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (3 * n + 1)) (A006047 (A000583 n).toNat)

end

end A237595.P16169360499187954063

/-! ## A237595.P4600197115902763452

`C(A000120(3*n+1), A254655(A369553(n+1)))`
-/

namespace A237595.P4600197115902763452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 (3 * n + 1)).toNat (A254655 (A369553 (n + 1)).toNat).toNat

end

end A237595.P4600197115902763452

/-!
# A237596: Convolution triangle of A000958(n+1).

The programs for A237596, there is no canonical definition to state claims against.
-/

/-! ## A237596.P15045220924355235329

`A236918(∑[char[∑[n]]]²-n)`
-/

namespace A237596.P15045220924355235329
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236918 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A237596.P15045220924355235329

/-! ## A237596.P13597714921113048377

`or(char[1], A236918(A038722(n+1)))`
-/

namespace A237596.P13597714921113048377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A236918 (A038722 (n + 1)).toNat)

end

end A237596.P13597714921113048377

/-! ## A237596.P14042062591211020947

`gcd(A000038(n), A236918(A038722(n+1)))`
-/

namespace A237596.P14042062591211020947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A236918 (A038722 (n + 1)).toNat)

end

end A237596.P14042062591211020947

/-! ## A237596.P17808953559635698102

`lcm(A033999(n), A236918(A038722(n+1)))`
-/

namespace A237596.P17808953559635698102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A236918 (A038722 (n + 1)).toNat)

end

end A237596.P17808953559635698102

/-! ## A237596.P5650763007501025627

`A236918(A038722(n+1))+A008683(4*(n+2))`
-/

namespace A237596.P5650763007501025627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236918 (A038722 (n + 1)).toNat + A008683 (4 * (n + 2))

end

end A237596.P5650763007501025627

/-! ## A237596.P4551658310873505558

`A236918(A038722(n+1))-A020639(2*(n+1))+2`
-/

namespace A237596.P4551658310873505558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236918 (A038722 (n + 1)).toNat - A020639 (2 * (n + 1)) + 2

end

end A237596.P4551658310873505558

/-! ## A237596.P4662765910218201917

`a(n%A000040(n)-n)*A236918(A038722(n+1))` with `a(0)=1`
-/

namespace A237596.P4662765910218201917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (n : ℤ) (A000040 n) - (n : ℤ)).toNat * A236918 (A038722 (n + 1)).toNat

end

end A237596.P4662765910218201917

/-! ## A237596.P1133940210261925799

`A001222(A020639(2*(n+1))+1)*A236918(A038722(n+1))`
-/

namespace A237596.P1133940210261925799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020639 (2 * (n + 1)) + 1).toNat * A236918 (A038722 (n + 1)).toNat

end

end A237596.P1133940210261925799

/-! ## A237596.P13378246615377852375

`A236918(A038722(n+1))%A005807(n)`
-/

namespace A237596.P13378246615377852375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236918 (A038722 (n + 1)).toNat) (A005807 n)

end

end A237596.P13378246615377852375

/-!
# A237599: Positive integers k such that x^2 - 6xy + y^2 + k = 0 has integer solutions.

The programs for A237599, there is no canonical definition to state claims against.
-/

/-! ## A237599.P6851365234379553154

`eq[1, char[A121488(n+1)]]`
-/

namespace A237599.P6851365234379553154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121488 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237599.P6851365234379553154

/-! ## A237599.P1193905086635525216

`∩[A035251(n+1), A014601(n)]`
-/

namespace A237599.P1193905086635525216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237599.P1193905086635525216

/-! ## A237599.P1141562396789668395

`eq[char[A057105(n+1)], A014695(n)]`
-/

namespace A237599.P1141562396789668395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057105 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A237599.P1141562396789668395

/-! ## A237599.P7083842225400578977

`eq[char[A035251(n+1)], A087960(n)]`
-/

namespace A237599.P7083842225400578977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A237599.P7083842225400578977

/-! ## A237599.P13049067152720525765

`eq[char[A057105(n+1)], A087960(n)]`
-/

namespace A237599.P13049067152720525765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057105 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A237599.P13049067152720525765

/-! ## A237599.P13675791008230749795

`eq[char[A087060(n+1)], A087960(n)]`
-/

namespace A237599.P13675791008230749795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087060 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A237599.P13675791008230749795

/-! ## A237599.P14719756908851482171

`∩[A028970(n+1), A035251(n+1)]`
-/

namespace A237599.P14719756908851482171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237599.P14719756908851482171

/-! ## A237599.P9914344060638843773

`∩[A035251(n+1), A047492(n+1)]`
-/

namespace A237599.P9914344060638843773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237599.P9914344060638843773

/-! ## A237599.P15281163689594871453

`∩[A035251(n+1), A047500(n+1)]`
-/

namespace A237599.P15281163689594871453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237599.P15281163689594871453

/-! ## A237599.P7858666131508682115

`∩[A035251(n+1), A047536(n+1)]`
-/

namespace A237599.P7858666131508682115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237599.P7858666131508682115

