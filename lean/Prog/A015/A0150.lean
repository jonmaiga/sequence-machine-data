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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A015000: q-integers for q=-13.

The programs for A015000, the canonical program `A015000.P10987935024657733570` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015000 has offset 1).

The definition of A015000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015000.P13930383129571415315

`ogf(1/(1+12x-13x^2))`
-/

namespace A015000.P13930383129571415315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 12, -13] n

end

end A015000.P13930383129571415315

namespace A015000

/-- `ogf(1/(1+12x-13x^2))` -/
def P13930383129571415315.Spec : Prop :=
  ∀ n, P13930383129571415315.a n = A015000 (n + 1)

end A015000

/-! ## A015000.P10987935024657733570

`(1-(-13)^(n+1))/14`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015000

/-- `(1-(-13)^(n+1))/14` -/
def P10987935024657733570.Spec : Prop :=
  ∀ n, P10987935024657733570.a n = (A015000 (n + 1) : ℚ)

end A015000

/-! ## A015000.P6630608341139959219

`∑[ogf(1/(1+13x))]`
-/

namespace A015000.P6630608341139959219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 13] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015000.P6630608341139959219

namespace A015000

/-- `∑[ogf(1/(1+13x))]` -/
def P6630608341139959219.Spec : Prop :=
  ∀ n, P6630608341139959219.a n = A015000 (n + 1)

end A015000

/-! ## A015000.P666393303685038998

`1-13*a(n-1)` with `a(0)=1`
-/

namespace A015000.P666393303685038998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 13 * a (n - 1)

end

end A015000.P666393303685038998

namespace A015000

/-- `1-13*a(n-1)` -/
def P666393303685038998.Spec : Prop :=
  ∀ n, P666393303685038998.a n = A015000 (n + 1)

end A015000

/-! ## A015000.P15683566841871960951

`a(n-1)+(-13)^n` with `a(0)=1`
-/

namespace A015000.P15683566841871960951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-13) ^ n

end

end A015000.P15683566841871960951

namespace A015000

/-- `a(n-1)+(-13)^n` -/
def P15683566841871960951.Spec : Prop :=
  ∀ n, P15683566841871960951.a n = A015000 (n + 1)

end A015000

/-! ## A015000.P5888449729375112678

`∑[A001022(n)*A033999(n)]`
-/

namespace A015000.P5888449729375112678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015000.P5888449729375112678

namespace A015000

/-- `∑[A001022(n)*A033999(n)]` -/
def P5888449729375112678.Spec : Prop :=
  ∀ n, P5888449729375112678.a n = A015000 (n + 1)

end A015000

/-!
# A015001: q-factorial numbers for q=3.

The programs for A015001, the canonical program `A015001.P16715836200427200684` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015001 has offset 0).

The definition of A015001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015001.P16715836200427200684

`(3^n-1)*a(n-1)/2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015001

/-- `(3^n-1)*a(n-1)/2` -/
def P16715836200427200684.Spec : Prop :=
  ∀ n, P16715836200427200684.a n = (A015001 n : ℚ)

end A015001

/-! ## A015001.P7688417507532671600

`A053290(n)/(A000079(n)*A047656(n))`
-/

namespace A015001.P7688417507532671600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053290 n : ℚ) / (A000079 n * A047656 n : ℚ)

end

end A015001.P7688417507532671600

namespace A015001

/-- `A053290(n)/(A000079(n)*A047656(n))` -/
def P7688417507532671600.Spec : Prop :=
  ∀ n, P7688417507532671600.a n = (A015001 n : ℚ)

end A015001

/-! ## A015001.P14395135725321148323

`∏[ceil(abs(1-3^n/2))]`
-/

namespace A015001.P14395135725321148323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|1 - (3 ^ n : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015001.P14395135725321148323

namespace A015001

/-- `∏[ceil(abs(1-3^n/2))]` -/
def P14395135725321148323.Spec : Prop :=
  ∀ n, P14395135725321148323.a n = A015001 n

end A015001

/-! ## A015001.P7001669596917139986

`floor(3^n/2)*a(n-1)` with `a(0)=1`
-/

namespace A015001.P7001669596917139986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(3 ^ n : ℚ) / 2⌋ * a (n - 1)

end

end A015001.P7001669596917139986

namespace A015001

/-- `floor(3^n/2)*a(n-1)` -/
def P7001669596917139986.Spec : Prop :=
  ∀ n, P7001669596917139986.a n = A015001 n

end A015001

/-! ## A015001.P6285912304280568404

`a(n-1)*∑[floor(3^(n-1))]` with `a(0)=1`
-/

namespace A015001.P6285912304280568404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015001.P6285912304280568404

namespace A015001

/-- `a(n-1)*∑[floor(3^(n-1))]` -/
def P6285912304280568404.Spec : Prop :=
  ∀ n, P6285912304280568404.a n = A015001 n

end A015001

/-!
# A015002: q-factorial numbers for q=4.

The programs for A015002, the canonical program `A015002.P16208053078519046532` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015002 has offset 0).

The definition of A015002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015002.P16208053078519046532

`(4^n-1)*a(n-1)/3` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015002

/-- `(4^n-1)*a(n-1)/3` -/
def P16208053078519046532.Spec : Prop :=
  ∀ n, P16208053078519046532.a n = (A015002 n : ℚ)

end A015002

/-! ## A015002.P17709090707846147951

`∏[or(1, floor(4^n/3))]`
-/

namespace A015002.P17709090707846147951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(4 ^ n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015002.P17709090707846147951

namespace A015002

/-- `∏[or(1, floor(4^n/3))]` -/
def P17709090707846147951.Spec : Prop :=
  ∀ n, P17709090707846147951.a n = A015002 n

end A015002

/-! ## A015002.P5107702661020683778

`∏[4*a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A015002.P5107702661020683778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015002.P5107702661020683778

namespace A015002

/-- `∏[4*a(n-1)+1]` -/
def P5107702661020683778.Spec : Prop :=
  ∀ n, (P5107702661020683778.a n : ℤ) = A015002 n

end A015002

/-! ## A015002.P9066668263156457516

`∏[lcm(4, a(n-1))+1]` with `a(0)=1, a(1)=1`
-/

namespace A015002.P9066668263156457516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.lcm 4 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015002.P9066668263156457516

namespace A015002

/-- `∏[lcm(4, a(n-1))+1]` -/
def P9066668263156457516.Spec : Prop :=
  ∀ n, (P9066668263156457516.a n : ℤ) = A015002 n

end A015002

/-! ## A015002.P3100026530121461555

`∏[floor(4^n/3)+floor(acot(n))]`
-/

namespace A015002.P3100026530121461555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 3⌋ + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015002.P3100026530121461555

namespace A015002

/-- `∏[floor(4^n/3)+floor(acot(n))]` -/
def P3100026530121461555.Spec : Prop :=
  ∀ n, P3100026530121461555.a n = A015002 n

end A015002

/-!
# A015003: Inverse of 994th cyclotomic polynomial.

The programs for A015003, there is no canonical definition to state claims against.
-/

/-! ## A015003.P6893239221247587676

`A009001(2*n)*A014506(n)`
-/

namespace A015003.P6893239221247587676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A014506 n

end

end A015003.P6893239221247587676

/-!
# A015004: q-factorial numbers for q=5.

The programs for A015004, the canonical program `A015004.P17182177136544335324` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015004 has offset 0).

The definition of A015004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015004.P17182177136544335324

`(5^n-1)*a(n-1)/4` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015004

/-- `(5^n-1)*a(n-1)/4` -/
def P17182177136544335324.Spec : Prop :=
  ∀ n, P17182177136544335324.a n = (A015004 n : ℚ)

end A015004

/-! ## A015004.P11078615015167078436

`∏[1+5*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015004.P11078615015167078436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 + 5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015004.P11078615015167078436

namespace A015004

/-- `∏[1+5*a(n-1)]` -/
def P11078615015167078436.Spec : Prop :=
  ∀ n, (P11078615015167078436.a n : ℤ) = A015004 n

end A015004

/-! ## A015004.P12141156623412234948

`∏[floor(5^n/4)+floor(acot(n))]`
-/

namespace A015004.P12141156623412234948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n : ℚ) / 4⌋ + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015004.P12141156623412234948

namespace A015004

/-- `∏[floor(5^n/4)+floor(acot(n))]` -/
def P12141156623412234948.Spec : Prop :=
  ∀ n, P12141156623412234948.a n = A015004 n

end A015004

/-! ## A015004.P6434703976834148627

`∏[floor(5^n/4)^floor(atan(n))]`
-/

namespace A015004.P6434703976834148627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(5 ^ n : ℚ) / 4⌋ : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015004.P6434703976834148627

namespace A015004

/-- `∏[floor(5^n/4)^floor(atan(n))]` -/
def P6434703976834148627.Spec : Prop :=
  ∀ n, P6434703976834148627.a n = (A015004 n : ℚ)

end A015004

/-! ## A015004.P14152072290015274993

`floor(5^n/4)*a(n-1)` with `a(0)=1`
-/

namespace A015004.P14152072290015274993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(5 ^ n : ℚ) / 4⌋ * a (n - 1)

end

end A015004.P14152072290015274993

namespace A015004

/-- `floor(5^n/4)*a(n-1)` -/
def P14152072290015274993.Spec : Prop :=
  ∀ n, P14152072290015274993.a n = A015004 n

end A015004

/-!
# A015005: q-factorial numbers for q=6.

The programs for A015005, the canonical program `A015005.P15247733199297215773` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015005 has offset 0).

The definition of A015005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015005.P15247733199297215773

`(6^n-1)*a(n-1)/5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015005

/-- `(6^n-1)*a(n-1)/5` -/
def P15247733199297215773.Spec : Prop :=
  ∀ n, P15247733199297215773.a n = (A015005 n : ℚ)

end A015005

/-! ## A015005.P9469796752443850278

`∏[or(1, ∑[round(6^(n-1))])]`
-/

namespace A015005.P9469796752443850278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((6 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015005.P9469796752443850278

namespace A015005

/-- `∏[or(1, ∑[round(6^(n-1))])]` -/
def P9469796752443850278.Spec : Prop :=
  ∀ n, P9469796752443850278.a n = A015005 n

end A015005

/-! ## A015005.P17942454764041779441

`∏[1+6*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015005.P17942454764041779441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 + 6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015005.P17942454764041779441

namespace A015005

/-- `∏[1+6*a(n-1)]` -/
def P17942454764041779441.Spec : Prop :=
  ∀ n, (P17942454764041779441.a n : ℤ) = A015005 n

end A015005

/-! ## A015005.P11248598283235088660

`∏[lcm(6, a(n-1))+1]` with `a(0)=1, a(1)=1`
-/

namespace A015005.P11248598283235088660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.lcm 6 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015005.P11248598283235088660

namespace A015005

/-- `∏[lcm(6, a(n-1))+1]` -/
def P11248598283235088660.Spec : Prop :=
  ∀ n, (P11248598283235088660.a n : ℤ) = A015005 n

end A015005

/-! ## A015005.P16304128764227782208

`floor(6^n/5)*a(n-1)` with `a(0)=1`
-/

namespace A015005.P16304128764227782208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(6 ^ n : ℚ) / 5⌋ * a (n - 1)

end

end A015005.P16304128764227782208

namespace A015005

/-- `floor(6^n/5)*a(n-1)` -/
def P16304128764227782208.Spec : Prop :=
  ∀ n, P16304128764227782208.a n = A015005 n

end A015005

/-!
# A015006: q-factorial numbers for q=7.

The programs for A015006, the canonical program `A015006.P16749756804385553077` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015006 has offset 0).

The definition of A015006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015006.P16749756804385553077

`(7^n-1)*a(n-1)/6` with `a(0)=1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015006

/-- `(7^n-1)*a(n-1)/6` -/
def P16749756804385553077.Spec : Prop :=
  ∀ n, P16749756804385553077.a n = (A015006 n : ℚ)

end A015006

/-! ## A015006.P2524455963494128023

`∏[7*a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A015006.P2524455963494128023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  7 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015006.P2524455963494128023

namespace A015006

/-- `∏[7*a(n-1)+1]` -/
def P2524455963494128023.Spec : Prop :=
  ∀ n, (P2524455963494128023.a n : ℤ) = A015006 n

end A015006

/-! ## A015006.P12692493392399362744

`floor(7^n/6)*a(n-1)` with `a(0)=1`
-/

namespace A015006.P12692493392399362744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(7 ^ n : ℚ) / 6⌋ * a (n - 1)

end

end A015006.P12692493392399362744

namespace A015006

/-- `floor(7^n/6)*a(n-1)` -/
def P12692493392399362744.Spec : Prop :=
  ∀ n, P12692493392399362744.a n = A015006 n

end A015006

/-! ## A015006.P11737361184720114983

`∏[8-7*(1-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A015006.P11737361184720114983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  8 - 7 * (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015006.P11737361184720114983

namespace A015006

/-- `∏[8-7*(1-a(n-1))]` -/
def P11737361184720114983.Spec : Prop :=
  ∀ n, P11737361184720114983.a n = A015006 n

end A015006

/-! ## A015006.P14952886302067075546

`a(n-1)*A023000(n)` with `a(0)=1`
-/

namespace A015006.P14952886302067075546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A023000 n

end

end A015006.P14952886302067075546

namespace A015006

/-- `a(n-1)*A023000(n)` -/
def P14952886302067075546.Spec : Prop :=
  ∀ n, P14952886302067075546.a n = A015006 n

end A015006

/-!
# A015007: q-factorial numbers for q=8.

The programs for A015007, the canonical program `A015007.P10349093269710614436` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015007 has offset 0).

The definition of A015007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015007.P10349093269710614436

`(8^n-1)*a(n-1)/7` with `a(0)=1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015007

/-- `(8^n-1)*a(n-1)/7` -/
def P10349093269710614436.Spec : Prop :=
  ∀ n, P10349093269710614436.a n = (A015007 n : ℚ)

end A015007

/-! ## A015007.P18035485844474638062

`∏[or(1, ∑[floor(8^(n-1))])]`
-/

namespace A015007.P18035485844474638062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015007.P18035485844474638062

namespace A015007

/-- `∏[or(1, ∑[floor(8^(n-1))])]` -/
def P18035485844474638062.Spec : Prop :=
  ∀ n, P18035485844474638062.a n = A015007 n

end A015007

/-! ## A015007.P4007802914803366841

`∏[8*a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A015007.P4007802914803366841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  8 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015007.P4007802914803366841

namespace A015007

/-- `∏[8*a(n-1)+1]` -/
def P4007802914803366841.Spec : Prop :=
  ∀ n, (P4007802914803366841.a n : ℤ) = A015007 n

end A015007

/-! ## A015007.P11548781690150645812

`floor(8^n/7)*a(n-1)` with `a(0)=1`
-/

namespace A015007.P11548781690150645812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(8 ^ n : ℚ) / 7⌋ * a (n - 1)

end

end A015007.P11548781690150645812

namespace A015007

/-- `floor(8^n/7)*a(n-1)` -/
def P11548781690150645812.Spec : Prop :=
  ∀ n, P11548781690150645812.a n = A015007 n

end A015007

/-! ## A015007.P3767627195825398552

`A156883(∑[n+1]+n)`
-/

namespace A015007.P3767627195825398552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156883 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A015007.P3767627195825398552

namespace A015007

/-- `A156883(∑[n+1]+n)` -/
def P3767627195825398552.Spec : Prop :=
  ∀ n, P3767627195825398552.a n = A015007 n

end A015007

/-!
# A015008: q-factorial numbers for q=9.

The programs for A015008, the canonical program `A015008.P16387147393766979612` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015008 has offset 0).

The definition of A015008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015008.P16387147393766979612

`(9^n-1)*a(n-1)/8` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015008

/-- `(9^n-1)*a(n-1)/8` -/
def P16387147393766979612.Spec : Prop :=
  ∀ n, P16387147393766979612.a n = (A015008 n : ℚ)

end A015008

/-! ## A015008.P16451660757164417048

`∏[9*a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A015008.P16451660757164417048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  9 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015008.P16451660757164417048

namespace A015008

/-- `∏[9*a(n-1)+1]` -/
def P16451660757164417048.Spec : Prop :=
  ∀ n, (P16451660757164417048.a n : ℤ) = A015008 n

end A015008

/-! ## A015008.P15801419916811413249

`∏[lcm(9, a(n-1))+1]` with `a(0)=1, a(1)=1`
-/

namespace A015008.P15801419916811413249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.lcm 9 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015008.P15801419916811413249

namespace A015008

/-- `∏[lcm(9, a(n-1))+1]` -/
def P15801419916811413249.Spec : Prop :=
  ∀ n, (P15801419916811413249.a n : ℤ) = A015008 n

end A015008

/-! ## A015008.P80600018829359441

`a(n-1)*∑[floor(9^(n-1))]` with `a(0)=1`
-/

namespace A015008.P80600018829359441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015008.P80600018829359441

namespace A015008

/-- `a(n-1)*∑[floor(9^(n-1))]` -/
def P80600018829359441.Spec : Prop :=
  ∀ n, P80600018829359441.a n = A015008 n

end A015008

/-! ## A015008.P3535001560909828016

`a(n-1)+(3*a(n-1))²/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015008.P3535001560909828016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (3 * a (n - 1)) ^ 2 / a (n - 2)

end

end A015008.P3535001560909828016

namespace A015008

/-- `a(n-1)+(3*a(n-1))²/a(n-2)` -/
def P3535001560909828016.Spec : Prop :=
  ∀ n, P3535001560909828016.a n = (A015008 n : ℚ)

end A015008

/-!
# A015009: q-factorial numbers for q=10.

The programs for A015009, the canonical program `A015009.P12255071492626218849` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015009 has offset 0).

The definition of A015009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015009.P12255071492626218849

`(10^n-1)*a(n-1)/9` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015009

/-- `(10^n-1)*a(n-1)/9` -/
def P12255071492626218849.Spec : Prop :=
  ∀ n, P12255071492626218849.a n = (A015009 n : ℚ)

end A015009

/-! ## A015009.P14540252567128020493

`∏[or(1, floor(10^n/9))]`
-/

namespace A015009.P14540252567128020493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(10 ^ n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015009.P14540252567128020493

namespace A015009

/-- `∏[or(1, floor(10^n/9))]` -/
def P14540252567128020493.Spec : Prop :=
  ∀ n, P14540252567128020493.a n = A015009 n

end A015009

/-! ## A015009.P15027914713072995753

`∏[10*a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A015009.P15027914713072995753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  10 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015009.P15027914713072995753

namespace A015009

/-- `∏[10*a(n-1)+1]` -/
def P15027914713072995753.Spec : Prop :=
  ∀ n, (P15027914713072995753.a n : ℤ) = A015009 n

end A015009

/-! ## A015009.P17946967078211968763

`∏[xor(1, 10*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A015009.P17946967078211968763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.xor 1 (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015009.P17946967078211968763

namespace A015009

/-- `∏[xor(1, 10*a(n-1))]` -/
def P17946967078211968763.Spec : Prop :=
  ∀ n, (P17946967078211968763.a n : ℤ) = A015009 n

end A015009

/-! ## A015009.P14913821221185219016

`∏[floor(10^n/9)+floor(acot(n))]`
-/

namespace A015009.P14913821221185219016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015009.P14913821221185219016

namespace A015009

/-- `∏[floor(10^n/9)+floor(acot(n))]` -/
def P14913821221185219016.Spec : Prop :=
  ∀ n, P14913821221185219016.a n = A015009 n

end A015009

/-!
# A015010: Inverse of 1001st cyclotomic polynomial.

The programs for A015010, there is no canonical definition to state claims against.
-/

/-! ## A015010.P404530302463398536

`A016011(n)*A033999(n)`
-/

namespace A015010.P404530302463398536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016011 n * A033999 n

end

end A015010.P404530302463398536

/-!
# A015011: q-factorial numbers for q=11.

The programs for A015011, the canonical program `A015011.P876427803233427724` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015011 has offset 0).

The definition of A015011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015011.P876427803233427724

`(11^n-1)*a(n-1)/10` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A015011

/-- `(11^n-1)*a(n-1)/10` -/
def P876427803233427724.Spec : Prop :=
  ∀ n, P876427803233427724.a n = (A015011 n : ℚ)

end A015011

/-! ## A015011.P16981029166984319211

`∏[11*a(n-1)+1]` with `a(0)=1, a(1)=1`
-/

namespace A015011.P16981029166984319211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  11 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015011.P16981029166984319211

namespace A015011

/-- `∏[11*a(n-1)+1]` -/
def P16981029166984319211.Spec : Prop :=
  ∀ n, (P16981029166984319211.a n : ℤ) = A015011 n

end A015011

/-! ## A015011.P11754620719496506396

`a(n-1)*∑[floor(11^(n-1))]` with `a(0)=1`
-/

namespace A015011.P11754620719496506396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015011.P11754620719496506396

namespace A015011

/-- `a(n-1)*∑[floor(11^(n-1))]` -/
def P11754620719496506396.Spec : Prop :=
  ∀ n, P11754620719496506396.a n = A015011 n

end A015011

/-! ## A015011.P2677504724372230663

`(A047856(n)-1)*a(n-1)` with `a(0)=1`
-/

namespace A015011.P2677504724372230663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A047856 n - 1) * a (n - 1)

end

end A015011.P2677504724372230663

namespace A015011

/-- `(A047856(n)-1)*a(n-1)` -/
def P2677504724372230663.Spec : Prop :=
  ∀ n, P2677504724372230663.a n = A015011 n

end A015011

/-! ## A015011.P11862340669588469232

`A027879(n)/A011557(n)`
-/

namespace A015011.P11862340669588469232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027879 n : ℚ) / (A011557 n : ℚ)

end

end A015011.P11862340669588469232

namespace A015011

/-- `A027879(n)/A011557(n)` -/
def P11862340669588469232.Spec : Prop :=
  ∀ n, P11862340669588469232.a n = (A015011 n : ℚ)

end A015011

/-!
# A015012: Inverse of 1003rd cyclotomic polynomial.

The programs for A015012, there is no canonical definition to state claims against.
-/

/-! ## A015012.P761600268510964549

`round(A016015(n)/A280193(n))`
-/

namespace A015012.P761600268510964549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016015 n : ℚ) / (A280193 n : ℚ))

end

end A015012.P761600268510964549

/-! ## A015012.P5240044407509495644

`2-A279041(A348385(n+1))`
-/

namespace A015012.P5240044407509495644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A279041 (A348385 (n + 1)).toNat

end

end A015012.P5240044407509495644

/-! ## A015012.P15381497485500088124

`A015918(lt[A015918(3*n+2), A263978(n+3)])`
-/

namespace A015012.P15381497485500088124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263978 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015012.P15381497485500088124

/-!
# A015013: q-factorial numbers for q=-2.

The programs for A015013, there is no canonical definition to state claims against.
-/

/-! ## A015013.P8349951434867671437

`∏[1-2*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015013.P8349951434867671437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015013.P8349951434867671437

/-! ## A015013.P10050266320886804896

`∏[1-a(n-1)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015013.P10050266320886804896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015013.P10050266320886804896

/-! ## A015013.P11329702548445012889

`a(n-1)*Δ[n+2-2*a(n-1)]` with `a(0)=1`
-/

namespace A015013.P11329702548445012889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 2 : ℤ) - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A015013.P11329702548445012889

/-! ## A015013.P1598211232959460784

`(1-2*a(n-1)/a(n-2))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A015013.P1598211232959460784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - 2 * (a (n - 1) / a (n - 2))) * a (n - 1)

end

end A015013.P1598211232959460784

/-! ## A015013.P4435928283532696280

`a(n-1)-2*a(n-1)²/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015013.P4435928283532696280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 2 * (a (n - 1) ^ 2 / a (n - 2))

end

end A015013.P4435928283532696280

/-!
# A015014: Inverse of 1005th cyclotomic polynomial.

The programs for A015014, there is no canonical definition to state claims against.
-/

/-! ## A015014.P10426149212037912370

`A016019(n)*A033999(n)`
-/

namespace A015014.P10426149212037912370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016019 n * A033999 n

end

end A015014.P10426149212037912370

/-!
# A015015: q-factorial numbers for q=-3.

The programs for A015015, there is no canonical definition to state claims against.
-/

/-! ## A015015.P11498949973386389836

`∏[1-3*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015015.P11498949973386389836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015015.P11498949973386389836

/-! ## A015015.P5341377524250465646

`(1-(-3)^n)/4*a(n-1)` with `a(0)=1`
-/

namespace A015015.P5341377524250465646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (-3) ^ n : ℚ) / 4 * a (n - 1)

end

end A015015.P5341377524250465646

/-! ## A015015.P5219452464991405031

`∏[1-a(n-1)-a(n-1)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015015.P5219452464991405031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015015.P5219452464991405031

/-! ## A015015.P13244504039942239696

`a(n-1)*A014983(n)` with `a(0)=1`
-/

namespace A015015.P13244504039942239696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014983 n

end

end A015015.P13244504039942239696

/-! ## A015015.P10344578080245048139

`a(n-1)-3*a(n-1)²/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015015.P10344578080245048139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 3 * (a (n - 1) ^ 2 / a (n - 2))

end

end A015015.P10344578080245048139

/-!
# A015016: Inverse of 1007th cyclotomic polynomial.

The programs for A015016, there is no canonical definition to state claims against.
-/

/-! ## A015016.P4249814524965369727

`A016023(n)*A033999(n)`
-/

namespace A015016.P4249814524965369727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016023 n * A033999 n

end

end A015016.P4249814524965369727

/-! ## A015016.P15688064669784954625

`A014256(A130805(n+4)%A000720(2*n+5))`
-/

namespace A015016.P15688064669784954625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014256 (Int.tmod (A130805 (n + 4)) (A000720 (2 * n + 5))).toNat

end

end A015016.P15688064669784954625

/-! ## A015016.P14943722059235189618

`A015918(A356841(n+1)+A316864(n))`
-/

namespace A015016.P14943722059235189618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (A356841 (n + 1) + A316864 n).toNat

end

end A015016.P14943722059235189618

/-! ## A015016.P4686825118509903887

`A015918(A356841(n+1)+A007814(n+1))`
-/

namespace A015016.P4686825118509903887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (A356841 (n + 1) + A007814 (n + 1)).toNat

end

end A015016.P4686825118509903887

/-! ## A015016.P2319446812548812083

`∑[A010815(∑[A327102(n+1)])]`
-/

namespace A015016.P2319446812548812083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327102 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015016.P2319446812548812083

/-! ## A015016.P7109481732465623250

`A330961(A280513(n+3)+n)`
-/

namespace A015016.P7109481732465623250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330961 (A280513 (n + 3) + (n : ℤ)).toNat

end

end A015016.P7109481732465623250

/-! ## A015016.P10170475301270138284

`floor(A088478(n+1)/A088479(n+1))`
-/

namespace A015016.P10170475301270138284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088478 (n + 1) : ℚ) / (A088479 (n + 1) : ℚ)⌋

end

end A015016.P10170475301270138284

/-! ## A015016.P10906976012800000240

`C(A002262(A173924(n)), A326542(n))`
-/

namespace A015016.P10906976012800000240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (A173924 n).toNat).toNat (A326542 n).toNat

end

end A015016.P10906976012800000240

/-!
# A015017: q-factorial numbers for q=-4.

The programs for A015017, there is no canonical definition to state claims against.
-/

/-! ## A015017.P6880536835195316241

`∏[1-4*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015017.P6880536835195316241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015017.P6880536835195316241

/-! ## A015017.P13499246825128200629

`(1-4*a(n-1)/a(n-2))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A015017.P13499246825128200629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - 4 * (a (n - 1) / a (n - 2))) * a (n - 1)

end

end A015017.P13499246825128200629

/-! ## A015017.P8935147957011432297

`a(n-1)*A014985(n)` with `a(0)=1`
-/

namespace A015017.P8935147957011432297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014985 n

end

end A015017.P8935147957011432297

/-! ## A015017.P55888965954814591

`∏[A014985(n+1)]/A014985(n+1)`
-/

namespace A015017.P55888965954814591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014985 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014985 (n + 1) : ℚ)

end

end A015017.P55888965954814591

/-! ## A015017.P10084088969573587342

`a(n-1)-(2*a(n-1))²/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015017.P10084088969573587342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (2 * a (n - 1)) ^ 2 / a (n - 2)

end

end A015017.P10084088969573587342

/-!
# A015018: q-factorial numbers for q=-5.

The programs for A015018, there is no canonical definition to state claims against.
-/

/-! ## A015018.P8318142423775785387

`∏[1-5*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015018.P8318142423775785387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015018.P8318142423775785387

/-! ## A015018.P16214929667982342643

`∏[A014986(n+1)]/A014986(n+1)`
-/

namespace A015018.P16214929667982342643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014986 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014986 (n + 1) : ℚ)

end

end A015018.P16214929667982342643

/-! ## A015018.P3232111133451775710

`a(n-1)-5*a(n-1)²/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015018.P3232111133451775710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 5 * (a (n - 1) ^ 2 / a (n - 2))

end

end A015018.P3232111133451775710

/-!
# A015019: q-factorial numbers for q=-6.

The programs for A015019, there is no canonical definition to state claims against.
-/

/-! ## A015019.P8477265490641211527

`a(n-1)*A014987(n)` with `a(0)=1`
-/

namespace A015019.P8477265490641211527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014987 n

end

end A015019.P8477265490641211527

/-! ## A015019.P8737380884830262626

`∏[A014987(n+1)]/A014987(n+1)`
-/

namespace A015019.P8737380884830262626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014987 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014987 (n + 1) : ℚ)

end

end A015019.P8737380884830262626

/-!
# A015020: q-factorial numbers for q=-7.

The programs for A015020, there is no canonical definition to state claims against.
-/

/-! ## A015020.P60486657941291966

`a(n-1)*A014989(n)` with `a(0)=1`
-/

namespace A015020.P60486657941291966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014989 n

end

end A015020.P60486657941291966

/-! ## A015020.P4113360195857923861

`∏[A015117(A000124(n))]`
-/

namespace A015020.P4113360195857923861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015020.P4113360195857923861

/-! ## A015020.P5785304225975597560

`∏[A014989(n+1)]/A014989(n+1)`
-/

namespace A015020.P5785304225975597560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014989 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014989 (n + 1) : ℚ)

end

end A015020.P5785304225975597560

/-!
# A015021: Inverse of 1012th cyclotomic polynomial.

The programs for A015021, there is no canonical definition to state claims against.
-/

/-! ## A015021.P10957004943920580216

`(n+1)%2*A014515(lcm(2, n)/2)`
-/

namespace A015021.P10957004943920580216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A014515 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A015021.P10957004943920580216

/-! ## A015021.P8814058209118309671

`(n+1)%2*A014515(A006370(n))`
-/

namespace A015021.P8814058209118309671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A014515 (A006370 n).toNat

end

end A015021.P8814058209118309671

/-! ## A015021.P6074395095434988230

`A016033(A022998(n))`
-/

namespace A015021.P6074395095434988230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016033 (A022998 n).toNat

end

end A015021.P6074395095434988230

/-! ## A015021.P11113592843536501884

`A016033(A026185(n))`
-/

namespace A015021.P11113592843536501884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016033 (A026185 n).toNat

end

end A015021.P11113592843536501884

/-! ## A015021.P13304199879111852504

`A016033(A265723(n))`
-/

namespace A015021.P13304199879111852504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016033 (A265723 n).toNat

end

end A015021.P13304199879111852504

/-! ## A015021.P18220200872949386090

`A016033(A266073(n))`
-/

namespace A015021.P18220200872949386090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016033 (A266073 n).toNat

end

end A015021.P18220200872949386090

/-! ## A015021.P14250600058773131961

`A016033(A265722(n+1))`
-/

namespace A015021.P14250600058773131961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016033 (A265722 (n + 1)).toNat

end

end A015021.P14250600058773131961

/-! ## A015021.P4254713147516848730

`A016033(2*n)`
-/

namespace A015021.P4254713147516848730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016033 (2 * n)

end

end A015021.P4254713147516848730

/-! ## A015021.P2844033449893668134

`A016033(A005843(n))^3`
-/

namespace A015021.P2844033449893668134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016033 (A005843 n).toNat ^ 3

end

end A015021.P2844033449893668134

/-!
# A015022: q-factorial numbers for q=-8.

The programs for A015022, there is no canonical definition to state claims against.
-/

/-! ## A015022.P7601193514300228928

`a(n-1)*A014990(n)` with `a(0)=1`
-/

namespace A015022.P7601193514300228928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014990 n

end

end A015022.P7601193514300228928

/-! ## A015022.P11240015419345401788

`∏[A015118(Δ[A004006(n)])]`
-/

namespace A015022.P11240015419345401788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015022.P11240015419345401788

/-! ## A015022.P9567319645980165923

`∏[A015118(A000217(n)+1)]`
-/

namespace A015022.P9567319645980165923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (A000217 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015022.P9567319645980165923

/-! ## A015022.P120645722430044364

`∏[A014990(n+1)]/A014990(n+1)`
-/

namespace A015022.P120645722430044364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014990 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014990 (n + 1) : ℚ)

end

end A015022.P120645722430044364

/-!
# A015023: q-factorial numbers for q=-9.

The programs for A015023, there is no canonical definition to state claims against.
-/

/-! ## A015023.P3584972947865146513

`a(n-1)*A014991(n)` with `a(0)=1`
-/

namespace A015023.P3584972947865146513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014991 n

end

end A015023.P3584972947865146513

/-! ## A015023.P4571769884103580305

`∏[A014991(n+1)]/A014991(n+1)`
-/

namespace A015023.P4571769884103580305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014991 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014991 (n + 1) : ℚ)

end

end A015023.P4571769884103580305

/-! ## A015023.P2381436525866329979

`a(n-1)-(3*a(n-1))²/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A015023.P2381436525866329979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (3 * a (n - 1)) ^ 2 / a (n - 2)

end

end A015023.P2381436525866329979

/-! ## A015023.P3710170268255429499

`∏[A002173(∏[A165118(n+3)])]`
-/

namespace A015023.P3710170268255429499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165118 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015023.P3710170268255429499

/-!
# A015024: Inverse of 1015th cyclotomic polynomial.

The programs for A015024, there is no canonical definition to state claims against.
-/

/-! ## A015024.P5264645845601030141

`A016039(n)*A033999(n)`
-/

namespace A015024.P5264645845601030141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016039 n * A033999 n

end

end A015024.P5264645845601030141

/-!
# A015025: q-factorial numbers for q=-10.

The programs for A015025, there is no canonical definition to state claims against.
-/

/-! ## A015025.P14397701472981453625

`a(n-1)*A014992(n)` with `a(0)=1`
-/

namespace A015025.P14397701472981453625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014992 n

end

end A015025.P14397701472981453625

/-! ## A015025.P5689745333242155680

`A015123(∑[n]+1)*a(n-1)` with `a(0)=1`
-/

namespace A015025.P5689745333242155680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015123 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * a (n - 1)

end

end A015025.P5689745333242155680

/-! ## A015025.P5326492884655040757

`∏[A014992(n+1)]/A014992(n+1)`
-/

namespace A015025.P5326492884655040757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014992 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014992 (n + 1) : ℚ)

end

end A015025.P5326492884655040757

/-!
# A015026: q-factorial numbers for q=-11.

The programs for A015026, there is no canonical definition to state claims against.
-/

/-! ## A015026.P14417468031919288962

`∏[1-11*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A015026.P14417468031919288962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 11 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A015026.P14417468031919288962

/-! ## A015026.P13998006924041777128

`a(n-1)*A014993(n)` with `a(0)=1`
-/

namespace A015026.P13998006924041777128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014993 n

end

end A015026.P13998006924041777128

/-!
# A015027: q-factorial numbers for q=-12.

The programs for A015027, there is no canonical definition to state claims against.
-/

/-! ## A015027.P2398112037038801582

`∏[∑[(-12)^n]]/∑[(-12)^n]`
-/

namespace A015027.P2398112037038801582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-12) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-12) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ)

end

end A015027.P2398112037038801582

/-!
# A015028: q-factorial numbers for q=-13.

The programs for A015028, there is no canonical definition to state claims against.
-/

/-! ## A015028.P4325520934281040350

`A015129(A000124(n))*a(n-1)` with `a(0)=1`
-/

namespace A015028.P4325520934281040350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015129 (A000124 n).toNat * a (n - 1)

end

end A015028.P4325520934281040350

/-! ## A015028.P10696013967816156540

`∏[A015000(n+1)]/A015000(n+1)`
-/

namespace A015028.P10696013967816156540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015000 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A015000 (n + 1) : ℚ)

end

end A015028.P10696013967816156540

/-!
# A015029: Inverse of 1020th cyclotomic polynomial.

The programs for A015029, there is no canonical definition to state claims against.
-/

/-! ## A015029.P8961382813022838213

`A016049(A022998(n))`
-/

namespace A015029.P8961382813022838213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (A022998 n).toNat

end

end A015029.P8961382813022838213

/-!
# A015030: q-Catalan numbers (binomial version) for q=2.

The programs for A015030, there is no canonical definition to state claims against.
-/

/-! ## A015030.P5041029007300318132

`(-1)^n*A136097(n)`
-/

namespace A015030.P5041029007300318132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A136097 n

end

end A015030.P5041029007300318132

/-! ## A015030.P14176611053289559670

`abs(A136097(n))`
-/

namespace A015030.P14176611053289559670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136097 n|

end

end A015030.P14176611053289559670

/-! ## A015030.P16876871049767482197

`A006098(n)/∑[2*a(n-1)]` with `a(0)=1`
-/

namespace A015030.P16876871049767482197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006098 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A015030.P16876871049767482197

/-! ## A015030.P15110105453967371514

`A006098(n)/∑[A000079(n)]`
-/

namespace A015030.P15110105453967371514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006098 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A015030.P15110105453967371514

/-! ## A015030.P2272169595975936759

`A006098(n)/A000225(n+1)`
-/

namespace A015030.P2272169595975936759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006098 n : ℚ) / (A000225 (n + 1) : ℚ)

end

end A015030.P2272169595975936759

/-!
# A015031: Inverse of 1022nd cyclotomic polynomial.

The programs for A015031, there is no canonical definition to state claims against.
-/

/-! ## A015031.P13418176933387671702

`A009001(2*n)*A014520(n)`
-/

namespace A015031.P13418176933387671702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A014520 n

end

end A015031.P13418176933387671702

/-! ## A015031.P15482195828579996963

`A016053(2*n)`
-/

namespace A015031.P15482195828579996963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016053 (2 * n)

end

end A015031.P15482195828579996963

/-! ## A015031.P11370564413040547341

`(-C(A195830(n+1), n))^n`
-/

namespace A015031.P11370564413040547341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.choose (A195830 (n + 1)).toNat n : ℤ)) ^ n

end

end A015031.P11370564413040547341

/-! ## A015031.P13438883399563682641

`(-floor(A172311(n)/A000041(n)))^n`
-/

namespace A015031.P13438883399563682641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-⌊(A172311 n : ℚ) / (A000041 n : ℚ)⌋) ^ n

end

end A015031.P13438883399563682641

/-! ## A015031.P2511795720955599412

`(A055642(A361780(n+2))-2)*a(n-1)` with `a(0)=1`
-/

namespace A015031.P2511795720955599412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A055642 (A361780 (n + 2)).toNat - 2) * a (n - 1)

end

end A015031.P2511795720955599412

/-! ## A015031.P7368335069305825025

`(A164529(n+1)-∑[A010051(n+2)])*a(n-1)` with `a(0)=1`
-/

namespace A015031.P7368335069305825025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A164529 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1)

end

end A015031.P7368335069305825025

/-!
# A015032: Inverse of 1023rd cyclotomic polynomial.

The programs for A015032, there is no canonical definition to state claims against.
-/

/-! ## A015032.P14752388739956439099

`A016055(n)*A033999(n)`
-/

namespace A015032.P14752388739956439099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016055 n * A033999 n

end

end A015032.P14752388739956439099

/-!
# A015033: q-Catalan numbers (binomial version) for q=3.

The programs for A015033, there is no canonical definition to state claims against.
-/

/-! ## A015033.P16498263643960135367

`A006103(n)/∑[A000244(n)]`
-/

namespace A015033.P16498263643960135367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006103 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A015033.P16498263643960135367

/-! ## A015033.P16679555260522899363

`A006103(n)/A003462(n+1)`
-/

namespace A015033.P16679555260522899363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006103 n : ℚ) / (A003462 (n + 1) : ℚ)

end

end A015033.P16679555260522899363

/-! ## A015033.P11624433996100060690

`gcd(A006103(n), A006104(2*n+1))`
-/

namespace A015033.P11624433996100060690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006103 n) (A006104 (2 * n + 1))

end

end A015033.P11624433996100060690

/-!
# A015034: q-Catalan numbers (binomial version) for q=4.

The programs for A015034, there is no canonical definition to state claims against.
-/

/-! ## A015034.P15358978342259210413

`A006109(2*n)/A097038(2*n+1)`
-/

namespace A015034.P15358978342259210413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006109 (2 * n) : ℚ) / (A097038 (2 * n + 1) : ℚ)

end

end A015034.P15358978342259210413

/-! ## A015034.P17544220074089598955

`A006108(n)/(A076024(n+1)+A006095(n+1))`
-/

namespace A015034.P17544220074089598955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006108 n : ℚ) / (A076024 (n + 1) + A006095 (n + 1) : ℚ)

end

end A015034.P17544220074089598955

/-! ## A015034.P5345479189493797958

`gcd(Δ[A006108(n)], A006108(n))`
-/

namespace A015034.P5345479189493797958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A006108 n)

end

end A015034.P5345479189493797958

/-!
# A015035: q-Catalan numbers (binomial version) for q=5.

The programs for A015035, there is no canonical definition to state claims against.
-/

/-! ## A015035.P12988247167454465217

`gcd(A006114(n), A006115(2*n+1))`
-/

namespace A015035.P12988247167454465217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006114 n) (A006115 (2 * n + 1))

end

end A015035.P12988247167454465217

/-!
# A015036: Inverse of 1027th cyclotomic polynomial.

The programs for A015036, there is no canonical definition to state claims against.
-/

/-! ## A015036.P16148784130796962653

`A016063(A005811(n))*A016063(n)`
-/

namespace A015036.P16148784130796962653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016063 (A005811 n).toNat * A016063 n

end

end A015036.P16148784130796962653

/-! ## A015036.P14510836012755999796

`A015437(A151922(n))+A015420(n+4)`
-/

namespace A015036.P14510836012755999796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015437 (A151922 n).toNat + A015420 (n + 4)

end

end A015036.P14510836012755999796

/-! ## A015036.P4413310929109932756

`A015420(n+4)*A015420(A352425(n+1))`
-/

namespace A015036.P4413310929109932756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015420 (n + 4) * A015420 (A352425 (n + 1)).toNat

end

end A015036.P4413310929109932756

/-! ## A015036.P12372078008044399993

`A015658(∑[A304118(a(n-1)+n+1)])` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=-1, a(5)=-1, a(6)=8`
-/

namespace A015036.P12372078008044399993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, -1, -1, 8] fun n f1 =>
  A304118 (f1 (n - 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015036.P12372078008044399993

/-! ## A015036.P8953214130912234282

`round(root(A157684(n+1), -2))`
-/

namespace A015036.P8953214130912234282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157684 (n + 1) : ℝ) ^ (1 / (-2 : ℝ)))

end

end A015036.P8953214130912234282

/-! ## A015036.P4805138958974752032

`round(2/A156081(n+4))^n`
-/

namespace A015036.P4805138958974752032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A156081 (n + 4) : ℚ)) ^ n

end

end A015036.P4805138958974752032

/-! ## A015036.P3408799803353873004

`A000007(A185227(n+1))`
-/

namespace A015036.P3408799803353873004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A185227 (n + 1)).toNat

end

end A015036.P3408799803353873004

/-! ## A015036.P12819050801045691710

`A010056(A341455(n+8))`
-/

namespace A015036.P12819050801045691710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A341455 (n + 8)).toNat

end

end A015036.P12819050801045691710

/-! ## A015036.P7057511045223730504

`C(runs[A145271(n)], A307825(n))`
-/

namespace A015036.P7057511045223730504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145271 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n) (A307825 n).toNat

end

end A015036.P7057511045223730504

/-! ## A015036.P15843626288708900163

`A202022(A003106(n+2)+1)`
-/

namespace A015036.P15843626288708900163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 (A003106 (n + 2) + 1).toNat

end

end A015036.P15843626288708900163

/-!
# A015039: q-Catalan numbers (binomial version) for q=8.

The programs for A015039, there is no canonical definition to state claims against.
-/

/-! ## A015039.P17717096803721574433

`A022172(A046092(n))/A023001(n+1)`
-/

namespace A015039.P17717096803721574433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022172 (A046092 n).toNat : ℚ) / (A023001 (n + 1) : ℚ)

end

end A015039.P17717096803721574433

/-!
# A015043: Inverse of 1034th cyclotomic polynomial.

The programs for A015043, there is no canonical definition to state claims against.
-/

/-! ## A015043.P13725220208779252040

`A014526(n)*A033999(n)`
-/

namespace A015043.P13725220208779252040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014526 n * A033999 n

end

end A015043.P13725220208779252040

/-!
# A015044: Inverse of 1035th cyclotomic polynomial.

The programs for A015044, there is no canonical definition to state claims against.
-/

/-! ## A015044.P9484642225171399890

`A010892(n)*A016079(n)`
-/

namespace A015044.P9484642225171399890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A016079 n

end

end A015044.P9484642225171399890

/-!
# A015045: Inverse of 1036th cyclotomic polynomial.

The programs for A015045, there is no canonical definition to state claims against.
-/

/-! ## A015045.P5714849122253960663

`A015493(lt[A355748(n), 6])`
-/

namespace A015045.P5714849122253960663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355748 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015493 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015045.P5714849122253960663

/-!
# A015046: Inverse of 1037th cyclotomic polynomial.

The programs for A015046, there is no canonical definition to state claims against.
-/

/-! ## A015046.P12303754126379696806

`A015012(A103517(n)-A080907(n+1))`
-/

namespace A015046.P12303754126379696806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 (A103517 n - A080907 (n + 1)).toNat

end

end A015046.P12303754126379696806

/-!
# A015049: Let m = A013929(n); then a(n) = smallest k such that m divides k^2.

The programs for A015049, the canonical program `A015049.P304313966047543276` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015049 has offset 1).

The definition of A015049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A015049.P304313966047543276

`A019554(A013929(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A015049

/-- `A019554(A013929(n+1))` -/
def P304313966047543276.Spec : Prop :=
  ∀ n, P304313966047543276.a n = A015049 (n + 1)

theorem P304313966047543276.correct : P304313966047543276.Spec := by
  intro n
  simp only [A015049, Nat.add_sub_cancel]

end A015049

/-! ## A015049.P16543387747379504150

`A013929(n+1)/A087050(n+1)`
-/

namespace A015049.P16543387747379504150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A087050 (n + 1) : ℚ)

end

end A015049.P16543387747379504150

namespace A015049

/-- `A013929(n+1)/A087050(n+1)` -/
def P16543387747379504150.Spec : Prop :=
  ∀ n, P16543387747379504150.a n = (A015049 (n + 1) : ℚ)

end A015049

/-! ## A015049.P13832089424706862502

`lt[0, A105570(n)]/A087050(n+1)`
-/

namespace A015049.P13832089424706862502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / (A087050 (n + 1) : ℚ)

end

end A015049.P13832089424706862502

namespace A015049

/-- `lt[0, A105570(n)]/A087050(n+1)` -/
def P13832089424706862502.Spec : Prop :=
  ∀ n, P13832089424706862502.a n = (A015049 (n + 1) : ℚ)

end A015049

/-! ## A015049.P15346329914750650440

`A007913(lt[0, A105570(n)])*A087050(n+1)`
-/

namespace A015049.P15346329914750650440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A087050 (n + 1)

end

end A015049.P15346329914750650440

namespace A015049

/-- `A007913(lt[0, A105570(n)])*A087050(n+1)` -/
def P15346329914750650440.Spec : Prop :=
  ∀ n, P15346329914750650440.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P18073333955568021222

`A007913(lt[1, n*A087049(n)])*A087050(n+1)`
-/

namespace A015049.P18073333955568021222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A087050 (n + 1)

end

end A015049.P18073333955568021222

namespace A015049

/-- `A007913(lt[1, n*A087049(n)])*A087050(n+1)` -/
def P18073333955568021222.Spec : Prop :=
  ∀ n, P18073333955568021222.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P6140366709712308179

`A007913(lt[A008683(n+2)², 1]+2)*A087050(n+1)`
-/

namespace A015049.P6140366709712308179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) * A087050 (n + 1)

end

end A015049.P6140366709712308179

namespace A015049

/-- `A007913(lt[A008683(n+2)², 1]+2)*A087050(n+1)` -/
def P6140366709712308179.Spec : Prop :=
  ∀ n, P6140366709712308179.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P11391867490839183618

`A019554(A162966(n+2))`
-/

namespace A015049.P11391867490839183618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A162966 (n + 2)).toNat

end

end A015049.P11391867490839183618

namespace A015049

/-- `A019554(A162966(n+2))` -/
def P11391867490839183618.Spec : Prop :=
  ∀ n, P11391867490839183618.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P1588692953075755270

`A019554(lt[1, A000188(n+1)]+1)`
-/

namespace A015049.P1588692953075755270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A015049.P1588692953075755270

namespace A015049

/-- `A019554(lt[1, A000188(n+1)]+1)` -/
def P1588692953075755270.Spec : Prop :=
  ∀ n, P1588692953075755270.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P9927058026290500154

`A019554(lt[1, A000688(n+1)]+1)`
-/

namespace A015049.P9927058026290500154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A015049.P9927058026290500154

namespace A015049

/-- `A019554(lt[1, A000688(n+1)]+1)` -/
def P9927058026290500154.Spec : Prop :=
  ∀ n, P9927058026290500154.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P15918095463961944607

`A019554(lt[1, A008833(n+1)]+1)`
-/

namespace A015049.P15918095463961944607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A015049.P15918095463961944607

namespace A015049

/-- `A019554(lt[1, A008833(n+1)]+1)` -/
def P15918095463961944607.Spec : Prop :=
  ∀ n, P15918095463961944607.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P9733863931702698638

`A056134(lt[1, A005361(n+1)]+1)`
-/

namespace A015049.P9733863931702698638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A015049.P9733863931702698638

namespace A015049

/-- `A056134(lt[1, A005361(n+1)]+1)` -/
def P9733863931702698638.Spec : Prop :=
  ∀ n, P9733863931702698638.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P10140588777468380074

`A056134(A013929(2*n+1-n))`
-/

namespace A015049.P10140588777468380074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056134 (A013929 (2 * n + 1 - n)).toNat

end

end A015049.P10140588777468380074

namespace A015049

/-- `A056134(A013929(2*n+1-n))` -/
def P10140588777468380074.Spec : Prop :=
  ∀ n, P10140588777468380074.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P10707306905772633764

`A019554(lt[A019554(n+1), n]+1)`
-/

namespace A015049.P10707306905772633764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A015049.P10707306905772633764

namespace A015049

/-- `A019554(lt[A019554(n+1), n]+1)` -/
def P10707306905772633764.Spec : Prop :=
  ∀ n, P10707306905772633764.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P6387387274665019126

`A056134(lt[A007913(n+1), n]+1)`
-/

namespace A015049.P6387387274665019126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056134 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A015049.P6387387274665019126

namespace A015049

/-- `A056134(lt[A007913(n+1), n]+1)` -/
def P6387387274665019126.Spec : Prop :=
  ∀ n, P6387387274665019126.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P5418690288811252078

`A056134(lt[A056134(n+1), n]+1)`
-/

namespace A015049.P5418690288811252078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056134 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056134 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A015049.P5418690288811252078

namespace A015049

/-- `A056134(lt[A056134(n+1), n]+1)` -/
def P5418690288811252078.Spec : Prop :=
  ∀ n, P5418690288811252078.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P16273365151174786293

`A019554(eq[0, C(A019554(n+1), n)]+1)`
-/

namespace A015049.P16273365151174786293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A019554 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A015049.P16273365151174786293

namespace A015049

/-- `A019554(eq[0, C(A019554(n+1), n)]+1)` -/
def P16273365151174786293.Spec : Prop :=
  ∀ n, P16273365151174786293.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P2124545286253140509

`A019554(A072905(A292145(n+1)))`
-/

namespace A015049.P2124545286253140509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A072905 (A292145 (n + 1)).toNat).toNat

end

end A015049.P2124545286253140509

namespace A015049

/-- `A019554(A072905(A292145(n+1)))` -/
def P2124545286253140509.Spec : Prop :=
  ∀ n, P2124545286253140509.a n = A015049 (n + 1)

end A015049

/-! ## A015049.P3152512300164495313

`eq[1, A249442(n)]/A000188(A013929(n+1))`
-/

namespace A015049.P3152512300164495313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A000188 (A013929 (n + 1)).toNat : ℚ)

end

end A015049.P3152512300164495313

namespace A015049

/-- `eq[1, A249442(n)]/A000188(A013929(n+1))` -/
def P3152512300164495313.Spec : Prop :=
  ∀ n, P3152512300164495313.a n = (A015049 (n + 1) : ℚ)

end A015049

/-! ## A015049.P16018994914863905226

`(lt[1, A000188(n+1)]+1)/A000188(A013929(n+1))`
-/

namespace A015049.P16018994914863905226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A000188 (A013929 (n + 1)).toNat : ℚ)

end

end A015049.P16018994914863905226

namespace A015049

/-- `(lt[1, A000188(n+1)]+1)/A000188(A013929(n+1))` -/
def P16018994914863905226.Spec : Prop :=
  ∀ n, P16018994914863905226.a n = (A015049 (n + 1) : ℚ)

end A015049

/-! ## A015049.P12654771873417249338

`A019554(eq[A019554(n+1)%(n+1), A019554(n+1)]+1)`
-/

namespace A015049.P12654771873417249338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019554 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A015049.P12654771873417249338

namespace A015049

/-- `A019554(eq[A019554(n+1)%(n+1), A019554(n+1)]+1)` -/
def P12654771873417249338.Spec : Prop :=
  ∀ n, P12654771873417249338.a n = A015049 (n + 1)

end A015049

/-!
# A015050: Let m = A013929(n); then a(n) = smallest k such that m divides k^3.

The programs for A015050, the canonical program `A015050.P15472429519790437892` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015050 has offset 1).

The definition of A015050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A019555, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A015050.P15472429519790437892

`A019555(A013929(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A015050

/-- `A019555(A013929(n+1))` -/
def P15472429519790437892.Spec : Prop :=
  ∀ n, P15472429519790437892.a n = A015050 (n + 1)

theorem P15472429519790437892.correct : P15472429519790437892.Spec := by
  intro n
  simp only [A015050, Nat.add_sub_cancel]

end A015050

/-! ## A015050.P2263121407417728566

`A019555(lt[1, n/∏{p}[n+1, #]]+1)`
-/

namespace A015050.P2263121407417728566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1)

end

end A015050.P2263121407417728566

namespace A015050

/-- `A019555(lt[1, n/∏{p}[n+1, #]]+1)` -/
def P2263121407417728566.Spec : Prop :=
  ∀ n, P2263121407417728566.a n = A015050 (n + 1)

end A015050

/-! ## A015050.P1997638630177759124

`A019555(A162966(n+2))`
-/

namespace A015050.P1997638630177759124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A162966 (n + 2)).toNat

end

end A015050.P1997638630177759124

namespace A015050

/-- `A019555(A162966(n+2))` -/
def P1997638630177759124.Spec : Prop :=
  ∀ n, P1997638630177759124.a n = A015050 (n + 1)

end A015050

/-! ## A015050.P9462591082547280998

`A019555(lt[A019555(n+1), n]+1)`
-/

namespace A015050.P9462591082547280998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A015050.P9462591082547280998

namespace A015050

/-- `A019555(lt[A019555(n+1), n]+1)` -/
def P9462591082547280998.Spec : Prop :=
  ∀ n, P9462591082547280998.a n = A015050 (n + 1)

end A015050

/-! ## A015050.P2226210831497421052

`A019555(A072905(A292145(n+1)))`
-/

namespace A015050.P2226210831497421052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A072905 (A292145 (n + 1)).toNat).toNat

end

end A015050.P2226210831497421052

namespace A015050

/-- `A019555(A072905(A292145(n+1)))` -/
def P2226210831497421052.Spec : Prop :=
  ∀ n, P2226210831497421052.a n = A015050 (n + 1)

end A015050

/-! ## A015050.P6306515244823270706

`A013929(A000027(n+1))/A000189(A013929(n+1))`
-/

namespace A015050.P6306515244823270706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (A000027 (n + 1)).toNat : ℚ) / (A000189 (A013929 (n + 1)).toNat : ℚ)

end

end A015050.P6306515244823270706

namespace A015050

/-- `A013929(A000027(n+1))/A000189(A013929(n+1))` -/
def P6306515244823270706.Spec : Prop :=
  ∀ n, P6306515244823270706.a n = (A015050 (n + 1) : ℚ)

end A015050

/-! ## A015050.P14109504357563116256

`A019555(lt[∏{p}[n, #], n])`
-/

namespace A015050.P14109504357563116256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A015050.P14109504357563116256

namespace A015050

/-- `A019555(lt[∏{p}[n, #], n])` -/
def P14109504357563116256.Spec : Prop :=
  ∀ n, P14109504357563116256.a n = A015050 (n + 1)

end A015050

/-! ## A015050.P6333499106542382287

`A019555(comp[eq[n+1, A019555(n+1)]]+1)`
-/

namespace A015050.P6333499106542382287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A015050.P6333499106542382287

namespace A015050

/-- `A019555(comp[eq[n+1, A019555(n+1)]]+1)` -/
def P6333499106542382287.Spec : Prop :=
  ∀ n, P6333499106542382287.a n = A015050 (n + 1)

end A015050

/-! ## A015050.P13041130081817998375

`A019555(comp[n*(A019555(n+1)-n)]+1)`
-/

namespace A015050.P13041130081817998375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A019555 (n + 1) - (n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A015050.P13041130081817998375

namespace A015050

/-- `A019555(comp[n*(A019555(n+1)-n)]+1)` -/
def P13041130081817998375.Spec : Prop :=
  ∀ n, P13041130081817998375.a n = A015050 (n + 1)

end A015050

/-! ## A015050.P6718519602730730900

`A015052(A013929(n+1)²/A015051(n+1))`
-/

namespace A015050.P6718519602730730900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (SequenceMachineLib.roundAway ((A013929 (n + 1) ^ 2 : ℚ) / (A015051 (n + 1) : ℚ))).toNat

end

end A015050.P6718519602730730900

namespace A015050

/-- `A015052(A013929(n+1)²/A015051(n+1))` -/
def P6718519602730730900.Spec : Prop :=
  ∀ n, P6718519602730730900.a n = A015050 (n + 1)

end A015050

/-!
# A015051: Let m = A013929(n); then a(n) = smallest k such that m divides k^4.

The programs for A015051, the canonical program `A015051.P1678568298610178780` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015051 has offset 1).

The definition of A015051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A015051.P1678568298610178780

`A053166(A013929(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A015051

/-- `A053166(A013929(n+1))` -/
def P1678568298610178780.Spec : Prop :=
  ∀ n, P1678568298610178780.a n = A015051 (n + 1)

theorem P1678568298610178780.correct : P1678568298610178780.Spec := by
  intro n
  simp only [A015051, Nat.add_sub_cancel]

end A015051

/-! ## A015051.P6935532118389859597

`A019554(A015049(n+1))`
-/

namespace A015051.P6935532118389859597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A015049 (n + 1)).toNat

end

end A015051.P6935532118389859597

namespace A015051

/-- `A019554(A015049(n+1))` -/
def P6935532118389859597.Spec : Prop :=
  ∀ n, P6935532118389859597.a n = A015051 (n + 1)

end A015051

/-! ## A015051.P3327332258531155658

`∑{d}[A015049(n+1), A346612(#)]`
-/

namespace A015051.P3327332258531155658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346612 d

end

end A015051.P3327332258531155658

namespace A015051

/-- `∑{d}[A015049(n+1), A346612(#)]` -/
def P3327332258531155658.Spec : Prop :=
  ∀ n, P3327332258531155658.a n = A015051 (n + 1)

end A015051

/-! ## A015051.P5689653654346857137

`A019554(A013929(n+1)/A087050(n+1))`
-/

namespace A015051.P5689653654346857137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A087050 (n + 1) : ℚ))).toNat

end

end A015051.P5689653654346857137

namespace A015051

/-- `A019554(A013929(n+1)/A087050(n+1))` -/
def P5689653654346857137.Spec : Prop :=
  ∀ n, P5689653654346857137.a n = A015051 (n + 1)

end A015051

/-! ## A015051.P4832138320767055780

`A053166(A162966(n+2))`
-/

namespace A015051.P4832138320767055780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A162966 (n + 2)).toNat

end

end A015051.P4832138320767055780

namespace A015051

/-- `A053166(A162966(n+2))` -/
def P4832138320767055780.Spec : Prop :=
  ∀ n, P4832138320767055780.a n = A015051 (n + 1)

end A015051

/-! ## A015051.P18426142791511331324

`A053166(lt[A053166(n+1), n]+1)`
-/

namespace A015051.P18426142791511331324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A015051.P18426142791511331324

namespace A015051

/-- `A053166(lt[A053166(n+1), n]+1)` -/
def P18426142791511331324.Spec : Prop :=
  ∀ n, P18426142791511331324.a n = A015051 (n + 1)

end A015051

/-! ## A015051.P4596176824912242889

`A019554(A019554(A072905(A292145(n+1))))`
-/

namespace A015051.P4596176824912242889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019554 (A072905 (A292145 (n + 1)).toNat).toNat).toNat

end

end A015051.P4596176824912242889

namespace A015051

/-- `A019554(A019554(A072905(A292145(n+1))))` -/
def P4596176824912242889.Spec : Prop :=
  ∀ n, P4596176824912242889.a n = A015051 (n + 1)

end A015051

/-! ## A015051.P8009459448581529301

`A053166(comp[n*(A053166(n+1)-n)]+1)`
-/

namespace A015051.P8009459448581529301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A053166 (n + 1) - (n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A015051.P8009459448581529301

namespace A015051

/-- `A053166(comp[n*(A053166(n+1)-n)]+1)` -/
def P8009459448581529301.Spec : Prop :=
  ∀ n, P8009459448581529301.a n = A015051 (n + 1)

end A015051

/-! ## A015051.P7575594245098047552

`A015053(A013929(n+1)²/A015049(n+1))`
-/

namespace A015051.P7575594245098047552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (SequenceMachineLib.roundAway ((A013929 (n + 1) ^ 2 : ℚ) / (A015049 (n + 1) : ℚ))).toNat

end

end A015051.P7575594245098047552

namespace A015051

/-- `A015053(A013929(n+1)²/A015049(n+1))` -/
def P7575594245098047552.Spec : Prop :=
  ∀ n, P7575594245098047552.a n = A015051 (n + 1)

end A015051

/-! ## A015051.P5640535178166070763

`A015053(A013929(n+1)/A015049(n+1)*A013929(n+1))`
-/

namespace A015051.P5640535178166070763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A015049 (n + 1) : ℚ) * (A013929 (n + 1) : ℚ))).toNat

end

end A015051.P5640535178166070763

namespace A015051

/-- `A015053(A013929(n+1)/A015049(n+1)*A013929(n+1))` -/
def P5640535178166070763.Spec : Prop :=
  ∀ n, P5640535178166070763.a n = A015051 (n + 1)

end A015051

/-!
# A015052: a(n) is the smallest positive integer m such that m^5 is divisible by n.

The programs for A015052, the canonical program `A015052.P7462831031410711660` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015052 has offset 1).

The definition of A015052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015052.P7462831031410711660

`A053166((n+1)/A053164(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015052

/-- `A053166((n+1)/A053164(n+1))` -/
def P7462831031410711660.Spec : Prop :=
  ∀ n, P7462831031410711660.a n = A015052 (n + 1)

theorem P7462831031410711660.correct : P7462831031410711660.Spec := by
  intro n
  simp only [A015052, Nat.add_sub_cancel]

end A015052

/-! ## A015052.P14942383183784832960

`A053166(A064549(n+1)/A053166(n+1))`
-/

namespace A015052.P14942383183784832960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (A053166 (n + 1) : ℚ))).toNat

end

end A015052.P14942383183784832960

namespace A015052

/-- `A053166(A064549(n+1)/A053166(n+1))` -/
def P14942383183784832960.Spec : Prop :=
  ∀ n, P14942383183784832960.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P5797118761468875337

`A015053(A003557(n+1)*A053166(n+1))`
-/

namespace A015052.P5797118761468875337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A003557 (n + 1) * A053166 (n + 1)).toNat

end

end A015052.P5797118761468875337

namespace A015052

/-- `A015053(A003557(n+1)*A053166(n+1))` -/
def P5797118761468875337.Spec : Prop :=
  ∀ n, P5797118761468875337.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P2642102839015734005

`A015053((n+1)*A053164(n+1))`
-/

namespace A015052.P2642102839015734005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A053164 (n + 1)).toNat

end

end A015052.P2642102839015734005

namespace A015052

/-- `A015053((n+1)*A053164(n+1))` -/
def P2642102839015734005.Spec : Prop :=
  ∀ n, P2642102839015734005.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P11167435498158578977

`A015053(A015053(n+1)*A085731(n+1))`
-/

namespace A015052.P11167435498158578977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1) * A085731 (n + 1)).toNat

end

end A015052.P11167435498158578977

namespace A015052

/-- `A015053(A015053(n+1)*A085731(n+1))` -/
def P11167435498158578977.Spec : Prop :=
  ∀ n, P11167435498158578977.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P590544492869891053

`A015053(gcd(A152053(n), A152064(n)))`
-/

namespace A015052.P590544492869891053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (Int.gcd (A152053 n) (A152064 n))

end

end A015052.P590544492869891053

namespace A015052

/-- `A015053(gcd(A152053(n), A152064(n)))` -/
def P590544492869891053.Spec : Prop :=
  ∀ n, P590544492869891053.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P18108280308784296383

`A015053(A000190(n+1)*A019554(n+1))`
-/

namespace A015052.P18108280308784296383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A000190 (n + 1) * A019554 (n + 1)).toNat

end

end A015052.P18108280308784296383

namespace A015052

/-- `A015053(A000190(n+1)*A019554(n+1))` -/
def P18108280308784296383.Spec : Prop :=
  ∀ n, P18108280308784296383.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P18394180308649281672

`A015053((n+1)*A056622(n+1))`
-/

namespace A015052.P18394180308649281672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A056622 (n + 1)).toNat

end

end A015052.P18394180308649281672

namespace A015052

/-- `A015053((n+1)*A056622(n+1))` -/
def P18394180308649281672.Spec : Prop :=
  ∀ n, P18394180308649281672.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P5350148911773892534

`A015053((n+1)*A071773(n+1))`
-/

namespace A015052.P5350148911773892534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A071773 (n + 1)).toNat

end

end A015052.P5350148911773892534

namespace A015052

/-- `A015053((n+1)*A071773(n+1))` -/
def P5350148911773892534.Spec : Prop :=
  ∀ n, P5350148911773892534.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P7239087140277063261

`A015053(A008833(n+1)*A015053(n+1))`
-/

namespace A015052.P7239087140277063261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A008833 (n + 1) * A015053 (n + 1)).toNat

end

end A015052.P7239087140277063261

namespace A015052

/-- `A015053(A008833(n+1)*A015053(n+1))` -/
def P7239087140277063261.Spec : Prop :=
  ∀ n, P7239087140277063261.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P591203655206063533

`A000034(A046310(n+1))*A007947(n+1)`
-/

namespace A015052.P591203655206063533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046310 (n + 1)).toNat * A007947 (n + 1)

end

end A015052.P591203655206063533

namespace A015052

/-- `A000034(A046310(n+1))*A007947(n+1)` -/
def P591203655206063533.Spec : Prop :=
  ∀ n, P591203655206063533.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P15668749908474814638

`A015053(A000189((n+1)²))`
-/

namespace A015052.P15668749908474814638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A000189 ((n + 1) ^ 2)).toNat

end

end A015052.P15668749908474814638

namespace A015052

/-- `A015053(A000189((n+1)²))` -/
def P15668749908474814638.Spec : Prop :=
  ∀ n, P15668749908474814638.a n = A015052 (n + 1)

end A015052

/-! ## A015052.P10682867004629905030

`A015053((n+1)*A015053(n+1))`
-/

namespace A015052.P10682867004629905030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A015053 (n + 1)).toNat

end

end A015052.P10682867004629905030

namespace A015052

/-- `A015053((n+1)*A015053(n+1))` -/
def P10682867004629905030.Spec : Prop :=
  ∀ n, P10682867004629905030.a n = A015052 (n + 1)

end A015052

/-!
# A015053: Smallest positive integer for which n divides a(n)^6.

The programs for A015053, the canonical program `A015053.P7212782911095139929` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015053 has offset 1).

The definition of A015053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015053.P7212782911095139929

`A019555(A019554(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A015053

/-- `A019555(A019554(n+1))` -/
def P7212782911095139929.Spec : Prop :=
  ∀ n, P7212782911095139929.a n = A015053 (n + 1)

theorem P7212782911095139929.correct : P7212782911095139929.Spec := by
  intro n
  simp only [A015053, Nat.add_sub_cancel]

end A015053

/-! ## A015053.P8930777026563024552

`A019554(A019555(-xor(n, -1)))`
-/

namespace A015053.P8930777026563024552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019555 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A015053.P8930777026563024552

namespace A015053

/-- `A019554(A019555(-xor(n, -1)))` -/
def P8930777026563024552.Spec : Prop :=
  ∀ n, P8930777026563024552.a n = A015053 (n + 1)

end A015053

/-! ## A015053.P9184435736656021330

`A019554(A254733(n+1)-(n+1))`
-/

namespace A015053.P9184435736656021330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A254733 (n + 1) - (n + 1 : ℤ)).toNat

end

end A015053.P9184435736656021330

namespace A015053

/-- `A019554(A254733(n+1)-(n+1))` -/
def P9184435736656021330.Spec : Prop :=
  ∀ n, P9184435736656021330.a n = A015053 (n + 1)

end A015053

/-! ## A015053.P9190190901079054151

`A019555((n+1)/A000188(n+1))`
-/

namespace A015053.P9190190901079054151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A015053.P9190190901079054151

namespace A015053

/-- `A019555((n+1)/A000188(n+1))` -/
def P9190190901079054151.Spec : Prop :=
  ∀ n, P9190190901079054151.a n = A015053 (n + 1)

end A015053

/-! ## A015053.P15879752094570511073

`A019554((n+1)/A000189(n+1))`
-/

namespace A015053.P15879752094570511073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000189 (n + 1) : ℚ))).toNat

end

end A015053.P15879752094570511073

namespace A015053

/-- `A019554((n+1)/A000189(n+1))` -/
def P15879752094570511073.Spec : Prop :=
  ∀ n, P15879752094570511073.a n = A015053 (n + 1)

end A015053

/-! ## A015053.P5517061051349090368

`A019555(A000188(n+1)*A007913(n+1))`
-/

namespace A015053.P5517061051349090368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A000188 (n + 1) * A007913 (n + 1)).toNat

end

end A015053.P5517061051349090368

namespace A015053

/-- `A019555(A000188(n+1)*A007913(n+1))` -/
def P5517061051349090368.Spec : Prop :=
  ∀ n, P5517061051349090368.a n = A015053 (n + 1)

end A015053

/-! ## A015053.P4827127100965105456

`A015052(A053143(n+1)/A015052(n+1))`
-/

namespace A015053.P4827127100965105456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (A015052 (n + 1) : ℚ))).toNat

end

end A015053.P4827127100965105456

namespace A015053

/-- `A015052(A053143(n+1)/A015052(n+1))` -/
def P4827127100965105456.Spec : Prop :=
  ∀ n, P4827127100965105456.a n = A015053 (n + 1)

end A015053

/-! ## A015053.P14030738918212554324

`A079208(or(1, comp[3*n+1]))+∏{p}[n+1, #]`
-/

namespace A015053.P14030738918212554324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079208 (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) + ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A015053.P14030738918212554324

namespace A015053

/-- `A079208(or(1, comp[3*n+1]))+∏{p}[n+1, #]` -/
def P14030738918212554324.Spec : Prop :=
  ∀ n, P14030738918212554324.a n = A015053 (n + 1)

end A015053

/-! ## A015053.P4855807117057552782

`A019555(A014673(n+1)*A019555(n+1))`
-/

namespace A015053.P4855807117057552782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A014673 (n + 1) * A019555 (n + 1)).toNat

end

end A015053.P4855807117057552782

namespace A015053

/-- `A019555(A014673(n+1)*A019555(n+1))` -/
def P4855807117057552782.Spec : Prop :=
  ∀ n, P4855807117057552782.a n = A015053 (n + 1)

end A015053

/-!
# A015054: Inverse of 1045th cyclotomic polynomial.

The programs for A015054, there is no canonical definition to state claims against.
-/

/-! ## A015054.P2905479382297006371

`A016099(n)*A033999(n)`
-/

namespace A015054.P2905479382297006371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016099 n * A033999 n

end

end A015054.P2905479382297006371

/-! ## A015054.P9783144280291594107

`A015714(A185284(2*n+1)+n)`
-/

namespace A015054.P9783144280291594107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015714 (A185284 (2 * n + 1) + (n : ℤ)).toNat

end

end A015054.P9783144280291594107

/-! ## A015054.P17652873227154931469

`A016044(A185284(2*n+1)+n)`
-/

namespace A015054.P17652873227154931469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016044 (A185284 (2 * n + 1) + (n : ℤ)).toNat

end

end A015054.P17652873227154931469

/-! ## A015054.P237719266404417931

`A016264(A185284(2*n+1)+n)`
-/

namespace A015054.P237719266404417931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016264 (A185284 (2 * n + 1) + (n : ℤ)).toNat

end

end A015054.P237719266404417931

/-! ## A015054.P6711350534878866285

`A015604(n)*A051953(A000230(n))`
-/

namespace A015054.P6711350534878866285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015604 n * A051953 (A000230 n).toNat

end

end A015054.P6711350534878866285

/-!
# A015056: q-Catalan numbers (binomial version) for q=-2.

The programs for A015056, there is no canonical definition to state claims against.
-/

/-! ## A015056.P16253779152551983551

`A004090(A000698(n)²+1)`
-/

namespace A015056.P16253779152551983551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 (A000698 n ^ 2 + 1).toNat

end

end A015056.P16253779152551983551

/-!
# A015059: Inverse of 1050th cyclotomic polynomial.

The programs for A015059, there is no canonical definition to state claims against.
-/

/-! ## A015059.P13760897613719451374

`A014019(n)*A014534(n)`
-/

namespace A015059.P13760897613719451374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n * A014534 n

end

end A015059.P13760897613719451374

/-! ## A015059.P8098501159428513741

`A015269(A151988(n))`
-/

namespace A015059.P8098501159428513741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015269 (A151988 n).toNat

end

end A015059.P8098501159428513741

/-! ## A015059.P13818581287439492600

`A015689(A222409(n))`
-/

namespace A015059.P13818581287439492600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015689 (A222409 n).toNat

end

end A015059.P13818581287439492600

/-! ## A015059.P11230806264512979490

`A015899(A187318(n))`
-/

namespace A015059.P11230806264512979490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015899 (A187318 n).toNat

end

end A015059.P11230806264512979490

/-! ## A015059.P12990747902296748380

`A014534(n)*A016379(n)`
-/

namespace A015059.P12990747902296748380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014534 n * A016379 n

end

end A015059.P12990747902296748380

/-!
# A015062: q-Catalan numbers (binomial version) for q=-7.

The programs for A015062, there is no canonical definition to state claims against.
-/

/-! ## A015062.P12487935486218752009

`A015117(∑[4*n])/A014989(n+1)`
-/

namespace A015062.P12487935486218752009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015117 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A014989 (n + 1) : ℚ)

end

end A015062.P12487935486218752009

/-!
# A015063: Inverse of 1054th cyclotomic polynomial.

The programs for A015063, there is no canonical definition to state claims against.
-/

/-! ## A015063.P9548429996222755250

`A014536(n)*A033999(n)`
-/

namespace A015063.P9548429996222755250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014536 n * A033999 n

end

end A015063.P9548429996222755250

/-! ## A015063.P2974879054583561976

`A016117(2*n)`
-/

namespace A015063.P2974879054583561976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016117 (2 * n)

end

end A015063.P2974879054583561976

/-! ## A015063.P8939304359753865904

`A015415(A344022(n+1))`
-/

namespace A015063.P8939304359753865904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015415 (A344022 (n + 1)).toNat

end

end A015063.P8939304359753865904

/-! ## A015063.P8572916866993505120

`A015403(A182049(n+1))`
-/

namespace A015063.P8572916866993505120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015403 (A182049 (n + 1)).toNat

end

end A015063.P8572916866993505120

/-! ## A015063.P7505390561616992652

`A015567(A180493(n+2))`
-/

namespace A015063.P7505390561616992652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015567 (A180493 (n + 2)).toNat

end

end A015063.P7505390561616992652

/-!
# A015064: Weight distribution of [50,21,12] code associated with Hoffman-Singleton and Higman-Sims graphs.

The programs for A015064, there is no canonical definition to state claims against.
-/

/-! ## A015064.P7334197018810897265

`A015066(2*n)`
-/

namespace A015064.P7334197018810897265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015066 (2 * n)

end

end A015064.P7334197018810897265

/-! ## A015064.P14689445966233115228

`A015066(A005843(n))+char[49]`
-/

namespace A015064.P14689445966233115228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015066 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A015064.P14689445966233115228

/-! ## A015064.P89850852774403001

`A015066(A004277(n))+C(2, n+2)`
-/

namespace A015064.P89850852774403001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015066 (A004277 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A015064.P89850852774403001

/-! ## A015064.P14952171260890793279

`A015066(A005843(n))%A000108(n+3)`
-/

namespace A015064.P14952171260890793279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015066 (A005843 n).toNat) (A000108 (n + 3))

end

end A015064.P14952171260890793279

/-! ## A015064.P6179389590547329754

`A015066(A004277(n))+char[A207058(n+1)]`
-/

namespace A015064.P6179389590547329754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207058 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015066 (A004277 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A015064.P6179389590547329754

/-!
# A015065: Weight distribution of [50,29,8] code associated with Hoffman-Singleton and Higman-Sims graphs.

The programs for A015065, there is no canonical definition to state claims against.
-/

/-! ## A015065.P8326968842652404770

`A246117(xor(8, 15*n))`
-/

namespace A015065.P8326968842652404770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246117 (Nat.xor 8 (15 * n))

end

end A015065.P8326968842652404770

/-!
# A015067: Weight distribution of [50,28,8] code associated with Hoffman-Singleton and Higman-Sims graphs.

The programs for A015067, there is no canonical definition to state claims against.
-/

/-! ## A015067.P17017085369811096343

`A144402(n)*A151511(A251219(n+1))`
-/

namespace A015067.P17017085369811096343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144402 n * A151511 (A251219 (n + 1)).toNat

end

end A015067.P17017085369811096343

/-! ## A015067.P10039175003848617826

`A151511(A251219(n+1))*A151511(n)`
-/

namespace A015067.P10039175003848617826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 (A251219 (n + 1)).toNat * A151511 n

end

end A015067.P10039175003848617826

/-!
# A015068: Weight distribution of [100,22,22] code associated with Hoffman-Singleton and Higman-Sims graphs.

The programs for A015068, there is no canonical definition to state claims against.
-/

/-! ## A015068.P1706425749540798061

`A030101(A106646(n+1))*A288012(n)`
-/

namespace A015068.P1706425749540798061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A106646 (n + 1)).toNat * A288012 n

end

end A015068.P1706425749540798061

/-! ## A015068.P3109297388531715231

`C(∏[1-∑{digits}[n, #]+n], 9*n)`
-/

namespace A015068.P3109297388531715231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j).toNat (9 * n)

end

end A015068.P3109297388531715231

/-! ## A015068.P4537632714608595788

`C(∏[1-(∑{digits}[n, #]-n)], 9*n)`
-/

namespace A015068.P4537632714608595788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j).toNat (9 * n)

end

end A015068.P4537632714608595788

/-! ## A015068.P3899743074345338666

`C(5, A366650(n+1))²`
-/

namespace A015068.P3899743074345338666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (A366650 (n + 1)).toNat ^ 2

end

end A015068.P3899743074345338666

/-! ## A015068.P10237559452542399112

`and(n-1, A177292(n))²`
-/

namespace A015068.P10237559452542399112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (A177292 n) ^ 2

end

end A015068.P10237559452542399112

/-!
# A015070: Weight distribution of [100,22,32] code associated with Hoffman-Singleton and Higman-Sims graphs.

The programs for A015070, there is no canonical definition to state claims against.
-/

/-! ## A015070.P15299929408610518189

`C(A015068(n), A152195(3*n))`
-/

namespace A015070.P15299929408610518189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A015068 n).toNat (A152195 (3 * n)).toNat

end

end A015070.P15299929408610518189

/-! ## A015070.P1050569697303983109

`A102685(C(A109974(n+1), n+2))`
-/

namespace A015070.P1050569697303983109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102685 (Nat.choose (A109974 (n + 1)).toNat (n + 2))

end

end A015070.P1050569697303983109

/-! ## A015070.P4186564735286966357

`A015031(A154693(n))*A015068(n)`
-/

namespace A015070.P4186564735286966357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015031 (A154693 n).toNat * A015068 n

end

end A015070.P4186564735286966357

/-! ## A015070.P2124357575307030669

`A000122(n)*A116857(A116834(n+1))`
-/

namespace A015070.P2124357575307030669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A116857 (A116834 (n + 1)).toNat

end

end A015070.P2124357575307030669

/-! ## A015070.P15834162712652960234

`A065243(A213004(n))*A288103(n+1)`
-/

namespace A015070.P15834162712652960234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065243 (A213004 n).toNat * A288103 (n + 1)

end

end A015070.P15834162712652960234

/-!
# A015071: Weight distribution of [100,78,8] code associated with Hoffman-Singleton and Higman-Sims graphs.

The programs for A015071, there is no canonical definition to state claims against.
-/

/-! ## A015071.P10085374775851299132

`A324429(A098510(n)+1)`
-/

namespace A015071.P10085374775851299132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 (A098510 n + 1).toNat

end

end A015071.P10085374775851299132

/-!
# A015073: Inverse of 1064th cyclotomic polynomial.

The programs for A015073, there is no canonical definition to state claims against.
-/

/-! ## A015073.P13002886509570469228

`A014541(gcd(n, ∑[n]))`
-/

namespace A015073.P13002886509570469228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014541 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015073.P13002886509570469228

/-! ## A015073.P120292834983228605

`A015250(A117384(n+1))*A015297(n)`
-/

namespace A015073.P120292834983228605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015250 (A117384 (n + 1)).toNat * A015297 n

end

end A015073.P120292834983228605

/-! ## A015073.P3198126814315584118

`A015297(A007528(2*n+5))+A015297(n)`
-/

namespace A015073.P3198126814315584118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015297 (A007528 (2 * n + 5)).toNat + A015297 n

end

end A015073.P3198126814315584118

/-! ## A015073.P15210979801251693879

`A015256(A293222(n+1))*A015297(n)`
-/

namespace A015073.P15210979801251693879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015256 (A293222 (n + 1)).toNat * A015297 n

end

end A015073.P15210979801251693879

/-!
# A015074: Inverse of 1065th cyclotomic polynomial.

The programs for A015074, there is no canonical definition to state claims against.
-/

/-! ## A015074.P273844325295844499

`A016139(n)*A057079(3*n+2)`
-/

namespace A015074.P273844325295844499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016139 n * A057079 (3 * n + 2)

end

end A015074.P273844325295844499

/-! ## A015074.P3849831851914413781

`A014620(A014670(n))*A014624(n)`
-/

namespace A015074.P3849831851914413781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014620 (A014670 n).toNat * A014624 n

end

end A015074.P3849831851914413781

/-! ## A015074.P751767784346986802

`A015254(n)*A015256(A293222(n+1))`
-/

namespace A015074.P751767784346986802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015254 n * A015256 (A293222 (n + 1)).toNat

end

end A015074.P751767784346986802

/-! ## A015074.P681998722815062835

`A014562(A017881(n+3))*A014564(n)`
-/

namespace A015074.P681998722815062835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014562 (A017881 (n + 3)).toNat * A014564 n

end

end A015074.P681998722815062835

/-! ## A015074.P12132588095689864840

`A015254(n)^A306179(A001055(n+1))`
-/

namespace A015074.P12132588095689864840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015254 n : ℚ) ^ (A306179 (A001055 (n + 1)).toNat : ℤ)

end

end A015074.P12132588095689864840

/-! ## A015074.P17577995223006554322

`A014564(n)*A014592(A325163(n+1))`
-/

namespace A015074.P17577995223006554322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014564 n * A014592 (A325163 (n + 1)).toNat

end

end A015074.P17577995223006554322

/-!
# A015075: Inverse of 1066th cyclotomic polynomial.

The programs for A015075, there is no canonical definition to state claims against.
-/

/-! ## A015075.P15554524130001880607

`A014542(n)*A033999(n)`
-/

namespace A015075.P15554524130001880607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014542 n * A033999 n

end

end A015075.P15554524130001880607

/-! ## A015075.P2846125454718177931

`A014542(n)*A014583(A014588(n))`
-/

namespace A015075.P2846125454718177931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014542 n * A014583 (A014588 n).toNat

end

end A015075.P2846125454718177931

/-! ## A015075.P8703362640697510771

`A016141(2*n)`
-/

namespace A015075.P8703362640697510771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016141 (2 * n)

end

end A015075.P8703362640697510771

/-! ## A015075.P3253293753726725429

`A015231(lt[A073133(n+1), A066085(n+1)])`
-/

namespace A015075.P3253293753726725429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015075.P3253293753726725429

/-! ## A015075.P17953382981824867293

`A014763(A048337(n))`
-/

namespace A015075.P17953382981824867293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014763 (A048337 n).toNat

end

end A015075.P17953382981824867293

/-!
# A015076: Inverse of 1067th cyclotomic polynomial.

The programs for A015076, there is no canonical definition to state claims against.
-/

/-! ## A015076.P12895712997848445161

`(-1)^n*A016143(n)`
-/

namespace A015076.P12895712997848445161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016143 n

end

end A015076.P12895712997848445161

/-! ## A015076.P16844655227808944893

`C(2, ∑[A199092(n+1)])`
-/

namespace A015076.P16844655227808944893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015076.P16844655227808944893

/-! ## A015076.P12003301535831578506

`round(Δ[log2(A143823(n+3))])`
-/

namespace A015076.P12003301535831578506
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A143823 (n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A015076.P12003301535831578506

/-! ## A015076.P12814472132483572198

`C(A115583(n+3), C(n+1, 11))`
-/

namespace A015076.P12814472132483572198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115583 (n + 3)).toNat (Nat.choose (n + 1) 11)

end

end A015076.P12814472132483572198

/-! ## A015076.P16628554390127420862

`round(2^ceil(log2(n+1))/A355394(n+4))`
-/

namespace A015076.P16628554390127420862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) / (A355394 (n + 4) : ℚ))

end

end A015076.P16628554390127420862

/-! ## A015076.P10703201125230674662

`A010054(∑[A324351(n)]²)`
-/

namespace A015076.P10703201125230674662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A015076.P10703201125230674662

/-! ## A015076.P17186735763790349523

`A127247(∑[A248639(n)]²)`
-/

namespace A015076.P17186735763790349523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127247 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A015076.P17186735763790349523

/-! ## A015076.P633984487472756876

`A010815(A031926(n+5))^A027198(n+1)`
-/

namespace A015076.P633984487472756876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (A031926 (n + 5)).toNat : ℚ) ^ (A027198 (n + 1) : ℤ)

end

end A015076.P633984487472756876

/-! ## A015076.P9253090110359741556

`C(A249351(n+4), A332286(A163382(n+4)))`
-/

namespace A015076.P9253090110359741556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A249351 (n + 4)).toNat (A332286 (A163382 (n + 4)).toNat).toNat

end

end A015076.P9253090110359741556

/-! ## A015076.P14542934487202535379

`C(A334311(n+1), A334311(A334294(n+1)))`
-/

namespace A015076.P14542934487202535379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334311 (n + 1)).toNat (A334311 (A334294 (n + 1)).toNat).toNat

end

end A015076.P14542934487202535379

/-!
# A015080: Inverse of 1071st cyclotomic polynomial.

The programs for A015080, there is no canonical definition to state claims against.
-/

/-! ## A015080.P14806709157036163478

`A010892(n)*A016151(n)`
-/

namespace A015080.P14806709157036163478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A016151 n

end

end A015080.P14806709157036163478

/-!
# A015082: Inverse of 1073rd cyclotomic polynomial.

The programs for A015082, there is no canonical definition to state claims against.
-/

/-! ## A015082.P18207991393636839486

`A016155(n)*A033999(n)`
-/

namespace A015082.P18207991393636839486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016155 n * A033999 n

end

end A015082.P18207991393636839486

/-!
# A015083: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=2.

The programs for A015083, there is no canonical definition to state claims against.
-/

/-! ## A015083.P10527304268659245497

`A154829(∑[n])`
-/

namespace A015083.P10527304268659245497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154829 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015083.P10527304268659245497

/-! ## A015083.P9811060155822752482

`A090182(∑[n+2]+3)`
-/

namespace A015083.P9811060155822752482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A015083.P9811060155822752482

/-! ## A015083.P10947689824955135734

`A290759(∑[n+3])`
-/

namespace A015083.P10947689824955135734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015083.P10947689824955135734

/-! ## A015083.P13421557085084023498

`or(1, A290759(A141214(n)))`
-/

namespace A015083.P13421557085084023498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290759 (A141214 n).toNat)

end

end A015083.P13421557085084023498

/-! ## A015083.P11983498262158199873

`A290759(A141214(n))+A178798(n)`
-/

namespace A015083.P11983498262158199873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (A141214 n).toNat + A178798 n

end

end A015083.P11983498262158199873

/-!
# A015084: Carlitz-Riordan q-Catalan numbers for q=3.

The programs for A015084, there is no canonical definition to state claims against.
-/

/-! ## A015084.P5495862788107265702

`A090182(A167614(n+2))`
-/

namespace A015084.P5495862788107265702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (A167614 (n + 2)).toNat

end

end A015084.P5495862788107265702

/-! ## A015084.P15357165436858819934

`A090182(A141214(n)+6)`
-/

namespace A015084.P15357165436858819934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (A141214 n + 6).toNat

end

end A015084.P15357165436858819934

/-! ## A015084.P10319108044652466683

`A090182(eq[3, A002262(n)])`
-/

namespace A015084.P10319108044652466683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015084.P10319108044652466683

/-! ## A015084.P13088680534568592560

`A090182(A000096(n+2)+4)`
-/

namespace A015084.P13088680534568592560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (A000096 (n + 2) + 4).toNat

end

end A015084.P13088680534568592560

/-! ## A015084.P10907854141980205118

`A090182(eq[4, A002260(n+1)])`
-/

namespace A015084.P10907854141980205118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015084.P10907854141980205118

/-!
# A015085: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=4.

The programs for A015085, there is no canonical definition to state claims against.
-/

/-! ## A015085.P2401057742699267392

`A090182(eq[4, A002262(n)])`
-/

namespace A015085.P2401057742699267392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015085.P2401057742699267392

/-! ## A015085.P17925116960578912414

`A290759(eq[4, A025581(n)])`
-/

namespace A015085.P17925116960578912414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015085.P17925116960578912414

/-! ## A015085.P11401118298404715291

`A290759(eq[5, A193739(n)])`
-/

namespace A015085.P11401118298404715291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015085.P11401118298404715291

/-! ## A015085.P5711424583780201051

`A290759(A055999(n+2)+1)`
-/

namespace A015085.P5711424583780201051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (A055999 (n + 2) + 1).toNat

end

end A015085.P5711424583780201051

/-! ## A015085.P3781408358385039575

`A090182(A051936(n+4)+13)`
-/

namespace A015085.P3781408358385039575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (A051936 (n + 4) + 13).toNat

end

end A015085.P3781408358385039575

/-!
# A015086: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=5.

The programs for A015086, there is no canonical definition to state claims against.
-/

/-! ## A015086.P10329477399176822564

`A290759(A055999(n+3))`
-/

namespace A015086.P10329477399176822564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (A055999 (n + 3)).toNat

end

end A015086.P10329477399176822564

/-! ## A015086.P6284155120229647184

`A090182(eq[5, A002262(n)])`
-/

namespace A015086.P6284155120229647184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015086.P6284155120229647184

/-! ## A015086.P7594069911085182230

`A290759(eq[5, A025581(n)])`
-/

namespace A015086.P7594069911085182230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015086.P7594069911085182230

/-! ## A015086.P7335570716859433921

`A290759(eq[6, A193739(n)])`
-/

namespace A015086.P7335570716859433921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015086.P7335570716859433921

/-! ## A015086.P1056056515585530511

`A290759(Δ[A026054(n+3)])`
-/

namespace A015086.P1056056515585530511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (f1 (n + 1) - f1 n).toNat

end

end A015086.P1056056515585530511

/-!
# A015087: Inverse of 1078th cyclotomic polynomial.

The programs for A015087, there is no canonical definition to state claims against.
-/

/-! ## A015087.P12451894778160759575

`A014023(n)*A014548(n)`
-/

namespace A015087.P12451894778160759575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014023 n * A014548 n

end

end A015087.P12451894778160759575

/-! ## A015087.P17446746261734003522

`A014548(n)*A033999(n)`
-/

namespace A015087.P17446746261734003522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014548 n * A033999 n

end

end A015087.P17446746261734003522

/-! ## A015087.P16398139891336880751

`A014548(n)*A081729(n)`
-/

namespace A015087.P16398139891336880751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014548 n * A081729 n

end

end A015087.P16398139891336880751

/-! ## A015087.P5648989906720437793

`A014548(n)*A099860(n)`
-/

namespace A015087.P5648989906720437793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014548 n * A099860 n

end

end A015087.P5648989906720437793

/-! ## A015087.P5147197285303077484

`A015241(A004776(n+1))`
-/

namespace A015087.P5147197285303077484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015241 (A004776 (n + 1)).toNat

end

end A015087.P5147197285303077484

/-! ## A015087.P244374457950118941

`A015241(A004777(n+1))`
-/

namespace A015087.P244374457950118941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015241 (A004777 (n + 1)).toNat

end

end A015087.P244374457950118941

/-! ## A015087.P888025977132110839

`A015241(A047565(n+1))`
-/

namespace A015087.P888025977132110839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015241 (A047565 (n + 1)).toNat

end

end A015087.P888025977132110839

/-! ## A015087.P2423129958626398006

`A015241(A047588(n+1))`
-/

namespace A015087.P2423129958626398006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015241 (A047588 (n + 1)).toNat

end

end A015087.P2423129958626398006

/-! ## A015087.P7524118236034984703

`A014548(n)*A016402(n)`
-/

namespace A015087.P7524118236034984703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014548 n * A016402 n

end

end A015087.P7524118236034984703

/-! ## A015087.P15145092017412377842

`A014548(n)*A016338(n)`
-/

namespace A015087.P15145092017412377842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014548 n * A016338 n

end

end A015087.P15145092017412377842

/-!
# A015088: Inverse of 1079th cyclotomic polynomial.

The programs for A015088, there is no canonical definition to state claims against.
-/

/-! ## A015088.P17312894805469444009

`(A004442(n)-n)*A016167(n)`
-/

namespace A015088.P17312894805469444009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A016167 n

end

end A015088.P17312894805469444009

/-! ## A015088.P13751064298381101611

`A014971(A005811(n))*A016167(n)`
-/

namespace A015088.P13751064298381101611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014971 (A005811 n).toNat * A016167 n

end

end A015088.P13751064298381101611

/-! ## A015088.P6723544399907137420

`A015966(A333224(n)+comp[A177763(n+1)-1]+1)`
-/

namespace A015088.P6723544399907137420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015966 (A333224 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)).toNat

end

end A015088.P6723544399907137420

/-! ## A015088.P15333647435716790203

`A015966(eq[A121373(n), A151878(n)])`
-/

namespace A015088.P15333647435716790203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015966 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A015088.P15333647435716790203

/-! ## A015088.P5517463879380998306

`and(a(n-1), A039934(2*n+3))` with `a(0)=1`
-/

namespace A015088.P5517463879380998306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1)) (A039934 (2 * n + 3))

end

end A015088.P5517463879380998306

/-! ## A015088.P5791901566127381609

`A130716(A120194(n+1))`
-/

namespace A015088.P5791901566127381609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 (A120194 (n + 1)).toNat

end

end A015088.P5791901566127381609

/-! ## A015088.P17708633841454818811

`A010056(A341454(n+7))`
-/

namespace A015088.P17708633841454818811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A341454 (n + 7)).toNat

end

end A015088.P17708633841454818811

/-! ## A015088.P4484677526455727824

`A333632(C(3, A280951(n)))`
-/

namespace A015088.P4484677526455727824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (Nat.choose 3 (A280951 n).toNat)

end

end A015088.P4484677526455727824

/-! ## A015088.P13704643295403266920

`A010054(∑[∑[A214249(n)]])`
-/

namespace A015088.P13704643295403266920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214249 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015088.P13704643295403266920

/-! ## A015088.P4700254359117368001

`C(A357180(n+4), A221912(n))`
-/

namespace A015088.P4700254359117368001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A357180 (n + 4)).toNat (A221912 n).toNat

end

end A015088.P4700254359117368001

/-!
# A015089: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=6.

The programs for A015089, there is no canonical definition to state claims against.
-/

/-! ## A015089.P18299678963027696120

`A090182(eq[6, A002262(n)])`
-/

namespace A015089.P18299678963027696120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015089.P18299678963027696120

/-! ## A015089.P298203507864271724

`A290759(eq[6, A025581(n)])`
-/

namespace A015089.P298203507864271724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015089.P298203507864271724

/-! ## A015089.P9565939631484963146

`A090182(eq[7, A002260(n+1)])`
-/

namespace A015089.P9565939631484963146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015089.P9565939631484963146

/-! ## A015089.P1121448528002373851

`A290759(eq[7, A004736(n+1)])`
-/

namespace A015089.P1121448528002373851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015089.P1121448528002373851

/-! ## A015089.P969369077508926745

`A090182(eq[13, A158405(n+1)])`
-/

namespace A015089.P969369077508926745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015089.P969369077508926745

/-!
# A015090: Inverse of 1081st cyclotomic polynomial.

The programs for A015090, there is no canonical definition to state claims against.
-/

/-! ## A015090.P7085325864869533067

`A016171(n)*A033999(n)`
-/

namespace A015090.P7085325864869533067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016171 n * A033999 n

end

end A015090.P7085325864869533067

/-! ## A015090.P16271040197521677699

`A001651(n+2)-A380408(n+1)`
-/

namespace A015090.P16271040197521677699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 2) - A380408 (n + 1)

end

end A015090.P16271040197521677699

/-! ## A015090.P4331131067171669875

`A015952(lt[A321935(n+1), 3])`
-/

namespace A015090.P4331131067171669875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321935 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015952 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015090.P4331131067171669875

/-! ## A015090.P15353451234148596554

`A015838(A028773(n+1))`
-/

namespace A015090.P15353451234148596554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015838 (A028773 (n + 1)).toNat

end

end A015090.P15353451234148596554

/-!
# A015091: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=7.

The programs for A015091, there is no canonical definition to state claims against.
-/

/-! ## A015091.P9436092146980811719

`A090182(eq[7, A002262(n)])`
-/

namespace A015091.P9436092146980811719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015091.P9436092146980811719

/-! ## A015091.P15207406333340339707

`A290759(eq[7, A025581(n)])`
-/

namespace A015091.P15207406333340339707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015091.P15207406333340339707

/-! ## A015091.P8354625677245046228

`A090182(eq[8, A002260(n+1)])`
-/

namespace A015091.P8354625677245046228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015091.P8354625677245046228

/-! ## A015091.P4604344343942854332

`A290759(eq[8, A004736(n+1)])`
-/

namespace A015091.P4604344343942854332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015091.P4604344343942854332

/-! ## A015091.P9469899407662378660

`A090182(eq[15, A158405(n+1)])`
-/

namespace A015091.P9469899407662378660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015091.P9469899407662378660

/-!
# A015092: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=8.

The programs for A015092, there is no canonical definition to state claims against.
-/

/-! ## A015092.P7317922377991084029

`A290759(eq[8, A025581(n)])`
-/

namespace A015092.P7317922377991084029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015092.P7317922377991084029

/-! ## A015092.P10580650688139715159

`A290759(eq[9, A193739(n)])`
-/

namespace A015092.P10580650688139715159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015092.P10580650688139715159

/-! ## A015092.P9476499106422944027

`A290759(eq[7, A068049(n+1)])`
-/

namespace A015092.P9476499106422944027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015092.P9476499106422944027

/-! ## A015092.P18281928132418613227

`A290759(eq[9, A004736(n+1)])`
-/

namespace A015092.P18281928132418613227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015092.P18281928132418613227

/-! ## A015092.P9869781059064883992

`A290759(eq[8, A025669(n+1)])`
-/

namespace A015092.P9869781059064883992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015092.P9869781059064883992

/-!
# A015093: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=9.

The programs for A015093, there is no canonical definition to state claims against.
-/

/-! ## A015093.P413098886352829079

`A290759(A000217(n+10)-10)`
-/

namespace A015093.P413098886352829079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (A000217 (n + 10) - 10).toNat

end

end A015093.P413098886352829079

/-!
# A015094: Inverse of 1085th cyclotomic polynomial.

The programs for A015094, there is no canonical definition to state claims against.
-/

/-! ## A015094.P13491341600522199210

`A016179(n)*A033999(n)`
-/

namespace A015094.P13491341600522199210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016179 n * A033999 n

end

end A015094.P13491341600522199210

/-!
# A015095: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=10.

The programs for A015095, there is no canonical definition to state claims against.
-/

/-! ## A015095.P10469254297819587600

`A007090(A015085(n))`
-/

namespace A015095.P10469254297819587600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A015085 n).toNat

end

end A015095.P10469254297819587600

/-!
# A015097: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=-2.

The programs for A015097, there is no canonical definition to state claims against.
-/

/-! ## A015097.P17969776581786725272

`A290789(∑[n+3])`
-/

namespace A015097.P17969776581786725272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015097.P17969776581786725272

/-! ## A015097.P4144681783791547588

`or(1, A290789(A141214(n)))`
-/

namespace A015097.P4144681783791547588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290789 (A141214 n).toNat)

end

end A015097.P4144681783791547588

/-! ## A015097.P752801911676131198

`A007318(C(2, n))*A290789(A141214(n))`
-/

namespace A015097.P752801911676131198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A290789 (A141214 n).toNat

end

end A015097.P752801911676131198

/-! ## A015097.P5456692368126921775

`A334924(2*n+1)+A290789(A141214(n))-1`
-/

namespace A015097.P5456692368126921775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (2 * n + 1) + (A290789 (A141214 n).toNat - 1)

end

end A015097.P5456692368126921775

/-! ## A015097.P13078056612767990315

`A326065(2*(n+1))+A290789(A141214(n))-A000203(n+1)`
-/

namespace A015097.P13078056612767990315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * (n + 1)) + (A290789 (A141214 n).toNat - A000203 (n + 1))

end

end A015097.P13078056612767990315

/-!
# A015098: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=-3.

The programs for A015098, there is no canonical definition to state claims against.
-/

/-! ## A015098.P573262993190987158

`A290789(∑[n+3]+n+3)`
-/

namespace A015098.P573262993190987158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A015098.P573262993190987158

/-!
# A015099: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=-4.

The programs for A015099, there is no canonical definition to state claims against.
-/

/-! ## A015099.P3676833751097257957

`A290789(A052905(n+2))`
-/

namespace A015099.P3676833751097257957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (A052905 (n + 2)).toNat

end

end A015099.P3676833751097257957

/-! ## A015099.P16135113057298796018

`A290789(eq[3, A129713(n)])`
-/

namespace A015099.P16135113057298796018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015099.P16135113057298796018

/-! ## A015099.P6111080625741625142

`A290789(eq[3, A212551(n)])`
-/

namespace A015099.P6111080625741625142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015099.P6111080625741625142

/-! ## A015099.P10477785203940363276

`A290789(eq[4, A025581(n)])`
-/

namespace A015099.P10477785203940363276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015099.P10477785203940363276

/-! ## A015099.P11846108832041085149

`A290789(eq[5, A004736(n+1)])`
-/

namespace A015099.P11846108832041085149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015099.P11846108832041085149

