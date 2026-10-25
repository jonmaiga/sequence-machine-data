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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A211001: Numbers congruent to 2 in the structure of A211000.

The programs for A211001, there is no canonical definition to state claims against.
-/

/-! ## A211001.P2720698529400987363

`eq[A004532(n), A211011(n)]`
-/

namespace A211001.P2720698529400987363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211001.P2720698529400987363

/-! ## A211001.P13742384938531021948

`eq[A004534(n), A211011(n)]`
-/

namespace A211001.P13742384938531021948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211001.P13742384938531021948

/-! ## A211001.P2236911943341482991

`eq[A008434(n), A211011(n)]`
-/

namespace A211001.P2236911943341482991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211001.P2236911943341482991

/-! ## A211001.P17227936542724588956

`eq[A014017(n), A211011(n)]`
-/

namespace A211001.P17227936542724588956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211001.P17227936542724588956

/-! ## A211001.P10386258541993445141

`eq[A035444(n), A211011(n)]`
-/

namespace A211001.P10386258541993445141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211001.P10386258541993445141

/-!
# A211002: Numbers congruent to 3 in the structure (or curve) of A211000.

The programs for A211002, there is no canonical definition to state claims against.
-/

/-! ## A211002.P18188671411402114256

`eq[0, A211011(n)+1]`
-/

namespace A211002.P18188671411402114256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211002.P18188671411402114256

/-! ## A211002.P14185923359420071626

`eq[A033999(n), A211011(n)]`
-/

namespace A211002.P14185923359420071626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211002.P14185923359420071626

/-! ## A211002.P7901670925938419641

`eq[A081729(n), A211011(n)]`
-/

namespace A211002.P7901670925938419641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211002.P7901670925938419641

/-! ## A211002.P8917908693992061286

`eq[A211011(n), A260196(n)]`
-/

namespace A211002.P8917908693992061286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211002.P8917908693992061286

/-! ## A211002.P12848764781889630765

`eq[A211011(n), A260148(A211011(n)²)]`
-/

namespace A211002.P12848764781889630765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 (A211011 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211002.P12848764781889630765

/-!
# A211003: Primes congruent to 3 in the structure (or curve) of A211000.

The programs for A211003, there is no canonical definition to state claims against.
-/

/-! ## A211003.P12535490777307302221

`p?[A211002(n+1)]`
-/

namespace A211003.P12535490777307302221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A211003.P12535490777307302221

/-! ## A211003.P8008265043255680457

`eq[A211011(n), A260148(n)]`
-/

namespace A211003.P8008265043255680457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211003.P8008265043255680457

/-! ## A211003.P3030596260989214856

`record[A020639(A211002(n+2))]`
-/

namespace A211003.P3030596260989214856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A211002 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211003.P3030596260989214856

/-! ## A211003.P4632749846122252183

`filter[A211002(n+1), A010051(#)]`
-/

namespace A211003.P4632749846122252183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A211003.P4632749846122252183

/-! ## A211003.P17986088160218650695

`filter[A211002(n+1), A079261(#)]`
-/

namespace A211003.P17986088160218650695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079261 (f1 j).toNat = 1) n)

end

end A211003.P17986088160218650695

/-!
# A211004: Number of distinct regions in the set of partitions of n.

The programs for A211004, the canonical program `A211004.P13571003947558260851` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211004 has offset 1).

The definition of A211004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211004.P5583949562511887520

`∑[∑[char[3*n]]]`
-/

namespace A211004.P5583949562511887520
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211004.P5583949562511887520

namespace A211004

/-- `∑[∑[char[3*n]]]` -/
def P5583949562511887520.Spec : Prop :=
  ∀ n, (P5583949562511887520.a n : ℤ) = A211004 (n + 1)

end A211004

/-! ## A211004.P13571003947558260851

`floor(C(n+3, 2)/3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211004

/-- `floor(C(n+3, 2)/3)` -/
def P13571003947558260851.Spec : Prop :=
  ∀ n, P13571003947558260851.a n = A211004 (n + 1)

theorem P13571003947558260851.correct : P13571003947558260851.Spec := by
  intro n
  simp only [A211004, Nat.add_sub_cancel]

end A211004

/-! ## A211004.P8991562811927257327

`round(C(n+3, 2)/3)`
-/

namespace A211004.P8991562811927257327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 2 : ℚ) / 3)

end

end A211004.P8991562811927257327

namespace A211004

/-- `round(C(n+3, 2)/3)` -/
def P8991562811927257327.Spec : Prop :=
  ∀ n, P8991562811927257327.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P14655401214738808290

`ceil(cot(3/∑[n+2]))`
-/

namespace A211004.P14655401214738808290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (3 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ)⌉

end

end A211004.P14655401214738808290

namespace A211004

/-- `ceil(cot(3/∑[n+2]))` -/
def P14655401214738808290.Spec : Prop :=
  ∀ n, P14655401214738808290.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P17780386277275805214

`∑[∑[gcd(3, n)-1]]/2`
-/

namespace A211004.P17780386277275805214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A211004.P17780386277275805214

namespace A211004

/-- `∑[∑[gcd(3, n)-1]]/2` -/
def P17780386277275805214.Spec : Prop :=
  ∀ n, P17780386277275805214.a n = (A211004 (n + 1) : ℚ)

end A211004

/-! ## A211004.P3223856742121230300

`ogf(1/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A211004.P3223856742121230300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, -1, 2, -1] n

end

end A211004.P3223856742121230300

namespace A211004

/-- `ogf(1/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P3223856742121230300.Spec : Prop :=
  ∀ n, P3223856742121230300.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P4119680293385206516

`ceil((C(n+3, 2)-1)/3)`
-/

namespace A211004.P4119680293385206516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (n + 3) 2 : ℤ) - 1 : ℚ) / 3⌉

end

end A211004.P4119680293385206516

namespace A211004

/-- `ceil((C(n+3, 2)-1)/3)` -/
def P4119680293385206516.Spec : Prop :=
  ∀ n, P4119680293385206516.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P6200531821252232535

`floor(lcm(n+2, n+3)/6)`
-/

namespace A211004.P6200531821252232535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 2) (n + 3) : ℚ) / 6⌋

end

end A211004.P6200531821252232535

namespace A211004

/-- `floor(lcm(n+2, n+3)/6)` -/
def P6200531821252232535.Spec : Prop :=
  ∀ n, P6200531821252232535.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P17730795559465790099

`∑[n+3-n%3]/3`
-/

namespace A211004.P17730795559465790099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A211004.P17730795559465790099

namespace A211004

/-- `∑[n+3-n%3]/3` -/
def P17730795559465790099.Spec : Prop :=
  ∀ n, P17730795559465790099.a n = (A211004 (n + 1) : ℚ)

end A211004

/-! ## A211004.P7120722161332587020

`record[floor((5/2-n)²/6)]`
-/

namespace A211004.P7120722161332587020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 2 - (n : ℚ)) ^ 2 / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211004.P7120722161332587020

namespace A211004

/-- `record[floor((5/2-n)²/6)]` -/
def P7120722161332587020.Spec : Prop :=
  ∀ n, P7120722161332587020.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P15590613651925061376

`-∑[∑[∑[-(n+1)]%3]]`
-/

namespace A211004.P15590613651925061376
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211004.P15590613651925061376

namespace A211004

/-- `-∑[∑[∑[-(n+1)]%3]]` -/
def P15590613651925061376.Spec : Prop :=
  ∀ n, P15590613651925061376.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P5479045087212922798

`a(n-3)+1+n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A211004.P5479045087212922798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) + 1 + n

end

end A211004.P5479045087212922798

namespace A211004

/-- `a(n-3)+1+n` -/
def P5479045087212922798.Spec : Prop :=
  ∀ n, (P5479045087212922798.a n : ℤ) = A211004 (n + 1)

end A211004

/-! ## A211004.P8402182444439835383

`floor(∑[∑[a(n-3)²]])` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A211004.P8402182444439835383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211004.P8402182444439835383

namespace A211004

/-- `floor(∑[∑[a(n-3)²]])` -/
def P8402182444439835383.Spec : Prop :=
  ∀ n, (P8402182444439835383.a n : ℤ) = A211004 (n + 1)

end A211004

/-! ## A211004.P2396279768668966181

`ceil(∑[∑[a(n-3)²]])` with `a(0)=1, a(1)=0, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A211004.P2396279768668966181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211004.P2396279768668966181

namespace A211004

/-- `ceil(∑[∑[a(n-3)²]])` -/
def P2396279768668966181.Spec : Prop :=
  ∀ n, (P2396279768668966181.a n : ℤ) = A211004 (n + 1)

end A211004

/-! ## A211004.P16723662731326782466

`round(∑[∑[a(n-3)²]])` with `a(0)=1, a(1)=0, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A211004.P16723662731326782466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211004.P16723662731326782466

namespace A211004

/-- `round(∑[∑[a(n-3)²]])` -/
def P16723662731326782466.Spec : Prop :=
  ∀ n, (P16723662731326782466.a n : ℤ) = A211004 (n + 1)

end A211004

/-! ## A211004.P17231873862240223334

`round(record[(n-2)*(n-3)/6])`
-/

namespace A211004.P17231873862240223334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * ((n : ℤ) - 3) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A211004.P17231873862240223334

namespace A211004

/-- `round(record[(n-2)*(n-3)/6])` -/
def P17231873862240223334.Spec : Prop :=
  ∀ n, P17231873862240223334.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P15847062490653521586

`ceil((n+2)/sinh(6/(n+3)))`
-/

namespace A211004.P15847062490653521586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / Real.sinh (6 / (n + 3 : ℚ) : ℝ)⌉

end

end A211004.P15847062490653521586

namespace A211004

/-- `ceil((n+2)/sinh(6/(n+3)))` -/
def P15847062490653521586.Spec : Prop :=
  ∀ n, P15847062490653521586.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P16671267877052729488

`floor((n+2)/(6*acot(n+3)))`
-/

namespace A211004.P16671267877052729488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / (6 * SequenceMachineLib.acot (n + 3 : ℝ))⌋

end

end A211004.P16671267877052729488

namespace A211004

/-- `floor((n+2)/(6*acot(n+3)))` -/
def P16671267877052729488.Spec : Prop :=
  ∀ n, P16671267877052729488.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P12665420753220990191

`round(cot(6/((n+2)*(n+3))))`
-/

namespace A211004.P12665420753220990191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (6 / ((n + 2) * (n + 3) : ℚ) : ℝ))

end

end A211004.P12665420753220990191

namespace A211004

/-- `round(cot(6/((n+2)*(n+3))))` -/
def P12665420753220990191.Spec : Prop :=
  ∀ n, P12665420753220990191.a n = A211004 (n + 1)

end A211004

/-! ## A211004.P2158577846833872889

`round((n+2)/(6*acot(n+3)))`
-/

namespace A211004.P2158577846833872889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / (6 * SequenceMachineLib.acot (n + 3 : ℝ)))

end

end A211004.P2158577846833872889

namespace A211004

/-- `round((n+2)/(6*acot(n+3)))` -/
def P2158577846833872889.Spec : Prop :=
  ∀ n, P2158577846833872889.a n = A211004 (n + 1)

end A211004

/-!
# A211006: Pair (n,p) where n is the sum of adjacent nonprimes and p is the sum of adjacent primes.

The programs for A211006, there is no canonical definition to state claims against.
-/

/-! ## A211006.P4053729654812220684

`Δ[A147846(n+1)-C(2, n²)]`
-/

namespace A211006.P4053729654812220684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211006.P4053729654812220684

/-! ## A211006.P1607376723206598237

`A109921(2-A260196(n)+n)`
-/

namespace A211006.P1607376723206598237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109921 (2 - A260196 n + (n : ℤ)).toNat

end

end A211006.P1607376723206598237

/-! ## A211006.P14611282015642901086

`A109921(2-(A260196(n)-n))`
-/

namespace A211006.P14611282015642901086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109921 (2 - (A260196 n - (n : ℤ))).toNat

end

end A211006.P14611282015642901086

/-! ## A211006.P3135000339176390105

`Δ[A147846(n+1)-A130706(n)]`
-/

namespace A211006.P3135000339176390105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (n + 1) - A130706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211006.P3135000339176390105

/-! ## A211006.P10745375056456145265

`Δ[A147846(n+1)-A134824(n)]`
-/

namespace A211006.P10745375056456145265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (n + 1) - A134824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211006.P10745375056456145265

/-! ## A211006.P4951981342967107825

`A147846(n+2)-A147846(n%a(n-1)+1)` with `a(0)=1`
-/

namespace A211006.P4951981342967107825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147846 (n + 2) - A147846 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A211006.P4951981342967107825

/-! ## A211006.P16966202674060068623

`A000007(n)+Δ[A288469(A147846(n+1))]`
-/

namespace A211006.P16966202674060068623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A147846 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A211006.P16966202674060068623

/-!
# A211007: Surface area of the first n faces of the structure mentioned in A211006.

The programs for A211007, there is no canonical definition to state claims against.
-/

/-! ## A211007.P3441322934919669848

`C(p?[or(1, n)]-floor(cos(2)^n), 2)`
-/

namespace A211007.P3441322934919669848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ⌊Real.cos (2 : ℝ) ^ n⌋).toNat 2

end

end A211007.P3441322934919669848

/-! ## A211007.P15121155076679342559

`∑[A211006(1+n)]`
-/

namespace A211007.P15121155076679342559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211006 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211007.P15121155076679342559

/-! ## A211007.P2235011868039959142

`C(A111688(n+1), 2)`
-/

namespace A211007.P2235011868039959142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111688 (n + 1)).toNat 2

end

end A211007.P2235011868039959142

/-!
# A211009: Triangle read by rows: T(n,k) = number of cells in the k-column of the n-th region of j in the list of colexicographically ordered partitions of j, if 1<=n<=A000041(j), 1<=k<=A141285(n).

The programs for A211009, there is no canonical definition to state claims against.
-/

/-! ## A211009.P8562953142260150378

`gcd(A047878(n), A096859(A119766(n+1)))`
-/

namespace A211009.P8562953142260150378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047878 n) (A096859 (A119766 (n + 1)).toNat)

end

end A211009.P8562953142260150378

/-!
# A211010: Value on the axis "x" of the endpoint of the structure of A211000 at n-th stage.

The programs for A211010, the canonical program `A211010.P16879795290897095468` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211010 has offset 0).

The definition of A211010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211010.P16879795290897095468

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211010

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P16879795290897095468.Spec : Prop :=
  ∀ n, P16879795290897095468.a n = A211010 n

theorem P16879795290897095468.correct : P16879795290897095468.Spec := by
  intro n
  simp only [A211010]

end A211010

/-!
# A211011: Value on the axis "y" of the endpoint of the structure (or curve) of A211000 at n-th stage.

The programs for A211011, there is no canonical definition to state claims against.
-/

/-! ## A211011.P13705340485367511306

`A211000(Δ[n²])`
-/

namespace A211011.P13705340485367511306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A211011.P13705340485367511306

/-! ## A211011.P18373692309063805592

`A211000(2*n+1)%(n+1)`
-/

namespace A211011.P18373692309063805592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211000 (2 * n + 1)) (n + 1 : ℤ)

end

end A211011.P18373692309063805592

/-! ## A211011.P3508985775367339244

`abs(A057428(n))*A211000(2*n+1)`
-/

namespace A211011.P3508985775367339244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n| * A211000 (2 * n + 1)

end

end A211011.P3508985775367339244

/-! ## A211011.P13178330045140661282

`or(char[A210985(n)], A211000(2*n+1))`
-/

namespace A211011.P13178330045140661282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210985 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A211000 (2 * n + 1))

end

end A211011.P13178330045140661282

/-! ## A211011.P8177595319014149373

`A261143(n)^(n-1)*A211000(2*n+1)`
-/

namespace A211011.P8177595319014149373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261143 n : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A211000 (2 * n + 1) : ℚ)

end

end A211011.P8177595319014149373

/-! ## A211011.P13937684671451625131

`A007318(∑[n])*A211000(2*n+1)`
-/

namespace A211011.P13937684671451625131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A211000 (2 * n + 1)

end

end A211011.P13937684671451625131

/-!
# A211012: Total area of all squares and rectangles after 2^n stages in the toothpick structure of A139250, assuming the toothpicks have length 2.

The programs for A211012, the canonical program `A211012.P17370443621923581390` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211012 has offset 0).

The definition of A211012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211012.P17370443621923581390

`6*a(n-1)-8*a(n-2)` with `a(0)=0, a(1)=0, a(2)=8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211012

/-- `6*a(n-1)-8*a(n-2)` -/
def P17370443621923581390.Spec : Prop :=
  ∀ n, P17370443621923581390.a n = A211012 n

theorem P17370443621923581390.correct : P17370443621923581390.Spec := by
  intro n
  simp only [A211012]

end A211012

/-! ## A211012.P5063973977114569442

`A159786(2^n)`
-/

namespace A211012.P5063973977114569442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159786 (2 ^ n)

end

end A211012.P5063973977114569442

namespace A211012

/-- `A159786(2^n)` -/
def P5063973977114569442.Spec : Prop :=
  ∀ n, P5063973977114569442.a n = A211012 n

end A211012

/-! ## A211012.P9415004891813818764

`and((1-2^n)², -2)`
-/

namespace A211012.P9415004891813818764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((1 - (2 ^ n : ℤ)) ^ 2) (-2)

end

end A211012.P9415004891813818764

namespace A211012

/-- `and((1-2^n)², -2)` -/
def P9415004891813818764.Spec : Prop :=
  ∀ n, P9415004891813818764.a n = A211012 n

end A211012

/-! ## A211012.P3092417464213562640

`ogf(8x^2/(1-6x+8x^2))`
-/

namespace A211012.P3092417464213562640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 8] [1, -6, 8] n

end

end A211012.P3092417464213562640

namespace A211012

/-- `ogf(8x^2/(1-6x+8x^2))` -/
def P3092417464213562640.Spec : Prop :=
  ∀ n, P3092417464213562640.a n = A211012 n

end A211012

/-! ## A211012.P6104476054089524033

`or(1, -2^n)²-1`
-/

namespace A211012.P6104476054089524033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 ^ n : ℤ)) ^ 2 - 1

end

end A211012.P6104476054089524033

namespace A211012

/-- `or(1, -2^n)²-1` -/
def P6104476054089524033.Spec : Prop :=
  ∀ n, P6104476054089524033.a n = A211012 n

end A211012

/-! ## A211012.P14709873661172708139

`xor(1, or(1, -2^n)²)`
-/

namespace A211012.P14709873661172708139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.lor 1 (-(2 ^ n : ℤ)) ^ 2)

end

end A211012.P14709873661172708139

namespace A211012

/-- `xor(1, or(1, -2^n)²)` -/
def P14709873661172708139.Spec : Prop :=
  ∀ n, P14709873661172708139.a n = A211012 n

end A211012

/-! ## A211012.P9275489251030396604

`8*C(ceil(2^(n-1)), 2)`
-/

namespace A211012.P9275489251030396604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat 2

end

end A211012.P9275489251030396604

namespace A211012

/-- `8*C(ceil(2^(n-1)), 2)` -/
def P9275489251030396604.Spec : Prop :=
  ∀ n, (P9275489251030396604.a n : ℤ) = A211012 n

end A211012

/-! ## A211012.P1676359049706677744

`xor(1, (ceil(acot(n))-2^n)²)`
-/

namespace A211012.P1676359049706677744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((⌈SequenceMachineLib.acot (n : ℝ)⌉ - (2 ^ n : ℤ)) ^ 2)

end

end A211012.P1676359049706677744

namespace A211012

/-- `xor(1, (ceil(acot(n))-2^n)²)` -/
def P1676359049706677744.Spec : Prop :=
  ∀ n, P1676359049706677744.a n = A211012 n

end A211012

/-! ## A211012.P12779486128988428905

`lcm(2, 4^n)-2^(n+1)`
-/

namespace A211012.P12779486128988428905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) : ℤ) - (2 ^ (n + 1) : ℤ)

end

end A211012.P12779486128988428905

namespace A211012

/-- `lcm(2, 4^n)-2^(n+1)` -/
def P12779486128988428905.Spec : Prop :=
  ∀ n, P12779486128988428905.a n = A211012 n

end A211012

/-! ## A211012.P1906580780993151369

`(2^n-2)*and(-2, 2^n)`
-/

namespace A211012.P1906580780993151369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 2) * Int.land (-2) (2 ^ n : ℤ)

end

end A211012.P1906580780993151369

namespace A211012

/-- `(2^n-2)*and(-2, 2^n)` -/
def P1906580780993151369.Spec : Prop :=
  ∀ n, P1906580780993151369.a n = A211012 n

end A211012

/-! ## A211012.P13348105902576277663

`∑[2*a(n-1)]²-1` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A211012.P13348105902576277663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 1

end

end A211012.P13348105902576277663

namespace A211012

/-- `∑[2*a(n-1)]²-1` -/
def P13348105902576277663.Spec : Prop :=
  ∀ n, P13348105902576277663.a n = A211012 n

end A211012

/-! ## A211012.P422392714279886054

`(4^n-2^(n+1))%(4^n)`
-/

namespace A211012.P422392714279886054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((4 ^ n : ℤ) - (2 ^ (n + 1) : ℤ)) (4 ^ n : ℤ)

end

end A211012.P422392714279886054

namespace A211012

/-- `(4^n-2^(n+1))%(4^n)` -/
def P422392714279886054.Spec : Prop :=
  ∀ n, P422392714279886054.a n = A211012 n

end A211012

/-! ## A211012.P15611578236911152338

`2^(n+1)+4*a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A211012.P15611578236911152338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 ^ (n + 1) + 4 * a (n - 1)

end

end A211012.P15611578236911152338

namespace A211012

/-- `2^(n+1)+4*a(n-1)` -/
def P15611578236911152338.Spec : Prop :=
  ∀ n, (P15611578236911152338.a n : ℤ) = A211012 n

end A211012

/-! ## A211012.P11573730635816348904

`A255047(n)²-1`
-/

namespace A211012.P11573730635816348904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n ^ 2 - 1

end

end A211012.P11573730635816348904

namespace A211012

/-- `A255047(n)²-1` -/
def P11573730635816348904.Spec : Prop :=
  ∀ n, P11573730635816348904.a n = A211012 n

end A211012

/-! ## A211012.P15084972732977951053

`Δ[A132045(n)]²-1`
-/

namespace A211012.P15084972732977951053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A211012.P15084972732977951053

namespace A211012

/-- `Δ[A132045(n)]²-1` -/
def P15084972732977951053.Spec : Prop :=
  ∀ n, P15084972732977951053.a n = A211012 n

end A211012

/-! ## A211012.P1421902727913075306

`A155543(n)-2^(n+1)`
-/

namespace A211012.P1421902727913075306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n - (2 ^ (n + 1) : ℤ)

end

end A211012.P1421902727913075306

namespace A211012

/-- `A155543(n)-2^(n+1)` -/
def P1421902727913075306.Spec : Prop :=
  ∀ n, P1421902727913075306.a n = A211012 n

end A211012

/-! ## A211012.P383624085631933057

`A208901(A004277(n))`
-/

namespace A211012.P383624085631933057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208901 (A004277 n).toNat

end

end A211012.P383624085631933057

namespace A211012

/-- `A208901(A004277(n))` -/
def P383624085631933057.Spec : Prop :=
  ∀ n, P383624085631933057.a n = A211012 n

end A211012

/-! ## A211012.P4216085600527584558

`A208901(A004275(n+1))`
-/

namespace A211012.P4216085600527584558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208901 (A004275 (n + 1)).toNat

end

end A211012.P4216085600527584558

namespace A211012

/-- `A208901(A004275(n+1))` -/
def P4216085600527584558.Spec : Prop :=
  ∀ n, P4216085600527584558.a n = A211012 n

end A211012

/-! ## A211012.P3880862672043994761

`A297619(A004274(n+1))`
-/

namespace A211012.P3880862672043994761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297619 (A004274 (n + 1)).toNat

end

end A211012.P3880862672043994761

namespace A211012

/-- `A297619(A004274(n+1))` -/
def P3880862672043994761.Spec : Prop :=
  ∀ n, P3880862672043994761.a n = A211012 n

end A211012

/-! ## A211012.P13926141958150634304

`A297619(A004280(n+1))`
-/

namespace A211012.P13926141958150634304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297619 (A004280 (n + 1)).toNat

end

end A211012.P13926141958150634304

namespace A211012

/-- `A297619(A004280(n+1))` -/
def P13926141958150634304.Spec : Prop :=
  ∀ n, P13926141958150634304.a n = A211012 n

end A211012

/-!
# A211013: Second 13-gonal numbers: a(n) = n*(11*n+9)/2.

The programs for A211013, the canonical program `A211013.P8757857130538096310` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211013 has offset 0).

The definition of A211013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n+9)/2` (program `A211013.P5339200538880773339`, by `A211013.P5339200538880773339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A211013.P5339200538880773339

`n*(11*n+9)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A211013.P5339200538880773339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (11 * n + 9) : ℚ) / 2

end

end A211013.P5339200538880773339

namespace A211013

/-- `n*(11*n+9)/2` -/
def P5339200538880773339.Spec : Prop :=
  ∀ n, P5339200538880773339.a n = (A211013 n : ℚ)

theorem P5339200538880773339.correct : P5339200538880773339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A211013, Nat.add_sub_cancel, A211013.P5339200538880773339.a, A211013.P8757857130538096310.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A211013, Nat.add_sub_cancel, A211013.P5339200538880773339.a, A211013.P8757857130538096310.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A211013

/-! ## A211013.P8757857130538096310

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=10, a(2)=31`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211013

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8757857130538096310.Spec : Prop :=
  ∀ n, P8757857130538096310.a n = A211013 n

theorem P8757857130538096310.correct : P8757857130538096310.Spec := by
  intro n
  simp only [A211013]

end A211013

/-! ## A211013.P13388499304284213549

`A152740(n)-n`
-/

namespace A211013.P13388499304284213549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152740 n - (n : ℤ)

end

end A211013.P13388499304284213549

namespace A211013

/-- `A152740(n)-n` -/
def P13388499304284213549.Spec : Prop :=
  ∀ n, P13388499304284213549.a n = A211013 n

end A211013

/-! ## A211013.P9504412053404643702

`A022269(n)+4*n`
-/

namespace A211013.P9504412053404643702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n + (4 * n : ℤ)

end

end A211013.P9504412053404643702

namespace A211013

/-- `A022269(n)+4*n` -/
def P9504412053404643702.Spec : Prop :=
  ∀ n, P9504412053404643702.a n = A211013 n

end A211013

/-! ## A211013.P9548245371843472319

`A022268(n)+5*n`
-/

namespace A211013.P9548245371843472319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n + (5 * n : ℤ)

end

end A211013.P9548245371843472319

namespace A211013

/-- `A022268(n)+5*n` -/
def P9548245371843472319.Spec : Prop :=
  ∀ n, P9548245371843472319.a n = A211013 n

end A211013

/-! ## A211013.P2890075051328109837

`A180223(n)+8*n`
-/

namespace A211013.P2890075051328109837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n + (8 * n : ℤ)

end

end A211013.P2890075051328109837

namespace A211013

/-- `A180223(n)+8*n` -/
def P2890075051328109837.Spec : Prop :=
  ∀ n, P2890075051328109837.a n = A211013 n

end A211013

/-! ## A211013.P14337821631496904686

`A051865(n)+9*n`
-/

namespace A211013.P14337821631496904686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n + (9 * n : ℤ)

end

end A211013.P14337821631496904686

namespace A211013

/-- `A051865(n)+9*n` -/
def P14337821631496904686.Spec : Prop :=
  ∀ n, P14337821631496904686.a n = A211013 n

end A211013

/-! ## A211013.P17935844301342267942

`A218530(11*n+9)`
-/

namespace A211013.P17935844301342267942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218530 (11 * n + 9)

end

end A211013.P17935844301342267942

namespace A211013

/-- `A218530(11*n+9)` -/
def P17935844301342267942.Spec : Prop :=
  ∀ n, P17935844301342267942.a n = A211013 n

end A211013

/-! ## A211013.P5714181798087414076

`∑[a(n-1)+11]` with `a(0)=0, a(1)=10`
-/

namespace A211013.P5714181798087414076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211013.P5714181798087414076

namespace A211013

/-- `∑[a(n-1)+11]` -/
def P5714181798087414076.Spec : Prop :=
  ∀ n, (P5714181798087414076.a n : ℤ) = A211013 n

end A211013

/-! ## A211013.P184503657281143149

`11*C(n+1, 2)-n`
-/

namespace A211013.P184503657281143149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * Nat.choose (n + 1) 2 : ℤ) - (n : ℤ)

end

end A211013.P184503657281143149

namespace A211013

/-- `11*C(n+1, 2)-n` -/
def P184503657281143149.Spec : Prop :=
  ∀ n, P184503657281143149.a n = A211013 n

end A211013

/-! ## A211013.P2307577222233242185

`∑[ogf((10x+x^2)/(1-2x+x^2))]`
-/

namespace A211013.P2307577222233242185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211013.P2307577222233242185

namespace A211013

/-- `∑[ogf((10x+x^2)/(1-2x+x^2))]` -/
def P2307577222233242185.Spec : Prop :=
  ∀ n, P2307577222233242185.a n = A211013 n

end A211013

/-! ## A211013.P14657986296286372586

`ogf((10x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A211013.P14657986296286372586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 1] [1, -3, 3, -1] n

end

end A211013.P14657986296286372586

namespace A211013

/-- `ogf((10x+x^2)/(1-3x+3x^2-x^3))` -/
def P14657986296286372586.Spec : Prop :=
  ∀ n, P14657986296286372586.a n = A211013 n

end A211013

/-! ## A211013.P17289501757776072073

`11*n+a(n-1)-1` with `a(0)=0`
-/

namespace A211013.P17289501757776072073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (11 * n : ℤ) + a (n - 1) - 1

end

end A211013.P17289501757776072073

namespace A211013

/-- `11*n+a(n-1)-1` -/
def P17289501757776072073.Spec : Prop :=
  ∀ n, P17289501757776072073.a n = A211013 n

end A211013

/-! ## A211013.P3346777591932545358

`A027468(n)+n²`
-/

namespace A211013.P3346777591932545358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n + (n ^ 2 : ℤ)

end

end A211013.P3346777591932545358

namespace A211013

/-- `A027468(n)+n²` -/
def P3346777591932545358.Spec : Prop :=
  ∀ n, P3346777591932545358.a n = A211013 n

end A211013

/-! ## A211013.P1376243050531104975

`A254963(n)+3*n`
-/

namespace A211013.P1376243050531104975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 n + (3 * n : ℤ)

end

end A211013.P1376243050531104975

namespace A211013

/-- `A254963(n)+3*n` -/
def P1376243050531104975.Spec : Prop :=
  ∀ n, P1376243050531104975.a n = A211013 n

end A211013

/-! ## A211013.P3360000323320064902

`A164136(n)/2-n`
-/

namespace A211013.P3360000323320064902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164136 n : ℚ) / 2 - (n : ℚ)

end

end A211013.P3360000323320064902

namespace A211013

/-- `A164136(n)/2-n` -/
def P3360000323320064902.Spec : Prop :=
  ∀ n, P3360000323320064902.a n = (A211013 n : ℚ)

end A211013

/-! ## A211013.P10636354216807309137

`n/2*A017497(n)`
-/

namespace A211013.P10636354216807309137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A017497 n : ℚ)

end

end A211013.P10636354216807309137

namespace A211013

/-- `n/2*A017497(n)` -/
def P10636354216807309137.Spec : Prop :=
  ∀ n, P10636354216807309137.a n = (A211013 n : ℚ)

end A211013

/-! ## A211013.P4867810990940958884

`∑[A004273(n)+9*n]`
-/

namespace A211013.P4867810990940958884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (9 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211013.P4867810990940958884

namespace A211013

/-- `∑[A004273(n)+9*n]` -/
def P4867810990940958884.Spec : Prop :=
  ∀ n, P4867810990940958884.a n = A211013 n

end A211013

/-! ## A211013.P12992601125192503378

`A069125(n+1)-(n+1)`
-/

namespace A211013.P12992601125192503378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069125 (n + 1) - (n + 1 : ℤ)

end

end A211013.P12992601125192503378

namespace A211013

/-- `A069125(n+1)-(n+1)` -/
def P12992601125192503378.Spec : Prop :=
  ∀ n, P12992601125192503378.a n = A211013 n

end A211013

/-! ## A211013.P18323424612095482422

`A069126(n+1)-(n+1)*(n+1)`
-/

namespace A211013.P18323424612095482422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 1) - ((n + 1) * (n + 1) : ℤ)

end

end A211013.P18323424612095482422

namespace A211013

/-- `A069126(n+1)-(n+1)*(n+1)` -/
def P18323424612095482422.Spec : Prop :=
  ∀ n, P18323424612095482422.a n = A211013 n

end A211013

/-!
# A211014: Second 14-gonal numbers: n*(6*n+5).

The programs for A211014, the canonical program `A211014.P12672984575473909047` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211014 has offset 0).

The definition of A211014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n+5)` (program `A211014.P12672984575473909047`, by `A211014.P12672984575473909047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A211014.P12672984575473909047

`n*(6*n+5)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211014

/-- `n*(6*n+5)` -/
def P12672984575473909047.Spec : Prop :=
  ∀ n, (P12672984575473909047.a n : ℤ) = A211014 n

theorem P12672984575473909047.correct : P12672984575473909047.Spec := by
  intro n
  simp only [A211014]

end A211014

/-! ## A211014.P11041577073880975205

`A003154(n+1)-n-1`
-/

namespace A211014.P11041577073880975205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - (n : ℤ) - 1

end

end A211014.P11041577073880975205

namespace A211014

/-- `A003154(n+1)-n-1` -/
def P11041577073880975205.Spec : Prop :=
  ∀ n, P11041577073880975205.a n = A211014 n

theorem P11041577073880975205.correct : P11041577073880975205.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P11041577073880975205.a, A211014.P12672984575473909047.a, A003154, A003154.P12292724974289202885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P18283499651618503529

`∑[a(n-1)+12]` with `a(0)=0, a(1)=11`
-/

namespace A211014.P18283499651618503529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211014.P18283499651618503529

namespace A211014

/-- `∑[a(n-1)+12]` -/
def P18283499651618503529.Spec : Prop :=
  ∀ n, (P18283499651618503529.a n : ℤ) = A211014 n

end A211014

/-! ## A211014.P18279893140072924782

`∑[ogf((11x+x^2)/(1-2x+x^2))]`
-/

namespace A211014.P18279893140072924782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211014.P18279893140072924782

namespace A211014

/-- `∑[ogf((11x+x^2)/(1-2x+x^2))]` -/
def P18279893140072924782.Spec : Prop :=
  ∀ n, P18279893140072924782.a n = A211014 n

end A211014

/-! ## A211014.P7182178127662913046

`lcm(2, Δ[n^3])-(n+2)`
-/

namespace A211014.P7182178127662913046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - (n + 2 : ℤ)

end

end A211014.P7182178127662913046

namespace A211014

/-- `lcm(2, Δ[n^3])-(n+2)` -/
def P7182178127662913046.Spec : Prop :=
  ∀ n, P7182178127662913046.a n = A211014 n

end A211014

/-! ## A211014.P10225592803746529272

`Δ[C(n, 2)*or(3, 4*n)]`
-/

namespace A211014.P10225592803746529272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 * Nat.lor 3 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A211014.P10225592803746529272

namespace A211014

/-- `Δ[C(n, 2)*or(3, 4*n)]` -/
def P10225592803746529272.Spec : Prop :=
  ∀ n, P10225592803746529272.a n = A211014 n

end A211014

/-! ## A211014.P18443255055911231480

`12*n-(1-a(n-1))` with `a(0)=0`
-/

namespace A211014.P18443255055911231480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (12 * n : ℤ) - (1 - a (n - 1))

end

end A211014.P18443255055911231480

namespace A211014

/-- `12*n-(1-a(n-1))` -/
def P18443255055911231480.Spec : Prop :=
  ∀ n, P18443255055911231480.a n = A211014 n

theorem P18443255055911231480.correct : P18443255055911231480.Spec := by
  intro n
  induction n with
  | zero => simp [A211014, A211014.P18443255055911231480.a, A211014.P12672984575473909047.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A211014, Nat.add_sub_cancel, A211014.P18443255055911231480.a, A211014.P12672984575473909047.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A211014

/-! ## A211014.P8636075088082527614

`n*Δ[(2*n)²]-C(2*n, 2)`
-/

namespace A211014.P8636075088082527614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (Nat.choose (2 * n) 2 : ℤ)

end

end A211014.P8636075088082527614

namespace A211014

/-- `n*Δ[(2*n)²]-C(2*n, 2)` -/
def P8636075088082527614.Spec : Prop :=
  ∀ n, P8636075088082527614.a n = A211014 n

theorem P8636075088082527614.correct : P8636075088082527614.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P8636075088082527614.f1, A211014.P8636075088082527614.a, A211014.P12672984575473909047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P9522123669375010177

`Δ[lcm(n-1+n, n²)]+n-1`
-/

namespace A211014.P9522123669375010177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1 + (n : ℤ)) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - 1)

end

end A211014.P9522123669375010177

namespace A211014

/-- `Δ[lcm(n-1+n, n²)]+n-1` -/
def P9522123669375010177.Spec : Prop :=
  ∀ n, P9522123669375010177.a n = A211014 n

end A211014

/-! ## A211014.P9027194494568941048

`A033570(n)-1`
-/

namespace A211014.P9027194494568941048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n - 1

end

end A211014.P9027194494568941048

namespace A211014

/-- `A033570(n)-1` -/
def P9027194494568941048.Spec : Prop :=
  ∀ n, P9027194494568941048.a n = A211014 n

theorem P9027194494568941048.correct : P9027194494568941048.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P9027194494568941048.a, A211014.P12672984575473909047.a, A033570, A033570.P8308357737011808276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P12089380326688220829

`A202804(n)+n`
-/

namespace A211014.P12089380326688220829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202804 n + (n : ℤ)

end

end A211014.P12089380326688220829

namespace A211014

/-- `A202804(n)+n` -/
def P12089380326688220829.Spec : Prop :=
  ∀ n, P12089380326688220829.a n = A211014 n

theorem P12089380326688220829.correct : P12089380326688220829.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P12089380326688220829.a, A211014.P12672984575473909047.a, A202804, A202804.P11278304754932210698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P9604979583944749654

`A049598(n)-n`
-/

namespace A211014.P9604979583944749654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n - (n : ℤ)

end

end A211014.P9604979583944749654

namespace A211014

/-- `A049598(n)-n` -/
def P9604979583944749654.Spec : Prop :=
  ∀ n, P9604979583944749654.a n = A211014 n

theorem P9604979583944749654.correct : P9604979583944749654.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P9604979583944749654.a, A211014.P12672984575473909047.a, A049598, A049598.P15670095646145140517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P16070329269245833794

`A080859(n)-1+n`
-/

namespace A211014.P16070329269245833794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n - 1 + (n : ℤ)

end

end A211014.P16070329269245833794

namespace A211014

/-- `A080859(n)-1+n` -/
def P16070329269245833794.Spec : Prop :=
  ∀ n, P16070329269245833794.a n = A211014 n

theorem P16070329269245833794.correct : P16070329269245833794.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P16070329269245833794.a, A211014.P12672984575473909047.a, A080859, A080859.P14823795919072812333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P14884207120336928012

`2*A045944(n)+n`
-/

namespace A211014.P14884207120336928012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045944 n + (n : ℤ)

end

end A211014.P14884207120336928012

namespace A211014

/-- `2*A045944(n)+n` -/
def P14884207120336928012.Spec : Prop :=
  ∀ n, P14884207120336928012.a n = A211014 n

theorem P14884207120336928012.correct : P14884207120336928012.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P14884207120336928012.a, A211014.P12672984575473909047.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P13710939275912252663

`A195319(n)+2*n`
-/

namespace A211014.P13710939275912252663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + (2 * n : ℤ)

end

end A211014.P13710939275912252663

namespace A211014

/-- `A195319(n)+2*n` -/
def P13710939275912252663.Spec : Prop :=
  ∀ n, P13710939275912252663.a n = A211014 n

theorem P13710939275912252663.correct : P13710939275912252663.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P13710939275912252663.a, A211014.P12672984575473909047.a, A195319, A195319.P14159989131175070761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P12593896409290481265

`2*A028896(n)-n`
-/

namespace A211014.P12593896409290481265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028896 n - (n : ℤ)

end

end A211014.P12593896409290481265

namespace A211014

/-- `2*A028896(n)-n` -/
def P12593896409290481265.Spec : Prop :=
  ∀ n, P12593896409290481265.a n = A211014 n

theorem P12593896409290481265.correct : P12593896409290481265.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P12593896409290481265.a, A211014.P12672984575473909047.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P1354555103441101125

`n*A017641(n)/2`
-/

namespace A211014.P1354555103441101125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A017641 n : ℚ) / 2

end

end A211014.P1354555103441101125

namespace A211014

/-- `n*A017641(n)/2` -/
def P1354555103441101125.Spec : Prop :=
  ∀ n, P1354555103441101125.a n = (A211014 n : ℚ)

theorem P1354555103441101125.correct : P1354555103441101125.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P1354555103441101125.a, A211014.P12672984575473909047.a, A017641, A017641.P7179824184075428685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P8304270969136352295

`A014106(n)+A002943(n)`
-/

namespace A211014.P8304270969136352295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n + A002943 n

end

end A211014.P8304270969136352295

namespace A211014

/-- `A014106(n)+A002943(n)` -/
def P8304270969136352295.Spec : Prop :=
  ∀ n, P8304270969136352295.a n = A211014 n

theorem P8304270969136352295.correct : P8304270969136352295.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P8304270969136352295.a, A211014.P12672984575473909047.a, A002943, A002943.P6554007946647441496.a, A014106, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211014

/-! ## A211014.P3162536607927396843

`A027468(n)+A005449(n)`
-/

namespace A211014.P3162536607927396843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n + A005449 n

end

end A211014.P3162536607927396843

namespace A211014

/-- `A027468(n)+A005449(n)` -/
def P3162536607927396843.Spec : Prop :=
  ∀ n, P3162536607927396843.a n = A211014 n

end A211014

/-! ## A211014.P10956818921956190496

`A033579(n)+A008589(n)`
-/

namespace A211014.P10956818921956190496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n + A008589 n

end

end A211014.P10956818921956190496

namespace A211014

/-- `A033579(n)+A008589(n)` -/
def P10956818921956190496.Spec : Prop :=
  ∀ n, P10956818921956190496.a n = A211014 n

theorem P10956818921956190496.correct : P10956818921956190496.Spec := by
  intro n
  simp only [A211014, Nat.add_sub_cancel, A211014.P10956818921956190496.a, A211014.P12672984575473909047.a, A008589, A008589.P8963889148823201939.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211014

/-!
# A211016: Triangle read by rows: T(n,k) = number of squares and rectangles of area 2^(k-1) after 2^n stages in the toothpick structure of A139250, n>=1, k>=1, assuming the toothpicks have length 2.

The programs for A211016, there is no canonical definition to state claims against.
-/

/-! ## A211016.P15454921214978038104

`4*A211019(n+1)`
-/

namespace A211016.P15454921214978038104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A211019 (n + 1)

end

end A211016.P15454921214978038104

/-! ## A211016.P10823231654512359493

`8*A211018(n+1)/A059268(n)`
-/

namespace A211016.P10823231654512359493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A211018 (n + 1) : ℚ) / (A059268 n : ℚ))

end

end A211016.P10823231654512359493

/-! ## A211016.P3729891019683656314

`A211019(n+1)/4^A008683(A007304(n+1))`
-/

namespace A211016.P3729891019683656314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211019 (n + 1) : ℚ) / (4 : ℚ) ^ (A008683 (A007304 (n + 1)).toNat : ℤ)

end

end A211016.P3729891019683656314

/-! ## A211016.P17641104412969240016

`A008590(A211018(n+1))/A059268(n)`
-/

namespace A211016.P17641104412969240016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008590 (A211018 (n + 1)).toNat : ℚ) / (A059268 n : ℚ)

end

end A211016.P17641104412969240016

/-!
# A211017: T(n,k) = total area of all squares and rectangles of area 2^(k-1) after 2^n stages in the toothpick structure of A139250, n>=1, k>=1, assuming the toothpicks have length 2. Triangle read by rows.

The programs for A211017, there is no canonical definition to state claims against.
-/

/-! ## A211017.P14943220820556539255

`A008590(A211018(n+1))`
-/

namespace A211017.P14943220820556539255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A211018 (n + 1)).toNat

end

end A211017.P14943220820556539255

/-! ## A211017.P8389645429145355140

`A105570(8*A211018(n+1))`
-/

namespace A211017.P8389645429145355140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (8 * A211018 (n + 1)).toNat

end

end A211017.P8389645429145355140

/-! ## A211017.P14293685275121755959

`A005843(A211018(n+1))*A123932(n)`
-/

namespace A211017.P14293685275121755959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A211018 (n + 1)).toNat * A123932 n

end

end A211017.P14293685275121755959

/-! ## A211017.P18263430840067726832

`A022144(A211018(n+1))*A157928(n)`
-/

namespace A211017.P18263430840067726832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A211018 (n + 1)).toNat * A157928 n

end

end A211017.P18263430840067726832

/-!
# A211018: Triangle read by rows: T(n,k) = total area of all squares and rectangles of area 2^(k-1) after 2^n stages in the toothpick structure of A139250, divided by 8, n>=1, k>=1, assuming the toothpicks have length 2.

The programs for A211018, there is no canonical definition to state claims against.
-/

/-! ## A211018.P8323349348021550087

`A211019(n+1)/2*A059268(n)`
-/

namespace A211018.P8323349348021550087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211019 (n + 1) : ℚ) / 2 * (A059268 n : ℚ)

end

end A211018.P8323349348021550087

/-! ## A211018.P14683425556945158958

`A014682(A059268(n)*A211019(n+1))`
-/

namespace A211018.P14683425556945158958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A059268 n * A211019 (n + 1)).toNat

end

end A211018.P14683425556945158958

/-! ## A211018.P15122876787308209202

`A014682(lcm(A059268(n), A211019(n+1)))`
-/

namespace A211018.P15122876787308209202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm (A059268 n) (A211019 (n + 1)))

end

end A211018.P15122876787308209202

/-! ## A211018.P6403859656204609861

`A014682(A211017(n+1))/4`
-/

namespace A211018.P6403859656204609861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (A211017 (n + 1)).toNat : ℚ) / 4

end

end A211018.P6403859656204609861

/-!
# A211019: Triangle read by rows: T(n,k) = number of squares and rectangles of area 2^(k-1) after 2^n stages in the toothpick structure of A139250, divided by 4, n>=1, k>=1, assuming the toothpicks have length 2.

The programs for A211019, there is no canonical definition to state claims against.
-/

/-! ## A211019.P10946669044857565731

`A211016(n+1)/4`
-/

namespace A211019.P10946669044857565731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211016 (n + 1) : ℚ) / 4

end

end A211019.P10946669044857565731

/-! ## A211019.P8838920881037876769

`2*A211018(n+1)/A059268(n)`
-/

namespace A211019.P8838920881037876769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A211018 (n + 1) : ℚ) / (A059268 n : ℚ))

end

end A211019.P8838920881037876769

/-! ## A211019.P2469250209513292853

`floor(A211016(A029579(2*n))/2)/2`
-/

namespace A211019.P2469250209513292853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A211016 (A029579 (2 * n)).toNat : ℚ) / 2⌋ : ℚ) / 2

end

end A211019.P2469250209513292853

/-! ## A211019.P10281652482323426412

`A110962(A211016(n+1))`
-/

namespace A211019.P10281652482323426412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A211016 (n + 1)).toNat

end

end A211019.P10281652482323426412

/-! ## A211019.P5156557962999338442

`A005843(A211018(n+1))/A059268(n)`
-/

namespace A211019.P5156557962999338442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A211018 (n + 1)).toNat : ℚ) / (A059268 n : ℚ)

end

end A211019.P5156557962999338442

/-!
# A211020: Number of circles in the structure of A211000 after n-th stage.

The programs for A211020, there is no canonical definition to state claims against.
-/

/-! ## A211020.P1155153858927260034

`∑[char[A211021(n+1)]]`
-/

namespace A211020.P1155153858927260034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211021 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211020.P1155153858927260034

/-! ## A211020.P1731062744907865770

`∑[val(A043707(A048315(3*(n+1))), 7)]`
-/

namespace A211020.P1731062744907865770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043707 (A048315 (3 * (n + 1))).toNat).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211020.P1731062744907865770

/-! ## A211020.P3957190590671231682

`∑[n%A305936(A330727(n+6))]`
-/

namespace A211020.P3957190590671231682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A305936 (A330727 (n + 6)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211020.P3957190590671231682

/-! ## A211020.P5597488438974387179

`∑[A328981(A228326(2*(n+2)))]`
-/

namespace A211020.P5597488438974387179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (A228326 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211020.P5597488438974387179

/-! ## A211020.P9153083355341268227

`A358479(A197433(n+1))`
-/

namespace A211020.P9153083355341268227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358479 (A197433 (n + 1)).toNat

end

end A211020.P9153083355341268227

/-!
# A211023: Value on the axis "y" of the endpoint of the structure of A211000 if the index is prime.

The programs for A211023, there is no canonical definition to state claims against.
-/

/-! ## A211023.P1968835995317877801

`A211011(A000040(n+1))`
-/

namespace A211023.P1968835995317877801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 (A000040 (n + 1)).toNat

end

end A211023.P1968835995317877801

/-! ## A211023.P28584970897052006

`A211011(A008578(n+2))`
-/

namespace A211023.P28584970897052006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 (A008578 (n + 2)).toNat

end

end A211023.P28584970897052006

/-! ## A211023.P8866102921378240200

`A211011(A182986(n+2))`
-/

namespace A211023.P8866102921378240200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 (A182986 (n + 2)).toNat

end

end A211023.P8866102921378240200

/-! ## A211023.P16965297412314947248

`A211011(record[A006530(n+2)])`
-/

namespace A211023.P16965297412314947248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211023.P16965297412314947248

/-! ## A211023.P8916044059917874680

`A211011(record[A020639(n+2)])`
-/

namespace A211023.P8916044059917874680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211023.P8916044059917874680

/-! ## A211023.P9895310634183991449

`A211000(A072055(n+1))`
-/

namespace A211023.P9895310634183991449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211000 (A072055 (n + 1)).toNat

end

end A211023.P9895310634183991449

/-! ## A211023.P12773464516463199552

`A211000(2*eq[1, A032741(n)]+1)`
-/

namespace A211023.P12773464516463199552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211000 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A211023.P12773464516463199552

/-! ## A211023.P12257452781410353837

`A211011(A383578(n+1))`
-/

namespace A211023.P12257452781410353837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 (A383578 (n + 1)).toNat

end

end A211023.P12257452781410353837

/-! ## A211023.P1963961280934082760

`A211011(A160656(n+1))`
-/

namespace A211023.P1963961280934082760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211011 (A160656 (n + 1)).toNat

end

end A211023.P1963961280934082760

/-!
# A211024: Sum of all visible nodes in the structure of A211000 at n-th stage.

The programs for A211024, there is no canonical definition to state claims against.
-/

/-! ## A211024.P8515001770724225999

`∑[n%A360297(n+3)]`
-/

namespace A211024.P8515001770724225999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A360297 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211024.P8515001770724225999

/-! ## A211024.P543337464450729818

`∑[A330240(∑[A140281(n)])]`
-/

namespace A211024.P543337464450729818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330240 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211024.P543337464450729818

/-! ## A211024.P11276024022292354361

`∑[A330240(∑[A249873(n)])]`
-/

namespace A211024.P11276024022292354361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330240 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211024.P11276024022292354361

/-! ## A211024.P5364682323741914844

`∑[n-A321379(A282264(n))]`
-/

namespace A211024.P5364682323741914844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A321379 (A282264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211024.P5364682323741914844

/-! ## A211024.P6063371424264168844

`∑[A374249(n+1)%A350556(3*(n+1))]`
-/

namespace A211024.P6063371424264168844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374249 (n + 1)) (A350556 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211024.P6063371424264168844

/-!
# A211026: Number of segments needed to draw (on the infinite square grid) a diagram of regions and partitions of n.

The programs for A211026, there is no canonical definition to state claims against.
-/

/-! ## A211026.P4372532138507406567

`A139582(n+1)+2`
-/

namespace A211026.P4372532138507406567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (n + 1) + 2

end

end A211026.P4372532138507406567

/-! ## A211026.P8343234354902823959

`2*A052810(n+1)`
-/

namespace A211026.P8343234354902823959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052810 (n + 1)

end

end A211026.P8343234354902823959

/-! ## A211026.P7798332282846631005

`2*A000041(n+1)+2`
-/

namespace A211026.P7798332282846631005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000041 (n + 1) + 2

end

end A211026.P7798332282846631005

/-! ## A211026.P2669175123097065686

`2*(A000065(n+1)+2)`
-/

namespace A211026.P2669175123097065686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000065 (n + 1) + 2)

end

end A211026.P2669175123097065686

/-! ## A211026.P8162105623654432544

`2*(A133041(n+1)-n)`
-/

namespace A211026.P8162105623654432544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133041 (n + 1) - (n : ℤ))

end

end A211026.P8162105623654432544

/-! ## A211026.P8565232775526443796

`A052810(A028310(n+1))+A052810(n+1)`
-/

namespace A211026.P8565232775526443796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (A028310 (n + 1)).toNat + A052810 (n + 1)

end

end A211026.P8565232775526443796

/-! ## A211026.P12534977968165106709

`A299474(n+1)/2+2`
-/

namespace A211026.P12534977968165106709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299474 (n + 1) : ℚ) / 2 + 2

end

end A211026.P12534977968165106709

/-! ## A211026.P3396273072670897338

`A299475(n+1)+A299475(n+1)-A299474(n+1)`
-/

namespace A211026.P3396273072670897338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299475 (n + 1) + (A299475 (n + 1) - A299474 (n + 1))

end

end A211026.P3396273072670897338

/-! ## A211026.P15926592135617228295

`A220909(n+1)/(n+1)+2`
-/

namespace A211026.P15926592135617228295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 (n + 1) : ℚ) / (n + 1 : ℚ) + 2

end

end A211026.P15926592135617228295

/-! ## A211026.P14899364577408228775

`(A183009(n+1)+A008606(n+1))/A008594(n+1)`
-/

namespace A211026.P14899364577408228775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183009 (n + 1) + A008606 (n + 1) : ℚ) / (A008594 (n + 1) : ℚ)

end

end A211026.P14899364577408228775

/-! ## A211026.P7655399091092837830

`(A327550(n+1)+A000079(n+1))/A000079(n)`
-/

namespace A211026.P7655399091092837830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327550 (n + 1) + A000079 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A211026.P7655399091092837830

/-!
# A211027: Triangle of binary numbers >= 1 with no initial repeats.

The programs for A211027, there is no canonical definition to state claims against.
-/

/-! ## A211027.P16629894673780117228

`A007088(A211967(n+1))`
-/

namespace A211027.P16629894673780117228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A211967 (n + 1)).toNat

end

end A211027.P16629894673780117228

/-! ## A211027.P10041606975554471188

`A185544(2*A211967(n+1))`
-/

namespace A211027.P10041606975554471188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A211967 (n + 1)).toNat

end

end A211027.P10041606975554471188

/-! ## A211027.P15810917176331469481

`A185544(A211967(n+1)+A211967(n+1))`
-/

namespace A211027.P15810917176331469481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A211967 (n + 1) + A211967 (n + 1)).toNat

end

end A211027.P15810917176331469481

/-! ## A211027.P4755942659892440830

`A328072(A076084(n+2))`
-/

namespace A211027.P4755942659892440830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328072 (A076084 (n + 2)).toNat

end

end A211027.P4755942659892440830

/-! ## A211027.P8128649991557209099

`A328072(A151764(n+2))`
-/

namespace A211027.P8128649991557209099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328072 (A151764 (n + 2)).toNat

end

end A211027.P8128649991557209099

/-!
# A211028: A list of ordered partitions of the positive integers.

The programs for A211028, there is no canonical definition to state claims against.
-/

/-! ## A211028.P1070359822086753310

`A059806(A026792(n+1)^A002487(n))`
-/

namespace A211028.P1070359822086753310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (SequenceMachineLib.roundAway ((A026792 (n + 1) : ℚ) ^ (A002487 n : ℤ))).toNat

end

end A211028.P1070359822086753310

/-! ## A211028.P17778741153637250318

`A059806(A139100(n+1)^A002487(n))`
-/

namespace A211028.P17778741153637250318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (SequenceMachineLib.roundAway ((A139100 (n + 1) : ℚ) ^ (A002487 n : ℤ))).toNat

end

end A211028.P17778741153637250318

/-! ## A211028.P4799259365206745637

`A026792(A332808(n+1)%A246544(n+1))`
-/

namespace A211028.P4799259365206745637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026792 (Int.tmod (A332808 (n + 1)) (A246544 (n + 1))).toNat

end

end A211028.P4799259365206745637

/-! ## A211028.P914982200961967474

`A124734(A345168(2*(n+2))+A000975(n))`
-/

namespace A211028.P914982200961967474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (A345168 (2 * (n + 2)) + A000975 n).toNat

end

end A211028.P914982200961967474

/-!
# A211029: Triangle read by rows in which row n lists the binary words of length n over the alphabet {1,2} with no initial repeats.

The programs for A211029, there is no canonical definition to state claims against.
-/

/-! ## A211029.P4239986228287778216

`∩[A213969(n+1), A241158(n+1)]`
-/

namespace A211029.P4239986228287778216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211029.P4239986228287778216

/-! ## A211029.P5981808354667238989

`eq[n, A182287(A305458(n))]`
-/

namespace A211029.P5981808354667238989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182287 (A305458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211029.P5981808354667238989

/-! ## A211029.P9261757534231318817

`eq[n, A182287(A305463(n))]`
-/

namespace A211029.P9261757534231318817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182287 (A305463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211029.P9261757534231318817

/-! ## A211029.P153976542348538331

`record[gcd(A213969(n+1), A339165(n))]`
-/

namespace A211029.P153976542348538331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213969 (n + 1)) (A339165 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211029.P153976542348538331

/-!
# A211030: Sum of all parts in the structure of the modular table of partitions of A135010 after n-th stage.

The programs for A211030, there is no canonical definition to state claims against.
-/

/-! ## A211030.P13810877170202679987

`∑[A135010(n+1)]`
-/

namespace A211030.P13810877170202679987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211030.P13810877170202679987

/-! ## A211030.P13661397617953699122

`∑[sqrt(A206438(n+1))]`
-/

namespace A211030.P13661397617953699122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206438 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211030.P13661397617953699122

/-! ## A211030.P2108672754290728327

`∑[dr(A135010(Δ[n²]-n))]`
-/

namespace A211030.P2108672754290728327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A135010 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211030.P2108672754290728327

/-! ## A211030.P16829042915971976313

`∑[A015052(A206438(n+1)²)]`
-/

namespace A211030.P16829042915971976313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A206438 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211030.P16829042915971976313

/-! ## A211030.P15614182237571026887

`∑[A015053(A206438(n+1)²)]`
-/

namespace A211030.P15614182237571026887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A206438 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211030.P15614182237571026887

/-! ## A211030.P267900679157134926

`∑[A053150(A206438(n+1)²)]`
-/

namespace A211030.P267900679157134926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A206438 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211030.P267900679157134926

/-! ## A211030.P2126633655564202246

`∑[A000194(A206438(n+1)+1)]`
-/

namespace A211030.P2126633655564202246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A206438 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211030.P2126633655564202246

/-! ## A211030.P153736236088485718

`∑[A000196(A206438(n+1)+1)]`
-/

namespace A211030.P153736236088485718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A206438 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211030.P153736236088485718

/-! ## A211030.P427678022644979607

`∑[A000188(2*A206438(n+1))]`
-/

namespace A211030.P427678022644979607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A206438 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211030.P427678022644979607

/-! ## A211030.P4766174650529752115

`∑[A002260(2*A206438(n+1))]`
-/

namespace A211030.P4766174650529752115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A206438 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211030.P4766174650529752115

/-!
# A211031: Number of 2 X 2 matrices having all elements in {0,1,...,n} and determinant in the closed interval [-n,n].

The programs for A211031, there is no canonical definition to state claims against.
-/

/-! ## A211031.P10093283644852629985

`(n+1)^4-2*A210291(n)`
-/

namespace A211031.P10093283644852629985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - 2 * A210291 n

end

end A211031.P10093283644852629985

/-! ## A211031.P651351381202282678

`A000583(n+1)-(A210291(n)+A210291(n))`
-/

namespace A211031.P651351381202282678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) - (A210291 n + A210291 n)

end

end A211031.P651351381202282678

/-! ## A211031.P1305680158143476525

`2*A209995(n)-A059306(n)`
-/

namespace A211031.P1305680158143476525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209995 n - A059306 n

end

end A211031.P1305680158143476525

/-! ## A211031.P2315350917365849434

`A004277(A209995(n))-A059306(n)`
-/

namespace A211031.P2315350917365849434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A209995 n).toNat - A059306 n

end

end A211031.P2315350917365849434

/-! ## A211031.P12068375473751971546

`A004277(A210290(n)-A210291(n))-A059306(n)`
-/

namespace A211031.P12068375473751971546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210290 n - A210291 n).toNat - A059306 n

end

end A211031.P12068375473751971546

/-!
# A211032: Number of 2 X 2 matrices having all elements in {0,1,...,n} and determinant in the open interval (-n,n).

The programs for A211032, there is no canonical definition to state claims against.
-/

/-! ## A211032.P2579754653831493347

`A211031(n+1)-2*A210282(n+1)`
-/

namespace A211032.P2579754653831493347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211031 (n + 1) - 2 * A210282 (n + 1)

end

end A211032.P2579754653831493347

/-!
# A211033: Number of 2 X 2 matrices having all elements in {0,1,...,n} and determinant = 0 (mod 3).

The programs for A211033, there is no canonical definition to state claims against.
-/

/-! ## A211033.P16532038911004940126

`A228428(A113754(n+1))+A113742(n+1)`
-/

namespace A211033.P16532038911004940126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228428 (A113754 (n + 1)).toNat + A113742 (n + 1)

end

end A211033.P16532038911004940126

/-!
# A211034: Number of 2 X 2 matrices having all elements in {0,1,...,n} and determinant = 1 (mod 3).

The programs for A211034, there is no canonical definition to state claims against.
-/

/-! ## A211034.P10406800191499944476

`A092213(A278407(n+1))`
-/

namespace A211034.P10406800191499944476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092213 (A278407 (n + 1)).toNat

end

end A211034.P10406800191499944476

/-!
# A211035: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to zero or one horizontal or vertical neighbor.

The programs for A211035, there is no canonical definition to state claims against.
-/

/-! ## A211035.P7615358182437581452

`A000122(n²)*A210896(n+1)`
-/

namespace A211035.P7615358182437581452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A210896 (n + 1)

end

end A211035.P7615358182437581452

/-! ## A211035.P15892290773684176032

`2*A210896(n+1)-A058343(n)`
-/

namespace A211035.P15892290773684176032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210896 (n + 1) - A058343 n

end

end A211035.P15892290773684176032

/-! ## A211035.P4614534201981667037

`A014963(A000079(n))*A210896(n+1)`
-/

namespace A211035.P4614534201981667037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000079 n).toNat * A210896 (n + 1)

end

end A211035.P4614534201981667037

/-! ## A211035.P17869910967296385127

`A014963(A001316(n))*A210896(n+1)`
-/

namespace A211035.P17869910967296385127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A210896 (n + 1)

end

end A211035.P17869910967296385127

/-!
# A211036: 1/3 the number of (2n) X (2n) 0..2 symmetric matrices with every element equal to two horizontal and vertical neighbors.

The programs for A211036, there is no canonical definition to state claims against.
-/

/-! ## A211036.P826281941208080575

`2*A210897(n+1)-A010894(n)`
-/

namespace A211036.P826281941208080575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210897 (n + 1) - A010894 (n + 21)

end

end A211036.P826281941208080575

/-! ## A211036.P2196269882521459430

`A000032(C(2, n+2))*A210897(n+1)`
-/

namespace A211036.P2196269882521459430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A210897 (n + 1)

end

end A211036.P2196269882521459430

/-! ## A211036.P13124946414912356985

`A020639((n+1)*gcd(2, ∏{p}[n, #]))*A210897(n+1)`
-/

namespace A211036.P13124946414912356985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) * Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p)) * A210897 (n + 1)

end

end A211036.P13124946414912356985

/-! ## A211036.P11615775556959538282

`A006530(A000079(n))*A210897(n+1)`
-/

namespace A211036.P11615775556959538282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000079 n).toNat * A210897 (n + 1)

end

end A211036.P11615775556959538282

/-!
# A211037: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to zero or two horizontal and vertical neighbors.

The programs for A211037, there is no canonical definition to state claims against.
-/

/-! ## A211037.P1712809109428434107

`A190200(A210898(n+1))`
-/

namespace A211037.P1712809109428434107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190200 (A210898 (n + 1)).toNat

end

end A211037.P1712809109428434107

/-!
# A211038: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to one or two horizontal and vertical neighbors.

The programs for A211038, there is no canonical definition to state claims against.
-/

/-! ## A211038.P14376323390853315692

`A014963(A291778(n))*A210899(n+1)`
-/

namespace A211038.P14376323390853315692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A291778 n).toNat * A210899 (n + 1)

end

end A211038.P14376323390853315692

/-! ## A211038.P11396247947021592229

`A000005(A326843(n))*A210899(n+1)`
-/

namespace A211038.P11396247947021592229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A326843 n).toNat * A210899 (n + 1)

end

end A211038.P11396247947021592229

/-! ## A211038.P10969603098113137838

`A020639(A000010(n+1))*A210899(n+1)`
-/

namespace A211038.P10969603098113137838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A210899 (n + 1)

end

end A211038.P10969603098113137838

/-! ## A211038.P7845191032353087438

`A020639(A000061(n+1))*A210899(n+1)`
-/

namespace A211038.P7845191032353087438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000061 (n + 1)).toNat * A210899 (n + 1)

end

end A211038.P7845191032353087438

/-! ## A211038.P7314876830894473991

`A001221(A227501(n+1))*A210899(n+1)`
-/

namespace A211038.P7314876830894473991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A227501 (n + 1)).toNat * A210899 (n + 1)

end

end A211038.P7314876830894473991

/-!
# A211040: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to zero, one or three horizontal and vertical neighbors.

The programs for A211040, there is no canonical definition to state claims against.
-/

/-! ## A211040.P14725870725901720013

`A014963(A001316(n))*A210901(n+1)`
-/

namespace A211040.P14725870725901720013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A210901 (n + 1)

end

end A211040.P14725870725901720013

/-! ## A211040.P13833208555728117871

`A020639(A002445(n))*A210901(n+1)`
-/

namespace A211040.P13833208555728117871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002445 n).toNat * A210901 (n + 1)

end

end A211040.P13833208555728117871

/-! ## A211040.P10038209492655785743

`A020639(A063886(n))*A210901(n+1)`
-/

namespace A211040.P10038209492655785743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063886 n).toNat * A210901 (n + 1)

end

end A211040.P10038209492655785743

/-! ## A211040.P2764861373959685456

`A020639(A315590(n))*A210901(n+1)`
-/

namespace A211040.P2764861373959685456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A315590 n).toNat * A210901 (n + 1)

end

end A211040.P2764861373959685456

/-! ## A211040.P5677908131930941024

`A020639(A000010(n+2))*A210901(n+1)`
-/

namespace A211040.P5677908131930941024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A210901 (n + 1)

end

end A211040.P5677908131930941024

/-!
# A211041: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to two or three horizontal and vertical neighbors.

The programs for A211041, there is no canonical definition to state claims against.
-/

/-! ## A211041.P18338172069356614429

`A339612(or(n, a(n-1)))+5` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A211041.P18338172069356614429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A339612 (Int.lor (n : ℤ) (a (n - 1))).toNat + 5

end

end A211041.P18338172069356614429

/-! ## A211041.P18433192095333961633

`A283468(or(10, A007778(n)))`
-/

namespace A211041.P18433192095333961633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (Int.lor 10 (A007778 n)).toNat

end

end A211041.P18433192095333961633

/-!
# A211042: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to zero, two or three horizontal and vertical neighbors.

The programs for A211042, there is no canonical definition to state claims against.
-/

/-! ## A211042.P14696848069889552692

`A026491(A210902(n+1)-1)`
-/

namespace A211042.P14696848069889552692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A210902 (n + 1) - 1).toNat

end

end A211042.P14696848069889552692

/-!
# A211043: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to one, two or three horizontal and vertical neighbors.

The programs for A211043, there is no canonical definition to state claims against.
-/

/-! ## A211043.P4357935653932875842

`A040001(n²-n)*A210903(n+1)`
-/

namespace A211043.P4357935653932875842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n ^ 2 - n) * A210903 (n + 1)

end

end A211043.P4357935653932875842

/-! ## A211043.P14404752382165529712

`A014963(A011782(n))*A210903(n+1)`
-/

namespace A211043.P14404752382165529712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A011782 n).toNat * A210903 (n + 1)

end

end A211043.P14404752382165529712

/-! ## A211043.P16981717188850329149

`A020639(A105696(n))*A210903(n+1)`
-/

namespace A211043.P16981717188850329149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A105696 n).toNat * A210903 (n + 1)

end

end A211043.P16981717188850329149

/-! ## A211043.P12779557543331954623

`A020639(A000061(n+1))*A210903(n+1)`
-/

namespace A211043.P12779557543331954623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000061 (n + 1)).toNat * A210903 (n + 1)

end

end A211043.P12779557543331954623

/-! ## A211043.P12642785011429820002

`A020639(A327644(n))*A210903(n+1)`
-/

namespace A211043.P12642785011429820002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A327644 n).toNat * A210903 (n + 1)

end

end A211043.P12642785011429820002

/-!
# A211045: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to zero, one or four horizontal and vertical neighbors.

The programs for A211045, there is no canonical definition to state claims against.
-/

/-! ## A211045.P1732516773899671101

`A014963(A001316(n))*A210905(n+1)`
-/

namespace A211045.P1732516773899671101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A210905 (n + 1)

end

end A211045.P1732516773899671101

/-! ## A211045.P3756971696291676310

`A020639(A310543(n))*A210905(n+1)`
-/

namespace A211045.P3756971696291676310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A310543 n).toNat * A210905 (n + 1)

end

end A211045.P3756971696291676310

/-! ## A211045.P10251403404711146044

`A020639(A310544(n))*A210905(n+1)`
-/

namespace A211045.P10251403404711146044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A310544 n).toNat * A210905 (n + 1)

end

end A211045.P10251403404711146044

/-! ## A211045.P2198160176593926155

`A020639(A310546(n))*A210905(n+1)`
-/

namespace A211045.P2198160176593926155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A310546 n).toNat * A210905 (n + 1)

end

end A211045.P2198160176593926155

/-! ## A211045.P6894134542779059098

`A020639(A310547(n))*A210905(n+1)`
-/

namespace A211045.P6894134542779059098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A310547 n).toNat * A210905 (n + 1)

end

end A211045.P6894134542779059098

/-!
# A211046: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to zero, two or four horizontal and vertical neighbors.

The programs for A211046, there is no canonical definition to state claims against.
-/

/-! ## A211046.P17613615287727208857

`A319703(n+1)+A004273(A210906(n+1))`
-/

namespace A211046.P17613615287727208857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (n + 1) + A004273 (A210906 (n + 1)).toNat

end

end A211046.P17613615287727208857

/-!
# A211047: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to one, two or four horizontal and vertical neighbors.

The programs for A211047, there is no canonical definition to state claims against.
-/

/-! ## A211047.P14138868145643174778

`A020639(ceil(2^(n-1)))*A210907(n+1)`
-/

namespace A211047.P14138868145643174778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A210907 (n + 1)

end

end A211047.P14138868145643174778

/-! ## A211047.P12332781746653837302

`(char[A114233(n+3)]+1)*A210907(n+1)`
-/

namespace A211047.P12332781746653837302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114233 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A210907 (n + 1)

end

end A211047.P12332781746653837302

/-! ## A211047.P12835987639187656111

`A001221(A003945(n))*A210907(n+1)`
-/

namespace A211047.P12835987639187656111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003945 n).toNat * A210907 (n + 1)

end

end A211047.P12835987639187656111

/-! ## A211047.P11782390126362106131

`A000005(A326843(n))*A210907(n+1)`
-/

namespace A211047.P11782390126362106131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A326843 n).toNat * A210907 (n + 1)

end

end A211047.P11782390126362106131

/-! ## A211047.P1768141454855260190

`A001221(A061076(n+1))*A210907(n+1)`
-/

namespace A211047.P1768141454855260190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A061076 (n + 1)).toNat * A210907 (n + 1)

end

end A211047.P1768141454855260190

/-!
# A211049: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to zero, one, three or four horizontal and vertical neighbors.

The programs for A211049, there is no canonical definition to state claims against.
-/

/-! ## A211049.P16123681771978466437

`gcd(2, A002457(n))*A210909(n+1)`
-/

namespace A211049.P16123681771978466437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002457 n) : ℤ) * A210909 (n + 1)

end

end A211049.P16123681771978466437

/-! ## A211049.P5292517321972110984

`∏{e}[A020639(n+1)², #*A210909(n+1)]`
-/

namespace A211049.P5292517321972110984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A210909 (n + 1)

end

end A211049.P5292517321972110984

/-! ## A211049.P1490025691624464802

`A020639(∏{e}[n+1, 2^#])*A210909(n+1)`
-/

namespace A211049.P1490025691624464802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) * A210909 (n + 1)

end

end A211049.P1490025691624464802

/-! ## A211049.P6888825915717994404

`A014963(A000079(n))*A210909(n+1)`
-/

namespace A211049.P6888825915717994404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000079 n).toNat * A210909 (n + 1)

end

end A211049.P6888825915717994404

/-! ## A211049.P13331563349398392758

`A020639(A315590(n))*A210909(n+1)`
-/

namespace A211049.P13331563349398392758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A315590 n).toNat * A210909 (n + 1)

end

end A211049.P13331563349398392758

/-!
# A211050: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to two, three or four horizontal and vertical neighbors.

The programs for A211050, there is no canonical definition to state claims against.
-/

/-! ## A211050.P14459116140461093528

`A057428(n)+2*A192996(n+1)`
-/

namespace A211050.P14459116140461093528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 2 * A192996 (n + 1)

end

end A211050.P14459116140461093528

/-! ## A211050.P16338634834299764441

`A004273(A192996(n+1))`
-/

namespace A211050.P16338634834299764441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A192996 (n + 1)).toNat

end

end A211050.P16338634834299764441

/-!
# A211051: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to zero, two, three or four horizontal and vertical neighbors.

The programs for A211051, there is no canonical definition to state claims against.
-/

/-! ## A211051.P2053530577164640146

`2*A210910(n+1)-1`
-/

namespace A211051.P2053530577164640146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210910 (n + 1) - 1

end

end A211051.P2053530577164640146

/-! ## A211051.P3259490857865288664

`A008683(A051698(n))+2*A210910(n+1)`
-/

namespace A211051.P3259490857865288664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051698 n).toNat + 2 * A210910 (n + 1)

end

end A211051.P3259490857865288664

/-! ## A211051.P13261758008476162007

`A008683(A072828(n+1))+2*A210910(n+1)`
-/

namespace A211051.P13261758008476162007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A072828 (n + 1)).toNat + 2 * A210910 (n + 1)

end

end A211051.P13261758008476162007

/-! ## A211051.P10519492892993622234

`A008683(A181758(n+1))+2*A210910(n+1)`
-/

namespace A211051.P10519492892993622234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A181758 (n + 1)).toNat + 2 * A210910 (n + 1)

end

end A211051.P10519492892993622234

/-! ## A211051.P8572849364609644170

`A008683(A270310(n+1))+2*A210910(n+1)`
-/

namespace A211051.P8572849364609644170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A270310 (n + 1)).toNat + 2 * A210910 (n + 1)

end

end A211051.P8572849364609644170

/-!
# A211052: 1/3 the number of n X n 0..2 symmetric matrices with every element equal to one, two, three or four horizontal and vertical neighbors.

The programs for A211052, there is no canonical definition to state claims against.
-/

/-! ## A211052.P4718122167275842833

`A004273(A192639(n+1))`
-/

namespace A211052.P4718122167275842833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A192639 (n + 1)).toNat

end

end A211052.P4718122167275842833

/-!
# A211053: Number of 2 X 2 matrices having all terms in {1,...,n} and determinant n.

The programs for A211053, there is no canonical definition to state claims against.
-/

/-! ## A211053.P13784406908721638958

`A211061(n+1)-A211060(n+1)`
-/

namespace A211053.P13784406908721638958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211061 (n + 1) - A211060 (n + 1)

end

end A211053.P13784406908721638958

/-! ## A211053.P13985900633061968933

`A211061(n+1)+A057428(n)*A211060(n+1)`
-/

namespace A211053.P13985900633061968933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211061 (n + 1) + A057428 n * A211060 (n + 1)

end

end A211053.P13985900633061968933

/-! ## A211053.P7038613490443452672

`A211057(n+1)+A211061(n+1)-A211058(n+1)`
-/

namespace A211053.P7038613490443452672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211057 (n + 1) + (A211061 (n + 1) - A211058 (n + 1))

end

end A211053.P7038613490443452672

/-! ## A211053.P7989905825347472877

`A211061(n+1)+A015795(A109768(n+1))*A211060(n+1)`
-/

namespace A211053.P7989905825347472877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211061 (n + 1) + A015795 (A109768 (n + 1)).toNat * A211060 (n + 1)

end

end A211053.P7989905825347472877

/-! ## A211053.P15324636564524835187

`(n+1)^4-A212108(n+1)-A211060(n+1)`
-/

namespace A211053.P15324636564524835187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A212108 (n + 1) - A211060 (n + 1)

end

end A211053.P15324636564524835187

/-! ## A211053.P13148539105661410915

`A000290(n+1)²%A212108(n+1)-A211060(n+1)`
-/

namespace A211053.P13148539105661410915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 1) ^ 2) (A212108 (n + 1)) - A211060 (n + 1)

end

end A211053.P13148539105661410915

/-! ## A211053.P15446124899106512123

`A241496(2*n)²%A212108(n+1)-A211060(n+1)`
-/

namespace A211053.P15446124899106512123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241496 (2 * n) ^ 2) (A212108 (n + 1)) - A211060 (n + 1)

end

end A211053.P15446124899106512123

/-! ## A211053.P13343567031139412743

`A212109(n+1)-A212108(n+1)`
-/

namespace A211053.P13343567031139412743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212109 (n + 1) - A212108 (n + 1)

end

end A211053.P13343567031139412743

/-! ## A211053.P8717917461959109653

`A212109(A028310(n+1))%A212108(n+1)`
-/

namespace A211053.P8717917461959109653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212109 (A028310 (n + 1)).toNat) (A212108 (n + 1))

end

end A211053.P8717917461959109653

/-! ## A211053.P3825024894506726142

`(A211069(n+1)-A211070(n+1))/2`
-/

namespace A211053.P3825024894506726142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211069 (n + 1) - A211070 (n + 1) : ℚ) / 2

end

end A211053.P3825024894506726142

/-! ## A211053.P3883917235153461424

`A014682(A211069(n+1)-A211070(n+1))`
-/

namespace A211053.P3883917235153461424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A211069 (n + 1) - A211070 (n + 1)).toNat

end

end A211053.P3883917235153461424

/-!
# A211056: Number of 2 X 2 nonsingular matrices having all terms in {1,...,n}.

The programs for A211056, the canonical program `A211056.P4517017241335993892` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211056 has offset 1).

The definition of A211056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211056.P13223917266757987131

`∑[Δ[n^4]-Δ[A134506(n)]]`
-/

namespace A211056.P13223917266757987131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211056.P13223917266757987131

namespace A211056

/-- `∑[Δ[n^4]-Δ[A134506(n)]]` -/
def P13223917266757987131.Spec : Prop :=
  ∀ n, P13223917266757987131.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P16417816501940589895

`(n+1)^4-A134506(n+1)`
-/

namespace A211056.P16417816501940589895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A134506 (n + 1)

end

end A211056.P16417816501940589895

namespace A211056

/-- `(n+1)^4-A134506(n+1)` -/
def P16417816501940589895.Spec : Prop :=
  ∀ n, P16417816501940589895.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P13057498409490249731

`2*((n+1)^4-A211058(n+1))`
-/

namespace A211056.P13057498409490249731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n + 1) ^ 4 : ℤ) - A211058 (n + 1))

end

end A211056.P13057498409490249731

namespace A211056

/-- `2*((n+1)^4-A211058(n+1))` -/
def P13057498409490249731.Spec : Prop :=
  ∀ n, P13057498409490249731.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P4517017241335993892

`2*(∑[A005898(n)]-A018806(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A211056

/-- `2*(∑[A005898(n)]-A018806(n+1))` -/
def P4517017241335993892.Spec : Prop :=
  ∀ n, P4517017241335993892.a n = A211056 (n + 1)

theorem P4517017241335993892.correct : P4517017241335993892.Spec := by
  intro n
  simp only [A211056, Nat.add_sub_cancel]

end A211056

/-! ## A211056.P15270352262147904391

`2*(A211068(n+1)+A211067(n+1))`
-/

namespace A211056.P15270352262147904391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A211068 (n + 1) + A211067 (n + 1))

end

end A211056.P15270352262147904391

namespace A211056

/-- `2*(A211068(n+1)+A211067(n+1))` -/
def P15270352262147904391.Spec : Prop :=
  ∀ n, P15270352262147904391.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P6408224132497747305

`A211065(n+1)+2*A211067(n+1)`
-/

namespace A211056.P6408224132497747305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211065 (n + 1) + 2 * A211067 (n + 1)

end

end A211056.P6408224132497747305

namespace A211056

/-- `A211065(n+1)+2*A211067(n+1)` -/
def P6408224132497747305.Spec : Prop :=
  ∀ n, P6408224132497747305.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P15988780932382963546

`A210369(n)+A210370(n)-A134506(n+1)`
-/

namespace A211056.P15988780932382963546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 n + (A210370 n - A134506 (n + 1))

end

end A211056.P15988780932382963546

namespace A211056

/-- `A210369(n)+A210370(n)-A134506(n+1)` -/
def P15988780932382963546.Spec : Prop :=
  ∀ n, P15988780932382963546.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P13769807919459413491

`A210378(n)+A210379(n)-A134506(n+1)`
-/

namespace A211056.P13769807919459413491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210378 n + (A210379 n - A134506 (n + 1))

end

end A211056.P13769807919459413491

namespace A211056

/-- `A210378(n)+A210379(n)-A134506(n+1)` -/
def P13769807919459413491.Spec : Prop :=
  ∀ n, P13769807919459413491.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P4087359017286149204

`A211064(n+1)+A211065(n+1)-A134506(n+1)`
-/

namespace A211056.P4087359017286149204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211064 (n + 1) + (A211065 (n + 1) - A134506 (n + 1))

end

end A211056.P4087359017286149204

namespace A211056

/-- `A211064(n+1)+A211065(n+1)-A134506(n+1)` -/
def P4087359017286149204.Spec : Prop :=
  ∀ n, P4087359017286149204.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P1882366048651830327

`2*A211059(n+1)`
-/

namespace A211056.P1882366048651830327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211059 (n + 1)

end

end A211056.P1882366048651830327

namespace A211056

/-- `2*A211059(n+1)` -/
def P1882366048651830327.Spec : Prop :=
  ∀ n, P1882366048651830327.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P15667497523889464507

`4*A211059(-xor(n, -1))/2`
-/

namespace A211056.P15667497523889464507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A211059 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2)

end

end A211056.P15667497523889464507

namespace A211056

/-- `4*A211059(-xor(n, -1))/2` -/
def P15667497523889464507.Spec : Prop :=
  ∀ n, P15667497523889464507.a n = (A211056 (n + 1) : ℚ)

end A211056

/-! ## A211056.P18322435295683704704

`A211059(n+1)+A211059(-xor(n, -1))`
-/

namespace A211056.P18322435295683704704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211059 (n + 1) + A211059 (-Int.xor (n : ℤ) (-1)).toNat

end

end A211056.P18322435295683704704

namespace A211056

/-- `A211059(n+1)+A211059(-xor(n, -1))` -/
def P18322435295683704704.Spec : Prop :=
  ∀ n, P18322435295683704704.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P6078435491429083498

`A211059(A000027(n+1))+A211059(n+1)`
-/

namespace A211056.P6078435491429083498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211059 (A000027 (n + 1)).toNat + A211059 (n + 1)

end

end A211056.P6078435491429083498

namespace A211056

/-- `A211059(A000027(n+1))+A211059(n+1)` -/
def P6078435491429083498.Spec : Prop :=
  ∀ n, P6078435491429083498.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P11054539711753200550

`A211059(A028310(n+1))+A211059(n+1)`
-/

namespace A211056.P11054539711753200550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211059 (A028310 (n + 1)).toNat + A211059 (n + 1)

end

end A211056.P11054539711753200550

namespace A211056

/-- `A211059(A028310(n+1))+A211059(n+1)` -/
def P11054539711753200550.Spec : Prop :=
  ∀ n, P11054539711753200550.a n = A211056 (n + 1)

end A211056

/-! ## A211056.P15118028133682577436

`2*(A212054(n+1)+A196227(n+1))`
-/

namespace A211056.P15118028133682577436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212054 (n + 1) + A196227 (n + 1))

end

end A211056.P15118028133682577436

namespace A211056

/-- `2*(A212054(n+1)+A196227(n+1))` -/
def P15118028133682577436.Spec : Prop :=
  ∀ n, P15118028133682577436.a n = A211056 (n + 1)

end A211056

/-!
# A211057: Number of 2 X 2 matrices having all terms in {1,...,n} and determinant in the closed interval [0,n].

The programs for A211057, there is no canonical definition to state claims against.
-/

/-! ## A211057.P17463672442160840049

`A211058(n+1)-A211060(n+1)`
-/

namespace A211057.P17463672442160840049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211058 (n + 1) - A211060 (n + 1)

end

end A211057.P17463672442160840049

/-! ## A211057.P2163813079436725891

`A018806(n+1)+C((n+1)², 2)-A211060(n+1)`
-/

namespace A211057.P2163813079436725891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) + (Nat.choose ((n + 1) ^ 2) 2 : ℤ) - A211060 (n + 1)

end

end A211057.P2163813079436725891

/-! ## A211057.P11117852442269587028

`A211058(n+1)+A057428(n)*A211060(n+1)`
-/

namespace A211057.P11117852442269587028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211058 (n + 1) + A057428 n * A211060 (n + 1)

end

end A211057.P11117852442269587028

/-! ## A211057.P2999478728010444855

`A018806(n+1)+A083374(n+1)-A211060(n+1)`
-/

namespace A211057.P2999478728010444855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) + (A083374 (n + 1) - A211060 (n + 1))

end

end A211057.P2999478728010444855

/-! ## A211057.P14698385964240051299

`A211053(n+1)+A211058(n+1)-A211061(n+1)`
-/

namespace A211057.P14698385964240051299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211053 (n + 1) + (A211058 (n + 1) - A211061 (n + 1))

end

end A211057.P14698385964240051299

/-! ## A211057.P3068565323588332457

`A211066(n+1)+A211068(n+1)-A211060(n+1)`
-/

namespace A211057.P3068565323588332457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211066 (n + 1) + (A211068 (n + 1) - A211060 (n + 1))

end

end A211057.P3068565323588332457

/-! ## A211057.P1869262598984715626

`(n+1)^4-A211059(n+1)-A211060(n+1)`
-/

namespace A211057.P1869262598984715626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A211059 (n + 1) - A211060 (n + 1)

end

end A211057.P1869262598984715626

/-! ## A211057.P5728984545043158327

`A212109(n+1)-A211059(n+1)`
-/

namespace A211057.P5728984545043158327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212109 (n + 1) - A211059 (n + 1)

end

end A211057.P5728984545043158327

/-! ## A211057.P8338002797094171212

`A211058(n+1)-((n+1)²²-A212109(n+1))`
-/

namespace A211057.P8338002797094171212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211058 (n + 1) - ((((n + 1) ^ 2) ^ 2 : ℤ) - A212109 (n + 1))

end

end A211057.P8338002797094171212

/-!
# A211058: Number of 2 X 2 matrices having all terms in {1,...,n} and nonnegative determinant.

The programs for A211058, the canonical program `A211058.P5210931366542978941` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211058 has offset 1).

The definition of A211058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211058.P5210931366542978941

`A018806(n+1)+C((n+1)², 2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A211058

/-- `A018806(n+1)+C((n+1)², 2)` -/
def P5210931366542978941.Spec : Prop :=
  ∀ n, P5210931366542978941.a n = A211058 (n + 1)

theorem P5210931366542978941.correct : P5210931366542978941.Spec := by
  intro n
  simp only [A211058, Nat.add_sub_cancel]

end A211058

/-! ## A211058.P2615233233671846015

`∑[Δ[n^4]+Δ[A134506(n)]]/2`
-/

namespace A211058.P2615233233671846015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (f3 (n + 1) - f3 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A211058.P2615233233671846015

namespace A211058

/-- `∑[Δ[n^4]+Δ[A134506(n)]]/2` -/
def P2615233233671846015.Spec : Prop :=
  ∀ n, P2615233233671846015.a n = (A211058 (n + 1) : ℚ)

end A211058

/-! ## A211058.P7353007334421016245

`A083374(n+1)+A018806(n+1)`
-/

namespace A211058.P7353007334421016245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + A018806 (n + 1)

end

end A211058.P7353007334421016245

namespace A211058

/-- `A083374(n+1)+A018806(n+1)` -/
def P7353007334421016245.Spec : Prop :=
  ∀ n, P7353007334421016245.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P3324402221958249101

`A211060(n+1)+A211057(n+1)`
-/

namespace A211058.P3324402221958249101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211060 (n + 1) + A211057 (n + 1)

end

end A211058.P3324402221958249101

namespace A211058

/-- `A211060(n+1)+A211057(n+1)` -/
def P3324402221958249101.Spec : Prop :=
  ∀ n, P3324402221958249101.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P10436655391466535345

`A211068(n+1)+A211066(n+1)`
-/

namespace A211058.P10436655391466535345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211068 (n + 1) + A211066 (n + 1)

end

end A211058.P10436655391466535345

namespace A211058

/-- `A211068(n+1)+A211066(n+1)` -/
def P10436655391466535345.Spec : Prop :=
  ∀ n, P10436655391466535345.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P10633115440626256809

`A210290(n+1)-A015237(n+2)`
-/

namespace A211058.P10633115440626256809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210290 (n + 1) - A015237 (n + 2)

end

end A211058.P10633115440626256809

namespace A211058

/-- `A210290(n+1)-A015237(n+2)` -/
def P10633115440626256809.Spec : Prop :=
  ∀ n, P10633115440626256809.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P16023603472448750457

`A083374(n+1)+∑[A344598(n+1)]`
-/

namespace A211058.P16023603472448750457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211058.P16023603472448750457

namespace A211058

/-- `A083374(n+1)+∑[A344598(n+1)]` -/
def P16023603472448750457.Spec : Prop :=
  ∀ n, P16023603472448750457.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P1491521576476552180

`A211066(n+1)+A211065(n+1)/2`
-/

namespace A211058.P1491521576476552180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211066 (n + 1) : ℚ) + (A211065 (n + 1) : ℚ) / 2

end

end A211058.P1491521576476552180

namespace A211058

/-- `A211066(n+1)+A211065(n+1)/2` -/
def P1491521576476552180.Spec : Prop :=
  ∀ n, P1491521576476552180.a n = (A211058 (n + 1) : ℚ)

end A211058

/-! ## A211058.P6766397696153581760

`A083374(n+1)+(A134506(n+1)+(n+1)²)/2`
-/

namespace A211058.P6766397696153581760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083374 (n + 1) : ℚ) + (A134506 (n + 1) + ((n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A211058.P6766397696153581760

namespace A211058

/-- `A083374(n+1)+(A134506(n+1)+(n+1)²)/2` -/
def P6766397696153581760.Spec : Prop :=
  ∀ n, P6766397696153581760.a n = (A211058 (n + 1) : ℚ)

end A211058

/-! ## A211058.P1436739075461359095

`A083374(n+1)+∑[2*A006579(n+1)+1+n]`
-/

namespace A211058.P1436739075461359095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006579 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211058.P1436739075461359095

namespace A211058

/-- `A083374(n+1)+∑[2*A006579(n+1)+1+n]` -/
def P1436739075461359095.Spec : Prop :=
  ∀ n, P1436739075461359095.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P17153330719791831658

`A083374(n+1)+∑[2*A018804(n+1)-(n+1)]`
-/

namespace A211058.P17153330719791831658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018804 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211058.P17153330719791831658

namespace A211058

/-- `A083374(n+1)+∑[2*A018804(n+1)-(n+1)]` -/
def P17153330719791831658.Spec : Prop :=
  ∀ n, P17153330719791831658.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P1521239306112443680

`A083374(n+1)+A272718(n+1)+A178881(n+1)`
-/

namespace A211058.P1521239306112443680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + (A272718 (n + 1) + A178881 (n + 1))

end

end A211058.P1521239306112443680

namespace A211058

/-- `A083374(n+1)+A272718(n+1)+A178881(n+1)` -/
def P1521239306112443680.Spec : Prop :=
  ∀ n, P1521239306112443680.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P104740533216660365

`A134506(n+1)+A211068(n+1)+A211067(n+1)`
-/

namespace A211058.P104740533216660365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 (n + 1) + (A211068 (n + 1) + A211067 (n + 1))

end

end A211058.P104740533216660365

namespace A211058

/-- `A134506(n+1)+A211068(n+1)+A211067(n+1)` -/
def P104740533216660365.Spec : Prop :=
  ∀ n, P104740533216660365.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P8436515196298210717

`A211064(n+1)+A211068(n+1)-A211067(n+1)`
-/

namespace A211058.P8436515196298210717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211064 (n + 1) + (A211068 (n + 1) - A211067 (n + 1))

end

end A211058.P8436515196298210717

namespace A211058

/-- `A211064(n+1)+A211068(n+1)-A211067(n+1)` -/
def P8436515196298210717.Spec : Prop :=
  ∀ n, P8436515196298210717.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P3536094966224644768

`A212053(n+1)-A196227(n+1)`
-/

namespace A211058.P3536094966224644768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 (n + 1) - A196227 (n + 1)

end

end A211058.P3536094966224644768

namespace A211058

/-- `A212053(n+1)-A196227(n+1)` -/
def P3536094966224644768.Spec : Prop :=
  ∀ n, P3536094966224644768.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P13653422200919225013

`(n+1)^4-A211059(n+1)`
-/

namespace A211058.P13653422200919225013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A211059 (n + 1)

end

end A211058.P13653422200919225013

namespace A211058

/-- `(n+1)^4-A211059(n+1)` -/
def P13653422200919225013.Spec : Prop :=
  ∀ n, P13653422200919225013.a n = A211058 (n + 1)

theorem P13653422200919225013.correct : P13653422200919225013.Spec := by
  intro n
  simp only [A211058, Nat.add_sub_cancel, A211058.P13653422200919225013.a, A211058.P5210931366542978941.a, A018806, A018806.P10991983438619491476.f1, A018806.P10991983438619491476.a, A211059, A211059.P885985816871605879.a, A344598, A344598.P13180373970547759744.f1, A344598.P13180373970547759744.a, A140434, A140434.P96571140770797263.a, A004277, A004277.P16255821370285667660.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211058

/-! ## A211058.P8882391267666516494

`A211059(n+1)+A134506(n+1)`
-/

namespace A211058.P8882391267666516494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211059 (n + 1) + A134506 (n + 1)

end

end A211058.P8882391267666516494

namespace A211058

/-- `A211059(n+1)+A134506(n+1)` -/
def P8882391267666516494.Spec : Prop :=
  ∀ n, P8882391267666516494.a n = A211058 (n + 1)

end A211058

/-! ## A211058.P2751403584841037238

`A018806(n+1)+A000217(n*(n+2))`
-/

namespace A211058.P2751403584841037238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) + A000217 (n * (n + 2))

end

end A211058.P2751403584841037238

namespace A211058

/-- `A018806(n+1)+A000217(n*(n+2))` -/
def P2751403584841037238.Spec : Prop :=
  ∀ n, P2751403584841037238.a n = A211058 (n + 1)

theorem P2751403584841037238.correct : P2751403584841037238.Spec := by
  intro n
  simp only [A211058, Nat.add_sub_cancel, A211058.P2751403584841037238.a, A211058.P5210931366542978941.a, A000217, A000217.P10269402890581615239.a, A018806, A018806.P10991983438619491476.f1, A018806.P10991983438619491476.a, A344598, A344598.P13180373970547759744.f1, A344598.P13180373970547759744.a, A140434, A140434.P96571140770797263.a, A004277, A004277.P16255821370285667660.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211058

/-!
# A211059: Number of 2 X 2 matrices having all terms in {1,...,n} and positive determinant.

The programs for A211059, the canonical program `A211059.P885985816871605879` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211059 has offset 1).

The definition of A211059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211059.P15419144010252025720

`A211056(n+1)/2`
-/

namespace A211059.P15419144010252025720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211056 (n + 1) : ℚ) / 2

end

end A211059.P15419144010252025720

namespace A211059

/-- `A211056(n+1)/2` -/
def P15419144010252025720.Spec : Prop :=
  ∀ n, P15419144010252025720.a n = (A211059 (n + 1) : ℚ)

end A211059

/-! ## A211059.P885985816871605879

`(n+1)^4-A211058(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A211059

/-- `(n+1)^4-A211058(n+1)` -/
def P885985816871605879.Spec : Prop :=
  ∀ n, P885985816871605879.a n = A211059 (n + 1)

theorem P885985816871605879.correct : P885985816871605879.Spec := by
  intro n
  simp only [A211059, Nat.add_sub_cancel]

end A211059

/-! ## A211059.P14044887305586410795

`∑[(Δ[n^4]-Δ[A134506(n)])/2]`
-/

namespace A211059.P14044887305586410795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (f3 (n + 1) - f3 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211059.P14044887305586410795

namespace A211059

/-- `∑[(Δ[n^4]-Δ[A134506(n)])/2]` -/
def P14044887305586410795.Spec : Prop :=
  ∀ n, P14044887305586410795.a n = (A211059 (n + 1) : ℚ)

end A211059

/-! ## A211059.P16749915386666043684

`((n+1)^4-A134506(n+1))/2`
-/

namespace A211059.P16749915386666043684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 4 : ℤ) - A134506 (n + 1) : ℚ) / 2

end

end A211059.P16749915386666043684

namespace A211059

/-- `((n+1)^4-A134506(n+1))/2` -/
def P16749915386666043684.Spec : Prop :=
  ∀ n, P16749915386666043684.a n = (A211059 (n + 1) : ℚ)

end A211059

/-! ## A211059.P11704627239890177916

`C((n+1)²+1, 2)-A018806(n+1)`
-/

namespace A211059.P11704627239890177916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2 + 1) 2 : ℤ) - A018806 (n + 1)

end

end A211059.P11704627239890177916

namespace A211059

/-- `C((n+1)²+1, 2)-A018806(n+1)` -/
def P11704627239890177916.Spec : Prop :=
  ∀ n, P11704627239890177916.a n = A211059 (n + 1)

theorem P11704627239890177916.correct : P11704627239890177916.Spec := by
  intro n
  simp only [A211059, Nat.add_sub_cancel, A211059.P11704627239890177916.a, A211059.P885985816871605879.a, A018806, A018806.P10991983438619491476.f1, A018806.P10991983438619491476.a, A211058, A211058.P5210931366542978941.a, A344598, A344598.P13180373970547759744.f1, A344598.P13180373970547759744.a, A140434, A140434.P96571140770797263.a, A004277, A004277.P16255821370285667660.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A211059

/-! ## A211059.P8797744729247165359

`∑[A005898(n)]-A018806(n+1)`
-/

namespace A211059.P8797744729247165359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A018806 (n + 1)

end

end A211059.P8797744729247165359

namespace A211059

/-- `∑[A005898(n)]-A018806(n+1)` -/
def P8797744729247165359.Spec : Prop :=
  ∀ n, P8797744729247165359.a n = A211059 (n + 1)

end A211059

/-! ## A211059.P108041060383966306

`Δ[A000538(n)]%A211058(n+1)`
-/

namespace A211059.P108041060383966306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A211058 (n + 1))

end

end A211059.P108041060383966306

namespace A211059

/-- `Δ[A000538(n)]%A211058(n+1)` -/
def P108041060383966306.Spec : Prop :=
  ∀ n, P108041060383966306.a n = A211059 (n + 1)

end A211059

/-! ## A211059.P289650589241172619

`A211068(n+1)+A211067(n+1)`
-/

namespace A211059.P289650589241172619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211068 (n + 1) + A211067 (n + 1)

end

end A211059.P289650589241172619

namespace A211059

/-- `A211068(n+1)+A211067(n+1)` -/
def P289650589241172619.Spec : Prop :=
  ∀ n, P289650589241172619.a n = A211059 (n + 1)

end A211059

/-! ## A211059.P1332849437611456237

`A211058(n+1)-A134506(n+1)`
-/

namespace A211059.P1332849437611456237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211058 (n + 1) - A134506 (n + 1)

end

end A211059.P1332849437611456237

namespace A211059

/-- `A211058(n+1)-A134506(n+1)` -/
def P1332849437611456237.Spec : Prop :=
  ∀ n, P1332849437611456237.a n = A211059 (n + 1)

end A211059

/-! ## A211059.P15989355842010709518

`A000290(n+1)²%A211058(n+1)`
-/

namespace A211059.P15989355842010709518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 1) ^ 2) (A211058 (n + 1))

end

end A211059.P15989355842010709518

namespace A211059

/-- `A000290(n+1)²%A211058(n+1)` -/
def P15989355842010709518.Spec : Prop :=
  ∀ n, P15989355842010709518.a n = A211059 (n + 1)

end A211059

/-! ## A211059.P16961144759261244314

`∑[A005917(n+1)]%A211058(n+1)`
-/

namespace A211059.P16961144759261244314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A211058 (n + 1))

end

end A211059.P16961144759261244314

namespace A211059

/-- `∑[A005917(n+1)]%A211058(n+1)` -/
def P16961144759261244314.Spec : Prop :=
  ∀ n, P16961144759261244314.a n = A211059 (n + 1)

end A211059

/-! ## A211059.P12871867036653079641

`A211067(n+1)+A211065(n+1)/2`
-/

namespace A211059.P12871867036653079641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211067 (n + 1) : ℚ) + (A211065 (n + 1) : ℚ) / 2

end

end A211059.P12871867036653079641

namespace A211059

/-- `A211067(n+1)+A211065(n+1)/2` -/
def P12871867036653079641.Spec : Prop :=
  ∀ n, P12871867036653079641.a n = (A211059 (n + 1) : ℚ)

end A211059

/-! ## A211059.P9413467862438174838

`A211066(n+1)+A211068(n+1)-A134506(n+1)`
-/

namespace A211059.P9413467862438174838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211066 (n + 1) + (A211068 (n + 1) - A134506 (n + 1))

end

end A211059.P9413467862438174838

namespace A211059

/-- `A211066(n+1)+A211068(n+1)-A134506(n+1)` -/
def P9413467862438174838.Spec : Prop :=
  ∀ n, P9413467862438174838.a n = A211059 (n + 1)

end A211059

/-! ## A211059.P11053638260585941962

`A211064(n+1)+A211068(n+1)-A211066(n+1)`
-/

namespace A211059.P11053638260585941962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211064 (n + 1) + (A211068 (n + 1) - A211066 (n + 1))

end

end A211059.P11053638260585941962

namespace A211059

/-- `A211064(n+1)+A211068(n+1)-A211066(n+1)` -/
def P11053638260585941962.Spec : Prop :=
  ∀ n, P11053638260585941962.a n = A211059 (n + 1)

end A211059

/-! ## A211059.P15509382154519154924

`A212054(n+1)+A196227(n+1)`
-/

namespace A211059.P15509382154519154924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212054 (n + 1) + A196227 (n + 1)

end

end A211059.P15509382154519154924

namespace A211059

/-- `A212054(n+1)+A196227(n+1)` -/
def P15509382154519154924.Spec : Prop :=
  ∀ n, P15509382154519154924.a n = A211059 (n + 1)

end A211059

/-!
# A211060: Number of 2 X 2 matrices having all terms in {1,...,n} and determinant >n.

The programs for A211060, there is no canonical definition to state claims against.
-/

/-! ## A211060.P10091142436535339405

`A211058(n+1)-A211057(n+1)`
-/

namespace A211060.P10091142436535339405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211058 (n + 1) - A211057 (n + 1)

end

end A211060.P10091142436535339405

/-! ## A211060.P6598183400246270659

`A211061(n+1)-A211053(n+1)`
-/

namespace A211060.P6598183400246270659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211061 (n + 1) - A211053 (n + 1)

end

end A211060.P6598183400246270659

/-! ## A211060.P2424560819647285688

`A211061(n+1)+A057428(n)*A211053(n+1)`
-/

namespace A211060.P2424560819647285688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211061 (n + 1) + A057428 n * A211053 (n + 1)

end

end A211060.P2424560819647285688

/-! ## A211060.P8508435172213464531

`A018806(n+1)+A083374(n+1)-A211057(n+1)`
-/

namespace A211060.P8508435172213464531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) + (A083374 (n + 1) - A211057 (n + 1))

end

end A211060.P8508435172213464531

/-! ## A211060.P11371589321855081206

`A211066(n+1)+A211068(n+1)-A211057(n+1)`
-/

namespace A211060.P11371589321855081206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211066 (n + 1) + (A211068 (n + 1) - A211057 (n + 1))

end

end A211060.P11371589321855081206

/-! ## A211060.P17154229926146042816

`(n+1)^4-A212108(n+1)-A211053(n+1)`
-/

namespace A211060.P17154229926146042816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A212108 (n + 1) - A211053 (n + 1)

end

end A211060.P17154229926146042816

/-! ## A211060.P1930746909211504647

`A000290(n+1)²%A212108(n+1)-A211053(n+1)`
-/

namespace A211060.P1930746909211504647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 1) ^ 2) (A212108 (n + 1)) - A211053 (n + 1)

end

end A211060.P1930746909211504647

/-! ## A211060.P8123627126638264108

`A241496(2*n)²%A212108(n+1)-A211053(n+1)`
-/

namespace A211060.P8123627126638264108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241496 (2 * n) ^ 2) (A212108 (n + 1)) - A211053 (n + 1)

end

end A211060.P8123627126638264108

/-! ## A211060.P10809225886875729891

`(n+1)^4-A212109(n+1)`
-/

namespace A211060.P10809225886875729891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A212109 (n + 1)

end

end A211060.P10809225886875729891

/-!
# A211061: Number of 2 X 2 matrices having all terms in {1,...,n} and determinant >= n.

The programs for A211061, there is no canonical definition to state claims against.
-/

/-! ## A211061.P9522964283073623262

`A211060(n+1)+A211053(n+1)`
-/

namespace A211061.P9522964283073623262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211060 (n + 1) + A211053 (n + 1)

end

end A211061.P9522964283073623262

/-! ## A211061.P15367588672396122976

`A211053(n+1)+A211058(n+1)-A211057(n+1)`
-/

namespace A211061.P15367588672396122976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211053 (n + 1) + (A211058 (n + 1) - A211057 (n + 1))

end

end A211061.P15367588672396122976

/-! ## A211061.P1887395986040196345

`A211053(n+1)+A211066(n+1)+A211068(n+1)-A211057(n+1)`
-/

namespace A211061.P1887395986040196345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211053 (n + 1) + (A211066 (n + 1) + (A211068 (n + 1) - A211057 (n + 1)))

end

end A211061.P1887395986040196345

/-! ## A211061.P7948550352219688917

`(n+1)^4-A212108(n+1)`
-/

namespace A211061.P7948550352219688917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A212108 (n + 1)

end

end A211061.P7948550352219688917

/-! ## A211061.P17513306106949275328

`A000290(n+1)²%A212108(n+1)`
-/

namespace A211061.P17513306106949275328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 1) ^ 2) (A212108 (n + 1))

end

end A211061.P17513306106949275328

/-! ## A211061.P1094446802398731095

`A241496(2*n)²%A212108(n+1)`
-/

namespace A211061.P1094446802398731095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241496 (2 * n) ^ 2) (A212108 (n + 1))

end

end A211061.P1094446802398731095

/-! ## A211061.P4551660123327263642

`A212740(n)+A212741(n)-A212108(n+1)`
-/

namespace A211061.P4551660123327263642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 n + (A212741 n - A212108 (n + 1))

end

end A211061.P4551660123327263642

/-! ## A211061.P2304319509611108112

`A212742(n)+A212743(n)-A212108(n+1)`
-/

namespace A211061.P2304319509611108112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 n + (A212743 n - A212108 (n + 1))

end

end A211061.P2304319509611108112

/-! ## A211061.P4510870939091752926

`A212740(n+1)+A212743(n)-A212108(n+1)`
-/

namespace A211061.P4510870939091752926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 (n + 1) + (A212743 n - A212108 (n + 1))

end

end A211061.P4510870939091752926

/-! ## A211061.P5423271247233580156

`A211787(n+1)+A211797(n+1)-A212108(n+1)`
-/

namespace A211061.P5423271247233580156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 (n + 1) + (A211797 (n + 1) - A212108 (n + 1))

end

end A211061.P5423271247233580156

/-! ## A211061.P6553163323590861803

`A212088(n+1)+A212089(n+1)-A212108(n+1)`
-/

namespace A211061.P6553163323590861803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 (n + 1) + (A212089 (n + 1) - A212108 (n + 1))

end

end A211061.P6553163323590861803

/-! ## A211061.P12173420618949824560

`A212134(n+1)+A212135(n+1)-A212108(n+1)`
-/

namespace A211061.P12173420618949824560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 (n + 1) + (A212135 (n + 1) - A212108 (n + 1))

end

end A211061.P12173420618949824560

/-! ## A211061.P8598466146928551857

`A212249(n+1)+A212250(n+1)-A212108(n+1)`
-/

namespace A211061.P8598466146928551857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212249 (n + 1) + (A212250 (n + 1) - A212108 (n + 1))

end

end A211061.P8598466146928551857

/-! ## A211061.P17398701547888773075

`A211053(n+1)+(n+1)²²-A212109(n+1)`
-/

namespace A211061.P17398701547888773075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211053 (n + 1) + ((((n + 1) ^ 2) ^ 2 : ℤ) - A212109 (n + 1))

end

end A211061.P17398701547888773075

/-! ## A211061.P238590367544230099

`A212104(n+1)+A212105(n+1)-A212108(n+1)`
-/

namespace A211061.P238590367544230099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 (n + 1) + (A212105 (n + 1) - A212108 (n + 1))

end

end A211061.P238590367544230099

/-! ## A211061.P12220549189033280238

`A212106(n+1)+A212107(n+1)-A212108(n+1)`
-/

namespace A211061.P12220549189033280238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 (n + 1) + (A212107 (n + 1) - A212108 (n + 1))

end

end A211061.P12220549189033280238

/-! ## A211061.P11603788194603257035

`A212108(n+1)-A211070(n+1)`
-/

namespace A211061.P11603788194603257035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212108 (n + 1) - A211070 (n + 1)

end

end A211061.P11603788194603257035

/-!
# A211062: Number of 2 X 2 matrices having all terms in {1,...,n} and determinant >= 2n.

The programs for A211062, there is no canonical definition to state claims against.
-/

/-! ## A211062.P17898997240987704347

`A212106(n)-A001222(A303921(n))`
-/

namespace A211062.P17898997240987704347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 n - A001222 (A303921 n).toNat

end

end A211062.P17898997240987704347

/-!
# A211063: Number of 2 X 2 matrices having all terms in {1,...,n} and determinant >=3n.

The programs for A211063, there is no canonical definition to state claims against.
-/

/-! ## A211063.P9696338149414555095

`A256592(A099131(n+1))`
-/

namespace A211063.P9696338149414555095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256592 (A099131 (n + 1)).toNat

end

end A211063.P9696338149414555095

/-! ## A211063.P15738151727953255190

`A256592(A369444(n+1))`
-/

namespace A211063.P15738151727953255190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256592 (A369444 (n + 1)).toNat

end

end A211063.P15738151727953255190

/-! ## A211063.P10495295786294150404

`A348325(A395503(n+1))`
-/

namespace A211063.P10495295786294150404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348325 (A395503 (n + 1)).toNat

end

end A211063.P10495295786294150404

/-!
# A211064: Number of 2 X 2 matrices having all terms in {1,...,n} and even determinant.

The programs for A211064, the canonical program `A211064.P13014287104965376940` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211064 has offset 1).

The definition of A211064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211064.P15653541888021010143

`(n+1)²²-A211065(n+1)`
-/

namespace A211064.P15653541888021010143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A211065 (n + 1)

end

end A211064.P15653541888021010143

namespace A211064

/-- `(n+1)²²-A211065(n+1)` -/
def P15653541888021010143.Spec : Prop :=
  ∀ n, P15653541888021010143.a n = A211064 (n + 1)

end A211064

/-! ## A211064.P13014287104965376940

`A212893(n)+A210370(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211064

/-- `A212893(n)+A210370(n)` -/
def P13014287104965376940.Spec : Prop :=
  ∀ n, P13014287104965376940.a n = A211064 (n + 1)

theorem P13014287104965376940.correct : P13014287104965376940.Spec := by
  intro n
  simp only [A211064, Nat.add_sub_cancel]

end A211064

/-! ## A211064.P4204837733215189279

`A211067(n+1)+A211066(n+1)`
-/

namespace A211064.P4204837733215189279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211067 (n + 1) + A211066 (n + 1)

end

end A211064.P4204837733215189279

namespace A211064

/-- `A211067(n+1)+A211066(n+1)` -/
def P4204837733215189279.Spec : Prop :=
  ∀ n, P4204837733215189279.a n = A211064 (n + 1)

theorem P4204837733215189279.correct : P4204837733215189279.Spec := by
  intro n
  simp only [A211064, Nat.add_sub_cancel, A211064.P4204837733215189279.a, A211064.P13014287104965376940.a, A210370, A210370.P15654090158491504536.a, A211066, A211066.P8286299359558462828.a, A211067, A211067.P18215761913343296145.a, A212893, A212893.P71681876360897335.a, A018806, A018806.P10991983438619491476.f1, A018806.P10991983438619491476.a, A083374, A083374.P16457191761393268953.a, A211068, A211068.P11930798809199669660.a, A211065, A211065.P8194263181737807616.f1, A211065.P8194263181737807616.a, A344598, A344598.P13180373970547759744.f1, A344598.P13180373970547759744.a, A140434, A140434.P96571140770797263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211064

/-! ## A211064.P7080943826478179610

`A134506(n+1)+2*A211067(n+1)`
-/

namespace A211064.P7080943826478179610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 (n + 1) + 2 * A211067 (n + 1)

end

end A211064.P7080943826478179610

namespace A211064

/-- `A134506(n+1)+2*A211067(n+1)` -/
def P7080943826478179610.Spec : Prop :=
  ∀ n, P7080943826478179610.a n = A211064 (n + 1)

end A211064

/-! ## A211064.P15935150638402182770

`A211066(n+1)+A211066(n+1)-A134506(n+1)`
-/

namespace A211064.P15935150638402182770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211066 (n + 1) + (A211066 (n + 1) - A134506 (n + 1))

end

end A211064.P15935150638402182770

namespace A211064

/-- `A211066(n+1)+A211066(n+1)-A134506(n+1)` -/
def P15935150638402182770.Spec : Prop :=
  ∀ n, P15935150638402182770.a n = A211064 (n + 1)

end A211064

/-!
# A211065: Number of 2 X 2 matrices having all terms in {1,...,n} and odd determinant.

The programs for A211065, the canonical program `A211065.P8194263181737807616` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211065 has offset 1).

The definition of A211065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211065.P8194263181737807616

`2*(round((n-1)/2)+1)²*∑[3*n-lcm(2, n+1)+2]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A211065

/-- `2*(round((n-1)/2)+1)²*∑[3*n-lcm(2, n+1)+2]` -/
def P8194263181737807616.Spec : Prop :=
  ∀ n, P8194263181737807616.a n = A211065 (n + 1)

theorem P8194263181737807616.correct : P8194263181737807616.Spec := by
  intro n
  simp only [A211065, Nat.add_sub_cancel]

end A211065

/-! ## A211065.P4311099318213588623

`2*A211068(n+1)`
-/

namespace A211065.P4311099318213588623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211068 (n + 1)

end

end A211065.P4311099318213588623

namespace A211065

/-- `2*A211068(n+1)` -/
def P4311099318213588623.Spec : Prop :=
  ∀ n, P4311099318213588623.a n = A211065 (n + 1)

end A211065

/-! ## A211065.P17498904196597722654

`(n+1)²²-A211064(n+1)`
-/

namespace A211065.P17498904196597722654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A211064 (n + 1)

end

end A211065.P17498904196597722654

namespace A211065

/-- `(n+1)²²-A211064(n+1)` -/
def P17498904196597722654.Spec : Prop :=
  ∀ n, P17498904196597722654.a n = A211065 (n + 1)

end A211065

/-! ## A211065.P4101915433041500817

`A210369(n)-A212893(n)`
-/

namespace A211065.P4101915433041500817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 n - A212893 n

end

end A211065.P4101915433041500817

namespace A211065

/-- `A210369(n)-A212893(n)` -/
def P4101915433041500817.Spec : Prop :=
  ∀ n, P4101915433041500817.a n = A211065 (n + 1)

end A211065

/-! ## A211065.P13688485920425581136

`2*(A212764(n)+A212761(n))`
-/

namespace A211065.P13688485920425581136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212764 n + A212761 n)

end

end A211065.P13688485920425581136

namespace A211065

/-- `2*(A212764(n)+A212761(n))` -/
def P13688485920425581136.Spec : Prop :=
  ∀ n, P13688485920425581136.a n = A211065 (n + 1)

end A211065

/-! ## A211065.P5053570409199947365

`2*A210433(n+1)*A114119(n)`
-/

namespace A211065.P5053570409199947365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210433 (n + 1) * A114119 n

end

end A211065.P5053570409199947365

namespace A211065

/-- `2*A210433(n+1)*A114119(n)` -/
def P5053570409199947365.Spec : Prop :=
  ∀ n, P5053570409199947365.a n = A211065 (n + 1)

end A211065

/-! ## A211065.P10451604638416226444

`A211068(n+1)+A211068((n+1)%A237038(n+1))`
-/

namespace A211065.P10451604638416226444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211068 (n + 1) + A211068 (Int.tmod (n + 1 : ℤ) (A237038 (n + 1))).toNat

end

end A211065.P10451604638416226444

namespace A211065

/-- `A211068(n+1)+A211068((n+1)%A237038(n+1))` -/
def P10451604638416226444.Spec : Prop :=
  ∀ n, P10451604638416226444.a n = A211065 (n + 1)

end A211065

/-! ## A211065.P14800647387374627943

`2*∑[A059029(n)]*A008794(n+2)`
-/

namespace A211065.P14800647387374627943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j) * A008794 (n + 2))

end

end A211065.P14800647387374627943

namespace A211065

/-- `2*∑[A059029(n)]*A008794(n+2)` -/
def P14800647387374627943.Spec : Prop :=
  ∀ n, P14800647387374627943.a n = A211065 (n + 1)

end A211065

/-! ## A211065.P10455697514367408069

`2*A008794(n+2)*A032438(n+1)`
-/

namespace A211065.P10455697514367408069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008794 (n + 2) * A032438 (n + 1))

end

end A211065.P10455697514367408069

namespace A211065

/-- `2*A008794(n+2)*A032438(n+1)` -/
def P10455697514367408069.Spec : Prop :=
  ∀ n, P10455697514367408069.a n = A211065 (n + 1)

end A211065

/-! ## A211065.P17088860354416167755

`A211068(n+1)+A211068(n+1)+A005171(A000040(n+1))`
-/

namespace A211065.P17088860354416167755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211068 (n + 1) + (A211068 (n + 1) + A005171 (A000040 (n + 1)).toNat)

end

end A211065.P17088860354416167755

namespace A211065

/-- `A211068(n+1)+A211068(n+1)+A005171(A000040(n+1))` -/
def P17088860354416167755.Spec : Prop :=
  ∀ n, P17088860354416167755.a n = A211065 (n + 1)

end A211065

/-! ## A211065.P6004314570846366966

`2*(A211058(n+1)-A211066(n+1))`
-/

namespace A211065.P6004314570846366966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A211058 (n + 1) - A211066 (n + 1))

end

end A211065.P6004314570846366966

namespace A211065

/-- `2*(A211058(n+1)-A211066(n+1))` -/
def P6004314570846366966.Spec : Prop :=
  ∀ n, P6004314570846366966.a n = A211065 (n + 1)

end A211065

/-! ## A211065.P12701855489404285094

`2*(A211059(n+1)-A211067(n+1))`
-/

namespace A211065.P12701855489404285094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A211059 (n + 1) - A211067 (n + 1))

end

end A211065.P12701855489404285094

namespace A211065

/-- `2*(A211059(n+1)-A211067(n+1))` -/
def P12701855489404285094.Spec : Prop :=
  ∀ n, P12701855489404285094.a n = A211065 (n + 1)

end A211065

/-!
# A211066: Number of 2 X 2 matrices having all terms in {1,...,n} and nonnegative even determinant.

The programs for A211066, the canonical program `A211066.P8286299359558462828` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211066 has offset 1).

The definition of A211066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211066.P11339963505763762539

`(A211064(n+1)+A134506(n+1))/2`
-/

namespace A211066.P11339963505763762539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211064 (n + 1) + A134506 (n + 1) : ℚ) / 2

end

end A211066.P11339963505763762539

namespace A211066

/-- `(A211064(n+1)+A134506(n+1))/2` -/
def P11339963505763762539.Spec : Prop :=
  ∀ n, P11339963505763762539.a n = (A211066 (n + 1) : ℚ)

end A211066

/-! ## A211066.P9588073218224758218

`A211067(n+1)+A134506(n+1)`
-/

namespace A211066.P9588073218224758218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211067 (n + 1) + A134506 (n + 1)

end

end A211066.P9588073218224758218

namespace A211066

/-- `A211067(n+1)+A134506(n+1)` -/
def P9588073218224758218.Spec : Prop :=
  ∀ n, P9588073218224758218.a n = A211066 (n + 1)

end A211066

/-! ## A211066.P18375229330475951874

`A211064(n+1)-A211067(n+1)`
-/

namespace A211066.P18375229330475951874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211064 (n + 1) - A211067 (n + 1)

end

end A211066.P18375229330475951874

namespace A211066

/-- `A211064(n+1)-A211067(n+1)` -/
def P18375229330475951874.Spec : Prop :=
  ∀ n, P18375229330475951874.a n = A211066 (n + 1)

theorem P18375229330475951874.correct : P18375229330475951874.Spec := by
  intro n
  simp only [A211066, Nat.add_sub_cancel, A211066.P18375229330475951874.a, A211066.P8286299359558462828.a, A018806, A018806.P10991983438619491476.f1, A018806.P10991983438619491476.a, A083374, A083374.P16457191761393268953.a, A211064, A211064.P13014287104965376940.a, A211067, A211067.P18215761913343296145.a, A211068, A211068.P11930798809199669660.a, A210370, A210370.P15654090158491504536.a, A211065, A211065.P8194263181737807616.f1, A211065.P8194263181737807616.a, A212893, A212893.P71681876360897335.a, A344598, A344598.P13180373970547759744.f1, A344598.P13180373970547759744.a, A140434, A140434.P96571140770797263.a, A004277, A004277.P16255821370285667660.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211066

/-! ## A211066.P3753932043719206156

`(n+1)²²-A211065(n+1)-A211067(n+1)`
-/

namespace A211066.P3753932043719206156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A211065 (n + 1) - A211067 (n + 1)

end

end A211066.P3753932043719206156

namespace A211066

/-- `(n+1)²²-A211065(n+1)-A211067(n+1)` -/
def P3753932043719206156.Spec : Prop :=
  ∀ n, P3753932043719206156.a n = A211066 (n + 1)

end A211066

/-! ## A211066.P8759220210486013202

`A210370(n)+A212893(n)-A211067(n+1)`
-/

namespace A211066.P8759220210486013202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210370 n + (A212893 n - A211067 (n + 1))

end

end A211066.P8759220210486013202

namespace A211066

/-- `A210370(n)+A212893(n)-A211067(n+1)` -/
def P8759220210486013202.Spec : Prop :=
  ∀ n, P8759220210486013202.a n = A211066 (n + 1)

theorem P8759220210486013202.correct : P8759220210486013202.Spec := by
  intro n
  simp only [A211066, Nat.add_sub_cancel, A211066.P8759220210486013202.a, A211066.P8286299359558462828.a, A018806, A018806.P10991983438619491476.f1, A018806.P10991983438619491476.a, A083374, A083374.P16457191761393268953.a, A210370, A210370.P15654090158491504536.a, A211067, A211067.P18215761913343296145.a, A211068, A211068.P11930798809199669660.a, A212893, A212893.P71681876360897335.a, A211064, A211064.P13014287104965376940.a, A211065, A211065.P8194263181737807616.f1, A211065.P8194263181737807616.a, A344598, A344598.P13180373970547759744.f1, A344598.P13180373970547759744.a, A140434, A140434.P96571140770797263.a, A004277, A004277.P16255821370285667660.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211066

/-! ## A211066.P8286299359558462828

`A018806(n+1)+A083374(n+1)-A211068(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A211066

/-- `A018806(n+1)+A083374(n+1)-A211068(n+1)` -/
def P8286299359558462828.Spec : Prop :=
  ∀ n, P8286299359558462828.a n = A211066 (n + 1)

theorem P8286299359558462828.correct : P8286299359558462828.Spec := by
  intro n
  simp only [A211066, Nat.add_sub_cancel]

end A211066

/-! ## A211066.P8661337955145393185

`A211058(n+1)-A211068(n+1)`
-/

namespace A211066.P8661337955145393185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211058 (n + 1) - A211068 (n + 1)

end

end A211066.P8661337955145393185

namespace A211066

/-- `A211058(n+1)-A211068(n+1)` -/
def P8661337955145393185.Spec : Prop :=
  ∀ n, P8661337955145393185.a n = A211066 (n + 1)

end A211066

/-! ## A211066.P3589780913946696291

`A211057(n+1)+A211060(n+1)-A211068(n+1)`
-/

namespace A211066.P3589780913946696291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211057 (n + 1) + (A211060 (n + 1) - A211068 (n + 1))

end

end A211066.P3589780913946696291

namespace A211066

/-- `A211057(n+1)+A211060(n+1)-A211068(n+1)` -/
def P3589780913946696291.Spec : Prop :=
  ∀ n, P3589780913946696291.a n = A211066 (n + 1)

end A211066

/-!
# A211067: Number of 2 X 2 matrices having all terms in {1,...,n} and positive even determinant.

The programs for A211067, the canonical program `A211067.P18215761913343296145` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211067 has offset 1).

The definition of A211067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211067.P17501911987298071407

`(A211064(n+1)-A134506(n+1))/2`
-/

namespace A211067.P17501911987298071407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211064 (n + 1) - A134506 (n + 1) : ℚ) / 2

end

end A211067.P17501911987298071407

namespace A211067

/-- `(A211064(n+1)-A134506(n+1))/2` -/
def P17501911987298071407.Spec : Prop :=
  ∀ n, P17501911987298071407.a n = (A211067 (n + 1) : ℚ)

end A211067

/-! ## A211067.P16135029244915567056

`A211066(n+1)-A134506(n+1)`
-/

namespace A211067.P16135029244915567056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211066 (n + 1) - A134506 (n + 1)

end

end A211067.P16135029244915567056

namespace A211067

/-- `A211066(n+1)-A134506(n+1)` -/
def P16135029244915567056.Spec : Prop :=
  ∀ n, P16135029244915567056.a n = A211067 (n + 1)

end A211067

/-! ## A211067.P18215761913343296145

`A211064(n+1)-A211066(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A211067

/-- `A211064(n+1)-A211066(n+1)` -/
def P18215761913343296145.Spec : Prop :=
  ∀ n, P18215761913343296145.a n = A211067 (n + 1)

theorem P18215761913343296145.correct : P18215761913343296145.Spec := by
  intro n
  simp only [A211067, Nat.add_sub_cancel]

end A211067

/-! ## A211067.P233920257739212528

`A211064(A000027(n+1))%A211066(n+1)`
-/

namespace A211067.P233920257739212528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211064 (A000027 (n + 1)).toNat) (A211066 (n + 1))

end

end A211067.P233920257739212528

namespace A211067

/-- `A211064(A000027(n+1))%A211066(n+1)` -/
def P233920257739212528.Spec : Prop :=
  ∀ n, P233920257739212528.a n = A211067 (n + 1)

end A211067

/-! ## A211067.P625102389376553132

`A210370(n)+A212893(n)-A211066(n+1)`
-/

namespace A211067.P625102389376553132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210370 n + (A212893 n - A211066 (n + 1))

end

end A211067.P625102389376553132

namespace A211067

/-- `A210370(n)+A212893(n)-A211066(n+1)` -/
def P625102389376553132.Spec : Prop :=
  ∀ n, P625102389376553132.a n = A211067 (n + 1)

theorem P625102389376553132.correct : P625102389376553132.Spec := by
  intro n
  simp only [A211067, Nat.add_sub_cancel, A211067.P625102389376553132.a, A211067.P18215761913343296145.a, A210370, A210370.P15654090158491504536.a, A211064, A211064.P13014287104965376940.a, A211066, A211066.P8286299359558462828.a, A212893, A212893.P71681876360897335.a, A018806, A018806.P10991983438619491476.f1, A018806.P10991983438619491476.a, A083374, A083374.P16457191761393268953.a, A211068, A211068.P11930798809199669660.a, A211065, A211065.P8194263181737807616.f1, A211065.P8194263181737807616.a, A344598, A344598.P13180373970547759744.f1, A344598.P13180373970547759744.a, A140434, A140434.P96571140770797263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211067

/-! ## A211067.P2916032915016735864

`(A211064(n+1)%A211066(n+1))%A211033(n)`
-/

namespace A211067.P2916032915016735864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A211064 (n + 1)) (A211066 (n + 1))) (A211033 n)

end

end A211067.P2916032915016735864

namespace A211067

/-- `(A211064(n+1)%A211066(n+1))%A211033(n)` -/
def P2916032915016735864.Spec : Prop :=
  ∀ n, P2916032915016735864.a n = A211067 (n + 1)

end A211067

/-! ## A211067.P17827438975249209973

`A211059(n+1)-A211068(n+1)`
-/

namespace A211067.P17827438975249209973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211059 (n + 1) - A211068 (n + 1)

end

end A211067.P17827438975249209973

namespace A211067

/-- `A211059(n+1)-A211068(n+1)` -/
def P17827438975249209973.Spec : Prop :=
  ∀ n, P17827438975249209973.a n = A211067 (n + 1)

end A211067

/-!
# A211068: Number of 2 X 2 matrices having all terms in {1,...,n} and positive odd determinant.

The programs for A211068, the canonical program `A211068.P11930798809199669660` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211068 has offset 1).

The definition of A211068 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211065, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A211068.P13370372967634378253

`(n+1+(n+1)%2)²*(3*(n+1)+(n+1)%2)*(n+1-(n+1)%2)/16`
-/

namespace A211068.P13370372967634378253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1 + (n + 1) % 2) ^ 2 * (3 * (n + 1) + (n + 1) % 2) : ℕ) : ℤ) * ((n + 1 : ℤ) - (((n + 1) % 2 : ℕ) : ℤ)) : ℚ) / 16

end

end A211068.P13370372967634378253

namespace A211068

/-- `(n+1+(n+1)%2)²*(3*(n+1)+(n+1)%2)*(n+1-(n+1)%2)/16` -/
def P13370372967634378253.Spec : Prop :=
  ∀ n, P13370372967634378253.a n = (A211068 (n + 1) : ℚ)

end A211068

/-! ## A211068.P11930798809199669660

`A211065(n+1)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211068

/-- `A211065(n+1)/2` -/
def P11930798809199669660.Spec : Prop :=
  ∀ n, P11930798809199669660.a n = (A211068 (n + 1) : ℚ)

end A211068

/-! ## A211068.P16945078141416493464

`abs(2*(round((n-1)/2)+1)²*∑[3*n-lcm(2, n+1)+2])/2`
-/

namespace A211068.P16945078141416493464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.lcm 2 (n + 1) : ℤ) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|2 * (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)| : ℤ) : ℚ) / 2

end

end A211068.P16945078141416493464

namespace A211068

/-- `abs(2*(round((n-1)/2)+1)²*∑[3*n-lcm(2, n+1)+2])/2` -/
def P16945078141416493464.Spec : Prop :=
  ∀ n, P16945078141416493464.a n = (A211068 (n + 1) : ℚ)

end A211068

/-! ## A211068.P11266755024655120445

`A212764(n)+A212761(n)`
-/

namespace A211068.P11266755024655120445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212764 n + A212761 n

end

end A211068.P11266755024655120445

namespace A211068

/-- `A212764(n)+A212761(n)` -/
def P11266755024655120445.Spec : Prop :=
  ∀ n, P11266755024655120445.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P3462830348182629937

`A114119(n)*A210433(n+1)`
-/

namespace A211068.P3462830348182629937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 n * A210433 (n + 1)

end

end A211068.P3462830348182629937

namespace A211068

/-- `A114119(n)*A210433(n+1)` -/
def P3462830348182629937.Spec : Prop :=
  ∀ n, P3462830348182629937.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P12730251307951329049

`(A210369(n)-A212893(n))/2`
-/

namespace A211068.P12730251307951329049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210369 n - A212893 n : ℚ) / 2

end

end A211068.P12730251307951329049

namespace A211068

/-- `(A210369(n)-A212893(n))/2` -/
def P12730251307951329049.Spec : Prop :=
  ∀ n, P12730251307951329049.a n = (A211068 (n + 1) : ℚ)

end A211068

/-! ## A211068.P15657182450725326703

`A110654(n+1)²*A032438(n+1)`
-/

namespace A211068.P15657182450725326703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) ^ 2 * A032438 (n + 1)

end

end A211068.P15657182450725326703

namespace A211068

/-- `A110654(n+1)²*A032438(n+1)` -/
def P15657182450725326703.Spec : Prop :=
  ∀ n, P15657182450725326703.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P17764073968220362141

`((n+1)²-A367965(n))*A367965(n)`
-/

namespace A211068.P17764073968220362141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A367965 n) * A367965 n

end

end A211068.P17764073968220362141

namespace A211068

/-- `((n+1)²-A367965(n))*A367965(n)` -/
def P17764073968220362141.Spec : Prop :=
  ∀ n, P17764073968220362141.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P10133281390498221448

`A093005(n+1)²-A008619(n)²²`
-/

namespace A211068.P10133281390498221448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) ^ 2 - (A008619 n ^ 2) ^ 2

end

end A211068.P10133281390498221448

namespace A211068

/-- `A093005(n+1)²-A008619(n)²²` -/
def P10133281390498221448.Spec : Prop :=
  ∀ n, P10133281390498221448.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P3327797411425420559

`A212764(n)+sqrt(A212764(n)*A212766(n))`
-/

namespace A211068.P3327797411425420559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A212764 n : ℝ) + Real.sqrt (A212764 n * A212766 n : ℝ)

end

end A211068.P3327797411425420559

namespace A211068

/-- `A212764(n)+sqrt(A212764(n)*A212766(n))` -/
def P3327797411425420559.Spec : Prop :=
  ∀ n, P3327797411425420559.a n = (A211068 (n + 1) : ℝ)

end A211068

/-! ## A211068.P17624574138119026519

`A008794(A109613(n)+1)*A032438(n+1)`
-/

namespace A211068.P17624574138119026519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A109613 n + 1).toNat * A032438 (n + 1)

end

end A211068.P17624574138119026519

namespace A211068

/-- `A008794(A109613(n)+1)*A032438(n+1)` -/
def P17624574138119026519.Spec : Prop :=
  ∀ n, P17624574138119026519.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P970468252826190861

`(A213037(n+1)+A004652(n+1))*A002620(n+1)`
-/

namespace A211068.P970468252826190861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A213037 (n + 1) + A004652 (n + 1)) * A002620 (n + 1)

end

end A211068.P970468252826190861

namespace A211068

/-- `(A213037(n+1)+A004652(n+1))*A002620(n+1)` -/
def P970468252826190861.Spec : Prop :=
  ∀ n, P970468252826190861.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P5115371125979603463

`∑[A059029(n)]*A008794(n+2)`
-/

namespace A211068.P5115371125979603463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008794 (n + 2)

end

end A211068.P5115371125979603463

namespace A211068

/-- `∑[A059029(n)]*A008794(n+2)` -/
def P5115371125979603463.Spec : Prop :=
  ∀ n, P5115371125979603463.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P11990365735468956977

`A008794(n+2)*A032438(n+1)`
-/

namespace A211068.P11990365735468956977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (n + 2) * A032438 (n + 1)

end

end A211068.P11990365735468956977

namespace A211068

/-- `A008794(n+2)*A032438(n+1)` -/
def P11990365735468956977.Spec : Prop :=
  ∀ n, P11990365735468956977.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P7630764710637515638

`A296159(2*(n+2))*A296160(2*n+3)`
-/

namespace A211068.P7630764710637515638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296159 (2 * (n + 2)) * A296160 (2 * n + 3)

end

end A211068.P7630764710637515638

namespace A211068

/-- `A296159(2*(n+2))*A296160(2*n+3)` -/
def P7630764710637515638.Spec : Prop :=
  ∀ n, P7630764710637515638.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P1241775382146677551

`A296141(2*n+3)*A296160(2*n+3)`
-/

namespace A211068.P1241775382146677551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (2 * n + 3) * A296160 (2 * n + 3)

end

end A211068.P1241775382146677551

namespace A211068

/-- `A296141(2*n+3)*A296160(2*n+3)` -/
def P1241775382146677551.Spec : Prop :=
  ∀ n, P1241775382146677551.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P17176278419251568676

`A211058(n+1)-A211066(n+1)`
-/

namespace A211068.P17176278419251568676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211058 (n + 1) - A211066 (n + 1)

end

end A211068.P17176278419251568676

namespace A211068

/-- `A211058(n+1)-A211066(n+1)` -/
def P17176278419251568676.Spec : Prop :=
  ∀ n, P17176278419251568676.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P15028615190153155458

`A211059(n+1)-A211067(n+1)`
-/

namespace A211068.P15028615190153155458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211059 (n + 1) - A211067 (n + 1)

end

end A211068.P15028615190153155458

namespace A211068

/-- `A211059(n+1)-A211067(n+1)` -/
def P15028615190153155458.Spec : Prop :=
  ∀ n, P15028615190153155458.a n = A211068 (n + 1)

end A211068

/-! ## A211068.P14705197257094815388

`A134506(n+1)+A211059(n+1)-A211066(n+1)`
-/

namespace A211068.P14705197257094815388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 (n + 1) + (A211059 (n + 1) - A211066 (n + 1))

end

end A211068.P14705197257094815388

namespace A211068

/-- `A134506(n+1)+A211059(n+1)-A211066(n+1)` -/
def P14705197257094815388.Spec : Prop :=
  ∀ n, P14705197257094815388.a n = A211068 (n + 1)

end A211068

/-!
# A211069: Number of 2 X 2 matrices having all terms in {1,...,n} and determinant in [-n,n].

The programs for A211069, there is no canonical definition to state claims against.
-/

/-! ## A211069.P12033272704395634030

`(n+1)^4-2*A211060(n+1)`
-/

namespace A211069.P12033272704395634030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - 2 * A211060 (n + 1)

end

end A211069.P12033272704395634030

/-! ## A211069.P9488946242593432828

`A212109(n+1)-A211060(n+1)`
-/

namespace A211069.P9488946242593432828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212109 (n + 1) - A211060 (n + 1)

end

end A211069.P9488946242593432828

/-! ## A211069.P11794316935909535439

`A211070(n+1)+2*A211053(n+1)`
-/

namespace A211069.P11794316935909535439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211070 (n + 1) + 2 * A211053 (n + 1)

end

end A211069.P11794316935909535439

/-! ## A211069.P17276367870052840846

`A211057(n+1)+A211057(n+1)-A134506(n+1)`
-/

namespace A211069.P17276367870052840846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211057 (n + 1) + (A211057 (n + 1) - A134506 (n + 1))

end

end A211069.P17276367870052840846

/-! ## A211069.P5273945430430263652

`A211057(n+1)+A211059(n+1)-A211060(n+1)`
-/

namespace A211069.P5273945430430263652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211057 (n + 1) + (A211059 (n + 1) - A211060 (n + 1))

end

end A211069.P5273945430430263652

/-! ## A211069.P6800664323171214727

`A211070(n+1)+A005843(A211053(n+1))`
-/

namespace A211069.P6800664323171214727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211070 (n + 1) + A005843 (A211053 (n + 1)).toNat

end

end A211069.P6800664323171214727

/-!
# A211070: Number of 2 X 2 matrices having all terms in {1,...,n} and determinant d satisfying -n < d < n.

The programs for A211070, there is no canonical definition to state claims against.
-/

/-! ## A211070.P1940131342444386051

`(n+1)²²-2*A211061(n+1)`
-/

namespace A211070.P1940131342444386051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - 2 * A211061 (n + 1)

end

end A211070.P1940131342444386051

/-! ## A211070.P10647268652717273982

`A212108(n+1)-A211061(n+1)`
-/

namespace A211070.P10647268652717273982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212108 (n + 1) - A211061 (n + 1)

end

end A211070.P10647268652717273982

/-! ## A211070.P13855355938642468436

`A212108(n+1)-(A211060(n+1)+A211053(n+1))`
-/

namespace A211070.P13855355938642468436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212108 (n + 1) - (A211060 (n + 1) + A211053 (n + 1))

end

end A211070.P13855355938642468436

/-! ## A211070.P17432353582466506724

`A212108(A123108(2*(n+1)))-((n+1)^4-A212108(n+1))`
-/

namespace A211070.P17432353582466506724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212108 (A123108 (2 * (n + 1))).toNat - (((n + 1) ^ 4 : ℤ) - A212108 (n + 1))

end

end A211070.P17432353582466506724

/-! ## A211070.P6526627522221153193

`A212108(n+1)-(A212742(n)+A212743(n)-A212108(n+1))`
-/

namespace A211070.P6526627522221153193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212108 (n + 1) - (A212742 n + (A212743 n - A212108 (n + 1)))

end

end A211070.P6526627522221153193

/-! ## A211070.P1644378422953991252

`A212108(A123108(2*n+2))-A000290(n+1)²%A212108(n+1)`
-/

namespace A211070.P1644378422953991252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212108 (A123108 (2 * n + 2)).toNat - Int.tmod (A000290 (n + 1) ^ 2) (A212108 (n + 1))

end

end A211070.P1644378422953991252

/-! ## A211070.P17097343437266895932

`A212108(A123108(2*n+2))-A241496(2*n)²%A212108(n+1)`
-/

namespace A211070.P17097343437266895932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212108 (A123108 (2 * n + 2)).toNat - Int.tmod (A241496 (2 * n) ^ 2) (A212108 (n + 1))

end

end A211070.P17097343437266895932

/-! ## A211070.P14457303369260008110

`A212108(n+1)-(A211053(n+1)+A211058(n+1)-A211057(n+1))`
-/

namespace A211070.P14457303369260008110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212108 (n + 1) - (A211053 (n + 1) + (A211058 (n + 1) - A211057 (n + 1)))

end

end A211070.P14457303369260008110

/-! ## A211070.P1588515754745024689

`A211069(n+1)-2*A211053(n+1)`
-/

namespace A211070.P1588515754745024689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211069 (n + 1) - 2 * A211053 (n + 1)

end

end A211070.P1588515754745024689

/-! ## A211070.P238695603271676300

`A211069(n+1)-A005843(A211053(n+1))`
-/

namespace A211070.P238695603271676300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211069 (n + 1) - A005843 (A211053 (n + 1)).toNat

end

end A211070.P238695603271676300

/-!
# A211071: Number of 2 X 2 matrices having all terms in {1,...,n} and determinant = 1 (mod 3).

The programs for A211071, there is no canonical definition to state claims against.
-/

/-! ## A211071.P2790577831167861891

`A046155(C(∑[3*n²+1], 2))`
-/

namespace A211071.P2790577831167861891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A211071.P2790577831167861891

/-!
# A211072: Sum of numbers with no '0' decimal digits whose sum of digits equals n.

The programs for A211072, there is no canonical definition to state claims against.
-/

/-! ## A211072.P18184609248980996892

`A139740(A051022(n))/9`
-/

namespace A211072.P18184609248980996892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139740 (A051022 n).toNat : ℚ) / 9

end

end A211072.P18184609248980996892

/-! ## A211072.P9663454251122682525

`A139740(A056142(n))/9`
-/

namespace A211072.P9663454251122682525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139740 (A056142 n).toNat : ℚ) / 9

end

end A211072.P9663454251122682525

/-! ## A211072.P15019048859405941594

`A139740(A082216(n))/9`
-/

namespace A211072.P15019048859405941594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139740 (A082216 n).toNat : ℚ) / 9

end

end A211072.P15019048859405941594

/-! ## A211072.P10143552113996219810

`A139740(A004904(n+1))/9`
-/

namespace A211072.P10143552113996219810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139740 (A004904 (n + 1)).toNat : ℚ) / 9

end

end A211072.P10143552113996219810

/-! ## A211072.P5209759774918821439

`A139740(A061276(n+1))/9`
-/

namespace A211072.P5209759774918821439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139740 (A061276 (n + 1)).toNat : ℚ) / 9

end

end A211072.P5209759774918821439

/-!
# A211074: Decimal expansion of 4/Pi - 1/2.

The programs for A211074, there is no canonical definition to state claims against.
-/

/-! ## A211074.P655375082822940782

`A088538(floor(2/acot(n))+1-n)`
-/

namespace A211074.P655375082822940782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088538 ((⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + (1 - (n : ℤ))).toNat + 1)

end

end A211074.P655375082822940782

/-! ## A211074.P12970708046169311308

`A088538(A028310(n)+1)`
-/

namespace A211074.P12970708046169311308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088538 ((A028310 n + 1).toNat + 1)

end

end A211074.P12970708046169311308

/-! ## A211074.P6334578886084937635

`A088538(A054977(n)+n)`
-/

namespace A211074.P6334578886084937635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088538 ((A054977 n + (n : ℤ)).toNat + 1)

end

end A211074.P6334578886084937635

/-! ## A211074.P12322886096878870069

`A088538(A000007(n)+1+n)`
-/

namespace A211074.P12322886096878870069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088538 ((A000007 n + 1 + (n : ℤ)).toNat + 1)

end

end A211074.P12322886096878870069

/-! ## A211074.P2641904595812517896

`A088538(A004277(n)+1-n)`
-/

namespace A211074.P2641904595812517896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088538 ((A004277 n + (1 - (n : ℤ))).toNat + 1)

end

end A211074.P2641904595812517896

/-! ## A211074.P4736209395693218550

`A088538(1-(n-A004277(n)))`
-/

namespace A211074.P4736209395693218550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088538 ((1 - ((n : ℤ) - A004277 n)).toNat + 1)

end

end A211074.P4736209395693218550

/-! ## A211074.P4281773440227023957

`A088538(A065033(n)+A008619(n))`
-/

namespace A211074.P4281773440227023957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088538 ((A065033 n + A008619 n).toNat + 1)

end

end A211074.P4281773440227023957

/-! ## A211074.P950906169756078877

`A088538(A065033(n+1)+A065033(n))`
-/

namespace A211074.P950906169756078877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088538 ((A065033 (n + 1) + A065033 n).toNat + 1)

end

end A211074.P950906169756078877

/-! ## A211074.P613848966795677103

`A088538(A065033(2*n)+1)`
-/

namespace A211074.P613848966795677103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088538 ((A065033 (2 * n) + 1).toNat + 1)

end

end A211074.P613848966795677103

/-!
# A211075: Primes p followed by prime gap of length log(p/log(p)^2)^2.

The programs for A211075, there is no canonical definition to state claims against.
-/

/-! ## A211075.P4924636492593842862

`A065091(lt[A308326(n), A000578(3*n)])`
-/

namespace A211075.P4924636492593842862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A211075.P4924636492593842862

/-! ## A211075.P16262503765469698329

`record[A060265(n+2)/A346182(n+1)]`
-/

namespace A211075.P16262503765469698329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060265 (n + 2) : ℚ) / (A346182 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211075.P16262503765469698329

/-! ## A211075.P6892200795307705601

`filter[A052085(n+1), A137161(#)]`
-/

namespace A211075.P6892200795307705601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A211075.P6892200795307705601

/-!
# A211076: Least prime q such that k^p - p is not divisible by q for any positive integer k, where p is the n-th prime.

The programs for A211076, there is no canonical definition to state claims against.
-/

/-! ## A211076.P262286194245357645

`p?[A329978(A185974(n))-A107286(n)]`
-/

namespace A211076.P262286194245357645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (A185974 n).toNat - A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A211076.P262286194245357645

/-!
# A211083: 1/4 the number of n X n 0..3 symmetric matrices with every element equal to two or three horizontal and vertical neighbors.

The programs for A211083, there is no canonical definition to state claims against.
-/

/-! ## A211083.P10919608763662190686

`A048720(∑[∑[A275549(n)]]+1)`
-/

namespace A211083.P10919608763662190686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A211083.P10919608763662190686

/-! ## A211083.P3787441326477798879

`A165033(∑[A242954(3*n+2)+1])`
-/

namespace A211083.P3787441326477798879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242954 (3 * n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211083.P3787441326477798879

/-!
# A211085: 1/4 the number of n X n 0..3 symmetric matrices with every element equal to one, two or three horizontal and vertical neighbors.

The programs for A211085, there is no canonical definition to state claims against.
-/

/-! ## A211085.P7041770207483296431

`A000720(n+1)*A331075(A052714(n))`
-/

namespace A211085.P7041770207483296431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A331075 (A052714 n).toNat

end

end A211085.P7041770207483296431

/-!
# A211092: 1/4 the number of n X n 0..3 symmetric matrices with every element equal to two, three or four horizontal and vertical neighbors.

The programs for A211092, there is no canonical definition to state claims against.
-/

/-! ## A211092.P15124033614590761312

`A007788(n*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A211092.P15124033614590761312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007788 ((n : ℤ) * a (n - 2)).toNat

end

end A211092.P15124033614590761312

/-!
# A211095: Length of the smallest (i.e., rightmost) Lyndon word in the Lyndon factorization of the binary representation of n.

The programs for A211095, there is no canonical definition to state claims against.
-/

/-! ## A211095.P4815256318824105218

`A077430(floor(sqrt(A211096(n))))`
-/

namespace A211095.P4815256318824105218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 (Int.sqrt (A211096 n)).toNat

end

end A211095.P4815256318824105218

/-! ## A211095.P12401550075098223866

`A077430(ceil(sqrt(A211096(n))))`
-/

namespace A211095.P12401550075098223866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 ⌈Real.sqrt (A211096 n : ℝ)⌉.toNat

end

end A211095.P12401550075098223866

/-! ## A211095.P15146101905489844744

`A185679(ceil(sqrt(A211096(n))))`
-/

namespace A211095.P15146101905489844744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 ⌈Real.sqrt (A211096 n : ℝ)⌉.toNat

end

end A211095.P15146101905489844744

/-! ## A211095.P1899669649948659424

`A077430(round(sqrt(A211096(n))))`
-/

namespace A211095.P1899669649948659424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 (SequenceMachineLib.roundAway (Real.sqrt (A211096 n : ℝ))).toNat

end

end A211095.P1899669649948659424

/-! ## A211095.P6082615199324158973

`A008619(floor(log(A211096(n))))`
-/

namespace A211095.P6082615199324158973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊Real.log (A211096 n : ℝ)⌋.toNat

end

end A211095.P6082615199324158973

/-! ## A211095.P13025764326363549816

`∑{digits}[A211096(n), A000006(#)]`
-/

namespace A211095.P13025764326363549816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000006 x).sum

end

end A211095.P13025764326363549816

/-! ## A211095.P5126826877539020561

`∑{digits}[A211096(n), A000009(#)]`
-/

namespace A211095.P5126826877539020561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000009 x).sum

end

end A211095.P5126826877539020561

/-! ## A211095.P2450840730542856166

`∑{digits}[A211096(n), A000010(#)]`
-/

namespace A211095.P2450840730542856166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000010 x).sum

end

end A211095.P2450840730542856166

/-! ## A211095.P12470882290576507851

`∑{digits}[A211096(n), A000045(#)]`
-/

namespace A211095.P12470882290576507851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A211095.P12470882290576507851

/-! ## A211095.P17308698579732242916

`∑{digits}[A211096(n), A000188(#)]`
-/

namespace A211095.P17308698579732242916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000188 x).sum

end

end A211095.P17308698579732242916

/-!
# A211096: Smallest (i.e., rightmost) Lyndon word in the Lyndon factorization of the binary representation of n (written using 1's and 2's rather than 0's and 1's, since numbers > 0 in the OEIS cannot begin with 0).

The programs for A211096, there is no canonical definition to state claims against.
-/

/-! ## A211096.P17720633921771119672

`A065031(((n-1)^(n%2))^A336159(n+1))`
-/

namespace A211096.P17720633921771119672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (SequenceMachineLib.roundAway ((((n : ℤ) - 1) ^ (n % 2) : ℚ) ^ (A336159 (n + 1) : ℤ))).toNat

end

end A211096.P17720633921771119672

/-! ## A211096.P18056906686165236739

`A176088(A113178(n+1))`
-/

namespace A211096.P18056906686165236739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176088 (A113178 (n + 1)).toNat

end

end A211096.P18056906686165236739

/-! ## A211096.P3427693191548309284

`A065031(A053646(n+1)^n)`
-/

namespace A211096.P3427693191548309284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (A053646 (n + 1) ^ n).toNat

end

end A211096.P3427693191548309284

/-! ## A211096.P17588042180478824745

`A209344(A000032(∏{p}[n+1, #]))`
-/

namespace A211096.P17588042180478824745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A000032 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A211096.P17588042180478824745

/-!
# A211097: Number of factors in Lyndon factorization of binary vectors of lengths 1, 2, 3, ...

The programs for A211097, there is no canonical definition to state claims against.
-/

/-! ## A211097.P2109916732371208115

`A211100(n+2)-1`
-/

namespace A211097.P2109916732371208115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (n + 2) - 1

end

end A211097.P2109916732371208115

/-! ## A211097.P8935419992782638552

`∑[Δ[A211100(n+1)]%31]`
-/

namespace A211097.P8935419992782638552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211097.P8935419992782638552

/-! ## A211097.P7512724778148245194

`A002837(A211100(n+2))`
-/

namespace A211097.P7512724778148245194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A211100 (n + 2)).toNat

end

end A211097.P7512724778148245194

/-! ## A211097.P14835182165949529414

`A217029(C(A211100(n+2), 2))`
-/

namespace A211097.P14835182165949529414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217029 (Nat.choose (A211100 (n + 2)).toNat 2)

end

end A211097.P14835182165949529414

/-! ## A211097.P1314843377641271674

`A023782(A211100(1-xor(n, -1)))`
-/

namespace A211097.P1314843377641271674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023782 (A211100 (1 - Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A211097.P1314843377641271674

/-! ## A211097.P9990719241539289924

`A023443(A211100(n+1)+Δ[A211100(n+1)])`
-/

namespace A211097.P9990719241539289924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A211100 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A211097.P9990719241539289924

/-! ## A211097.P11932799493298308319

`A260196(n+2)+A211100(n+2)`
-/

namespace A211097.P11932799493298308319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A211100 (n + 2)

end

end A211097.P11932799493298308319

/-! ## A211097.P2671780488264888835

`A329326(A090108(n+1)+1)-1`
-/

namespace A211097.P2671780488264888835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (A090108 (n + 1) + 1).toNat - 1

end

end A211097.P2671780488264888835

/-! ## A211097.P12011234854405839296

`A329326(A090108(n+2))-1`
-/

namespace A211097.P12011234854405839296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (A090108 (n + 2)).toNat - 1

end

end A211097.P12011234854405839296

/-! ## A211097.P16101762062344897826

`A329400(A059893(n+2))`
-/

namespace A211097.P16101762062344897826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329400 (A059893 (n + 2)).toNat

end

end A211097.P16101762062344897826

/-!
# A211098: Length of largest (i.e., leftmost) Lyndon word in Lyndon factorization of binary vectors of lengths 1, 2, 3, ...

The programs for A211098, there is no canonical definition to state claims against.
-/

/-! ## A211098.P9646439645625204734

`A077430(floor(sqrt(A211099(n+1))))`
-/

namespace A211098.P9646439645625204734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 (Int.sqrt (A211099 (n + 1))).toNat

end

end A211098.P9646439645625204734

/-! ## A211098.P4716459503977805116

`A134021(floor(sqrt(A211099(n+1))))`
-/

namespace A211098.P4716459503977805116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (Int.sqrt (A211099 (n + 1))).toNat

end

end A211098.P4716459503977805116

/-! ## A211098.P2227378561425465335

`A134021(round(sqrt(A211099(n+1))))`
-/

namespace A211098.P2227378561425465335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (SequenceMachineLib.roundAway (Real.sqrt (A211099 (n + 1) : ℝ))).toNat

end

end A211098.P2227378561425465335

/-! ## A211098.P648801016547890107

`A008619(floor(log(A211099(n+1))))`
-/

namespace A211098.P648801016547890107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊Real.log (A211099 (n + 1) : ℝ)⌋.toNat

end

end A211098.P648801016547890107

/-! ## A211098.P17044065063330378484

`A065033(ceil(log(A211099(n+1))))`
-/

namespace A211098.P17044065063330378484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈Real.log (A211099 (n + 1) : ℝ)⌉.toNat

end

end A211098.P17044065063330378484

/-! ## A211098.P15277698107233871534

`∑{digits}[A211099(n+1), A000006(#)]`
-/

namespace A211098.P15277698107233871534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000006 x).sum

end

end A211098.P15277698107233871534

/-! ## A211098.P16818353215201586511

`∑{digits}[A211099(n+1), A000010(#)]`
-/

namespace A211098.P16818353215201586511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000010 x).sum

end

end A211098.P16818353215201586511

/-! ## A211098.P3081419928674632440

`∑{digits}[A211099(n+1), A000045(#)]`
-/

namespace A211098.P3081419928674632440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A211098.P3081419928674632440

/-! ## A211098.P18174574452506396614

`∑{digits}[A211099(n+1), A001222(#)!]`
-/

namespace A211098.P18174574452506396614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial (A001222 x).toNat).sum

end

end A211098.P18174574452506396614

/-! ## A211098.P15059072738726686680

`∑{digits}[A211099(n+1), A001222(#+1)]`
-/

namespace A211098.P15059072738726686680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001222 (x + 1)).sum

end

end A211098.P15059072738726686680

/-!
# A211099: Largest (i.e., leftmost) Lyndon word in Lyndon factorization of binary vectors of lengths 1, 2, 3, ... (written using 1's and 2's rather than 0's and 1's, since numbers > 0 in the OEIS cannot begin with 0).

The programs for A211099, there is no canonical definition to state claims against.
-/

/-! ## A211099.P8743251054413480177

`A211096(C(n+2, A211110(n)))`
-/

namespace A211099.P8743251054413480177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211096 (Nat.choose (n + 2) (A211110 n).toNat)

end

end A211099.P8743251054413480177

/-! ## A211099.P14221754259769175635

`gcd(A132223(n+1)!, A352325(3*n+4))`
-/

namespace A211099.P14221754259769175635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A132223 (n + 1)).toNat : ℤ) (A352325 (3 * n + 4))

end

end A211099.P14221754259769175635

/-! ## A211099.P7625716766621481104

`and(A089919(A007918(n)), A288762(n))`
-/

namespace A211099.P7625716766621481104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089919 (A007918 n).toNat) (A288762 n)

end

end A211099.P7625716766621481104

/-! ## A211099.P4850952860501585223

`A324570(gcd(A106677(n+3), A324570(n+1)))`
-/

namespace A211099.P4850952860501585223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324570 (Int.gcd (A106677 (n + 3)) (A324570 (n + 1)))

end

end A211099.P4850952860501585223

