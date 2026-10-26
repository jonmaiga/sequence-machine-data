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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A279100: a(n) = Sum_{k=0..n} ceiling(phi^k), where phi is the golden ratio (A001622).

The programs for A279100, the canonical program `A279100.P13661771045905931989` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279100 has offset 0).

The definition of A279100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279100.P13661771045905931989

`2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=11, a(4)=18`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279100

/-- `2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` -/
def P13661771045905931989.Spec : Prop :=
  ∀ n, P13661771045905931989.a n = A279100 n

theorem P13661771045905931989.correct : P13661771045905931989.Spec := by
  intro n
  simp only [A279100]

end A279100

/-! ## A279100.P13829803980323791284

`∑[∑[ogf((-2+3x^2)/(-1+2x^2+x^3))]]-1`
-/

namespace A279100.P13829803980323791284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -3] [1, 0, -2, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279100.P13829803980323791284

namespace A279100

/-- `∑[∑[ogf((-2+3x^2)/(-1+2x^2+x^3))]]-1` -/
def P13829803980323791284.Spec : Prop :=
  ∀ n, P13829803980323791284.a n = A279100 n

end A279100

/-! ## A279100.P15781092083167919691

`∑[ogf((1-x^2+x^3)/(1-x-2x^2+x^3+x^4))]+n`
-/

namespace A279100.P15781092083167919691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 1] [1, -1, -2, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A279100.P15781092083167919691

namespace A279100

/-- `∑[ogf((1-x^2+x^3)/(1-x-2x^2+x^3+x^4))]+n` -/
def P15781092083167919691.Spec : Prop :=
  ∀ n, P15781092083167919691.a n = A279100 n

end A279100

/-! ## A279100.P9227875670229139833

`∑[A169986(n)]`
-/

namespace A279100.P9227875670229139833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279100.P9227875670229139833

namespace A279100

/-- `∑[A169986(n)]` -/
def P9227875670229139833.Spec : Prop :=
  ∀ n, P9227875670229139833.a n = A279100 n

end A279100

/-! ## A279100.P6659224478954111114

`∑[A062724(n)]-1`
-/

namespace A279100.P6659224478954111114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279100.P6659224478954111114

namespace A279100

/-- `∑[A062724(n)]-1` -/
def P6659224478954111114.Spec : Prop :=
  ∀ n, P6659224478954111114.a n = A279100 n

end A279100

/-! ## A279100.P8399684588014465917

`∑[A014217(n)]+n`
-/

namespace A279100.P8399684588014465917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A279100.P8399684588014465917

namespace A279100

/-- `∑[A014217(n)]+n` -/
def P8399684588014465917.Spec : Prop :=
  ∀ n, P8399684588014465917.a n = A279100 n

end A279100

/-! ## A279100.P64807725139427751

`A020956(n+1)+n`
-/

namespace A279100.P64807725139427751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020956 (n + 1) + (n : ℤ)

end

end A279100.P64807725139427751

namespace A279100

/-- `A020956(n+1)+n` -/
def P64807725139427751.Spec : Prop :=
  ∀ n, P64807725139427751.a n = A279100 n

end A279100

/-! ## A279100.P8915542677428375466

`round(A014739(n)+n/2)`
-/

namespace A279100.P8915542677428375466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014739 n : ℚ) + (n : ℚ) / 2)

end

end A279100.P8915542677428375466

namespace A279100

/-- `round(A014739(n)+n/2)` -/
def P8915542677428375466.Spec : Prop :=
  ∀ n, P8915542677428375466.a n = A279100 n

end A279100

/-! ## A279100.P10046894989292867123

`∑[A192660(2*n)]+n`
-/

namespace A279100.P10046894989292867123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192660 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A279100.P10046894989292867123

namespace A279100

/-- `∑[A192660(2*n)]+n` -/
def P10046894989292867123.Spec : Prop :=
  ∀ n, P10046894989292867123.a n = A279100 n

end A279100

/-! ## A279100.P15460290547439607040

`∑[A000032(n)+n%2]-1`
-/

namespace A279100.P15460290547439607040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A279100.P15460290547439607040

namespace A279100

/-- `∑[A000032(n)+n%2]-1` -/
def P15460290547439607040.Spec : Prop :=
  ∀ n, P15460290547439607040.a n = A279100 n

end A279100

/-! ## A279100.P13229043665211342155

`A001610(n+1)+ceil(n/2)-1`
-/

namespace A279100.P13229043665211342155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1) + (⌈(n : ℚ) / 2⌉ - 1)

end

end A279100.P13229043665211342155

namespace A279100

/-- `A001610(n+1)+ceil(n/2)-1` -/
def P13229043665211342155.Spec : Prop :=
  ∀ n, P13229043665211342155.a n = A279100 n

end A279100

/-! ## A279100.P5726192625132021199

`floor(A000032(n+2)+(n-3)/2)`
-/

namespace A279100.P5726192625132021199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (n + 2) : ℚ) + ((n : ℤ) - 3 : ℚ) / 2⌋

end

end A279100.P5726192625132021199

namespace A279100

/-- `floor(A000032(n+2)+(n-3)/2)` -/
def P5726192625132021199.Spec : Prop :=
  ∀ n, P5726192625132021199.a n = A279100 n

end A279100

/-! ## A279100.P11768317024748259730

`A000032(n+1)+a(n-2)+1` with `a(0)=1, a(1)=3`
-/

namespace A279100.P11768317024748259730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000032 (n + 1) + (a (n - 2) + 1)

end

end A279100.P11768317024748259730

namespace A279100

/-- `A000032(n+1)+a(n-2)+1` -/
def P11768317024748259730.Spec : Prop :=
  ∀ n, P11768317024748259730.a n = A279100 n

end A279100

/-! ## A279100.P11330517508926589384

`∑[A000204(n+1)+1-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A279100.P11330517508926589384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000204 (n + 1) + 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279100.P11330517508926589384

namespace A279100

/-- `∑[A000204(n+1)+1-a(n-1)]` -/
def P11330517508926589384.Spec : Prop :=
  ∀ n, P11330517508926589384.a n = A279100 n

end A279100

/-! ## A279100.P13334644354845124230

`A110654(n)+A014739(n)`
-/

namespace A279100.P13334644354845124230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A014739 n

end

end A279100.P13334644354845124230

namespace A279100

/-- `A110654(n)+A014739(n)` -/
def P13334644354845124230.Spec : Prop :=
  ∀ n, P13334644354845124230.a n = A279100 n

end A279100

/-! ## A279100.P6272318170076833761

`A014739(n)+A004526(n+1)`
-/

namespace A279100.P6272318170076833761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n + A004526 (n + 1)

end

end A279100.P6272318170076833761

namespace A279100

/-- `A014739(n)+A004526(n+1)` -/
def P6272318170076833761.Spec : Prop :=
  ∀ n, P6272318170076833761.a n = A279100 n

end A279100

/-! ## A279100.P6600094589087719921

`A066982(n+1)+A007494(n)`
-/

namespace A279100.P6600094589087719921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 1) + A007494 n

end

end A279100.P6600094589087719921

namespace A279100

/-- `A066982(n+1)+A007494(n)` -/
def P6600094589087719921.Spec : Prop :=
  ∀ n, P6600094589087719921.a n = A279100 n

end A279100

/-! ## A279100.P15723938693777186385

`A074331(n)+A215004(n)+n`
-/

namespace A279100.P15723938693777186385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 n + (A215004 n + (n : ℤ))

end

end A279100.P15723938693777186385

namespace A279100

/-- `A074331(n)+A215004(n)+n` -/
def P15723938693777186385.Spec : Prop :=
  ∀ n, P15723938693777186385.a n = A279100 n

end A279100

/-! ## A279100.P12321830812456073385

`A154327(n)+A215006(n)+n`
-/

namespace A279100.P12321830812456073385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154327 n + (A215006 n + (n : ℤ))

end

end A279100.P12321830812456073385

namespace A279100

/-- `A154327(n)+A215006(n)+n` -/
def P12321830812456073385.Spec : Prop :=
  ∀ n, P12321830812456073385.a n = A279100 n

end A279100

/-! ## A279100.P10370804255964400324

`A288219(n)+n-A266977(n)`
-/

namespace A279100.P10370804255964400324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n + ((n : ℤ) - A266977 n)

end

end A279100.P10370804255964400324

namespace A279100

/-- `A288219(n)+n-A266977(n)` -/
def P10370804255964400324.Spec : Prop :=
  ∀ n, P10370804255964400324.a n = A279100 n

end A279100

/-!
# A279101: a(n) = Sum_{k=0..n} ceiling((1 + sqrt(2))^k).

The programs for A279101, the canonical program `A279101.P531551517772797750` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279101 has offset 0).

The definition of A279101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279101.P531551517772797750

`3*a(n-1)-4*a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=25, a(4)=59`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279101

/-- `3*a(n-1)-4*a(n-3)+a(n-4)+a(n-5)` -/
def P531551517772797750.Spec : Prop :=
  ∀ n, P531551517772797750.a n = A279101 n

theorem P531551517772797750.correct : P531551517772797750.Spec := by
  intro n
  simp only [A279101]

end A279101

/-! ## A279101.P10819304028369217729

`∑[ogf((1-x^2+2x^3)/(1-2x-2x^2+2x^3+x^4))]+n`
-/

namespace A279101.P10819304028369217729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2] [1, -2, -2, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A279101.P10819304028369217729

namespace A279101

/-- `∑[ogf((1-x^2+2x^3)/(1-2x-2x^2+2x^3+x^4))]+n` -/
def P10819304028369217729.Spec : Prop :=
  ∀ n, P10819304028369217729.a n = A279101 n

end A279101

/-! ## A279101.P7725733010516912055

`∑[a(n-2)+2*(a(n-1)+n%2)]+n` with `a(0)=1, a(1)=2`
-/

namespace A279101.P7725733010516912055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 2 * (f1 (n - 1) + n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A279101.P7725733010516912055

namespace A279101

/-- `∑[a(n-2)+2*(a(n-1)+n%2)]+n` -/
def P7725733010516912055.Spec : Prop :=
  ∀ n, (P7725733010516912055.a n : ℤ) = A279101 n

end A279101

/-! ## A279101.P17299904462503598612

`∑[A080039(n)]+n`
-/

namespace A279101.P17299904462503598612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A279101.P17299904462503598612

namespace A279101

/-- `∑[A080039(n)]+n` -/
def P17299904462503598612.Spec : Prop :=
  ∀ n, P17299904462503598612.a n = A279101 n

end A279101

/-! ## A279101.P16249368476662852733

`A020962(n+1)+n`
-/

namespace A279101.P16249368476662852733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020962 (n + 1) + (n : ℤ)

end

end A279101.P16249368476662852733

namespace A279101

/-- `A020962(n+1)+n` -/
def P16249368476662852733.Spec : Prop :=
  ∀ n, P16249368476662852733.a n = A279101 n

end A279101

/-! ## A279101.P2680395514657278743

`∑[A099425(n)+n%2]`
-/

namespace A279101.P2680395514657278743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279101.P2680395514657278743

namespace A279101

/-- `∑[A099425(n)+n%2]` -/
def P2680395514657278743.Spec : Prop :=
  ∀ n, P2680395514657278743.a n = A279101 n

end A279101

/-! ## A279101.P12642285740077864015

`A133654(n+1)+A110654(n)`
-/

namespace A279101.P12642285740077864015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (n + 1) + A110654 n

end

end A279101.P12642285740077864015

namespace A279101

/-- `A133654(n+1)+A110654(n)` -/
def P12642285740077864015.Spec : Prop :=
  ∀ n, P12642285740077864015.a n = A279101 n

end A279101

/-! ## A279101.P11688144750966019729

`∑[A002203(n)]+n-A008619(n)`
-/

namespace A279101.P11688144750966019729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A008619 n)

end

end A279101.P11688144750966019729

namespace A279101

/-- `∑[A002203(n)]+n-A008619(n)` -/
def P11688144750966019729.Spec : Prop :=
  ∀ n, P11688144750966019729.a n = A279101 n

end A279101

/-! ## A279101.P10304203800751404424

`∑[A002203(n)-A059841(n)]+n`
-/

namespace A279101.P10304203800751404424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A279101.P10304203800751404424

namespace A279101

/-- `∑[A002203(n)-A059841(n)]+n` -/
def P10304203800751404424.Spec : Prop :=
  ∀ n, P10304203800751404424.a n = A279101 n

end A279101

/-! ## A279101.P721974723713113786

`Δ[A078057(n)]+n-A008619(n)`
-/

namespace A279101.P721974723713113786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n : ℤ) - A008619 n)

end

end A279101.P721974723713113786

namespace A279101

/-- `Δ[A078057(n)]+n-A008619(n)` -/
def P721974723713113786.Spec : Prop :=
  ∀ n, P721974723713113786.a n = A279101 n

end A279101

/-! ## A279101.P14072067994925455550

`A133654(n+1)+A004526(n+1)`
-/

namespace A279101.P14072067994925455550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (n + 1) + A004526 (n + 1)

end

end A279101.P14072067994925455550

namespace A279101

/-- `A133654(n+1)+A004526(n+1)` -/
def P14072067994925455550.Spec : Prop :=
  ∀ n, P14072067994925455550.a n = A279101 n

end A279101

/-! ## A279101.P16421217362442776123

`A173009(n+1)+A156664(n)+n`
-/

namespace A279101.P16421217362442776123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173009 (n + 1) + (A156664 n + (n : ℤ))

end

end A279101.P16421217362442776123

namespace A279101

/-- `A173009(n+1)+A156664(n)+n` -/
def P16421217362442776123.Spec : Prop :=
  ∀ n, P16421217362442776123.a n = A279101 n

end A279101

/-! ## A279101.P708732492116134381

`A008619(n+1)+A052542(n+1)-2`
-/

namespace A279101.P708732492116134381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + (A052542 (n + 1) - 2)

end

end A279101.P708732492116134381

namespace A279101

/-- `A008619(n+1)+A052542(n+1)-2` -/
def P708732492116134381.Spec : Prop :=
  ∀ n, P708732492116134381.a n = A279101 n

end A279101

/-! ## A279101.P14794294038104394268

`A052542(n+1)-A110654(n+1)+n`
-/

namespace A279101.P14794294038104394268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) - A110654 (n + 1) + (n : ℤ)

end

end A279101.P14794294038104394268

namespace A279101

/-- `A052542(n+1)-A110654(n+1)+n` -/
def P14794294038104394268.Spec : Prop :=
  ∀ n, P14794294038104394268.a n = A279101 n

end A279101

/-! ## A279101.P5102633711909869676

`∑[A100828(n)]-(A006684(n)+A000045(n))`
-/

namespace A279101.P5102633711909869676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A006684 n + A000045 n)

end

end A279101.P5102633711909869676

namespace A279101

/-- `∑[A100828(n)]-(A006684(n)+A000045(n))` -/
def P5102633711909869676.Spec : Prop :=
  ∀ n, P5102633711909869676.a n = A279101 n

end A279101

/-! ## A279101.P4535704731786359060

`A001333(n+1)+A001333(n)-A008619(n)+n`
-/

namespace A279101.P4535704731786359060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A001333 n - A008619 n) + (n : ℤ)

end

end A279101.P4535704731786359060

namespace A279101

/-- `A001333(n+1)+A001333(n)-A008619(n)+n` -/
def P4535704731786359060.Spec : Prop :=
  ∀ n, P4535704731786359060.a n = A279101 n

end A279101

/-! ## A279101.P3755119968571824151

`∑[A162484(n+1)/2]-(A006684(n)+A000045(n))`
-/

namespace A279101.P3755119968571824151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162484 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A006684 n + A000045 n : ℚ)

end

end A279101.P3755119968571824151

namespace A279101

/-- `∑[A162484(n+1)/2]-(A006684(n)+A000045(n))` -/
def P3755119968571824151.Spec : Prop :=
  ∀ n, P3755119968571824151.a n = (A279101 n : ℚ)

end A279101

/-! ## A279101.P9815249428445834150

`A020963(n+1)-A133654(n+1)+n`
-/

namespace A279101.P9815249428445834150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020963 (n + 1) - A133654 (n + 1) + (n : ℤ)

end

end A279101.P9815249428445834150

namespace A279101

/-- `A020963(n+1)-A133654(n+1)+n` -/
def P9815249428445834150.Spec : Prop :=
  ∀ n, P9815249428445834150.a n = A279101 n

end A279101

/-! ## A279101.P16641346609514273273

`∑[ceil(sqrt(A124696(2*n)))]`
-/

namespace A279101.P16641346609514273273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A124696 (2 * n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279101.P16641346609514273273

namespace A279101

/-- `∑[ceil(sqrt(A124696(2*n)))]` -/
def P16641346609514273273.Spec : Prop :=
  ∀ n, P16641346609514273273.a n = A279101 n

end A279101

/-! ## A279101.P18318364633939583136

`∑[floor(sqrt(A003499(n)))]+n`
-/

namespace A279101.P18318364633939583136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A003499 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A279101.P18318364633939583136

namespace A279101

/-- `∑[floor(sqrt(A003499(n)))]+n` -/
def P18318364633939583136.Spec : Prop :=
  ∀ n, P18318364633939583136.a n = A279101 n

end A279101

/-!
# A279102: Numbers n having three parts in the symmetric representation of sigma(n).

The programs for A279102, there is no canonical definition to state claims against.
-/

/-! ## A279102.P13067321556630793004

`eq[3, A237271(n+1)]+1`
-/

namespace A279102.P13067321556630793004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279102.P13067321556630793004

/-! ## A279102.P12433347129863464242

`eq[8, A244971(n+1)]+1`
-/

namespace A279102.P12433347129863464242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279102.P12433347129863464242

/-! ## A279102.P11261791852474254803

`eq[3, A237271(A028310(n))]`
-/

namespace A279102.P11261791852474254803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279102.P11261791852474254803

/-! ## A279102.P1766401364262951329

`A020725(eq[3, A237271(n+1)])`
-/

namespace A279102.P1766401364262951329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279102.P1766401364262951329

/-! ## A279102.P13246447933659046191

`A065475(eq[3, A237271(n+1)])`
-/

namespace A279102.P13246447933659046191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279102.P13246447933659046191

/-! ## A279102.P4876350388200177847

`A153152(eq[3, A237271(n+1)])`
-/

namespace A279102.P4876350388200177847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279102.P4876350388200177847

/-! ## A279102.P8130808566071752831

`A181569(eq[3, A237271(n+1)])`
-/

namespace A279102.P8130808566071752831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279102.P8130808566071752831

/-! ## A279102.P12578383069348140393

`eq[3, A237271(A233583(n+1))]`
-/

namespace A279102.P12578383069348140393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279102.P12578383069348140393

/-! ## A279102.P8486972872488576654

`A026239(p?[(A237271(n+1)-2)*A026239(n+1)])`
-/

namespace A279102.P8486972872488576654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237271 (n + 1) - 2) * A026239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279102.P8486972872488576654

/-!
# A279103: Number of Goldbach partitions (p,q) of 2n such that there exists a prime r in p < r < q that does not appear as a part in any Goldbach partition of p+q = 2n.

The programs for A279103, there is no canonical definition to state claims against.
-/

/-! ## A279103.P10498424748048652363

`A002375(n+1)-A278700(n+1)`
-/

namespace A279103.P10498424748048652363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A278700 (n + 1)

end

end A279103.P10498424748048652363

/-! ## A279103.P15874145503277878201

`A240708(n+1)-A278700(n+1)`
-/

namespace A279103.P15874145503277878201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240708 (n + 1) - A278700 (n + 1)

end

end A279103.P15874145503277878201

/-! ## A279103.P3150305183199745111

`ceil(A002372(n+1)/2)-A278700(n+1)`
-/

namespace A279103.P3150305183199745111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002372 (n + 1) : ℚ) / 2⌉ - A278700 (n + 1)

end

end A279103.P3150305183199745111

/-! ## A279103.P7558261932048903313

`A002375(n+1)-floor(sqrt(A279315(n+1)))`
-/

namespace A279103.P7558261932048903313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - Int.sqrt (A279315 (n + 1))

end

end A279103.P7558261932048903313

/-! ## A279103.P17522538177661177205

`A190353(2*(n+1))-floor(sqrt(A279315(n+1)))`
-/

namespace A279103.P17522538177661177205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * (n + 1)) - Int.sqrt (A279315 (n + 1))

end

end A279103.P17522538177661177205

/-! ## A279103.P14168323857448405057

`(n+1)%A227065(n+1)-floor(sqrt(A279315(n+1)))`
-/

namespace A279103.P14168323857448405057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A227065 (n + 1)) - Int.sqrt (A279315 (n + 1))

end

end A279103.P14168323857448405057

/-! ## A279103.P3391147119379391091

`A002375(n+1)-A000194(A279315(n+1))`
-/

namespace A279103.P3391147119379391091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A000194 (A279315 (n + 1)).toNat

end

end A279103.P3391147119379391091

/-! ## A279103.P3836043910624605458

`A190353(2*(n+1))-A000194(A279315(n+1))`
-/

namespace A279103.P3836043910624605458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * (n + 1)) - A000194 (A279315 (n + 1)).toNat

end

end A279103.P3836043910624605458

/-! ## A279103.P10458014771433527611

`A045917(n+1)-A063524(n)-A000194(A279315(n+1))`
-/

namespace A279103.P10458014771433527611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - A063524 n - A000194 (A279315 (n + 1)).toNat

end

end A279103.P10458014771433527611

/-! ## A279103.P7203519923187815878

`A045917(n+1)*A157928(n)-A000194(A279315(n+1))`
-/

namespace A279103.P7203519923187815878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) * A157928 n - A000194 (A279315 (n + 1)).toNat

end

end A279103.P7203519923187815878

/-!
# A279105: a(n), n>1, is the smallest number k whose symmetric representation of sigma(k) has two parts and has a larger number of legs in its two parts than a(n-1); a(1)=3.

The programs for A279105, there is no canonical definition to state claims against.
-/

/-! ## A279105.P745990831458626803

`A174973(n+1)*A007918(2*A174973(n+1)+1)`
-/

namespace A279105.P745990831458626803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) * A007918 (2 * A174973 (n + 1) + 1).toNat

end

end A279105.P745990831458626803

/-! ## A279105.P15534315305284401059

`A013636(A047836(n+1))/2`
-/

namespace A279105.P15534315305284401059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013636 (A047836 (n + 1)).toNat : ℚ) / 2

end

end A279105.P15534315305284401059

/-! ## A279105.P5210991858845764801

`A060264(A174973(n+1))*A174973(n+1)`
-/

namespace A279105.P5210991858845764801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A174973 (n + 1)).toNat * A174973 (n + 1)

end

end A279105.P5210991858845764801

/-!
# A279106: a(n) = number of legs in each part of the symmetric representation of sigma(A279105(n)).

The programs for A279106, there is no canonical definition to state claims against.
-/

/-! ## A279106.P14394787295364755880

`record[A280851(n+1)]`
-/

namespace A279106.P14394787295364755880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279106.P14394787295364755880

/-! ## A279106.P7979001348816547043

`A047836(n+1)-1`
-/

namespace A279106.P7979001348816547043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047836 (n + 1) - 1

end

end A279106.P7979001348816547043

/-! ## A279106.P12509468391097245798

`2*A174973(n+1)-1`
-/

namespace A279106.P12509468391097245798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174973 (n + 1) - 1

end

end A279106.P12509468391097245798

/-! ## A279106.P16708458551307944974

`2*eq[1, A237271(n+1)]+1`
-/

namespace A279106.P16708458551307944974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279106.P16708458551307944974

/-! ## A279106.P2250730154397335886

`2*eq[1, A244971(n+1)]+1`
-/

namespace A279106.P2250730154397335886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279106.P2250730154397335886

/-! ## A279106.P1525097614369478492

`record[or(n+1, -A047988(n+2))]`
-/

namespace A279106.P1525097614369478492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-A047988 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279106.P1525097614369478492

/-! ## A279106.P868768427033738544

`A014681(A047836(n+1))`
-/

namespace A279106.P868768427033738544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A047836 (n + 1)).toNat

end

end A279106.P868768427033738544

/-! ## A279106.P16622866919660203483

`A004273(A174973(n+1))`
-/

namespace A279106.P16622866919660203483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A174973 (n + 1)).toNat

end

end A279106.P16622866919660203483

/-!
# A279107: Denominators of coefficients in expansion of 1/(1 - sin x).

The programs for A279107, there is no canonical definition to state claims against.
-/

/-! ## A279107.P5474863034117629741

`n!/gcd(A000111(n+1), A000142(n))`
-/

namespace A279107.P5474863034117629741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (A000111 (n + 1)) (A000142 n) : ℚ)

end

end A279107.P5474863034117629741

/-! ## A279107.P16245534968158127475

`A099617(n+1)/(n+1)`
-/

namespace A279107.P16245534968158127475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099617 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A279107.P16245534968158127475

/-! ## A279107.P17409353209351919922

`gcd(n!, A099617(A187829(n+1)))`
-/

namespace A279107.P17409353209351919922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A099617 (A187829 (n + 1)).toNat)

end

end A279107.P17409353209351919922

/-! ## A279107.P9869043655182890592

`gcd(A000142(n), A099617(A085908(n+1)))`
-/

namespace A279107.P9869043655182890592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A099617 (A085908 (n + 1)).toNat)

end

end A279107.P9869043655182890592

/-!
# A279109: Denominators of coefficients in expansion of 1/(1 + cos(sqrt(x))).

The programs for A279109, there is no canonical definition to state claims against.
-/

/-! ## A279109.P2536582381427422417

`2*A279110(n)`
-/

namespace A279109.P2536582381427422417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A279110 n

end

end A279109.P2536582381427422417

/-! ## A279109.P1011200861163188583

`lcm(A000165(n+1), A279110(n))`
-/

namespace A279109.P1011200861163188583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000165 (n + 1)) (A279110 n)

end

end A279109.P1011200861163188583

/-! ## A279109.P17249391181687584625

`A279110(A064429(A064429(n)))+A279110(n)`
-/

namespace A279109.P17249391181687584625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279110 (A064429 (A064429 n).toNat).toNat + A279110 n

end

end A279109.P17249391181687584625

/-! ## A279109.P17629032513419157230

`A276593(n+1)/(8*n+4)`
-/

namespace A279109.P17629032513419157230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276593 (n + 1) : ℚ) / (8 * n + 4 : ℚ)

end

end A279109.P17629032513419157230

/-! ## A279109.P11478981986526390390

`A050971(2*(n+1))/Δ[n²]`
-/

namespace A279109.P11478981986526390390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050971 (2 * (n + 1)) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A279109.P11478981986526390390

/-!
# A279110: Denominators of coefficients in expansion of 2/(1 + cos(sqrt(x))).

The programs for A279110, there is no canonical definition to state claims against.
-/

/-! ## A279110.P15944791224397604637

`A279109(n)/2`
-/

namespace A279110.P15944791224397604637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279109 n : ℚ) / 2

end

end A279110.P15944791224397604637

/-! ## A279110.P6948654467364925645

`A276593(n+1)/A008574(A016825(n))`
-/

namespace A279110.P6948654467364925645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276593 (n + 1) : ℚ) / (A008574 (A016825 n).toNat : ℚ)

end

end A279110.P6948654467364925645

/-! ## A279110.P8128616324980032657

`A050971(2*(n+1))/(4*n+2)`
-/

namespace A279110.P8128616324980032657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050971 (2 * (n + 1)) : ℚ) / (4 * n + 2 : ℚ)

end

end A279110.P8128616324980032657

/-! ## A279110.P16480474287046393129

`A000165(2*n)/gcd(A000111(2*n+1), A000165(2*n))`
-/

namespace A279110.P16480474287046393129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 (2 * n) : ℚ) / (Int.gcd (A000111 (2 * n + 1)) (A000165 (2 * n)) : ℚ)

end

end A279110.P16480474287046393129

/-! ## A279110.P6855692565329622869

`A050970(2*(n+1))/A000111(2*n+1)*A000165(2*n)`
-/

namespace A279110.P6855692565329622869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050970 (2 * (n + 1)) : ℚ) / (A000111 (2 * n + 1) : ℚ) * (A000165 (2 * n) : ℚ)

end

end A279110.P6855692565329622869

/-!
# A279111: Number of non-equivalent ways to place 2 non-attacking kings on an n X n board.

The programs for A279111, the canonical program `A279111.P7103479420215322072` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279111 has offset 1).

The definition of A279111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279111.P7103479420215322072

`A232567(n+1)-∑[∑[and(1, n)]]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A279111

/-- `A232567(n+1)-∑[∑[and(1, n)]]` -/
def P7103479420215322072.Spec : Prop :=
  ∀ n, P7103479420215322072.a n = A279111 (n + 1)

theorem P7103479420215322072.correct : P7103479420215322072.Spec := by
  intro n
  simp only [A279111, Nat.add_sub_cancel]

end A279111

/-! ## A279111.P17377674917667404166

`A030179(n)+∑[3*A002620(n)]`
-/

namespace A279111.P17377674917667404166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279111.P17377674917667404166

namespace A279111

/-- `A030179(n)+∑[3*A002620(n)]` -/
def P17377674917667404166.Spec : Prop :=
  ∀ n, P17377674917667404166.a n = A279111 (n + 1)

end A279111

/-! ## A279111.P14479302541805895313

`A232567(n+1)+∑[A004526(n)-n]`
-/

namespace A279111.P14479302541805895313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232567 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279111.P14479302541805895313

namespace A279111

/-- `A232567(n+1)+∑[A004526(n)-n]` -/
def P14479302541805895313.Spec : Prop :=
  ∀ n, P14479302541805895313.a n = A279111 (n + 1)

end A279111

/-! ## A279111.P11753766675804223577

`A002620(n)+A045947(n)+A002620(n)²`
-/

namespace A279111.P11753766675804223577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (A045947 n + A002620 n ^ 2)

end

end A279111.P11753766675804223577

namespace A279111

/-- `A002620(n)+A045947(n)+A002620(n)²` -/
def P11753766675804223577.Spec : Prop :=
  ∀ n, P11753766675804223577.a n = A279111 (n + 1)

end A279111

/-! ## A279111.P10438671069325850032

`A033638(n)²+A045947(n)-A033638(n)`
-/

namespace A279111.P10438671069325850032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n ^ 2 + (A045947 n - A033638 n)

end

end A279111.P10438671069325850032

namespace A279111

/-- `A033638(n)²+A045947(n)-A033638(n)` -/
def P10438671069325850032.Spec : Prop :=
  ∀ n, P10438671069325850032.a n = A279111 (n + 1)

end A279111

/-! ## A279111.P9302214928144298778

`A014409(n+1)-A007590(n+1)`
-/

namespace A279111.P9302214928144298778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014409 (n + 1) - A007590 (n + 1)

end

end A279111.P9302214928144298778

namespace A279111

/-- `A014409(n+1)-A007590(n+1)` -/
def P9302214928144298778.Spec : Prop :=
  ∀ n, P9302214928144298778.a n = A279111 (n + 1)

end A279111

/-! ## A279111.P12166638289454643961

`A014409(n+1)-∑[2*A004526(n+1)]`
-/

namespace A279111.P12166638289454643961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014409 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279111.P12166638289454643961

namespace A279111

/-- `A014409(n+1)-∑[2*A004526(n+1)]` -/
def P12166638289454643961.Spec : Prop :=
  ∀ n, P12166638289454643961.a n = A279111 (n + 1)

end A279111

/-! ## A279111.P17852902875382988506

`A045947(n)+2*A000217(A002620(n))`
-/

namespace A279111.P17852902875382988506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 n + 2 * A000217 (A002620 n).toNat

end

end A279111.P17852902875382988506

namespace A279111

/-- `A045947(n)+2*A000217(A002620(n))` -/
def P17852902875382988506.Spec : Prop :=
  ∀ n, P17852902875382988506.a n = A279111 (n + 1)

end A279111

/-!
# A279112: Number of non-equivalent ways to place 3 non-attacking kings on an n X n board.

The programs for A279112, there is no canonical definition to state claims against.
-/

/-! ## A279112.P5661454778262228927

`A137971(n)-A004128(A006125(n))`
-/

namespace A279112.P5661454778262228927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137971 n - A004128 (A006125 n).toNat

end

end A279112.P5661454778262228927

/-! ## A279112.P7400892152316815405

`A299204(A331492(n+1)+A296992(n+2))`
-/

namespace A279112.P7400892152316815405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299204 (A331492 (n + 1) + A296992 (n + 2)).toNat

end

end A279112.P7400892152316815405

/-!
# A279113: Number of non-equivalent ways to place 4 non-attacking kings on an n X n board.

The programs for A279113, there is no canonical definition to state claims against.
-/

/-! ## A279113.P13343745134434609071

`A109812(A002110(n))-A088975(n)`
-/

namespace A279113.P13343745134434609071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (A002110 n).toNat - A088975 n

end

end A279113.P13343745134434609071

/-!
# A279115: Number of non-equivalent ways to place 6 non-attacking kings on an n X n board.

The programs for A279115, there is no canonical definition to state claims against.
-/

/-! ## A279115.P8781734909433426333

`A254646(n+1)%A250001(n)`
-/

namespace A279115.P8781734909433426333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254646 (n + 1)) (A250001 n)

end

end A279115.P8781734909433426333

/-! ## A279115.P11971637129887174976

`A102605(A000792(n)*A203017(n))`
-/

namespace A279115.P11971637129887174976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102605 (A000792 n * A203017 n).toNat

end

end A279115.P11971637129887174976

/-!
# A279116: Number of non-equivalent ways to place 7 non-attacking kings on an n X n board.

The programs for A279116, there is no canonical definition to state claims against.
-/

/-! ## A279116.P12064523894849842999

`A047299(A026721(n)^A360251(n))`
-/

namespace A279116.P12064523894849842999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (SequenceMachineLib.roundAway ((A026721 n : ℚ) ^ (A360251 n : ℤ))).toNat

end

end A279116.P12064523894849842999

/-! ## A279116.P12027881184226575032

`A047299(A026721(n)^A065680(n+1))`
-/

namespace A279116.P12027881184226575032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (SequenceMachineLib.roundAway ((A026721 n : ℚ) ^ (A065680 (n + 1) : ℤ))).toNat

end

end A279116.P12027881184226575032

/-!
# A279117: Number of non-equivalent ways to place n non-attacking kings on an n X n board.

The programs for A279117, there is no canonical definition to state claims against.
-/

/-! ## A279117.P4481626729796605966

`A361909(a(n-1))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A279117.P4481626729796605966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A361909 (a (n - 1)).toNat

end

end A279117.P4481626729796605966

/-!
# A279118: Binary representation of the x-axis, from the left edge to the origin, (and also from the origin to the right edge) of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 209", based on the 5-celled von Neumann neighborhood.

The programs for A279118, the canonical program `A279118.P12316344610487920648` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279118 has offset 0).

The definition of A279118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279118.P2457078594716036226

`log2(gcd(2, n))*∑[10^n]`
-/

namespace A279118.P2457078594716036226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A279118.P2457078594716036226

namespace A279118

/-- `log2(gcd(2, n))*∑[10^n]` -/
def P2457078594716036226.Spec : Prop :=
  ∀ n, P2457078594716036226.a n = (A279118 n : ℝ)

end A279118

/-! ## A279118.P13930222420523187224

`∑[10^n]*char[2*n]`
-/

namespace A279118.P13930222420523187224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f2 j = n then 1 else 0)

end

end A279118.P13930222420523187224

namespace A279118

/-- `∑[10^n]*char[2*n]` -/
def P13930222420523187224.Spec : Prop :=
  ∀ n, (P13930222420523187224.a n : ℤ) = A279118 n

end A279118

/-! ## A279118.P12316344610487920648

`lcm((n+1)%2, ∑[10^n])`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279118

/-- `lcm((n+1)%2, ∑[10^n])` -/
def P12316344610487920648.Spec : Prop :=
  ∀ n, (P12316344610487920648.a n : ℤ) = A279118 n

theorem P12316344610487920648.correct : P12316344610487920648.Spec := by
  intro n
  simp only [A279118]

end A279118

/-! ## A279118.P13691564408059124091

`101*a(n-2)-100*a(n-4)` with `a(0)=1, a(1)=0, a(2)=111, a(3)=0`
-/

namespace A279118.P13691564408059124091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 111, 0] fun n a =>
  101 * a (n - 2) - 100 * a (n - 4)

end

end A279118.P13691564408059124091

namespace A279118

/-- `101*a(n-2)-100*a(n-4)` -/
def P13691564408059124091.Spec : Prop :=
  ∀ n, P13691564408059124091.a n = A279118 n

end A279118

/-! ## A279118.P4529510531421989377

`A282411(n)-char[1]`
-/

namespace A279118.P4529510531421989377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282411 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279118.P4529510531421989377

namespace A279118

/-- `A282411(n)-char[1]` -/
def P4529510531421989377.Spec : Prop :=
  ∀ n, P4529510531421989377.a n = A279118 n

end A279118

/-! ## A279118.P15116329960130347743

`A287468(comp[or(2, n)])`
-/

namespace A279118.P15116329960130347743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A279118.P15116329960130347743

namespace A279118

/-- `A287468(comp[or(2, n)])` -/
def P15116329960130347743.Spec : Prop :=
  ∀ n, P15116329960130347743.a n = A279118 n

end A279118

/-! ## A279118.P9490582495356063337

`A287468(n*gcd(2, n))`
-/

namespace A279118.P9490582495356063337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (n * Nat.gcd 2 n)

end

end A279118.P9490582495356063337

namespace A279118

/-- `A287468(n*gcd(2, n))` -/
def P9490582495356063337.Spec : Prop :=
  ∀ n, P9490582495356063337.a n = A279118 n

end A279118

/-! ## A279118.P17728138939866629594

`A287468(record[xor(2, n)-2])`
-/

namespace A279118.P17728138939866629594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279118.P17728138939866629594

namespace A279118

/-- `A287468(record[xor(2, n)-2])` -/
def P17728138939866629594.Spec : Prop :=
  ∀ n, P17728138939866629594.a n = A279118 n

end A279118

/-! ## A279118.P3976948960479439316

`lcm(∑[10^n], A056594(n))`
-/

namespace A279118.P3976948960479439316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A056594 n)

end

end A279118.P3976948960479439316

namespace A279118

/-- `lcm(∑[10^n], A056594(n))` -/
def P3976948960479439316.Spec : Prop :=
  ∀ n, (P3976948960479439316.a n : ℤ) = A279118 n

end A279118

/-! ## A279118.P9661997193571095580

`A283351(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A279118.P9661997193571095580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A283351 (n + 1) - a (n - 1)

end

end A279118.P9661997193571095580

namespace A279118

/-- `A283351(n+1)-a(n-1)` -/
def P9661997193571095580.Spec : Prop :=
  ∀ n, P9661997193571095580.a n = A279118 n

end A279118

/-! ## A279118.P327251659044962770

`A290191(n)-10*a(n-1)` with `a(0)=1`
-/

namespace A279118.P327251659044962770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290191 n - 10 * a (n - 1)

end

end A279118.P327251659044962770

namespace A279118

/-- `A290191(n)-10*a(n-1)` -/
def P327251659044962770.Spec : Prop :=
  ∀ n, P327251659044962770.a n = A279118 n

end A279118

/-! ## A279118.P11394170008724225960

`floor(A000042(n+1)^(-1)^n)`
-/

namespace A279118.P11394170008724225960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000042 (n + 1) : ℚ) ^ ((-1) ^ n : ℤ)⌋

end

end A279118.P11394170008724225960

namespace A279118

/-- `floor(A000042(n+1)^(-1)^n)` -/
def P11394170008724225960.Spec : Prop :=
  ∀ n, P11394170008724225960.a n = A279118 n

end A279118

/-! ## A279118.P17781178851458201717

`and(char[2*n+1]-1, A286827(n))`
-/

namespace A279118.P17781178851458201717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1) (A286827 n)

end

end A279118.P17781178851458201717

namespace A279118

/-- `and(char[2*n+1]-1, A286827(n))` -/
def P17781178851458201717.Spec : Prop :=
  ∀ n, P17781178851458201717.a n = A279118 n

end A279118

/-! ## A279118.P8590898684053769392

`A287468(A014601(n))`
-/

namespace A279118.P8590898684053769392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A014601 n).toNat

end

end A279118.P8590898684053769392

namespace A279118

/-- `A287468(A014601(n))` -/
def P8590898684053769392.Spec : Prop :=
  ∀ n, P8590898684053769392.a n = A279118 n

end A279118

/-! ## A279118.P12277625465817186043

`A287468(A022998(n))`
-/

namespace A279118.P12277625465817186043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A022998 n).toNat

end

end A279118.P12277625465817186043

namespace A279118

/-- `A287468(A022998(n))` -/
def P12277625465817186043.Spec : Prop :=
  ∀ n, P12277625465817186043.a n = A279118 n

end A279118

/-! ## A279118.P15240847248867086648

`A287468(A042948(n))`
-/

namespace A279118.P15240847248867086648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A042948 n).toNat

end

end A279118.P15240847248867086648

namespace A279118

/-- `A287468(A042948(n))` -/
def P15240847248867086648.Spec : Prop :=
  ∀ n, P15240847248867086648.a n = A279118 n

end A279118

/-! ## A279118.P6490140743443541820

`A287468(A265723(n))`
-/

namespace A279118.P6490140743443541820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A265723 n).toNat

end

end A279118.P6490140743443541820

namespace A279118

/-- `A287468(A265723(n))` -/
def P6490140743443541820.Spec : Prop :=
  ∀ n, P6490140743443541820.a n = A279118 n

end A279118

/-! ## A279118.P4430633843722584146

`A287468(A047538(n+1))`
-/

namespace A279118.P4430633843722584146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A047538 (n + 1)).toNat

end

end A279118.P4430633843722584146

namespace A279118

/-- `A287468(A047538(n+1))` -/
def P4430633843722584146.Spec : Prop :=
  ∀ n, P4430633843722584146.a n = A279118 n

end A279118

/-! ## A279118.P10944482162127153922

`A287468(A047599(n+1))`
-/

namespace A279118.P10944482162127153922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A047599 (n + 1)).toNat

end

end A279118.P10944482162127153922

namespace A279118

/-- `A287468(A047599(n+1))` -/
def P10944482162127153922.Spec : Prop :=
  ∀ n, P10944482162127153922.a n = A279118 n

end A279118

/-! ## A279118.P5333470910452967939

`A287468(A265722(n+1))`
-/

namespace A279118.P5333470910452967939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A265722 (n + 1)).toNat

end

end A279118.P5333470910452967939

namespace A279118

/-- `A287468(A265722(n+1))` -/
def P5333470910452967939.Spec : Prop :=
  ∀ n, P5333470910452967939.a n = A279118 n

end A279118

/-!
# A279119: Lexicographically earliest sequence such that, for any distinct i and j, a(i)=a(j) implies gcd(i, j)=1.

The programs for A279119, there is no canonical definition to state claims against.
-/

/-! ## A279119.P8749607751340370569

`A370822(n+1)-1`
-/

namespace A279119.P8749607751340370569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370822 (n + 1) - 1

end

end A279119.P8749607751340370569

/-! ## A279119.P9132471566251495848

`A083800(n+1)%A370822(n+1)`
-/

namespace A279119.P9132471566251495848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A370822 (n + 1))

end

end A279119.P9132471566251495848

/-! ## A279119.P11715763839293776509

`A070198(n)%A370822(n+1)`
-/

namespace A279119.P11715763839293776509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A370822 (n + 1))

end

end A279119.P11715763839293776509

/-! ## A279119.P13552210346401951880

`A079782(n+1)%A370822(n+1)`
-/

namespace A279119.P13552210346401951880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A370822 (n + 1))

end

end A279119.P13552210346401951880

/-! ## A279119.P14477646263056323925

`A083685(n+1)%A370822(n+1)`
-/

namespace A279119.P14477646263056323925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A370822 (n + 1))

end

end A279119.P14477646263056323925

/-! ## A279119.P14966484656992733972

`A121934(n+1)%A370822(n+1)`
-/

namespace A279119.P14966484656992733972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A370822 (n + 1))

end

end A279119.P14966484656992733972

/-! ## A279119.P15342692278354709693

`A030494(n+1)%A370822(n+1)`
-/

namespace A279119.P15342692278354709693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A370822 (n + 1))

end

end A279119.P15342692278354709693

/-! ## A279119.P17163848102233127433

`A072828(n+1)%A370822(n+1)`
-/

namespace A279119.P17163848102233127433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A370822 (n + 1))

end

end A279119.P17163848102233127433

/-!
# A279120: Numerators of coefficients in expansion of 1/(1 + 2 cos(sqrt(x))).

The programs for A279120, there is no canonical definition to state claims against.
-/

/-! ## A279120.P8261163339618315228

`gcd(A002111(A028310(n)), A279181(n))`
-/

namespace A279120.P8261163339618315228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002111 (A028310 n).toNat) (A279181 n)

end

end A279120.P8261163339618315228

/-! ## A279120.P5388537307477804343

`A047788(n)/A347964(A219503(n))`
-/

namespace A279120.P5388537307477804343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047788 n : ℚ) / (A347964 (A219503 n).toNat : ℚ)

end

end A279120.P5388537307477804343

/-!
# A279121: Denominators of coefficients in expansion of 1/(1 + 2 cos(sqrt(x))).

The programs for A279121, there is no canonical definition to state claims against.
-/

/-! ## A279121.P13600977605773809318

`3*A279122(n)`
-/

namespace A279121.P13600977605773809318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A279122 n

end

end A279121.P13600977605773809318

/-! ## A279121.P3932148903504247397

`∏{e}[A005029(n), A279122(#)]`
-/

namespace A279121.P3932148903504247397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A279122 (Nat.factorization (f1 n).natAbs p)

end

end A279121.P3932148903504247397

/-!
# A279122: Denominators of coefficients in expansion of 3/(1 + 2 cos(sqrt(x))).

The programs for A279122, there is no canonical definition to state claims against.
-/

/-! ## A279122.P3615069436193363520

`A279121(n)/3`
-/

namespace A279122.P3615069436193363520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279121 n : ℚ) / 3

end

end A279122.P3615069436193363520

/-! ## A279122.P14165119172496868214

`gcd(A005408(n)!, A279121(n))`
-/

namespace A279122.P14165119172496868214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A005408 n).toNat : ℤ) (A279121 n)

end

end A279122.P14165119172496868214

/-! ## A279122.P2151806456130872772

`gcd(A001710(2*n+1), A279121(A028310(n)))`
-/

namespace A279122.P2151806456130872772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001710 (2 * n + 1)) (A279121 (A028310 n).toNat)

end

end A279122.P2151806456130872772

/-!
# A279123: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 219", based on the 5-celled von Neumann neighborhood.

The programs for A279123, there is no canonical definition to state claims against.
-/

/-! ## A279123.P5955521698589369624

`A007088(A279958(n))`
-/

namespace A279123.P5955521698589369624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279958 n).toNat

end

end A279123.P5955521698589369624

/-! ## A279123.P7622453225336387389

`A185544(2*A279958(n))`
-/

namespace A279123.P7622453225336387389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279958 n).toNat

end

end A279123.P7622453225336387389

/-! ## A279123.P12786485989482088196

`A279251(A171717(n))`
-/

namespace A279123.P12786485989482088196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279251 (A171717 n).toNat

end

end A279123.P12786485989482088196

/-! ## A279123.P10790693752620455945

`A279251(A004881(n+1))`
-/

namespace A279123.P10790693752620455945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279251 (A004881 (n + 1)).toNat

end

end A279123.P10790693752620455945

/-! ## A279123.P13712526417100329561

`A279251(A004892(n+1))`
-/

namespace A279123.P13712526417100329561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279251 (A004892 (n + 1)).toNat

end

end A279123.P13712526417100329561

/-!
# A279125: Lexicographically earliest sequence such that, for any distinct i and j, a(i)=a(j) implies (i AND j)=0 (where AND stands for the bitwise AND operator).

The programs for A279125, there is no canonical definition to state claims against.
-/

/-! ## A279125.P11679508250226885846

`A375776(n+1)-1`
-/

namespace A279125.P11679508250226885846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375776 (n + 1) - 1

end

end A279125.P11679508250226885846

/-! ## A279125.P10074752467791602280

`A279119(2*A375776(n+1))`
-/

namespace A279125.P10074752467791602280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A375776 (n + 1)).toNat

end

end A279125.P10074752467791602280

/-! ## A279125.P13551958887403392570

`A279119(A375776(n+1)+A375776(n+1))`
-/

namespace A279125.P13551958887403392570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A375776 (n + 1) + A375776 (n + 1)).toNat

end

end A279125.P13551958887403392570

/-! ## A279125.P8393419124011506641

`A083800(n+1)%A375776(n+1)`
-/

namespace A279125.P8393419124011506641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A375776 (n + 1))

end

end A279125.P8393419124011506641

/-! ## A279125.P14711518216731108813

`A070198(n)%A375776(n+1)`
-/

namespace A279125.P14711518216731108813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A375776 (n + 1))

end

end A279125.P14711518216731108813

/-! ## A279125.P12802645434759789528

`A079782(n+1)%A375776(n+1)`
-/

namespace A279125.P12802645434759789528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A375776 (n + 1))

end

end A279125.P12802645434759789528

/-! ## A279125.P1663946936945169849

`A083685(n+1)%A375776(n+1)`
-/

namespace A279125.P1663946936945169849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A375776 (n + 1))

end

end A279125.P1663946936945169849

/-! ## A279125.P7346654713052572986

`A121934(n+1)%A375776(n+1)`
-/

namespace A279125.P7346654713052572986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A375776 (n + 1))

end

end A279125.P7346654713052572986

/-! ## A279125.P3596340781118122924

`A072828(n+1)%A375776(n+1)`
-/

namespace A279125.P3596340781118122924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A375776 (n + 1))

end

end A279125.P3596340781118122924

/-!
# A279127: a(n) = Sum_{0<=m

The programs for A279127, there is no canonical definition to state claims against.
-/

/-! ## A279127.P3540983990428857850

`lcm(n, A003470(A004273(n)))`
-/

namespace A279127.P3540983990428857850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A003470 (A004273 n).toNat)

end

end A279127.P3540983990428857850

/-! ## A279127.P7811348550061615322

`record[A000035(n)*A003470(n)]`
-/

namespace A279127.P7811348550061615322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A003470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279127.P7811348550061615322

/-! ## A279127.P18056282598524151565

`record[Δ[A004526(n)]*A003470(n)]`
-/

namespace A279127.P18056282598524151565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A003470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279127.P18056282598524151565

/-! ## A279127.P11308857053253403263

`record[char[A008288(n)]*A003470(n)]`
-/

namespace A279127.P11308857053253403263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A003470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279127.P11308857053253403263

/-! ## A279127.P3091569956148256082

`record[char[A093178(n)]*A003470(n)]`
-/

namespace A279127.P3091569956148256082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A003470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279127.P3091569956148256082

/-!
# A279128: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279128, there is no canonical definition to state claims against.
-/

/-! ## A279128.P6396271228520895864

`floor(A280554(∑[n+1]+2)+acot(n))`
-/

namespace A279128.P6396271228520895864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280554 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A279128.P6396271228520895864

/-! ## A279128.P10301017086408852048

`A280554(∑[n+1]+2)+A000007(n)`
-/

namespace A279128.P10301017086408852048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A000007 n

end

end A279128.P10301017086408852048

/-! ## A279128.P8377671000292227457

`A280554(∑[n+1]+2)+A151933(n)`
-/

namespace A279128.P8377671000292227457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A151933 n

end

end A279128.P8377671000292227457

/-! ## A279128.P7177258556182910872

`A280554(∑[n+1]+2)^A011602(n²)`
-/

namespace A279128.P7177258556182910872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280554 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) ^ (A011602 (n ^ 2) : ℤ)

end

end A279128.P7177258556182910872

/-!
# A279129: Number of nX3 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279129, there is no canonical definition to state claims against.
-/

/-! ## A279129.P8796203385504553393

`A279134(∑[n+2]+4)`
-/

namespace A279129.P8796203385504553393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279129.P8796203385504553393

/-! ## A279129.P5448808900828869064

`A279134(A167614(n+1))+char[18]`
-/

namespace A279129.P5448808900828869064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279129.P5448808900828869064

/-! ## A279129.P473343025057250167

`A279134(A133263(n+2)+1)+char[19]`
-/

namespace A279129.P473343025057250167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A133263 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279129.P473343025057250167

/-! ## A279129.P7440850505393815895

`lcm(A011602(n), A279134(A167614(n+1)))`
-/

namespace A279129.P7440850505393815895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011602 n) (A279134 (A167614 (n + 1)).toNat)

end

end A279129.P7440850505393815895

/-! ## A279129.P17605540634961428432

`A279134(A167614(n+1))%A207062(n+1)`
-/

namespace A279129.P17605540634961428432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279134 (A167614 (n + 1)).toNat) (A207062 (n + 1))

end

end A279129.P17605540634961428432

/-!
# A279130: Number of nX4 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279130, there is no canonical definition to state claims against.
-/

/-! ## A279130.P17179169902723244592

`A279134(∑[n+3]+7)`
-/

namespace A279130.P17179169902723244592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A279130.P17179169902723244592

/-! ## A279130.P8990790130707411578

`A279134(A055999(n)+10)+char[17]`
-/

namespace A279130.P8990790130707411578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279130.P8990790130707411578

/-! ## A279130.P13759013047771818422

`A279134(A055999(n)+10)%A000108(n+8)`
-/

namespace A279130.P13759013047771818422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279134 (A055999 n + 10).toNat) (A000108 (n + 8))

end

end A279130.P13759013047771818422

/-! ## A279130.P3925521160149330384

`A014963(12*(n+1))*A279134(A055999(n)+10)`
-/

namespace A279130.P3925521160149330384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A279134 (A055999 n + 10).toNat

end

end A279130.P3925521160149330384

/-! ## A279130.P3255942319135071030

`A000041(C(n, n²)!)*A279134(A055999(n)+10)`
-/

namespace A279130.P3255942319135071030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.factorial (Nat.choose n (n ^ 2))) * A279134 (A055999 n + 10).toNat

end

end A279130.P3255942319135071030

/-!
# A279131: Number of nX5 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279131, there is no canonical definition to state claims against.
-/

/-! ## A279131.P2331100784319393548

`A279134(∑[n+4]+11)`
-/

namespace A279131.P2331100784319393548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A279131.P2331100784319393548

/-! ## A279131.P4770996040807801915

`A279134(A052905(n+1)+10)+char[15]`
-/

namespace A279131.P4770996040807801915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A052905 (n + 1) + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279131.P4770996040807801915

/-! ## A279131.P15132451175721206858

`A007318(C(3, n))*A279134(A052905(n+1)+10)`
-/

namespace A279131.P15132451175721206858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A279134 (A052905 (n + 1) + 10).toNat

end

end A279131.P15132451175721206858

/-! ## A279131.P4149806057356963398

`A007318(∑{e}[n, #])*A279134(A052905(n+1)+10)`
-/

namespace A279131.P4149806057356963398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A279134 (A052905 (n + 1) + 10).toNat

end

end A279131.P4149806057356963398

/-! ## A279131.P3999834460351451610

`lcm(A001221(n+1)!, A279134(A052905(n+1)+10))`
-/

namespace A279131.P3999834460351451610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A001221 (n + 1)).toNat : ℤ) (A279134 (A052905 (n + 1) + 10).toNat)

end

end A279131.P3999834460351451610

/-!
# A279132: Number of nX6 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279132, there is no canonical definition to state claims against.
-/

/-! ## A279132.P7591203378185536569

`A279134(A374007(n+1))`
-/

namespace A279132.P7591203378185536569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A374007 (n + 1)).toNat

end

end A279132.P7591203378185536569

/-! ## A279132.P16301435877472886431

`A279134(A056115(n)+21)`
-/

namespace A279132.P16301435877472886431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A056115 n + 21).toNat

end

end A279132.P16301435877472886431

/-! ## A279132.P11194821489514183789

`A279134(A167499(n+4)+1)`
-/

namespace A279132.P11194821489514183789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A167499 (n + 4) + 1).toNat

end

end A279132.P11194821489514183789

/-! ## A279132.P9036379451179006808

`A279134(A167614(n+4)+3)`
-/

namespace A279132.P9036379451179006808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A167614 (n + 4) + 3).toNat

end

end A279132.P9036379451179006808

/-! ## A279132.P5808815032688272993

`A279134(A133263(n+5)+4)`
-/

namespace A279132.P5808815032688272993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A133263 (n + 5) + 4).toNat

end

end A279132.P5808815032688272993

/-!
# A279133: Number of nX7 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279133, there is no canonical definition to state claims against.
-/

/-! ## A279133.P13499733089857401725

`A279134(A374008(n+1))`
-/

namespace A279133.P13499733089857401725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A374008 (n + 1)).toNat

end

end A279133.P13499733089857401725

/-! ## A279133.P9284364727727984333

`A279134(A167487(n+5))`
-/

namespace A279133.P9284364727727984333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A167487 (n + 5)).toNat

end

end A279133.P9284364727727984333

/-! ## A279133.P17121454647528231886

`A279134(A056119(n)+28)`
-/

namespace A279133.P17121454647528231886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A056119 n + 28).toNat

end

end A279133.P17121454647528231886

/-! ## A279133.P3334899040940970422

`A279134(eq[11, A066657(n)])`
-/

namespace A279133.P3334899040940970422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279133.P3334899040940970422

/-! ## A279133.P11901727207784013207

`A279134(A167499(n+5)+2)`
-/

namespace A279133.P11901727207784013207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279134 (A167499 (n + 5) + 2).toNat

end

end A279133.P11901727207784013207

/-!
# A279135: Coefficients of the '5th-order' mock theta function Phi(q) with a(0)=1.

The programs for A279135, there is no canonical definition to state claims against.
-/

/-! ## A279135.P10858707715411849152

`A053266(abs(1-n)+1)`
-/

namespace A279135.P10858707715411849152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 (|1 - (n : ℤ)| + 1).toNat

end

end A279135.P10858707715411849152

/-! ## A279135.P17445402106626383343

`A053266(n)+A000007(n)`
-/

namespace A279135.P17445402106626383343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 n + A000007 n

end

end A279135.P17445402106626383343

/-! ## A279135.P10068709627010896316

`gcd(A045534(n), A053266(n))`
-/

namespace A279135.P10068709627010896316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045534 n) (A053266 n)

end

end A279135.P10068709627010896316

/-! ## A279135.P12333421499149561947

`A063524(n+1)+A053266(n)`
-/

namespace A279135.P12333421499149561947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A053266 n

end

end A279135.P12333421499149561947

/-! ## A279135.P4290451226681770737

`a(log2(A006928(n)))*A053266(n)` with `a(0)=1`
-/

namespace A279135.P4290451226681770737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A006928 n : ℝ))).toNat * A053266 n

end

end A279135.P4290451226681770737

/-! ## A279135.P3734733326467328903

`a(2-A049710(n))*A053266(n)` with `a(0)=1`
-/

namespace A279135.P3734733326467328903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (2 - A049710 n).toNat * A053266 n

end

end A279135.P3734733326467328903

/-! ## A279135.P6300814303562724978

`A053266(n)+char[A243649(2*(n+2))]`
-/

namespace A279135.P6300814303562724978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243649 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A279135.P6300814303562724978

/-! ## A279135.P8152444438228229994

`A053266(n)+A010873(A008574(n))`
-/

namespace A279135.P8152444438228229994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 n + A010873 (A008574 n).toNat

end

end A279135.P8152444438228229994

/-! ## A279135.P14953684758194086162

`or(A053266(n), A151933(A000120(n)))`
-/

namespace A279135.P14953684758194086162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053266 n) (A151933 (A000120 n).toNat)

end

end A279135.P14953684758194086162

/-! ## A279135.P15277713720959224854

`A053266(n)+A007814(A000040(n+1))`
-/

namespace A279135.P15277713720959224854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 n + A007814 (A000040 (n + 1)).toNat

end

end A279135.P15277713720959224854

/-! ## A279135.P10936966921044690460

`A053266(n)+A014933(A071044(n)+1)`
-/

namespace A279135.P10936966921044690460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 n + A014933 (A071044 n + 1).toNat

end

end A279135.P10936966921044690460

/-! ## A279135.P5917898159791304182

`a(A001222(A001222(n+1)))*A053266(n)` with `a(0)=1`
-/

namespace A279135.P5917898159791304182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A001222 (A001222 (n + 1)).toNat).toNat * A053266 n

end

end A279135.P5917898159791304182

/-!
# A279136: a(n) = n*Sum_{i=0..n-1} binomial(n,i)*binomial(i-1,n-i-1)/(n-i).

The programs for A279136, the canonical program `A279136.P12562316986369065531` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279136 has offset 0).

The definition of A279136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279136.P12562316986369065531

`A000035(n)+3*A097861(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A279136

/-- `A000035(n)+3*A097861(n)` -/
def P12562316986369065531.Spec : Prop :=
  ∀ n, P12562316986369065531.a n = A279136 n

theorem P12562316986369065531.correct : P12562316986369065531.Spec := by
  intro n
  simp only [A279136]

end A279136

/-! ## A279136.P15798020070802513719

`log2(A000034(n))+3*A097861(n)`
-/

namespace A279136.P15798020070802513719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000034 n : ℝ) + (3 * A097861 n : ℝ)

end

end A279136.P15798020070802513719

namespace A279136

/-- `log2(A000034(n))+3*A097861(n)` -/
def P15798020070802513719.Spec : Prop :=
  ∀ n, P15798020070802513719.a n = (A279136 n : ℝ)

end A279136

/-! ## A279136.P845770001263798198

`Δ[A004526(n)]+3*A097861(n)`
-/

namespace A279136.P845770001263798198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3 * A097861 n

end

end A279136.P845770001263798198

namespace A279136

/-- `Δ[A004526(n)]+3*A097861(n)` -/
def P845770001263798198.Spec : Prop :=
  ∀ n, P845770001263798198.a n = A279136 n

end A279136

/-! ## A279136.P2855406696435644357

`Δ[A008619(n)]+3*A097861(n)`
-/

namespace A279136.P2855406696435644357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3 * A097861 n

end

end A279136.P2855406696435644357

namespace A279136

/-- `Δ[A008619(n)]+3*A097861(n)` -/
def P2855406696435644357.Spec : Prop :=
  ∀ n, P2855406696435644357.a n = A279136 n

end A279136

/-! ## A279136.P6502551944430271216

`char[A005408(n)]+3*A097861(n)`
-/

namespace A279136.P6502551944430271216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 3 * A097861 n

end

end A279136.P6502551944430271216

namespace A279136

/-- `char[A005408(n)]+3*A097861(n)` -/
def P6502551944430271216.Spec : Prop :=
  ∀ n, P6502551944430271216.a n = A279136 n

end A279136

/-!
# A279137: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A279137, there is no canonical definition to state claims against.
-/

/-! ## A279137.P5010616693098112456

`A007088(A279139(n))`
-/

namespace A279137.P5010616693098112456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279139 n).toNat

end

end A279137.P5010616693098112456

/-! ## A279137.P5258708372482592442

`A185544(2*A279139(n))`
-/

namespace A279137.P5258708372482592442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279139 n).toNat

end

end A279137.P5258708372482592442

/-! ## A279137.P15069126861074410793

`A279752(A004892(n+1))`
-/

namespace A279137.P15069126861074410793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279752 (A004892 (n + 1)).toNat

end

end A279137.P15069126861074410793

/-! ## A279137.P8750296089373118282

`A279752(A004914(n+1))`
-/

namespace A279137.P8750296089373118282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279752 (A004914 (n + 1)).toNat

end

end A279137.P8750296089373118282

/-! ## A279137.P1150572416632912

`A279752(A029965(n+1))`
-/

namespace A279137.P1150572416632912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279752 (A029965 (n + 1)).toNat

end

end A279137.P1150572416632912

/-!
# A279138: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A279138, there is no canonical definition to state claims against.
-/

/-! ## A279138.P17413101954711559416

`A007088(A279140(n))`
-/

namespace A279138.P17413101954711559416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279140 n).toNat

end

end A279138.P17413101954711559416

/-! ## A279138.P17524568418753652276

`A185544(2*A279140(n))`
-/

namespace A279138.P17524568418753652276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279140 n).toNat

end

end A279138.P17524568418753652276

/-! ## A279138.P8930444022012515299

`A279753(A004892(n+1))`
-/

namespace A279138.P8930444022012515299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279753 (A004892 (n + 1)).toNat

end

end A279138.P8930444022012515299

/-! ## A279138.P14263123248793245884

`A279753(A004914(n+1))`
-/

namespace A279138.P14263123248793245884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279753 (A004914 (n + 1)).toNat

end

end A279138.P14263123248793245884

/-! ## A279138.P1757636943265020829

`A279753(n*A287377(n))`
-/

namespace A279138.P1757636943265020829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279753 ((n : ℤ) * A287377 n).toNat

end

end A279138.P1757636943265020829

/-!
# A279139: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A279139, there is no canonical definition to state claims against.
-/

/-! ## A279139.P13259395733591557566

`∏{e}[7^n, A279754(#)]`
-/

namespace A279139.P13259395733591557566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A279754 (Nat.factorization (f1 n) p)

end

end A279139.P13259395733591557566

/-! ## A279139.P7363332087383685284

`A279754(A004891(n+1))`
-/

namespace A279139.P7363332087383685284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279754 (A004891 (n + 1)).toNat

end

end A279139.P7363332087383685284

/-! ## A279139.P6512387530701407656

`A279754(A004902(n+1))`
-/

namespace A279139.P6512387530701407656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279754 (A004902 (n + 1)).toNat

end

end A279139.P6512387530701407656

/-! ## A279139.P4050715258919977911

`A279754(A004913(n+1))`
-/

namespace A279139.P4050715258919977911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279754 (A004913 (n + 1)).toNat

end

end A279139.P4050715258919977911

/-!
# A279140: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 133", based on the 5-celled von Neumann neighborhood.

The programs for A279140, there is no canonical definition to state claims against.
-/

/-! ## A279140.P9330347933546024895

`A279755(n)-A025443(A324240(n+1))`
-/

namespace A279140.P9330347933546024895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279755 n - A025443 (A324240 (n + 1)).toNat

end

end A279140.P9330347933546024895

/-! ## A279140.P2344728782991008665

`∏{e}[7^n, A279755(#)]`
-/

namespace A279140.P2344728782991008665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A279755 (Nat.factorization (f1 n) p)

end

end A279140.P2344728782991008665

/-! ## A279140.P2079883176748366148

`A279755(n^gcd((n+1)/and(n+1, -(n+1)), ∑{p}[n+1, (n+1)/#]))`
-/

namespace A279140.P2079883176748366148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279755 (n ^ Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A279140.P2079883176748366148

/-! ## A279140.P13738469118881968551

`A279755(A004891(n+1))`
-/

namespace A279140.P13738469118881968551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279755 (A004891 (n + 1)).toNat

end

end A279140.P13738469118881968551

/-!
# A279141: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 137", based on the 5-celled von Neumann neighborhood.

The programs for A279141, there is no canonical definition to state claims against.
-/

/-! ## A279141.P1985926707774737693

`A007088(A279143(n))`
-/

namespace A279141.P1985926707774737693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279143 n).toNat

end

end A279141.P1985926707774737693

/-! ## A279141.P12833397377400644687

`A185544(2*A279143(n))`
-/

namespace A279141.P12833397377400644687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279143 n).toNat

end

end A279141.P12833397377400644687

/-! ## A279141.P4700838726279370826

`A279028(A324680(n)+n)`
-/

namespace A279141.P4700838726279370826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 (A324680 n + (n : ℤ)).toNat

end

end A279141.P4700838726279370826

/-!
# A279142: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 137", based on the 5-celled von Neumann neighborhood.

The programs for A279142, there is no canonical definition to state claims against.
-/

/-! ## A279142.P11027814865266028023

`A007088(A279144(n))`
-/

namespace A279142.P11027814865266028023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279144 n).toNat

end

end A279142.P11027814865266028023

/-! ## A279142.P13558817296818959960

`A185544(2*A279144(n))`
-/

namespace A279142.P13558817296818959960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279144 n).toNat

end

end A279142.P13558817296818959960

/-! ## A279142.P1449520165471135945

`A316524(A135212(n+1))+A283010(n)`
-/

namespace A279142.P1449520165471135945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A135212 (n + 1)).toNat + A283010 n

end

end A279142.P1449520165471135945

/-!
# A279143: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 137", based on the 5-celled von Neumann neighborhood.

The programs for A279143, there is no canonical definition to state claims against.
-/

/-! ## A279143.P8453027720578370330

`A030101(A279144(n)^2^val(n+1, 2))`
-/

namespace A279143.P8453027720578370330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A279144 n ^ 2 ^ SequenceMachineLib.valuation (n + 1) 2).toNat

end

end A279143.P8453027720578370330

/-! ## A279143.P14694681270700527934

`A030101(A279144(n)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A279143.P14694681270700527934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A279144 n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)).toNat

end

end A279143.P14694681270700527934

/-! ## A279143.P3607861781605228608

`A030101(A279144(n)^A072345(n))`
-/

namespace A279143.P3607861781605228608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A279144 n : ℚ) ^ (A072345 n : ℤ))).toNat

end

end A279143.P3607861781605228608

/-! ## A279143.P3977598438350953694

`A030101(C(A279144(n), A072345(n)))`
-/

namespace A279143.P3977598438350953694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Nat.choose (A279144 n).toNat (A072345 n).toNat)

end

end A279143.P3977598438350953694

/-! ## A279143.P11576600357599187870

`or(A186746(A098575(n)), A279030(n))`
-/

namespace A279143.P11576600357599187870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186746 (A098575 n).toNat) (A279030 n)

end

end A279143.P11576600357599187870

/-!
# A279144: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 137", based on the 5-celled von Neumann neighborhood.

The programs for A279144, there is no canonical definition to state claims against.
-/

/-! ## A279144.P1309495526368790412

`A030101(A279143(n)^A072345(n))`
-/

namespace A279144.P1309495526368790412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A279143 n : ℚ) ^ (A072345 n : ℤ))).toNat

end

end A279144.P1309495526368790412

/-! ## A279144.P3129567735409879274

`or(A000035(A259778(n)), A283012(n))`
-/

namespace A279144.P3129567735409879274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A259778 n).toNat) (A283012 n)

end

end A279144.P3129567735409879274

/-! ## A279144.P14624109320037394556

`or(A283012(n), A284948(A102841(n)))`
-/

namespace A279144.P14624109320037394556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283012 n) (A284948 (A102841 n).toNat)

end

end A279144.P14624109320037394556

/-! ## A279144.P11347387966446824131

`A030101(A072345(n²)*A279143(n))`
-/

namespace A279144.P11347387966446824131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A072345 (n ^ 2) * A279143 n).toNat

end

end A279144.P11347387966446824131

/-! ## A279144.P3131181605135292140

`and(A279500(n), A284140(A032555(n+1)))`
-/

namespace A279144.P3131181605135292140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279500 n) (A284140 (A032555 (n + 1)).toNat)

end

end A279144.P3131181605135292140

/-!
# A279145: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A279145, there is no canonical definition to state claims against.
-/

/-! ## A279145.P1857876926310648638

`A007088(A279147(n))`
-/

namespace A279145.P1857876926310648638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279147 n).toNat

end

end A279145.P1857876926310648638

/-! ## A279145.P14323107772400878306

`A185544(2*A279147(n))`
-/

namespace A279145.P14323107772400878306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279147 n).toNat

end

end A279145.P14323107772400878306

/-! ## A279145.P5409630492998317675

`A279822(A004892(n+1))`
-/

namespace A279145.P5409630492998317675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279822 (A004892 (n + 1)).toNat

end

end A279145.P5409630492998317675

/-! ## A279145.P8163848313047887315

`A279822(A004903(n+1))`
-/

namespace A279145.P8163848313047887315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279822 (A004903 (n + 1)).toNat

end

end A279145.P8163848313047887315

/-! ## A279145.P14752663120256862997

`A279822(A004914(n+1))`
-/

namespace A279145.P14752663120256862997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279822 (A004914 (n + 1)).toNat

end

end A279145.P14752663120256862997

/-!
# A279146: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A279146, there is no canonical definition to state claims against.
-/

/-! ## A279146.P9948590326038320361

`A007088(A279148(n))`
-/

namespace A279146.P9948590326038320361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279148 n).toNat

end

end A279146.P9948590326038320361

/-! ## A279146.P18023260031732483604

`A185544(2*A279148(n))`
-/

namespace A279146.P18023260031732483604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279148 n).toNat

end

end A279146.P18023260031732483604

/-! ## A279146.P726473242543996949

`A279823(A004892(n+1))`
-/

namespace A279146.P726473242543996949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279823 (A004892 (n + 1)).toNat

end

end A279146.P726473242543996949

/-! ## A279146.P12379189699519565724

`A279823(A004903(n+1))`
-/

namespace A279146.P12379189699519565724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279823 (A004903 (n + 1)).toNat

end

end A279146.P12379189699519565724

/-! ## A279146.P7020159100394390627

`A279823(A004914(n+1))`
-/

namespace A279146.P7020159100394390627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279823 (A004914 (n + 1)).toNat

end

end A279146.P7020159100394390627

/-!
# A279147: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A279147, there is no canonical definition to state claims against.
-/

/-! ## A279147.P9962095181867400501

`∏{e}[7^n, A279961(#)]`
-/

namespace A279147.P9962095181867400501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A279961 (Nat.factorization (f1 n) p)

end

end A279147.P9962095181867400501

/-! ## A279147.P5521373767486597098

`A279824(A004891(n+1))`
-/

namespace A279147.P5521373767486597098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279824 (A004891 (n + 1)).toNat

end

end A279147.P5521373767486597098

/-! ## A279147.P5322706759412420419

`A279824(A004902(n+1))`
-/

namespace A279147.P5322706759412420419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279824 (A004902 (n + 1)).toNat

end

end A279147.P5322706759412420419

/-! ## A279147.P13975634583721137494

`A279824(A004913(n+1))`
-/

namespace A279147.P13975634583721137494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279824 (A004913 (n + 1)).toNat

end

end A279147.P13975634583721137494

/-!
# A279148: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 141", based on the 5-celled von Neumann neighborhood.

The programs for A279148, there is no canonical definition to state claims against.
-/

/-! ## A279148.P9942350789169909741

`A279825(A004892(n+1))`
-/

namespace A279148.P9942350789169909741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279825 (A004892 (n + 1)).toNat

end

end A279148.P9942350789169909741

/-! ## A279148.P17923287239557076974

`A279825(A004903(n+1))`
-/

namespace A279148.P17923287239557076974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279825 (A004903 (n + 1)).toNat

end

end A279148.P17923287239557076974

/-! ## A279148.P16841666879064758421

`A279825(A004914(n+1))`
-/

namespace A279148.P16841666879064758421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279825 (A004914 (n + 1)).toNat

end

end A279148.P16841666879064758421

/-! ## A279148.P17347258432593768684

`A279962(lcm(n, A024653(n)))`
-/

namespace A279148.P17347258432593768684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279962 (Int.lcm (n : ℤ) (A024653 n))

end

end A279148.P17347258432593768684

/-! ## A279148.P9824859965994352119

`∏{e}[A000351(n), A279825(#)]`
-/

namespace A279148.P9824859965994352119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A279825 (Nat.factorization (f1 n).natAbs p)

end

end A279148.P9824859965994352119

/-!
# A279149: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 145", based on the 5-celled von Neumann neighborhood.

The programs for A279149, there is no canonical definition to state claims against.
-/

/-! ## A279149.P2196428473035995045

`A007088(A279150(n))`
-/

namespace A279149.P2196428473035995045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279150 n).toNat

end

end A279149.P2196428473035995045

/-! ## A279149.P15172794854542448806

`A185544(2*A279150(n))`
-/

namespace A279149.P15172794854542448806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279150 n).toNat

end

end A279149.P15172794854542448806

/-! ## A279149.P12182360934643405738

`A185544(A279150(n)+A279150(n))`
-/

namespace A279149.P12182360934643405738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A279150 n + A279150 n).toNat

end

end A279149.P12182360934643405738

/-!
# A279152: Number of n X 2 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279152, there is no canonical definition to state claims against.
-/

/-! ## A279152.P10022096965543523146

`A279158(∑[n+1]+2)`
-/

namespace A279152.P10022096965543523146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279152.P10022096965543523146

/-! ## A279152.P5341989180193785676

`lcm(2, A279158(C(n+2, 2)+2))`
-/

namespace A279152.P5341989180193785676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279158 (Nat.choose (n + 2) 2 + 2))

end

end A279152.P5341989180193785676

/-! ## A279152.P1764846127353310668

`A279158(A000096(n+1))%A032122(n)`
-/

namespace A279152.P1764846127353310668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279158 (A000096 (n + 1)).toNat) (A032122 n)

end

end A279152.P1764846127353310668

/-!
# A279153: Number of nX3 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279153, there is no canonical definition to state claims against.
-/

/-! ## A279153.P3859313404732862638

`A279158(∑[n+2]+4)`
-/

namespace A279153.P3859313404732862638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279153.P3859313404732862638

/-! ## A279153.P10279362641526841676

`or(char[4], A279158(A167614(n+1)))`
-/

namespace A279153.P10279362641526841676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A279158 (A167614 (n + 1)).toNat)

end

end A279153.P10279362641526841676

/-! ## A279153.P2855086171509173201

`A279158(A167614(n+1))%A279155(n+1)`
-/

namespace A279153.P2855086171509173201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279158 (A167614 (n + 1)).toNat) (A279155 (n + 1))

end

end A279153.P2855086171509173201

/-! ## A279153.P17296880301259643266

`A279158(A167614(n+1))*A340827(2*n+1)`
-/

namespace A279153.P17296880301259643266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A167614 (n + 1)).toNat * A340827 (2 * n + 1)

end

end A279153.P17296880301259643266

/-!
# A279154: Number of nX4 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279154, there is no canonical definition to state claims against.
-/

/-! ## A279154.P16435082537700847932

`A279158(A374004(n+1))`
-/

namespace A279154.P16435082537700847932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A374004 (n + 1)).toNat

end

end A279154.P16435082537700847932

/-! ## A279154.P16691717559697713283

`A279158(A141214(n)+7)`
-/

namespace A279154.P16691717559697713283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A141214 n + 7).toNat

end

end A279154.P16691717559697713283

/-! ## A279154.P4485252629487994969

`A279158(A055999(n)+10)`
-/

namespace A279154.P4485252629487994969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A055999 n + 10).toNat

end

end A279154.P4485252629487994969

/-! ## A279154.P6185640523607568720

`A279158(A167614(n+2)+1)`
-/

namespace A279154.P6185640523607568720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A167614 (n + 2) + 1).toNat

end

end A279154.P6185640523607568720

/-! ## A279154.P3362826429469244036

`A279158(Δ[A264443(n)-n²])`
-/

namespace A279154.P3362826429469244036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (f1 (n + 1) - f1 n).toNat

end

end A279154.P3362826429469244036

/-!
# A279155: Number of n X 5 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279155, there is no canonical definition to state claims against.
-/

/-! ## A279155.P18323698454981874003

`A279158(A374005(n+1))`
-/

namespace A279155.P18323698454981874003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A374005 (n + 1)).toNat

end

end A279155.P18323698454981874003

/-! ## A279155.P4808117050401587954

`A279158(A167499(n+3))`
-/

namespace A279155.P4808117050401587954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A167499 (n + 3)).toNat

end

end A279155.P4808117050401587954

/-! ## A279155.P1839896693230856100

`A279158(A155212(n)+13)`
-/

namespace A279155.P1839896693230856100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A155212 n + 13).toNat

end

end A279155.P1839896693230856100

/-! ## A279155.P18080022927154746047

`A279158(eq[6, A131818(n+1)])`
-/

namespace A279155.P18080022927154746047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279155.P18080022927154746047

/-! ## A279155.P9704395832788622538

`A279158(A052905(n+3)-(2*n+1))`
-/

namespace A279155.P9704395832788622538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A279155.P9704395832788622538

/-!
# A279156: Number of nX6 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279156, there is no canonical definition to state claims against.
-/

/-! ## A279156.P6949628202236387379

`A279158(A374007(n+1))`
-/

namespace A279156.P6949628202236387379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A374007 (n + 1)).toNat

end

end A279156.P6949628202236387379

/-! ## A279156.P2617696650764738362

`A279158(A056115(n)+21)`
-/

namespace A279156.P2617696650764738362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A056115 n + 21).toNat

end

end A279156.P2617696650764738362

/-! ## A279156.P8676886245888472643

`A279158(A167499(n+4)+1)`
-/

namespace A279156.P8676886245888472643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A167499 (n + 4) + 1).toNat

end

end A279156.P8676886245888472643

/-! ## A279156.P8284705442864361691

`A279158(eq[7, A131818(n+1)])`
-/

namespace A279156.P8284705442864361691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279156.P8284705442864361691

/-! ## A279156.P1910808017305447568

`A279158(A052905(n+3))`
-/

namespace A279156.P1910808017305447568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (A052905 (n + 3)).toNat

end

end A279156.P1910808017305447568

/-!
# A279157: Number of nX7 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279157, there is no canonical definition to state claims against.
-/

/-! ## A279157.P4883332918374928102

`A279158(∑[n+6]+22)`
-/

namespace A279157.P4883332918374928102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279158 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A279157.P4883332918374928102

/-! ## A279157.P13731069097923010727

`or(A135528(2*n+1), A279158(A253145(n+5)+7))`
-/

namespace A279157.P13731069097923010727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135528 (2 * n + 1)) (A279158 (A253145 (n + 5) + 7).toNat)

end

end A279157.P13731069097923010727

/-!
# A279159: a(n) = Sum_{k=0..n} (k+1)*binomial(3*n-4*k+1,n-k)/(n-k+1).

The programs for A279159, there is no canonical definition to state claims against.
-/

/-! ## A279159.P3251869883002136012

`∑[∑[A342497(A058696(n))]]`
-/

namespace A279159.P3251869883002136012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 (A058696 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279159.P3251869883002136012

/-! ## A279159.P5092895668708461183

`∑[∑[A342497(A000041(2*n))]]`
-/

namespace A279159.P5092895668708461183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 (A000041 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279159.P5092895668708461183

/-!
# A279160: Irregular triangle read by rows in which row n lists the perimeters of the parts of the symmetric representation of sigma(n).

The programs for A279160, there is no canonical definition to state claims against.
-/

/-! ## A279160.P1585822199316189553

`2*A278447(n+1)`
-/

namespace A279160.P1585822199316189553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278447 (n + 1)

end

end A279160.P1585822199316189553

/-! ## A279160.P18091142539233268539

`A004277(A278447(n+1))`
-/

namespace A279160.P18091142539233268539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A278447 (n + 1)).toNat

end

end A279160.P18091142539233268539

/-! ## A279160.P11146205517738208608

`A000267(A278447(n+1)²)`
-/

namespace A279160.P11146205517738208608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A278447 (n + 1) ^ 2).toNat

end

end A279160.P11146205517738208608

/-! ## A279160.P3135111665049238610

`A004275(A278447(n+1)+1)`
-/

namespace A279160.P3135111665049238610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A278447 (n + 1) + 1).toNat

end

end A279160.P3135111665049238610

/-! ## A279160.P17417188119075902536

`A051755(A278447(n+1)+1)`
-/

namespace A279160.P17417188119075902536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A278447 (n + 1) + 1).toNat

end

end A279160.P17417188119075902536

/-!
# A279161: Define P = e^gamma*loglog(n) and Q = 3/loglog(n), where gamma is Euler's constant A001620. Then a(n) = phi(n) - ceiling(n/(P + Q)), where phi(n) is Euler's function A000010.

The programs for A279161, there is no canonical definition to state claims against.
-/

/-! ## A279161.P6459060496912218711

`A000010(n+3)-A208970(A133263(n))`
-/

namespace A279161.P6459060496912218711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - A208970 (A133263 n).toNat

end

end A279161.P6459060496912218711

/-! ## A279161.P16851734756461139898

`A000010(n+3)-A001826(A038754(n))`
-/

namespace A279161.P16851734756461139898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - A001826 (A038754 n).toNat

end

end A279161.P16851734756461139898

/-! ## A279161.P2776959529963872376

`A000010(n+3)-A055642(A000219(n))`
-/

namespace A279161.P2776959529963872376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - A055642 (A000219 n).toNat

end

end A279161.P2776959529963872376

/-! ## A279161.P1676454858516323074

`A000010(n+3)-A055642(A001644(n))`
-/

namespace A279161.P1676454858516323074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - A055642 (A001644 n).toNat

end

end A279161.P1676454858516323074

/-! ## A279161.P10148402132381731429

`A000010(n+3)-A055642(A017991(n))`
-/

namespace A279161.P10148402132381731429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - A055642 (A017991 n).toNat

end

end A279161.P10148402132381731429

/-!
# A279162: Number of n X 2 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279162, there is no canonical definition to state claims against.
-/

/-! ## A279162.P5331229677010074426

`A279168(∑[n+1]+2)`
-/

namespace A279162.P5331229677010074426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279162.P5331229677010074426

/-! ## A279162.P16305946050459210780

`and(-3, A279168(A133263(n+1)))`
-/

namespace A279162.P16305946050459210780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A279168 (A133263 (n + 1)).toNat)

end

end A279162.P16305946050459210780

/-! ## A279162.P14549859526208492295

`A279168(A133263(n+1))%A000108(n+2)`
-/

namespace A279162.P14549859526208492295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279168 (A133263 (n + 1)).toNat) (A000108 (n + 2))

end

end A279162.P14549859526208492295

/-! ## A279162.P6123724719895536295

`A007318(C(n, 2))*A279168(A133263(n+1))`
-/

namespace A279162.P6123724719895536295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A279168 (A133263 (n + 1)).toNat

end

end A279162.P6123724719895536295

/-! ## A279162.P8066757876311614367

`A000108(ceil(n/63))*A279168(A133263(n+1))`
-/

namespace A279162.P8066757876311614367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌈(n : ℚ) / 63⌉.toNat * A279168 (A133263 (n + 1)).toNat

end

end A279162.P8066757876311614367

/-!
# A279163: Number of nX3 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279163, there is no canonical definition to state claims against.
-/

/-! ## A279163.P6087429291070813344

`A279168(∑[n+2]+4)`
-/

namespace A279163.P6087429291070813344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279163.P6087429291070813344

/-! ## A279163.P9774481270943107723

`A279168(A167614(n+1))+char[16]`
-/

namespace A279163.P9774481270943107723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279163.P9774481270943107723

/-! ## A279163.P13862218351678412016

`A279168(A133263(n+2)+1)+char[16]`
-/

namespace A279163.P13862218351678412016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A133263 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279163.P13862218351678412016

/-! ## A279163.P2429870926662028881

`A279168(A167614(n+1))%A000420(n)`
-/

namespace A279163.P2429870926662028881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279168 (A167614 (n + 1)).toNat) (A000420 n)

end

end A279163.P2429870926662028881

/-! ## A279163.P14914800424373205929

`lcm(A033999(n), A279168(A167614(n+1)))`
-/

namespace A279163.P14914800424373205929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A279168 (A167614 (n + 1)).toNat)

end

end A279163.P14914800424373205929

/-!
# A279164: Number of nX4 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279164, there is no canonical definition to state claims against.
-/

/-! ## A279164.P5207841712300702473

`A279168(∑[n+3]+7)`
-/

namespace A279164.P5207841712300702473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A279164.P5207841712300702473

/-! ## A279164.P13021034575281232547

`A279168(A167614(n+2)+1)+char[15]`
-/

namespace A279164.P13021034575281232547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279164.P13021034575281232547

/-! ## A279164.P17645383436003860016

`A007318(C(2, n))*A279168(A167614(n+2)+1)`
-/

namespace A279164.P17645383436003860016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A279168 (A167614 (n + 2) + 1).toNat

end

end A279164.P17645383436003860016

/-! ## A279164.P7868905959460786936

`A014963(8*n+6)*A279168(A167614(n+2)+1)`
-/

namespace A279164.P7868905959460786936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * A279168 (A167614 (n + 2) + 1).toNat

end

end A279164.P7868905959460786936

/-! ## A279164.P13112951780586856492

`A279168(A167614(n+2)+1)+1-A007318(C(n, 2))`
-/

namespace A279164.P13112951780586856492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A167614 (n + 2) + 1).toNat + 1 - A007318 (Nat.choose n 2)

end

end A279164.P13112951780586856492

/-!
# A279165: Number of nX5 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279165, there is no canonical definition to state claims against.
-/

/-! ## A279165.P14560093170604066853

`A279168(A167499(n+3))`
-/

namespace A279165.P14560093170604066853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A167499 (n + 3)).toNat

end

end A279165.P14560093170604066853

/-! ## A279165.P12940091432254998588

`A279168(A155212(n)+13)`
-/

namespace A279165.P12940091432254998588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A155212 n + 13).toNat

end

end A279165.P12940091432254998588

/-! ## A279165.P7453351764902350139

`A279168(A056000(n)+15)`
-/

namespace A279165.P7453351764902350139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A056000 n + 15).toNat

end

end A279165.P7453351764902350139

/-! ## A279165.P11202254002525559265

`A279168(eq[7, A066657(n)])`
-/

namespace A279165.P11202254002525559265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279165.P11202254002525559265

/-! ## A279165.P15206653296109752362

`A279168(A166136(n+3)-1)`
-/

namespace A279165.P15206653296109752362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A166136 (n + 3) - 1).toNat

end

end A279165.P15206653296109752362

/-!
# A279166: Number of nX6 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279166, there is no canonical definition to state claims against.
-/

/-! ## A279166.P75240203781836404

`A279168(A056115(n)+21)`
-/

namespace A279166.P75240203781836404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A056115 n + 21).toNat

end

end A279166.P75240203781836404

/-! ## A279166.P1103958823763633402

`A279168(A167499(n+4)+1)`
-/

namespace A279166.P1103958823763633402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A167499 (n + 4) + 1).toNat

end

end A279166.P1103958823763633402

/-! ## A279166.P8032244751306014243

`A279168(A167614(n+4)+3)`
-/

namespace A279166.P8032244751306014243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A167614 (n + 4) + 3).toNat

end

end A279166.P8032244751306014243

/-! ## A279166.P17639957556747469501

`A279168(A000124(n+5)+5)`
-/

namespace A279166.P17639957556747469501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A000124 (n + 5) + 5).toNat

end

end A279166.P17639957556747469501

/-! ## A279166.P1791997819757184542

`A279168(eq[7, A131818(n+1)])`
-/

namespace A279166.P1791997819757184542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279166.P1791997819757184542

/-!
# A279167: Number of nX7 0..1 arrays with no element equal to a strict majority of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279167, there is no canonical definition to state claims against.
-/

/-! ## A279167.P13827237989994467553

`A279168(A056119(n)+28)`
-/

namespace A279167.P13827237989994467553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A056119 n + 28).toNat

end

end A279167.P13827237989994467553

/-! ## A279167.P7744270690829007455

`A279168(eq[11, A066657(n)])`
-/

namespace A279167.P7744270690829007455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279167.P7744270690829007455

/-! ## A279167.P12051956226588170495

`A279168(eq[8, A131818(n+1)])`
-/

namespace A279167.P12051956226588170495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279167.P12051956226588170495

/-! ## A279167.P16183813244560955512

`A279168(A374008(n+1))`
-/

namespace A279167.P16183813244560955512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (A374008 (n + 1)).toNat

end

end A279167.P16183813244560955512

/-! ## A279167.P5619194367179442395

`A279168(eq[4, A219347(n)])`
-/

namespace A279167.P5619194367179442395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279167.P5619194367179442395

/-!
# A279169: a(n) = floor( 4*n^2/5 ).

The programs for A279169, the canonical program `A279169.P11329106078503727627` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279169 has offset 0).

The definition of A279169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*n²/5)` (program `A279169.P11329106078503727627`, by `A279169.P11329106078503727627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279169.P11329106078503727627

`floor(4*n²/5)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279169

/-- `floor(4*n²/5)` -/
def P11329106078503727627.Spec : Prop :=
  ∀ n, P11329106078503727627.a n = A279169 n

theorem P11329106078503727627.correct : P11329106078503727627.Spec := by
  intro n
  simp only [A279169]

end A279169

/-! ## A279169.P2890940391568232196

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=7, a(4)=12, a(5)=20, a(6)=28`
-/

namespace A279169.P2890940391568232196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 7, 12, 20, 28] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A279169.P2890940391568232196

namespace A279169

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P2890940391568232196.Spec : Prop :=
  ∀ n, P2890940391568232196.a n = A279169 n

end A279169

/-! ## A279169.P7845418219708011493

`A118015(2*n)`
-/

namespace A279169.P7845418219708011493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (2 * n)

end

end A279169.P7845418219708011493

namespace A279169

/-- `A118015(2*n)` -/
def P7845418219708011493.Spec : Prop :=
  ∀ n, P7845418219708011493.a n = A279169 n

theorem P7845418219708011493.correct : P7845418219708011493.Spec := by
  intro n
  simp only [A279169, Nat.add_sub_cancel, A279169.P7845418219708011493.a, A279169.P11329106078503727627.a, A118015, A118015.P9136959961094046936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A279169

/-! ## A279169.P5117609643208165799

`A131242(4*n+4)`
-/

namespace A279169.P5117609643208165799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (4 * n + 4)

end

end A279169.P5117609643208165799

namespace A279169

/-- `A131242(4*n+4)` -/
def P5117609643208165799.Spec : Prop :=
  ∀ n, P5117609643208165799.a n = A279169 n

end A279169

/-! ## A279169.P15374816646043002166

`round(n²-or(2, n²)/5)`
-/

namespace A279169.P15374816646043002166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) - (Nat.lor 2 (n ^ 2) : ℚ) / 5)

end

end A279169.P15374816646043002166

namespace A279169

/-- `round(n²-or(2, n²)/5)` -/
def P15374816646043002166.Spec : Prop :=
  ∀ n, P15374816646043002166.a n = A279169 n

end A279169

/-! ## A279169.P119887364712404280

`round(n²-xor(2, n²)/5)`
-/

namespace A279169.P119887364712404280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) - (Nat.xor 2 (n ^ 2) : ℚ) / 5)

end

end A279169.P119887364712404280

namespace A279169

/-- `round(n²-xor(2, n²)/5)` -/
def P119887364712404280.Spec : Prop :=
  ∀ n, P119887364712404280.a n = A279169 n

end A279169

/-! ## A279169.P5867716574815302956

`∑[a(n-5)+8]` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A279169.P5867716574815302956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 4, 5] fun n f1 =>
  f1 (n - 5) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279169.P5867716574815302956

namespace A279169

/-- `∑[a(n-5)+8]` -/
def P5867716574815302956.Spec : Prop :=
  ∀ n, (P5867716574815302956.a n : ℤ) = A279169 n

end A279169

/-! ## A279169.P13985886255484473075

`∑[∑[floor(a(n-5))]]` with `a(0)=0, a(1)=0, a(2)=3, a(3)=1, a(4)=1, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A279169.P13985886255484473075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 1, 1, 3] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279169.P13985886255484473075

namespace A279169

/-- `∑[∑[floor(a(n-5))]]` -/
def P13985886255484473075.Spec : Prop :=
  ∀ n, (P13985886255484473075.a n : ℤ) = A279169 n

end A279169

/-! ## A279169.P16558186335731911530

`n²-A036404(n)`
-/

namespace A279169.P16558186335731911530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A036404 n

end

end A279169.P16558186335731911530

namespace A279169

/-- `n²-A036404(n)` -/
def P16558186335731911530.Spec : Prop :=
  ∀ n, P16558186335731911530.a n = A279169 n

end A279169

/-! ## A279169.P12275724677579517599

`A398056(n)-∑[n]`
-/

namespace A279169.P12275724677579517599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398056 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A279169.P12275724677579517599

namespace A279169

/-- `A398056(n)-∑[n]` -/
def P12275724677579517599.Spec : Prop :=
  ∀ n, P12275724677579517599.a n = A279169 n

end A279169

/-! ## A279169.P8188479810190259562

`A005449(n)-A398051(n)`
-/

namespace A279169.P8188479810190259562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A398051 n

end

end A279169.P8188479810190259562

namespace A279169

/-- `A005449(n)-A398051(n)` -/
def P8188479810190259562.Spec : Prop :=
  ∀ n, P8188479810190259562.a n = A279169 n

end A279169

/-! ## A279169.P10949629651984431810

`A398054(n)-A227353(n+1)`
-/

namespace A279169.P10949629651984431810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398054 n - A227353 (n + 1)

end

end A279169.P10949629651984431810

namespace A279169

/-- `A398054(n)-A227353(n+1)` -/
def P10949629651984431810.Spec : Prop :=
  ∀ n, P10949629651984431810.a n = A279169 n

end A279169

/-! ## A279169.P240489065808544026

`A033437(n)+2*A008738(n)`
-/

namespace A279169.P240489065808544026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 n + 2 * A008738 n

end

end A279169.P240489065808544026

namespace A279169

/-- `A033437(n)+2*A008738(n)` -/
def P240489065808544026.Spec : Prop :=
  ∀ n, P240489065808544026.a n = A279169 n

end A279169

/-! ## A279169.P2728201006047505932

`A288156(n)+A011858(2*n)`
-/

namespace A279169.P2728201006047505932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n + A011858 (2 * n)

end

end A279169.P2728201006047505932

namespace A279169

/-- `A288156(n)+A011858(2*n)` -/
def P2728201006047505932.Spec : Prop :=
  ∀ n, P2728201006047505932.a n = A279169 n

end A279169

/-! ## A279169.P489121149099779980

`∑[A028841(2*n+1)-(2*n+1)]`
-/

namespace A279169.P489121149099779980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028841 (2 * n + 1) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279169.P489121149099779980

namespace A279169

/-- `∑[A028841(2*n+1)-(2*n+1)]` -/
def P489121149099779980.Spec : Prop :=
  ∀ n, P489121149099779980.a n = A279169 n

end A279169

/-! ## A279169.P1496122439737515684

`A036404(2*n)-A011558(n)`
-/

namespace A279169.P1496122439737515684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 (2 * n) - A011558 n

end

end A279169.P1496122439737515684

namespace A279169

/-- `A036404(2*n)-A011558(n)` -/
def P1496122439737515684.Spec : Prop :=
  ∀ n, P1496122439737515684.a n = A279169 n

end A279169

/-! ## A279169.P9161442465019829323

`A056865(2*n)+A056864(2*n)`
-/

namespace A279169.P9161442465019829323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 (2 * n) + A056864 (2 * n)

end

end A279169.P9161442465019829323

namespace A279169

/-- `A056865(2*n)+A056864(2*n)` -/
def P9161442465019829323.Spec : Prop :=
  ∀ n, P9161442465019829323.a n = A279169 n

end A279169

/-! ## A279169.P7918766323520996744

`A008260(2*n)-A005893(2*n)`
-/

namespace A279169.P7918766323520996744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008260 (2 * n) - A005893 (2 * n)

end

end A279169.P7918766323520996744

namespace A279169

/-- `A008260(2*n)-A005893(2*n)` -/
def P7918766323520996744.Spec : Prop :=
  ∀ n, P7918766323520996744.a n = A279169 n

end A279169

/-! ## A279169.P2037446414166711021

`A033437(2*n)-A008738(2*n)`
-/

namespace A279169.P2037446414166711021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 (2 * n) - A008738 (2 * n)

end

end A279169.P2037446414166711021

namespace A279169

/-- `A033437(2*n)-A008738(2*n)` -/
def P2037446414166711021.Spec : Prop :=
  ∀ n, P2037446414166711021.a n = A279169 n

end A279169

/-! ## A279169.P8344719280612643688

`A011858(2*n)+A002266(2*n+1)`
-/

namespace A279169.P8344719280612643688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (2 * n) + A002266 (2 * n + 1)

end

end A279169.P8344719280612643688

namespace A279169

/-- `A011858(2*n)+A002266(2*n+1)` -/
def P8344719280612643688.Spec : Prop :=
  ∀ n, P8344719280612643688.a n = A279169 n

end A279169

/-!
# A279172: The autosequence of the first kind between A226158(n) and A278331(n).

The programs for A279172, there is no canonical definition to state claims against.
-/

/-! ## A279172.P16395393400315455836

`A226158(n+2)-A226158(n+1)`
-/

namespace A279172.P16395393400315455836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (n + 2) - A226158 (n + 1)

end

end A279172.P16395393400315455836

/-! ## A279172.P5323975965107435883

`Δ[A226158(n+1)]`
-/

namespace A279172.P5323975965107435883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279172.P5323975965107435883

/-! ## A279172.P11712715095287751459

`Δ[A239977(n+1)]-2`
-/

namespace A279172.P11712715095287751459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A279172.P11712715095287751459

/-! ## A279172.P8880037584143422414

`Δ[A036968(A233583(n+2))]`
-/

namespace A279172.P8880037584143422414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279172.P8880037584143422414

/-! ## A279172.P6770075332323536398

`A000038(n)+Δ[A036968(n+1)]`
-/

namespace A279172.P6770075332323536398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A279172.P6770075332323536398

/-!
# A279173: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A279173, there is no canonical definition to state claims against.
-/

/-! ## A279173.P5810847639857473227

`A007088(A279175(n))`
-/

namespace A279173.P5810847639857473227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279175 n).toNat

end

end A279173.P5810847639857473227

/-! ## A279173.P10429550719479983887

`A185544(2*A279175(n))`
-/

namespace A279173.P10429550719479983887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279175 n).toNat

end

end A279173.P10429550719479983887

/-! ## A279173.P77607779857910371

`A279873(n)-A185255(A000041(n))`
-/

namespace A279173.P77607779857910371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279873 n - A185255 (A000041 n).toNat

end

end A279173.P77607779857910371

/-! ## A279173.P962638990135040023

`A279873(A097448(n²))`
-/

namespace A279173.P962638990135040023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279873 (A097448 (n ^ 2)).toNat

end

end A279173.P962638990135040023

/-! ## A279173.P3336598372960110499

`A279873(A004892(n+1))`
-/

namespace A279173.P3336598372960110499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279873 (A004892 (n + 1)).toNat

end

end A279173.P3336598372960110499

/-!
# A279174: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A279174, there is no canonical definition to state claims against.
-/

/-! ## A279174.P5331553821353142686

`A007088(A279176(n))`
-/

namespace A279174.P5331553821353142686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279176 n).toNat

end

end A279174.P5331553821353142686

/-! ## A279174.P3049335362351967282

`A185544(2*A279176(n))`
-/

namespace A279174.P3049335362351967282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279176 n).toNat

end

end A279174.P3049335362351967282

/-! ## A279174.P2622977439503127474

`A279874(A097448(n²))`
-/

namespace A279174.P2622977439503127474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279874 (A097448 (n ^ 2)).toNat

end

end A279174.P2622977439503127474

/-! ## A279174.P7345839778260055396

`A279874(A004892(n+1))`
-/

namespace A279174.P7345839778260055396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279874 (A004892 (n + 1)).toNat

end

end A279174.P7345839778260055396

/-! ## A279174.P15304337249343843768

`A279874(A004903(n+1))`
-/

namespace A279174.P15304337249343843768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279874 (A004903 (n + 1)).toNat

end

end A279174.P15304337249343843768

/-!
# A279175: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A279175, there is no canonical definition to state claims against.
-/

/-! ## A279175.P11823800861073083575

`A279875(n)-A210713(A137748(n))`
-/

namespace A279175.P11823800861073083575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279875 n - A210713 (A137748 n).toNat

end

end A279175.P11823800861073083575

/-! ## A279175.P16284815452404429931

`∏{e}[5^n, A279875(#)]`
-/

namespace A279175.P16284815452404429931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A279875 (Nat.factorization (f1 n) p)

end

end A279175.P16284815452404429931

/-! ## A279175.P8458490429442645791

`A279875(A097448(n²))`
-/

namespace A279175.P8458490429442645791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279875 (A097448 (n ^ 2)).toNat

end

end A279175.P8458490429442645791

/-! ## A279175.P3840718101534354668

`A279875(A004892(n+1))`
-/

namespace A279175.P3840718101534354668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279875 (A004892 (n + 1)).toNat

end

end A279175.P3840718101534354668

/-! ## A279175.P1869327292238633428

`A279875(A004903(n+1))`
-/

namespace A279175.P1869327292238633428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279875 (A004903 (n + 1)).toNat

end

end A279175.P1869327292238633428

/-!
# A279176: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 147", based on the 5-celled von Neumann neighborhood.

The programs for A279176, there is no canonical definition to state claims against.
-/

/-! ## A279176.P16858628401239125478

`∏{p}[A279876(n)², #]`
-/

namespace A279176.P16858628401239125478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279876 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A279176.P16858628401239125478

/-! ## A279176.P4637267979438635874

`∏{e}[5^n, A279876(#)]`
-/

namespace A279176.P4637267979438635874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A279876 (Nat.factorization (f1 n) p)

end

end A279176.P4637267979438635874

/-! ## A279176.P6427403402897522171

`A115060(A279876(n))`
-/

namespace A279176.P6427403402897522171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A279876 n).toNat

end

end A279176.P6427403402897522171

/-! ## A279176.P7850745653456871071

`A007947(A279876(n)²)`
-/

namespace A279176.P7850745653456871071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A279876 n ^ 2).toNat

end

end A279176.P7850745653456871071

/-! ## A279176.P4801648491103717998

`A052410(A279876(n)²)`
-/

namespace A279176.P4801648491103717998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A279876 n ^ 2).toNat

end

end A279176.P4801648491103717998

/-!
# A279177: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A279177, there is no canonical definition to state claims against.
-/

/-! ## A279177.P12034326467614460344

`A007088(A279179(n))`
-/

namespace A279177.P12034326467614460344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279179 n).toNat

end

end A279177.P12034326467614460344

/-! ## A279177.P2445818138293232032

`A185544(2*A279179(n))`
-/

namespace A279177.P2445818138293232032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279179 n).toNat

end

end A279177.P2445818138293232032

/-! ## A279177.P8666998741289132862

`A279468(A004892(n+1))`
-/

namespace A279177.P8666998741289132862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279468 (A004892 (n + 1)).toNat

end

end A279177.P8666998741289132862

/-! ## A279177.P14782743512968414971

`A279468(A004903(n+1))`
-/

namespace A279177.P14782743512968414971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279468 (A004903 (n + 1)).toNat

end

end A279177.P14782743512968414971

/-! ## A279177.P11016431290833381246

`A279468(A029965(n+1))`
-/

namespace A279177.P11016431290833381246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279468 (A029965 (n + 1)).toNat

end

end A279177.P11016431290833381246

/-!
# A279178: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A279178, there is no canonical definition to state claims against.
-/

/-! ## A279178.P5722266371719159899

`A007088(A279180(n))`
-/

namespace A279178.P5722266371719159899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279180 n).toNat

end

end A279178.P5722266371719159899

/-! ## A279178.P14238966855839153688

`A185544(2*A279180(n))`
-/

namespace A279178.P14238966855839153688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279180 n).toNat

end

end A279178.P14238966855839153688

/-! ## A279178.P11587843791455238098

`A279469(A004892(n+1))`
-/

namespace A279178.P11587843791455238098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279469 (A004892 (n + 1)).toNat

end

end A279178.P11587843791455238098

/-! ## A279178.P11826483473268312573

`A279469(A004903(n+1))`
-/

namespace A279178.P11826483473268312573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279469 (A004903 (n + 1)).toNat

end

end A279178.P11826483473268312573

/-! ## A279178.P13705585292880806158

`A279469(A287287(3*(n+1))+n)`
-/

namespace A279178.P13705585292880806158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279469 (A287287 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A279178.P13705585292880806158

/-!
# A279179: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A279179, there is no canonical definition to state claims against.
-/

/-! ## A279179.P9587048602212794214

`A279470(n)-A331416(A240103(n+1))`
-/

namespace A279179.P9587048602212794214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279470 n - A331416 (A240103 (n + 1)).toNat

end

end A279179.P9587048602212794214

/-! ## A279179.P9876019859999238535

`∏{e}[7^n, A279470(#)]`
-/

namespace A279179.P9876019859999238535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A279470 (Nat.factorization (f1 n) p)

end

end A279179.P9876019859999238535

/-! ## A279179.P13565468905962901276

`A279470(A004891(n+1))`
-/

namespace A279179.P13565468905962901276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279470 (A004891 (n + 1)).toNat

end

end A279179.P13565468905962901276

/-! ## A279179.P12108875150610236504

`A279470(A004902(n+1))`
-/

namespace A279179.P12108875150610236504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279470 (A004902 (n + 1)).toNat

end

end A279179.P12108875150610236504

/-!
# A279180: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A279180, there is no canonical definition to state claims against.
-/

/-! ## A279180.P2675133813750451580

`A109680(A279471(n))`
-/

namespace A279180.P2675133813750451580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A279471 n).toNat

end

end A279180.P2675133813750451580

/-! ## A279180.P7750443186049711091

`A056926(A279471(n)²)`
-/

namespace A279180.P7750443186049711091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A279471 n ^ 2).toNat

end

end A279180.P7750443186049711091

/-! ## A279180.P18041922159064996764

`A279471(A004892(n+1))`
-/

namespace A279180.P18041922159064996764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279471 (A004892 (n + 1)).toNat

end

end A279180.P18041922159064996764

/-! ## A279180.P9126861577519407992

`A279471(A004903(n+1))`
-/

namespace A279180.P9126861577519407992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279471 (A004903 (n + 1)).toNat

end

end A279180.P9126861577519407992

/-! ## A279180.P8883533976574462469

`A279471(A004914(n+1))`
-/

namespace A279180.P8883533976574462469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279471 (A004914 (n + 1)).toNat

end

end A279180.P8883533976574462469

/-!
# A279181: Numerators of coefficients in expansion of 1/(-1 + 2 cos(sqrt(x))).

The programs for A279181, there is no canonical definition to state claims against.
-/

/-! ## A279181.P1104269194866903927

`A002114(n^A067659(n))`
-/

namespace A279181.P1104269194866903927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002114 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A067659 n : ℤ))).toNat

end

end A279181.P1104269194866903927

/-! ## A279181.P10609538766877445069

`A002114(n^A276797(n))`
-/

namespace A279181.P10609538766877445069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002114 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A276797 n : ℤ))).toNat

end

end A279181.P10609538766877445069

/-!
# A279182: Denominators of coefficients in expansion of 1/(-1 + 2 cos(sqrt(x))).

The programs for A279182, there is no canonical definition to state claims against.
-/

/-! ## A279182.P12282926850254893693

`A001710(2*n)/A109672(A215678(n))`
-/

namespace A279182.P12282926850254893693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001710 (2 * n) : ℚ) / (A109672 (A215678 n).toNat : ℚ)

end

end A279182.P12282926850254893693

/-! ## A279182.P6283550621941506913

`A001710(2*n)/A147258(A147271(n+1))`
-/

namespace A279182.P6283550621941506913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001710 (2 * n) : ℚ) / (A147258 (A147271 (n + 1)).toNat : ℚ)

end

end A279182.P6283550621941506913

/-! ## A279182.P4924418202322522161

`A000142(2*n)/A326140(A360713(2*n+1))`
-/

namespace A279182.P4924418202322522161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n) : ℚ) / (A326140 (A360713 (2 * n + 1)).toNat : ℚ)

end

end A279182.P4924418202322522161

/-!
# A279183: Numbers k such that phi(6k) = phi(6k-2), where phi is Euler's totient function A000010.

The programs for A279183, there is no canonical definition to state claims against.
-/

/-! ## A279183.P5456775621685424789

`∩[A047216(n+1), A279011(n+1)]`
-/

namespace A279183.P5456775621685424789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279183.P5456775621685424789

/-! ## A279183.P11888213873216518266

`∩[A278999(n+1), A279011(n+1)]`
-/

namespace A279183.P11888213873216518266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279183.P11888213873216518266

/-! ## A279183.P11590444272132794602

`eq[2, A171934(A008458(n))]`
-/

namespace A279183.P11590444272132794602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171934 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279183.P11590444272132794602

/-! ## A279183.P5507770758673393798

`filter[A279011(n+1), A190191(#)]`
-/

namespace A279183.P5507770758673393798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190191 (f1 j).toNat = 1) n)

end

end A279183.P5507770758673393798

/-!
# A279185: Triangle read by rows: T(n,k) (n >= 1, 0 <= k <= n-1) is the length of the period of the sequence obtained by starting with k and repeatedly squaring mod n.

The programs for A279185, there is no canonical definition to state claims against.
-/

/-! ## A279185.P14402256417738545703

`∏{e}[A111382(A074909(n)), #]`
-/

namespace A279185.P14402256417738545703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111382 (A074909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A279185.P14402256417738545703

/-! ## A279185.P9851453047777565021

`A130782(A123125(n))`
-/

namespace A279185.P9851453047777565021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130782 (A123125 n).toNat

end

end A279185.P9851453047777565021

/-! ## A279185.P13545612090886807072

`A055457(A123125(n)+8)`
-/

namespace A279185.P13545612090886807072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A123125 n + 8).toNat

end

end A279185.P13545612090886807072

/-! ## A279185.P10639680011705130647

`A115573(or(10, A074909(n)))`
-/

namespace A279185.P10639680011705130647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115573 (Int.lor 10 (A074909 n)).toNat

end

end A279185.P10639680011705130647

/-! ## A279185.P17131690907047258426

`A136428(A123125(n)+1)+1`
-/

namespace A279185.P17131690907047258426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136428 (A123125 n + 1).toNat + 1

end

end A279185.P17131690907047258426

/-!
# A279187: Maximal entry in row c of A279185, where c = n-th composite number A002808(n).

The programs for A279187, there is no canonical definition to state claims against.
-/

/-! ## A279187.P7944582485444873967

`A256608(A002808(n+1))`
-/

namespace A279187.P7944582485444873967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (A002808 (n + 1)).toNat

end

end A279187.P7944582485444873967

/-! ## A279187.P3388906430338432536

`A256608(A282671(n+1))`
-/

namespace A279187.P3388906430338432536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (A282671 (n + 1)).toNat

end

end A279187.P3388906430338432536

/-! ## A279187.P12177160405710527304

`A256608(A018252(n+2))`
-/

namespace A279187.P12177160405710527304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (A018252 (n + 2)).toNat

end

end A279187.P12177160405710527304

/-! ## A279187.P15339112268739778064

`A256608(A065090(n+3))`
-/

namespace A279187.P15339112268739778064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (A065090 (n + 3)).toNat

end

end A279187.P15339112268739778064

/-! ## A279187.P3690944419289349329

`A256608(lt[1, A003415(n)])`
-/

namespace A279187.P3690944419289349329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A279187.P3690944419289349329

/-! ## A279187.P2939641699120099302

`A256608(A072668(n+1)+1)`
-/

namespace A279187.P2939641699120099302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (A072668 (n + 1) + 1).toNat

end

end A279187.P2939641699120099302

/-! ## A279187.P13393165353219986995

`A256608(eq[0, A339579(n+1)])`
-/

namespace A279187.P13393165353219986995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279187.P13393165353219986995

/-!
# A279188: Maximal entry in row c of triangle in A279185, where c = prime(n)^2 = A001248(n).

The programs for A279188, there is no canonical definition to state claims against.
-/

/-! ## A279188.P7115544284426510637

`lcm(A007733(A000040(n+1)), A037178(n+1))`
-/

namespace A279188.P7115544284426510637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007733 (A000040 (n + 1)).toNat) (A037178 (n + 1))

end

end A279188.P7115544284426510637

/-! ## A279188.P4113002365600787896

`A007733(Δ[A007504(n)]*A057023(n+1))`
-/

namespace A279188.P4113002365600787896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 ((f1 (n + 1) - f1 n) * A057023 (n + 1)).toNat

end

end A279188.P4113002365600787896

/-! ## A279188.P4520652641629647306

`A007733(p?[A014681(n)]*A057023(n+1))`
-/

namespace A279188.P4520652641629647306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057023 (n + 1)).toNat

end

end A279188.P4520652641629647306

/-! ## A279188.P16201584147284605642

`A007733(p?[A056847(n)]*A057023(n+1))`
-/

namespace A279188.P16201584147284605642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057023 (n + 1)).toNat

end

end A279188.P16201584147284605642

/-! ## A279188.P13198500258416954952

`A007733(p?[A256450(n)]*A057023(n+1))`
-/

namespace A279188.P13198500258416954952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057023 (n + 1)).toNat

end

end A279188.P13198500258416954952

/-!
# A279189: Primes p such that L(p^2) = (p-1)*L(p), where L(i) = A279186(i).

The programs for A279189, there is no canonical definition to state claims against.
-/

/-! ## A279189.P614515340151668259

`A005384(∏{e}[A133001(n), #])`
-/

namespace A279189.P614515340151668259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A279189.P614515340151668259

/-! ## A279189.P7644163103719950770

`p?[∑[A030102(A138495(n))]]`
-/

namespace A279189.P7644163103719950770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A138495 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279189.P7644163103719950770

/-!
# A279190: Primes p such that L(p^2) = (p-1)*L(p)/2, where L(i) = A279186(i).

The programs for A279190, there is no canonical definition to state claims against.
-/

/-! ## A279190.P17742646624272439091

`A151800(eq[A000005(n+1), A282903(n+5)])`
-/

namespace A279190.P17742646624272439091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282903 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A279190.P17742646624272439091

/-! ## A279190.P8283770509319446

`p?[∑[A000005(A152611(2*(n+1)))]]`
-/

namespace A279190.P8283770509319446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A152611 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279190.P8283770509319446

/-! ## A279190.P378185624540270639

`p?[A215366(A066049(n+1)+3+n)]`
-/

namespace A279190.P378185624540270639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (A066049 (n + 1) + 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279190.P378185624540270639

/-!
# A279191: Primes p such that L(p^2) = (p-1)*L(p)/4, where L(i) = A279186(i).

The programs for A279191, there is no canonical definition to state claims against.
-/

/-! ## A279191.P12957864385127876073

`p?[A216227(n+1)+A141587(3*n+4)]`
-/

namespace A279191.P12957864385127876073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216227 (n + 1) + A141587 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279191.P12957864385127876073

/-!
# A279192: Primes p such that L(p^2) = (p-1)*L(p)/6, where L(i) = A279186(i).

The programs for A279192, there is no canonical definition to state claims against.
-/

/-! ## A279192.P10011782318181014318

`A191868(A131260(n+1)+1)`
-/

namespace A279192.P10011782318181014318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191868 (A131260 (n + 1) + 1).toNat

end

end A279192.P10011782318181014318

/-! ## A279192.P4952266368207475235

`A272404(A259936(n+5)+A107429(n+1))`
-/

namespace A279192.P4952266368207475235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272404 (A259936 (n + 5) + A107429 (n + 1)).toNat

end

end A279192.P4952266368207475235

/-!
# A279193: Least positive integer whose decimal digits divide the plane into n regions (version for people who write 2 with a curlicue).

The programs for A279193, the canonical program `A279193.P6583730916838443870` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279193 has offset 1).

The definition of A279193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279193.P6583730916838443870

`a(n-1)+10*a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=28`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279193

/-- `a(n-1)+10*a(n-2)-10*a(n-3)` -/
def P6583730916838443870.Spec : Prop :=
  ∀ n, P6583730916838443870.a n = A279193 (n + 1)

theorem P6583730916838443870.correct : P6583730916838443870.Spec := by
  intro n
  simp only [A279193, Nat.add_sub_cancel]

end A279193

/-! ## A279193.P4890182817938869378

`10*a(n-2)+8` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A279193.P4890182817938869378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  10 * a (n - 2) + 8

end

end A279193.P4890182817938869378

namespace A279193

/-- `10*a(n-2)+8` -/
def P4890182817938869378.Spec : Prop :=
  ∀ n, (P4890182817938869378.a n : ℤ) = A279193 (n + 1)

end A279193

/-! ## A279193.P5171523010881922618

`10*or(1, a(n-2))-2` with `a(0)=1, a(1)=2`
-/

namespace A279193.P5171523010881922618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  10 * Int.lor 1 (a (n - 2)) - 2

end

end A279193.P5171523010881922618

namespace A279193

/-- `10*or(1, a(n-2))-2` -/
def P5171523010881922618.Spec : Prop :=
  ∀ n, P5171523010881922618.a n = A279193 (n + 1)

end A279193

/-! ## A279193.P3634705481960782638

`10*xor(1, a(n-2))-2` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A279193.P3634705481960782638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  10 * Int.xor 1 (a (n - 2)) - 2

end

end A279193.P3634705481960782638

namespace A279193

/-- `10*xor(1, a(n-2))-2` -/
def P3634705481960782638.Spec : Prop :=
  ∀ n, P3634705481960782638.a n = A279193 (n + 1)

end A279193

/-! ## A279193.P9728434749194798961

`A249572(n)-A000035(n)*A004643(n)`
-/

namespace A279193.P9728434749194798961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n - A000035 n * A004643 n

end

end A279193.P9728434749194798961

namespace A279193

/-- `A249572(n)-A000035(n)*A004643(n)` -/
def P9728434749194798961.Spec : Prop :=
  ∀ n, P9728434749194798961.a n = A279193 (n + 1)

end A279193

/-! ## A279193.P14979608330754806020

`A249572(n)+A249572(n)-A250256(n+1)`
-/

namespace A279193.P14979608330754806020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n + (A249572 n - A250256 (n + 1))

end

end A279193.P14979608330754806020

namespace A279193

/-- `A249572(n)+A249572(n)-A250256(n+1)` -/
def P14979608330754806020.Spec : Prop :=
  ∀ n, P14979608330754806020.a n = A279193 (n + 1)

end A279193

/-! ## A279193.P5206112297277162620

`A250256(n+1)%Δ[A249572(n)]`
-/

namespace A279193.P5206112297277162620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250256 (n + 1)) (f1 (n + 1) - f1 n)

end

end A279193.P5206112297277162620

namespace A279193

/-- `A250256(n+1)%Δ[A249572(n)]` -/
def P5206112297277162620.Spec : Prop :=
  ∀ n, P5206112297277162620.a n = A279193 (n + 1)

end A279193

/-!
# A279194: Numbers of the form {(11*h+p)*11^2k-1 | h,k in N and p in {1,3,4,5,9} } U {(11*h+q)*11^(2k+1)-1 | h,k in N and q in {2,6,7,8,10} }.

The programs for A279194, there is no canonical definition to state claims against.
-/

/-! ## A279194.P10471108085069743069

`comp[A279195(n+1)]`
-/

namespace A279194.P10471108085069743069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A279194.P10471108085069743069

/-! ## A279194.P6368037069199832865

`A004526(record[A000265(A279195(n+1))])`
-/

namespace A279194.P6368037069199832865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A279195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279194.P6368037069199832865

/-! ## A279194.P12479451289392734995

`A028242(record[A000265(A279195(n+1))])`
-/

namespace A279194.P12479451289392734995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A279195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279194.P12479451289392734995

/-! ## A279194.P2127011982462392909

`A028242(record[A026741(A279195(n+1))])`
-/

namespace A279194.P2127011982462392909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A279195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279194.P2127011982462392909

/-!
# A279195: Numbers of the form {(11*h+p)*11^(2k+1)-1 | h,k in N and p in {1,3,4,5,9} } U {(11*h+q)*11^2k-1 | h,k in N and q in {2,6,7,8,10} }.

The programs for A279195, there is no canonical definition to state claims against.
-/

/-! ## A279195.P17348430661365844561

`comp[A279194(n+1)]`
-/

namespace A279195.P17348430661365844561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A279195.P17348430661365844561

/-! ## A279195.P9415983585910516999

`eq[0, char[A279194(A008619(n))]]`
-/

namespace A279195.P9415983585910516999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279194 (A008619 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279195.P9415983585910516999

/-! ## A279195.P5787585605498496308

`eq[char[A279194(n+1)], A000038(n)]`
-/

namespace A279195.P5787585605498496308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279194 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A279195.P5787585605498496308

/-! ## A279195.P2847601710631639308

`eq[char[A279194(n+2)], A000007(n)]`
-/

namespace A279195.P2847601710631639308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279194 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A279195.P2847601710631639308

/-! ## A279195.P2324195890712907178

`record[A057979(A279194(n+2))]`
-/

namespace A279195.P2324195890712907178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A279194 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279195.P2324195890712907178

/-!
# A279196: Number of polynomials of the form P(x,y) = 1 + (x+y-1) * Q(x,y) such that P(1,1) = n and both polynomials P and Q have nonnegative integer coefficients.

The programs for A279196, there is no canonical definition to state claims against.
-/

/-! ## A279196.P1276067752115463421

`floor(floor(A121189(2*(n+2))/3)/3)+1`
-/

namespace A279196.P1276067752115463421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A121189 (2 * (n + 2)) : ℚ) / 3⌋ : ℚ) / 3⌋ + 1

end

end A279196.P1276067752115463421

/-! ## A279196.P14742960993715016568

`A008679(A094374(n+1))`
-/

namespace A279196.P14742960993715016568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A094374 (n + 1)).toNat

end

end A279196.P14742960993715016568

/-! ## A279196.P8546762901979691784

`A008647(A099754(n+1))`
-/

namespace A279196.P8546762901979691784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A099754 (n + 1)).toNat

end

end A279196.P8546762901979691784

/-! ## A279196.P1210105676070933387

`A100196(A227846(n)+n)`
-/

namespace A279196.P1210105676070933387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A227846 n + (n : ℤ)).toNat

end

end A279196.P1210105676070933387

/-!
# A279197: Number of self-conjugate inseparable solutions of X + Y = 2Z (integer, disjoint triples from {1,2,3,...,3n}).

The programs for A279197, there is no canonical definition to state claims against.
-/

/-! ## A279197.P13570669790531686647

`A282616(n+1)-A282615(n+1)`
-/

namespace A279197.P13570669790531686647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282616 (n + 1) - A282615 (n + 1)

end

end A279197.P13570669790531686647

/-! ## A279197.P10097717667806267715

`A282616(n+1)-(A279199(n+1)-A282618(n+1))`
-/

namespace A279197.P10097717667806267715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282616 (n + 1) - (A279199 (n + 1) - A282618 (n + 1))

end

end A279197.P10097717667806267715

/-! ## A279197.P8216688584852059008

`A202705(n+1)-A282617(n+1)`
-/

namespace A279197.P8216688584852059008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202705 (n + 1) - A282617 (n + 1)

end

end A279197.P8216688584852059008

/-! ## A279197.P5086280641826182291

`A104429(n+1)-(A282617(n+1)+A279199(n+1))`
-/

namespace A279197.P5086280641826182291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 (n + 1) - (A282617 (n + 1) + A279199 (n + 1))

end

end A279197.P5086280641826182291

/-! ## A279197.P15139281977486264658

`A202705(n+1)+A282618(n+1)-A282619(n+1)`
-/

namespace A279197.P15139281977486264658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202705 (n + 1) + (A282618 (n + 1) - A282619 (n + 1))

end

end A279197.P15139281977486264658

/-!
# A279198: Number of pairs of conjugate inseparable solutions of X + Y = 2Z (integer, disjoint triples from {1,2,3,...,3n}).

The programs for A279198, there is no canonical definition to state claims against.
-/

/-! ## A279198.P3768060713245783402

`A282617(n+1)/2`
-/

namespace A279198.P3768060713245783402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282617 (n + 1) : ℚ) / 2

end

end A279198.P3768060713245783402

/-! ## A279198.P18325553972567986745

`floor(A282617(A291769(n))/2)`
-/

namespace A279198.P18325553972567986745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282617 (A291769 n).toNat : ℚ) / 2⌋

end

end A279198.P18325553972567986745

/-! ## A279198.P13819755321805397993

`floor(A282617(A348553(n))/2)`
-/

namespace A279198.P13819755321805397993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282617 (A348553 n).toNat : ℚ) / 2⌋

end

end A279198.P13819755321805397993

/-! ## A279198.P5326058912554185842

`(A202705(n+1)-A279197(n+1))/2`
-/

namespace A279198.P5326058912554185842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202705 (n + 1) - A279197 (n + 1) : ℚ) / 2

end

end A279198.P5326058912554185842

/-! ## A279198.P5273499941037558453

`(A282619(n+1)-A282618(n+1))/2`
-/

namespace A279198.P5273499941037558453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282619 (n + 1) - A282618 (n + 1) : ℚ) / 2

end

end A279198.P5273499941037558453

/-!
# A279199: Number of reducible ways to split 1, 2, 3, ..., 3n into n arithmetic progressions each with 3 terms: a(n) = A104429(n) - A202705(n).

The programs for A279199, there is no canonical definition to state claims against.
-/

/-! ## A279199.P13976762808990101043

`A104429(n)-A202705(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279199.P13976762808990101043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 n - A202705 n

end

end A279199.P13976762808990101043

/-! ## A279199.P14540498949703131488

`A104443(∑[n+2]-1)-A202705(n)`
-/

namespace A279199.P14540498949703131488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A202705 n

end

end A279199.P14540498949703131488

/-! ## A279199.P10674725326443891850

`A185284(n)+A104443(A034856(n+1))-A202705(n)`
-/

namespace A279199.P10674725326443891850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A104443 (A034856 (n + 1)).toNat - A202705 n

end

end A279199.P10674725326443891850

