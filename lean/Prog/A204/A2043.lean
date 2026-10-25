import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A204300: Number of nX7 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1, and 2 introduced before 3 in row major order.

The programs for A204300, there is no canonical definition to state claims against.
-/

/-! ## A204300.P15148784283587797580

`A204301(A056119(n)+28)`
-/

namespace A204300.P15148784283587797580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A056119 n + 28).toNat

end

end A204300.P15148784283587797580

/-! ## A204300.P5261518318180087579

`A204301(A374008(n+1))`
-/

namespace A204300.P5261518318180087579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (A374008 (n + 1)).toNat

end

end A204300.P5261518318180087579

/-! ## A204300.P12341061399329640739

`A204301(eq[4, A219347(n)])`
-/

namespace A204300.P12341061399329640739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204300.P12341061399329640739

/-! ## A204300.P9791722452561847760

`A204301(eq[6, A193592(n)])`
-/

namespace A204300.P9791722452561847760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204300.P9791722452561847760

/-! ## A204300.P12821351819732401280

`A204301(eq[7, A200370(n+1)])`
-/

namespace A204300.P12821351819732401280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204300.P12821351819732401280

/-!
# A204301: T(n,k)=Number of nXk 0..3 arrays with every element neighboring horizontally or vertically both a 0 and a 1, and 2 introduced before 3 in row major order.

The programs for A204301, there is no canonical definition to state claims against.
-/

/-! ## A204301.P9932652207904140707

`A265544(A203542(n+1))`
-/

namespace A204301.P9932652207904140707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265544 (A203542 (n + 1)).toNat

end

end A204301.P9932652207904140707

/-! ## A204301.P6833952348838864470

`and(84, A184164(A184173(n)))`
-/

namespace A204301.P6833952348838864470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 84 (A184164 (A184173 n).toNat)

end

end A204301.P6833952348838864470

/-! ## A204301.P2931027142258169689

`and(84, A347984(A347972(n)))`
-/

namespace A204301.P2931027142258169689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 84 (A347984 (A347972 n).toNat)

end

end A204301.P2931027142258169689

/-! ## A204301.P10421990133786818819

`and(84, A004736(A151527(n+1)))`
-/

namespace A204301.P10421990133786818819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 84 (A004736 (A151527 (n + 1)).toNat)

end

end A204301.P10421990133786818819

/-! ## A204301.P16777904482069775153

`and(A046092(A171160(n)), A171146(n+1))`
-/

namespace A204301.P16777904482069775153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046092 (A171160 n).toNat) (A171146 (n + 1))

end

end A204301.P16777904482069775153

/-!
# A204302: Number of (n+1)X(n+1) 0..3 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204302, there is no canonical definition to state claims against.
-/

/-! ## A204302.P13198357606819466309

`A204309(∑[4*n]+1)`
-/

namespace A204302.P13198357606819466309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204309 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204302.P13198357606819466309

/-!
# A204303: Number of (n+1)X2 0..3 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204303, there is no canonical definition to state claims against.
-/

/-! ## A204303.P1399219541178043853

`A204309(∑[n]+1)`
-/

namespace A204303.P1399219541178043853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204309 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204303.P1399219541178043853

/-! ## A204303.P5647275185068959496

`record[A010054(n)*A204309(n+1)]`
-/

namespace A204303.P5647275185068959496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204303.P5647275185068959496

/-! ## A204303.P7669965847708821557

`record[A204309(n+1)/A034801(n)]`
-/

namespace A204303.P7669965847708821557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204309 (n + 1) : ℚ) / (A034801 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204303.P7669965847708821557

/-! ## A204303.P17171832377947330121

`record[root(A204309(n+1), A278493(n))]`
-/

namespace A204303.P17171832377947330121
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204309 (n + 1) : ℝ) ^ (1 / (A278493 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204303.P17171832377947330121

/-! ## A204303.P12282919637698486296

`record[gcd(A002262(n), A204309(n+1))]`
-/

namespace A204303.P12282919637698486296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204309 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204303.P12282919637698486296

/-!
# A204304: Number of (n+1)X3 0..3 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204304, there is no canonical definition to state claims against.
-/

/-! ## A204304.P5249449592318022612

`A204309(∑[n+1]+2)`
-/

namespace A204304.P5249449592318022612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204309 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204304.P5249449592318022612

/-! ## A204304.P12234945410498982342

`record[A010054(n)*A204309(n+2)]`
-/

namespace A204304.P12234945410498982342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204309 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204304.P12234945410498982342

/-! ## A204304.P14197816275315279636

`record[root(A204309(n+2), A278493(n))]`
-/

namespace A204304.P14197816275315279636
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204309 (n + 2) : ℝ) ^ (1 / (A278493 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204304.P14197816275315279636

/-! ## A204304.P17524322229269112602

`record[gcd(A002262(n), A204309(n+2))]`
-/

namespace A204304.P17524322229269112602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204309 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204304.P17524322229269112602

/-! ## A204304.P595624168680933633

`record[A204309(n+3)/A039815(n+1)]`
-/

namespace A204304.P595624168680933633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204309 (n + 3) : ℚ) / (A039815 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204304.P595624168680933633

/-!
# A204305: Number of (n+1)X4 0..3 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204305, there is no canonical definition to state claims against.
-/

/-! ## A204305.P16593883654680442016

`A204309(∑[n+2]+4)`
-/

namespace A204305.P16593883654680442016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204309 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204305.P16593883654680442016

/-! ## A204305.P14155122255195547188

`A347323(n)+A204309(A167614(n+1))`
-/

namespace A204305.P14155122255195547188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n + A204309 (A167614 (n + 1)).toNat

end

end A204305.P14155122255195547188

/-! ## A204305.P1301628586441454645

`A015790(n)*A204309(A167614(n+1))`
-/

namespace A204305.P1301628586441454645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015790 n * A204309 (A167614 (n + 1)).toNat

end

end A204305.P1301628586441454645

/-! ## A204305.P7898936964513763316

`A136522(n)*A204309(A167614(n+1))`
-/

namespace A204305.P7898936964513763316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n * A204309 (A167614 (n + 1)).toNat

end

end A204305.P7898936964513763316

/-! ## A204305.P4162961627098708710

`A204309(A167614(n+1))*A309863(n)`
-/

namespace A204305.P4162961627098708710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204309 (A167614 (n + 1)).toNat * A309863 n

end

end A204305.P4162961627098708710

/-!
# A204306: Number of (n+1)X5 0..3 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204306, there is no canonical definition to state claims against.
-/

/-! ## A204306.P14729106795355611043

`A204309(∑[n+3]+7)`
-/

namespace A204306.P14729106795355611043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204309 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204306.P14729106795355611043

/-!
# A204307: Number of (n+1)X6 0..3 arrays with the sums of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204307, there is no canonical definition to state claims against.
-/

/-! ## A204307.P18292239395142842237

`A204309(A374005(n+1))`
-/

namespace A204307.P18292239395142842237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204309 (A374005 (n + 1)).toNat

end

end A204307.P18292239395142842237

/-!
# A204310: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..2 introduced in row major order.

The programs for A204310, there is no canonical definition to state claims against.
-/

/-! ## A204310.P4868138110805046138

`A204314(∑[n]+1)`
-/

namespace A204310.P4868138110805046138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204310.P4868138110805046138

/-! ## A204310.P14768675388492337625

`record[A204314(n+1)/A034801(n)]`
-/

namespace A204310.P14768675388492337625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204314 (n + 1) : ℚ) / (A034801 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204310.P14768675388492337625

/-! ## A204310.P5297385975563868555

`record[gcd(A002262(n), A204314(n+1))]`
-/

namespace A204310.P5297385975563868555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204314 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204310.P5297385975563868555

/-! ## A204310.P929582124932276887

`record[log2(A035214(n))*A204314(n+1)]`
-/

namespace A204310.P929582124932276887
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A035214 n : ℝ) * (A204314 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204310.P929582124932276887

/-! ## A204310.P7541769021100449919

`record[root(A204314(n+1), A001263(n+1))]`
-/

namespace A204310.P7541769021100449919
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204314 (n + 1) : ℝ) ^ (1 / (A001263 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204310.P7541769021100449919

/-!
# A204311: Number of (n+2) X 4 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..2 introduced in row major order.

The programs for A204311, there is no canonical definition to state claims against.
-/

/-! ## A204311.P3994294207512987970

`A204314(∑[n+1]+2)`
-/

namespace A204311.P3994294207512987970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204314 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204311.P3994294207512987970

/-! ## A204311.P4994221638476256575

`record[gcd(A002262(n), A204314(n+2))]`
-/

namespace A204311.P4994221638476256575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204314 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204311.P4994221638476256575

/-! ## A204311.P1763390221936808285

`A204314(A133263(n+1))+A184955(n)`
-/

namespace A204311.P1763390221936808285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204314 (A133263 (n + 1)).toNat + A184955 n

end

end A204311.P1763390221936808285

/-!
# A204312: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..2 introduced in row major order.

The programs for A204312, there is no canonical definition to state claims against.
-/

/-! ## A204312.P7820923607981211576

`A204314(A167614(n+1))`
-/

namespace A204312.P7820923607981211576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204314 (A167614 (n + 1)).toNat

end

end A204312.P7820923607981211576

/-! ## A204312.P3641768043822827178

`A204314(∑[n+3]+1)`
-/

namespace A204312.P3641768043822827178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204312.P3641768043822827178

/-!
# A204313: 

The programs for A204313, there is no canonical definition to state claims against.
-/

/-! ## A204313.P17225534028291017663

`A204314(A155212(n)+5)`
-/

namespace A204313.P17225534028291017663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204314 (A155212 n + 5).toNat

end

end A204313.P17225534028291017663

/-!
# A204315: Numbers j such that floor(j^(1/4)) divides j.

The programs for A204315, the canonical program `A204315.P10580234163752982560` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204315 has offset 1).

The definition of A204315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7850 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204315.P10580234163752982560

`record[n+1-((n+1)%floor(sqrt(sqrt(n+1))))²]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204315

/-- `record[n+1-((n+1)%floor(sqrt(sqrt(n+1))))²]` -/
def P10580234163752982560.Spec : Prop :=
  ∀ n, P10580234163752982560.a n = A204315 (n + 1)

theorem P10580234163752982560.correct : P10580234163752982560.Spec := by
  intro n
  simp only [A204315, Nat.add_sub_cancel]

end A204315

/-! ## A204315.P8302844419312183489

`record[gcd(n, A000196(A000196(n+1)))+n]`
-/

namespace A204315.P8302844419312183489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000196 (A000196 (n + 1)).toNat) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204315.P8302844419312183489

namespace A204315

/-- `record[gcd(n, A000196(A000196(n+1)))+n]` -/
def P8302844419312183489.Spec : Prop :=
  ∀ n, (P8302844419312183489.a n : ℤ) = A204315 (n + 1)

end A204315

/-! ## A204315.P12929575694666807673

`record[n+1-A008585((n+1)%A000196(A000196(n+1)))]`
-/

namespace A204315.P12929575694666807673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008585 (Int.tmod (n + 1 : ℤ) (A000196 (A000196 (n + 1)).toNat)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204315.P12929575694666807673

namespace A204315

/-- `record[n+1-A008585((n+1)%A000196(A000196(n+1)))]` -/
def P12929575694666807673.Spec : Prop :=
  ∀ n, P12929575694666807673.a n = A204315 (n + 1)

end A204315

/-! ## A204315.P13476101148275093640

`lt[lcm(n, A255270(n)), 2*n]`
-/

namespace A204315.P13476101148275093640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A255270 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204315.P13476101148275093640

namespace A204315

/-- `lt[lcm(n, A255270(n)), 2*n]` -/
def P13476101148275093640.Spec : Prop :=
  ∀ n, (P13476101148275093640.a n : ℤ) = A204315 (n + 1)

end A204315

/-! ## A204315.P6740739192890412005

`eq[lcm(n, A255270(n)), A028310(n)]`
-/

namespace A204315.P6740739192890412005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A255270 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204315.P6740739192890412005

namespace A204315

/-- `eq[lcm(n, A255270(n)), A028310(n)]` -/
def P6740739192890412005.Spec : Prop :=
  ∀ n, (P6740739192890412005.a n : ℤ) = A204315 (n + 1)

end A204315

/-! ## A204315.P13440159850829876145

`a(n-1)+floor(sqrt(sqrt(A216455(a(n-1)+1))))` with `a(0)=1`
-/

namespace A204315.P13440159850829876145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊Real.sqrt (Real.sqrt (A216455 (a (n - 1) + 1).toNat : ℝ))⌋

end

end A204315.P13440159850829876145

namespace A204315

/-- `a(n-1)+floor(sqrt(sqrt(A216455(a(n-1)+1))))` -/
def P13440159850829876145.Spec : Prop :=
  ∀ n, P13440159850829876145.a n = A204315 (n + 1)

end A204315

/-!
# A204316: Number of (n+2)X3 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..3 introduced in row major order.

The programs for A204316, there is no canonical definition to state claims against.
-/

/-! ## A204316.P11219537001514740219

`A204320(∑[n]+1)`
-/

namespace A204316.P11219537001514740219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204316.P11219537001514740219

/-! ## A204316.P10842317559150177533

`and(-1, A204320(A000124(n)))`
-/

namespace A204316.P10842317559150177533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A204320 (A000124 n).toNat)

end

end A204316.P10842317559150177533

/-! ## A204316.P16420671687103704240

`record[A204320(A114091(n+1))]`
-/

namespace A204316.P16420671687103704240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204320 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204316.P16420671687103704240

/-! ## A204316.P17954774440668768668

`record[A204320(A249742(n+1))]`
-/

namespace A204316.P17954774440668768668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204320 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204316.P17954774440668768668

/-! ## A204316.P13107611937548190566

`record[A204320(A286244(n+1))]`
-/

namespace A204316.P13107611937548190566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204320 (A286244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204316.P13107611937548190566

/-!
# A204317: Number of (n+2)X4 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..3 introduced in row major order.

The programs for A204317, there is no canonical definition to state claims against.
-/

/-! ## A204317.P11761552703213926818

`A204320(∑[n+1]+2)`
-/

namespace A204317.P11761552703213926818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204320 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204317.P11761552703213926818

/-! ## A204317.P6971958658955959976

`record[A204320(A114091(n+1)+1)]`
-/

namespace A204317.P6971958658955959976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204320 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204317.P6971958658955959976

/-! ## A204317.P14352779969902786708

`record[A010054(n)*A204320(n+2)]`
-/

namespace A204317.P14352779969902786708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204320 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204317.P14352779969902786708

/-!
# A204318: Number of (n+2)X5 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..3 introduced in row major order.

The programs for A204318, there is no canonical definition to state claims against.
-/

/-! ## A204318.P4772294381146156856

`A204320(A167614(n+1))`
-/

namespace A204318.P4772294381146156856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204320 (A167614 (n + 1)).toNat

end

end A204318.P4772294381146156856

/-! ## A204318.P18352533491498666880

`A204320(A020752(n)-1)`
-/

namespace A204318.P18352533491498666880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204320 (A020752 n - 1).toNat

end

end A204318.P18352533491498666880

/-!
# A204319: Number of (n+2)X6 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally at least two different ways, and new values 0..3 introduced in row major order.

The programs for A204319, there is no canonical definition to state claims against.
-/

/-! ## A204319.P3935017754751428425

`A204320(A020752(n+1))`
-/

namespace A204319.P3935017754751428425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204320 (A020752 (n + 1)).toNat

end

end A204319.P3935017754751428425

/-!
# A204321: Start with 4. Square the previous term and subtract it.

The programs for A204321, the canonical program `A204321.P16573639299514169338` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204321 has offset 1).

The definition of A204321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204321.P16573639299514169338

`a(n-1)*(a(n-1)-1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204321

/-- `a(n-1)*(a(n-1)-1)` -/
def P16573639299514169338.Spec : Prop :=
  ∀ n, P16573639299514169338.a n = A204321 (n + 1)

theorem P16573639299514169338.correct : P16573639299514169338.Spec := by
  intro n
  simp only [A204321, Nat.add_sub_cancel]

end A204321

/-! ## A204321.P3083302890915040930

`2*C(a(n-1), 2)` with `a(0)=4`
-/

namespace A204321.P3083302890915040930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  2 * Nat.choose (a (n - 1)) 2

end

end A204321.P3083302890915040930

namespace A204321

/-- `2*C(a(n-1), 2)` -/
def P3083302890915040930.Spec : Prop :=
  ∀ n, (P3083302890915040930.a n : ℤ) = A204321 (n + 1)

end A204321

/-! ## A204321.P44955225749126261

`lcm(4, C(a(n-1), 2))` with `a(0)=4`
-/

namespace A204321.P44955225749126261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lcm 4 (Nat.choose (a (n - 1)) 2)

end

end A204321.P44955225749126261

namespace A204321

/-- `lcm(4, C(a(n-1), 2))` -/
def P44955225749126261.Spec : Prop :=
  ∀ n, (P44955225749126261.a n : ℤ) = A204321 (n + 1)

end A204321

/-! ## A204321.P6830391782823962906

`floor((1/2-a(n-1))²)` with `a(0)=4`
-/

namespace A204321.P6830391782823962906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2⌋

end

end A204321.P6830391782823962906

namespace A204321

/-- `floor((1/2-a(n-1))²)` -/
def P6830391782823962906.Spec : Prop :=
  ∀ n, P6830391782823962906.a n = A204321 (n + 1)

end A204321

/-!
# A204322: Numbers k such that 4*5^k + 1 is prime.

The programs for A204322, there is no canonical definition to state claims against.
-/

/-! ## A204322.P13063790441114630217

`∑[2*n*∏{e}[A000045(n)!², #]]`
-/

namespace A204322.P13063790441114630217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000045 n).toNat ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204322.P13063790441114630217

/-! ## A204322.P12499413984338155187

`A068462(A204678(n+2))`
-/

namespace A204322.P12499413984338155187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068462 (A204678 (n + 2)).toNat

end

end A204322.P12499413984338155187

/-!
# A204323: Numbers n such that 4*7^n + 1 is prime.

The programs for A204323, there is no canonical definition to state claims against.
-/

/-! ## A204323.P8205089250103617260

`eq[4, A295641(round(sqrt(n²+1)))]`
-/

namespace A204323.P8205089250103617260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295641 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204323.P8205089250103617260

/-! ## A204323.P11860995726410568991

`lt[A295641(A028310(n)), 5]`
-/

namespace A204323.P11860995726410568991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295641 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A204323.P11860995726410568991

/-! ## A204323.P8634740412027784126

`A243924(A049614(n))+n`
-/

namespace A204323.P8634740412027784126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243924 (A049614 n).toNat + (n : ℤ)

end

end A204323.P8634740412027784126

/-! ## A204323.P15554253756397489277

`lt[A035327(A001694(2*n+3)), 40]`
-/

namespace A204323.P15554253756397489277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A001694 (2 * n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A204323.P15554253756397489277

/-!
# A204324: Numbers k such that A007953(k) >= A007953(k^3), where A007953 = digital sum in base 10.

The programs for A204324, there is no canonical definition to state claims against.
-/

/-! ## A204324.P13133019196683973022

`∪[A064209(n+1), A070276(n+1)]`
-/

namespace A204324.P13133019196683973022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A204324.P13133019196683973022

/-! ## A204324.P13948781129788829849

`lt[A004164(n), A007953(n)+1]`
-/

namespace A204324.P13948781129788829849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204324.P13948781129788829849

/-!
# A204326: Number of cubic graphs on 2n nodes with chromatic number 3.

The programs for A204326, there is no canonical definition to state claims against.
-/

/-! ## A204326.P9181486306634405069

`and(-floor(∑[ϕ^((n-1)%2)]), A020074(n))`
-/

namespace A204326.P9181486306634405069
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-⌊∑ j ∈ Finset.range (n + 1), f1 j⌋) (A020074 n)

end

end A204326.P9181486306634405069

/-! ## A204326.P2172999868901006333

`A047949(A020029(n)+2)`
-/

namespace A204326.P2172999868901006333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (A020029 n + 2).toNat

end

end A204326.P2172999868901006333

/-! ## A204326.P15470928711046775572

`A138538(A138164(n))-1`
-/

namespace A204326.P15470928711046775572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138538 (A138164 n).toNat - 1

end

end A204326.P15470928711046775572

/-!
# A204327: a(n) = Pell(n^2).

The programs for A204327, the canonical program `A204327.P12640585398393389666` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204327 has offset 1).

The definition of A204327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204327.P12640585398393389666

`((1+sqrt(2))^(n+1)²-(1-sqrt(2))^(n+1)²)/(2*sqrt(2))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204327

/-- `((1+sqrt(2))^(n+1)²-(1-sqrt(2))^(n+1)²)/(2*sqrt(2))` -/
def P12640585398393389666.Spec : Prop :=
  ∀ n, P12640585398393389666.a n = (A204327 (n + 1) : ℝ)

end A204327

/-! ## A204327.P14362153039728146307

`A000129((n+1)²)`
-/

namespace A204327.P14362153039728146307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ((n + 1) ^ 2)

end

end A204327.P14362153039728146307

namespace A204327

/-- `A000129((n+1)²)` -/
def P14362153039728146307.Spec : Prop :=
  ∀ n, P14362153039728146307.a n = A204327 (n + 1)

end A204327

/-! ## A204327.P9770398364495864727

`A204274((n+1)²)`
-/

namespace A204327.P9770398364495864727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204274 ((n + 1) ^ 2)

end

end A204327.P9770398364495864727

namespace A204327

/-- `A204274((n+1)²)` -/
def P9770398364495864727.Spec : Prop :=
  ∀ n, P9770398364495864727.a n = A204327 (n + 1)

end A204327

/-! ## A204327.P16822282011459470145

`A215928((n+1)²)`
-/

namespace A204327.P16822282011459470145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 ((n + 1) ^ 2)

end

end A204327.P16822282011459470145

namespace A204327

/-- `A215928((n+1)²)` -/
def P16822282011459470145.Spec : Prop :=
  ∀ n, P16822282011459470145.a n = A204327 (n + 1)

end A204327

/-! ## A204327.P14068014238018525762

`record[A204274(n+1)]`
-/

namespace A204327.P14068014238018525762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204327.P14068014238018525762

namespace A204327

/-- `record[A204274(n+1)]` -/
def P14068014238018525762.Spec : Prop :=
  ∀ n, P14068014238018525762.a n = A204327 (n + 1)

end A204327

/-!
# A204328: Number of cubic graphs on 2n nodes with nontrivial automorphism group.

The programs for A204328, there is no canonical definition to state claims against.
-/

/-! ## A204328.P7931821295575169341

`A002851(n+2)-A380935(n+2)`
-/

namespace A204328.P7931821295575169341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 (n + 2) - A380935 (n + 2)

end

end A204328.P7931821295575169341

/-! ## A204328.P17700602951880737119

`A220658(A274804(n+1))`
-/

namespace A204328.P17700602951880737119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A274804 (n + 1)).toNat

end

end A204328.P17700602951880737119

/-!
# A204330: a(n) is the number of k satisfying 1 <= k <= n and such that floor(sqrt(k)) divides k.

The programs for A204330, there is no canonical definition to state claims against.
-/

/-! ## A204330.P17465265200301204283

`∑[char[n-(n+1)%∑[char[n²]]]]`
-/

namespace A204330.P17465265200301204283
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 1) % (∑ j ∈ Finset.range (n + 1), f3 j) : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204330.P17465265200301204283

/-! ## A204330.P17279856742806412174

`∑[char[∑[ceil(n/3*n²%3)-1]]]`
-/

namespace A204330.P17279856742806412174
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3 * ((n ^ 2 % 3 : ℕ) : ℚ)⌉ - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204330.P17279856742806412174

/-! ## A204330.P4347374985633866583

`∑[char[floor(n/3)*ceil(n/3)-(n-1)]]`
-/

namespace A204330.P4347374985633866583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉ - ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204330.P4347374985633866583

/-! ## A204330.P14467315573353257384

`∑[char[A086162(n)]]+1`
-/

namespace A204330.P14467315573353257384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086162 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A204330.P14467315573353257384

/-! ## A204330.P4353468149525445078

`round(∑[1/A034807(n+1)])`
-/

namespace A204330.P4353468149525445078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A034807 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204330.P4353468149525445078

/-! ## A204330.P15629312951777485840

`comp[∑[A087508(n)-2]]-n`
-/

namespace A204330.P15629312951777485840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A204330.P15629312951777485840

/-! ## A204330.P3580366811743250438

`1-(eq[1, A072286(n)]-n)+n`
-/

namespace A204330.P3580366811743250438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)) + (n : ℤ)

end

end A204330.P3580366811743250438

/-! ## A204330.P12639029397426209190

`2*(n+1)-record[A064578(n+1)]`
-/

namespace A204330.P12639029397426209190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204330.P12639029397426209190

/-! ## A204330.P8614201295371348294

`A183869(n)-A028391(n+2)`
-/

namespace A204330.P8614201295371348294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183869 n - A028391 (n + 2)

end

end A204330.P8614201295371348294

/-! ## A204330.P17754803486058480804

`A316355(n+1)+A259361(n+1)`
-/

namespace A204330.P17754803486058480804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (n + 1) + A259361 (n + 1)

end

end A204330.P17754803486058480804

/-!
# A204331: 

The programs for A204331, there is no canonical definition to state claims against.
-/

/-! ## A204331.P8649919524177203034

`A204339(4*∑[n]+1)`
-/

namespace A204331.P8649919524177203034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A204331.P8649919524177203034

/-!
# A204332: Number of (n+1)X2 0..7 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204332, there is no canonical definition to state claims against.
-/

/-! ## A204332.P16434986296084475038

`A204339(∑[n]+1)`
-/

namespace A204332.P16434986296084475038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204332.P16434986296084475038

/-! ## A204332.P18440897485570895041

`record[A010054(n)*A204339(n+1)]`
-/

namespace A204332.P18440897485570895041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204332.P18440897485570895041

/-! ## A204332.P23628820884782590

`record[root(A204339(n+1), A013610(n))]`
-/

namespace A204332.P23628820884782590
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204339 (n + 1) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204332.P23628820884782590

/-! ## A204332.P430205483707107078

`record[root(A204339(n+1), A013612(n))]`
-/

namespace A204332.P430205483707107078
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204339 (n + 1) : ℝ) ^ (1 / (A013612 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204332.P430205483707107078

/-! ## A204332.P15959735732216688861

`record[root(A204339(n+1), A202511(n+1))]`
-/

namespace A204332.P15959735732216688861
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204339 (n + 1) : ℝ) ^ (1 / (A202511 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204332.P15959735732216688861

/-!
# A204333: Number of (n+1) X 3 0..7 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204333, there is no canonical definition to state claims against.
-/

/-! ## A204333.P9809421705630188877

`A204339(∑[n+1]+2)`
-/

namespace A204333.P9809421705630188877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204333.P9809421705630188877

/-! ## A204333.P13989957530328404926

`record[A010054(n)*A204339(n+2)]`
-/

namespace A204333.P13989957530328404926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204339 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204333.P13989957530328404926

/-! ## A204333.P1641221176205262348

`record[root(A204339(n+2), A013610(n))]`
-/

namespace A204333.P1641221176205262348
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204339 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204333.P1641221176205262348

/-! ## A204333.P790651740564359998

`record[root(A204339(n+2), A013612(n))]`
-/

namespace A204333.P790651740564359998
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204339 (n + 2) : ℝ) ^ (1 / (A013612 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204333.P790651740564359998

/-! ## A204333.P2586119652430263035

`record[A204339(A198455(n+1))]`
-/

namespace A204333.P2586119652430263035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204333.P2586119652430263035

/-!
# A204334: Number of (n+1)X4 0..7 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204334, there is no canonical definition to state claims against.
-/

/-! ## A204334.P17963606949512599953

`A204339(∑[n+2]+4)`
-/

namespace A204334.P17963606949512599953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204334.P17963606949512599953

/-! ## A204334.P15547991366711260371

`A204339(A167614(n+1))+A025442(n)`
-/

namespace A204334.P15547991366711260371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (A167614 (n + 1)).toNat + A025442 n

end

end A204334.P15547991366711260371

/-! ## A204334.P17091185621751481300

`A204339(A167614(n+1))+A084904(n)`
-/

namespace A204334.P17091185621751481300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (A167614 (n + 1)).toNat + A084904 n

end

end A204334.P17091185621751481300

/-! ## A204334.P16977570627710588730

`A204339(A167614(n+1))+A185284(n)`
-/

namespace A204334.P16977570627710588730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (A167614 (n + 1)).toNat + A185284 n

end

end A204334.P16977570627710588730

/-! ## A204334.P12693002603771546480

`A299905(n)+A204339(A167614(n+1))`
-/

namespace A204334.P12693002603771546480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A204339 (A167614 (n + 1)).toNat

end

end A204334.P12693002603771546480

/-!
# A204335: Number of (n+1)X5 0..7 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204335, there is no canonical definition to state claims against.
-/

/-! ## A204335.P13168155730318354369

`A204339(A052905(n)+9)`
-/

namespace A204335.P13168155730318354369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (A052905 n + 9).toNat

end

end A204335.P13168155730318354369

/-! ## A204335.P14300633766248323721

`A204339(A167614(n+1)-2-A001489(n+6))`
-/

namespace A204335.P14300633766248323721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (A167614 (n + 1) - 2 - A001489 (n + 6)).toNat

end

end A204335.P14300633766248323721

/-! ## A204335.P8579938489665391732

`A204339(A055998(n+2))`
-/

namespace A204335.P8579938489665391732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (A055998 (n + 2)).toNat

end

end A204335.P8579938489665391732

/-!
# A204336: 

The programs for A204336, there is no canonical definition to state claims against.
-/

/-! ## A204336.P13729171524537520327

`A204339(Δ[Δ[A022815(n+1)]]+1)`
-/

namespace A204336.P13729171524537520327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (f1 (n + 1) - f1 n + 1).toNat

end

end A204336.P13729171524537520327

/-!
# A204337: 

The programs for A204337, there is no canonical definition to state claims against.
-/

/-! ## A204337.P16965061930276849331

`A204339(A000217(n+5)+6)`
-/

namespace A204337.P16965061930276849331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (A000217 (n + 5) + 6).toNat

end

end A204337.P16965061930276849331

/-!
# A204338: 

The programs for A204338, there is no canonical definition to state claims against.
-/

/-! ## A204338.P859077857836984156

`A204339(A000217(n+6)+1+n)`
-/

namespace A204338.P859077857836984156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204339 (A000217 (n + 6) + 1 + (n : ℤ)).toNat

end

end A204338.P859077857836984156

/-!
# A204340: The number of words of length n created with the letters a,b,c with at least as many a's as b's and at least as many b's as c's and no adjacent letters forming the pattern bba.

The programs for A204340, there is no canonical definition to state claims against.
-/

/-! ## A204340.P16526887257354267875

`or(A034008(n), A191893(A164509(n)))`
-/

namespace A204340.P16526887257354267875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034008 n) (A191893 (A164509 n).toNat)

end

end A204340.P16526887257354267875

/-! ## A204340.P15027698638899032598

`A275895(A072042(n+1)+A007918(n))`
-/

namespace A204340.P15027698638899032598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 (A072042 (n + 1) + A007918 n).toNat

end

end A204340.P15027698638899032598

/-!
# A204341: Smith numbers with either no internal digits or all internal digits are 0.

The programs for A204341, there is no canonical definition to state claims against.
-/

/-! ## A204341.P4254277847650672905

`A006753(lt[A091894(n), A072591(2*n+1)])`
-/

namespace A204341.P4254277847650672905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072591 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204341.P4254277847650672905

/-! ## A204341.P15403404317517667746

`A279314(∑[A279305(n+1)!])`
-/

namespace A204341.P15403404317517667746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A279305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279314 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204341.P15403404317517667746

/-! ## A204341.P12405482135502271765

`∩[A006753(n+1), A178837(n+1)]`
-/

namespace A204341.P12405482135502271765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204341.P12405482135502271765

/-!
# A204342: a(n) = (-1)^n * Sum_{2*m + 1 | 2*n + 1} (-1)^m (2*m + 1)^4.

The programs for A204342, the canonical program `A204342.P2124445064722088541` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204342 has offset 0).

The definition of A204342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204342.P2124445064722088541

`A050468(2*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204342

/-- `A050468(2*n+1)` -/
def P2124445064722088541.Spec : Prop :=
  ∀ n, P2124445064722088541.a n = A204342 n

theorem P2124445064722088541.correct : P2124445064722088541.Spec := by
  intro n
  simp only [A204342]

end A204342

/-! ## A204342.P979915965766853154

`abs(A050456(2*n+1))`
-/

namespace A204342.P979915965766853154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050456 (2 * n + 1)|

end

end A204342.P979915965766853154

namespace A204342

/-- `abs(A050456(2*n+1))` -/
def P979915965766853154.Spec : Prop :=
  ∀ n, P979915965766853154.a n = A204342 n

end A204342

/-! ## A204342.P4193527478541508227

`A050463(2*n+1)-A050467(2*n+1)`
-/

namespace A204342.P4193527478541508227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050463 (2 * n + 1) - A050467 (2 * n + 1)

end

end A204342.P4193527478541508227

namespace A204342

/-- `A050463(2*n+1)-A050467(2*n+1)` -/
def P4193527478541508227.Spec : Prop :=
  ∀ n, P4193527478541508227.a n = A204342 n

theorem P4193527478541508227.correct : P4193527478541508227.Spec := by
  intro n
  simp only [A204342, Nat.add_sub_cancel, A204342.P4193527478541508227.a, A204342.P2124445064722088541.a, A050463, A050463.P239937787475028521.a, A050467, A050467.P9462411974454207442.a, A050468, A050468.P11011477730524257504.f1, A050468.P11011477730524257504.a, A002654, A002654.P11574922253888480122.a, A059377, A059377.P4346818254889849577.f1, A059377.P4346818254889849577.a, A285989, A285989.P13600926277969307102.f1, A285989.P13600926277969307102.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A204342

/-! ## A204342.P8629973186589300424

`A050468(n+1+n)/A295655(A198069(n))`
-/

namespace A204342.P8629973186589300424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050468 (n + 1 + n) : ℚ) / (A295655 (A198069 n).toNat : ℚ)

end

end A204342.P8629973186589300424

namespace A204342

/-- `A050468(n+1+n)/A295655(A198069(n))` -/
def P8629973186589300424.Spec : Prop :=
  ∀ n, P8629973186589300424.a n = (A204342 n : ℚ)

end A204342

/-! ## A204342.P12655034641442562806

`lcm(A001222(A002476(n+1)), A050456(2*n+1))`
-/

namespace A204342.P12655034641442562806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A002476 (n + 1)).toNat) (A050456 (2 * n + 1))

end

end A204342.P12655034641442562806

namespace A204342

/-- `lcm(A001222(A002476(n+1)), A050456(2*n+1))` -/
def P12655034641442562806.Spec : Prop :=
  ∀ n, (P12655034641442562806.a n : ℤ) = A204342 n

end A204342

/-! ## A204342.P1054314167484336840

`A050468(A005408(n))*A133823(n²)`
-/

namespace A204342.P1054314167484336840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050468 (A005408 n).toNat * A133823 (n ^ 2)

end

end A204342.P1054314167484336840

namespace A204342

/-- `A050468(A005408(n))*A133823(n²)` -/
def P1054314167484336840.Spec : Prop :=
  ∀ n, P1054314167484336840.a n = A204342 n

end A204342

/-!
# A204343: 

The programs for A204343, there is no canonical definition to state claims against.
-/

/-! ## A204343.P13880945695762879596

`A204351((n+1)²+n²)`
-/

namespace A204343.P13880945695762879596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204351 ((n + 1) ^ 2 + n ^ 2)

end

end A204343.P13880945695762879596

/-!
# A204344: Number of (n+2)X3 0..3 arrays with no 3X3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204344, there is no canonical definition to state claims against.
-/

/-! ## A204344.P11534678402465993577

`A204351(∑[n]+1)`
-/

namespace A204344.P11534678402465993577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204351 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204344.P11534678402465993577

/-! ## A204344.P5301088776059455026

`lcm(2, A204351(A000124(n)))`
-/

namespace A204344.P5301088776059455026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204351 (A000124 n).toNat)

end

end A204344.P5301088776059455026

/-! ## A204344.P8129834395606950

`record[root(A204351(n+1), A202511(n+1))]`
-/

namespace A204344.P8129834395606950
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204351 (n + 1) : ℝ) ^ (1 / (A202511 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204344.P8129834395606950

/-! ## A204344.P8177555940683401268

`record[gcd(A204301(n+1), A204351(n+1))]`
-/

namespace A204344.P8177555940683401268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204301 (n + 1)) (A204351 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204344.P8177555940683401268

/-! ## A204344.P4412570755274195178

`A007318(∑[n])*A204351(A000124(n))`
-/

namespace A204344.P4412570755274195178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A204351 (A000124 n).toNat

end

end A204344.P4412570755274195178

/-!
# A204345: Number of (n+2)X4 0..3 arrays with no 3X3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A204345, there is no canonical definition to state claims against.
-/

/-! ## A204345.P4125839114735100015

`A204351(∑[n+1]+2)`
-/

namespace A204345.P4125839114735100015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204351 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204345.P4125839114735100015

/-!
# A204346: 

The programs for A204346, there is no canonical definition to state claims against.
-/

/-! ## A204346.P1237702589566877990

`A204351(A167614(n+1))`
-/

namespace A204346.P1237702589566877990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204351 (A167614 (n + 1)).toNat

end

end A204346.P1237702589566877990

/-!
# A204348: 

The programs for A204348, there is no canonical definition to state claims against.
-/

/-! ## A204348.P3954145940990359428

`A204351(Δ[A023545(n+1)])`
-/

namespace A204348.P3954145940990359428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204351 (f1 (n + 1) - f1 n).toNat

end

end A204348.P3954145940990359428

/-! ## A204348.P4650609156358602701

`A204351(A023545(n+2)-A023545(n+1))`
-/

namespace A204348.P4650609156358602701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204351 (A023545 (n + 2) - A023545 (n + 1)).toNat

end

end A204348.P4650609156358602701

/-!
# A204352: Meandric numbers for a river crossing up to 3 parallel roads at n points.

The programs for A204352, there is no canonical definition to state claims against.
-/

/-! ## A204352.P11544724424394850578

`A380367(∑[n+3])`
-/

namespace A204352.P11544724424394850578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204352.P11544724424394850578

/-! ## A204352.P473649940061775883

`A380367(A141214(n))%A263186(n+5)`
-/

namespace A204352.P473649940061775883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380367 (A141214 n).toNat) (A263186 (n + 5))

end

end A204352.P473649940061775883

/-! ## A204352.P9221490433014341079

`ceil(A311526(A059727(n+1))/15)`
-/

namespace A204352.P9221490433014341079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A311526 (A059727 (n + 1)).toNat : ℚ) / 15⌉

end

end A204352.P9221490433014341079

/-! ## A204352.P8735079841461426778

`A373182(A059405(n+1))-A000045(n)`
-/

namespace A204352.P8735079841461426778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373182 (A059405 (n + 1)).toNat - A000045 n

end

end A204352.P8735079841461426778

/-! ## A204352.P4669634037937958196

`A100196(A112532(n))-A338707(n+1)`
-/

namespace A204352.P4669634037937958196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A112532 n).toNat - A338707 (n + 1)

end

end A204352.P4669634037937958196

/-!
# A204353: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204353, there is no canonical definition to state claims against.
-/

/-! ## A204353.P5863507255952603308

`A204361((n+1)²+n²)`
-/

namespace A204353.P5863507255952603308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 ((n + 1) ^ 2 + n ^ 2)

end

end A204353.P5863507255952603308

/-! ## A204353.P6144566282371724671

`A204361(A001844(n))+char[38]`
-/

namespace A204353.P6144566282371724671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204353.P6144566282371724671

/-! ## A204353.P8672582086532440228

`record[A003982(n)*A204361(n+1)]`
-/

namespace A204353.P8672582086532440228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204353.P8672582086532440228

/-! ## A204353.P2692540431019772761

`record[root(A204361(n+1), A143182(n))]`
-/

namespace A204353.P2692540431019772761
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204361 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204353.P2692540431019772761

/-! ## A204353.P7023683073013643367

`record[gcd(A114327(n), A204361(n+1))]`
-/

namespace A204353.P7023683073013643367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A204361 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204353.P7023683073013643367

/-!
# A204354: Number of (n+2)X3 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204354, there is no canonical definition to state claims against.
-/

/-! ## A204354.P16043612074809288273

`A204361(∑[n]+1)`
-/

namespace A204354.P16043612074809288273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204354.P16043612074809288273

/-! ## A204354.P13131362306783776352

`record[A204361(n+1)]`
-/

namespace A204354.P13131362306783776352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204354.P13131362306783776352

/-! ## A204354.P15028329613433250017

`xor(1, xor(1, A204361(A000124(n))))`
-/

namespace A204354.P15028329613433250017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A204361 (A000124 n).toNat))

end

end A204354.P15028329613433250017

/-! ## A204354.P6969779329012383422

`or(A000038(n), A204361(A000124(n)))`
-/

namespace A204354.P6969779329012383422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A204361 (A000124 n).toNat)

end

end A204354.P6969779329012383422

/-! ## A204354.P1786186008269043001

`A204361(A000124(n))+A000038(n+1)`
-/

namespace A204354.P1786186008269043001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A000124 n).toNat + A000038 (n + 1)

end

end A204354.P1786186008269043001

/-!
# A204355: Number of (n+2)X4 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204355, there is no canonical definition to state claims against.
-/

/-! ## A204355.P13134892457057967691

`A204361(A133263(n+1))`
-/

namespace A204355.P13134892457057967691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A133263 (n + 1)).toNat

end

end A204355.P13134892457057967691

/-! ## A204355.P3677425905693383961

`A204361(A374084(n+1))`
-/

namespace A204355.P3677425905693383961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A374084 (n + 1)).toNat

end

end A204355.P3677425905693383961

/-! ## A204355.P1297772455295787322

`A204361(A000096(n)+3)`
-/

namespace A204355.P1297772455295787322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A000096 n + 3).toNat

end

end A204355.P1297772455295787322

/-! ## A204355.P5629840064876914945

`A204361(A167499(n)-3)`
-/

namespace A204355.P5629840064876914945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A167499 n - 3).toNat

end

end A204355.P5629840064876914945

/-! ## A204355.P11969748392206953950

`A204361(Δ[A000292(n)]+2)`
-/

namespace A204355.P11969748392206953950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (f1 (n + 1) - f1 n + 2).toNat

end

end A204355.P11969748392206953950

/-!
# A204356: Number of (n+2)X5 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204356, there is no canonical definition to state claims against.
-/

/-! ## A204356.P9724784080093170270

`A204361(A167614(n+1))`
-/

namespace A204356.P9724784080093170270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A167614 (n + 1)).toNat

end

end A204356.P9724784080093170270

/-! ## A204356.P15943818483401688078

`A204361(A016028(n+5))`
-/

namespace A204356.P15943818483401688078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A016028 (n + 5)).toNat

end

end A204356.P15943818483401688078

/-! ## A204356.P17368925692108049848

`A204361(A055998(n)+6)`
-/

namespace A204356.P17368925692108049848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A055998 n + 6).toNat

end

end A204356.P17368925692108049848

/-! ## A204356.P216713997489213723

`A204361(A046691(n)+7)`
-/

namespace A204356.P216713997489213723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A046691 n + 7).toNat

end

end A204356.P216713997489213723

/-! ## A204356.P15123596233937898149

`A204361(A167499(n)+n)`
-/

namespace A204356.P15123596233937898149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A167499 n + (n : ℤ)).toNat

end

end A204356.P15123596233937898149

/-!
# A204357: Number of (n+2)X6 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204357, there is no canonical definition to state claims against.
-/

/-! ## A204357.P106704894580330094

`A204361(A055999(n)+10)`
-/

namespace A204357.P106704894580330094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A055999 n + 10).toNat

end

end A204357.P106704894580330094

/-! ## A204357.P12670931652972655513

`A204361(A167614(n+2)+1)`
-/

namespace A204357.P12670931652972655513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A167614 (n + 2) + 1).toNat

end

end A204357.P12670931652972655513

/-! ## A204357.P15068661140077606545

`A204361(A167499(n+2)-1)`
-/

namespace A204357.P15068661140077606545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A167499 (n + 2) - 1).toNat

end

end A204357.P15068661140077606545

/-! ## A204357.P11537114451548830884

`A204361(A000096(n+2)+5)`
-/

namespace A204357.P11537114451548830884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A000096 (n + 2) + 5).toNat

end

end A204357.P11537114451548830884

/-! ## A204357.P5649719318156797845

`A204361(A161680(n+4)+4)`
-/

namespace A204357.P5649719318156797845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A161680 (n + 4) + 4).toNat

end

end A204357.P5649719318156797845

/-!
# A204358: Number of (n+2)X7 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204358, there is no canonical definition to state claims against.
-/

/-! ## A204358.P10479330136531420611

`A204361(A167499(n+3))`
-/

namespace A204358.P10479330136531420611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A167499 (n + 3)).toNat

end

end A204358.P10479330136531420611

/-! ## A204358.P2451574445666572990

`A204361(A155212(n)+13)`
-/

namespace A204358.P2451574445666572990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A155212 n + 13).toNat

end

end A204358.P2451574445666572990

/-! ## A204358.P7710402884460643232

`A204361(A167614(n+3)+2)`
-/

namespace A204358.P7710402884460643232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A167614 (n + 3) + 2).toNat

end

end A204358.P7710402884460643232

/-! ## A204358.P1919372168633919936

`A204361(A161680(n+5)+5)`
-/

namespace A204358.P1919372168633919936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A161680 (n + 5) + 5).toNat

end

end A204358.P1919372168633919936

/-! ## A204358.P626511536354258938

`A204361(A374005(n+1))`
-/

namespace A204358.P626511536354258938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A374005 (n + 1)).toNat

end

end A204358.P626511536354258938

/-!
# A204359: Number of (n+2)X8 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204359, there is no canonical definition to state claims against.
-/

/-! ## A204359.P1813263523761724110

`A204361(∑[A020710(n)]+16)`
-/

namespace A204359.P1813263523761724110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A204359.P1813263523761724110

/-! ## A204359.P18358448420534696806

`A204361(A167499(n+4)+1)`
-/

namespace A204359.P18358448420534696806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A167499 (n + 4) + 1).toNat

end

end A204359.P18358448420534696806

/-! ## A204359.P8099490569540877649

`A204361(A000124(n+5)+5)`
-/

namespace A204359.P8099490569540877649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A000124 (n + 5) + 5).toNat

end

end A204359.P8099490569540877649

/-! ## A204359.P4370060753696500150

`A204361(A000217(n+5)+6)`
-/

namespace A204359.P4370060753696500150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A000217 (n + 5) + 6).toNat

end

end A204359.P4370060753696500150

/-! ## A204359.P1719648276012668116

`A204361(A133263(n+4)+n+9)`
-/

namespace A204359.P1719648276012668116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A133263 (n + 4) + (n + 9 : ℤ)).toNat

end

end A204359.P1719648276012668116

/-!
# A204360: Number of (n+2)X9 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204360, there is no canonical definition to state claims against.
-/

/-! ## A204360.P16067095488212040846

`A204361(A167499(n+5)+2)`
-/

namespace A204360.P16067095488212040846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A167499 (n + 5) + 2).toNat

end

end A204360.P16067095488212040846

/-! ## A204360.P9525977692969680474

`A204361(A000217(n+6)+7)`
-/

namespace A204360.P9525977692969680474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A000217 (n + 6) + 7).toNat

end

end A204360.P9525977692969680474

/-! ## A204360.P509837348856245280

`A204361(A055998(n+4)+10)`
-/

namespace A204360.P509837348856245280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A055998 (n + 4) + 10).toNat

end

end A204360.P509837348856245280

/-! ## A204360.P1520268448429237217

`A204361(A374008(n+1))`
-/

namespace A204360.P1520268448429237217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A374008 (n + 1)).toNat

end

end A204360.P1520268448429237217

/-! ## A204360.P2060051604924833486

`A204361(A055999(n+4))`
-/

namespace A204360.P2060051604924833486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204361 (A055999 (n + 4)).toNat

end

end A204360.P2060051604924833486

/-!
# A204362: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204362, there is no canonical definition to state claims against.
-/

/-! ## A204362.P10726346472331308556

`A204370(∑[4*n]+1)`
-/

namespace A204362.P10726346472331308556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204362.P10726346472331308556

/-! ## A204362.P968103582738746844

`lcm(2, A204370(A001844(n)))`
-/

namespace A204362.P968103582738746844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204370 (A001844 n).toNat)

end

end A204362.P968103582738746844

/-! ## A204362.P12671071317686722876

`A204370(A001844(n))+A185227(n)`
-/

namespace A204362.P12671071317686722876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A001844 n).toNat + A185227 n

end

end A204362.P12671071317686722876

/-! ## A204362.P16666009713915600993

`A204370(A001844(n))+A185237(n)`
-/

namespace A204362.P16666009713915600993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A001844 n).toNat + A185237 n

end

end A204362.P16666009713915600993

/-! ## A204362.P9665719357202641315

`A015198(n)*A204370(A001844(n))`
-/

namespace A204362.P9665719357202641315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015198 n * A204370 (A001844 n).toNat

end

end A204362.P9665719357202641315

/-!
# A204363: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204363, there is no canonical definition to state claims against.
-/

/-! ## A204363.P11789325041614757929

`A204370(∑[n]+1)`
-/

namespace A204363.P11789325041614757929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204363.P11789325041614757929

/-! ## A204363.P12233994376568119345

`record[A204370(n+1)]`
-/

namespace A204363.P12233994376568119345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204363.P12233994376568119345

/-! ## A204363.P4792515707207037091

`and(-1, A204370(A000124(n)))`
-/

namespace A204363.P4792515707207037091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A204370 (A000124 n).toNat)

end

end A204363.P4792515707207037091

/-! ## A204363.P815178124477187873

`A204370(A000124(n))+A185284(n)`
-/

namespace A204363.P815178124477187873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A000124 n).toNat + A185284 n

end

end A204363.P815178124477187873

/-! ## A204363.P603474249313311598

`A015198(n)*A204370(A000124(n))`
-/

namespace A204363.P603474249313311598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015198 n * A204370 (A000124 n).toNat

end

end A204363.P603474249313311598

/-!
# A204364: Number of (n+2) X 4 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204364, there is no canonical definition to state claims against.
-/

/-! ## A204364.P7983042609590406773

`A204370(∑[n+1]+2)`
-/

namespace A204364.P7983042609590406773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204364.P7983042609590406773

/-! ## A204364.P13207445776219181077

`or(char[2], A204370(A133263(n+1)))`
-/

namespace A204364.P13207445776219181077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204370 (A133263 (n + 1)).toNat)

end

end A204364.P13207445776219181077

/-! ## A204364.P2569774150367219689

`A204370(A000096(n)+3)+char[35]`
-/

namespace A204364.P2569774150367219689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204364.P2569774150367219689

/-! ## A204364.P17343581877436207893

`A007318(C(2, n))*A204370(A133263(n+1))`
-/

namespace A204364.P17343581877436207893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A204370 (A133263 (n + 1)).toNat

end

end A204364.P17343581877436207893

/-! ## A204364.P7379500170421890144

`A204370(A133263(n+1))/A007318(C(n, 2))`
-/

namespace A204364.P7379500170421890144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204370 (A133263 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A204364.P7379500170421890144

/-!
# A204365: Number of (n+2) X 5 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204365, there is no canonical definition to state claims against.
-/

/-! ## A204365.P595572511984571274

`A204370(∑[n+2]+4)`
-/

namespace A204365.P595572511984571274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204365.P595572511984571274

/-! ## A204365.P12019440154992743498

`and(-1, A204370(A167614(n+1)))`
-/

namespace A204365.P12019440154992743498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A204370 (A167614 (n + 1)).toNat)

end

end A204365.P12019440154992743498

/-! ## A204365.P8672890852570720176

`A204370(A046691(n)+7)+char[29]`
-/

namespace A204365.P8672890852570720176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204365.P8672890852570720176

/-! ## A204365.P3157977994195718241

`A204370(A055998(n)+6)+C(n, 64)`
-/

namespace A204365.P3157977994195718241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A055998 n + 6).toNat + (Nat.choose n 64 : ℤ)

end

end A204365.P3157977994195718241

/-! ## A204365.P8368600923395360185

`A204370(A167614(n+1))/A015198(n)`
-/

namespace A204365.P8368600923395360185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204370 (A167614 (n + 1)).toNat : ℚ) / (A015198 n : ℚ)

end

end A204365.P8368600923395360185

/-!
# A204366: Number of (n+2) X 6 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204366, there is no canonical definition to state claims against.
-/

/-! ## A204366.P676968811572952796

`A204370(∑[n+3]+7)`
-/

namespace A204366.P676968811572952796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204366.P676968811572952796

/-! ## A204366.P11738503523025465863

`A204370(A055999(n)+10)+char[23]`
-/

namespace A204366.P11738503523025465863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204366.P11738503523025465863

/-! ## A204366.P9506073521379371255

`lcm(A001221(n+2), A204370(A055999(n)+10))`
-/

namespace A204366.P9506073521379371255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A204370 (A055999 n + 10).toNat)

end

end A204366.P9506073521379371255

/-! ## A204366.P12782482942251237326

`A007318(C(2, n))*A204370(A055999(n)+10)`
-/

namespace A204366.P12782482942251237326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A204370 (A055999 n + 10).toNat

end

end A204366.P12782482942251237326

/-! ## A204366.P107637651037749524

`A000108(C(2, n+2))*A204370(A055999(n)+10)`
-/

namespace A204366.P107637651037749524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A204370 (A055999 n + 10).toNat

end

end A204366.P107637651037749524

/-!
# A204367: Number of (n+2) X 7 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204367, there is no canonical definition to state claims against.
-/

/-! ## A204367.P3487575102847080849

`A204370(∑[n+4]+11)`
-/

namespace A204367.P3487575102847080849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A204367.P3487575102847080849

/-! ## A204367.P13201983311899720333

`(A204370(A056000(n)+15)^(1/2))²`
-/

namespace A204367.P13201983311899720333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A204370 (A056000 n + 15).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A204367.P13201983311899720333

/-! ## A204367.P5654187484150417786

`or(char[1], A204370(A000217(n+4)+5))`
-/

namespace A204367.P5654187484150417786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204370 (A000217 (n + 4) + 5).toNat)

end

end A204367.P5654187484150417786

/-! ## A204367.P13555567828015768397

`A007318(C(2, n))*A204370(A056000(n)+15)`
-/

namespace A204367.P13555567828015768397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A204370 (A056000 n + 15).toNat

end

end A204367.P13555567828015768397

/-! ## A204367.P11544376064095180184

`A204370(A056000(n)+15)/A007318(C(n, 2))`
-/

namespace A204367.P11544376064095180184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204370 (A056000 n + 15).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A204367.P11544376064095180184

/-!
# A204368: Number of (n+2) X 8 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204368, there is no canonical definition to state claims against.
-/

/-! ## A204368.P1232990623769154291

`A204370(A374007(n+1))`
-/

namespace A204368.P1232990623769154291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A374007 (n + 1)).toNat

end

end A204368.P1232990623769154291

/-! ## A204368.P17246366285397336888

`A204370(A166136(n+4))`
-/

namespace A204368.P17246366285397336888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A166136 (n + 4)).toNat

end

end A204368.P17246366285397336888

/-! ## A204368.P14904124823369820504

`A204370(A167499(n+4)+1)`
-/

namespace A204368.P14904124823369820504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A167499 (n + 4) + 1).toNat

end

end A204368.P14904124823369820504

/-! ## A204368.P10611430107419842427

`A204370(A000124(n+5)+5)`
-/

namespace A204368.P10611430107419842427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A000124 (n + 5) + 5).toNat

end

end A204368.P10611430107419842427

/-! ## A204368.P6283830869945027685

`A204370(A000096(n+4)+7)`
-/

namespace A204368.P6283830869945027685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A000096 (n + 4) + 7).toNat

end

end A204368.P6283830869945027685

/-!
# A204369: Number of (n+2) X 9 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..2 introduced in row major order.

The programs for A204369, there is no canonical definition to state claims against.
-/

/-! ## A204369.P7479082999812116852

`A204370(A374008(n+1))`
-/

namespace A204369.P7479082999812116852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A374008 (n + 1)).toNat

end

end A204369.P7479082999812116852

/-! ## A204369.P517743034170471379

`A204370(A167499(n+5)+2)`
-/

namespace A204369.P517743034170471379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A167499 (n + 5) + 2).toNat

end

end A204369.P517743034170471379

/-! ## A204369.P3890758804688648113

`A204370(A167614(n+5)+4)`
-/

namespace A204369.P3890758804688648113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A167614 (n + 5) + 4).toNat

end

end A204369.P3890758804688648113

/-! ## A204369.P8998870364377686337

`A204370(A000124(n+6)+6)`
-/

namespace A204369.P8998870364377686337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A000124 (n + 6) + 6).toNat

end

end A204369.P8998870364377686337

/-! ## A204369.P13996950673778578051

`A204370(A000096(n+5)+8)`
-/

namespace A204369.P13996950673778578051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204370 (A000096 (n + 5) + 8).toNat

end

end A204369.P13996950673778578051

/-!
# A204371: Maximum period of cellular automaton rule 110 in a cyclic universe of width n.

The programs for A204371, there is no canonical definition to state claims against.
-/

/-! ## A204371.P12642117023806333403

`A332717(∑[A332718(n+1)])`
-/

namespace A204371.P12642117023806333403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332717 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204371.P12642117023806333403

/-! ## A204371.P8423892435020437368

`A332717(eq[A054977(n), A332717(n+1)])`
-/

namespace A204371.P8423892435020437368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332717 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A204371.P8423892435020437368

/-! ## A204371.P13214513363224793687

`A332717(eq[A057427(n), A332717(n+1)])`
-/

namespace A204371.P13214513363224793687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332717 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A204371.P13214513363224793687

/-! ## A204371.P17771890531622688770

`A332717(eq[A158388(n), A332717(n+1)])`
-/

namespace A204371.P17771890531622688770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332717 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A204371.P17771890531622688770

/-! ## A204371.P5057246605083205239

`A332717(eq[A178334(n), A332717(n+1)])`
-/

namespace A204371.P5057246605083205239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332717 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A204371.P5057246605083205239

/-!
# A204373: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204373, there is no canonical definition to state claims against.
-/

/-! ## A204373.P9534597781008335605

`A204381(∑[4*n]+1)`
-/

namespace A204373.P9534597781008335605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204373.P9534597781008335605

/-! ## A204373.P7065240424915536286

`A204381(A001844(n))+char[25]`
-/

namespace A204373.P7065240424915536286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204373.P7065240424915536286

/-! ## A204373.P2407082561551019909

`record[A003982(n)*A204381(n+1)]`
-/

namespace A204373.P2407082561551019909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204373.P2407082561551019909

/-! ## A204373.P7168847317204577130

`record[gcd(A003987(n), A204381(n+1))]`
-/

namespace A204373.P7168847317204577130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A204381 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204373.P7168847317204577130

/-! ## A204373.P14759393265384362999

`A063435(n)*A204381(A001844(n))`
-/

namespace A204373.P14759393265384362999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A204381 (A001844 n).toNat

end

end A204373.P14759393265384362999

/-!
# A204374: Number of (n+2)X3 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204374, there is no canonical definition to state claims against.
-/

/-! ## A204374.P1956951905002629708

`A204381(∑[n]+1)`
-/

namespace A204374.P1956951905002629708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204374.P1956951905002629708

/-! ## A204374.P16613382416522301388

`record[A204381(n+1)]`
-/

namespace A204374.P16613382416522301388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204374.P16613382416522301388

/-! ## A204374.P10897805515456724536

`or(char[1], A204381(A000124(n)))`
-/

namespace A204374.P10897805515456724536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204381 (A000124 n).toNat)

end

end A204374.P10897805515456724536

/-! ## A204374.P18367473350676429422

`A063435(n)*A204381(A000124(n))`
-/

namespace A204374.P18367473350676429422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A204381 (A000124 n).toNat

end

end A204374.P18367473350676429422

/-! ## A204374.P7196471368033015366

`A007318(∑[n])*A204381(A000124(n))`
-/

namespace A204374.P7196471368033015366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A204381 (A000124 n).toNat

end

end A204374.P7196471368033015366

/-!
# A204375: Number of (n+2) X 4 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204375, the canonical program `A204375.P8855972787298446326` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204375 has offset 1).

The definition of A204375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204375.P8855972787298446326

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=51, a(1)=48, a(2)=54, a(3)=63, a(4)=88, a(5)=128, a(6)=193, a(7)=300`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204375

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P8855972787298446326.Spec : Prop :=
  ∀ n, P8855972787298446326.a n = A204375 (n + 1)

theorem P8855972787298446326.correct : P8855972787298446326.Spec := by
  intro n
  simp only [A204375, Nat.add_sub_cancel]

end A204375

/-! ## A204375.P12549172751240945792

`A204381(∑[n+1]+2)`
-/

namespace A204375.P12549172751240945792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204375.P12549172751240945792

namespace A204375

/-- `A204381(∑[n+1]+2)` -/
def P12549172751240945792.Spec : Prop :=
  ∀ n, P12549172751240945792.a n = A204375 (n + 1)

end A204375

/-! ## A204375.P17765581445121693182

`xor(1, xor(1, A204381(A000096(n)+3)))`
-/

namespace A204375.P17765581445121693182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A204381 (A000096 n + 3).toNat))

end

end A204375.P17765581445121693182

namespace A204375

/-- `xor(1, xor(1, A204381(A000096(n)+3)))` -/
def P17765581445121693182.Spec : Prop :=
  ∀ n, P17765581445121693182.a n = A204375 (n + 1)

end A204375

/-! ## A204375.P7944949753253770958

`((-1)^n)²*A204381(A133263(n+1))`
-/

namespace A204375.P7944949753253770958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A204381 (A133263 (n + 1)).toNat

end

end A204375.P7944949753253770958

namespace A204375

/-- `((-1)^n)²*A204381(A133263(n+1))` -/
def P7944949753253770958.Spec : Prop :=
  ∀ n, P7944949753253770958.a n = A204375 (n + 1)

end A204375

/-! ## A204375.P12915059849364876310

`A204381(A000096(n)+3)+char[A000108(n+9)]`
-/

namespace A204375.P12915059849364876310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A000096 n + 3).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A204375.P12915059849364876310

namespace A204375

/-- `A204381(A000096(n)+3)+char[A000108(n+9)]` -/
def P12915059849364876310.Spec : Prop :=
  ∀ n, P12915059849364876310.a n = A204375 (n + 1)

end A204375

/-!
# A204376: Number of (n+2) X 5 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204376, the canonical program `A204376.P16580385519585222845` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204376 has offset 1).

The definition of A204376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204376.P16580385519585222845

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=78, a(1)=54, a(2)=61, a(3)=75, a(4)=98, a(5)=139, a(6)=205, a(7)=310`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204376

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P16580385519585222845.Spec : Prop :=
  ∀ n, P16580385519585222845.a n = A204376 (n + 1)

theorem P16580385519585222845.correct : P16580385519585222845.Spec := by
  intro n
  simp only [A204376, Nat.add_sub_cancel]

end A204376

/-! ## A204376.P13900922185845672391

`A204381(∑[n+2]+4)`
-/

namespace A204376.P13900922185845672391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204376.P13900922185845672391

namespace A204376

/-- `A204381(∑[n+2]+4)` -/
def P13900922185845672391.Spec : Prop :=
  ∀ n, P13900922185845672391.a n = A204376 (n + 1)

end A204376

/-! ## A204376.P11638749218188154761

`or(char[2], A204381(A167614(n+1)))`
-/

namespace A204376.P11638749218188154761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204381 (A167614 (n + 1)).toNat)

end

end A204376.P11638749218188154761

namespace A204376

/-- `or(char[2], A204381(A167614(n+1)))` -/
def P11638749218188154761.Spec : Prop :=
  ∀ n, P11638749218188154761.a n = A204376 (n + 1)

end A204376

/-! ## A204376.P14141536604425509446

`or(char[2], A204381(A000124(n+2)+2))`
-/

namespace A204376.P14141536604425509446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204381 (A000124 (n + 2) + 2).toNat)

end

end A204376.P14141536604425509446

namespace A204376

/-- `or(char[2], A204381(A000124(n+2)+2))` -/
def P14141536604425509446.Spec : Prop :=
  ∀ n, P14141536604425509446.a n = A204376 (n + 1)

end A204376

/-! ## A204376.P8842375883810125492

`A063435(n)*A204381(A167614(n+1))`
-/

namespace A204376.P8842375883810125492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A204381 (A167614 (n + 1)).toNat

end

end A204376.P8842375883810125492

namespace A204376

/-- `A063435(n)*A204381(A167614(n+1))` -/
def P8842375883810125492.Spec : Prop :=
  ∀ n, P8842375883810125492.a n = A204376 (n + 1)

end A204376

/-!
# A204377: Number of (n+2) X 6 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204377, the canonical program `A204377.P1150839781104077703` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204377 has offset 1).

The definition of A204377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204377.P1150839781104077703

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=113, a(1)=63, a(2)=75, a(3)=87, a(4)=111, a(5)=153, a(6)=217, a(7)=323`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204377

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P1150839781104077703.Spec : Prop :=
  ∀ n, P1150839781104077703.a n = A204377 (n + 1)

theorem P1150839781104077703.correct : P1150839781104077703.Spec := by
  intro n
  simp only [A204377, Nat.add_sub_cancel]

end A204377

/-! ## A204377.P7633184990006553181

`A204381(∑[n+3]+7)`
-/

namespace A204377.P7633184990006553181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204377.P7633184990006553181

namespace A204377

/-- `A204381(∑[n+3]+7)` -/
def P7633184990006553181.Spec : Prop :=
  ∀ n, P7633184990006553181.a n = A204377 (n + 1)

end A204377

/-! ## A204377.P520412899621220541

`or(1, A204381(A052905(n)+9))`
-/

namespace A204377.P520412899621220541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204381 (A052905 n + 9).toNat)

end

end A204377.P520412899621220541

namespace A204377

/-- `or(1, A204381(A052905(n)+9))` -/
def P520412899621220541.Spec : Prop :=
  ∀ n, P520412899621220541.a n = A204377 (n + 1)

end A204377

/-! ## A204377.P6572670244839245175

`or(1, A204381(A166136(n+2)-2))`
-/

namespace A204377.P6572670244839245175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204381 (A166136 (n + 2) - 2).toNat)

end

end A204377.P6572670244839245175

namespace A204377

/-- `or(1, A204381(A166136(n+2)-2))` -/
def P6572670244839245175.Spec : Prop :=
  ∀ n, P6572670244839245175.a n = A204377 (n + 1)

end A204377

/-! ## A204377.P12517510012725845403

`A007318(C(n, 2))*A204381(A052905(n)+9)`
-/

namespace A204377.P12517510012725845403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A204381 (A052905 n + 9).toNat

end

end A204377.P12517510012725845403

namespace A204377

/-- `A007318(C(n, 2))*A204381(A052905(n)+9)` -/
def P12517510012725845403.Spec : Prop :=
  ∀ n, P12517510012725845403.a n = A204377 (n + 1)

end A204377

/-!
# A204378: Number of (n+2) X 7 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204378, the canonical program `A204378.P159451355474055315` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204378 has offset 1).

The definition of A204378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204378.P159451355474055315

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=182, a(1)=88, a(2)=98, a(3)=111, a(4)=136, a(5)=176, a(6)=241, a(7)=348`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204378

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P159451355474055315.Spec : Prop :=
  ∀ n, P159451355474055315.a n = A204378 (n + 1)

theorem P159451355474055315.correct : P159451355474055315.Spec := by
  intro n
  simp only [A204378, Nat.add_sub_cancel]

end A204378

/-! ## A204378.P16652303176883479181

`A204381(A374005(n+1))`
-/

namespace A204378.P16652303176883479181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A374005 (n + 1)).toNat

end

end A204378.P16652303176883479181

namespace A204378

/-- `A204381(A374005(n+1))` -/
def P16652303176883479181.Spec : Prop :=
  ∀ n, P16652303176883479181.a n = A204378 (n + 1)

end A204378

/-! ## A204378.P2854632971850832221

`A204381(A167499(n+3))`
-/

namespace A204378.P2854632971850832221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A167499 (n + 3)).toNat

end

end A204378.P2854632971850832221

namespace A204378

/-- `A204381(A167499(n+3))` -/
def P2854632971850832221.Spec : Prop :=
  ∀ n, P2854632971850832221.a n = A204378 (n + 1)

end A204378

/-! ## A204378.P1896984206698887566

`A204381(A155212(n)+13)`
-/

namespace A204378.P1896984206698887566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A155212 n + 13).toNat

end

end A204378.P1896984206698887566

namespace A204378

/-- `A204381(A155212(n)+13)` -/
def P1896984206698887566.Spec : Prop :=
  ∀ n, P1896984206698887566.a n = A204378 (n + 1)

end A204378

/-! ## A204378.P3572641257648004284

`A204381(A056000(n)+15)`
-/

namespace A204378.P3572641257648004284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A056000 n + 15).toNat

end

end A204378.P3572641257648004284

namespace A204378

/-- `A204381(A056000(n)+15)` -/
def P3572641257648004284.Spec : Prop :=
  ∀ n, P3572641257648004284.a n = A204378 (n + 1)

end A204378

/-!
# A204379: Number of (n+2) X 8 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204379, the canonical program `A204379.P17829097468819232426` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204379 has offset 1).

The definition of A204379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204379.P17829097468819232426

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=286, a(1)=128, a(2)=139, a(3)=153, a(4)=176, a(5)=217, a(6)=283, a(7)=388`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204379

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P17829097468819232426.Spec : Prop :=
  ∀ n, P17829097468819232426.a n = A204379 (n + 1)

theorem P17829097468819232426.correct : P17829097468819232426.Spec := by
  intro n
  simp only [A204379, Nat.add_sub_cancel]

end A204379

/-! ## A204379.P3137579639903589744

`A204381(A374007(n+1))`
-/

namespace A204379.P3137579639903589744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A374007 (n + 1)).toNat

end

end A204379.P3137579639903589744

namespace A204379

/-- `A204381(A374007(n+1))` -/
def P3137579639903589744.Spec : Prop :=
  ∀ n, P3137579639903589744.a n = A204379 (n + 1)

end A204379

/-! ## A204379.P3579101591459755244

`A204381(A166136(n+4))`
-/

namespace A204379.P3579101591459755244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A166136 (n + 4)).toNat

end

end A204379.P3579101591459755244

namespace A204379

/-- `A204381(A166136(n+4))` -/
def P3579101591459755244.Spec : Prop :=
  ∀ n, P3579101591459755244.a n = A204379 (n + 1)

end A204379

/-! ## A204379.P7112470756881191264

`A204381(A056115(n)+21)`
-/

namespace A204379.P7112470756881191264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A056115 n + 21).toNat

end

end A204379.P7112470756881191264

namespace A204379

/-- `A204381(A056115(n)+21)` -/
def P7112470756881191264.Spec : Prop :=
  ∀ n, P7112470756881191264.a n = A204379 (n + 1)

end A204379

/-! ## A204379.P16714656503868302486

`A204381(A167499(n+4)+1)`
-/

namespace A204379.P16714656503868302486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A167499 (n + 4) + 1).toNat

end

end A204379.P16714656503868302486

namespace A204379

/-- `A204381(A167499(n+4)+1)` -/
def P16714656503868302486.Spec : Prop :=
  ∀ n, P16714656503868302486.a n = A204379 (n + 1)

end A204379

/-!
# A204380: Number of (n+2) X 9 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204380, the canonical program `A204380.P18009201973074728598` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204380 has offset 1).

The definition of A204380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204380.P18009201973074728598

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=439, a(1)=193, a(2)=205, a(3)=217, a(4)=241, a(5)=283, a(6)=347, a(7)=453`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204380

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P18009201973074728598.Spec : Prop :=
  ∀ n, P18009201973074728598.a n = A204380 (n + 1)

theorem P18009201973074728598.correct : P18009201973074728598.Spec := by
  intro n
  simp only [A204380, Nat.add_sub_cancel]

end A204380

/-! ## A204380.P657220911301957382

`A204381(A374008(n+1))`
-/

namespace A204380.P657220911301957382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A374008 (n + 1)).toNat

end

end A204380.P657220911301957382

namespace A204380

/-- `A204381(A374008(n+1))` -/
def P657220911301957382.Spec : Prop :=
  ∀ n, P657220911301957382.a n = A204380 (n + 1)

end A204380

/-! ## A204380.P10247081668324967874

`A204381(A167487(n+5))`
-/

namespace A204380.P10247081668324967874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A167487 (n + 5)).toNat

end

end A204380.P10247081668324967874

namespace A204380

/-- `A204381(A167487(n+5))` -/
def P10247081668324967874.Spec : Prop :=
  ∀ n, P10247081668324967874.a n = A204380 (n + 1)

end A204380

/-! ## A204380.P10471238323070294488

`A204381(A056119(n)+28)`
-/

namespace A204380.P10471238323070294488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A056119 n + 28).toNat

end

end A204380.P10471238323070294488

namespace A204380

/-- `A204381(A056119(n)+28)` -/
def P10471238323070294488.Spec : Prop :=
  ∀ n, P10471238323070294488.a n = A204380 (n + 1)

end A204380

/-! ## A204380.P14819862595642572040

`A204381(A000124(n+6)+6)`
-/

namespace A204380.P14819862595642572040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204381 (A000124 (n + 6) + 6).toNat

end

end A204380.P14819862595642572040

namespace A204380

/-- `A204381(A000124(n+6)+6)` -/
def P14819862595642572040.Spec : Prop :=
  ∀ n, P14819862595642572040.a n = A204380 (n + 1)

end A204380

/-!
# A204385: G.f.: Sum_{n>=1} moebius(n)*x^n/(1 - A002203(n)*x^n + (-1)^n*x^(2*n)), where A002203 is the companion Pell numbers.

The programs for A204385, there is no canonical definition to state claims against.
-/

/-! ## A204385.P7279053824751949123

`∑{d}[A344317(n), A059905(#)]`
-/

namespace A204385.P7279053824751949123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059905 d

end

end A204385.P7279053824751949123

/-! ## A204385.P9353434809636116578

`A296188(∑[A000792(round(4*n/3))])`
-/

namespace A204385.P9353434809636116578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204385.P9353434809636116578

/-! ## A204385.P16459702961316820145

`A296188(floor(∑[ϕ^n])-A046080(n+1))`
-/

namespace A204385.P16459702961316820145
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296188 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - A046080 (n + 1)).toNat

end

end A204385.P16459702961316820145

/-!
# A204386: Expansion of (theta_2(q)^8 + 4 * theta_2(q^2)^8) / 256 in powers of q^2.

The programs for A204386, the canonical program `A204386.P12533597244492937321` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204386 has offset 1).

The definition of A204386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204386.P18073461806165834472

`Δ[or(1, n)/4+n]*A007331(n+1)`
-/

namespace A204386.P18073461806165834472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / 4 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A007331 (n + 1) : ℚ)

end

end A204386.P18073461806165834472

namespace A204386

/-- `Δ[or(1, n)/4+n]*A007331(n+1)` -/
def P18073461806165834472.Spec : Prop :=
  ∀ n, P18073461806165834472.a n = (A204386 (n + 1) : ℚ)

end A204386

/-! ## A204386.P12533597244492937321

`∑{d}[n+1, A133657(#)*A208895((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A204386

/-- `∑{d}[n+1, A133657(#)*A208895((n+1)/#)]` -/
def P12533597244492937321.Spec : Prop :=
  ∀ n, P12533597244492937321.a n = A204386 (n + 1)

theorem P12533597244492937321.correct : P12533597244492937321.Spec := by
  intro n
  simp only [A204386, Nat.add_sub_cancel]

end A204386

/-! ## A204386.P15294049677268639599

`A004525((n%2+2)*A007331(n+1))`
-/

namespace A204386.P15294049677268639599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (((n % 2 + 2 : ℕ) : ℤ) * A007331 (n + 1)).toNat

end

end A204386.P15294049677268639599

namespace A204386

/-- `A004525((n%2+2)*A007331(n+1))` -/
def P15294049677268639599.Spec : Prop :=
  ∀ n, P15294049677268639599.a n = A204386 (n + 1)

end A204386

/-!
# A204387: Triangle read by rows: T(n,k) is number of noncrossing trees with k edges and path-length n, n >= 1, 1 <= k <= n.

The programs for A204387, there is no canonical definition to state claims against.
-/

/-! ## A204387.P9183168827673730533

`∑{e}[A182944(n+1)^A326676(n), A028310(#)]`
-/

namespace A204387.P9183168827673730533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182944 (n + 1) : ℚ) ^ (A326676 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A028310 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A204387.P9183168827673730533

/-! ## A204387.P7311250193586669214

`A000120(A123497(A056858(n+1)))*A259095(n+1)`
-/

namespace A204387.P7311250193586669214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A123497 (A056858 (n + 1)).toNat).toNat * A259095 (n + 1)

end

end A204387.P7311250193586669214

/-! ## A204387.P16846030099321413147

`A113953(n)-A001222(A299905(n)!)`
-/

namespace A204387.P16846030099321413147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113953 n - A001222 (Nat.factorial (A299905 n).toNat)

end

end A204387.P16846030099321413147

/-! ## A204387.P12059858248687558779

`A097805(n)*A350847(A348551(2*(n+2)))`
-/

namespace A204387.P12059858248687558779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A350847 (A348551 (2 * (n + 2))).toNat

end

end A204387.P12059858248687558779

/-! ## A204387.P12448561657086422043

`A319574(n)-A340999(A105342(n+1))`
-/

namespace A204387.P12448561657086422043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 n - A340999 ((A105342 (n + 1)).toNat + 204)

end

end A204387.P12448561657086422043

/-!
# A204388: Numbers k such that 4^k + 25 is prime.

The programs for A204388, there is no canonical definition to state claims against.
-/

/-! ## A204388.P4612003848119787660

`A157006(n+1)/2`
-/

namespace A204388.P4612003848119787660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157006 (n + 1) : ℚ) / 2

end

end A204388.P4612003848119787660

/-! ## A204388.P13090267384029610353

`A014682(A157006(n+1))`
-/

namespace A204388.P13090267384029610353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A157006 (n + 1)).toNat

end

end A204388.P13090267384029610353

/-! ## A204388.P8217037607799329950

`A273943(lcm(2, A157006(n+1)))`
-/

namespace A204388.P8217037607799329950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A157006 (n + 1)))

end

end A204388.P8217037607799329950

/-! ## A204388.P10970452121620012292

`A273943(A157006(n+1)+char[1])`
-/

namespace A204388.P10970452121620012292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A157006 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A204388.P10970452121620012292

/-! ## A204388.P14551133465357314383

`A273943(A157006(n+1)%(2^n+11))`
-/

namespace A204388.P14551133465357314383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A157006 (n + 1)) (2 ^ n + 11 : ℤ)).toNat

end

end A204388.P14551133465357314383

/-!
# A204389: Number of partitions of n into distinct composite parts.

The programs for A204389, there is no canonical definition to state claims against.
-/

/-! ## A204389.P11065267504243935027

`A096258(n)-a(n-1)` with `a(0)=1`
-/

namespace A204389.P11065267504243935027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096258 n - a (n - 1)

end

end A204389.P11065267504243935027

/-! ## A204389.P5657211483322064406

`A112313(2*n)%A002764(n)`
-/

namespace A204389.P5657211483322064406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112313 (2 * n)) (A002764 n)

end

end A204389.P5657211483322064406

/-! ## A204389.P17846306419343652854

`A112316(16*n)%A323536(n+1)`
-/

namespace A204389.P17846306419343652854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112316 (16 * n)) (A323536 (n + 1))

end

end A204389.P17846306419343652854

/-! ## A204389.P10900289091972590855

`A112314(A008586(n))%A279367(2*n+5)`
-/

namespace A204389.P10900289091972590855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112314 (A008586 n).toNat) (A279367 (2 * n + 5))

end

end A204389.P10900289091972590855

/-! ## A204389.P16059921504697407225

`A112313(2*n)+A000007(A000041(n))`
-/

namespace A204389.P16059921504697407225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112313 (2 * n) + A000007 (A000041 n).toNat

end

end A204389.P16059921504697407225

/-!
# A204390: Number of (n+2) X (n+2) 0..1 arrays with no 3X3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A204390, there is no canonical definition to state claims against.
-/

/-! ## A204390.P5978825437918531682

`A204398(∑[4*n]+1)`
-/

namespace A204390.P5978825437918531682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204390.P5978825437918531682

/-! ## A204390.P8314245229127665966

`lcm(2, A204398(A001844(n)))`
-/

namespace A204390.P8314245229127665966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204398 (A001844 n).toNat)

end

end A204390.P8314245229127665966

/-! ## A204390.P7985240902900896826

`record[gcd(A114327(n), A204398(n+1))]`
-/

namespace A204390.P7985240902900896826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A204398 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204390.P7985240902900896826

/-! ## A204390.P3030971259314423472

`A204398(A001844(n))+A005843(n)%2`
-/

namespace A204390.P3030971259314423472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A001844 n).toNat + Int.tmod (A005843 n) 2

end

end A204390.P3030971259314423472

/-! ## A204390.P17613749931486913556

`A204398(A001844(n))+A028326(n)%2`
-/

namespace A204390.P17613749931486913556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A001844 n).toNat + Int.tmod (A028326 n) 2

end

end A204390.P17613749931486913556

/-!
# A204391: Number of (n+2) X 3 0..1 arrays with no 3 X 3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A204391, there is no canonical definition to state claims against.
-/

/-! ## A204391.P12049284835099295541

`A204398(∑[n]+1)`
-/

namespace A204391.P12049284835099295541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204391.P12049284835099295541

/-! ## A204391.P1020745015223311961

`lcm(2, A204398(A000124(n)))`
-/

namespace A204391.P1020745015223311961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204398 (A000124 n).toNat)

end

end A204391.P1020745015223311961

/-! ## A204391.P3599709590715634056

`record[A103451(n)*A204398(n+1)]`
-/

namespace A204391.P3599709590715634056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A204398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204391.P3599709590715634056

/-! ## A204391.P5315174057034750377

`record[A204398(n+1)/A022167(n)]`
-/

namespace A204391.P5315174057034750377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204398 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204391.P5315174057034750377

/-! ## A204391.P3658556291471149177

`record[root(A204398(n+1), A081572(n))]`
-/

namespace A204391.P3658556291471149177
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204398 (n + 1) : ℝ) ^ (1 / (A081572 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204391.P3658556291471149177

/-!
# A204392: Number of (n+2) X 4 0..1 arrays with no 3 X 3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A204392, there is no canonical definition to state claims against.
-/

/-! ## A204392.P11045752372609621098

`A204398(∑[n+1]+2)`
-/

namespace A204392.P11045752372609621098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204392.P11045752372609621098

/-! ## A204392.P14457722285809647214

`lcm(2, A204398(A000096(n)+3))`
-/

namespace A204392.P14457722285809647214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204398 (A000096 n + 3).toNat)

end

end A204392.P14457722285809647214

/-! ## A204392.P3970046340803454283

`record[A010054(n)*A204398(n+2)]`
-/

namespace A204392.P3970046340803454283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204398 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204392.P3970046340803454283

/-! ## A204392.P87979155834199308

`A204398(A000096(n+1))+A000038(n+1)`
-/

namespace A204392.P87979155834199308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A204392.P87979155834199308

/-! ## A204392.P9509094658575056701

`A285142(2*(n+1))+A204398(A000096(n+1))`
-/

namespace A204392.P9509094658575056701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * (n + 1)) + A204398 (A000096 (n + 1)).toNat

end

end A204392.P9509094658575056701

/-!
# A204393: Number of (n+2)X5 0..1 arrays with no 3X3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A204393, there is no canonical definition to state claims against.
-/

/-! ## A204393.P12151550499668559159

`A204398(∑[n+2]+4)`
-/

namespace A204393.P12151550499668559159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204393.P12151550499668559159

/-! ## A204393.P5117227194787795064

`lcm(2, A204398(A167614(n+1)))`
-/

namespace A204393.P5117227194787795064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204398 (A167614 (n + 1)).toNat)

end

end A204393.P5117227194787795064

/-! ## A204393.P6714222694890240470

`A204398(A167614(n+1))+A102683(2*n)`
-/

namespace A204393.P6714222694890240470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A167614 (n + 1)).toNat + A102683 (2 * n)

end

end A204393.P6714222694890240470

/-! ## A204393.P2672276659138678885

`A204398(A167614(n+1))%A203353(n+1)`
-/

namespace A204393.P2672276659138678885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204398 (A167614 (n + 1)).toNat) (A203353 (n + 1))

end

end A204393.P2672276659138678885

/-! ## A204393.P13836252105167296728

`A014963(A049094(n+1))*A204398(A034856(n+2))`
-/

namespace A204393.P13836252105167296728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A049094 (n + 1)).toNat * A204398 (A034856 (n + 2)).toNat

end

end A204393.P13836252105167296728

/-!
# A204394: Number of (n+2)X6 0..1 arrays with no 3X3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A204394, there is no canonical definition to state claims against.
-/

/-! ## A204394.P15057313722514514409

`A204398(A374004(n+1))`
-/

namespace A204394.P15057313722514514409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A374004 (n + 1)).toNat

end

end A204394.P15057313722514514409

/-! ## A204394.P9603969903568759763

`A204398(A141214(n)+7)`
-/

namespace A204394.P9603969903568759763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A141214 n + 7).toNat

end

end A204394.P9603969903568759763

/-! ## A204394.P12211870606791864377

`A204398(A052905(n)+9)`
-/

namespace A204394.P12211870606791864377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A052905 n + 9).toNat

end

end A204394.P12211870606791864377

/-! ## A204394.P16485771373843085801

`A204398(A167614(n+2)+1)`
-/

namespace A204394.P16485771373843085801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A167614 (n + 2) + 1).toNat

end

end A204394.P16485771373843085801

/-! ## A204394.P4271544501447517275

`A204398(A167487(n+2)-3)`
-/

namespace A204394.P4271544501447517275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A167487 (n + 2) - 3).toNat

end

end A204394.P4271544501447517275

/-!
# A204395: Number of (n+2)X7 0..1 arrays with no 3X3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A204395, there is no canonical definition to state claims against.
-/

/-! ## A204395.P423879042728432408

`A204398(A374005(n+1))`
-/

namespace A204395.P423879042728432408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A374005 (n + 1)).toNat

end

end A204395.P423879042728432408

/-! ## A204395.P10100146716173669224

`A204398(A155212(n)+13)`
-/

namespace A204395.P10100146716173669224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A155212 n + 13).toNat

end

end A204395.P10100146716173669224

/-! ## A204395.P15498086624064314292

`A204398(A056000(n)+15)`
-/

namespace A204395.P15498086624064314292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A056000 n + 15).toNat

end

end A204395.P15498086624064314292

/-! ## A204395.P15121427494153193808

`A204398(eq[6, A131818(n+1)])`
-/

namespace A204395.P15121427494153193808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204395.P15121427494153193808

/-! ## A204395.P14597682349954166730

`A204398(A056115(n)+11)`
-/

namespace A204395.P14597682349954166730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A056115 n + 11).toNat

end

end A204395.P14597682349954166730

/-!
# A204396: Number of (n+2)X8 0..1 arrays with no 3X3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A204396, there is no canonical definition to state claims against.
-/

/-! ## A204396.P9020130832264443976

`A204398(A374007(n+1))`
-/

namespace A204396.P9020130832264443976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A374007 (n + 1)).toNat

end

end A204396.P9020130832264443976

/-! ## A204396.P2222982184925433394

`A204398(eq[7, A131818(n+1)])`
-/

namespace A204396.P2222982184925433394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204396.P2222982184925433394

/-! ## A204396.P15392175710597551041

`A204398(A052905(n+3))`
-/

namespace A204396.P15392175710597551041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A052905 (n + 3)).toNat

end

end A204396.P15392175710597551041

/-! ## A204396.P7526845449761033068

`A204398(eq[3, A219347(n)])`
-/

namespace A204396.P7526845449761033068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204396.P7526845449761033068

/-! ## A204396.P715080741680311535

`A204398(eq[5, A193592(n)])`
-/

namespace A204396.P715080741680311535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204396.P715080741680311535

/-!
# A204397: Number of (n+2)X9 0..1 arrays with no 3X3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..1 introduced in row major order.

The programs for A204397, there is no canonical definition to state claims against.
-/

/-! ## A204397.P12076947618058427391

`A204398(A374008(n+1))`
-/

namespace A204397.P12076947618058427391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A374008 (n + 1)).toNat

end

end A204397.P12076947618058427391

/-! ## A204397.P1113104112173112347

`A204398(A167487(n+5))`
-/

namespace A204397.P1113104112173112347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A167487 (n + 5)).toNat

end

end A204397.P1113104112173112347

/-! ## A204397.P13839586578762455008

`A204398(eq[8, A131818(n+1)])`
-/

namespace A204397.P13839586578762455008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204397.P13839586578762455008

/-! ## A204397.P4315955399845327832

`A204398(A055999(n+4))`
-/

namespace A204397.P4315955399845327832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (A055999 (n + 4)).toNat

end

end A204397.P4315955399845327832

/-! ## A204397.P33429642480181189

`A204398(eq[4, A219347(n)])`
-/

namespace A204397.P33429642480181189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204397.P33429642480181189

/-!
# A204399: Numbers k such that floor(2^k / 3^n) = 1.

The programs for A204399, the canonical program `A204399.P13696480931462052960` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204399 has offset 0).

The definition of A204399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204399.P13696480931462052960

`ceil(n*log2(3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204399

/-- `ceil(n*log2(3))` -/
def P13696480931462052960.Spec : Prop :=
  ∀ n, P13696480931462052960.a n = A204399 n

theorem P13696480931462052960.correct : P13696480931462052960.Spec := by
  intro n
  simp only [A204399]

end A204399

/-! ## A204399.P10298849755249146369

`floor(n*(acot(n)+log2(3)))`
-/

namespace A204399.P10298849755249146369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (SequenceMachineLib.acot (n : ℝ) + Real.logb 2 (3 : ℝ))⌋

end

end A204399.P10298849755249146369

namespace A204399

/-- `floor(n*(acot(n)+log2(3)))` -/
def P10298849755249146369.Spec : Prop :=
  ∀ n, P10298849755249146369.a n = A204399 n

end A204399

/-! ## A204399.P4102162172854483542

`floor(sin(atan(n))+n*log2(3))`
-/

namespace A204399.P4102162172854483542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (Real.arctan (n : ℝ)) + (n : ℝ) * Real.logb 2 (3 : ℝ)⌋

end

end A204399.P4102162172854483542

namespace A204399

/-- `floor(sin(atan(n))+n*log2(3))` -/
def P4102162172854483542.Spec : Prop :=
  ∀ n, P4102162172854483542.a n = A204399 n

end A204399

/-! ## A204399.P9610341927630412238

`(floor(n*log2(3))+1)%(n+1)²`
-/

namespace A204399.P9610341927630412238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋ + 1) ((n + 1) ^ 2 : ℤ)

end

end A204399.P9610341927630412238

namespace A204399

/-- `(floor(n*log2(3))+1)%(n+1)²` -/
def P9610341927630412238.Spec : Prop :=
  ∀ n, P9610341927630412238.a n = A204399 n

end A204399

/-! ## A204399.P1658193978165389358

`comp[A054414(n)]`
-/

namespace A204399.P1658193978165389358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A204399.P1658193978165389358

namespace A204399

/-- `comp[A054414(n)]` -/
def P1658193978165389358.Spec : Prop :=
  ∀ n, (P1658193978165389358.a n : ℤ) = A204399 n

end A204399

/-! ## A204399.P3471888037010557076

`A098294(n)+n`
-/

namespace A204399.P3471888037010557076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 n + (n : ℤ)

end

end A204399.P3471888037010557076

namespace A204399

/-- `A098294(n)+n` -/
def P3471888037010557076.Spec : Prop :=
  ∀ n, P3471888037010557076.a n = A204399 n

end A204399

/-! ## A204399.P6422232221584294309

`(A056576(n)+3+n)%(n+1)+n`
-/

namespace A204399.P6422232221584294309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056576 n + 3 + (n : ℤ)) (n + 1 : ℤ) + (n : ℤ)

end

end A204399.P6422232221584294309

namespace A204399

/-- `(A056576(n)+3+n)%(n+1)+n` -/
def P6422232221584294309.Spec : Prop :=
  ∀ n, P6422232221584294309.a n = A204399 n

end A204399

/-! ## A204399.P15003978076341641744

`A057427(n)+A056576(n)`
-/

namespace A204399.P15003978076341641744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A056576 n

end

end A204399.P15003978076341641744

namespace A204399

/-- `A057427(n)+A056576(n)` -/
def P15003978076341641744.Spec : Prop :=
  ∀ n, P15003978076341641744.a n = A204399 n

end A204399

/-! ## A204399.P17896189934214102600

`A020914(n)-A000007(n)`
-/

namespace A204399.P17896189934214102600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n - A000007 n

end

end A204399.P17896189934214102600

namespace A204399

/-- `A020914(n)-A000007(n)` -/
def P17896189934214102600.Spec : Prop :=
  ∀ n, P17896189934214102600.a n = A204399 n

end A204399

/-! ## A204399.P230893124919295129

`A056576(n)-A057428(n)`
-/

namespace A204399.P230893124919295129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n - A057428 n

end

end A204399.P230893124919295129

namespace A204399

/-- `A056576(n)-A057428(n)` -/
def P230893124919295129.Spec : Prop :=
  ∀ n, P230893124919295129.a n = A204399 n

end A204399

/-! ## A204399.P4567015773203627948

`A020914(n)*A057427(n)`
-/

namespace A204399.P4567015773203627948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n * A057427 n

end

end A204399.P4567015773203627948

namespace A204399

/-- `A020914(n)*A057427(n)` -/
def P4567015773203627948.Spec : Prop :=
  ∀ n, P4567015773203627948.a n = A204399 n

end A204399

/-! ## A204399.P3664651668495370697

`and(A020914(n), A057428(n))`
-/

namespace A204399.P3664651668495370697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020914 n) (A057428 n)

end

end A204399.P3664651668495370697

namespace A204399

/-- `and(A020914(n), A057428(n))` -/
def P3664651668495370697.Spec : Prop :=
  ∀ n, P3664651668495370697.a n = A204399 n

end A204399

/-! ## A204399.P9697377828332012462

`A122437(n+1)-A028310(n)`
-/

namespace A204399.P9697377828332012462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 1) - A028310 n

end

end A204399.P9697377828332012462

namespace A204399

/-- `A122437(n+1)-A028310(n)` -/
def P9697377828332012462.Spec : Prop :=
  ∀ n, P9697377828332012462.a n = A204399 n

end A204399

/-! ## A204399.P9963322135570653776

`A020914(n)+n-A028310(n)`
-/

namespace A204399.P9963322135570653776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n + ((n : ℤ) - A028310 n)

end

end A204399.P9963322135570653776

namespace A204399

/-- `A020914(n)+n-A028310(n)` -/
def P9963322135570653776.Spec : Prop :=
  ∀ n, P9963322135570653776.a n = A204399 n

end A204399

/-! ## A204399.P9840404466338629503

`A005843(n)-(n-A098294(n))`
-/

namespace A204399.P9840404466338629503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A098294 n)

end

end A204399.P9840404466338629503

namespace A204399

/-- `A005843(n)-(n-A098294(n))` -/
def P9840404466338629503.Spec : Prop :=
  ∀ n, P9840404466338629503.a n = A204399 n

end A204399

/-! ## A204399.P1579595671833763102

`A056576(n)+n/A028310(n)`
-/

namespace A204399.P1579595671833763102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056576 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A204399.P1579595671833763102

namespace A204399

/-- `A056576(n)+n/A028310(n)` -/
def P1579595671833763102.Spec : Prop :=
  ∀ n, P1579595671833763102.a n = (A204399 n : ℚ)

end A204399

/-! ## A204399.P15007788817159732971

`A122437(n+1)+n-A004277(n)`
-/

namespace A204399.P15007788817159732971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 1) + ((n : ℤ) - A004277 n)

end

end A204399.P15007788817159732971

namespace A204399

/-- `A122437(n+1)+n-A004277(n)` -/
def P15007788817159732971.Spec : Prop :=
  ∀ n, P15007788817159732971.a n = A204399 n

end A204399

/-! ## A204399.P4184788211207253590

`A056576(n)+A001221(A303809(n+1))`
-/

namespace A204399.P4184788211207253590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n + A001221 (A303809 (n + 1)).toNat

end

end A204399.P4184788211207253590

namespace A204399

/-- `A056576(n)+A001221(A303809(n+1))` -/
def P4184788211207253590.Spec : Prop :=
  ∀ n, P4184788211207253590.a n = A204399 n

end A204399

/-! ## A204399.P17097510168334992858

`A020914(n)+A156301(n)-A020915(n)`
-/

namespace A204399.P17097510168334992858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n + (A156301 n - A020915 n)

end

end A204399.P17097510168334992858

namespace A204399

/-- `A020914(n)+A156301(n)-A020915(n)` -/
def P17097510168334992858.Spec : Prop :=
  ∀ n, P17097510168334992858.a n = A204399 n

end A204399

/-! ## A204399.P12485170066036255083

`A056576(n)+A156301(n)/A020915(n)`
-/

namespace A204399.P12485170066036255083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056576 n : ℚ) + (A156301 n : ℚ) / (A020915 n : ℚ)

end

end A204399.P12485170066036255083

namespace A204399

/-- `A056576(n)+A156301(n)/A020915(n)` -/
def P12485170066036255083.Spec : Prop :=
  ∀ n, P12485170066036255083.a n = (A204399 n : ℚ)

end A204399

