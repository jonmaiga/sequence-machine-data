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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A020700: Numbers k such that k + sum of its prime factors = (k+1) + sum of its prime factors.

The programs for A020700, there is no canonical definition to state claims against.
-/

/-! ## A020700.P3379822181523912006

`eq[A036288(n+1)+2, A107463(2*n)]`
-/

namespace A020700.P3379822181523912006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020700.P3379822181523912006

/-! ## A020700.P13603932909995637863

`eq[A001414(A028310(n)), A036288(n+1)]`
-/

namespace A020700.P13603932909995637863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020700.P13603932909995637863

/-! ## A020700.P6332500171029454100

`eq[A075254(n+1)-n, A001414(A028310(n))]`
-/

namespace A020700.P6332500171029454100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020700.P6332500171029454100

/-! ## A020700.P15806187369469294810

`eq[2-A075255(n+1)+n, A001414(A028310(n))]`
-/

namespace A020700.P15806187369469294810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A075255 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020700.P15806187369469294810

/-! ## A020700.P17551082154985575931

`eq[A001414(A233583(n+1)), A036288(n+1)]`
-/

namespace A020700.P17551082154985575931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020700.P17551082154985575931

/-!
# A020701: Pisot sequences E(3,5), P(3,5).

The programs for A020701, the canonical program `A020701.P3023773977330208485` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020701 has offset 0).

The definition of A020701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020701.P3023773977330208485

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020701

/-- `a(n-1)+a(n-2)` -/
def P3023773977330208485.Spec : Prop :=
  ∀ n, (P3023773977330208485.a n : ℤ) = A020701 n

theorem P3023773977330208485.correct : P3023773977330208485.Spec := by
  intro n
  simp only [A020701]

end A020701

/-! ## A020701.P5462436987657418111

`A020695(n+1)`
-/

namespace A020701.P5462436987657418111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1)

end

end A020701.P5462436987657418111

namespace A020701

/-- `A020695(n+1)` -/
def P5462436987657418111.Spec : Prop :=
  ∀ n, P5462436987657418111.a n = A020701 n

end A020701

/-! ## A020701.P11770879067952462084

`A000045(n+4)`
-/

namespace A020701.P11770879067952462084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4)

end

end A020701.P11770879067952462084

namespace A020701

/-- `A000045(n+4)` -/
def P11770879067952462084.Spec : Prop :=
  ∀ n, P11770879067952462084.a n = A020701 n

end A020701

/-! ## A020701.P12711593617427070211

`ogf((3+2x)/(1-x-x^2))`
-/

namespace A020701.P12711593617427070211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -1, -1] n

end

end A020701.P12711593617427070211

namespace A020701

/-- `ogf((3+2x)/(1-x-x^2))` -/
def P12711593617427070211.Spec : Prop :=
  ∀ n, P12711593617427070211.a n = A020701 n

end A020701

/-! ## A020701.P2462445803912736183

`round(ϕ*a(n-1))` with `a(0)=3`
-/

namespace A020701.P2462445803912736183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A020701.P2462445803912736183

namespace A020701

/-- `round(ϕ*a(n-1))` -/
def P2462445803912736183.Spec : Prop :=
  ∀ n, P2462445803912736183.a n = A020701 n

end A020701

/-! ## A020701.P17808792864302091803

`round(a(n-1)/(ϕ-1))` with `a(0)=3`
-/

namespace A020701.P17808792864302091803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.goldenRatio - 1))

end

end A020701.P17808792864302091803

namespace A020701

/-- `round(a(n-1)/(ϕ-1))` -/
def P17808792864302091803.Spec : Prop :=
  ∀ n, P17808792864302091803.a n = A020701 n

end A020701

/-! ## A020701.P3502774238184958858

`∑[floor(ϕ*a(n-1))]-(n-1)` with `a(0)=2`
-/

namespace A020701.P3502774238184958858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1)

end

end A020701.P3502774238184958858

namespace A020701

/-- `∑[floor(ϕ*a(n-1))]-(n-1)` -/
def P3502774238184958858.Spec : Prop :=
  ∀ n, P3502774238184958858.a n = A020701 n

end A020701

/-! ## A020701.P12017173532055465250

`a(n-1)-(char[1]-a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A020701.P12017173532055465250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A020701.P12017173532055465250

namespace A020701

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P12017173532055465250.Spec : Prop :=
  ∀ n, P12017173532055465250.a n = A020701 n

end A020701

/-! ## A020701.P14412394923871621320

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=3, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A020701.P14412394923871621320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A020701.P14412394923871621320

namespace A020701

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P14412394923871621320.Spec : Prop :=
  ∀ n, P14412394923871621320.a n = A020701 n

end A020701

/-! ## A020701.P17141458231351901088

`A020706(n)-1`
-/

namespace A020701.P17141458231351901088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - 1

end

end A020701.P17141458231351901088

namespace A020701

/-- `A020706(n)-1` -/
def P17141458231351901088.Spec : Prop :=
  ∀ n, P17141458231351901088.a n = A020701 n

end A020701

/-! ## A020701.P7924087355387412259

`A071679(n+2)`
-/

namespace A020701.P7924087355387412259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 2)

end

end A020701.P7924087355387412259

namespace A020701

/-- `A071679(n+2)` -/
def P7924087355387412259.Spec : Prop :=
  ∀ n, P7924087355387412259.a n = A020701 n

end A020701

/-! ## A020701.P9029422945377665447

`A373566(n+2)`
-/

namespace A020701.P9029422945377665447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (n + 2)

end

end A020701.P9029422945377665447

namespace A020701

/-- `A373566(n+2)` -/
def P9029422945377665447.Spec : Prop :=
  ∀ n, P9029422945377665447.a n = A020701 n

end A020701

/-! ## A020701.P3419063181712715690

`A048584(n)-2`
-/

namespace A020701.P3419063181712715690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n - 2

end

end A020701.P3419063181712715690

namespace A020701

/-- `A048584(n)-2` -/
def P3419063181712715690.Spec : Prop :=
  ∀ n, P3419063181712715690.a n = A020701 n

end A020701

/-! ## A020701.P6757298169119751796

`A212804(n+5)`
-/

namespace A020701.P6757298169119751796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 5)

end

end A020701.P6757298169119751796

namespace A020701

/-- `A212804(n+5)` -/
def P6757298169119751796.Spec : Prop :=
  ∀ n, P6757298169119751796.a n = A020701 n

end A020701

/-! ## A020701.P2275609513217985877

`A324969(n+5)`
-/

namespace A020701.P2275609513217985877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 5)

end

end A020701.P2275609513217985877

namespace A020701

/-- `A324969(n+5)` -/
def P2275609513217985877.Spec : Prop :=
  ∀ n, P2275609513217985877.a n = A020701 n

end A020701

/-! ## A020701.P117103100107154510

`record[A120249(n+3)]`
-/

namespace A020701.P117103100107154510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020701.P117103100107154510

namespace A020701

/-- `record[A120249(n+3)]` -/
def P117103100107154510.Spec : Prop :=
  ∀ n, P117103100107154510.a n = A020701 n

end A020701

/-! ## A020701.P7524918778083174806

`A001911(n+1)+2`
-/

namespace A020701.P7524918778083174806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) + 2

end

end A020701.P7524918778083174806

namespace A020701

/-- `A001911(n+1)+2` -/
def P7524918778083174806.Spec : Prop :=
  ∀ n, P7524918778083174806.a n = A020701 n

end A020701

/-! ## A020701.P9759173546083306670

`A048577(n+1)-1`
-/

namespace A020701.P9759173546083306670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (n + 1) - 1

end

end A020701.P9759173546083306670

namespace A020701

/-- `A048577(n+1)-1` -/
def P9759173546083306670.Spec : Prop :=
  ∀ n, P9759173546083306670.a n = A020701 n

end A020701

/-!
# A020702: Expansion of (1+x^10)/((1-x)*(1-x^2)*(1-x^3)*(1-x^5)).

The programs for A020702, the canonical program `A020702.P10212015119864039078` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020702 has offset 0).

The definition of A020702 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^10)/(1-x-x^2+x^4+x^7-x^9-x^10+x^11))` (program `A020702.P10212015119864039078`, by `A020702.P10212015119864039078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020702.P10212015119864039078

`ogf((1+x^10)/(1-x-x^2+x^4+x^7-x^9-x^10+x^11))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020702

/-- `ogf((1+x^10)/(1-x-x^2+x^4+x^7-x^9-x^10+x^11))` -/
def P10212015119864039078.Spec : Prop :=
  ∀ n, P10212015119864039078.a n = A020702 n

theorem P10212015119864039078.correct : P10212015119864039078.Spec := by
  intro n
  simp only [A020702]

end A020702

/-! ## A020702.P14118188684822321959

`A097920(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A020702.P14118188684822321959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A097920 n + a (n - 2)

end

end A020702.P14118188684822321959

namespace A020702

/-- `A097920(n)+a(n-2)` -/
def P14118188684822321959.Spec : Prop :=
  ∀ n, P14118188684822321959.a n = A020702 n

end A020702

/-! ## A020702.P2072395927400788593

`2*A008669(n)-A008748(n)`
-/

namespace A020702.P2072395927400788593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008669 n - A008748 n

end

end A020702.P2072395927400788593

namespace A020702

/-- `2*A008669(n)-A008748(n)` -/
def P2072395927400788593.Spec : Prop :=
  ∀ n, P2072395927400788593.a n = A020702 n

end A020702

/-! ## A020702.P3540656304622554943

`A097920(n)--a(n-2)%A000041(n)` with `a(0)=1, a(1)=1`
-/

namespace A020702.P3540656304622554943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A097920 n - Int.tmod (-a (n - 2)) (A000041 n)

end

end A020702.P3540656304622554943

namespace A020702

/-- `A097920(n)--a(n-2)%A000041(n)` -/
def P3540656304622554943.Spec : Prop :=
  ∀ n, P3540656304622554943.a n = A020702 n

end A020702

/-! ## A020702.P6830764423936404443

`A008667(2*n)-A211535(2*n+1)`
-/

namespace A020702.P6830764423936404443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (2 * n) - A211535 (2 * n + 1)

end

end A020702.P6830764423936404443

namespace A020702

/-- `A008667(2*n)-A211535(2*n+1)` -/
def P6830764423936404443.Spec : Prop :=
  ∀ n, P6830764423936404443.a n = A020702 n

end A020702

/-! ## A020702.P11921767132773335612

`A005843(A008669(n))-A008748(n)`
-/

namespace A020702.P11921767132773335612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008669 n).toNat - A008748 n

end

end A020702.P11921767132773335612

namespace A020702

/-- `A005843(A008669(n))-A008748(n)` -/
def P11921767132773335612.Spec : Prop :=
  ∀ n, P11921767132773335612.a n = A020702 n

end A020702

/-!
# A020703: Take the sequence of natural numbers (A000027) and reverse successive subsequences of lengths 1,3,5,7,...

The programs for A020703, the canonical program `A020703.P16958220774647362096` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020703 has offset 1).

The definition of A020703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020703.P16958220774647362096

`2*(floor(sqrt(n))+1)*floor(sqrt(n))-(n+1)+2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020703

/-- `2*(floor(sqrt(n))+1)*floor(sqrt(n))-(n+1)+2` -/
def P16958220774647362096.Spec : Prop :=
  ∀ n, P16958220774647362096.a n = A020703 (n + 1)

theorem P16958220774647362096.correct : P16958220774647362096.Spec := by
  intro n
  simp only [A020703, Nat.add_sub_cancel]

end A020703

/-! ## A020703.P11598707857609940859

`abs(A001844(floor(sqrt(n)))-n)`
-/

namespace A020703.P11598707857609940859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001844 (Nat.sqrt n) - (n : ℤ)|

end

end A020703.P11598707857609940859

namespace A020703

/-- `abs(A001844(floor(sqrt(n)))-n)` -/
def P11598707857609940859.Spec : Prop :=
  ∀ n, P11598707857609940859.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P4654853912927710719

`abs(n-2*A196199(n)+1)`
-/

namespace A020703.P4654853912927710719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 2 * A196199 n + 1|

end

end A020703.P4654853912927710719

namespace A020703

/-- `abs(n-2*A196199(n)+1)` -/
def P4654853912927710719.Spec : Prop :=
  ∀ n, P4654853912927710719.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P9511223520850390403

`ceil((A001650(n+1)-sqrt(n))²)`
-/

namespace A020703.P9511223520850390403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A001650 (n + 1) : ℝ) - Real.sqrt (n : ℝ)) ^ 2⌉

end

end A020703.P9511223520850390403

namespace A020703

/-- `ceil((A001650(n+1)-sqrt(n))²)` -/
def P9511223520850390403.Spec : Prop :=
  ∀ n, P9511223520850390403.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P6210050876787761593

`A045901(A170949(n+1))`
-/

namespace A020703.P6210050876787761593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045901 (A170949 (n + 1)).toNat

end

end A020703.P6210050876787761593

namespace A020703

/-- `A045901(A170949(n+1))` -/
def P6210050876787761593.Spec : Prop :=
  ∀ n, P6210050876787761593.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P8568277375106643755

`A143051(A143051(a(n-1))+1)` with `a(0)=1`
-/

namespace A020703.P8568277375106643755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143051 (A143051 (a (n - 1)).toNat + 1).toNat

end

end A020703.P8568277375106643755

namespace A020703

/-- `A143051(A143051(a(n-1))+1)` -/
def P8568277375106643755.Spec : Prop :=
  ∀ n, P8568277375106643755.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P2263177393118186633

`A060734(A064788(n+1))`
-/

namespace A020703.P2263177393118186633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A064788 (n + 1)).toNat

end

end A020703.P2263177393118186633

namespace A020703

/-- `A060734(A064788(n+1))` -/
def P2263177393118186633.Spec : Prop :=
  ∀ n, P2263177393118186633.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P10277825901264988110

`A060736(A064790(n+1))`
-/

namespace A020703.P10277825901264988110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 (A064790 (n + 1)).toNat

end

end A020703.P10277825901264988110

namespace A020703

/-- `A060736(A064790(n+1))` -/
def P10277825901264988110.Spec : Prop :=
  ∀ n, P10277825901264988110.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P15975982780307195051

`A060734(A211377(A216252(n+1)))`
-/

namespace A020703.P15975982780307195051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A211377 (A216252 (n + 1)).toNat).toNat

end

end A020703.P15975982780307195051

namespace A020703

/-- `A060734(A211377(A216252(n+1)))` -/
def P15975982780307195051.Spec : Prop :=
  ∀ n, P15975982780307195051.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P6322142424865991797

`A081344(A211377(A216253(n+1)))`
-/

namespace A020703.P6322142424865991797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (A211377 (A216253 (n + 1)).toNat).toNat

end

end A020703.P6322142424865991797

namespace A020703

/-- `A081344(A211377(A216253(n+1)))` -/
def P6322142424865991797.Spec : Prop :=
  ∀ n, P6322142424865991797.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P9922587926351418118

`A377802(A007606(n+1))`
-/

namespace A020703.P9922587926351418118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377802 (A007606 (n + 1)).toNat

end

end A020703.P9922587926351418118

namespace A020703

/-- `A377802(A007606(n+1))` -/
def P9922587926351418118.Spec : Prop :=
  ∀ n, P9922587926351418118.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P16714554817579130891

`A060734(A188568(A194280(n+1)))`
-/

namespace A020703.P16714554817579130891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A188568 (A194280 (n + 1)).toNat).toNat

end

end A020703.P16714554817579130891

namespace A020703

/-- `A060734(A188568(A194280(n+1)))` -/
def P16714554817579130891.Spec : Prop :=
  ∀ n, P16714554817579130891.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P17489324600481983272

`A060734(A185180(A214928(n+1)))`
-/

namespace A020703.P17489324600481983272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A185180 (A214928 (n + 1)).toNat).toNat

end

end A020703.P17489324600481983272

namespace A020703

/-- `A060734(A185180(A214928(n+1)))` -/
def P17489324600481983272.Spec : Prop :=
  ∀ n, P17489324600481983272.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P9519160966607372460

`A081344(A188568(A064790(A064790(A060734(n+1)))))`
-/

namespace A020703.P9519160966607372460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (A188568 (A064790 (A064790 (A060734 (n + 1)).toNat).toNat).toNat).toNat

end

end A020703.P9519160966607372460

namespace A020703

/-- `A081344(A188568(A064790(A064790(A060734(n+1)))))` -/
def P9519160966607372460.Spec : Prop :=
  ∀ n, P9519160966607372460.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P6551089550736748501

`A081344(A188568(A064790(A194280(A081344(n+1)))))`
-/

namespace A020703.P6551089550736748501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (A188568 (A064790 (A194280 (A081344 (n + 1)).toNat).toNat).toNat).toNat

end

end A020703.P6551089550736748501

namespace A020703

/-- `A081344(A188568(A064790(A194280(A081344(n+1)))))` -/
def P6551089550736748501.Spec : Prop :=
  ∀ n, P6551089550736748501.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P6965341293969696485

`A090925(A090930(n+1))`
-/

namespace A020703.P6965341293969696485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A090930 (n + 1)).toNat

end

end A020703.P6965341293969696485

namespace A020703

/-- `A090925(A090930(n+1))` -/
def P6965341293969696485.Spec : Prop :=
  ∀ n, P6965341293969696485.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P8678146295948283928

`A090861(A090925(n+1))`
-/

namespace A020703.P8678146295948283928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A090925 (n + 1)).toNat

end

end A020703.P8678146295948283928

namespace A020703

/-- `A090861(A090925(n+1))` -/
def P8678146295948283928.Spec : Prop :=
  ∀ n, P8678146295948283928.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P14880756521602986640

`A090929(A090861(n+1))`
-/

namespace A020703.P14880756521602986640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A090861 (n + 1)).toNat

end

end A020703.P14880756521602986640

namespace A020703

/-- `A090929(A090861(n+1))` -/
def P14880756521602986640.Spec : Prop :=
  ∀ n, P14880756521602986640.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P17970061342930377244

`A090928(A090915(n+1))`
-/

namespace A020703.P17970061342930377244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A090915 (n + 1)).toNat

end

end A020703.P17970061342930377244

namespace A020703

/-- `A090928(A090915(n+1))` -/
def P17970061342930377244.Spec : Prop :=
  ∀ n, P17970061342930377244.a n = A020703 (n + 1)

end A020703

/-! ## A020703.P9584226806410809541

`A090930(A090929(n+1))`
-/

namespace A020703.P9584226806410809541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A090929 (n + 1)).toNat

end

end A020703.P9584226806410809541

namespace A020703

/-- `A090930(A090929(n+1))` -/
def P9584226806410809541.Spec : Prop :=
  ∀ n, P9584226806410809541.a n = A020703 (n + 1)

end A020703

/-!
# A020704: Pisot sequences E(3,10), P(3,10).

The programs for A020704, the canonical program `A020704.P5788304712383585593` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020704 has offset 0).

The definition of A020704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020704.P5788304712383585593

`3*a(n-1)+a(n-2)` with `a(0)=3, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020704

/-- `3*a(n-1)+a(n-2)` -/
def P5788304712383585593.Spec : Prop :=
  ∀ n, (P5788304712383585593.a n : ℤ) = A020704 n

theorem P5788304712383585593.correct : P5788304712383585593.Spec := by
  intro n
  simp only [A020704]

end A020704

/-! ## A020704.P10678060255731312018

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=3, a(1)=10`
-/

namespace A020704.P10678060255731312018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A020704.P10678060255731312018

namespace A020704

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P10678060255731312018.Spec : Prop :=
  ∀ n, P10678060255731312018.a n = A020704 n

end A020704

/-! ## A020704.P7289373973619130281

`ogf((3+x)/(1-3x-x^2))`
-/

namespace A020704.P7289373973619130281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -3, -1] n

end

end A020704.P7289373973619130281

namespace A020704

/-- `ogf((3+x)/(1-3x-x^2))` -/
def P7289373973619130281.Spec : Prop :=
  ∀ n, P7289373973619130281.a n = A020704 n

end A020704

/-! ## A020704.P13537075503756244789

`record[3*a(n-1)-floor(-a(n-2))]` with `a(0)=3, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A020704.P13537075503756244789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 1] fun n f1 =>
  3 * f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020704.P13537075503756244789

namespace A020704

/-- `record[3*a(n-1)-floor(-a(n-2))]` -/
def P13537075503756244789.Spec : Prop :=
  ∀ n, P13537075503756244789.a n = A020704 n

end A020704

/-! ## A020704.P5620927332875913159

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=10`
-/

namespace A020704.P5620927332875913159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A020704.P5620927332875913159

namespace A020704

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P5620927332875913159.Spec : Prop :=
  ∀ n, P5620927332875913159.a n = A020704 n

end A020704

/-! ## A020704.P1732913923145430004

`record[3-(3*(1-a(n-1))-a(n-2))]` with `a(0)=3, a(1)=0, a(2)=1`
-/

namespace A020704.P1732913923145430004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 1] fun n f1 =>
  3 - (3 * (1 - f1 (n - 1)) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020704.P1732913923145430004

namespace A020704

/-- `record[3-(3*(1-a(n-1))-a(n-2))]` -/
def P1732913923145430004.Spec : Prop :=
  ∀ n, P1732913923145430004.a n = A020704 n

end A020704

/-! ## A020704.P4749638165005172297

`record[floor(a(n-2)+a(n-1)/(1-2/3))]` with `a(0)=3, a(1)=0, a(2)=1`
-/

namespace A020704.P4749638165005172297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 1] fun n f1 =>
  ⌊(f1 (n - 2) : ℚ) + (f1 (n - 1) : ℚ) / (1 - (2 : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020704.P4749638165005172297

namespace A020704

/-- `record[floor(a(n-2)+a(n-1)/(1-2/3))]` -/
def P4749638165005172297.Spec : Prop :=
  ∀ n, P4749638165005172297.a n = A020704 n

end A020704

/-! ## A020704.P14426876552005656468

`A006190(n+2)`
-/

namespace A020704.P14426876552005656468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 2)

end

end A020704.P14426876552005656468

namespace A020704

/-- `A006190(n+2)` -/
def P14426876552005656468.Spec : Prop :=
  ∀ n, P14426876552005656468.a n = A020704 n

end A020704

/-! ## A020704.P11518661678772309044

`Δ[A082574(n+1)]`
-/

namespace A020704.P11518661678772309044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020704.P11518661678772309044

namespace A020704

/-- `Δ[A082574(n+1)]` -/
def P11518661678772309044.Spec : Prop :=
  ∀ n, P11518661678772309044.a n = A020704 n

end A020704

/-! ## A020704.P215577116826368475

`A305889(2*(n+2))`
-/

namespace A020704.P215577116826368475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * (n + 2))

end

end A020704.P215577116826368475

namespace A020704

/-- `A305889(2*(n+2))` -/
def P215577116826368475.Spec : Prop :=
  ∀ n, P215577116826368475.a n = A020704 n

end A020704

/-! ## A020704.P8833497005245930973

`A052991(n+2)/2`
-/

namespace A020704.P8833497005245930973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052991 (n + 2) : ℚ) / 2

end

end A020704.P8833497005245930973

namespace A020704

/-- `A052991(n+2)/2` -/
def P8833497005245930973.Spec : Prop :=
  ∀ n, P8833497005245930973.a n = (A020704 n : ℚ)

end A020704

/-! ## A020704.P10674895208399005162

`A107855(2*(n+4))`
-/

namespace A020704.P10674895208399005162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (2 * (n + 4))

end

end A020704.P10674895208399005162

namespace A020704

/-- `A107855(2*(n+4))` -/
def P10674895208399005162.Spec : Prop :=
  ∀ n, P10674895208399005162.a n = A020704 n

end A020704

/-! ## A020704.P3142342231964954651

`A249579(4*(n+2))`
-/

namespace A020704.P3142342231964954651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (4 * (n + 2))

end

end A020704.P3142342231964954651

namespace A020704

/-- `A249579(4*(n+2))` -/
def P3142342231964954651.Spec : Prop :=
  ∀ n, P3142342231964954651.a n = A020704 n

end A020704

/-! ## A020704.P560999848176580130

`record[A006190(abs(2-n))]`
-/

namespace A020704.P560999848176580130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020704.P560999848176580130

namespace A020704

/-- `record[A006190(abs(2-n))]` -/
def P560999848176580130.Spec : Prop :=
  ∀ n, P560999848176580130.a n = A020704 n

end A020704

/-! ## A020704.P16311204541457256220

`∏{d}[n+2, A253807(#)]`
-/

namespace A020704.P16311204541457256220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A253807 d

end

end A020704.P16311204541457256220

namespace A020704

/-- `∏{d}[n+2, A253807(#)]` -/
def P16311204541457256220.Spec : Prop :=
  ∀ n, P16311204541457256220.a n = A020704 n

end A020704

/-! ## A020704.P4750415933131238742

`∑[A052924(n+1)]+1`
-/

namespace A020704.P4750415933131238742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A020704.P4750415933131238742

namespace A020704

/-- `∑[A052924(n+1)]+1` -/
def P4750415933131238742.Spec : Prop :=
  ∀ n, P4750415933131238742.a n = A020704 n

end A020704

/-! ## A020704.P12832633312114471107

`A305889(Δ[(n+2)²])/2`
-/

namespace A020704.P12832633312114471107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305889 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A020704.P12832633312114471107

namespace A020704

/-- `A305889(Δ[(n+2)²])/2` -/
def P12832633312114471107.Spec : Prop :=
  ∀ n, P12832633312114471107.a n = (A020704 n : ℚ)

end A020704

/-! ## A020704.P11045494003895816581

`A003688(n+2)-a(n-1)` with `a(0)=3`
-/

namespace A020704.P11045494003895816581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A003688 (n + 2) - a (n - 1)

end

end A020704.P11045494003895816581

namespace A020704

/-- `A003688(n+2)-a(n-1)` -/
def P11045494003895816581.Spec : Prop :=
  ∀ n, P11045494003895816581.a n = A020704 n

end A020704

/-! ## A020704.P33148772425613638

`A180148(n)+A108300(n)`
-/

namespace A020704.P33148772425613638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180148 n + A108300 n

end

end A020704.P33148772425613638

namespace A020704

/-- `A180148(n)+A108300(n)` -/
def P33148772425613638.Spec : Prop :=
  ∀ n, P33148772425613638.a n = A020704 n

end A020704

/-! ## A020704.P13018365241641547727

`A180148(n)+Δ[A052924(n)]`
-/

namespace A020704.P13018365241641547727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180148 n + (f1 (n + 1) - f1 n)

end

end A020704.P13018365241641547727

namespace A020704

/-- `A180148(n)+Δ[A052924(n)]` -/
def P13018365241641547727.Spec : Prop :=
  ∀ n, P13018365241641547727.a n = A020704 n

end A020704

/-!
# A020705: a(n) = n + 4.

The programs for A020705, the canonical program `A020705.P1213730512334166827` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020705 has offset 0).

The definition of A020705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+4` (program `A020705.P1213730512334166827`, by `A020705.P1213730512334166827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020705.P1213730512334166827

`n+4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020705

/-- `n+4` -/
def P1213730512334166827.Spec : Prop :=
  ∀ n, (P1213730512334166827.a n : ℤ) = A020705 n

theorem P1213730512334166827.correct : P1213730512334166827.Spec := by
  intro n
  simp only [A020705]

end A020705

/-!
# A020706: Pisot sequences L(4,6), E(4,6).

The programs for A020706, the canonical program `A020706.P17542088062975438782` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020706 has offset 0).

The definition of A020706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020706.P17542088062975438782

`A000045(n+4)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020706

/-- `A000045(n+4)+1` -/
def P17542088062975438782.Spec : Prop :=
  ∀ n, P17542088062975438782.a n = A020706 n

theorem P17542088062975438782.correct : P17542088062975438782.Spec := by
  intro n
  simp only [A020706]

end A020706

/-! ## A020706.P8634874083277735335

`2*a(n-1)-a(n-3)` with `a(0)=4, a(1)=6, a(2)=9`
-/

namespace A020706.P8634874083277735335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 9] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A020706.P8634874083277735335

namespace A020706

/-- `2*a(n-1)-a(n-3)` -/
def P8634874083277735335.Spec : Prop :=
  ∀ n, P8634874083277735335.a n = A020706 n

end A020706

/-! ## A020706.P6887462043704067880

`floor(ϕ*a(n-1))` with `a(0)=4`
-/

namespace A020706.P6887462043704067880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A020706.P6887462043704067880

namespace A020706

/-- `floor(ϕ*a(n-1))` -/
def P6887462043704067880.Spec : Prop :=
  ∀ n, P6887462043704067880.a n = A020706 n

end A020706

/-! ## A020706.P10901314434102383112

`∑[ogf((-4+2x+3x^2)/(-1+x+x^2))]`
-/

namespace A020706.P10901314434102383112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, -3] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020706.P10901314434102383112

namespace A020706

/-- `∑[ogf((-4+2x+3x^2)/(-1+x+x^2))]` -/
def P10901314434102383112.Spec : Prop :=
  ∀ n, P10901314434102383112.a n = A020706 n

end A020706

/-! ## A020706.P13923533716504559239

`ogf((4-2x-3x^2)/(1-2x+x^3))`
-/

namespace A020706.P13923533716504559239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, -3] [1, -2, 0, 1] n

end

end A020706.P13923533716504559239

namespace A020706

/-- `ogf((4-2x-3x^2)/(1-2x+x^3))` -/
def P13923533716504559239.Spec : Prop :=
  ∀ n, P13923533716504559239.a n = A020706 n

end A020706

/-! ## A020706.P3788970923221356441

`ceil(ϕ*a(n-1))-1` with `a(0)=4`
-/

namespace A020706.P3788970923221356441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ - 1

end

end A020706.P3788970923221356441

namespace A020706

/-- `ceil(ϕ*a(n-1))-1` -/
def P3788970923221356441.Spec : Prop :=
  ∀ n, P3788970923221356441.a n = A020706 n

end A020706

/-! ## A020706.P16661735401308476571

`floor(a(n-1)/(ϕ-1))` with `a(0)=4`
-/

namespace A020706.P16661735401308476571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A020706.P16661735401308476571

namespace A020706

/-- `floor(a(n-1)/(ϕ-1))` -/
def P16661735401308476571.Spec : Prop :=
  ∀ n, P16661735401308476571.a n = A020706 n

end A020706

/-! ## A020706.P17906970228329992031

`-ceil(a(n-1)/(1-ϕ))` with `a(0)=4`
-/

namespace A020706.P17906970228329992031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  -⌈(a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌉

end

end A020706.P17906970228329992031

namespace A020706

/-- `-ceil(a(n-1)/(1-ϕ))` -/
def P17906970228329992031.Spec : Prop :=
  ∀ n, P17906970228329992031.a n = A020706 n

end A020706

/-! ## A020706.P523913080835831075

`a(n-1)+a(n-2)-1` with `a(0)=4, a(1)=6`
-/

namespace A020706.P523913080835831075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) + (a (n - 2) - 1)

end

end A020706.P523913080835831075

namespace A020706

/-- `a(n-1)+a(n-2)-1` -/
def P523913080835831075.Spec : Prop :=
  ∀ n, P523913080835831075.a n = A020706 n

end A020706

/-! ## A020706.P17780556298261594438

`a(n-1)-(1-a(n-2))` with `a(0)=4, a(1)=6`
-/

namespace A020706.P17780556298261594438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A020706.P17780556298261594438

namespace A020706

/-- `a(n-1)-(1-a(n-2))` -/
def P17780556298261594438.Spec : Prop :=
  ∀ n, P17780556298261594438.a n = A020706 n

end A020706

/-! ## A020706.P15128185518785548586

`A020701(n)+1`
-/

namespace A020706.P15128185518785548586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + 1

end

end A020706.P15128185518785548586

namespace A020706

/-- `A020701(n)+1` -/
def P15128185518785548586.Spec : Prop :=
  ∀ n, P15128185518785548586.a n = A020706 n

end A020706

/-! ## A020706.P11371519286048669649

`A048577(n+1)`
-/

namespace A020706.P11371519286048669649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (n + 1)

end

end A020706.P11371519286048669649

namespace A020706

/-- `A048577(n+1)` -/
def P11371519286048669649.Spec : Prop :=
  ∀ n, P11371519286048669649.a n = A020706 n

end A020706

/-! ## A020706.P3190041997077188397

`A048584(n)-1`
-/

namespace A020706.P3190041997077188397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n - 1

end

end A020706.P3190041997077188397

namespace A020706

/-- `A048584(n)-1` -/
def P3190041997077188397.Spec : Prop :=
  ∀ n, P3190041997077188397.a n = A020706 n

end A020706

/-! ## A020706.P7915297382660559668

`A226271(n+2)`
-/

namespace A020706.P7915297382660559668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226271 (n + 2)

end

end A020706.P7915297382660559668

namespace A020706

/-- `A226271(n+2)` -/
def P7915297382660559668.Spec : Prop :=
  ∀ n, P7915297382660559668.a n = A020706 n

end A020706

/-! ## A020706.P8496923038288084799

`A001611(n+4)`
-/

namespace A020706.P8496923038288084799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 4)

end

end A020706.P8496923038288084799

namespace A020706

/-- `A001611(n+4)` -/
def P8496923038288084799.Spec : Prop :=
  ∀ n, P8496923038288084799.a n = A020706 n

end A020706

/-! ## A020706.P8299242020305329990

`A020695(n+1)+1`
-/

namespace A020706.P8299242020305329990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) + 1

end

end A020706.P8299242020305329990

namespace A020706

/-- `A020695(n+1)+1` -/
def P8299242020305329990.Spec : Prop :=
  ∀ n, P8299242020305329990.a n = A020706 n

end A020706

/-! ## A020706.P6363464921121274671

`A018910(n+1)-1`
-/

namespace A020706.P6363464921121274671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 (n + 1) - 1

end

end A020706.P6363464921121274671

namespace A020706

/-- `A018910(n+1)-1` -/
def P6363464921121274671.Spec : Prop :=
  ∀ n, P6363464921121274671.a n = A020706 n

end A020706

/-! ## A020706.P15541941837098187535

`A071679(n+2)+1`
-/

namespace A020706.P15541941837098187535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 2) + 1

end

end A020706.P15541941837098187535

namespace A020706

/-- `A071679(n+2)+1` -/
def P15541941837098187535.Spec : Prop :=
  ∀ n, P15541941837098187535.a n = A020706 n

end A020706

/-! ## A020706.P10639824445849011525

`A373566(n+2)+1`
-/

namespace A020706.P10639824445849011525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (n + 2) + 1

end

end A020706.P10639824445849011525

namespace A020706

/-- `A373566(n+2)+1` -/
def P10639824445849011525.Spec : Prop :=
  ∀ n, P10639824445849011525.a n = A020706 n

end A020706

/-! ## A020706.P7292010098852844831

`A001911(n+1)+3`
-/

namespace A020706.P7292010098852844831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) + 3

end

end A020706.P7292010098852844831

namespace A020706

/-- `A001911(n+1)+3` -/
def P7292010098852844831.Spec : Prop :=
  ∀ n, P7292010098852844831.a n = A020706 n

theorem P7292010098852844831.correct : P7292010098852844831.Spec := by
  intro n
  simp only [A020706, Nat.add_sub_cancel, A020706.P7292010098852844831.a, A020706.P17542088062975438782.a, A000045, A000045.P11838749114346432762.a, A001911, A001911.P2299546665043418976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020706

/-!
# A020707: Pisot sequences E(4,8), L(4,8), P(4,8), T(4,8).

The programs for A020707, the canonical program `A020707.P16024998955381595964` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020707 has offset 0).

The definition of A020707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020707.P16024998955381595964

`2^(n+2)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020707

/-- `2^(n+2)` -/
def P16024998955381595964.Spec : Prop :=
  ∀ n, (P16024998955381595964.a n : ℤ) = A020707 n

theorem P16024998955381595964.correct : P16024998955381595964.Spec := by
  intro n
  simp only [A020707]

end A020707

/-!
# A020708: Pisot sequences E(4,9), P(4,9).

The programs for A020708, the canonical program `A020708.P5612718762055709544` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020708 has offset 0).

The definition of A020708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020708.P5612718762055709544

`2*a(n-1)+a(n-3)` with `a(0)=4, a(1)=9, a(2)=20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020708

/-- `2*a(n-1)+a(n-3)` -/
def P5612718762055709544.Spec : Prop :=
  ∀ n, (P5612718762055709544.a n : ℤ) = A020708 n

theorem P5612718762055709544.correct : P5612718762055709544.Spec := by
  intro n
  simp only [A020708]

end A020708

/-! ## A020708.P10910725584189119964

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=4, a(1)=9`
-/

namespace A020708.P10910725584189119964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A020708.P10910725584189119964

namespace A020708

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P10910725584189119964.Spec : Prop :=
  ∀ n, P10910725584189119964.a n = A020708 n

end A020708

/-! ## A020708.P12824240295802896283

`ogf((4+x+2x^2)/(1-2x-x^3))`
-/

namespace A020708.P12824240295802896283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, 2] [1, -2, 0, -1] n

end

end A020708.P12824240295802896283

namespace A020708

/-- `ogf((4+x+2x^2)/(1-2x-x^3))` -/
def P12824240295802896283.Spec : Prop :=
  ∀ n, P12824240295802896283.a n = A020708 n

end A020708

/-! ## A020708.P15996127618970924004

`A008998(n+2)`
-/

namespace A020708.P15996127618970924004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 2)

end

end A020708.P15996127618970924004

namespace A020708

/-- `A008998(n+2)` -/
def P15996127618970924004.Spec : Prop :=
  ∀ n, P15996127618970924004.a n = A020708 n

end A020708

/-! ## A020708.P5583553252957477418

`record[A008998(abs(2-n))]`
-/

namespace A020708.P5583553252957477418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020708.P5583553252957477418

namespace A020708

/-- `record[A008998(abs(2-n))]` -/
def P5583553252957477418.Spec : Prop :=
  ∀ n, P5583553252957477418.a n = A020708 n

end A020708

/-! ## A020708.P8692623074200575439

`∑[A190512(n+1)]+2`
-/

namespace A020708.P8692623074200575439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A020708.P8692623074200575439

namespace A020708

/-- `∑[A190512(n+1)]+2` -/
def P8692623074200575439.Spec : Prop :=
  ∀ n, P8692623074200575439.a n = A020708 n

end A020708

/-! ## A020708.P1327618203757194625

`∑[A052980(n+2)]+2`
-/

namespace A020708.P1327618203757194625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A020708.P1327618203757194625

namespace A020708

/-- `∑[A052980(n+2)]+2` -/
def P1327618203757194625.Spec : Prop :=
  ∀ n, P1327618203757194625.a n = A020708 n

end A020708

/-! ## A020708.P7368038397848519239

`∑[abs(A110513(n+2))]+2`
-/

namespace A020708.P7368038397848519239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110513 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A020708.P7368038397848519239

namespace A020708

/-- `∑[abs(A110513(n+2))]+2` -/
def P7368038397848519239.Spec : Prop :=
  ∀ n, P7368038397848519239.a n = A020708 n

end A020708

/-! ## A020708.P12519532063399177139

`A239905(3*(n+3)+n+2)`
-/

namespace A020708.P12519532063399177139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239905 (3 * (n + 3) + (n + 2))

end

end A020708.P12519532063399177139

namespace A020708

/-- `A239905(3*(n+3)+n+2)` -/
def P12519532063399177139.Spec : Prop :=
  ∀ n, P12519532063399177139.a n = A020708 n

end A020708

/-! ## A020708.P1575112476151521463

`∑[∑[A214260(n+1)]+1]+2`
-/

namespace A020708.P1575112476151521463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A020708.P1575112476151521463

namespace A020708

/-- `∑[∑[A214260(n+1)]+1]+2` -/
def P1575112476151521463.Spec : Prop :=
  ∀ n, P1575112476151521463.a n = A020708 n

end A020708

/-! ## A020708.P8150062485887140875

`A240784(n+1)-A010673(n)`
-/

namespace A020708.P8150062485887140875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240784 (n + 1) - A010673 n

end

end A020708.P8150062485887140875

namespace A020708

/-- `A240784(n+1)-A010673(n)` -/
def P8150062485887140875.Spec : Prop :=
  ∀ n, P8150062485887140875.a n = A020708 n

end A020708

/-! ## A020708.P9917406531985842174

`A335274(n+2)+A214260(n)`
-/

namespace A020708.P9917406531985842174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (n + 2) + A214260 n

end

end A020708.P9917406531985842174

namespace A020708

/-- `A335274(n+2)+A214260(n)` -/
def P9917406531985842174.Spec : Prop :=
  ∀ n, P9917406531985842174.a n = A020708 n

end A020708

/-! ## A020708.P17549074049680013632

`A193641(n+2)+A052980(n+1)`
-/

namespace A020708.P17549074049680013632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 2) + A052980 (n + 1)

end

end A020708.P17549074049680013632

namespace A020708

/-- `A193641(n+2)+A052980(n+1)` -/
def P17549074049680013632.Spec : Prop :=
  ∀ n, P17549074049680013632.a n = A020708 n

end A020708

/-! ## A020708.P556803538485434208

`A214260(n+2)+A193641(n+1)`
-/

namespace A020708.P556803538485434208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 (n + 2) + A193641 (n + 1)

end

end A020708.P556803538485434208

namespace A020708

/-- `A214260(n+2)+A193641(n+1)` -/
def P556803538485434208.Spec : Prop :=
  ∀ n, P556803538485434208.a n = A020708 n

end A020708

/-! ## A020708.P14975574364188695709

`A285184(n+2)-A052980(n+1)`
-/

namespace A020708.P14975574364188695709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (n + 2) - A052980 (n + 1)

end

end A020708.P14975574364188695709

namespace A020708

/-- `A285184(n+2)-A052980(n+1)` -/
def P14975574364188695709.Spec : Prop :=
  ∀ n, P14975574364188695709.a n = A020708 n

end A020708

/-! ## A020708.P10967430588536077955

`A335242(n+3)+A214260(n+1)`
-/

namespace A020708.P10967430588536077955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335242 (n + 3) + A214260 (n + 1)

end

end A020708.P10967430588536077955

namespace A020708

/-- `A335242(n+3)+A214260(n+1)` -/
def P10967430588536077955.Spec : Prop :=
  ∀ n, P10967430588536077955.a n = A020708 n

end A020708

/-! ## A020708.P2503158422763713423

`∑[lcm(A110513(n+2), A110515(n))]+2`
-/

namespace A020708.P2503158422763713423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110513 (n + 2)) (A110515 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A020708.P2503158422763713423

namespace A020708

/-- `∑[lcm(A110513(n+2), A110515(n))]+2` -/
def P2503158422763713423.Spec : Prop :=
  ∀ n, (P2503158422763713423.a n : ℤ) = A020708 n

end A020708

/-! ## A020708.P17474525940975228591

`A335274(n+1)+A193641(n+2)-A335242(n+1)`
-/

namespace A020708.P17474525940975228591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (n + 1) + (A193641 (n + 2) - A335242 (n + 1))

end

end A020708.P17474525940975228591

namespace A020708

/-- `A335274(n+1)+A193641(n+2)-A335242(n+1)` -/
def P17474525940975228591.Spec : Prop :=
  ∀ n, P17474525940975228591.a n = A020708 n

end A020708

/-! ## A020708.P9146796875485078626

`Δ[A019479(n)]`
-/

namespace A020708.P9146796875485078626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020708.P9146796875485078626

namespace A020708

/-- `Δ[A019479(n)]` -/
def P9146796875485078626.Spec : Prop :=
  ∀ n, P9146796875485078626.a n = A020708 n

end A020708

/-! ## A020708.P17513213975948516171

`Δ[A019489(n)]`
-/

namespace A020708.P17513213975948516171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020708.P17513213975948516171

namespace A020708

/-- `Δ[A019489(n)]` -/
def P17513213975948516171.Spec : Prop :=
  ∀ n, P17513213975948516171.a n = A020708 n

end A020708

/-!
# A020709: Pisot sequence E(4,10).

The programs for A020709, the canonical program `A020709.P7784751046474523820` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020709 has offset 0).

The definition of A020709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020709.P7784751046474523820

`3*a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=4, a(1)=10, a(2)=25`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020709

/-- `3*a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P7784751046474523820.Spec : Prop :=
  ∀ n, P7784751046474523820.a n = A020709 n

theorem P7784751046474523820.correct : P7784751046474523820.Spec := by
  intro n
  simp only [A020709]

end A020709

/-! ## A020709.P15497274612897737294

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=4, a(1)=10`
-/

namespace A020709.P15497274612897737294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A020709.P15497274612897737294

namespace A020709

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P15497274612897737294.Spec : Prop :=
  ∀ n, P15497274612897737294.a n = A020709 n

end A020709

/-! ## A020709.P1877228779621156747

`ogf((4-2x+3x^2)/(1-3x+2x^2-2x^3))`
-/

namespace A020709.P1877228779621156747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, 3] [1, -3, 2, -2] n

end

end A020709.P1877228779621156747

namespace A020709

/-- `ogf((4-2x+3x^2)/(1-3x+2x^2-2x^3))` -/
def P1877228779621156747.Spec : Prop :=
  ∀ n, P1877228779621156747.a n = A020709 n

end A020709

/-! ## A020709.P14803272560470628180

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=10`
-/

namespace A020709.P14803272560470628180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A020709.P14803272560470628180

namespace A020709

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P14803272560470628180.Spec : Prop :=
  ∀ n, P14803272560470628180.a n = A020709 n

end A020709

/-! ## A020709.P1605266258375968857

`A120925(n)+2*a(n-1)` with `a(0)=4`
-/

namespace A020709.P1605266258375968857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A120925 n + 2 * a (n - 1)

end

end A020709.P1605266258375968857

namespace A020709

/-- `A120925(n)+2*a(n-1)` -/
def P1605266258375968857.Spec : Prop :=
  ∀ n, P1605266258375968857.a n = A020709 n

end A020709

/-! ## A020709.P8867419246831455949

`A120925(n)+Δ[A120925(n+1)]`
-/

namespace A020709.P8867419246831455949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120925 n + (f1 (n + 1) - f1 n)

end

end A020709.P8867419246831455949

namespace A020709

/-- `A120925(n)+Δ[A120925(n+1)]` -/
def P8867419246831455949.Spec : Prop :=
  ∀ n, P8867419246831455949.a n = A020709 n

end A020709

/-! ## A020709.P7368573736488454986

`A111281(n+4)/4`
-/

namespace A020709.P7368573736488454986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111281 (n + 4) : ℚ) / 4

end

end A020709.P7368573736488454986

namespace A020709

/-- `A111281(n+4)/4` -/
def P7368573736488454986.Spec : Prop :=
  ∀ n, P7368573736488454986.a n = (A020709 n : ℚ)

end A020709

/-! ## A020709.P4928744042335394718

`Δ[A120925(n+2)/2]`
-/

namespace A020709.P4928744042335394718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120925 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020709.P4928744042335394718

namespace A020709

/-- `Δ[A120925(n+2)/2]` -/
def P4928744042335394718.Spec : Prop :=
  ∀ n, P4928744042335394718.a n = (A020709 n : ℚ)

end A020709

/-! ## A020709.P4726231618627012825

`Δ[A115219(n+5)/8]`
-/

namespace A020709.P4726231618627012825
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115219 (n + 5) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020709.P4726231618627012825

namespace A020709

/-- `Δ[A115219(n+5)/8]` -/
def P4726231618627012825.Spec : Prop :=
  ∀ n, P4726231618627012825.a n = (A020709 n : ℚ)

end A020709

/-! ## A020709.P13858519080302270265

`round(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=10`
-/

namespace A020709.P13858519080302270265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A020709.P13858519080302270265

namespace A020709

/-- `round(a(n-1)²/a(n-2))` -/
def P13858519080302270265.Spec : Prop :=
  ∀ n, P13858519080302270265.a n = A020709 n

end A020709

/-! ## A020709.P11493358686260946007

`or(1, floor(a(n-1)²/a(n-2)))` with `a(0)=4, a(1)=10`
-/

namespace A020709.P11493358686260946007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  Int.lor 1 ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020709.P11493358686260946007

namespace A020709

/-- `or(1, floor(a(n-1)²/a(n-2)))` -/
def P11493358686260946007.Spec : Prop :=
  ∀ n, P11493358686260946007.a n = A020709 n

end A020709

/-!
# A020710: a(n) = n + 5.

The programs for A020710, the canonical program `A020710.P12161966585787702209` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020710 has offset 0).

The definition of A020710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+5` (program `A020710.P12161966585787702209`, by `A020710.P12161966585787702209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020710.P12161966585787702209

`n+5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020710

/-- `n+5` -/
def P12161966585787702209.Spec : Prop :=
  ∀ n, (P12161966585787702209.a n : ℤ) = A020710 n

theorem P12161966585787702209.correct : P12161966585787702209.Spec := by
  intro n
  simp only [A020710]

end A020710

/-!
# A020711: Pisot sequences E(5,7), P(5,7).

The programs for A020711, the canonical program `A020711.P16790827519031027951` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020711 has offset 0).

The definition of A020711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020711.P16790827519031027951

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=5, a(1)=7, a(2)=10, a(3)=14`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020711

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P16790827519031027951.Spec : Prop :=
  ∀ n, P16790827519031027951.a n = A020711 n

theorem P16790827519031027951.correct : P16790827519031027951.Spec := by
  intro n
  simp only [A020711]

end A020711

/-! ## A020711.P4994979570998473575

`ogf((5-3x+x^2-4x^3)/(1-2x+x^2-x^3+x^4))`
-/

namespace A020711.P4994979570998473575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, 1, -4] [1, -2, 1, -1, 1] n

end

end A020711.P4994979570998473575

namespace A020711

/-- `ogf((5-3x+x^2-4x^3)/(1-2x+x^2-x^3+x^4))` -/
def P4994979570998473575.Spec : Prop :=
  ∀ n, P4994979570998473575.a n = A020711 n

end A020711

/-! ## A020711.P16977629972777193979

`a(n-1)+a(n-3)-1` with `a(0)=5, a(1)=7, a(2)=10`
-/

namespace A020711.P16977629972777193979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7, 10] fun n a =>
  a (n - 1) + (a (n - 3) - 1)

end

end A020711.P16977629972777193979

namespace A020711

/-- `a(n-1)+a(n-3)-1` -/
def P16977629972777193979.Spec : Prop :=
  ∀ n, P16977629972777193979.a n = A020711 n

end A020711

/-! ## A020711.P15873176671712957625

`a(n-1)-(1-a(n-3))` with `a(0)=5, a(1)=7, a(2)=10`
-/

namespace A020711.P15873176671712957625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7, 10] fun n a =>
  a (n - 1) - (1 - a (n - 3))

end

end A020711.P15873176671712957625

namespace A020711

/-- `a(n-1)-(1-a(n-3))` -/
def P15873176671712957625.Spec : Prop :=
  ∀ n, P15873176671712957625.a n = A020711 n

end A020711

/-! ## A020711.P11115091803473055295

`A048625(n)+1`
-/

namespace A020711.P11115091803473055295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 n + 1

end

end A020711.P11115091803473055295

namespace A020711

/-- `A048625(n)+1` -/
def P11115091803473055295.Spec : Prop :=
  ∀ n, P11115091803473055295.a n = A020711 n

end A020711

/-! ## A020711.P12946368814339948328

`A020745(n)+2`
-/

namespace A020711.P12946368814339948328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 n + 2

end

end A020711.P12946368814339948328

namespace A020711

/-- `A020745(n)+2` -/
def P12946368814339948328.Spec : Prop :=
  ∀ n, P12946368814339948328.a n = A020711 n

end A020711

/-! ## A020711.P754171908831073109

`A048589(n)-2`
-/

namespace A020711.P754171908831073109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 n - 2

end

end A020711.P754171908831073109

namespace A020711

/-- `A048589(n)-2` -/
def P754171908831073109.Spec : Prop :=
  ∀ n, P754171908831073109.a n = A020711 n

end A020711

/-! ## A020711.P6203551797130598370

`A048591(n)-3`
-/

namespace A020711.P6203551797130598370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 n - 3

end

end A020711.P6203551797130598370

namespace A020711

/-- `A048591(n)-3` -/
def P6203551797130598370.Spec : Prop :=
  ∀ n, P6203551797130598370.a n = A020711 n

end A020711

/-! ## A020711.P11623080864773632570

`A128424(n+4)`
-/

namespace A020711.P11623080864773632570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128424 (n + 4)

end

end A020711.P11623080864773632570

namespace A020711

/-- `A128424(n+4)` -/
def P11623080864773632570.Spec : Prop :=
  ∀ n, P11623080864773632570.a n = A020711 n

end A020711

/-! ## A020711.P6532261471096445442

`A048585(n+1)-2`
-/

namespace A020711.P6532261471096445442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 (n + 1) - 2

end

end A020711.P6532261471096445442

namespace A020711

/-- `A048585(n+1)-2` -/
def P6532261471096445442.Spec : Prop :=
  ∀ n, P6532261471096445442.a n = A020711 n

end A020711

/-! ## A020711.P17357145602572495278

`A077868(n+2)+2`
-/

namespace A020711.P17357145602572495278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 2) + 2

end

end A020711.P17357145602572495278

namespace A020711

/-- `A077868(n+2)+2` -/
def P17357145602572495278.Spec : Prop :=
  ∀ n, P17357145602572495278.a n = A020711 n

end A020711

/-! ## A020711.P598770204069460988

`A048588(n+1)-3`
-/

namespace A020711.P598770204069460988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 (n + 1) - 3

end

end A020711.P598770204069460988

namespace A020711

/-- `A048588(n+1)-3` -/
def P598770204069460988.Spec : Prop :=
  ∀ n, P598770204069460988.a n = A020711 n

end A020711

/-! ## A020711.P916862657619372265

`A068921(n+4)+1`
-/

namespace A020711.P916862657619372265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 4) + 1

end

end A020711.P916862657619372265

namespace A020711

/-- `A068921(n+4)+1` -/
def P916862657619372265.Spec : Prop :=
  ∀ n, P916862657619372265.a n = A020711 n

end A020711

/-! ## A020711.P16271408321021618047

`A000930(n+5)+1`
-/

namespace A020711.P16271408321021618047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 5) + 1

end

end A020711.P16271408321021618047

namespace A020711

/-- `A000930(n+5)+1` -/
def P16271408321021618047.Spec : Prop :=
  ∀ n, P16271408321021618047.a n = A020711 n

end A020711

/-! ## A020711.P2975250219134987179

`A108104(A020744(n+1))+1`
-/

namespace A020711.P2975250219134987179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A020744 (n + 1)).toNat + 1

end

end A020711.P2975250219134987179

namespace A020711

/-- `A108104(A020744(n+1))+1` -/
def P2975250219134987179.Spec : Prop :=
  ∀ n, P2975250219134987179.a n = A020711 n

end A020711

/-! ## A020711.P1179319947445915692

`A170934(n+4)-a(n-1)` with `a(0)=5`
-/

namespace A020711.P1179319947445915692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A170934 (n + 4) - a (n - 1)

end

end A020711.P1179319947445915692

namespace A020711

/-- `A170934(n+4)-a(n-1)` -/
def P1179319947445915692.Spec : Prop :=
  ∀ n, P1179319947445915692.a n = A020711 n

end A020711

/-! ## A020711.P11800880804394573833

`A048626(n)-A077868(n)`
-/

namespace A020711.P11800880804394573833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048626 n - A077868 n

end

end A020711.P11800880804394573833

namespace A020711

/-- `A048626(n)-A077868(n)` -/
def P11800880804394573833.Spec : Prop :=
  ∀ n, P11800880804394573833.a n = A020711 n

end A020711

/-! ## A020711.P231589723412780763

`Δ[A164487(n+3)]`
-/

namespace A020711.P231589723412780763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164487 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020711.P231589723412780763

namespace A020711

/-- `Δ[A164487(n+3)]` -/
def P231589723412780763.Spec : Prop :=
  ∀ n, P231589723412780763.a n = A020711 n

end A020711

/-! ## A020711.P6429469935298832006

`Δ[A020721(n+1)]+1`
-/

namespace A020711.P6429469935298832006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A020711.P6429469935298832006

namespace A020711

/-- `Δ[A020721(n+1)]+1` -/
def P6429469935298832006.Spec : Prop :=
  ∀ n, P6429469935298832006.a n = A020711 n

end A020711

/-! ## A020711.P3807728887533067471

`Δ[A020749(n+1)]+1`
-/

namespace A020711.P3807728887533067471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A020711.P3807728887533067471

namespace A020711

/-- `Δ[A020749(n+1)]+1` -/
def P3807728887533067471.Spec : Prop :=
  ∀ n, P3807728887533067471.a n = A020711 n

end A020711

/-!
# A020712: Pisot sequences E(5,8), P(5,8).

The programs for A020712, the canonical program `A020712.P17792486667251270204` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020712 has offset 0).

The definition of A020712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020712.P17792486667251270204

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020712

/-- `a(n-1)+a(n-2)` -/
def P17792486667251270204.Spec : Prop :=
  ∀ n, (P17792486667251270204.a n : ℤ) = A020712 n

theorem P17792486667251270204.correct : P17792486667251270204.Spec := by
  intro n
  simp only [A020712]

end A020712

/-! ## A020712.P14185834615774258019

`A020701(n+1)`
-/

namespace A020712.P14185834615774258019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 1)

end

end A020712.P14185834615774258019

namespace A020712

/-- `A020701(n+1)` -/
def P14185834615774258019.Spec : Prop :=
  ∀ n, P14185834615774258019.a n = A020712 n

end A020712

/-! ## A020712.P9644296076670651385

`A000045(n+5)`
-/

namespace A020712.P9644296076670651385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5)

end

end A020712.P9644296076670651385

namespace A020712

/-- `A000045(n+5)` -/
def P9644296076670651385.Spec : Prop :=
  ∀ n, P9644296076670651385.a n = A020712 n

end A020712

/-! ## A020712.P9301876662722942056

`ogf((5+3x)/(1-x-x^2))`
-/

namespace A020712.P9301876662722942056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3] [1, -1, -1] n

end

end A020712.P9301876662722942056

namespace A020712

/-- `ogf((5+3x)/(1-x-x^2))` -/
def P9301876662722942056.Spec : Prop :=
  ∀ n, P9301876662722942056.a n = A020712 n

end A020712

/-! ## A020712.P16617396066183479966

`round(ϕ*a(n-1))` with `a(0)=5`
-/

namespace A020712.P16617396066183479966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A020712.P16617396066183479966

namespace A020712

/-- `round(ϕ*a(n-1))` -/
def P16617396066183479966.Spec : Prop :=
  ∀ n, P16617396066183479966.a n = A020712 n

end A020712

/-! ## A020712.P15112699433769758762

`round(a(n-1)/(ϕ-1))` with `a(0)=5`
-/

namespace A020712.P15112699433769758762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.goldenRatio - 1))

end

end A020712.P15112699433769758762

namespace A020712

/-- `round(a(n-1)/(ϕ-1))` -/
def P15112699433769758762.Spec : Prop :=
  ∀ n, P15112699433769758762.a n = A020712 n

end A020712

/-! ## A020712.P7010383132747017621

`a(n-1)-(a(n-1)%a(n-2)-a(n-1))` with `a(0)=5, a(1)=8`
-/

namespace A020712.P7010383132747017621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) (a (n - 2)) - a (n - 1))

end

end A020712.P7010383132747017621

namespace A020712

/-- `a(n-1)-(a(n-1)%a(n-2)-a(n-1))` -/
def P7010383132747017621.Spec : Prop :=
  ∀ n, P7010383132747017621.a n = A020712 n

end A020712

/-! ## A020712.P8455569937170894895

`A020732(n)+1`
-/

namespace A020712.P8455569937170894895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n + 1

end

end A020712.P8455569937170894895

namespace A020712

/-- `A020732(n)+1` -/
def P8455569937170894895.Spec : Prop :=
  ∀ n, P8455569937170894895.a n = A020712 n

end A020712

/-! ## A020712.P14964763025263202647

`A020695(n+2)`
-/

namespace A020712.P14964763025263202647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 2)

end

end A020712.P14964763025263202647

namespace A020712

/-- `A020695(n+2)` -/
def P14964763025263202647.Spec : Prop :=
  ∀ n, P14964763025263202647.a n = A020712 n

end A020712

/-! ## A020712.P14110897917530302360

`A020717(n)-1`
-/

namespace A020712.P14110897917530302360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n - 1

end

end A020712.P14110897917530302360

namespace A020712

/-- `A020717(n)-1` -/
def P14110897917530302360.Spec : Prop :=
  ∀ n, P14110897917530302360.a n = A020712 n

end A020712

/-! ## A020712.P9469917888534653857

`A020743(n)-2`
-/

namespace A020712.P9469917888534653857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n - 2

end

end A020712.P9469917888534653857

namespace A020712

/-- `A020743(n)-2` -/
def P9469917888534653857.Spec : Prop :=
  ∀ n, P9469917888534653857.a n = A020712 n

end A020712

/-! ## A020712.P12382816821830626245

`A071679(n+3)`
-/

namespace A020712.P12382816821830626245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 3)

end

end A020712.P12382816821830626245

namespace A020712

/-- `A071679(n+3)` -/
def P12382816821830626245.Spec : Prop :=
  ∀ n, P12382816821830626245.a n = A020712 n

end A020712

/-! ## A020712.P3068451580680742273

`A373566(n+3)`
-/

namespace A020712.P3068451580680742273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (n + 3)

end

end A020712.P3068451580680742273

namespace A020712

/-- `A373566(n+3)` -/
def P3068451580680742273.Spec : Prop :=
  ∀ n, P3068451580680742273.a n = A020712 n

end A020712

/-! ## A020712.P9497860568318403288

`A264800(n+5)`
-/

namespace A020712.P9497860568318403288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264800 (n + 5)

end

end A020712.P9497860568318403288

namespace A020712

/-- `A264800(n+5)` -/
def P9497860568318403288.Spec : Prop :=
  ∀ n, P9497860568318403288.a n = A020712 n

end A020712

/-! ## A020712.P13952151561653722565

`A212804(n+6)`
-/

namespace A020712.P13952151561653722565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 6)

end

end A020712.P13952151561653722565

namespace A020712

/-- `A212804(n+6)` -/
def P13952151561653722565.Spec : Prop :=
  ∀ n, P13952151561653722565.a n = A020712 n

end A020712

/-! ## A020712.P15565523293844003296

`A324969(n+6)`
-/

namespace A020712.P15565523293844003296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 6)

end

end A020712.P15565523293844003296

namespace A020712

/-- `A324969(n+6)` -/
def P15565523293844003296.Spec : Prop :=
  ∀ n, P15565523293844003296.a n = A020712 n

end A020712

/-! ## A020712.P11938041763515531128

`A097594(Δ[n²])`
-/

namespace A020712.P11938041763515531128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A020712.P11938041763515531128

namespace A020712

/-- `A097594(Δ[n²])` -/
def P11938041763515531128.Spec : Prop :=
  ∀ n, P11938041763515531128.a n = A020712 n

end A020712

/-! ## A020712.P9646557006225547168

`A020706(n+1)-1`
-/

namespace A020712.P9646557006225547168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (n + 1) - 1

end

end A020712.P9646557006225547168

namespace A020712

/-- `A020706(n+1)-1` -/
def P9646557006225547168.Spec : Prop :=
  ∀ n, P9646557006225547168.a n = A020712 n

end A020712

/-! ## A020712.P3214229443245665672

`A048584(n+1)-2`
-/

namespace A020712.P3214229443245665672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 (n + 1) - 2

end

end A020712.P3214229443245665672

namespace A020712

/-- `A048584(n+1)-2` -/
def P3214229443245665672.Spec : Prop :=
  ∀ n, P3214229443245665672.a n = A020712 n

end A020712

/-!
# A020713: Pisot sequences E(5,9), P(5,9).

The programs for A020713, the canonical program `A020713.P9821176582521597793` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020713 has offset 0).

The definition of A020713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020713.P9821176582521597793

`2*a(n-1)-a(n-2)+a(n-3)` with `a(0)=5, a(1)=9, a(2)=16`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020713

/-- `2*a(n-1)-a(n-2)+a(n-3)` -/
def P9821176582521597793.Spec : Prop :=
  ∀ n, P9821176582521597793.a n = A020713 n

theorem P9821176582521597793.correct : P9821176582521597793.Spec := by
  intro n
  simp only [A020713]

end A020713

/-! ## A020713.P10172000621105423587

`(-1)^n*A099529(n+6)`
-/

namespace A020713.P10172000621105423587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A099529 (n + 6)

end

end A020713.P10172000621105423587

namespace A020713

/-- `(-1)^n*A099529(n+6)` -/
def P10172000621105423587.Spec : Prop :=
  ∀ n, P10172000621105423587.a n = A020713 n

end A020713

/-! ## A020713.P10348275533880806906

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=5, a(1)=9`
-/

namespace A020713.P10348275533880806906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 9] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) - (1 : ℚ) / 2⌉

end

end A020713.P10348275533880806906

namespace A020713

/-- `ceil(a(n-1)²/a(n-2)-1/2)` -/
def P10348275533880806906.Spec : Prop :=
  ∀ n, P10348275533880806906.a n = A020713 n

end A020713

/-! ## A020713.P27851371203529600

`ogf((5-x+3x^2)/(1-2x+x^2-x^3))`
-/

namespace A020713.P27851371203529600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1, 3] [1, -2, 1, -1] n

end

end A020713.P27851371203529600

namespace A020713

/-- `ogf((5-x+3x^2)/(1-2x+x^2-x^3))` -/
def P27851371203529600.Spec : Prop :=
  ∀ n, P27851371203529600.a n = A020713 n

end A020713

/-! ## A020713.P7365056716083344943

`record[a(n-2)-a(n-3)]` with `a(0)=5, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A020713.P7365056716083344943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 0, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020713.P7365056716083344943

namespace A020713

/-- `record[a(n-2)-a(n-3)]` -/
def P7365056716083344943.Spec : Prop :=
  ∀ n, P7365056716083344943.a n = A020713 n

end A020713

/-! ## A020713.P10217526036346840015

`A048587(n)-1`
-/

namespace A020713.P10217526036346840015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048587 n - 1

end

end A020713.P10217526036346840015

namespace A020713

/-- `A048587(n)-1` -/
def P10217526036346840015.Spec : Prop :=
  ∀ n, P10217526036346840015.a n = A020713 n

end A020713

/-! ## A020713.P10243475060397194714

`A005314(n+4)`
-/

namespace A020713.P10243475060397194714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 4)

end

end A020713.P10243475060397194714

namespace A020713

/-- `A005314(n+4)` -/
def P10243475060397194714.Spec : Prop :=
  ∀ n, P10243475060397194714.a n = A020713 n

end A020713

/-! ## A020713.P2983758487182693056

`A018908(n+2)-1`
-/

namespace A020713.P2983758487182693056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018908 (n + 2) - 1

end

end A020713.P2983758487182693056

namespace A020713

/-- `A018908(n+2)-1` -/
def P2983758487182693056.Spec : Prop :=
  ∀ n, P2983758487182693056.a n = A020713 n

end A020713

/-! ## A020713.P10992416307683532855

`A096231(2*(n+1))`
-/

namespace A020713.P10992416307683532855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (2 * (n + 1))

end

end A020713.P10992416307683532855

namespace A020713

/-- `A096231(2*(n+1))` -/
def P10992416307683532855.Spec : Prop :=
  ∀ n, P10992416307683532855.a n = A020713 n

end A020713

/-! ## A020713.P2644303936863860912

`A289692(n+4)+1`
-/

namespace A020713.P2644303936863860912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289692 (n + 4) + 1

end

end A020713.P2644303936863860912

namespace A020713

/-- `A289692(n+4)+1` -/
def P2644303936863860912.Spec : Prop :=
  ∀ n, P2644303936863860912.a n = A020713 n

end A020713

/-! ## A020713.P12664184361664872947

`A134816(2*(n+4))`
-/

namespace A020713.P12664184361664872947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 4))

end

end A020713.P12664184361664872947

namespace A020713

/-- `A134816(2*(n+4))` -/
def P12664184361664872947.Spec : Prop :=
  ∀ n, P12664184361664872947.a n = A020713 n

end A020713

/-! ## A020713.P8039410925372751129

`A167385(2*n)+4`
-/

namespace A020713.P8039410925372751129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 (2 * n) + 4

end

end A020713.P8039410925372751129

namespace A020713

/-- `A167385(2*n)+4` -/
def P8039410925372751129.Spec : Prop :=
  ∀ n, P8039410925372751129.a n = A020713 n

end A020713

/-! ## A020713.P3595863704433387459

`A164001(2*n+5)`
-/

namespace A020713.P3595863704433387459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * n + 5)

end

end A020713.P3595863704433387459

namespace A020713

/-- `A164001(2*n+5)` -/
def P3595863704433387459.Spec : Prop :=
  ∀ n, P3595863704433387459.a n = A020713 n

end A020713

/-! ## A020713.P7699488837576507331

`A228361(2*n+7)`
-/

namespace A020713.P7699488837576507331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * n + 7)

end

end A020713.P7699488837576507331

namespace A020713

/-- `A228361(2*n+7)` -/
def P7699488837576507331.Spec : Prop :=
  ∀ n, P7699488837576507331.a n = A020713 n

end A020713

/-! ## A020713.P8318206877675379813

`A182097(2*n+9)`
-/

namespace A020713.P8318206877675379813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n + 9)

end

end A020713.P8318206877675379813

namespace A020713

/-- `A182097(2*n+9)` -/
def P8318206877675379813.Spec : Prop :=
  ∀ n, P8318206877675379813.a n = A020713 n

end A020713

/-! ## A020713.P17928015746215899696

`A164315(Δ[n²])+3`
-/

namespace A020713.P17928015746215899696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A020713.P17928015746215899696

namespace A020713

/-- `A164315(Δ[n²])+3` -/
def P17928015746215899696.Spec : Prop :=
  ∀ n, P17928015746215899696.a n = A020713 n

end A020713

/-! ## A020713.P9702810124928630184

`∑[A005251(n+4)]+3`
-/

namespace A020713.P9702810124928630184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A020713.P9702810124928630184

namespace A020713

/-- `∑[A005251(n+4)]+3` -/
def P9702810124928630184.Spec : Prop :=
  ∀ n, P9702810124928630184.a n = A020713 n

end A020713

/-! ## A020713.P16122446126945009271

`A054405(2*(n+1))+2`
-/

namespace A020713.P16122446126945009271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (2 * (n + 1)) + 2

end

end A020713.P16122446126945009271

namespace A020713

/-- `A054405(2*(n+1))+2` -/
def P16122446126945009271.Spec : Prop :=
  ∀ n, P16122446126945009271.a n = A020713 n

end A020713

/-! ## A020713.P8725196234111700120

`A000931(2*A020715(n))`
-/

namespace A020713.P8725196234111700120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * A020715 n).toNat

end

end A020713.P8725196234111700120

namespace A020713

/-- `A000931(2*A020715(n))` -/
def P8725196234111700120.Spec : Prop :=
  ∀ n, P8725196234111700120.a n = A020713 n

end A020713

/-! ## A020713.P16199992373554134802

`A127682(2*A020742(n))`
-/

namespace A020713.P16199992373554134802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * A020742 n).toNat

end

end A020713.P16199992373554134802

namespace A020713

/-- `A127682(2*A020742(n))` -/
def P16199992373554134802.Spec : Prop :=
  ∀ n, P16199992373554134802.a n = A020713 n

end A020713

/-!
# A020714: a(n) = 5 * 2^n.

The programs for A020714, the canonical program `A020714.P4672987561035728998` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020714 has offset 0).

The definition of A020714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n` (program `A020714.P4672987561035728998`, by `A020714.P4672987561035728998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020714.P4672987561035728998

`5*2^n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020714

/-- `5*2^n` -/
def P4672987561035728998.Spec : Prop :=
  ∀ n, (P4672987561035728998.a n : ℤ) = A020714 n

theorem P4672987561035728998.correct : P4672987561035728998.Spec := by
  intro n
  simp only [A020714]

end A020714

/-!
# A020715: a(n) = n + 6.

The programs for A020715, the canonical program `A020715.P16829433482326866133` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020715 has offset 0).

The definition of A020715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+6` (program `A020715.P16829433482326866133`, by `A020715.P16829433482326866133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020715.P16829433482326866133

`n+6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020715

/-- `n+6` -/
def P16829433482326866133.Spec : Prop :=
  ∀ n, (P16829433482326866133.a n : ℤ) = A020715 n

theorem P16829433482326866133.correct : P16829433482326866133.Spec := by
  intro n
  simp only [A020715]

end A020715

/-!
# A020716: Pisot sequences E(6,8), P(6,8).

The programs for A020716, the canonical program `A020716.P2897504729932051013` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020716 has offset 0).

The definition of A020716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020716.P2897504729932051013

`a(n-2)+a(n-3)+1` with `a(0)=6, a(1)=8, a(2)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020716

/-- `a(n-2)+a(n-3)+1` -/
def P2897504729932051013.Spec : Prop :=
  ∀ n, (P2897504729932051013.a n : ℤ) = A020716 n

theorem P2897504729932051013.correct : P2897504729932051013.Spec := by
  intro n
  simp only [A020716]

end A020716

/-! ## A020716.P5902153863794203473

`∑[ogf((1+2x+2x^2+x^3)/(1-x^2-x^3))]+5`
-/

namespace A020716.P5902153863794203473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, 0, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A020716.P5902153863794203473

namespace A020716

/-- `∑[ogf((1+2x+2x^2+x^3)/(1-x^2-x^3))]+5` -/
def P5902153863794203473.Spec : Prop :=
  ∀ n, P5902153863794203473.a n = A020716 n

end A020716

/-! ## A020716.P13062514394820993871

`A020720(n)-1`
-/

namespace A020716.P13062514394820993871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 n - 1

end

end A020716.P13062514394820993871

namespace A020716

/-- `A020720(n)-1` -/
def P13062514394820993871.Spec : Prop :=
  ∀ n, P13062514394820993871.a n = A020716 n

end A020716

/-! ## A020716.P6955133365194302101

`A018917(n)+3`
-/

namespace A020716.P6955133365194302101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018917 n + 3

end

end A020716.P6955133365194302101

namespace A020716

/-- `A018917(n)+3` -/
def P6955133365194302101.Spec : Prop :=
  ∀ n, P6955133365194302101.a n = A020716 n

end A020716

/-! ## A020716.P5754201841035005911

`A023434(n+6)`
-/

namespace A020716.P5754201841035005911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 6)

end

end A020716.P5754201841035005911

namespace A020716

/-- `A023434(n+6)` -/
def P5754201841035005911.Spec : Prop :=
  ∀ n, P5754201841035005911.a n = A020716 n

end A020716

/-! ## A020716.P9305723616880412659

`A054405(n+3)+1`
-/

namespace A020716.P9305723616880412659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (n + 3) + 1

end

end A020716.P9305723616880412659

namespace A020716

/-- `A054405(n+3)+1` -/
def P9305723616880412659.Spec : Prop :=
  ∀ n, P9305723616880412659.a n = A020716 n

end A020716

/-! ## A020716.P17260094128956839582

`A164315(n+2)+2`
-/

namespace A020716.P17260094128956839582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (n + 2) + 2

end

end A020716.P17260094128956839582

namespace A020716

/-- `A164315(n+2)+2` -/
def P17260094128956839582.Spec : Prop :=
  ∀ n, P17260094128956839582.a n = A020716 n

end A020716

/-! ## A020716.P5609590120653276689

`A167385(n+1)+3`
-/

namespace A020716.P5609590120653276689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 (n + 1) + 3

end

end A020716.P5609590120653276689

namespace A020716

/-- `A167385(n+1)+3` -/
def P5609590120653276689.Spec : Prop :=
  ∀ n, P5609590120653276689.a n = A020716 n

end A020716

/-! ## A020716.P12307152092148229150

`A096231(n+3)-1`
-/

namespace A020716.P12307152092148229150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 3) - 1

end

end A020716.P12307152092148229150

namespace A020716

/-- `A096231(n+3)-1` -/
def P12307152092148229150.Spec : Prop :=
  ∀ n, P12307152092148229150.a n = A020716 n

end A020716

/-! ## A020716.P15362766026782145487

`A164001(n+6)-1`
-/

namespace A020716.P15362766026782145487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 6) - 1

end

end A020716.P15362766026782145487

namespace A020716

/-- `A164001(n+6)-1` -/
def P15362766026782145487.Spec : Prop :=
  ∀ n, P15362766026782145487.a n = A020716 n

end A020716

/-! ## A020716.P15967286062824026461

`A182097(n+10)-1`
-/

namespace A020716.P15967286062824026461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 10) - 1

end

end A020716.P15967286062824026461

namespace A020716

/-- `A182097(n+10)-1` -/
def P15967286062824026461.Spec : Prop :=
  ∀ n, P15967286062824026461.a n = A020716 n

end A020716

/-! ## A020716.P10666018949453223455

`∑[record[A000931(n)]]+5`
-/

namespace A020716.P10666018949453223455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A020716.P10666018949453223455

namespace A020716

/-- `∑[record[A000931(n)]]+5` -/
def P10666018949453223455.Spec : Prop :=
  ∀ n, P10666018949453223455.a n = A020716 n

end A020716

/-! ## A020716.P5955791891358163819

`∑[A164001(n+1)]+5`
-/

namespace A020716.P5955791891358163819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A020716.P5955791891358163819

namespace A020716

/-- `∑[A164001(n+1)]+5` -/
def P5955791891358163819.Spec : Prop :=
  ∀ n, P5955791891358163819.a n = A020716 n

end A020716

/-! ## A020716.P5395989044386345625

`∑[A228361(n+3)]+4`
-/

namespace A020716.P5395989044386345625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A020716.P5395989044386345625

namespace A020716

/-- `∑[A228361(n+3)]+4` -/
def P5395989044386345625.Spec : Prop :=
  ∀ n, P5395989044386345625.a n = A020716 n

end A020716

/-! ## A020716.P933775355991896834

`record[A023434(abs(A023448(n)))]`
-/

namespace A020716.P933775355991896834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 |A023448 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020716.P933775355991896834

namespace A020716

/-- `record[A023434(abs(A023448(n)))]` -/
def P933775355991896834.Spec : Prop :=
  ∀ n, P933775355991896834.a n = A020716 n

end A020716

/-! ## A020716.P4167469116513533094

`sqrt(A207025(n+2))+2`
-/

namespace A020716.P4167469116513533094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 2) : ℝ) + 2

end

end A020716.P4167469116513533094

namespace A020716

/-- `sqrt(A207025(n+2))+2` -/
def P4167469116513533094.Spec : Prop :=
  ∀ n, P4167469116513533094.a n = (A020716 n : ℝ)

end A020716

/-!
# A020717: Pisot sequences L(6,9), E(6,9).

The programs for A020717, the canonical program `A020717.P17284353324538551803` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020717 has offset 0).

The definition of A020717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020717.P17284353324538551803

`A020706(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020717

/-- `A020706(n+1)` -/
def P17284353324538551803.Spec : Prop :=
  ∀ n, P17284353324538551803.a n = A020717 n

theorem P17284353324538551803.correct : P17284353324538551803.Spec := by
  intro n
  simp only [A020717]

end A020717

/-! ## A020717.P3336347264893086974

`A001611(n+5)`
-/

namespace A020717.P3336347264893086974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 5)

end

end A020717.P3336347264893086974

namespace A020717

/-- `A001611(n+5)` -/
def P3336347264893086974.Spec : Prop :=
  ∀ n, P3336347264893086974.a n = A020717 n

end A020717

/-! ## A020717.P15524273620975088427

`A000045(n+5)+1`
-/

namespace A020717.P15524273620975088427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) + 1

end

end A020717.P15524273620975088427

namespace A020717

/-- `A000045(n+5)+1` -/
def P15524273620975088427.Spec : Prop :=
  ∀ n, P15524273620975088427.a n = A020717 n

end A020717

/-! ## A020717.P2855516225831356038

`2*a(n-1)-a(n-3)` with `a(0)=6, a(1)=9, a(2)=14`
-/

namespace A020717.P2855516225831356038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9, 14] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A020717.P2855516225831356038

namespace A020717

/-- `2*a(n-1)-a(n-3)` -/
def P2855516225831356038.Spec : Prop :=
  ∀ n, P2855516225831356038.a n = A020717 n

end A020717

/-! ## A020717.P7295696796209724651

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=6, a(1)=9`
-/

namespace A020717.P7295696796209724651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A020717.P7295696796209724651

namespace A020717

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P7295696796209724651.Spec : Prop :=
  ∀ n, P7295696796209724651.a n = A020717 n

end A020717

/-! ## A020717.P1041661474547954661

`floor(ϕ*a(n-1))` with `a(0)=6`
-/

namespace A020717.P1041661474547954661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A020717.P1041661474547954661

namespace A020717

/-- `floor(ϕ*a(n-1))` -/
def P1041661474547954661.Spec : Prop :=
  ∀ n, P1041661474547954661.a n = A020717 n

end A020717

/-! ## A020717.P1383177446876469789

`∑[ogf((-6+3x+4x^2)/(-1+x+x^2))]`
-/

namespace A020717.P1383177446876469789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -3, -4] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020717.P1383177446876469789

namespace A020717

/-- `∑[ogf((-6+3x+4x^2)/(-1+x+x^2))]` -/
def P1383177446876469789.Spec : Prop :=
  ∀ n, P1383177446876469789.a n = A020717 n

end A020717

/-! ## A020717.P567585116719214997

`ogf((6-3x-4x^2)/(1-2x+x^3))`
-/

namespace A020717.P567585116719214997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -3, -4] [1, -2, 0, 1] n

end

end A020717.P567585116719214997

namespace A020717

/-- `ogf((6-3x-4x^2)/(1-2x+x^3))` -/
def P567585116719214997.Spec : Prop :=
  ∀ n, P567585116719214997.a n = A020717 n

end A020717

/-! ## A020717.P11195336795635243773

`ceil(ϕ*a(n-1))-1` with `a(0)=6`
-/

namespace A020717.P11195336795635243773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ - 1

end

end A020717.P11195336795635243773

namespace A020717

/-- `ceil(ϕ*a(n-1))-1` -/
def P11195336795635243773.Spec : Prop :=
  ∀ n, P11195336795635243773.a n = A020717 n

end A020717

/-! ## A020717.P8710212657930722407

`floor(a(n-1)/(ϕ-1))` with `a(0)=6`
-/

namespace A020717.P8710212657930722407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A020717.P8710212657930722407

namespace A020717

/-- `floor(a(n-1)/(ϕ-1))` -/
def P8710212657930722407.Spec : Prop :=
  ∀ n, P8710212657930722407.a n = A020717 n

end A020717

/-! ## A020717.P13710002094216210768

`round(ϕ*a(n-1))-1` with `a(0)=6`
-/

namespace A020717.P13710002094216210768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) - 1

end

end A020717.P13710002094216210768

namespace A020717

/-- `round(ϕ*a(n-1))-1` -/
def P13710002094216210768.Spec : Prop :=
  ∀ n, P13710002094216210768.a n = A020717 n

end A020717

/-! ## A020717.P6090182510096850483

`a(n-1)+a(n-2)-1` with `a(0)=6, a(1)=9`
-/

namespace A020717.P6090182510096850483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9] fun n a =>
  a (n - 1) + (a (n - 2) - 1)

end

end A020717.P6090182510096850483

namespace A020717

/-- `a(n-1)+a(n-2)-1` -/
def P6090182510096850483.Spec : Prop :=
  ∀ n, P6090182510096850483.a n = A020717 n

end A020717

/-! ## A020717.P9525503143375838611

`a(n-1)-(1-a(n-2))` with `a(0)=6, a(1)=9`
-/

namespace A020717.P9525503143375838611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A020717.P9525503143375838611

namespace A020717

/-- `a(n-1)-(1-a(n-2))` -/
def P9525503143375838611.Spec : Prop :=
  ∀ n, P9525503143375838611.a n = A020717 n

end A020717

/-! ## A020717.P12825065103461675886

`A020712(n)+1`
-/

namespace A020717.P12825065103461675886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n + 1

end

end A020717.P12825065103461675886

namespace A020717

/-- `A020712(n)+1` -/
def P12825065103461675886.Spec : Prop :=
  ∀ n, P12825065103461675886.a n = A020717 n

end A020717

/-! ## A020717.P2689093820927036848

`A020732(n)+2`
-/

namespace A020717.P2689093820927036848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n + 2

end

end A020717.P2689093820927036848

namespace A020717

/-- `A020732(n)+2` -/
def P2689093820927036848.Spec : Prop :=
  ∀ n, P2689093820927036848.a n = A020717 n

end A020717

/-! ## A020717.P15842286385833381176

`A020743(n)-1`
-/

namespace A020717.P15842286385833381176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n - 1

end

end A020717.P15842286385833381176

namespace A020717

/-- `A020743(n)-1` -/
def P15842286385833381176.Spec : Prop :=
  ∀ n, P15842286385833381176.a n = A020717 n

end A020717

/-! ## A020717.P12171886302163854850

`A048577(n+2)`
-/

namespace A020717.P12171886302163854850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (n + 2)

end

end A020717.P12171886302163854850

namespace A020717

/-- `A048577(n+2)` -/
def P12171886302163854850.Spec : Prop :=
  ∀ n, P12171886302163854850.a n = A020717 n

end A020717

/-! ## A020717.P3205117523647636974

`A226271(n+3)`
-/

namespace A020717.P3205117523647636974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226271 (n + 3)

end

end A020717.P3205117523647636974

namespace A020717

/-- `A226271(n+3)` -/
def P3205117523647636974.Spec : Prop :=
  ∀ n, P3205117523647636974.a n = A020717 n

end A020717

/-! ## A020717.P7736250289287913718

`A301791(n+3)`
-/

namespace A020717.P7736250289287913718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301791 (n + 3)

end

end A020717.P7736250289287913718

namespace A020717

/-- `A301791(n+3)` -/
def P7736250289287913718.Spec : Prop :=
  ∀ n, P7736250289287913718.a n = A020717 n

end A020717

/-! ## A020717.P11526620154789204302

`∑[A020695(n)]+4`
-/

namespace A020717.P11526620154789204302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A020717.P11526620154789204302

namespace A020717

/-- `∑[A020695(n)]+4` -/
def P11526620154789204302.Spec : Prop :=
  ∀ n, P11526620154789204302.a n = A020717 n

end A020717

/-!
# A020718: Pisot sequences E(6,10), P(6,10).

The programs for A020718, the canonical program `A020718.P14910920242116792938` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020718 has offset 0).

The definition of A020718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020718.P14910920242116792938

`2*a(n-1)-a(n-3)+a(n-5)-a(n-6)` with `a(0)=6, a(1)=10, a(2)=17, a(3)=29, a(4)=49, a(5)=83`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020718

/-- `2*a(n-1)-a(n-3)+a(n-5)-a(n-6)` -/
def P14910920242116792938.Spec : Prop :=
  ∀ n, P14910920242116792938.a n = A020718 n

theorem P14910920242116792938.correct : P14910920242116792938.Spec := by
  intro n
  simp only [A020718]

end A020718

/-! ## A020718.P16286437934931851663

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=6, a(1)=10`
-/

namespace A020718.P16286437934931851663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A020718.P16286437934931851663

namespace A020718

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P16286437934931851663.Spec : Prop :=
  ∀ n, P16286437934931851663.a n = A020718 n

end A020718

/-! ## A020718.P1100171694132685087

`∑[A340217(n+2)]+4`
-/

namespace A020718.P1100171694132685087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A020718.P1100171694132685087

namespace A020718

/-- `∑[A340217(n+2)]+4` -/
def P1100171694132685087.Spec : Prop :=
  ∀ n, P1100171694132685087.a n = A020718 n

end A020718

/-! ## A020718.P4926561426412017433

`A020710(n)+∑[∑[A340215(n+1)]]`
-/

namespace A020718.P4926561426412017433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020718.P4926561426412017433

namespace A020718

/-- `A020710(n)+∑[∑[A340215(n+1)]]` -/
def P4926561426412017433.Spec : Prop :=
  ∀ n, P4926561426412017433.a n = A020718 n

end A020718

/-! ## A020718.P14104372458711561769

`A020725(n+1)+∑[∑[A340215(n+1)]]+3`
-/

namespace A020718.P14104372458711561769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A020718.P14104372458711561769

namespace A020718

/-- `A020725(n+1)+∑[∑[A340215(n+1)]]+3` -/
def P14104372458711561769.Spec : Prop :=
  ∀ n, P14104372458711561769.a n = A020718 n

end A020718

/-! ## A020718.P5504946379497823791

`round(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=10`
-/

namespace A020718.P5504946379497823791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A020718.P5504946379497823791

namespace A020718

/-- `round(a(n-1)²/a(n-2))` -/
def P5504946379497823791.Spec : Prop :=
  ∀ n, P5504946379497823791.a n = A020718 n

end A020718

/-!
# A020719: a(n) = n + 7.

The programs for A020719, the canonical program `A020719.P8384566430789263348` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020719 has offset 0).

The definition of A020719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+7` (program `A020719.P8384566430789263348`, by `A020719.P8384566430789263348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020719.P8384566430789263348

`n+7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020719

/-- `n+7` -/
def P8384566430789263348.Spec : Prop :=
  ∀ n, (P8384566430789263348.a n : ℤ) = A020719 n

theorem P8384566430789263348.correct : P8384566430789263348.Spec := by
  intro n
  simp only [A020719]

end A020719

/-!
# A020720: Pisot sequences E(7,9), P(7,9).

The programs for A020720, the canonical program `A020720.P1303832423754234733` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020720 has offset 0).

The definition of A020720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020720.P1303832423754234733

`a(n-2)+a(n-3)` with `a(0)=7, a(1)=9, a(2)=12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020720

/-- `a(n-2)+a(n-3)` -/
def P1303832423754234733.Spec : Prop :=
  ∀ n, (P1303832423754234733.a n : ℤ) = A020720 n

theorem P1303832423754234733.correct : P1303832423754234733.Spec := by
  intro n
  simp only [A020720]

end A020720

/-! ## A020720.P16207618435555912491

`ogf((7+9x+5x^2)/(1-x^2-x^3))`
-/

namespace A020720.P16207618435555912491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 9, 5] [1, 0, -1, -1] n

end

end A020720.P16207618435555912491

namespace A020720

/-- `ogf((7+9x+5x^2)/(1-x^2-x^3))` -/
def P16207618435555912491.Spec : Prop :=
  ∀ n, P16207618435555912491.a n = A020720 n

end A020720

/-! ## A020720.P15520009754501838936

`A020716(n)+1`
-/

namespace A020720.P15520009754501838936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020716 n + 1

end

end A020720.P15520009754501838936

namespace A020720

/-- `A020716(n)+1` -/
def P15520009754501838936.Spec : Prop :=
  ∀ n, P15520009754501838936.a n = A020720 n

end A020720

/-! ## A020720.P3164400965294627262

`A096231(n+3)`
-/

namespace A020720.P3164400965294627262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 3)

end

end A020720.P3164400965294627262

namespace A020720

/-- `A096231(n+3)` -/
def P3164400965294627262.Spec : Prop :=
  ∀ n, P3164400965294627262.a n = A020720 n

end A020720

/-! ## A020720.P9395753643383497538

`A018917(n)+4`
-/

namespace A020720.P9395753643383497538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018917 n + 4

end

end A020720.P9395753643383497538

namespace A020720

/-- `A018917(n)+4` -/
def P9395753643383497538.Spec : Prop :=
  ∀ n, P9395753643383497538.a n = A020720 n

end A020720

/-! ## A020720.P6984523122948794003

`A164001(n+6)`
-/

namespace A020720.P6984523122948794003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 6)

end

end A020720.P6984523122948794003

namespace A020720

/-- `A164001(n+6)` -/
def P6984523122948794003.Spec : Prop :=
  ∀ n, P6984523122948794003.a n = A020720 n

end A020720

/-! ## A020720.P2723610465460189443

`A228361(n+8)`
-/

namespace A020720.P2723610465460189443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 8)

end

end A020720.P2723610465460189443

namespace A020720

/-- `A228361(n+8)` -/
def P2723610465460189443.Spec : Prop :=
  ∀ n, P2723610465460189443.a n = A020720 n

end A020720

/-! ## A020720.P16152070703508405067

`A134816(n+9)`
-/

namespace A020720.P16152070703508405067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 9)

end

end A020720.P16152070703508405067

namespace A020720

/-- `A134816(n+9)` -/
def P16152070703508405067.Spec : Prop :=
  ∀ n, P16152070703508405067.a n = A020720 n

end A020720

/-! ## A020720.P3661883496770367406

`A182097(n+10)`
-/

namespace A020720.P3661883496770367406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 10)

end

end A020720.P3661883496770367406

namespace A020720

/-- `A182097(n+10)` -/
def P3661883496770367406.Spec : Prop :=
  ∀ n, P3661883496770367406.a n = A020720 n

end A020720

/-! ## A020720.P791321682564456972

`A000931(n+13)`
-/

namespace A020720.P791321682564456972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 13)

end

end A020720.P791321682564456972

namespace A020720

/-- `A000931(n+13)` -/
def P791321682564456972.Spec : Prop :=
  ∀ n, P791321682564456972.a n = A020720 n

end A020720

/-! ## A020720.P711212199647578517

`A054405(n+3)+2`
-/

namespace A020720.P711212199647578517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (n + 3) + 2

end

end A020720.P711212199647578517

namespace A020720

/-- `A054405(n+3)+2` -/
def P711212199647578517.Spec : Prop :=
  ∀ n, P711212199647578517.a n = A020720 n

end A020720

/-! ## A020720.P12172329716659922983

`A164315(n+2)+3`
-/

namespace A020720.P12172329716659922983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (n + 2) + 3

end

end A020720.P12172329716659922983

namespace A020720

/-- `A164315(n+2)+3` -/
def P12172329716659922983.Spec : Prop :=
  ∀ n, P12172329716659922983.a n = A020720 n

end A020720

/-! ## A020720.P5587509173873028957

`A167385(n+1)+4`
-/

namespace A020720.P5587509173873028957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 (n + 1) + 4

end

end A020720.P5587509173873028957

namespace A020720

/-- `A167385(n+1)+4` -/
def P5587509173873028957.Spec : Prop :=
  ∀ n, P5587509173873028957.a n = A020720 n

end A020720

/-! ## A020720.P11641794944031315876

`record[A096231(abs(3-n))]`
-/

namespace A020720.P11641794944031315876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020720.P11641794944031315876

namespace A020720

/-- `record[A096231(abs(3-n))]` -/
def P11641794944031315876.Spec : Prop :=
  ∀ n, P11641794944031315876.a n = A020720 n

end A020720

/-! ## A020720.P15432637092018971516

`record[A023434(abs(A023448(n)))+1]`
-/

namespace A020720.P15432637092018971516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 |A023448 n|.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020720.P15432637092018971516

namespace A020720

/-- `record[A023434(abs(A023448(n)))+1]` -/
def P15432637092018971516.Spec : Prop :=
  ∀ n, P15432637092018971516.a n = A020720 n

end A020720

/-! ## A020720.P13522135254514659349

`Δ[A164482(n+4)]`
-/

namespace A020720.P13522135254514659349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164482 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020720.P13522135254514659349

namespace A020720

/-- `Δ[A164482(n+4)]` -/
def P13522135254514659349.Spec : Prop :=
  ∀ n, P13522135254514659349.a n = A020720 n

end A020720

/-! ## A020720.P14616918918029784853

`Δ[A167385(n+5)]`
-/

namespace A020720.P14616918918029784853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020720.P14616918918029784853

namespace A020720

/-- `Δ[A167385(n+5)]` -/
def P14616918918029784853.Spec : Prop :=
  ∀ n, P14616918918029784853.a n = A020720 n

end A020720

/-! ## A020720.P1401064823716433636

`Δ[A220885(n+5)]`
-/

namespace A020720.P1401064823716433636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220885 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020720.P1401064823716433636

namespace A020720

/-- `Δ[A220885(n+5)]` -/
def P1401064823716433636.Spec : Prop :=
  ∀ n, P1401064823716433636.a n = A020720 n

end A020720

/-! ## A020720.P10803368793152766396

`Δ[A020716(A020705(n))]`
-/

namespace A020720.P10803368793152766396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020716 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020720.P10803368793152766396

namespace A020720

/-- `Δ[A020716(A020705(n))]` -/
def P10803368793152766396.Spec : Prop :=
  ∀ n, P10803368793152766396.a n = A020720 n

end A020720

/-! ## A020720.P3551793394423725369

`A220885(n+6)-A220885(n+5)`
-/

namespace A020720.P3551793394423725369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220885 (n + 6) - A220885 (n + 5)

end

end A020720.P3551793394423725369

namespace A020720

/-- `A220885(n+6)-A220885(n+5)` -/
def P3551793394423725369.Spec : Prop :=
  ∀ n, P3551793394423725369.a n = A020720 n

end A020720

/-!
# A020721: Pisot sequences E(7,10), P(7,10).

The programs for A020721, the canonical program `A020721.P2221786006227013851` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020721 has offset 0).

The definition of A020721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020721.P2221786006227013851

`A020711(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020721

/-- `A020711(n+1)` -/
def P2221786006227013851.Spec : Prop :=
  ∀ n, P2221786006227013851.a n = A020721 n

theorem P2221786006227013851.correct : P2221786006227013851.Spec := by
  intro n
  simp only [A020721]

end A020721

/-! ## A020721.P11899201357675513885

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=7, a(1)=10, a(2)=14, a(3)=20`
-/

namespace A020721.P11899201357675513885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10, 14, 20] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A020721.P11899201357675513885

namespace A020721

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P11899201357675513885.Spec : Prop :=
  ∀ n, P11899201357675513885.a n = A020721 n

end A020721

/-! ## A020721.P12001948278607321548

`floor(a(n-1)²/a(n-2)+1/2)` with `a(0)=7, a(1)=10`
-/

namespace A020721.P12001948278607321548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) + (1 : ℚ) / 2⌋

end

end A020721.P12001948278607321548

namespace A020721

/-- `floor(a(n-1)²/a(n-2)+1/2)` -/
def P12001948278607321548.Spec : Prop :=
  ∀ n, P12001948278607321548.a n = A020721 n

end A020721

/-! ## A020721.P18245784438012985193

`a(n-1)+a(n-3)-1` with `a(0)=7, a(1)=10, a(2)=14`
-/

namespace A020721.P18245784438012985193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10, 14] fun n a =>
  a (n - 1) + (a (n - 3) - 1)

end

end A020721.P18245784438012985193

namespace A020721

/-- `a(n-1)+a(n-3)-1` -/
def P18245784438012985193.Spec : Prop :=
  ∀ n, P18245784438012985193.a n = A020721 n

end A020721

/-! ## A020721.P18264714341265144420

`A048626(n)+1`
-/

namespace A020721.P18264714341265144420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048626 n + 1

end

end A020721.P18264714341265144420

namespace A020721

/-- `A048626(n)+1` -/
def P18264714341265144420.Spec : Prop :=
  ∀ n, P18264714341265144420.a n = A020721 n

end A020721

/-! ## A020721.P7503354364262546036

`A020749(n)+2`
-/

namespace A020721.P7503354364262546036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 n + 2

end

end A020721.P7503354364262546036

namespace A020721

/-- `A020749(n)+2` -/
def P7503354364262546036.Spec : Prop :=
  ∀ n, P7503354364262546036.a n = A020721 n

end A020721

/-! ## A020721.P6969421199542465614

`A128424(n+5)`
-/

namespace A020721.P6969421199542465614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128424 (n + 5)

end

end A020721.P6969421199542465614

namespace A020721

/-- `A128424(n+5)` -/
def P6969421199542465614.Spec : Prop :=
  ∀ n, P6969421199542465614.a n = A020721 n

end A020721

/-! ## A020721.P536119739395129475

`A048625(n+1)+1`
-/

namespace A020721.P536119739395129475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 (n + 1) + 1

end

end A020721.P536119739395129475

namespace A020721

/-- `A048625(n+1)+1` -/
def P536119739395129475.Spec : Prop :=
  ∀ n, P536119739395129475.a n = A020721 n

end A020721

/-! ## A020721.P6158497183417020673

`A020745(n+1)+2`
-/

namespace A020721.P6158497183417020673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 1) + 2

end

end A020721.P6158497183417020673

namespace A020721

/-- `A020745(n+1)+2` -/
def P6158497183417020673.Spec : Prop :=
  ∀ n, P6158497183417020673.a n = A020721 n

end A020721

/-! ## A020721.P14860463665316849014

`A048589(n+1)-2`
-/

namespace A020721.P14860463665316849014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 (n + 1) - 2

end

end A020721.P14860463665316849014

namespace A020721

/-- `A048589(n+1)-2` -/
def P14860463665316849014.Spec : Prop :=
  ∀ n, P14860463665316849014.a n = A020721 n

end A020721

/-! ## A020721.P8241816205178164270

`A048585(n+2)-2`
-/

namespace A020721.P8241816205178164270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 (n + 2) - 2

end

end A020721.P8241816205178164270

namespace A020721

/-- `A048585(n+2)-2` -/
def P8241816205178164270.Spec : Prop :=
  ∀ n, P8241816205178164270.a n = A020721 n

end A020721

/-! ## A020721.P6897531366599998407

`A048591(n+1)-3`
-/

namespace A020721.P6897531366599998407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 (n + 1) - 3

end

end A020721.P6897531366599998407

namespace A020721

/-- `A048591(n+1)-3` -/
def P6897531366599998407.Spec : Prop :=
  ∀ n, P6897531366599998407.a n = A020721 n

end A020721

/-! ## A020721.P5138774018485130560

`A077868(n+3)+2`
-/

namespace A020721.P5138774018485130560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 3) + 2

end

end A020721.P5138774018485130560

namespace A020721

/-- `A077868(n+3)+2` -/
def P5138774018485130560.Spec : Prop :=
  ∀ n, P5138774018485130560.a n = A020721 n

end A020721

/-! ## A020721.P2771810175004428676

`A048588(n+2)-3`
-/

namespace A020721.P2771810175004428676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 (n + 2) - 3

end

end A020721.P2771810175004428676

namespace A020721

/-- `A048588(n+2)-3` -/
def P2771810175004428676.Spec : Prop :=
  ∀ n, P2771810175004428676.a n = A020721 n

end A020721

/-! ## A020721.P8674346437244051687

`A000930(n+6)+1`
-/

namespace A020721.P8674346437244051687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 6) + 1

end

end A020721.P8674346437244051687

namespace A020721

/-- `A000930(n+6)+1` -/
def P8674346437244051687.Spec : Prop :=
  ∀ n, P8674346437244051687.a n = A020721 n

end A020721

/-! ## A020721.P14412809232267815208

`record[A020711(abs(1-n))]`
-/

namespace A020721.P14412809232267815208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020721.P14412809232267815208

namespace A020721

/-- `record[A020711(abs(1-n))]` -/
def P14412809232267815208.Spec : Prop :=
  ∀ n, P14412809232267815208.a n = A020721 n

end A020721

/-! ## A020721.P5267574694112781830

`∑[A068921(n+2)]+5`
-/

namespace A020721.P5267574694112781830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A020721.P5267574694112781830

namespace A020721

/-- `∑[A068921(n+2)]+5` -/
def P5267574694112781830.Spec : Prop :=
  ∀ n, P5267574694112781830.a n = A020721 n

end A020721

/-! ## A020721.P5586470120112138216

`A050228(n+1)+n+6`
-/

namespace A020721.P5586470120112138216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050228 (n + 1) + (n + 6 : ℤ)

end

end A020721.P5586470120112138216

namespace A020721

/-- `A050228(n+1)+n+6` -/
def P5586470120112138216.Spec : Prop :=
  ∀ n, P5586470120112138216.a n = A020721 n

end A020721

/-! ## A020721.P10669998161845425604

`A164487(n+2)-(n-3)`
-/

namespace A020721.P10669998161845425604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164487 (n + 2) - ((n : ℤ) - 3)

end

end A020721.P10669998161845425604

namespace A020721

/-- `A164487(n+2)-(n-3)` -/
def P10669998161845425604.Spec : Prop :=
  ∀ n, P10669998161845425604.a n = A020721 n

end A020721

/-! ## A020721.P11999854072279261936

`A170934(n+5)-a(n-1)` with `a(0)=7`
-/

namespace A020721.P11999854072279261936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A170934 (n + 5) - a (n - 1)

end

end A020721.P11999854072279261936

namespace A020721

/-- `A170934(n+5)-a(n-1)` -/
def P11999854072279261936.Spec : Prop :=
  ∀ n, P11999854072279261936.a n = A020721 n

end A020721

/-!
# A020722: a(n) = n + 8.

The programs for A020722, the canonical program `A020722.P14657161902176379145` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020722 has offset 0).

The definition of A020722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+8` (program `A020722.P14657161902176379145`, by `A020722.P14657161902176379145.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020722.P14657161902176379145

`n+8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020722

/-- `n+8` -/
def P14657161902176379145.Spec : Prop :=
  ∀ n, (P14657161902176379145.a n : ℤ) = A020722 n

theorem P14657161902176379145.correct : P14657161902176379145.Spec := by
  intro n
  simp only [A020722]

end A020722

/-!
# A020723: a(n) = n + 9.

The programs for A020723, the canonical program `A020723.P8213579202739937003` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020723 has offset 0).

The definition of A020723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+9` (program `A020723.P8213579202739937003`, by `A020723.P8213579202739937003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020723.P8213579202739937003

`n+9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020723

/-- `n+9` -/
def P8213579202739937003.Spec : Prop :=
  ∀ n, (P8213579202739937003.a n : ℤ) = A020723 n

theorem P8213579202739937003.correct : P8213579202739937003.Spec := by
  intro n
  simp only [A020723]

end A020723

/-!
# A020724: G.f.: 1/((1-6*x)*(1-9*x)*(1-12*x)).

The programs for A020724, the canonical program `A020724.P17328035291899800215` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020724 has offset 0).

The definition of A020724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020724.P17328035291899800215

`27*a(n-1)-234*a(n-2)+648*a(n-3)` with `a(0)=1, a(1)=27, a(2)=495`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020724

/-- `27*a(n-1)-234*a(n-2)+648*a(n-3)` -/
def P17328035291899800215.Spec : Prop :=
  ∀ n, P17328035291899800215.a n = A020724 n

theorem P17328035291899800215.correct : P17328035291899800215.Spec := by
  intro n
  simp only [A020724]

end A020724

/-! ## A020724.P12966147882588843941

`(12^(n+2)-2*9^(n+2)+6^(n+2))/18`
-/

namespace A020724.P12966147882588843941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 2) : ℤ) - (2 * 9 ^ (n + 2) : ℤ) + (6 ^ (n + 2) : ℤ) : ℚ) / 18

end

end A020724.P12966147882588843941

namespace A020724

/-- `(12^(n+2)-2*9^(n+2)+6^(n+2))/18` -/
def P12966147882588843941.Spec : Prop :=
  ∀ n, P12966147882588843941.a n = (A020724 n : ℚ)

theorem P12966147882588843941.correct : P12966147882588843941.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A020724, Nat.add_sub_cancel, A020724.P12966147882588843941.a, A020724.P17328035291899800215.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A020724, Nat.add_sub_cancel, A020724.P12966147882588843941.a, A020724.P17328035291899800215.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020724

/-! ## A020724.P15245654993741583449

`3^n*A016269(n)`
-/

namespace A020724.P15245654993741583449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A016269 n

end

end A020724.P15245654993741583449

namespace A020724

/-- `3^n*A016269(n)` -/
def P15245654993741583449.Spec : Prop :=
  ∀ n, P15245654993741583449.a n = A020724 n

theorem P15245654993741583449.correct : P15245654993741583449.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A020724, Nat.add_sub_cancel, A020724.P15245654993741583449.a, A020724.P17328035291899800215.a, A016269, A016269.P629723056826128420.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A020724, Nat.add_sub_cancel, A020724.P15245654993741583449.a, A020724.P17328035291899800215.a, A016269, A016269.P629723056826128420.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020724

/-! ## A020724.P15824257609020366822

`3^n*∑[A027650(n)]`
-/

namespace A020724.P15824257609020366822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020724.P15824257609020366822

namespace A020724

/-- `3^n*∑[A027650(n)]` -/
def P15824257609020366822.Spec : Prop :=
  ∀ n, P15824257609020366822.a n = A020724 n

end A020724

/-! ## A020724.P11173157484067926999

`A038721(n+1)/2*3^n`
-/

namespace A020724.P11173157484067926999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038721 (n + 1) : ℚ) / 2 * (3 ^ n : ℚ)

end

end A020724.P11173157484067926999

namespace A020724

/-- `A038721(n+1)/2*3^n` -/
def P11173157484067926999.Spec : Prop :=
  ∀ n, P11173157484067926999.a n = (A020724 n : ℚ)

theorem P11173157484067926999.correct : P11173157484067926999.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A020724, Nat.add_sub_cancel, A020724.P11173157484067926999.a, A020724.P17328035291899800215.a, A038721, A038721.P7529972670454928615.a, A016269, A016269.P629723056826128420.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A020724, Nat.add_sub_cancel, A020724.P11173157484067926999.a, A020724.P17328035291899800215.a, A038721, A038721.P7529972670454928615.a, A016269, A016269.P629723056826128420.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020724

/-! ## A020724.P10614240079033791466

`A019333(n)/2^n*3^n`
-/

namespace A020724.P10614240079033791466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019333 n : ℚ) / (2 ^ n : ℚ) * (3 ^ n : ℚ)

end

end A020724.P10614240079033791466

namespace A020724

/-- `A019333(n)/2^n*3^n` -/
def P10614240079033791466.Spec : Prop :=
  ∀ n, P10614240079033791466.a n = (A020724 n : ℚ)

theorem P10614240079033791466.correct : P10614240079033791466.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A020724, Nat.add_sub_cancel, A020724.P10614240079033791466.a, A020724.P17328035291899800215.a, A019333, A019333.P16700433820639439913.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A020724, Nat.add_sub_cancel, A020724.P10614240079033791466.a, A020724.P17328035291899800215.a, A019333, A019333.P16700433820639439913.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A020724

/-! ## A020724.P7954440875063074856

`3^n*Δ[A056473(2*(n+3))]`
-/

namespace A020724.P7954440875063074856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A020724.P7954440875063074856

namespace A020724

/-- `3^n*Δ[A056473(2*(n+3))]` -/
def P7954440875063074856.Spec : Prop :=
  ∀ n, P7954440875063074856.a n = A020724 n

end A020724

/-! ## A020724.P1422849685964317069

`∑[A027650(n)]*A000244(n)`
-/

namespace A020724.P1422849685964317069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A020724.P1422849685964317069

namespace A020724

/-- `∑[A027650(n)]*A000244(n)` -/
def P1422849685964317069.Spec : Prop :=
  ∀ n, P1422849685964317069.a n = A020724 n

end A020724

/-! ## A020724.P13447150455667370170

`A016269(n)*A254006(2*n)`
-/

namespace A020724.P13447150455667370170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n * A254006 (2 * n)

end

end A020724.P13447150455667370170

namespace A020724

/-- `A016269(n)*A254006(2*n)` -/
def P13447150455667370170.Spec : Prop :=
  ∀ n, P13447150455667370170.a n = A020724 n

end A020724

/-! ## A020724.P17376836830220156308

`or(1, A000244(n)*A016269(n))`
-/

namespace A020724.P17376836830220156308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000244 n * A016269 n)

end

end A020724.P17376836830220156308

namespace A020724

/-- `or(1, A000244(n)*A016269(n))` -/
def P17376836830220156308.Spec : Prop :=
  ∀ n, P17376836830220156308.a n = A020724 n

end A020724

/-!
# A020725: Integers >= 2. a(n) = n+1.

The programs for A020725, the canonical program `A020725.P9662279067013051637` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020725 has offset 1).

The definition of A020725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2` (program `A020725.P9662279067013051637`, by `A020725.P9662279067013051637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020725.P9662279067013051637

`n+2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020725

/-- `n+2` -/
def P9662279067013051637.Spec : Prop :=
  ∀ n, (P9662279067013051637.a n : ℤ) = A020725 (n + 1)

theorem P9662279067013051637.correct : P9662279067013051637.Spec := by
  intro n
  simp only [A020725, Nat.add_sub_cancel]

end A020725

/-!
# A020726: Expansion of g.f. 1/((1-6*x)*(1-10*x)*(1-11*x)).

The programs for A020726, the canonical program `A020726.P7924632122679561024` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020726 has offset 0).

The definition of A020726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020726.P7924632122679561024

`21*a(n-1)-110*a(n-2)+6^n` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020726

/-- `21*a(n-1)-110*a(n-2)+6^n` -/
def P7924632122679561024.Spec : Prop :=
  ∀ n, P7924632122679561024.a n = A020726 n

theorem P7924632122679561024.correct : P7924632122679561024.Spec := by
  intro n
  simp only [A020726]

end A020726

/-! ## A020726.P10452523120997207865

`A016174(n+1)-A016173(n+1)`
-/

namespace A020726.P10452523120997207865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016174 (n + 1) - A016173 (n + 1)

end

end A020726.P10452523120997207865

namespace A020726

/-- `A016174(n+1)-A016173(n+1)` -/
def P10452523120997207865.Spec : Prop :=
  ∀ n, P10452523120997207865.a n = A020726 n

end A020726

/-! ## A020726.P3608519768593214804

`(4*11^(n+2)-5*10^(n+2)+6^(n+2))/20`
-/

namespace A020726.P3608519768593214804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 11 ^ (n + 2) : ℤ) - (5 * 10 ^ (n + 2) : ℤ) + (6 ^ (n + 2) : ℤ) : ℚ) / 20

end

end A020726.P3608519768593214804

namespace A020726

/-- `(4*11^(n+2)-5*10^(n+2)+6^(n+2))/20` -/
def P3608519768593214804.Spec : Prop :=
  ∀ n, P3608519768593214804.a n = (A020726 n : ℚ)

theorem P3608519768593214804.correct : P3608519768593214804.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020726, Nat.add_sub_cancel, A020726.P3608519768593214804.a, A020726.P7924632122679561024.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020726, Nat.add_sub_cancel, A020726.P3608519768593214804.a, A020726.P7924632122679561024.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020726

/-! ## A020726.P2994852624192994092

`Δ[A016247(n)-A016246(n)]`
-/

namespace A020726.P2994852624192994092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016247 n - A016246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020726.P2994852624192994092

namespace A020726

/-- `Δ[A016247(n)-A016246(n)]` -/
def P2994852624192994092.Spec : Prop :=
  ∀ n, P2994852624192994092.a n = A020726 n

end A020726

/-! ## A020726.P1120070764695758163

`2*A016265(n)-A016246(n)`
-/

namespace A020726.P1120070764695758163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016265 n - A016246 n

end

end A020726.P1120070764695758163

namespace A020726

/-- `2*A016265(n)-A016246(n)` -/
def P1120070764695758163.Spec : Prop :=
  ∀ n, P1120070764695758163.a n = A020726 n

end A020726

/-! ## A020726.P9446759775169749682

`2*A016325(n)-A016308(n)`
-/

namespace A020726.P9446759775169749682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016325 n - A016308 n

end

end A020726.P9446759775169749682

namespace A020726

/-- `2*A016325(n)-A016308(n)` -/
def P9446759775169749682.Spec : Prop :=
  ∀ n, P9446759775169749682.a n = A020726 n

end A020726

/-! ## A020726.P6367095415455926335

`2*A020606(n)-A020595(n)`
-/

namespace A020726.P6367095415455926335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020606 n - A020595 n

end

end A020726.P6367095415455926335

namespace A020726

/-- `2*A020606(n)-A020595(n)` -/
def P6367095415455926335.Spec : Prop :=
  ∀ n, P6367095415455926335.a n = A020726 n

end A020726

/-!
# A020727: Pisot sequence P(2,7): a(0)=2, a(1)=7, thereafter a(n+1) is the nearest integer to a(n)^2/a(n-1).

The programs for A020727, the canonical program `A020727.P3582853984017643501` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020727 has offset 0).

The definition of A020727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020727.P3582853984017643501

`floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020727

/-- `floor(a(n-1)²/a(n-2))` -/
def P3582853984017643501.Spec : Prop :=
  ∀ n, P3582853984017643501.a n = A020727 n

theorem P3582853984017643501.correct : P3582853984017643501.Spec := by
  intro n
  simp only [A020727]

end A020727

/-! ## A020727.P13320445594832919565

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=2, a(1)=7`
-/

namespace A020727.P13320445594832919565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) - (1 : ℚ) / 2⌉

end

end A020727.P13320445594832919565

namespace A020727

/-- `ceil(a(n-1)²/a(n-2)-1/2)` -/
def P13320445594832919565.Spec : Prop :=
  ∀ n, P13320445594832919565.a n = A020727 n

end A020727

/-! ## A020727.P2386745918673446232

`ogf((2-x)/(1-4x+2x^2))`
-/

namespace A020727.P2386745918673446232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -4, 2] n

end

end A020727.P2386745918673446232

namespace A020727

/-- `ogf((2-x)/(1-4x+2x^2))` -/
def P2386745918673446232.Spec : Prop :=
  ∀ n, P2386745918673446232.a n = A020727 n

end A020727

/-! ## A020727.P16276337113286913777

`ceil((sqrt(2)+2)*a(n-1))` with `a(0)=2`
-/

namespace A020727.P16276337113286913777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A020727.P16276337113286913777

namespace A020727

/-- `ceil((sqrt(2)+2)*a(n-1))` -/
def P16276337113286913777.Spec : Prop :=
  ∀ n, P16276337113286913777.a n = A020727 n

end A020727

/-! ## A020727.P3142668389757223972

`round((sqrt(2)+2)*a(n-1))` with `a(0)=2`
-/

namespace A020727.P3142668389757223972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A020727.P3142668389757223972

namespace A020727

/-- `round((sqrt(2)+2)*a(n-1))` -/
def P3142668389757223972.Spec : Prop :=
  ∀ n, P3142668389757223972.a n = A020727 n

end A020727

/-! ## A020727.P9182614079051257382

`Δ[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=1`
-/

namespace A020727.P9182614079051257382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020727.P9182614079051257382

namespace A020727

/-- `Δ[floor((sqrt(2)+2)*a(n-1))]` -/
def P9182614079051257382.Spec : Prop :=
  ∀ n, P9182614079051257382.a n = A020727 n

end A020727

/-! ## A020727.P17053227842259552059

`∑[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=2, a(1)=5`
-/

namespace A020727.P17053227842259552059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020727.P17053227842259552059

namespace A020727

/-- `∑[floor((sqrt(2)+2)*a(n-1))]` -/
def P17053227842259552059.Spec : Prop :=
  ∀ n, P17053227842259552059.a n = A020727 n

end A020727

/-! ## A020727.P8709113920190756856

`Δ[floor(2*a(n-1)/(2-sqrt(2)))]` with `a(0)=1`
-/

namespace A020727.P8709113920190756856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(2 * f1 (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020727.P8709113920190756856

namespace A020727

/-- `Δ[floor(2*a(n-1)/(2-sqrt(2)))]` -/
def P8709113920190756856.Spec : Prop :=
  ∀ n, P8709113920190756856.a n = A020727 n

end A020727

/-! ## A020727.P11305309176945806257

`2*(2*a(n-1)-a(n-2))` with `a(0)=2, a(1)=7`
-/

namespace A020727.P11305309176945806257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  2 * (2 * a (n - 1) - a (n - 2))

end

end A020727.P11305309176945806257

namespace A020727

/-- `2*(2*a(n-1)-a(n-2))` -/
def P11305309176945806257.Spec : Prop :=
  ∀ n, P11305309176945806257.a n = A020727 n

end A020727

/-! ## A020727.P16779004563181007802

`Δ[A007052(n)]`
-/

namespace A020727.P16779004563181007802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020727.P16779004563181007802

namespace A020727

/-- `Δ[A007052(n)]` -/
def P16779004563181007802.Spec : Prop :=
  ∀ n, P16779004563181007802.a n = A020727 n

end A020727

/-! ## A020727.P5995867506167745115

`A003480(n+1)`
-/

namespace A020727.P5995867506167745115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1)

end

end A020727.P5995867506167745115

namespace A020727

/-- `A003480(n+1)` -/
def P5995867506167745115.Spec : Prop :=
  ∀ n, P5995867506167745115.a n = A020727 n

end A020727

/-! ## A020727.P4508541632488546159

`A062113(Δ[n²])`
-/

namespace A020727.P4508541632488546159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A020727.P4508541632488546159

namespace A020727

/-- `A062113(Δ[n²])` -/
def P4508541632488546159.Spec : Prop :=
  ∀ n, P4508541632488546159.a n = A020727 n

end A020727

/-! ## A020727.P10351019151818525121

`A217730(Δ[n²])`
-/

namespace A020727.P10351019151818525121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A020727.P10351019151818525121

namespace A020727

/-- `A217730(Δ[n²])` -/
def P10351019151818525121.Spec : Prop :=
  ∀ n, P10351019151818525121.a n = A020727 n

end A020727

/-! ## A020727.P11492683780477161617

`Δ[A062113(2*n)]`
-/

namespace A020727.P11492683780477161617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020727.P11492683780477161617

namespace A020727

/-- `Δ[A062113(2*n)]` -/
def P11492683780477161617.Spec : Prop :=
  ∀ n, P11492683780477161617.a n = A020727 n

end A020727

/-! ## A020727.P14229715470718135640

`Δ[A035344(n)/2]`
-/

namespace A020727.P14229715470718135640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035344 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020727.P14229715470718135640

namespace A020727

/-- `Δ[A035344(n)/2]` -/
def P14229715470718135640.Spec : Prop :=
  ∀ n, P14229715470718135640.a n = (A020727 n : ℚ)

end A020727

/-! ## A020727.P11958197614959245534

`Δ[A030436(Δ[n²])]`
-/

namespace A020727.P11958197614959245534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020727.P11958197614959245534

namespace A020727

/-- `Δ[A030436(Δ[n²])]` -/
def P11958197614959245534.Spec : Prop :=
  ∀ n, P11958197614959245534.a n = A020727 n

end A020727

/-! ## A020727.P10797778262250206504

`A007070(n+1)/2`
-/

namespace A020727.P10797778262250206504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 (n + 1) : ℚ) / 2

end

end A020727.P10797778262250206504

namespace A020727

/-- `A007070(n+1)/2` -/
def P10797778262250206504.Spec : Prop :=
  ∀ n, P10797778262250206504.a n = (A020727 n : ℚ)

end A020727

/-! ## A020727.P4268345943935255724

`A204089(n+2)/2`
-/

namespace A020727.P4268345943935255724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204089 (n + 2) : ℚ) / 2

end

end A020727.P4268345943935255724

namespace A020727

/-- `A204089(n+2)/2` -/
def P4268345943935255724.Spec : Prop :=
  ∀ n, P4268345943935255724.a n = (A020727 n : ℚ)

end A020727

/-! ## A020727.P6143012573468897824

`record[A003480(abs(1-n))]`
-/

namespace A020727.P6143012573468897824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020727.P6143012573468897824

namespace A020727

/-- `record[A003480(abs(1-n))]` -/
def P6143012573468897824.Spec : Prop :=
  ∀ n, P6143012573468897824.a n = A020727 n

end A020727

/-! ## A020727.P13256450335197305203

`Δ[∑[A007070(n)]/2]`
-/

namespace A020727.P13256450335197305203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020727.P13256450335197305203

namespace A020727

/-- `Δ[∑[A007070(n)]/2]` -/
def P13256450335197305203.Spec : Prop :=
  ∀ n, P13256450335197305203.a n = (A020727 n : ℚ)

end A020727

/-!
# A020728: Pisot sequence T(2,9), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A020728, the canonical program `A020728.P2388405646125877140` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020728 has offset 0).

The definition of A020728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020728.P2388405646125877140`, by `A020728.P2388405646125877140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020728.P2388405646125877140

`floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020728

/-- `floor(a(n-1)²/a(n-2))` -/
def P2388405646125877140.Spec : Prop :=
  ∀ n, P2388405646125877140.a n = A020728 n

theorem P2388405646125877140.correct : P2388405646125877140.Spec := by
  intro n
  simp only [A020728]

end A020728

/-! ## A020728.P16347667364971663113

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=2, a(1)=9`
-/

namespace A020728.P16347667364971663113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A020728.P16347667364971663113

namespace A020728

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P16347667364971663113.Spec : Prop :=
  ∀ n, P16347667364971663113.a n = A020728 n

theorem P16347667364971663113.correct : P16347667364971663113.Spec := by
  intro n
  simp only [A020728, Nat.add_sub_cancel, A020728.P16347667364971663113.a, A020728.P2388405646125877140.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020728

/-! ## A020728.P9318493441966778507

`ceil(a(n-1)/a(n-2)*a(n-1))-1` with `a(0)=2, a(1)=9`
-/

namespace A020728.P9318493441966778507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉ - 1

end

end A020728.P9318493441966778507

namespace A020728

/-- `ceil(a(n-1)/a(n-2)*a(n-1))-1` -/
def P9318493441966778507.Spec : Prop :=
  ∀ n, P9318493441966778507.a n = A020728 n

end A020728

/-! ## A020728.P4867851612162449862

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=2, a(1)=9`
-/

namespace A020728.P4867851612162449862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A020728.P4867851612162449862

namespace A020728

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P4867851612162449862.Spec : Prop :=
  ∀ n, P4867851612162449862.a n = A020728 n

end A020728

/-!
# A020729: Pisot sequences E(2,10), L(2,10), P(2,10), T(2,10).

The programs for A020729, the canonical program `A020729.P10295770726716872561` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020729 has offset 0).

The definition of A020729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020729.P10295770726716872561

`2*5^n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020729

/-- `2*5^n` -/
def P10295770726716872561.Spec : Prop :=
  ∀ n, (P10295770726716872561.a n : ℤ) = A020729 n

theorem P10295770726716872561.correct : P10295770726716872561.Spec := by
  intro n
  simp only [A020729]

end A020729

/-!
# A020730: Pisot sequences L(3,7) or S(3,7).

The programs for A020730, the canonical program `A020730.P10599569837805996672` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020730 has offset 0).

The definition of A020730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020730.P10599569837805996672

`ceil(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020730

/-- `ceil(a(n-1)²/a(n-2))` -/
def P10599569837805996672.Spec : Prop :=
  ∀ n, P10599569837805996672.a n = A020730 n

theorem P10599569837805996672.correct : P10599569837805996672.Spec := by
  intro n
  simp only [A020730]

end A020730

/-! ## A020730.P11691640029641291086

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=7`
-/

namespace A020730.P11691640029641291086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉

end

end A020730.P11691640029641291086

namespace A020730

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P11691640029641291086.Spec : Prop :=
  ∀ n, P11691640029641291086.a n = A020730 n

theorem P11691640029641291086.correct : P11691640029641291086.Spec := by
  intro n
  simp only [A020730, Nat.add_sub_cancel, A020730.P11691640029641291086.a, A020730.P10599569837805996672.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020730

/-! ## A020730.P13060140920885774469

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=3, a(1)=7`
-/

namespace A020730.P13060140920885774469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ + 1

end

end A020730.P13060140920885774469

namespace A020730

/-- `floor(a(n-1)/a(n-2)*a(n-1))+1` -/
def P13060140920885774469.Spec : Prop :=
  ∀ n, P13060140920885774469.a n = A020730 n

end A020730

/-! ## A020730.P9910557381973069490

`∑[A014009(n)]`
-/

namespace A020730.P9910557381973069490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020730.P9910557381973069490

namespace A020730

/-- `∑[A014009(n)]` -/
def P9910557381973069490.Spec : Prop :=
  ∀ n, P9910557381973069490.a n = A020730 n

end A020730

/-! ## A020730.P10974894770460548553

`floor(a(n-1)²/a(n-2))+1` with `a(0)=3, a(1)=7`
-/

namespace A020730.P10974894770460548553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A020730.P10974894770460548553

namespace A020730

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P10974894770460548553.Spec : Prop :=
  ∀ n, P10974894770460548553.a n = A020730 n

end A020730

/-!
# A020731: Numbers n for which number of distinct prime divisors of C(n,k) has maximum at k = [n/2].

The programs for A020731, there is no canonical definition to state claims against.
-/

/-! ## A020731.P6531266243642292556

`eq[A034973(n+1), A048273(n+1)]+1`
-/

namespace A020731.P6531266243642292556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A020731.P6531266243642292556

/-! ## A020731.P9640817228273565830

`A279367(n+1)%A210492(n)`
-/

namespace A020731.P9640817228273565830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279367 (n + 1)) (A210492 n)

end

end A020731.P9640817228273565830

/-! ## A020731.P63067232043404446

`and(A279367(n+1), A387415(n+1))`
-/

namespace A020731.P63067232043404446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279367 (n + 1)) (A387415 (n + 1))

end

end A020731.P63067232043404446

/-! ## A020731.P12187780283713333384

`and(A279367(n+1), A387418(n+1))`
-/

namespace A020731.P12187780283713333384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279367 (n + 1)) (A387418 (n + 1))

end

end A020731.P12187780283713333384

/-! ## A020731.P8184218268371033634

`A279367(A048484(A048486(n+1))+n+1)`
-/

namespace A020731.P8184218268371033634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (A048484 (A048486 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A020731.P8184218268371033634

/-!
# A020732: Pisot sequence T(4,7).

The programs for A020732, the canonical program `A020732.P12035922063334694078` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020732 has offset 0).

The definition of A020732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020732.P15436297036127929524

`A000045(n+5)-1`
-/

namespace A020732.P15436297036127929524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) - 1

end

end A020732.P15436297036127929524

namespace A020732

/-- `A000045(n+5)-1` -/
def P15436297036127929524.Spec : Prop :=
  ∀ n, P15436297036127929524.a n = A020732 n

end A020732

/-! ## A020732.P12035922063334694078

`2*a(n-1)-a(n-3)` with `a(0)=4, a(1)=7, a(2)=12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020732

/-- `2*a(n-1)-a(n-3)` -/
def P12035922063334694078.Spec : Prop :=
  ∀ n, P12035922063334694078.a n = A020732 n

theorem P12035922063334694078.correct : P12035922063334694078.Spec := by
  intro n
  simp only [A020732]

end A020732

/-! ## A020732.P2530628190219993917

`ceil(ϕ*a(n-1))` with `a(0)=4`
-/

namespace A020732.P2530628190219993917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉

end

end A020732.P2530628190219993917

namespace A020732

/-- `ceil(ϕ*a(n-1))` -/
def P2530628190219993917.Spec : Prop :=
  ∀ n, P2530628190219993917.a n = A020732 n

end A020732

/-! ## A020732.P10170472106897130339

`∑[ogf((-4+x+2x^2)/(-1+x+x^2))]`
-/

namespace A020732.P10170472106897130339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, -2] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020732.P10170472106897130339

namespace A020732

/-- `∑[ogf((-4+x+2x^2)/(-1+x+x^2))]` -/
def P10170472106897130339.Spec : Prop :=
  ∀ n, P10170472106897130339.a n = A020732 n

end A020732

/-! ## A020732.P3091611896466283363

`ogf((4-x-2x^2)/(1-2x+x^3))`
-/

namespace A020732.P3091611896466283363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, -2] [1, -2, 0, 1] n

end

end A020732.P3091611896466283363

namespace A020732

/-- `ogf((4-x-2x^2)/(1-2x+x^3))` -/
def P3091611896466283363.Spec : Prop :=
  ∀ n, P3091611896466283363.a n = A020732 n

end A020732

/-! ## A020732.P6401293703035756801

`floor(ϕ*a(n-1))+1` with `a(0)=4`
-/

namespace A020732.P6401293703035756801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + 1

end

end A020732.P6401293703035756801

namespace A020732

/-- `floor(ϕ*a(n-1))+1` -/
def P6401293703035756801.Spec : Prop :=
  ∀ n, P6401293703035756801.a n = A020732 n

end A020732

/-! ## A020732.P12677506571967712506

`round(ϕ*a(n-1))+1` with `a(0)=4`
-/

namespace A020732.P12677506571967712506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + 1

end

end A020732.P12677506571967712506

namespace A020732

/-- `round(ϕ*a(n-1))+1` -/
def P12677506571967712506.Spec : Prop :=
  ∀ n, P12677506571967712506.a n = A020732 n

end A020732

/-! ## A020732.P12188034848620537241

`ceil(a(n-1)/(ϕ-1))` with `a(0)=4`
-/

namespace A020732.P12188034848620537241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈(a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌉

end

end A020732.P12188034848620537241

namespace A020732

/-- `ceil(a(n-1)/(ϕ-1))` -/
def P12188034848620537241.Spec : Prop :=
  ∀ n, P12188034848620537241.a n = A020732 n

end A020732

/-! ## A020732.P6875786790656311349

`-floor(-(ϕ*a(n-1)))` with `a(0)=4`
-/

namespace A020732.P6875786790656311349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  -⌊-(Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A020732.P6875786790656311349

namespace A020732

/-- `-floor(-(ϕ*a(n-1)))` -/
def P6875786790656311349.Spec : Prop :=
  ∀ n, P6875786790656311349.a n = A020732 n

end A020732

/-! ## A020732.P9844778252851439184

`-floor(a(n-1)/(1-ϕ))` with `a(0)=4`
-/

namespace A020732.P9844778252851439184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  -⌊(a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌋

end

end A020732.P9844778252851439184

namespace A020732

/-- `-floor(a(n-1)/(1-ϕ))` -/
def P9844778252851439184.Spec : Prop :=
  ∀ n, P9844778252851439184.a n = A020732 n

end A020732

/-! ## A020732.P7669137869708361893

`1-round(-(ϕ*a(n-1)))` with `a(0)=4`
-/

namespace A020732.P7669137869708361893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  1 - SequenceMachineLib.roundAway (-(Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A020732.P7669137869708361893

namespace A020732

/-- `1-round(-(ϕ*a(n-1)))` -/
def P7669137869708361893.Spec : Prop :=
  ∀ n, P7669137869708361893.a n = A020732 n

end A020732

/-! ## A020732.P11171433080605276224

`a(n-1)+a(n-2)+1` with `a(0)=4, a(1)=7`
-/

namespace A020732.P11171433080605276224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  a (n - 1) + (a (n - 2) + 1)

end

end A020732.P11171433080605276224

namespace A020732

/-- `a(n-1)+a(n-2)+1` -/
def P11171433080605276224.Spec : Prop :=
  ∀ n, (P11171433080605276224.a n : ℤ) = A020732 n

end A020732

/-! ## A020732.P13402111878474014540

`A020712(n)-1`
-/

namespace A020732.P13402111878474014540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - 1

end

end A020732.P13402111878474014540

namespace A020732

/-- `A020712(n)-1` -/
def P13402111878474014540.Spec : Prop :=
  ∀ n, P13402111878474014540.a n = A020732 n

end A020732

/-! ## A020732.P6844091074409073412

`A020717(n)-2`
-/

namespace A020732.P6844091074409073412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n - 2

end

end A020732.P6844091074409073412

namespace A020732

/-- `A020717(n)-2` -/
def P6844091074409073412.Spec : Prop :=
  ∀ n, P6844091074409073412.a n = A020732 n

end A020732

/-! ## A020732.P8896590939803844766

`A020743(n)-3`
-/

namespace A020732.P8896590939803844766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n - 3

end

end A020732.P8896590939803844766

namespace A020732

/-- `A020743(n)-3` -/
def P8896590939803844766.Spec : Prop :=
  ∀ n, P8896590939803844766.a n = A020732 n

end A020732

/-! ## A020732.P12755479999386149090

`A000071(5+n)`
-/

namespace A020732.P12755479999386149090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (5 + n)

end

end A020732.P12755479999386149090

namespace A020732

/-- `A000071(5+n)` -/
def P12755479999386149090.Spec : Prop :=
  ∀ n, P12755479999386149090.a n = A020732 n

end A020732

/-! ## A020732.P16256613996953780724

`∑[A020695(n)]+2`
-/

namespace A020732.P16256613996953780724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A020732.P16256613996953780724

namespace A020732

/-- `∑[A020695(n)]+2` -/
def P16256613996953780724.Spec : Prop :=
  ∀ n, P16256613996953780724.a n = A020732 n

end A020732

/-! ## A020732.P677542361825323415

`A001911(n+2)+1`
-/

namespace A020732.P677542361825323415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 2) + 1

end

end A020732.P677542361825323415

namespace A020732

/-- `A001911(n+2)+1` -/
def P677542361825323415.Spec : Prop :=
  ∀ n, P677542361825323415.a n = A020732 n

end A020732

/-! ## A020732.P14202485568384273899

`A020701(n+1)-1`
-/

namespace A020732.P14202485568384273899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 1) - 1

end

end A020732.P14202485568384273899

namespace A020732

/-- `A020701(n+1)-1` -/
def P14202485568384273899.Spec : Prop :=
  ∀ n, P14202485568384273899.a n = A020732 n

end A020732

/-! ## A020732.P15999550674953250134

`A020695(n+2)-1`
-/

namespace A020732.P15999550674953250134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 2) - 1

end

end A020732.P15999550674953250134

namespace A020732

/-- `A020695(n+2)-1` -/
def P15999550674953250134.Spec : Prop :=
  ∀ n, P15999550674953250134.a n = A020732 n

end A020732

/-!
# A020733: Consider number of prime divisors of binomial(n,k), k=0..n; a(n) = multiplicity of the maximum value.

The programs for A020733, there is no canonical definition to state claims against.
-/

/-! ## A020733.P4967796855309237509

`A237593(A080419(3*n+2)+3^(n%2))`
-/

namespace A020733.P4967796855309237509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A080419 (3 * n + 2) + (3 ^ (n % 2) : ℤ)).toNat

end

end A020733.P4967796855309237509

/-!
# A020734: Pisot sequence L(4,10).

The programs for A020734, the canonical program `A020734.P1979828143967526815` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020734 has offset 0).

The definition of A020734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020734.P1979828143967526815

`ceil(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020734

/-- `ceil(a(n-1)²/a(n-2))` -/
def P1979828143967526815.Spec : Prop :=
  ∀ n, P1979828143967526815.a n = A020734 n

theorem P1979828143967526815.correct : P1979828143967526815.Spec := by
  intro n
  simp only [A020734]

end A020734

/-! ## A020734.P16964976278633675430

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=10`
-/

namespace A020734.P16964976278633675430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉

end

end A020734.P16964976278633675430

namespace A020734

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P16964976278633675430.Spec : Prop :=
  ∀ n, P16964976278633675430.a n = A020734 n

theorem P16964976278633675430.correct : P16964976278633675430.Spec := by
  intro n
  simp only [A020734, Nat.add_sub_cancel, A020734.P16964976278633675430.a, A020734.P1979828143967526815.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020734

/-! ## A020734.P3817003700922385712

`floor(a(n-1)²/a(n-2))+1` with `a(0)=4, a(1)=10, a(2)=25`
-/

namespace A020734.P3817003700922385712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10, 25] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A020734.P3817003700922385712

namespace A020734

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P3817003700922385712.Spec : Prop :=
  ∀ n, P3817003700922385712.a n = A020734 n

end A020734

/-!
# A020735: Odd numbers >= 5.

The programs for A020735, the canonical program `A020735.P10040868782378236279` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020735 has offset 1).

The definition of A020735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020735.P10040868782378236279

`2*(n+1)+3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020735

/-- `2*(n+1)+3` -/
def P10040868782378236279.Spec : Prop :=
  ∀ n, (P10040868782378236279.a n : ℤ) = A020735 (n + 1)

theorem P10040868782378236279.correct : P10040868782378236279.Spec := by
  intro n
  simp only [A020735, Nat.add_sub_cancel]

end A020735

/-!
# A020736: Pisot sequence L(5,8).

The programs for A020736, the canonical program `A020736.P7035951364839008100` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020736 has offset 0).

The definition of A020736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020736.P7035951364839008100

`3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=5, a(1)=8, a(2)=13, a(3)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020736

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P7035951364839008100.Spec : Prop :=
  ∀ n, P7035951364839008100.a n = A020736 n

theorem P7035951364839008100.correct : P7035951364839008100.Spec := by
  intro n
  simp only [A020736]

end A020736

/-! ## A020736.P3444914546514697433

`ceil(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=8`
-/

namespace A020736.P3444914546514697433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A020736.P3444914546514697433

namespace A020736

/-- `ceil(a(n-1)²/a(n-2))` -/
def P3444914546514697433.Spec : Prop :=
  ∀ n, P3444914546514697433.a n = A020736 n

end A020736

/-! ## A020736.P5299358723105733247

`record[a(n-2)-a(n-3)]+1` with `a(0)=4, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A020736.P5299358723105733247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A020736.P5299358723105733247

namespace A020736

/-- `record[a(n-2)-a(n-3)]+1` -/
def P5299358723105733247.Spec : Prop :=
  ∀ n, P5299358723105733247.a n = A020736 n

end A020736

/-! ## A020736.P12885385657822372168

`A010901(n)+1`
-/

namespace A020736.P12885385657822372168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010901 n + 1

end

end A020736.P12885385657822372168

namespace A020736

/-- `A010901(n)+1` -/
def P12885385657822372168.Spec : Prop :=
  ∀ n, P12885385657822372168.a n = A020736 n

end A020736

/-! ## A020736.P8899416011013648983

`A018918(n)+2`
-/

namespace A020736.P8899416011013648983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018918 n + 2

end

end A020736.P8899416011013648983

namespace A020736

/-- `A018918(n)+2` -/
def P8899416011013648983.Spec : Prop :=
  ∀ n, P8899416011013648983.a n = A020736 n

end A020736

/-! ## A020736.P11490045822456423136

`A077855(n+1)+2`
-/

namespace A020736.P11490045822456423136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077855 (n + 1) + 2

end

end A020736.P11490045822456423136

namespace A020736

/-- `A077855(n+1)+2` -/
def P11490045822456423136.Spec : Prop :=
  ∀ n, P11490045822456423136.a n = A020736 n

end A020736

/-! ## A020736.P14369979380111219596

`A005251(n+5)+1`
-/

namespace A020736.P14369979380111219596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 5) + 1

end

end A020736.P14369979380111219596

namespace A020736

/-- `A005251(n+5)+1` -/
def P14369979380111219596.Spec : Prop :=
  ∀ n, P14369979380111219596.a n = A020736 n

end A020736

/-! ## A020736.P14756825729832344719

`A052954(2*(n+4))`
-/

namespace A020736.P14756825729832344719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (2 * (n + 4))

end

end A020736.P14756825729832344719

namespace A020736

/-- `A052954(2*(n+4))` -/
def P14756825729832344719.Spec : Prop :=
  ∀ n, P14756825729832344719.a n = A020736 n

end A020736

/-! ## A020736.P2124203009481648032

`A164315(2*n)+4`
-/

namespace A020736.P2124203009481648032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (2 * n) + 4

end

end A020736.P2124203009481648032

namespace A020736

/-- `A164315(2*n)+4` -/
def P2124203009481648032.Spec : Prop :=
  ∀ n, P2124203009481648032.a n = A020736 n

end A020736

/-! ## A020736.P7283587246047651557

`A054405(Δ[n²])+3`
-/

namespace A020736.P7283587246047651557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A020736.P7283587246047651557

namespace A020736

/-- `A054405(Δ[n²])+3` -/
def P7283587246047651557.Spec : Prop :=
  ∀ n, P7283587246047651557.a n = A020736 n

end A020736

/-! ## A020736.P5909842706645808896

`∑[A005314(n+2)]+3`
-/

namespace A020736.P5909842706645808896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A020736.P5909842706645808896

namespace A020736

/-- `∑[A005314(n+2)]+3` -/
def P5909842706645808896.Spec : Prop :=
  ∀ n, P5909842706645808896.a n = A020736 n

end A020736

/-! ## A020736.P11233688531760855112

`∑[A018908(n)]+2-n`
-/

namespace A020736.P11233688531760855112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - (n : ℤ))

end

end A020736.P11233688531760855112

namespace A020736

/-- `∑[A018908(n)]+2-n` -/
def P11233688531760855112.Spec : Prop :=
  ∀ n, P11233688531760855112.a n = A020736 n

end A020736

/-! ## A020736.P4973632142038098988

`A164001(2*(n+2))+1`
-/

namespace A020736.P4973632142038098988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * (n + 2)) + 1

end

end A020736.P4973632142038098988

namespace A020736

/-- `A164001(2*(n+2))+1` -/
def P4973632142038098988.Spec : Prop :=
  ∀ n, P4973632142038098988.a n = A020736 n

end A020736

/-! ## A020736.P13222718673857256329

`A023434(2*(n+2))+2`
-/

namespace A020736.P13222718673857256329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (2 * (n + 2)) + 2

end

end A020736.P13222718673857256329

namespace A020736

/-- `A023434(2*(n+2))+2` -/
def P13222718673857256329.Spec : Prop :=
  ∀ n, P13222718673857256329.a n = A020736 n

end A020736

/-! ## A020736.P1922388631940510827

`A228361(2*(n+3))+1`
-/

namespace A020736.P1922388631940510827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * (n + 3)) + 1

end

end A020736.P1922388631940510827

namespace A020736

/-- `A228361(2*(n+3))+1` -/
def P1922388631940510827.Spec : Prop :=
  ∀ n, P1922388631940510827.a n = A020736 n

end A020736

/-! ## A020736.P12849965814380379308

`A007383(2*n+5)+2`
-/

namespace A020736.P12849965814380379308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007383 (2 * n + 5) + 2

end

end A020736.P12849965814380379308

namespace A020736

/-- `A007383(2*n+5)+2` -/
def P12849965814380379308.Spec : Prop :=
  ∀ n, P12849965814380379308.a n = A020736 n

end A020736

/-! ## A020736.P7418773005601675697

`A134816(2*n+7)+1`
-/

namespace A020736.P7418773005601675697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * n + 7) + 1

end

end A020736.P7418773005601675697

namespace A020736

/-- `A134816(2*n+7)+1` -/
def P7418773005601675697.Spec : Prop :=
  ∀ n, P7418773005601675697.a n = A020736 n

end A020736

/-! ## A020736.P5425044548837303018

`A182097(A020742(n)+1)+1`
-/

namespace A020736.P5425044548837303018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A020742 n + 1).toNat + 1

end

end A020736.P5425044548837303018

namespace A020736

/-- `A182097(A020742(n)+1)+1` -/
def P5425044548837303018.Spec : Prop :=
  ∀ n, P5425044548837303018.a n = A020736 n

end A020736

/-! ## A020736.P11516628098492601879

`A114775(A308607(n+5))+1`
-/

namespace A020736.P11516628098492601879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A308607 (n + 5)).toNat + 1

end

end A020736.P11516628098492601879

namespace A020736

/-- `A114775(A308607(n+5))+1` -/
def P11516628098492601879.Spec : Prop :=
  ∀ n, P11516628098492601879.a n = A020736 n

end A020736

/-! ## A020736.P12544332033472956908

`A274110(n+2)+A274110(n+3)`
-/

namespace A020736.P12544332033472956908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274110 (n + 2) + A274110 (n + 3)

end

end A020736.P12544332033472956908

namespace A020736

/-- `A274110(n+2)+A274110(n+3)` -/
def P12544332033472956908.Spec : Prop :=
  ∀ n, P12544332033472956908.a n = A020736 n

end A020736

/-!
# A020737: Pisot sequence L(5,9).

The programs for A020737, the canonical program `A020737.P8756672290686718691` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020737 has offset 0).

The definition of A020737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020737.P8756672290686718691

`2^(n+2)+1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020737

/-- `2^(n+2)+1` -/
def P8756672290686718691.Spec : Prop :=
  ∀ n, (P8756672290686718691.a n : ℤ) = A020737 n

theorem P8756672290686718691.correct : P8756672290686718691.Spec := by
  intro n
  simp only [A020737]

end A020737

/-! ## A020737.P4605264887641521501

`or(1, 4*2^n)`
-/

namespace A020737.P4605264887641521501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * 2 ^ n)

end

end A020737.P4605264887641521501

namespace A020737

/-- `or(1, 4*2^n)` -/
def P4605264887641521501.Spec : Prop :=
  ∀ n, (P4605264887641521501.a n : ℤ) = A020737 n

end A020737

/-! ## A020737.P10972830947549048210

`xor(1, 4*2^n)`
-/

namespace A020737.P10972830947549048210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * 2 ^ n)

end

end A020737.P10972830947549048210

namespace A020737

/-- `xor(1, 4*2^n)` -/
def P10972830947549048210.Spec : Prop :=
  ∀ n, (P10972830947549048210.a n : ℤ) = A020737 n

end A020737

/-! ## A020737.P5954646796139565742

`ogf((5-6x)/(1-3x+2x^2))`
-/

namespace A020737.P5954646796139565742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6] [1, -3, 2] n

end

end A020737.P5954646796139565742

namespace A020737

/-- `ogf((5-6x)/(1-3x+2x^2))` -/
def P5954646796139565742.Spec : Prop :=
  ∀ n, P5954646796139565742.a n = A020737 n

end A020737

/-! ## A020737.P14439967044977404174

`∑[2*a(n-1)]` with `a(0)=5, a(1)=4`
-/

namespace A020737.P14439967044977404174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020737.P14439967044977404174

namespace A020737

/-- `∑[2*a(n-1)]` -/
def P14439967044977404174.Spec : Prop :=
  ∀ n, (P14439967044977404174.a n : ℤ) = A020737 n

end A020737

/-! ## A020737.P5543040077399828448

`abs(1-2*a(n-1))` with `a(0)=5`
-/

namespace A020737.P5543040077399828448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |1 - 2 * a (n - 1)|

end

end A020737.P5543040077399828448

namespace A020737

/-- `abs(1-2*a(n-1))` -/
def P5543040077399828448.Spec : Prop :=
  ∀ n, P5543040077399828448.a n = A020737 n

end A020737

/-! ## A020737.P1538860921794093271

`ceil(2*a(n-1)-ϕ)` with `a(0)=5`
-/

namespace A020737.P1538860921794093271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈(2 * a (n - 1) : ℝ) - Real.goldenRatio⌉

end

end A020737.P1538860921794093271

namespace A020737

/-- `ceil(2*a(n-1)-ϕ)` -/
def P1538860921794093271.Spec : Prop :=
  ∀ n, P1538860921794093271.a n = A020737 n

end A020737

/-! ## A020737.P7387030413214357564

`2*(a(n-1)-1/2)` with `a(0)=5`
-/

namespace A020737.P7387030413214357564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  2 * (a (n - 1) - (1 : ℚ) / 2)

end

end A020737.P7387030413214357564

namespace A020737

/-- `2*(a(n-1)-1/2)` -/
def P7387030413214357564.Spec : Prop :=
  ∀ n, P7387030413214357564.a n = (A020737 n : ℚ)

theorem P7387030413214357564.correct : P7387030413214357564.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A020737, Nat.add_sub_cancel, A020737.P7387030413214357564.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A020737, Nat.add_sub_cancel, A020737.P7387030413214357564.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020737

/-! ## A020737.P4177193184600122058

`record[2*a(n-2)-1]` with `a(0)=5, a(1)=0`
-/

namespace A020737.P4177193184600122058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  2 * f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020737.P4177193184600122058

namespace A020737

/-- `record[2*a(n-2)-1]` -/
def P4177193184600122058.Spec : Prop :=
  ∀ n, P4177193184600122058.a n = A020737 n

end A020737

/-! ## A020737.P17726474141232921546

`-or(1, -(2*a(n-1)))` with `a(0)=5`
-/

namespace A020737.P17726474141232921546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  -Int.lor 1 (-(2 * a (n - 1)))

end

end A020737.P17726474141232921546

namespace A020737

/-- `-or(1, -(2*a(n-1)))` -/
def P17726474141232921546.Spec : Prop :=
  ∀ n, P17726474141232921546.a n = A020737 n

end A020737

/-! ## A020737.P11642530134675490481

`-xor(1, -(2*a(n-1)))` with `a(0)=5`
-/

namespace A020737.P11642530134675490481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  -Int.xor 1 (-(2 * a (n - 1)))

end

end A020737.P11642530134675490481

namespace A020737

/-- `-xor(1, -(2*a(n-1)))` -/
def P11642530134675490481.Spec : Prop :=
  ∀ n, P11642530134675490481.a n = A020737 n

end A020737

/-! ## A020737.P817881520221507007

`-floor(ϕ-2*a(n-1))` with `a(0)=5`
-/

namespace A020737.P817881520221507007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  -⌊Real.goldenRatio - (2 * a (n - 1) : ℝ)⌋

end

end A020737.P817881520221507007

namespace A020737

/-- `-floor(ϕ-2*a(n-1))` -/
def P817881520221507007.Spec : Prop :=
  ∀ n, P817881520221507007.a n = A020737 n

end A020737

/-! ## A020737.P4140837960223004414

`∑[a(n-1)/(1-1/2)]` with `a(0)=5, a(1)=4`
-/

namespace A020737.P4140837960223004414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020737.P4140837960223004414

namespace A020737

/-- `∑[a(n-1)/(1-1/2)]` -/
def P4140837960223004414.Spec : Prop :=
  ∀ n, P4140837960223004414.a n = (A020737 n : ℚ)

end A020737

/-! ## A020737.P8436302841450577254

`abs(a(n-1)+a(n-1)-1)` with `a(0)=5`
-/

namespace A020737.P8436302841450577254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |a (n - 1) + (a (n - 1) - 1)|

end

end A020737.P8436302841450577254

namespace A020737

/-- `abs(a(n-1)+a(n-1)-1)` -/
def P8436302841450577254.Spec : Prop :=
  ∀ n, P8436302841450577254.a n = A020737 n

end A020737

/-! ## A020737.P7487288320954964977

`abs(1-a(n-1)-a(n-1))` with `a(0)=5`
-/

namespace A020737.P7487288320954964977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |1 - a (n - 1) - a (n - 1)|

end

end A020737.P7487288320954964977

namespace A020737

/-- `abs(1-a(n-1)-a(n-1))` -/
def P7487288320954964977.Spec : Prop :=
  ∀ n, P7487288320954964977.a n = A020737 n

end A020737

/-! ## A020737.P10234002653916598684

`floor(a(n-1)+a(n-1)-1)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A020737.P10234002653916598684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A020737.P10234002653916598684

namespace A020737

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P10234002653916598684.Spec : Prop :=
  ∀ n, P10234002653916598684.a n = A020737 n

theorem P10234002653916598684.correct : P10234002653916598684.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A020737, Nat.add_sub_cancel, A020737.P10234002653916598684.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A020737, Nat.add_sub_cancel, A020737.P10234002653916598684.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020737

/-! ## A020737.P15092367758497441009

`floor(a(n-1)-(1-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A020737.P15092367758497441009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A020737.P15092367758497441009

namespace A020737

/-- `floor(a(n-1)-(1-a(n-1)))` -/
def P15092367758497441009.Spec : Prop :=
  ∀ n, P15092367758497441009.a n = A020737 n

theorem P15092367758497441009.correct : P15092367758497441009.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A020737, Nat.add_sub_cancel, A020737.P15092367758497441009.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A020737, Nat.add_sub_cancel, A020737.P15092367758497441009.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020737

/-! ## A020737.P2319089712079479798

`ceil(a(n-1)+a(n-1)-1)` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A020737.P2319089712079479798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A020737.P2319089712079479798

namespace A020737

/-- `ceil(a(n-1)+a(n-1)-1)` -/
def P2319089712079479798.Spec : Prop :=
  ∀ n, P2319089712079479798.a n = A020737 n

theorem P2319089712079479798.correct : P2319089712079479798.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A020737, Nat.add_sub_cancel, A020737.P2319089712079479798.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A020737, Nat.add_sub_cancel, A020737.P2319089712079479798.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020737

/-! ## A020737.P15219683783377955168

`ceil(a(n-1)-(1-a(n-1)))` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A020737.P15219683783377955168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A020737.P15219683783377955168

namespace A020737

/-- `ceil(a(n-1)-(1-a(n-1)))` -/
def P15219683783377955168.Spec : Prop :=
  ∀ n, P15219683783377955168.a n = A020737 n

theorem P15219683783377955168.correct : P15219683783377955168.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A020737, Nat.add_sub_cancel, A020737.P15219683783377955168.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A020737, Nat.add_sub_cancel, A020737.P15219683783377955168.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020737

/-! ## A020737.P12850033390590025236

`round(a(n-1)+a(n-1)-1)` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A020737.P12850033390590025236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A020737.P12850033390590025236

namespace A020737

/-- `round(a(n-1)+a(n-1)-1)` -/
def P12850033390590025236.Spec : Prop :=
  ∀ n, P12850033390590025236.a n = A020737 n

theorem P12850033390590025236.correct : P12850033390590025236.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A020737, Nat.add_sub_cancel, A020737.P12850033390590025236.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A020737, Nat.add_sub_cancel, A020737.P12850033390590025236.a, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020737

/-!
# A020738: Consider number of divisors of binomial(n, k), k=0..n; a(n) = multiplicity of the maximum value.

The programs for A020738, there is no canonical definition to state claims against.
-/

/-! ## A020738.P8341763119347917335

`gcd(A000695(n), A334512(A005574(n+1)))`
-/

namespace A020738.P8341763119347917335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000695 n) (A334512 (A005574 (n + 1)).toNat)

end

end A020738.P8341763119347917335

/-! ## A020738.P393727319368641850

`A294788(A027337(n))+char[2*n]`
-/

namespace A020738.P393727319368641850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294788 (A027337 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A020738.P393727319368641850

/-! ## A020738.P8367553945588020983

`A348611(A027337(n))+A059841(n)`
-/

namespace A020738.P8367553945588020983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348611 (A027337 n).toNat + A059841 n

end

end A020738.P8367553945588020983

/-! ## A020738.P15731981893347448137

`gcd(A063009(n), A194396(A075525(n+1)))`
-/

namespace A020738.P15731981893347448137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063009 n) (A194396 (A075525 (n + 1)).toNat)

end

end A020738.P15731981893347448137

/-! ## A020738.P11569992790174785796

`A317952(A082047(n))`
-/

namespace A020738.P11569992790174785796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317952 (A082047 n).toNat

end

end A020738.P11569992790174785796

/-!
# A020739: a(n) = 2*n + 6.

The programs for A020739, the canonical program `A020739.P2210282862978748125` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020739 has offset 0).

The definition of A020739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n+6` (program `A020739.P2210282862978748125`, by `A020739.P2210282862978748125.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020739.P2210282862978748125

`2*n+6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020739

/-- `2*n+6` -/
def P2210282862978748125.Spec : Prop :=
  ∀ n, (P2210282862978748125.a n : ℤ) = A020739 n

theorem P2210282862978748125.correct : P2210282862978748125.Spec := by
  intro n
  simp only [A020739]

end A020739

/-!
# A020740: Max_{k=0..n} d(C(n,k)) - d(C(n,[ n/2 ])), where d() = number of divisors.

The programs for A020740, there is no canonical definition to state claims against.
-/

/-! ## A020740.P1453378813218950979

`A048275(n+1)-A034974(n+1)`
-/

namespace A020740.P1453378813218950979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - A034974 (n + 1)

end

end A020740.P1453378813218950979

/-! ## A020740.P5055985265301819704

`A048275(n+1)-(A048243(n+1)+A039593(n+1))`
-/

namespace A020740.P5055985265301819704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - (A048243 (n + 1) + A039593 (n + 1))

end

end A020740.P5055985265301819704

/-! ## A020740.P11702937787907896535

`A048275(n+1)-(A048244(n+1)+2*A048243(n+1))`
-/

namespace A020740.P11702937787907896535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - (A048244 (n + 1) + 2 * A048243 (n + 1))

end

end A020740.P11702937787907896535

/-! ## A020740.P10585784586630489871

`A048275(n+1)-(2*A039593(n+1)-A048244(n+1))`
-/

namespace A020740.P10585784586630489871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - (2 * A039593 (n + 1) - A048244 (n + 1))

end

end A020740.P10585784586630489871

/-! ## A020740.P4959259033472655097

`A048275(n+1)-(A048243(n+1)+A000079(A034973(n+1)))`
-/

namespace A020740.P4959259033472655097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - (A048243 (n + 1) + A000079 (A034973 (n + 1)).toNat)

end

end A020740.P4959259033472655097

/-! ## A020740.P17029149686004724744

`A048275(n+1)-A048570(∑[or(1, n+1)])`
-/

namespace A020740.P17029149686004724744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - A048570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020740.P17029149686004724744

/-! ## A020740.P3143238161676881345

`A048275(n+1)-A048570(∑[and(1, n)+n+1])`
-/

namespace A020740.P3143238161676881345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - A048570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020740.P3143238161676881345

/-! ## A020740.P9461519324154783465

`A048275(n+1)-A048570(∑[A098181(n)])`
-/

namespace A020740.P9461519324154783465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - A048570 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A020740.P9461519324154783465

/-! ## A020740.P11331359653800835583

`A048275(n+1)-A048570(A074148(n+1))`
-/

namespace A020740.P11331359653800835583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - A048570 (A074148 (n + 1)).toNat

end

end A020740.P11331359653800835583

/-! ## A020740.P15365056929662009152

`A048275(n+1)-A048570(A194274(n+1))`
-/

namespace A020740.P15365056929662009152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - A048570 (A194274 (n + 1)).toNat

end

end A020740.P15365056929662009152

/-! ## A020740.P167528715805186478

`A048275(n+1)-A048570(A001972(Δ[n²]))`
-/

namespace A020740.P167528715805186478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1) - A048570 (A001972 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A020740.P167528715805186478

/-!
# A020741: Pisot sequence T(6,10), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A020741, the canonical program `A020741.P7083773386000161267` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020741 has offset 0).

The definition of A020741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020741.P7083773386000161267`, by `A020741.P7083773386000161267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020741.P7083773386000161267

`floor(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020741

/-- `floor(a(n-1)²/a(n-2))` -/
def P7083773386000161267.Spec : Prop :=
  ∀ n, P7083773386000161267.a n = A020741 n

theorem P7083773386000161267.correct : P7083773386000161267.Spec := by
  intro n
  simp only [A020741]

end A020741

/-! ## A020741.P18065086574478593036

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=6, a(1)=10`
-/

namespace A020741.P18065086574478593036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A020741.P18065086574478593036

namespace A020741

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P18065086574478593036.Spec : Prop :=
  ∀ n, P18065086574478593036.a n = A020741 n

theorem P18065086574478593036.correct : P18065086574478593036.Spec := by
  intro n
  simp only [A020741, Nat.add_sub_cancel, A020741.P18065086574478593036.a, A020741.P7083773386000161267.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020741

/-! ## A020741.P2960472978819891755

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=6, a(1)=10`
-/

namespace A020741.P2960472978819891755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A020741.P2960472978819891755

namespace A020741

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P2960472978819891755.Spec : Prop :=
  ∀ n, P2960472978819891755.a n = A020741 n

end A020741

/-! ## A020741.P10348049742166117982

`A274951(n)-A000005(A046872(n+1))`
-/

namespace A020741.P10348049742166117982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274951 n - A000005 (A046872 (n + 1)).toNat

end

end A020741.P10348049742166117982

namespace A020741

/-- `A274951(n)-A000005(A046872(n+1))` -/
def P10348049742166117982.Spec : Prop :=
  ∀ n, P10348049742166117982.a n = A020741 n

end A020741

/-! ## A020741.P13885846336080175067

`A274951(n)-A000005(A125876(n+1))`
-/

namespace A020741.P13885846336080175067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274951 n - A000005 (A125876 (n + 1)).toNat

end

end A020741.P13885846336080175067

namespace A020741

/-- `A274951(n)-A000005(A125876(n+1))` -/
def P13885846336080175067.Spec : Prop :=
  ∀ n, P13885846336080175067.a n = A020741 n

end A020741

/-!
# A020742: Pisot sequence T(7,9).

The programs for A020742, the canonical program `A020742.P7099883194858047647` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020742 has offset 0).

The definition of A020742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020742.P7099883194858047647

`2*n+7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020742

/-- `2*n+7` -/
def P7099883194858047647.Spec : Prop :=
  ∀ n, (P7099883194858047647.a n : ℤ) = A020742 n

theorem P7099883194858047647.correct : P7099883194858047647.Spec := by
  intro n
  simp only [A020742]

end A020742

/-!
# A020743: Pisot sequence L(7,10).

The programs for A020743, the canonical program `A020743.P12649817717778317435` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020743 has offset 0).

The definition of A020743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020743.P15544515529020090596

`A048584(n+1)`
-/

namespace A020743.P15544515529020090596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 (n + 1)

end

end A020743.P15544515529020090596

namespace A020743

/-- `A048584(n+1)` -/
def P15544515529020090596.Spec : Prop :=
  ∀ n, P15544515529020090596.a n = A020743 n

end A020743

/-! ## A020743.P12649817717778317435

`A018910(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020743

/-- `A018910(n+2)` -/
def P12649817717778317435.Spec : Prop :=
  ∀ n, P12649817717778317435.a n = A020743 n

theorem P12649817717778317435.correct : P12649817717778317435.Spec := by
  intro n
  simp only [A020743]

end A020743

/-! ## A020743.P15955886785558327283

`A157725(n+5)`
-/

namespace A020743.P15955886785558327283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 5)

end

end A020743.P15955886785558327283

namespace A020743

/-- `A157725(n+5)` -/
def P15955886785558327283.Spec : Prop :=
  ∀ n, P15955886785558327283.a n = A020743 n

end A020743

/-! ## A020743.P2558843354881753650

`A000045(n+5)+2`
-/

namespace A020743.P2558843354881753650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) + 2

end

end A020743.P2558843354881753650

namespace A020743

/-- `A000045(n+5)+2` -/
def P2558843354881753650.Spec : Prop :=
  ∀ n, P2558843354881753650.a n = A020743 n

end A020743

/-! ## A020743.P18167906273609285154

`2*a(n-1)-a(n-3)` with `a(0)=7, a(1)=10, a(2)=15`
-/

namespace A020743.P18167906273609285154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10, 15] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A020743.P18167906273609285154

namespace A020743

/-- `2*a(n-1)-a(n-3)` -/
def P18167906273609285154.Spec : Prop :=
  ∀ n, P18167906273609285154.a n = A020743 n

end A020743

/-! ## A020743.P10158003427705606801

`ceil(a(n-1)²/a(n-2))` with `a(0)=7, a(1)=10`
-/

namespace A020743.P10158003427705606801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A020743.P10158003427705606801

namespace A020743

/-- `ceil(a(n-1)²/a(n-2))` -/
def P10158003427705606801.Spec : Prop :=
  ∀ n, P10158003427705606801.a n = A020743 n

end A020743

/-! ## A020743.P9832412117422588033

`∑[ogf((-7+4x+5x^2)/(-1+x+x^2))]`
-/

namespace A020743.P9832412117422588033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -4, -5] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020743.P9832412117422588033

namespace A020743

/-- `∑[ogf((-7+4x+5x^2)/(-1+x+x^2))]` -/
def P9832412117422588033.Spec : Prop :=
  ∀ n, P9832412117422588033.a n = A020743 n

end A020743

/-! ## A020743.P6450578850486098624

`ogf((7-4x-5x^2)/(1-2x+x^3))`
-/

namespace A020743.P6450578850486098624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -4, -5] [1, -2, 0, 1] n

end

end A020743.P6450578850486098624

namespace A020743

/-- `ogf((7-4x-5x^2)/(1-2x+x^3))` -/
def P6450578850486098624.Spec : Prop :=
  ∀ n, P6450578850486098624.a n = A020743 n

end A020743

/-! ## A020743.P5941791626540465213

`floor(ϕ*a(n-1))-1` with `a(0)=7`
-/

namespace A020743.P5941791626540465213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ - 1

end

end A020743.P5941791626540465213

namespace A020743

/-- `floor(ϕ*a(n-1))-1` -/
def P5941791626540465213.Spec : Prop :=
  ∀ n, P5941791626540465213.a n = A020743 n

end A020743

/-! ## A020743.P6648880146979723749

`ceil(ϕ*(a(n-1)-1))` with `a(0)=7`
-/

namespace A020743.P6648880146979723749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) - 1 : ℝ)⌉

end

end A020743.P6648880146979723749

namespace A020743

/-- `ceil(ϕ*(a(n-1)-1))` -/
def P6648880146979723749.Spec : Prop :=
  ∀ n, P6648880146979723749.a n = A020743 n

end A020743

/-! ## A020743.P6604308187745620200

`round(ϕ*(a(n-1)-1))` with `a(0)=7`
-/

namespace A020743.P6604308187745620200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) - 1 : ℝ))

end

end A020743.P6604308187745620200

namespace A020743

/-- `round(ϕ*(a(n-1)-1))` -/
def P6604308187745620200.Spec : Prop :=
  ∀ n, P6604308187745620200.a n = A020743 n

end A020743

/-! ## A020743.P58200079401910092

`a(n-1)+a(n-2)-2` with `a(0)=7, a(1)=10`
-/

namespace A020743.P58200079401910092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10] fun n a =>
  a (n - 1) + (a (n - 2) - 2)

end

end A020743.P58200079401910092

namespace A020743

/-- `a(n-1)+a(n-2)-2` -/
def P58200079401910092.Spec : Prop :=
  ∀ n, P58200079401910092.a n = A020743 n

end A020743

/-! ## A020743.P5946808947485712929

`a(n-1)-(2-a(n-2))` with `a(0)=7, a(1)=10`
-/

namespace A020743.P5946808947485712929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10] fun n a =>
  a (n - 1) - (2 - a (n - 2))

end

end A020743.P5946808947485712929

namespace A020743

/-- `a(n-1)-(2-a(n-2))` -/
def P5946808947485712929.Spec : Prop :=
  ∀ n, P5946808947485712929.a n = A020743 n

end A020743

/-! ## A020743.P15720029657076527944

`A020717(n)+1`
-/

namespace A020743.P15720029657076527944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n + 1

end

end A020743.P15720029657076527944

namespace A020743

/-- `A020717(n)+1` -/
def P15720029657076527944.Spec : Prop :=
  ∀ n, P15720029657076527944.a n = A020743 n

end A020743

/-! ## A020743.P16704455783609984290

`A020712(n)+2`
-/

namespace A020743.P16704455783609984290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n + 2

end

end A020743.P16704455783609984290

namespace A020743

/-- `A020712(n)+2` -/
def P16704455783609984290.Spec : Prop :=
  ∀ n, P16704455783609984290.a n = A020743 n

end A020743

/-! ## A020743.P4693057737129376907

`A020732(n)+3`
-/

namespace A020743.P4693057737129376907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n + 3

end

end A020743.P4693057737129376907

namespace A020743

/-- `A020732(n)+3` -/
def P4693057737129376907.Spec : Prop :=
  ∀ n, P4693057737129376907.a n = A020743 n

end A020743

/-! ## A020743.P2463958236290548574

`∑[A020695(n)]+5`
-/

namespace A020743.P2463958236290548574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A020743.P2463958236290548574

namespace A020743

/-- `∑[A020695(n)]+5` -/
def P2463958236290548574.Spec : Prop :=
  ∀ n, P2463958236290548574.a n = A020743 n

end A020743

/-! ## A020743.P11491617105091071628

`A020706(n+1)+1`
-/

namespace A020743.P11491617105091071628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (n + 1) + 1

end

end A020743.P11491617105091071628

namespace A020743

/-- `A020706(n+1)+1` -/
def P11491617105091071628.Spec : Prop :=
  ∀ n, P11491617105091071628.a n = A020743 n

end A020743

/-! ## A020743.P2138882217232533418

`A020701(n+1)+2`
-/

namespace A020743.P2138882217232533418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 1) + 2

end

end A020743.P2138882217232533418

namespace A020743

/-- `A020701(n+1)+2` -/
def P2138882217232533418.Spec : Prop :=
  ∀ n, P2138882217232533418.a n = A020743 n

end A020743

/-! ## A020743.P543271022685043330

`A048577(n+2)+1`
-/

namespace A020743.P543271022685043330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (n + 2) + 1

end

end A020743.P543271022685043330

namespace A020743

/-- `A048577(n+2)+1` -/
def P543271022685043330.Spec : Prop :=
  ∀ n, P543271022685043330.a n = A020743 n

end A020743

/-!
# A020744: Pisot sequences P(8,10), T(8,10).

The programs for A020744, the canonical program `A020744.P3278150809387574168` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020744 has offset 0).

The definition of A020744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020744.P3278150809387574168

`2*n+8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020744

/-- `2*n+8` -/
def P3278150809387574168.Spec : Prop :=
  ∀ n, (P3278150809387574168.a n : ℤ) = A020744 n

theorem P3278150809387574168.correct : P3278150809387574168.Spec := by
  intro n
  simp only [A020744]

end A020744

/-!
# A020745: Pisot sequence T(3,5).

The programs for A020745, the canonical program `A020745.P15050310323805390845` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020745 has offset 0).

The definition of A020745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020745.P15050310323805390845

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=5, a(2)=8, a(3)=12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020745

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P15050310323805390845.Spec : Prop :=
  ∀ n, P15050310323805390845.a n = A020745 n

theorem P15050310323805390845.correct : P15050310323805390845.Spec := by
  intro n
  simp only [A020745]

end A020745

/-! ## A020745.P15670617950547119485

`floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A020745.P15670617950547119485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020745.P15670617950547119485

namespace A020745

/-- `floor(a(n-1)²/a(n-2))` -/
def P15670617950547119485.Spec : Prop :=
  ∀ n, P15670617950547119485.a n = A020745 n

end A020745

/-! ## A020745.P2839389976627301106

`ogf((3-x+x^2-2x^3)/(1-2x+x^2-x^3+x^4))`
-/

namespace A020745.P2839389976627301106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 1, -2] [1, -2, 1, -1, 1] n

end

end A020745.P2839389976627301106

namespace A020745

/-- `ogf((3-x+x^2-2x^3)/(1-2x+x^2-x^3+x^4))` -/
def P2839389976627301106.Spec : Prop :=
  ∀ n, P2839389976627301106.a n = A020745 n

end A020745

/-! ## A020745.P4124991785302973056

`a(n-1)+a(n-3)+1` with `a(0)=3, a(1)=5, a(2)=8`
-/

namespace A020745.P4124991785302973056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 8] fun n a =>
  a (n - 1) + (a (n - 3) + 1)

end

end A020745.P4124991785302973056

namespace A020745

/-- `a(n-1)+a(n-3)+1` -/
def P4124991785302973056.Spec : Prop :=
  ∀ n, (P4124991785302973056.a n : ℤ) = A020745 n

end A020745

/-! ## A020745.P15907826344295740562

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=5`
-/

namespace A020745.P15907826344295740562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A020745.P15907826344295740562

namespace A020745

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P15907826344295740562.Spec : Prop :=
  ∀ n, P15907826344295740562.a n = A020745 n

end A020745

/-! ## A020745.P11235030799493071223

`A048625(n)-1`
-/

namespace A020745.P11235030799493071223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 n - 1

end

end A020745.P11235030799493071223

namespace A020745

/-- `A048625(n)-1` -/
def P11235030799493071223.Spec : Prop :=
  ∀ n, P11235030799493071223.a n = A020745 n

end A020745

/-! ## A020745.P14290529005838836414

`A077868(n+2)`
-/

namespace A020745.P14290529005838836414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 2)

end

end A020745.P14290529005838836414

namespace A020745

/-- `A077868(n+2)` -/
def P14290529005838836414.Spec : Prop :=
  ∀ n, P14290529005838836414.a n = A020745 n

end A020745

/-! ## A020745.P9794097764429730274

`A020711(n)-2`
-/

namespace A020745.P9794097764429730274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 n - 2

end

end A020745.P9794097764429730274

namespace A020745

/-- `A020711(n)-2` -/
def P9794097764429730274.Spec : Prop :=
  ∀ n, P9794097764429730274.a n = A020745 n

end A020745

/-! ## A020745.P10376674549811602344

`A048589(n)-4`
-/

namespace A020745.P10376674549811602344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 n - 4

end

end A020745.P10376674549811602344

namespace A020745

/-- `A048589(n)-4` -/
def P10376674549811602344.Spec : Prop :=
  ∀ n, P10376674549811602344.a n = A020745 n

end A020745

/-! ## A020745.P14943359593371644156

`A048591(n)-5`
-/

namespace A020745.P14943359593371644156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 n - 5

end

end A020745.P14943359593371644156

namespace A020745

/-- `A048591(n)-5` -/
def P14943359593371644156.Spec : Prop :=
  ∀ n, P14943359593371644156.a n = A020745 n

end A020745

/-! ## A020745.P4750160292400172674

`A048585(n+1)-4`
-/

namespace A020745.P4750160292400172674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 (n + 1) - 4

end

end A020745.P4750160292400172674

namespace A020745

/-- `A048585(n+1)-4` -/
def P4750160292400172674.Spec : Prop :=
  ∀ n, P4750160292400172674.a n = A020745 n

end A020745

/-! ## A020745.P16396776502234114634

`A068921(n+4)-1`
-/

namespace A020745.P16396776502234114634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 4) - 1

end

end A020745.P16396776502234114634

namespace A020745

/-- `A068921(n+4)-1` -/
def P16396776502234114634.Spec : Prop :=
  ∀ n, P16396776502234114634.a n = A020745 n

end A020745

/-! ## A020745.P6245429817001395512

`A000930(n+5)-1`
-/

namespace A020745.P6245429817001395512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 5) - 1

end

end A020745.P6245429817001395512

namespace A020745

/-- `A000930(n+5)-1` -/
def P6245429817001395512.Spec : Prop :=
  ∀ n, P6245429817001395512.a n = A020745 n

end A020745

/-! ## A020745.P9219214670346756472

`A048588(n+1)-5`
-/

namespace A020745.P9219214670346756472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 (n + 1) - 5

end

end A020745.P9219214670346756472

namespace A020745

/-- `A048588(n+1)-5` -/
def P9219214670346756472.Spec : Prop :=
  ∀ n, P9219214670346756472.a n = A020745 n

end A020745

/-! ## A020745.P8018915292975243261

`record[A077868(abs(2-n))]`
-/

namespace A020745.P8018915292975243261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020745.P8018915292975243261

namespace A020745

/-- `record[A077868(abs(2-n))]` -/
def P8018915292975243261.Spec : Prop :=
  ∀ n, P8018915292975243261.a n = A020745 n

end A020745

/-! ## A020745.P5173278357656266146

`∑[A068921(n+1)]+2`
-/

namespace A020745.P5173278357656266146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A020745.P5173278357656266146

namespace A020745

/-- `∑[A068921(n+1)]+2` -/
def P5173278357656266146.Spec : Prop :=
  ∀ n, P5173278357656266146.a n = A020745 n

end A020745

/-! ## A020745.P14412659868319202317

`∑[A000930(n+2)]+2`
-/

namespace A020745.P14412659868319202317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A020745.P14412659868319202317

namespace A020745

/-- `∑[A000930(n+2)]+2` -/
def P14412659868319202317.Spec : Prop :=
  ∀ n, P14412659868319202317.a n = A020745 n

end A020745

/-! ## A020745.P11547612502732976295

`∑[A019527(n+1)-2]+1`
-/

namespace A020745.P11547612502732976295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019527 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A020745.P11547612502732976295

namespace A020745

/-- `∑[A019527(n+1)-2]+1` -/
def P11547612502732976295.Spec : Prop :=
  ∀ n, P11547612502732976295.a n = A020745 n

end A020745

/-! ## A020745.P37746522809008502

`A108104(A020744(n+1))-1`
-/

namespace A020745.P37746522809008502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A020744 (n + 1)).toNat - 1

end

end A020745.P37746522809008502

namespace A020745

/-- `A108104(A020744(n+1))-1` -/
def P37746522809008502.Spec : Prop :=
  ∀ n, P37746522809008502.a n = A020745 n

end A020745

/-! ## A020745.P5384722507073104901

`A038718(n+3)+A000930(n+1)`
-/

namespace A020745.P5384722507073104901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 3) + A000930 (n + 1)

end

end A020745.P5384722507073104901

namespace A020745

/-- `A038718(n+3)+A000930(n+1)` -/
def P5384722507073104901.Spec : Prop :=
  ∀ n, P5384722507073104901.a n = A020745 n

end A020745

/-!
# A020746: Pisot sequence T(3,7), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A020746, the canonical program `A020746.P3267636864207743615` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020746 has offset 0).

The definition of A020746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020746.P3267636864207743615`, by `A020746.P3267636864207743615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020746.P3267636864207743615

`floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020746

/-- `floor(a(n-1)²/a(n-2))` -/
def P3267636864207743615.Spec : Prop :=
  ∀ n, P3267636864207743615.a n = A020746 n

theorem P3267636864207743615.correct : P3267636864207743615.Spec := by
  intro n
  simp only [A020746]

end A020746

/-! ## A020746.P1327838476649455936

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=7`
-/

namespace A020746.P1327838476649455936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A020746.P1327838476649455936

namespace A020746

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P1327838476649455936.Spec : Prop :=
  ∀ n, P1327838476649455936.a n = A020746 n

theorem P1327838476649455936.correct : P1327838476649455936.Spec := by
  intro n
  simp only [A020746, Nat.add_sub_cancel, A020746.P1327838476649455936.a, A020746.P3267636864207743615.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020746

/-! ## A020746.P10277799973327772353

`floor(a(n-1)^2/a(n-2))` with `a(0)=3, a(1)=7`
-/

namespace A020746.P10277799973327772353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020746.P10277799973327772353

namespace A020746

/-- `floor(a(n-1)^2/a(n-2))` -/
def P10277799973327772353.Spec : Prop :=
  ∀ n, P10277799973327772353.a n = A020746 n

theorem P10277799973327772353.correct : P10277799973327772353.Spec := by
  intro n
  simp only [A020746, Nat.add_sub_cancel, A020746.P10277799973327772353.a, A020746.P3267636864207743615.a, SequenceMachineLib.memo_apply]

end A020746

/-! ## A020746.P6368461356710973069

`A057355(floor((sqrt(3)+2)*a(n-1)))+1` with `a(0)=3`
-/

namespace A020746.P6368461356710973069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A057355 ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋.toNat + 1

end

end A020746.P6368461356710973069

namespace A020746

/-- `A057355(floor((sqrt(3)+2)*a(n-1)))+1` -/
def P6368461356710973069.Spec : Prop :=
  ∀ n, P6368461356710973069.a n = A020746 n

end A020746

/-! ## A020746.P663926219057933095

`∑[A057354(A130497(14*a(n-1)))]` with `a(0)=3, a(1)=4`
-/

namespace A020746.P663926219057933095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  A057354 (A130497 (14 * f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020746.P663926219057933095

namespace A020746

/-- `∑[A057354(A130497(14*a(n-1)))]` -/
def P663926219057933095.Spec : Prop :=
  ∀ n, P663926219057933095.a n = A020746 n

end A020746

/-!
# A020747: Pisot sequence T(4,6), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A020747, the canonical program `A020747.P13619479992395700009` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020747 has offset 0).

The definition of A020747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020747.P13619479992395700009`, by `A020747.P13619479992395700009.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020747.P13619479992395700009

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020747

/-- `floor(a(n-1)²/a(n-2))` -/
def P13619479992395700009.Spec : Prop :=
  ∀ n, P13619479992395700009.a n = A020747 n

theorem P13619479992395700009.correct : P13619479992395700009.Spec := by
  intro n
  simp only [A020747]

end A020747

/-! ## A020747.P1884666432796058986

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=6`
-/

namespace A020747.P1884666432796058986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A020747.P1884666432796058986

namespace A020747

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P1884666432796058986.Spec : Prop :=
  ∀ n, P1884666432796058986.a n = A020747 n

theorem P1884666432796058986.correct : P1884666432796058986.Spec := by
  intro n
  simp only [A020747, Nat.add_sub_cancel, A020747.P1884666432796058986.a, A020747.P13619479992395700009.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020747

/-! ## A020747.P12297996176627119071

`floor(a(n-1)^2/a(n-2))` with `a(0)=4, a(1)=6`
-/

namespace A020747.P12297996176627119071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020747.P12297996176627119071

namespace A020747

/-- `floor(a(n-1)^2/a(n-2))` -/
def P12297996176627119071.Spec : Prop :=
  ∀ n, P12297996176627119071.a n = A020747 n

theorem P12297996176627119071.correct : P12297996176627119071.Spec := by
  intro n
  simp only [A020747, Nat.add_sub_cancel, A020747.P12297996176627119071.a, A020747.P13619479992395700009.a, SequenceMachineLib.memo_apply]

end A020747

/-! ## A020747.P15065989058914293794

`A020751(n-1)%a(n-1)²` with `a(0)=4`
-/

namespace A020747.P15065989058914293794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.tmod (A020751 (n - 1)) (a (n - 1) ^ 2)

end

end A020747.P15065989058914293794

namespace A020747

/-- `A020751(n-1)%a(n-1)²` -/
def P15065989058914293794.Spec : Prop :=
  ∀ n, P15065989058914293794.a n = A020747 n

end A020747

/-! ## A020747.P14331673582341224699

`record[A020751(A002262(n))-A000038(n)]`
-/

namespace A020747.P14331673582341224699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020751 (A002262 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020747.P14331673582341224699

namespace A020747

/-- `record[A020751(A002262(n))-A000038(n)]` -/
def P14331673582341224699.Spec : Prop :=
  ∀ n, P14331673582341224699.a n = A020747 n

end A020747

/-!
# A020748: Pisot sequence T(4,10), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A020748, the canonical program `A020748.P17577383561434926385` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020748 has offset 0).

The definition of A020748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020748.P17577383561434926385`, by `A020748.P17577383561434926385.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020748.P17577383561434926385

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020748

/-- `floor(a(n-1)²/a(n-2))` -/
def P17577383561434926385.Spec : Prop :=
  ∀ n, P17577383561434926385.a n = A020748 n

theorem P17577383561434926385.correct : P17577383561434926385.Spec := by
  intro n
  simp only [A020748]

end A020748

/-! ## A020748.P6687632496763551400

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=10`
-/

namespace A020748.P6687632496763551400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A020748.P6687632496763551400

namespace A020748

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P6687632496763551400.Spec : Prop :=
  ∀ n, P6687632496763551400.a n = A020748 n

theorem P6687632496763551400.correct : P6687632496763551400.Spec := by
  intro n
  simp only [A020748, Nat.add_sub_cancel, A020748.P6687632496763551400.a, A020748.P17577383561434926385.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020748

/-! ## A020748.P3210820186397256430

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=4, a(1)=10, a(2)=25`
-/

namespace A020748.P3210820186397256430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10, 25] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A020748.P3210820186397256430

namespace A020748

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P3210820186397256430.Spec : Prop :=
  ∀ n, P3210820186397256430.a n = A020748 n

end A020748

/-! ## A020748.P1966506415204540048

`A028310(A195168(a(n-1)))` with `a(0)=4`
-/

namespace A020748.P1966506415204540048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A028310 (A195168 (a (n - 1)).toNat).toNat

end

end A020748.P1966506415204540048

namespace A020748

/-- `A028310(A195168(a(n-1)))` -/
def P1966506415204540048.Spec : Prop :=
  ∀ n, P1966506415204540048.a n = A020748 n

end A020748

/-!
# A020749: Pisot sequence T(5,8), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A020749, the canonical program `A020749.P15602634352803308487` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020749 has offset 0).

The definition of A020749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020749.P15602634352803308487`, by `A020749.P15602634352803308487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020749.P17522945193889641468

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=5, a(1)=8, a(2)=12, a(3)=18`
-/

namespace A020749.P17522945193889641468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8, 12, 18] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A020749.P17522945193889641468

namespace A020749

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P17522945193889641468.Spec : Prop :=
  ∀ n, P17522945193889641468.a n = A020749 n

end A020749

/-! ## A020749.P15602634352803308487

`floor(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020749

/-- `floor(a(n-1)²/a(n-2))` -/
def P15602634352803308487.Spec : Prop :=
  ∀ n, P15602634352803308487.a n = A020749 n

theorem P15602634352803308487.correct : P15602634352803308487.Spec := by
  intro n
  simp only [A020749]

end A020749

/-! ## A020749.P5644696142908721191

`ogf((5-2x+x^2-3x^3)/(1-2x+x^2-x^3+x^4))`
-/

namespace A020749.P5644696142908721191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -2, 1, -3] [1, -2, 1, -1, 1] n

end

end A020749.P5644696142908721191

namespace A020749

/-- `ogf((5-2x+x^2-3x^3)/(1-2x+x^2-x^3+x^4))` -/
def P5644696142908721191.Spec : Prop :=
  ∀ n, P5644696142908721191.a n = A020749 n

end A020749

/-! ## A020749.P4897876632924874460

`∑[a(n-1)+a(n-3)]` with `a(0)=5, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A020749.P4897876632924874460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 3, 4, 6] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020749.P4897876632924874460

namespace A020749

/-- `∑[a(n-1)+a(n-3)]` -/
def P4897876632924874460.Spec : Prop :=
  ∀ n, (P4897876632924874460.a n : ℤ) = A020749 n

end A020749

/-! ## A020749.P17644482224759061901

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=5, a(1)=8`
-/

namespace A020749.P17644482224759061901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A020749.P17644482224759061901

namespace A020749

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P17644482224759061901.Spec : Prop :=
  ∀ n, P17644482224759061901.a n = A020749 n

theorem P17644482224759061901.correct : P17644482224759061901.Spec := by
  intro n
  simp only [A020749, Nat.add_sub_cancel, A020749.P17644482224759061901.a, A020749.P15602634352803308487.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020749

/-! ## A020749.P8338875729021644214

`A020745(n+1)`
-/

namespace A020749.P8338875729021644214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 1)

end

end A020749.P8338875729021644214

namespace A020749

/-- `A020745(n+1)` -/
def P8338875729021644214.Spec : Prop :=
  ∀ n, P8338875729021644214.a n = A020749 n

end A020749

/-! ## A020749.P8383291254059061593

`A048626(n)-1`
-/

namespace A020749.P8383291254059061593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048626 n - 1

end

end A020749.P8383291254059061593

namespace A020749

/-- `A048626(n)-1` -/
def P8383291254059061593.Spec : Prop :=
  ∀ n, P8383291254059061593.a n = A020749 n

end A020749

/-! ## A020749.P16159228294980000223

`A020721(n)-2`
-/

namespace A020749.P16159228294980000223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020721 n - 2

end

end A020749.P16159228294980000223

namespace A020749

/-- `A020721(n)-2` -/
def P16159228294980000223.Spec : Prop :=
  ∀ n, P16159228294980000223.a n = A020749 n

end A020749

/-! ## A020749.P17418235503706664755

`A077868(n+3)`
-/

namespace A020749.P17418235503706664755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 3)

end

end A020749.P17418235503706664755

namespace A020749

/-- `A077868(n+3)` -/
def P17418235503706664755.Spec : Prop :=
  ∀ n, P17418235503706664755.a n = A020749 n

end A020749

/-! ## A020749.P13477429598598842165

`A048625(n+1)-1`
-/

namespace A020749.P13477429598598842165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 (n + 1) - 1

end

end A020749.P13477429598598842165

namespace A020749

/-- `A048625(n+1)-1` -/
def P13477429598598842165.Spec : Prop :=
  ∀ n, P13477429598598842165.a n = A020749 n

end A020749

/-! ## A020749.P5116274826580942899

`A020711(n+1)-2`
-/

namespace A020749.P5116274826580942899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 (n + 1) - 2

end

end A020749.P5116274826580942899

namespace A020749

/-- `A020711(n+1)-2` -/
def P5116274826580942899.Spec : Prop :=
  ∀ n, P5116274826580942899.a n = A020749 n

end A020749

/-! ## A020749.P9496697822787238254

`A048589(n+1)-4`
-/

namespace A020749.P9496697822787238254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 (n + 1) - 4

end

end A020749.P9496697822787238254

namespace A020749

/-- `A048589(n+1)-4` -/
def P9496697822787238254.Spec : Prop :=
  ∀ n, P9496697822787238254.a n = A020749 n

end A020749

/-! ## A020749.P16463968856914045412

`A048585(n+2)-4`
-/

namespace A020749.P16463968856914045412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 (n + 2) - 4

end

end A020749.P16463968856914045412

namespace A020749

/-- `A048585(n+2)-4` -/
def P16463968856914045412.Spec : Prop :=
  ∀ n, P16463968856914045412.a n = A020749 n

end A020749

/-! ## A020749.P3989778011234513337

`A048591(n+1)-5`
-/

namespace A020749.P3989778011234513337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 (n + 1) - 5

end

end A020749.P3989778011234513337

namespace A020749

/-- `A048591(n+1)-5` -/
def P3989778011234513337.Spec : Prop :=
  ∀ n, P3989778011234513337.a n = A020749 n

end A020749

/-! ## A020749.P18185454335241460013

`A000930(n+6)-1`
-/

namespace A020749.P18185454335241460013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 6) - 1

end

end A020749.P18185454335241460013

namespace A020749

/-- `A000930(n+6)-1` -/
def P18185454335241460013.Spec : Prop :=
  ∀ n, P18185454335241460013.a n = A020749 n

end A020749

/-! ## A020749.P7531617208627557882

`A048588(n+2)-5`
-/

namespace A020749.P7531617208627557882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 (n + 2) - 5

end

end A020749.P7531617208627557882

namespace A020749

/-- `A048588(n+2)-5` -/
def P7531617208627557882.Spec : Prop :=
  ∀ n, P7531617208627557882.a n = A020749 n

end A020749

/-! ## A020749.P11744056195449160821

`record[A020745(abs(1-n))]`
-/

namespace A020749.P11744056195449160821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020749.P11744056195449160821

namespace A020749

/-- `record[A020745(abs(1-n))]` -/
def P11744056195449160821.Spec : Prop :=
  ∀ n, P11744056195449160821.a n = A020749 n

end A020749

/-! ## A020749.P175712805063398877

`record[A077868(abs(3-n))]`
-/

namespace A020749.P175712805063398877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020749.P175712805063398877

namespace A020749

/-- `record[A077868(abs(3-n))]` -/
def P175712805063398877.Spec : Prop :=
  ∀ n, P175712805063398877.a n = A020749 n

end A020749

/-! ## A020749.P1629128220867057079

`∑[A068921(n+2)]+3`
-/

namespace A020749.P1629128220867057079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A020749.P1629128220867057079

namespace A020749

/-- `∑[A068921(n+2)]+3` -/
def P1629128220867057079.Spec : Prop :=
  ∀ n, P1629128220867057079.a n = A020749 n

end A020749

/-! ## A020749.P8092511430020635095

`∑[A000930(n+3)]+3`
-/

namespace A020749.P8092511430020635095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A020749.P8092511430020635095

namespace A020749

/-- `∑[A000930(n+3)]+3` -/
def P8092511430020635095.Spec : Prop :=
  ∀ n, P8092511430020635095.a n = A020749 n

end A020749

/-!
# A020750: Pisot sequence T(5,9), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A020750, the canonical program `A020750.P12478890006466846672` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020750 has offset 0).

The definition of A020750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020750.P12478890006466846672`, by `A020750.P12478890006466846672.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020750.P15981561678117664606

`2*a(n-1)-2*a(n-4)+a(n-5)` with `a(0)=5, a(1)=9, a(2)=16, a(3)=28, a(4)=49`
-/

namespace A020750.P15981561678117664606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 9, 16, 28, 49] fun n a =>
  2 * a (n - 1) - 2 * a (n - 4) + a (n - 5)

end

end A020750.P15981561678117664606

namespace A020750

/-- `2*a(n-1)-2*a(n-4)+a(n-5)` -/
def P15981561678117664606.Spec : Prop :=
  ∀ n, P15981561678117664606.a n = A020750 n

end A020750

/-! ## A020750.P12478890006466846672

`floor(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020750

/-- `floor(a(n-1)²/a(n-2))` -/
def P12478890006466846672.Spec : Prop :=
  ∀ n, P12478890006466846672.a n = A020750 n

theorem P12478890006466846672.correct : P12478890006466846672.Spec := by
  intro n
  simp only [A020750]

end A020750

/-! ## A020750.P13921848658852725117

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=5, a(1)=9`
-/

namespace A020750.P13921848658852725117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 9] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A020750.P13921848658852725117

namespace A020750

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P13921848658852725117.Spec : Prop :=
  ∀ n, P13921848658852725117.a n = A020750 n

theorem P13921848658852725117.correct : P13921848658852725117.Spec := by
  intro n
  simp only [A020750, Nat.add_sub_cancel, A020750.P13921848658852725117.a, A020750.P12478890006466846672.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020750

/-! ## A020750.P11697522148879909824

`∑[∑[A239909(n+2)]]+4+n`
-/

namespace A020750.P11697522148879909824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 + (n : ℤ)

end

end A020750.P11697522148879909824

namespace A020750

/-- `∑[∑[A239909(n+2)]]+4+n` -/
def P11697522148879909824.Spec : Prop :=
  ∀ n, P11697522148879909824.a n = A020750 n

end A020750

/-! ## A020750.P13511600700727766158

`Δ[A164400(n+3)]-1`
-/

namespace A020750.P13511600700727766158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164400 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A020750.P13511600700727766158

namespace A020750

/-- `Δ[A164400(n+3)]-1` -/
def P13511600700727766158.Spec : Prop :=
  ∀ n, P13511600700727766158.a n = A020750 n

end A020750

/-! ## A020750.P7848472551504553593

`floor(a(n-1)^2/a(n-2))` with `a(0)=5, a(1)=9`
-/

namespace A020750.P7848472551504553593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 9] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020750.P7848472551504553593

namespace A020750

/-- `floor(a(n-1)^2/a(n-2))` -/
def P7848472551504553593.Spec : Prop :=
  ∀ n, P7848472551504553593.a n = A020750 n

theorem P7848472551504553593.correct : P7848472551504553593.Spec := by
  intro n
  simp only [A020750, Nat.add_sub_cancel, A020750.P7848472551504553593.a, A020750.P12478890006466846672.a, SequenceMachineLib.memo_apply]

end A020750

/-!
# A020751: Pisot sequence T(6,9), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A020751, the canonical program `A020751.P11420457804151927364` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020751 has offset 0).

The definition of A020751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020751.P11420457804151927364`, by `A020751.P11420457804151927364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020751.P11420457804151927364

`floor(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020751

/-- `floor(a(n-1)²/a(n-2))` -/
def P11420457804151927364.Spec : Prop :=
  ∀ n, P11420457804151927364.a n = A020751 n

theorem P11420457804151927364.correct : P11420457804151927364.Spec := by
  intro n
  simp only [A020751]

end A020751

/-! ## A020751.P16520855267040442377

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=6, a(1)=9`
-/

namespace A020751.P16520855267040442377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A020751.P16520855267040442377

namespace A020751

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P16520855267040442377.Spec : Prop :=
  ∀ n, P16520855267040442377.a n = A020751 n

theorem P16520855267040442377.correct : P16520855267040442377.Spec := by
  intro n
  simp only [A020751, Nat.add_sub_cancel, A020751.P16520855267040442377.a, A020751.P11420457804151927364.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020751

/-! ## A020751.P6673706258422806737

`A020747(n+1)`
-/

namespace A020751.P6673706258422806737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020747 (n + 1)

end

end A020751.P6673706258422806737

namespace A020751

/-- `A020747(n+1)` -/
def P6673706258422806737.Spec : Prop :=
  ∀ n, P6673706258422806737.a n = A020751 n

end A020751

/-! ## A020751.P2503244035818240375

`record[A020747(abs(1-n))]`
-/

namespace A020751.P2503244035818240375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020747 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020751.P2503244035818240375

namespace A020751

/-- `record[A020747(abs(1-n))]` -/
def P2503244035818240375.Spec : Prop :=
  ∀ n, P2503244035818240375.a n = A020751 n

end A020751

/-! ## A020751.P5799226127662442119

`A020747(n)-Δ[-A020747(n)]`
-/

namespace A020751.P5799226127662442119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A020747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020747 n - (f1 (n + 1) - f1 n)

end

end A020751.P5799226127662442119

namespace A020751

/-- `A020747(n)-Δ[-A020747(n)]` -/
def P5799226127662442119.Spec : Prop :=
  ∀ n, P5799226127662442119.a n = A020751 n

end A020751

/-!
# A020752: Pisot sequence T(7,10), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A020752, the canonical program `A020752.P1222112083137363267` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020752 has offset 0).

The definition of A020752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020752.P1222112083137363267`, by `A020752.P1222112083137363267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020752.P1222112083137363267

`floor(a(n-1)²/a(n-2))` with `a(0)=7, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020752

/-- `floor(a(n-1)²/a(n-2))` -/
def P1222112083137363267.Spec : Prop :=
  ∀ n, P1222112083137363267.a n = A020752 n

theorem P1222112083137363267.correct : P1222112083137363267.Spec := by
  intro n
  simp only [A020752]

end A020752

/-! ## A020752.P5089071557102931392

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=7, a(1)=10`
-/

namespace A020752.P5089071557102931392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A020752.P5089071557102931392

namespace A020752

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P5089071557102931392.Spec : Prop :=
  ∀ n, P5089071557102931392.a n = A020752 n

theorem P5089071557102931392.correct : P5089071557102931392.Spec := by
  intro n
  simp only [A020752, Nat.add_sub_cancel, A020752.P5089071557102931392.a, A020752.P1222112083137363267.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020752

/-! ## A020752.P10888747819511420486

`A167499(n)+A097285(A164168(n))`
-/

namespace A020752.P10888747819511420486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n + A097285 (A164168 n).toNat

end

end A020752.P10888747819511420486

namespace A020752

/-- `A167499(n)+A097285(A164168(n))` -/
def P10888747819511420486.Spec : Prop :=
  ∀ n, P10888747819511420486.a n = A020752 n

end A020752

/-! ## A020752.P43879368975499709

`n+5+A097285(A164168(n))+A000124(n)`
-/

namespace A020752.P43879368975499709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) + (A097285 (A164168 n).toNat + A000124 n)

end

end A020752.P43879368975499709

namespace A020752

/-- `n+5+A097285(A164168(n))+A000124(n)` -/
def P43879368975499709.Spec : Prop :=
  ∀ n, P43879368975499709.a n = A020752 n

end A020752

/-! ## A020752.P9185102532636823221

`A003059(A000491(n+2))`
-/

namespace A020752.P9185102532636823221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A000491 (n + 2)).toNat

end

end A020752.P9185102532636823221

namespace A020752

/-- `A003059(A000491(n+2))` -/
def P9185102532636823221.Spec : Prop :=
  ∀ n, P9185102532636823221.a n = A020752 n

end A020752

/-!
# A020754: Increasing gaps between squarefree numbers (lower end).

The programs for A020754, there is no canonical definition to state claims against.
-/

/-! ## A020754.P11005836391634241847

`A020755(n+1)-A020753(n+1)`
-/

namespace A020754.P11005836391634241847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020755 (n + 1) - A020753 (n + 1)

end

end A020754.P11005836391634241847

/-! ## A020754.P14248146843682360900

`A020755(n+1)-comp[A087555(n+2)]`
-/

namespace A020754.P14248146843682360900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087555 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020755 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A020754.P14248146843682360900

/-! ## A020754.P1102801433422319125

`A020755(n+1)-(A342851(n+1)+1)`
-/

namespace A020754.P1102801433422319125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020755 (n + 1) - (A342851 (n + 1) + 1)

end

end A020754.P1102801433422319125

/-! ## A020754.P5077571198284237368

`A020755(n+1)-A127287(A020731(n+1))`
-/

namespace A020754.P5077571198284237368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020755 (n + 1) - A127287 (A020731 (n + 1)).toNat

end

end A020754.P5077571198284237368

/-! ## A020754.P565141354004844476

`A020755(n+1)-A110654(A246414(n+1))`
-/

namespace A020754.P565141354004844476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020755 (n + 1) - A110654 (A246414 (n + 1)).toNat

end

end A020754.P565141354004844476

/-!
# A020755: Increasing gaps between squarefree numbers (upper end).

The programs for A020755, there is no canonical definition to state claims against.
-/

/-! ## A020755.P1916982130527171445

`A020754(n+1)+A020753(n+1)`
-/

namespace A020755.P1916982130527171445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020754 (n + 1) + A020753 (n + 1)

end

end A020755.P1916982130527171445

/-! ## A020755.P4840718636030649016

`A020754(n+1)+comp[A087555(n+2)]`
-/

namespace A020755.P4840718636030649016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087555 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020754 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A020755.P4840718636030649016

/-! ## A020755.P2225746520983141070

`A020754(n+1)+∑[A077565(A020742(n))]`
-/

namespace A020755.P2225746520983141070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020754 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020755.P2225746520983141070

/-! ## A020755.P6355634096091270091

`A020754(n+1)+∑[A349236(A329057(n))]`
-/

namespace A020755.P6355634096091270091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349236 (A329057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020754 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020755.P6355634096091270091

/-! ## A020755.P10944994272335628732

`A110654(A246414(n+1))+A020754(n+1)`
-/

namespace A020755.P10944994272335628732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A246414 (n + 1)).toNat + A020754 (n + 1)

end

end A020755.P10944994272335628732

/-!
# A020756: Numbers that are the sum of two triangular numbers.

The programs for A020756, the canonical program `A020756.P16947837090098696349` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020756 has offset 1).

The definition of A020756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020756.P11996354137972535219

`floor(A057653(n+1)/4)`
-/

namespace A020756.P11996354137972535219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057653 (n + 1) : ℚ) / 4⌋

end

end A020756.P11996354137972535219

namespace A020756

/-- `floor(A057653(n+1)/4)` -/
def P11996354137972535219.Spec : Prop :=
  ∀ n, P11996354137972535219.a n = A020756 (n + 1)

end A020756

/-! ## A020756.P16947837090098696349

`∪[A051533(n+1), ∑[n]]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A020756

/-- `∪[A051533(n+1), ∑[n]]` -/
def P16947837090098696349.Spec : Prop :=
  ∀ n, (P16947837090098696349.a n : ℤ) = A020756 (n + 1)

theorem P16947837090098696349.correct : P16947837090098696349.Spec := by
  intro n
  simp only [A020756, Nat.add_sub_cancel]

end A020756

/-! ## A020756.P2166902418313339442

`(A287960(n+1)-2)/3`
-/

namespace A020756.P2166902418313339442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287960 (n + 1) - 2 : ℚ) / 3

end

end A020756.P2166902418313339442

namespace A020756

/-- `(A287960(n+1)-2)/3` -/
def P2166902418313339442.Spec : Prop :=
  ∀ n, P2166902418313339442.a n = (A020756 (n + 1) : ℚ)

theorem P2166902418313339442.correct : P2166902418313339442.Spec := by
  intro n
  simp only [A020756, Nat.add_sub_cancel, A020756.P2166902418313339442.a, A020756.P16947837090098696349.f1, A020756.P16947837090098696349.f3, A020756.P16947837090098696349.f2, A020756.P16947837090098696349.a, A051533, A051533.P6966278410585714434.f1, A051533.P6966278410585714434.f2, A051533.P6966278410585714434.a, A287960, A287960.P10000643031088514054.a, A053603, A053603.P8228624408487937013.a, A008441, A008441.P257068461411472066.a, A046698, A046698.P7385547556069971027.a, A198954, A198954.P2690440958221023727.a, A002654, A002654.P11574922253888480122.a, A053187, A053187.P5980113714214141663.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A020756

/-! ## A020756.P9012839210716217541

`∪[A000217(n), A051533(n+1)]`
-/

namespace A020756.P9012839210716217541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020756.P9012839210716217541

namespace A020756

/-- `∪[A000217(n), A051533(n+1)]` -/
def P9012839210716217541.Spec : Prop :=
  ∀ n, (P9012839210716217541.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P10487224350369851567

`comp[A020757(n+1)]`
-/

namespace A020756.P10487224350369851567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020756.P10487224350369851567

namespace A020756

/-- `comp[A020757(n+1)]` -/
def P10487224350369851567.Spec : Prop :=
  ∀ n, (P10487224350369851567.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P5439716348003041100

`eq[1, A229062(2*n+1)]/2`
-/

namespace A020756.P5439716348003041100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A020756.P5439716348003041100

namespace A020756

/-- `eq[1, A229062(2*n+1)]/2` -/
def P5439716348003041100.Spec : Prop :=
  ∀ n, P5439716348003041100.a n = (A020756 (n + 1) : ℚ)

end A020756

/-! ## A020756.P8911216364319235818

`∪[A000217(n), A185978(n+1)]`
-/

namespace A020756.P8911216364319235818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020756.P8911216364319235818

namespace A020756

/-- `∪[A000217(n), A185978(n+1)]` -/
def P8911216364319235818.Spec : Prop :=
  ∀ n, (P8911216364319235818.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P8567196865496958586

`lt[0, A008441(n)]`
-/

namespace A020756.P8567196865496958586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020756.P8567196865496958586

namespace A020756

/-- `lt[0, A008441(n)]` -/
def P8567196865496958586.Spec : Prop :=
  ∀ n, (P8567196865496958586.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P5720629833370623413

`lt[0, A052343(n)]`
-/

namespace A020756.P5720629833370623413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020756.P5720629833370623413

namespace A020756

/-- `lt[0, A052343(n)]` -/
def P5720629833370623413.Spec : Prop :=
  ∀ n, (P5720629833370623413.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P3324230811455293145

`eq[3, A176873(n)]`
-/

namespace A020756.P3324230811455293145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020756.P3324230811455293145

namespace A020756

/-- `eq[3, A176873(n)]` -/
def P3324230811455293145.Spec : Prop :=
  ∀ n, (P3324230811455293145.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P13801386147571629092

`lt[A061336(n), 3]`
-/

namespace A020756.P13801386147571629092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A020756.P13801386147571629092

namespace A020756

/-- `lt[A061336(n), 3]` -/
def P13801386147571629092.Spec : Prop :=
  ∀ n, (P13801386147571629092.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P8327570555265669495

`lt[0, A000729(n)²]`
-/

namespace A020756.P8327570555265669495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020756.P8327570555265669495

namespace A020756

/-- `lt[0, A000729(n)²]` -/
def P8327570555265669495.Spec : Prop :=
  ∀ n, (P8327570555265669495.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P18204467423284929971

`lt[1, A138515(n)²+1]`
-/

namespace A020756.P18204467423284929971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138515 n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020756.P18204467423284929971

namespace A020756

/-- `lt[1, A138515(n)²+1]` -/
def P18204467423284929971.Spec : Prop :=
  ∀ n, (P18204467423284929971.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P1362230706862565585

`eq[2, A000122(A008441(n)²)]`
-/

namespace A020756.P1362230706862565585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A008441 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020756.P1362230706862565585

namespace A020756

/-- `eq[2, A000122(A008441(n)²)]` -/
def P1362230706862565585.Spec : Prop :=
  ∀ n, (P1362230706862565585.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P667228858735033455

`lt[0, A122190(n)]`
-/

namespace A020756.P667228858735033455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020756.P667228858735033455

namespace A020756

/-- `lt[0, A122190(n)]` -/
def P667228858735033455.Spec : Prop :=
  ∀ n, (P667228858735033455.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P16042776494849869123

`lt[0, A209941(n)²]`
-/

namespace A020756.P16042776494849869123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209941 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020756.P16042776494849869123

namespace A020756

/-- `lt[0, A209941(n)²]` -/
def P16042776494849869123.Spec : Prop :=
  ∀ n, (P16042776494849869123.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P2221543257435400181

`lt[0, A209942(n)²]`
-/

namespace A020756.P2221543257435400181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209942 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020756.P2221543257435400181

namespace A020756

/-- `lt[0, A209942(n)²]` -/
def P2221543257435400181.Spec : Prop :=
  ∀ n, (P2221543257435400181.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P14394912729542186252

`lt[1, abs(A134343(n))+1]`
-/

namespace A020756.P14394912729542186252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134343 n| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020756.P14394912729542186252

namespace A020756

/-- `lt[1, abs(A134343(n))+1]` -/
def P14394912729542186252.Spec : Prop :=
  ∀ n, (P14394912729542186252.a n : ℤ) = A020756 (n + 1)

end A020756

/-! ## A020756.P7304534380043885893

`A110962(A097269(n+1))`
-/

namespace A020756.P7304534380043885893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A097269 (n + 1)).toNat

end

end A020756.P7304534380043885893

namespace A020756

/-- `A110962(A097269(n+1))` -/
def P7304534380043885893.Spec : Prop :=
  ∀ n, P7304534380043885893.a n = A020756 (n + 1)

end A020756

/-! ## A020756.P7362675917590057683

`lt[1, A116604(2*n)+1]`
-/

namespace A020756.P7362675917590057683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020756.P7362675917590057683

namespace A020756

/-- `lt[1, A116604(2*n)+1]` -/
def P7362675917590057683.Spec : Prop :=
  ∀ n, (P7362675917590057683.a n : ℤ) = A020756 (n + 1)

end A020756

/-!
# A020757: Numbers that are not the sum of two triangular numbers.

The programs for A020757, the canonical program `A020757.P13878919061002843869` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020757 has offset 1).

The definition of A020757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020757.P13878919061002843869

`comp[A020756(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A020757

/-- `comp[A020756(n+1)]` -/
def P13878919061002843869.Spec : Prop :=
  ∀ n, (P13878919061002843869.a n : ℤ) = A020757 (n + 1)

theorem P13878919061002843869.correct : P13878919061002843869.Spec := by
  intro n
  simp only [A020757, Nat.add_sub_cancel]

end A020757

/-! ## A020757.P16813258143021930000

`filter[A051611(n+1), A123110(#)]`
-/

namespace A020757.P16813258143021930000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A020757.P16813258143021930000

namespace A020757

/-- `filter[A051611(n+1), A123110(#)]` -/
def P16813258143021930000.Spec : Prop :=
  ∀ n, P16813258143021930000.a n = A020757 (n + 1)

end A020757

/-! ## A020757.P13120477523417845169

`∩[A051611(n+1), A124934(n+1)]`
-/

namespace A020757.P13120477523417845169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020757.P13120477523417845169

namespace A020757

/-- `∩[A051611(n+1), A124934(n+1)]` -/
def P13120477523417845169.Spec : Prop :=
  ∀ n, (P13120477523417845169.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P16232154476476901385

`eq[1, A353809(2*n+1)]/2`
-/

namespace A020757.P16232154476476901385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353809 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A020757.P16232154476476901385

namespace A020757

/-- `eq[1, A353809(2*n+1)]/2` -/
def P16232154476476901385.Spec : Prop :=
  ∀ n, P16232154476476901385.a n = (A020757 (n + 1) : ℚ)

end A020757

/-! ## A020757.P2272900769989185535

`∩[A045751(n+1), A051611(n+1)]`
-/

namespace A020757.P2272900769989185535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020757.P2272900769989185535

namespace A020757

/-- `∩[A045751(n+1), A051611(n+1)]` -/
def P2272900769989185535.Spec : Prop :=
  ∀ n, (P2272900769989185535.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P15910775637279545389

`∩[A051611(n+1), A242401(n+1)]`
-/

namespace A020757.P15910775637279545389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020757.P15910775637279545389

namespace A020757

/-- `∩[A051611(n+1), A242401(n+1)]` -/
def P15910775637279545389.Spec : Prop :=
  ∀ n, (P15910775637279545389.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P9550187138365172802

`∩[A014132(n+1), A051611(n+1)]`
-/

namespace A020757.P9550187138365172802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020757.P9550187138365172802

namespace A020757

/-- `∩[A014132(n+1), A051611(n+1)]` -/
def P9550187138365172802.Spec : Prop :=
  ∀ n, (P9550187138365172802.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P670044069373782259

`eq[0, A000729(n)]`
-/

namespace A020757.P670044069373782259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P670044069373782259

namespace A020757

/-- `eq[0, A000729(n)]` -/
def P670044069373782259.Spec : Prop :=
  ∀ n, (P670044069373782259.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P13590114118004765691

`eq[0, A002171(n)]`
-/

namespace A020757.P13590114118004765691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P13590114118004765691

namespace A020757

/-- `eq[0, A002171(n)]` -/
def P13590114118004765691.Spec : Prop :=
  ∀ n, (P13590114118004765691.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P15357648729247317904

`eq[0, A004020(n)]`
-/

namespace A020757.P15357648729247317904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004020 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P15357648729247317904

namespace A020757

/-- `eq[0, A004020(n)]` -/
def P15357648729247317904.Spec : Prop :=
  ∀ n, (P15357648729247317904.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P1876998868132939960

`eq[0, A005883(n)]`
-/

namespace A020757.P1876998868132939960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P1876998868132939960

namespace A020757

/-- `eq[0, A005883(n)]` -/
def P1876998868132939960.Spec : Prop :=
  ∀ n, (P1876998868132939960.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P6159587768382755574

`eq[0, A008441(n)]`
-/

namespace A020757.P6159587768382755574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P6159587768382755574

namespace A020757

/-- `eq[0, A008441(n)]` -/
def P6159587768382755574.Spec : Prop :=
  ∀ n, (P6159587768382755574.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P2515664916745154554

`eq[0, A052343(n)]`
-/

namespace A020757.P2515664916745154554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P2515664916745154554

namespace A020757

/-- `eq[0, A052343(n)]` -/
def P2515664916745154554.Spec : Prop :=
  ∀ n, (P2515664916745154554.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P13902603224391198525

`eq[0, A122190(n)]`
-/

namespace A020757.P13902603224391198525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P13902603224391198525

namespace A020757

/-- `eq[0, A122190(n)]` -/
def P13902603224391198525.Spec : Prop :=
  ∀ n, (P13902603224391198525.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P5149850280605904717

`eq[0, A134343(n)]`
-/

namespace A020757.P5149850280605904717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P5149850280605904717

namespace A020757

/-- `eq[0, A134343(n)]` -/
def P5149850280605904717.Spec : Prop :=
  ∀ n, (P5149850280605904717.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P18387025152521264121

`eq[0, A138515(n)]`
-/

namespace A020757.P18387025152521264121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P18387025152521264121

namespace A020757

/-- `eq[0, A138515(n)]` -/
def P18387025152521264121.Spec : Prop :=
  ∀ n, (P18387025152521264121.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P2922783948582057927

`eq[0, A209941(n)]`
-/

namespace A020757.P2922783948582057927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209941 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P2922783948582057927

namespace A020757

/-- `eq[0, A209941(n)]` -/
def P2922783948582057927.Spec : Prop :=
  ∀ n, (P2922783948582057927.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P14483772975496784065

`eq[0, A209942(n)]`
-/

namespace A020757.P14483772975496784065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P14483772975496784065

namespace A020757

/-- `eq[0, A209942(n)]` -/
def P14483772975496784065.Spec : Prop :=
  ∀ n, (P14483772975496784065.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P12574760902345223561

`eq[0, A214316(n)]`
-/

namespace A020757.P12574760902345223561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P12574760902345223561

namespace A020757

/-- `eq[0, A214316(n)]` -/
def P12574760902345223561.Spec : Prop :=
  ∀ n, (P12574760902345223561.a n : ℤ) = A020757 (n + 1)

end A020757

/-! ## A020757.P2758407392660941290

`eq[0, A215472(n)]`
-/

namespace A020757.P2758407392660941290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020757.P2758407392660941290

namespace A020757

/-- `eq[0, A215472(n)]` -/
def P2758407392660941290.Spec : Prop :=
  ∀ n, (P2758407392660941290.a n : ℤ) = A020757 (n + 1)

end A020757

/-!
# A020758: Expansion of 1/((1-6x)(1-10x)(1-12x)).

The programs for A020758, the canonical program `A020758.P6609999227024381139` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020758 has offset 0).

The definition of A020758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020758.P6609999227024381139

`22*a(n-1)-120*a(n-2)+6^n` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020758

/-- `22*a(n-1)-120*a(n-2)+6^n` -/
def P6609999227024381139.Spec : Prop :=
  ∀ n, P6609999227024381139.a n = A020758 n

theorem P6609999227024381139.correct : P6609999227024381139.Spec := by
  intro n
  simp only [A020758]

end A020758

/-! ## A020758.P4617176763159732157

`(2*12^(n+2)-3*10^(n+2)+6^(n+2))/24`
-/

namespace A020758.P4617176763159732157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 12 ^ (n + 2) : ℤ) - (3 * 10 ^ (n + 2) : ℤ) + (6 ^ (n + 2) : ℤ) : ℚ) / 24

end

end A020758.P4617176763159732157

namespace A020758

/-- `(2*12^(n+2)-3*10^(n+2)+6^(n+2))/24` -/
def P4617176763159732157.Spec : Prop :=
  ∀ n, P4617176763159732157.a n = (A020758 n : ℚ)

theorem P4617176763159732157.correct : P4617176763159732157.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020758, Nat.add_sub_cancel, A020758.P4617176763159732157.a, A020758.P6609999227024381139.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020758, Nat.add_sub_cancel, A020758.P4617176763159732157.a, A020758.P6609999227024381139.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020758

/-! ## A020758.P14052637493874568881

`2^n*A017269(n)`
-/

namespace A020758.P14052637493874568881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A017269 n

end

end A020758.P14052637493874568881

namespace A020758

/-- `2^n*A017269(n)` -/
def P14052637493874568881.Spec : Prop :=
  ∀ n, P14052637493874568881.a n = A020758 n

end A020758

/-! ## A020758.P4312761485470208072

`2*A020594(n)-A020584(n)`
-/

namespace A020758.P4312761485470208072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020594 n - A020584 n

end

end A020758.P4312761485470208072

namespace A020758

/-- `2*A020594(n)-A020584(n)` -/
def P4312761485470208072.Spec : Prop :=
  ∀ n, P4312761485470208072.a n = A020758 n

end A020758

/-! ## A020758.P7269502196724818363

`abs(A017269(n)*A077966(2*n))`
-/

namespace A020758.P7269502196724818363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017269 n * A077966 (2 * n)|

end

end A020758.P7269502196724818363

namespace A020758

/-- `abs(A017269(n)*A077966(2*n))` -/
def P7269502196724818363.Spec : Prop :=
  ∀ n, P7269502196724818363.a n = A020758 n

end A020758

/-! ## A020758.P2717992292733203209

`A017269(n)*A059268(A000096(n))`
-/

namespace A020758.P2717992292733203209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017269 n * A059268 (A000096 n).toNat

end

end A020758.P2717992292733203209

namespace A020758

/-- `A017269(n)*A059268(A000096(n))` -/
def P2717992292733203209.Spec : Prop :=
  ∀ n, P2717992292733203209.a n = A020758 n

end A020758

/-! ## A020758.P12930173684803659989

`A017269(n)*A247936(A034856(n+1))`
-/

namespace A020758.P12930173684803659989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017269 n * A247936 (A034856 (n + 1)).toNat

end

end A020758.P12930173684803659989

namespace A020758

/-- `A017269(n)*A247936(A034856(n+1))` -/
def P12930173684803659989.Spec : Prop :=
  ∀ n, P12930173684803659989.a n = A020758 n

end A020758

/-! ## A020758.P13728352270666679937

`Δ[(A016267(n)-A016246(n))/6]`
-/

namespace A020758.P13728352270666679937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016267 n - A016246 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020758.P13728352270666679937

namespace A020758

/-- `Δ[(A016267(n)-A016246(n))/6]` -/
def P13728352270666679937.Spec : Prop :=
  ∀ n, P13728352270666679937.a n = (A020758 n : ℚ)

end A020758

/-!
# A020761: Decimal expansion of 1/2.

The programs for A020761, the canonical program `A020761.P16580574069512288400` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020761 has offset 0).

The definition of A020761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020761.P16580574069512288400

`5*floor(1/(n+1))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020761

/-- `5*floor(1/(n+1))` -/
def P16580574069512288400.Spec : Prop :=
  ∀ n, P16580574069512288400.a n = A020761 n

theorem P16580574069512288400.correct : P16580574069512288400.Spec := by
  intro n
  simp only [A020761]

end A020761

/-!
# A020765: Decimal expansion of 1/sqrt(8).

The programs for A020765, there is no canonical definition to state claims against.
-/

/-! ## A020765.P1694303530395227879

`A201488(A000038(n)+n)`
-/

namespace A020765.P1694303530395227879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201488 (A000038 n + (n : ℤ)).toNat

end

end A020765.P1694303530395227879

/-! ## A020765.P10104102041759828241

`A201488(or(n, A000038(n)))`
-/

namespace A020765.P10104102041759828241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201488 (Int.lor (n : ℤ) (A000038 n)).toNat

end

end A020765.P10104102041759828241

/-! ## A020765.P16951404844858423988

`A201488(xor(n, A000038(n)))`
-/

namespace A020765.P16951404844858423988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201488 (Int.xor (n : ℤ) (A000038 n)).toNat

end

end A020765.P16951404844858423988

/-! ## A020765.P17781826555466573182

`A201488(n)-C(A201488(n+1), A271508(n+1))`
-/

namespace A020765.P17781826555466573182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201488 n - (Nat.choose (A201488 (n + 1)).toNat (A271508 (n + 1)).toNat : ℤ)

end

end A020765.P17781826555466573182

/-! ## A020765.P7710864576065638451

`A201488(n)-C(5, A086377(3*n+1))`
-/

namespace A020765.P7710864576065638451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201488 n - (Nat.choose 5 (A086377 (3 * n + 1)).toNat : ℤ)

end

end A020765.P7710864576065638451

/-!
# A020766: Expansion of g.f. 1/((1-6*x)*(1-11*x)*(1-12*x)).

The programs for A020766, the canonical program `A020766.P4637189600475075368` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020766 has offset 0).

The definition of A020766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020766.P4637189600475075368

`23*a(n-1)-132*a(n-2)+6^n` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020766

/-- `23*a(n-1)-132*a(n-2)+6^n` -/
def P4637189600475075368.Spec : Prop :=
  ∀ n, P4637189600475075368.a n = A020766 n

theorem P4637189600475075368.correct : P4637189600475075368.Spec := by
  intro n
  simp only [A020766]

end A020766

/-! ## A020766.P2932161271867484797

`6*6^n/5-121*11^n/5+24*12^n`
-/

namespace A020766.P2932161271867484797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * 6 ^ n : ℚ) / 5 - (121 * 11 ^ n : ℚ) / 5 + (24 * 12 ^ n : ℚ)

end

end A020766.P2932161271867484797

namespace A020766

/-- `6*6^n/5-121*11^n/5+24*12^n` -/
def P2932161271867484797.Spec : Prop :=
  ∀ n, P2932161271867484797.a n = (A020766 n : ℚ)

theorem P2932161271867484797.correct : P2932161271867484797.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020766, Nat.add_sub_cancel, A020766.P2932161271867484797.a, A020766.P4637189600475075368.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020766, Nat.add_sub_cancel, A020766.P2932161271867484797.a, A020766.P4637189600475075368.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020766

/-! ## A020766.P8712846398799951413

`Δ[A016248(n)-A016247(n)]`
-/

namespace A020766.P8712846398799951413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016248 n - A016247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020766.P8712846398799951413

namespace A020766

/-- `Δ[A016248(n)-A016247(n)]` -/
def P8712846398799951413.Spec : Prop :=
  ∀ n, P8712846398799951413.a n = A020766 n

end A020766

/-! ## A020766.P15826283998778224997

`Δ[(A016268(n)-A016247(n))/6]`
-/

namespace A020766.P15826283998778224997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016268 n - A016247 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020766.P15826283998778224997

namespace A020766

/-- `Δ[(A016268(n)-A016247(n))/6]` -/
def P15826283998778224997.Spec : Prop :=
  ∀ n, P15826283998778224997.a n = (A020766 n : ℚ)

end A020766

/-!
# A020767: Product_{k=1..n} b(k), where b(k) = binary expansion of k (A007088) but read as if it were a decimal number.

The programs for A020767, there is no canonical definition to state claims against.
-/

/-! ## A020767.P11654667547628269317

`∏[A007088(floor(acot(n)+n))]`
-/

namespace A020767.P11654667547628269317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A020767.P11654667547628269317

/-! ## A020767.P2037851245019650884

`a(n-1)*A007088(n)` with `a(0)=1`
-/

namespace A020767.P2037851245019650884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007088 n

end

end A020767.P2037851245019650884

/-! ## A020767.P11072531301159215309

`sqrt(A063009(n))*a(n-1)` with `a(0)=1`
-/

namespace A020767.P11072531301159215309
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A063009 n : ℝ) * a (n - 1)

end

end A020767.P11072531301159215309

/-! ## A020767.P13189706670244573140

`a(n-1)*A185544(2*n)` with `a(0)=1`
-/

namespace A020767.P13189706670244573140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A185544 (2 * n)

end

end A020767.P13189706670244573140

/-! ## A020767.P2165879377063160551

`A204094(n)/7*a(n-1)` with `a(0)=1`
-/

namespace A020767.P2165879377063160551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A204094 n : ℚ) / 7 * a (n - 1)

end

end A020767.P2165879377063160551

/-!
# A020773: Decimal expansion of 1/4.

The programs for A020773, the canonical program `A020773.P8881837254021640327` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020773 has offset 0).

The definition of A020773 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A020773.anchor (n : ℕ) : A020773 n = ((10 ^ (n + 1) / 4 % 10 : ℕ) : ℤ)` in `Proof.A020.A020773`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020773.P8881837254021640327

`a(n-1)` with `a(0)=2, a(1)=5, a(2)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020773

/-- `a(n-1)` -/
def P8881837254021640327.Spec : Prop :=
  ∀ n, (P8881837254021640327.a n : ℤ) = A020773 n

theorem P8881837254021640327.correct : P8881837254021640327.Spec := by
  intro n
  simp only [A020773]

end A020773

/-!
# A020782: Expansion of g.f. 1/((1-7*x)*(1-8*x)*(1-9*x)).

The programs for A020782, the canonical program `A020782.P16579208368992855544` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020782 has offset 0).

The definition of A020782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020782.P16579208368992855544

`17*a(n-1)-72*a(n-2)+7^n` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020782

/-- `17*a(n-1)-72*a(n-2)+7^n` -/
def P16579208368992855544.Spec : Prop :=
  ∀ n, P16579208368992855544.a n = A020782 n

theorem P16579208368992855544.correct : P16579208368992855544.Spec := by
  intro n
  simp only [A020782]

end A020782

/-! ## A020782.P4822323942191423807

`7^(n+2)/2-8^(n+2)+9^(n+2)/2`
-/

namespace A020782.P4822323942191423807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 ^ (n + 2) : ℚ) / 2 - (8 ^ (n + 2) : ℚ) + (9 ^ (n + 2) : ℚ) / 2

end

end A020782.P4822323942191423807

namespace A020782

/-- `7^(n+2)/2-8^(n+2)+9^(n+2)/2` -/
def P4822323942191423807.Spec : Prop :=
  ∀ n, P4822323942191423807.a n = (A020782 n : ℚ)

theorem P4822323942191423807.correct : P4822323942191423807.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020782, Nat.add_sub_cancel, A020782.P4822323942191423807.a, A020782.P16579208368992855544.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020782, Nat.add_sub_cancel, A020782.P4822323942191423807.a, A020782.P16579208368992855544.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A020782

/-! ## A020782.P3721399752500845517

`Δ[A016250(n)-A016249(n)]`
-/

namespace A020782.P3721399752500845517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016250 n - A016249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020782.P3721399752500845517

namespace A020782

/-- `Δ[A016250(n)-A016249(n)]` -/
def P3721399752500845517.Spec : Prop :=
  ∀ n, P3721399752500845517.a n = A020782 n

end A020782

/-! ## A020782.P6421631818723248962

`Δ[A016256(n)-A016250(n)]`
-/

namespace A020782.P6421631818723248962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016256 n - A016250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020782.P6421631818723248962

namespace A020782

/-- `Δ[A016256(n)-A016250(n)]` -/
def P6421631818723248962.Spec : Prop :=
  ∀ n, P6421631818723248962.a n = A020782 n

end A020782

/-!
# A020789: Decimal expansion of 1/sqrt(32).

The programs for A020789, there is no canonical definition to state claims against.
-/

/-! ## A020789.P11687142175392879259

`ceil(A189959(n)-acot(n))`
-/

namespace A020789.P11687142175392879259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A189959 (n + 1) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A020789.P11687142175392879259

/-! ## A020789.P10073149509187170049

`A189959(C(n, A022167(C(a(n-1), n))))` with `a(0)=1`
-/

namespace A020789.P10073149509187170049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189959 (Nat.choose n (A022167 (Nat.choose (a (n - 1)).toNat n)).toNat + 1)

end

end A020789.P10073149509187170049

/-!
# A020793: Decimal expansion of 1/6.

The programs for A020793, the canonical program `A020793.P1289407373664449665` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020793 has offset 0).

The definition of A020793 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A020793.anchor (n : ℕ) : A020793 n = ((10 ^ (n + 1) / 6 % 10 : ℕ) : ℤ)` in `Proof.A020.A020793`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020793.P1289407373664449665

`a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020793

/-- `a(n-1)` -/
def P1289407373664449665.Spec : Prop :=
  ∀ n, (P1289407373664449665.a n : ℤ) = A020793 n

theorem P1289407373664449665.correct : P1289407373664449665.Spec := by
  intro n
  simp only [A020793]

end A020793

/-!
# A020797: Decimal expansion of 1/sqrt(40).

The programs for A020797, the canonical program `A020797.P16005906146471643519` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020797 has offset 0).

The definition of A020797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020797.P16005906146471643519

`floor(5*10^((2*n-1)/2))%10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020797

/-- `floor(5*10^((2*n-1)/2))%10` -/
def P16005906146471643519.Spec : Prop :=
  ∀ n, P16005906146471643519.a n = A020797 n

theorem P16005906146471643519.correct : P16005906146471643519.Spec := by
  intro n
  simp only [A020797]

end A020797

