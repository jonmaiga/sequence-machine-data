import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

/-!
# A356200: Number of edge covers in the n-gear graph.

The programs for A356200, the canonical program `A356200.P8613276162966982452` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356200 has offset 1).

The definition of A356200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356200.P11665326801840204234

`2*A146963(n+1)-A005248(n+1)`
-/

namespace A356200.P11665326801840204234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146963 (n + 1) - A005248 (n + 1)

end

end A356200.P11665326801840204234

namespace A356200

/-- `2*A146963(n+1)-A005248(n+1)` -/
def P11665326801840204234.Spec : Prop :=
  ∀ n, P11665326801840204234.a n = A356200 (n + 1)

end A356200

/-! ## A356200.P8613276162966982452

`9*a(n-1)-21*a(n-2)+12*a(n-3)-2*a(n-4)` with `a(0)=3, a(1)=25, a(2)=162, a(3)=969`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356200

/-- `9*a(n-1)-21*a(n-2)+12*a(n-3)-2*a(n-4)` -/
def P8613276162966982452.Spec : Prop :=
  ∀ n, P8613276162966982452.a n = A356200 (n + 1)

theorem P8613276162966982452.correct : P8613276162966982452.Spec := by
  intro n
  simp only [A356200, Nat.add_sub_cancel]

end A356200

/-!
# A356205: T(n,k) are the numerators of the coefficients of the Legendre polynomials of degree n, with increasing exponents, where T(n,k) is a triangle read by rows.

The programs for A356205, there is no canonical definition to state claims against.
-/

/-! ## A356205.P3172344104237566540

`A100258(n)/A082907(n)`
-/

namespace A356205.P3172344104237566540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100258 n : ℚ) / (A082907 n : ℚ)

end

end A356205.P3172344104237566540

/-! ## A356205.P10205918280938838032

`A100258(n)/A001511(A157268(n))`
-/

namespace A356205.P10205918280938838032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100258 n : ℚ) / (A001511 (A157268 n).toNat : ℚ)

end

end A356205.P10205918280938838032

/-! ## A356205.P8050818619277583891

`A100258(n)/A213636(A060187(n+1))`
-/

namespace A356205.P8050818619277583891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100258 n : ℚ) / (A213636 (A060187 (n + 1)).toNat : ℚ)

end

end A356205.P8050818619277583891

/-! ## A356205.P7262987110715565598

`A100258(n)/A293630(A323582(n))`
-/

namespace A356205.P7262987110715565598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100258 n : ℚ) / (A293630 (A323582 n).toNat : ℚ)

end

end A356205.P7262987110715565598

/-! ## A356205.P12367140738792416071

`A100258(n)/A000002(A217302(2*n+3))`
-/

namespace A356205.P12367140738792416071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100258 n : ℚ) / (A000002 (A217302 (2 * n + 3)).toNat : ℚ)

end

end A356205.P12367140738792416071

/-!
# A356206: T(n,k) are the denominators of the coefficients of the Legendre polynomials of degree n, with increasing exponents, where T(n,k) is a triangle read by rows.

The programs for A356206, there is no canonical definition to state claims against.
-/

/-! ## A356206.P17044478807762515130

`A117592(A104035(n)*A175688(2*n+1))`
-/

namespace A356206.P17044478807762515130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 (A104035 n * A175688 (2 * n + 1)).toNat

end

end A356206.P17044478807762515130

/-! ## A356206.P4102373566390598031

`2^A318659(A126710(n+3))`
-/

namespace A356206.P4102373566390598031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318659 (A126710 (n + 3)).toNat : ℤ)

end

end A356206.P4102373566390598031

/-! ## A356206.P11088420909426004803

`A173441(A330228(n)+A071332(n+1))`
-/

namespace A356206.P11088420909426004803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173441 (A330228 n + A071332 (n + 1)).toNat

end

end A356206.P11088420909426004803

/-! ## A356206.P10905787142476295232

`A187816(A116975(n+1))`
-/

namespace A356206.P10905787142476295232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187816 (A116975 (n + 1)).toNat

end

end A356206.P10905787142476295232

/-! ## A356206.P10603912007013237635

`A359309(A200092(n+4))`
-/

namespace A356206.P10603912007013237635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359309 (A200092 (n + 4)).toNat

end

end A356206.P10603912007013237635

/-!
# A356208: a(n) is the number of occurrences of n in A133388.

The programs for A356208, there is no canonical definition to state claims against.
-/

/-! ## A356208.P13499585946102166246

`A001222(A005010(n))-A224931(n+1)`
-/

namespace A356208.P13499585946102166246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005010 n).toNat - A224931 (n + 1)

end

end A356208.P13499585946102166246

/-! ## A356208.P10382965065807307780

`A172005(A330006(n+1)+A051064(n+1))`
-/

namespace A356208.P10382965065807307780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172005 (A330006 (n + 1) + A051064 (n + 1)).toNat

end

end A356208.P10382965065807307780

/-!
# A356209: a(n) is the position of the latest occurrence of n in A133388.

The programs for A356209, there is no canonical definition to state claims against.
-/

/-! ## A356209.P313972258134855644

`A353386(A160663(n+1)-A302048(n))`
-/

namespace A356209.P313972258134855644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353386 (A160663 (n + 1) - A302048 n).toNat

end

end A356209.P313972258134855644

/-! ## A356209.P3182309228802737383

`A353386(A160663(n+1)-A046080(n+1))`
-/

namespace A356209.P3182309228802737383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353386 (A160663 (n + 1) - A046080 (n + 1)).toNat

end

end A356209.P3182309228802737383

/-! ## A356209.P11477520116844603367

`A353386(A160663(n+1)-char[A353387(n+3)])`
-/

namespace A356209.P11477520116844603367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353387 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353386 (A160663 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A356209.P11477520116844603367

/-! ## A356209.P15899296980497596556

`A058331(n+1)-A000188(A288336(n))`
-/

namespace A356209.P15899296980497596556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (n + 1) - A000188 (A288336 n).toNat

end

end A356209.P15899296980497596556

/-!
# A356212: Number of edge covers in the n-cycle complement graph bar C_n.

The programs for A356212, there is no canonical definition to state claims against.
-/

/-! ## A356212.P14291905391749933374

`A005206(A120420(n+1)-A000111(n))`
-/

namespace A356212.P14291905391749933374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A120420 (n + 1) - A000111 n).toNat

end

end A356212.P14291905391749933374

/-!
# A356217: a(n) = A022839(A000201(n)).

The programs for A356217, the canonical program `A356217.P6257912872114200972` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356217 has offset 1).

The definition of A356217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356217.P6257912872114200972

`A022839(A000201(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A356217

/-- `A022839(A000201(n+1))` -/
def P6257912872114200972.Spec : Prop :=
  ∀ n, P6257912872114200972.a n = A356217 (n + 1)

theorem P6257912872114200972.correct : P6257912872114200972.Spec := by
  intro n
  simp only [A356217, Nat.add_sub_cancel]

end A356217

/-! ## A356217.P56557355794996334

`floor(sqrt(5)*floor(ϕ*(n+1)))`
-/

namespace A356217.P56557355794996334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (5 : ℝ) * (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ : ℝ)⌋

end

end A356217.P56557355794996334

namespace A356217

/-- `floor(sqrt(5)*floor(ϕ*(n+1)))` -/
def P56557355794996334.Spec : Prop :=
  ∀ n, P56557355794996334.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P32428834231800642

`abs(floor(ϕ*(n+1))-A140979(n+1))`
-/

namespace A356217.P32428834231800642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - A140979 (n + 1)|

end

end A356217.P32428834231800642

namespace A356217

/-- `abs(floor(ϕ*(n+1))-A140979(n+1))` -/
def P32428834231800642.Spec : Prop :=
  ∀ n, P32428834231800642.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P14398232808931277812

`A140979(n+1)-A000201(n+1)`
-/

namespace A356217.P14398232808931277812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140979 (n + 1) - A000201 (n + 1)

end

end A356217.P14398232808931277812

namespace A356217

/-- `A140979(n+1)-A000201(n+1)` -/
def P14398232808931277812.Spec : Prop :=
  ∀ n, P14398232808931277812.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P767752158211562808

`A022839(floor(ϕ*(n+1)))`
-/

namespace A356217.P767752158211562808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

end

end A356217.P767752158211562808

namespace A356217

/-- `A022839(floor(ϕ*(n+1)))` -/
def P767752158211562808.Spec : Prop :=
  ∀ n, P767752158211562808.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P8516692820414237025

`A190511(floor(ϕ*(n+1)))+1`
-/

namespace A356217.P8516692820414237025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190511 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat + 1

end

end A356217.P8516692820414237025

namespace A356217

/-- `A190511(floor(ϕ*(n+1)))+1` -/
def P8516692820414237025.Spec : Prop :=
  ∀ n, P8516692820414237025.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P5534482721212956712

`A198082(floor(ϕ*(n+1)))-1`
-/

namespace A356217.P5534482721212956712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat - 1

end

end A356217.P5534482721212956712

namespace A356217

/-- `A198082(floor(ϕ*(n+1)))-1` -/
def P5534482721212956712.Spec : Prop :=
  ∀ n, P5534482721212956712.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P11695117912163765387

`A007067(floor(ϕ*(n+1)))+n`
-/

namespace A356217.P11695117912163765387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat + (n : ℤ)

end

end A356217.P11695117912163765387

namespace A356217

/-- `A007067(floor(ϕ*(n+1)))+n` -/
def P11695117912163765387.Spec : Prop :=
  ∀ n, P11695117912163765387.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P1390351607609556632

`A276854(floor(ϕ*(n+1)))-floor(ϕ*(n+1))`
-/

namespace A356217.P1390351607609556632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat - ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A356217.P1390351607609556632

namespace A356217

/-- `A276854(floor(ϕ*(n+1)))-floor(ϕ*(n+1))` -/
def P1390351607609556632.Spec : Prop :=
  ∀ n, P1390351607609556632.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P13341876375077418935

`A026262(A356218(n+1))`
-/

namespace A356217.P13341876375077418935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026262 (A356218 (n + 1)).toNat

end

end A356217.P13341876375077418935

namespace A356217

/-- `A026262(A356218(n+1))` -/
def P13341876375077418935.Spec : Prop :=
  ∀ n, P13341876375077418935.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P10740707126048829336

`A194151(2*floor(ϕ*(n+1)))`
-/

namespace A356217.P10740707126048829336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋).toNat

end

end A356217.P10740707126048829336

namespace A356217

/-- `A194151(2*floor(ϕ*(n+1)))` -/
def P10740707126048829336.Spec : Prop :=
  ∀ n, P10740707126048829336.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P10037517902788294750

`A050140(A283233(n+1))/2`
-/

namespace A356217.P10037517902788294750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050140 (A283233 (n + 1)).toNat : ℚ) / 2

end

end A356217.P10037517902788294750

namespace A356217

/-- `A050140(A283233(n+1))/2` -/
def P10037517902788294750.Spec : Prop :=
  ∀ n, P10037517902788294750.a n = (A356217 (n + 1) : ℚ)

end A356217

/-! ## A356217.P11121237903243475529

`A000201(A283233(n+1))-A000201(n+1)`
-/

namespace A356217.P11121237903243475529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A283233 (n + 1)).toNat - A000201 (n + 1)

end

end A356217.P11121237903243475529

namespace A356217

/-- `A000201(A283233(n+1))-A000201(n+1)` -/
def P11121237903243475529.Spec : Prop :=
  ∀ n, P11121237903243475529.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P15223404703570952602

`filter[A022839(n+1), A383422(#)]`
-/

namespace A356217.P15223404703570952602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383422 (f1 j).toNat = 1) n)

end

end A356217.P15223404703570952602

namespace A356217

/-- `filter[A022839(n+1), A383422(#)]` -/
def P15223404703570952602.Spec : Prop :=
  ∀ n, P15223404703570952602.a n = A356217 (n + 1)

end A356217

/-! ## A356217.P2856153841250621721

`filter[A194151(2*(n+1)), A383422(#)]`
-/

namespace A356217.P2856153841250621721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383422 (f1 j).toNat = 1) n)

end

end A356217.P2856153841250621721

namespace A356217

/-- `filter[A194151(2*(n+1)), A383422(#)]` -/
def P2856153841250621721.Spec : Prop :=
  ∀ n, P2856153841250621721.a n = A356217 (n + 1)

end A356217

/-!
# A356218: a(n) = A108598(A000201(n)).

The programs for A356218, the canonical program `A356218.P4160434516536575008` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356218 has offset 1).

The definition of A356218 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A108598(A000201(n+1))` (program `A356218.P4160434516536575008`, by `A356218.P4160434516536575008.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356218.P4160434516536575008

`A108598(A000201(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A356218

/-- `A108598(A000201(n+1))` -/
def P4160434516536575008.Spec : Prop :=
  ∀ n, P4160434516536575008.a n = A356218 (n + 1)

theorem P4160434516536575008.correct : P4160434516536575008.Spec := by
  intro n
  simp only [A356218, Nat.add_sub_cancel]

end A356218

/-! ## A356218.P5015593436570388476

`ceil(∑[Δ[floor(ϕ*n)]²+3]/2)-1`
-/

namespace A356218.P5015593436570388476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉ - 1

end

end A356218.P5015593436570388476

namespace A356218

/-- `ceil(∑[Δ[floor(ϕ*n)]²+3]/2)-1` -/
def P5015593436570388476.Spec : Prop :=
  ∀ n, P5015593436570388476.a n = A356218 (n + 1)

end A356218

/-! ## A356218.P13920378460376596179

`floor(sinh(log(3*floor(ϕ*(n+1))+n+1)))`
-/

namespace A356218.P13920378460376596179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n + 1 : ℤ) : ℝ))⌋

end

end A356218.P13920378460376596179

namespace A356218

/-- `floor(sinh(log(3*floor(ϕ*(n+1))+n+1)))` -/
def P13920378460376596179.Spec : Prop :=
  ∀ n, P13920378460376596179.a n = A356218 (n + 1)

end A356218

/-! ## A356218.P10855869393860558408

`floor((A035337(n)-n)/2)`
-/

namespace A356218.P10855869393860558408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035337 n - (n : ℤ) : ℚ) / 2⌋

end

end A356218.P10855869393860558408

namespace A356218

/-- `floor((A035337(n)-n)/2)` -/
def P10855869393860558408.Spec : Prop :=
  ∀ n, P10855869393860558408.a n = A356218 (n + 1)

end A356218

/-! ## A356218.P9533036159778287383

`floor((A190509(n+1)-1)/2)`
-/

namespace A356218.P9533036159778287383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190509 (n + 1) - 1 : ℚ) / 2⌋

end

end A356218.P9533036159778287383

namespace A356218

/-- `floor((A190509(n+1)-1)/2)` -/
def P9533036159778287383.Spec : Prop :=
  ∀ n, P9533036159778287383.a n = A356218 (n + 1)

end A356218

/-! ## A356218.P8007387502642339175

`floor((A134860(n+1)-(n+1))/2)`
-/

namespace A356218.P8007387502642339175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134860 (n + 1) - (n + 1 : ℤ) : ℚ) / 2⌋

end

end A356218.P8007387502642339175

namespace A356218

/-- `floor((A134860(n+1)-(n+1))/2)` -/
def P8007387502642339175.Spec : Prop :=
  ∀ n, P8007387502642339175.a n = A356218 (n + 1)

end A356218

/-! ## A356218.P8606787382774461641

`round(sqrt(floor(((ϕ*A035336(n+1)-1-n)/2)²)+1))`
-/

namespace A356218.P8606787382774461641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (⌊((Real.goldenRatio * (A035336 (n + 1) : ℝ) - 1 - (n : ℝ)) / 2) ^ 2⌋ + 1 : ℝ))

end

end A356218.P8606787382774461641

namespace A356218

/-- `round(sqrt(floor(((ϕ*A035336(n+1)-1-n)/2)²)+1))` -/
def P8606787382774461641.Spec : Prop :=
  ∀ n, P8606787382774461641.a n = A356218 (n + 1)

end A356218

/-! ## A356218.P11156489304977582997

`A108598(floor(ϕ*(n+1)))`
-/

namespace A356218.P11156489304977582997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

end

end A356218.P11156489304977582997

namespace A356218

/-- `A108598(floor(ϕ*(n+1)))` -/
def P11156489304977582997.Spec : Prop :=
  ∀ n, P11156489304977582997.a n = A356218 (n + 1)

end A356218

/-! ## A356218.P2921463745170632225

`A026262(A356217(n+1))`
-/

namespace A356218.P2921463745170632225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026262 (A356217 (n + 1)).toNat

end

end A356218.P2921463745170632225

namespace A356218

/-- `A026262(A356217(n+1))` -/
def P2921463745170632225.Spec : Prop :=
  ∀ n, P2921463745170632225.a n = A356218 (n + 1)

end A356218

/-! ## A356218.P9052432563696647004

`A004526(3*floor(n*ϕ²+ϕ)-n-n)`
-/

namespace A356218.P9052432563696647004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ) - (n : ℤ)).toNat

end

end A356218.P9052432563696647004

namespace A356218

/-- `A004526(3*floor(n*ϕ²+ϕ)-n-n)` -/
def P9052432563696647004.Spec : Prop :=
  ∀ n, P9052432563696647004.a n = A356218 (n + 1)

end A356218

/-! ## A356218.P1742279384932353408

`A140106(A342089(n+1))`
-/

namespace A356218.P1742279384932353408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A342089 (n + 1)).toNat

end

end A356218.P1742279384932353408

namespace A356218

/-- `A140106(A342089(n+1))` -/
def P1742279384932353408.Spec : Prop :=
  ∀ n, P1742279384932353408.a n = A356218 (n + 1)

end A356218

/-!
# A356219: Intersection of A001952 and A003151.

The programs for A356219, there is no canonical definition to state claims against.
-/

/-! ## A356219.P12829206854927086766

`A043090(2*n+3)+A001583(A090872(n))`
-/

namespace A356219.P12829206854927086766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 (2 * n + 3) + A001583 (A090872 n).toNat

end

end A356219.P12829206854927086766

/-!
# A356220: a(n) = A108598(A001950(n)).

The programs for A356220, the canonical program `A356220.P15439042730488977339` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356220 has offset 1).

The definition of A356220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356220.P15439042730488977339

`A108598(A001950(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A356220

/-- `A108598(A001950(n+1))` -/
def P15439042730488977339.Spec : Prop :=
  ∀ n, P15439042730488977339.a n = A356220 (n + 1)

theorem P15439042730488977339.correct : P15439042730488977339.Spec := by
  intro n
  simp only [A356220, Nat.add_sub_cancel]

end A356220

/-! ## A356220.P12591715670226165052

`ceil(n/2)+floor(ϕ*comp[floor(ϕ*n)])`
-/

namespace A356220.P12591715670226165052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + ⌊Real.goldenRatio * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌋

end

end A356220.P12591715670226165052

namespace A356220

/-- `ceil(n/2)+floor(ϕ*comp[floor(ϕ*n)])` -/
def P12591715670226165052.Spec : Prop :=
  ∀ n, P12591715670226165052.a n = A356220 (n + 1)

end A356220

/-! ## A356220.P13239116510135011641

`floor(round((ϕ+2)*floor(ϕ*ϕ*C(n+1, n)))/2)`
-/

namespace A356220.P13239116510135011641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway ((Real.goldenRatio + 2) * (⌊Real.goldenRatio * (Real.goldenRatio * (Nat.choose (n + 1) n : ℝ))⌋ : ℝ)) : ℚ) / 2⌋

end

end A356220.P13239116510135011641

namespace A356220

/-- `floor(round((ϕ+2)*floor(ϕ*ϕ*C(n+1, n)))/2)` -/
def P13239116510135011641.Spec : Prop :=
  ∀ n, P13239116510135011641.a n = A356220 (n + 1)

end A356220

/-! ## A356220.P11195373000142098014

`floor(round((ϕ+2)*ceil(xor(1, 2*n)+(n+1)/ϕ))/2)`
-/

namespace A356220.P11195373000142098014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway ((Real.goldenRatio + 2) * (⌈(Nat.xor 1 (2 * n) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉ : ℝ)) : ℚ) / 2⌋

end

end A356220.P11195373000142098014

namespace A356220

/-- `floor(round((ϕ+2)*ceil(xor(1, 2*n)+(n+1)/ϕ))/2)` -/
def P11195373000142098014.Spec : Prop :=
  ∀ n, P11195373000142098014.a n = A356220 (n + 1)

end A356220

/-! ## A356220.P2877249462739532732

`floor((floor((4*ϕ+3)*(n+1))-floor(4*ϕ*(n+1))%4)/2)`
-/

namespace A356220.P2877249462739532732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(4 * Real.goldenRatio + 3) * (n + 1 : ℝ)⌋ - Int.tmod ⌊4 * (Real.goldenRatio * (n + 1 : ℝ))⌋ 4 : ℚ) / 2⌋

end

end A356220.P2877249462739532732

namespace A356220

/-- `floor((floor((4*ϕ+3)*(n+1))-floor(4*ϕ*(n+1))%4)/2)` -/
def P2877249462739532732.Spec : Prop :=
  ∀ n, P2877249462739532732.a n = A356220 (n + 1)

end A356220

/-! ## A356220.P5439673781699328046

`ceil(A003623(n+1)+n/2)`
-/

namespace A356220.P5439673781699328046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003623 (n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A356220.P5439673781699328046

namespace A356220

/-- `ceil(A003623(n+1)+n/2)` -/
def P5439673781699328046.Spec : Prop :=
  ∀ n, P5439673781699328046.a n = A356220 (n + 1)

end A356220

/-! ## A356220.P9842473527168787627

`A108598(comp[floor(ϕ*n)])`
-/

namespace A356220.P9842473527168787627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356220.P9842473527168787627

namespace A356220

/-- `A108598(comp[floor(ϕ*n)])` -/
def P9842473527168787627.Spec : Prop :=
  ∀ n, P9842473527168787627.a n = A356220 (n + 1)

end A356220

/-! ## A356220.P700371660032461207

`floor(A003231(comp[floor(ϕ*n)])/2)`
-/

namespace A356220.P700371660032461207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003231 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2⌋

end

end A356220.P700371660032461207

namespace A356220

/-- `floor(A003231(comp[floor(ϕ*n)])/2)` -/
def P700371660032461207.Spec : Prop :=
  ∀ n, P700371660032461207.a n = A356220 (n + 1)

end A356220

/-! ## A356220.P2855748736500229395

`A026262(3*floor(ϕ*(n+1))+n+1)`
-/

namespace A356220.P2855748736500229395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026262 (3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A356220.P2855748736500229395

namespace A356220

/-- `A026262(3*floor(ϕ*(n+1))+n+1)` -/
def P2855748736500229395.Spec : Prop :=
  ∀ n, P2855748736500229395.a n = A356220 (n + 1)

end A356220

/-! ## A356220.P474868857592308887

`floor(A101865(n+1)/2)`
-/

namespace A356220.P474868857592308887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101865 (n + 1) : ℚ) / 2⌋

end

end A356220.P474868857592308887

namespace A356220

/-- `floor(A101865(n+1)/2)` -/
def P474868857592308887.Spec : Prop :=
  ∀ n, P474868857592308887.a n = A356220 (n + 1)

end A356220

/-!
# A356221: Position of second appearance of 2n in the sequence of prime gaps A001223; if 2n does not appear at least twice, a(n) = -1.

The programs for A356221, there is no canonical definition to state claims against.
-/

/-! ## A356221.P16695610173330584324

`A174349(∑[n+2])`
-/

namespace A356221.P16695610173330584324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356221.P16695610173330584324

/-! ## A356221.P5268011756958891307

`A174349(A000096(n+1))%A332598(n+1)`
-/

namespace A356221.P5268011756958891307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174349 (A000096 (n + 1)).toNat) (A332598 (n + 1))

end

end A356221.P5268011756958891307

/-! ## A356221.P7051145391004115446

`A174349(A000096(n+1))+A000007(3*n+1)`
-/

namespace A356221.P7051145391004115446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (A000096 (n + 1)).toNat + A000007 (3 * n + 1)

end

end A356221.P7051145391004115446

/-! ## A356221.P11458731615254188317

`A174349(A000096(n+1))*A178334(2*n+1)`
-/

namespace A356221.P11458731615254188317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (A000096 (n + 1)).toNat * A178334 (2 * n + 1)

end

end A356221.P11458731615254188317

/-! ## A356221.P5670179879143299797

`A000720(A046789(n+1))`
-/

namespace A356221.P5670179879143299797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046789 (n + 1)).toNat

end

end A356221.P5670179879143299797

/-!
# A356222: Array read by antidiagonals upwards where A(n,k) is the position of the k-th appearance of 2n in the sequence of prime gaps A001223. If A001223 does not contain 2n at least k times, set A(n,k) = -1.

The programs for A356222, there is no canonical definition to state claims against.
-/

/-! ## A356222.P18168324001778762029

`A146942(n+1)+1`
-/

namespace A356222.P18168324001778762029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146942 (n + 1) + 1

end

end A356222.P18168324001778762029

/-! ## A356222.P8334508211321327234

`A174349(∑[char[∑[n]]]²-n)`
-/

namespace A356222.P8334508211321327234
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A356222.P8334508211321327234

/-! ## A356222.P17050902078649304322

`A146941(∑[char[∑[n]]]²-n)+1`
-/

namespace A356222.P17050902078649304322
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146941 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + 1

end

end A356222.P17050902078649304322

/-! ## A356222.P10802304399329195496

`A020725(A146942(n+1))`
-/

namespace A356222.P10802304399329195496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A146942 (n + 1)).toNat

end

end A356222.P10802304399329195496

/-! ## A356222.P4911454342677445493

`A000720(A231609(n+1))`
-/

namespace A356222.P4911454342677445493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231609 (n + 1)).toNat

end

end A356222.P4911454342677445493

/-! ## A356222.P6368652416934800353

`A003963(p?[A231609(n+1)])`
-/

namespace A356222.P6368652416934800353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A356222.P6368652416934800353

/-! ## A356222.P13585167249271768074

`A055396(p?[A231609(n+1)])`
-/

namespace A356222.P13585167249271768074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A356222.P13585167249271768074

/-! ## A356222.P17099997567073225012

`A061395(p?[A231609(n+1)])`
-/

namespace A356222.P17099997567073225012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A356222.P17099997567073225012

/-! ## A356222.P7038104427646242280

`A065770(p?[A231609(n+1)])`
-/

namespace A356222.P7038104427646242280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A356222.P7038104427646242280

/-! ## A356222.P17693799774228410336

`A230980(p?[A231609(n+1)])`
-/

namespace A356222.P17693799774228410336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A356222.P17693799774228410336

/-!
# A356223: Position of n-th appearance of 2n in the sequence of prime gaps (A001223). If 2n does not appear at least n times, set a(n) = -1.

The programs for A356223, there is no canonical definition to state claims against.
-/

/-! ## A356223.P39690055675903107

`A174349(∑[4*n]+1)`
-/

namespace A356223.P39690055675903107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A356223.P39690055675903107

/-! ## A356223.P3861365039277020928

`A174349(xor(3, Δ[n²]²)/2)+A010054(3*n+2)`
-/

namespace A356223.P3861365039277020928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (SequenceMachineLib.roundAway ((Int.xor 3 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) : ℚ) / 2)).toNat + A010054 (3 * n + 2)

end

end A356223.P3861365039277020928

/-! ## A356223.P10156332744189802995

`A243834(n)+A174349(A001844(n))`
-/

namespace A356223.P10156332744189802995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243834 n + A174349 (A001844 n).toNat

end

end A356223.P10156332744189802995

/-! ## A356223.P10459261439561394348

`A174349(A001844(n))%A042160(n)`
-/

namespace A356223.P10459261439561394348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174349 (A001844 n).toNat) (A042160 n)

end

end A356223.P10459261439561394348

/-! ## A356223.P6722932174739758346

`A174349(A001844(n))+A024362(2*(n+1))`
-/

namespace A356223.P6722932174739758346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174349 (A001844 n).toNat + A024362 (2 * (n + 1))

end

end A356223.P6722932174739758346

/-!
# A356224: Number of divisors of n whose prime indices cover an initial interval of positive integers.

The programs for A356224, there is no canonical definition to state claims against.
-/

/-! ## A356224.P1533314534766937680

`∑{d}[n+1, A341629(#)]`
-/

namespace A356224.P1533314534766937680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341629 d

end

end A356224.P1533314534766937680

/-! ## A356224.P12675214614707569044

`∏{e}[n+1, #+1]-A356225(n+1)`
-/

namespace A356224.P12675214614707569044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A356225 (n + 1)

end

end A356224.P12675214614707569044

/-! ## A356224.P8919143073415578612

`val(n+1, 2)*a(A064989(n+1)-1)+1` with `a(0)=1`
-/

namespace A356224.P8919143073415578612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (n + 1) 2 * a (A064989 (n + 1) - 1).toNat + 1

end

end A356224.P8919143073415578612

/-! ## A356224.P7062540561981925441

`∑{d}[n+1, A384005(A007947(#))]`
-/

namespace A356224.P7062540561981925441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384005 (A007947 d).toNat

end

end A356224.P7062540561981925441

/-! ## A356224.P8012934594105528007

`Δ[A006218(n)]-A356225(n+1)`
-/

namespace A356224.P8012934594105528007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A356225 (n + 1)

end

end A356224.P8012934594105528007

/-! ## A356224.P13049178697813252236

`A000005(n+1)-A356225(n+1)`
-/

namespace A356224.P13049178697813252236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A356225 (n + 1)

end

end A356224.P13049178697813252236

/-! ## A356224.P4247067208274040363

`A179941(n+1)-A356225(n+1)`
-/

namespace A356224.P4247067208274040363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (n + 1) - A356225 (n + 1)

end

end A356224.P4247067208274040363

/-! ## A356224.P9396086173126240637

`∑{d}[n+1, 1-A000010(#)]+n+1-A356225(n+1)`
-/

namespace A356224.P9396086173126240637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ) - A356225 (n + 1)

end

end A356224.P9396086173126240637

/-! ## A356224.P6002931196104048643

`A129308(n+1)+A137921(n+1)-A356225(n+1)`
-/

namespace A356224.P6002931196104048643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) + (A137921 (n + 1) - A356225 (n + 1))

end

end A356224.P6002931196104048643

/-!
# A356225: Number of divisors of n whose prime indices do not cover an initial interval of positive integers.

The programs for A356225, there is no canonical definition to state claims against.
-/

/-! ## A356225.P2404528644208875093

`A000005(n+1)-A356224(n+1)`
-/

namespace A356225.P2404528644208875093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A356224 (n + 1)

end

end A356225.P2404528644208875093

/-! ## A356225.P5985157220590350611

`∑{d}[n+1, A001222(A079068(#))]`
-/

namespace A356225.P5985157220590350611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A079068 d).toNat

end

end A356225.P5985157220590350611

/-! ## A356225.P16390054567322318648

`Δ[A006218(n)]-A356224(n+1)`
-/

namespace A356225.P16390054567322318648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A356224 (n + 1)

end

end A356225.P16390054567322318648

/-! ## A356225.P2020653635177800360

`Δ[A054519(n)]-A356224(n+1)`
-/

namespace A356225.P2020653635177800360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A356224 (n + 1)

end

end A356225.P2020653635177800360

/-! ## A356225.P7084586269599690418

`A179941(n+1)-A356224(n+1)`
-/

namespace A356225.P7084586269599690418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (n + 1) - A356224 (n + 1)

end

end A356225.P7084586269599690418

/-! ## A356225.P39121135871154332

`∑{d}[n+1, 1-A000010(#)]+n+1-A356224(n+1)`
-/

namespace A356225.P39121135871154332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ) - A356224 (n + 1)

end

end A356225.P39121135871154332

/-!
# A356226: Irregular triangle giving the lengths of maximal gapless submultisets of the prime indices of n.

The programs for A356226, there is no canonical definition to state claims against.
-/

/-! ## A356226.P6717870993804266990

`∑{e}[A356234(n+1), #]`
-/

namespace A356226.P6717870993804266990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A356226.P6717870993804266990

/-! ## A356226.P8985231190516655259

`A001222(A356234(n+1))`
-/

namespace A356226.P8985231190516655259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A356234 (n + 1)).toNat

end

end A356226.P8985231190516655259

/-! ## A356226.P8165070367476509201

`A356227(A356234(2*n+1-n))`
-/

namespace A356226.P8165070367476509201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356227 (A356234 (2 * n + 1 - n)).toNat

end

end A356226.P8165070367476509201

/-! ## A356226.P13119828154571358245

`A061395(A356231(A356234(n+1))²)`
-/

namespace A356226.P13119828154571358245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A356231 (A356234 (n + 1)).toNat ^ 2).toNat

end

end A356226.P13119828154571358245

/-! ## A356226.P2813840381530854542

`A289508(A356231(A356234(n+1))²)`
-/

namespace A356226.P2813840381530854542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A356231 (A356234 (n + 1)).toNat ^ 2).toNat

end

end A356226.P2813840381530854542

/-!
# A356227: Smallest size of a maximal gapless submultiset of the prime indices of n.

The programs for A356227, there is no canonical definition to state claims against.
-/

/-! ## A356227.P5317181771533450993

`A333768(A356230(n+1))`
-/

namespace A356227.P5317181771533450993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A356230 (n + 1)).toNat

end

end A356227.P5317181771533450993

/-! ## A356227.P3660352763685491155

`A055396(A356231(n+1))`
-/

namespace A356227.P3660352763685491155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A356231 (n + 1)).toNat

end

end A356227.P3660352763685491155

/-! ## A356227.P17080532581562807240

`gcd(∑{e}[n+1, #], A073490(n+1))`
-/

namespace A356227.P17080532581562807240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A073490 (n + 1))

end

end A356227.P17080532581562807240

/-! ## A356227.P11180139804566275961

`gcd(∑{e}[n+1, #]², A356228(n+1))`
-/

namespace A356227.P11180139804566275961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2 : ℕ) : ℤ) (A356228 (n + 1))

end

end A356227.P11180139804566275961

/-! ## A356227.P15460631756329270665

`gcd(A001222(n+1), A073490(n+1))`
-/

namespace A356227.P15460631756329270665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A073490 (n + 1))

end

end A356227.P15460631756329270665

/-! ## A356227.P17330952843995251113

`gcd(A144494(n+1), A356228(n+1))`
-/

namespace A356227.P17330952843995251113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144494 (n + 1)) (A356228 (n + 1))

end

end A356227.P17330952843995251113

/-! ## A356227.P13071443198555083316

`A001222(A046523(n+1)-A073490(n+1))`
-/

namespace A356227.P13071443198555083316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046523 (n + 1) - A073490 (n + 1)).toNat

end

end A356227.P13071443198555083316

/-! ## A356227.P4197071313754068072

`A001222(A071364(n+1)-A073490(n+1))`
-/

namespace A356227.P4197071313754068072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071364 (n + 1) - A073490 (n + 1)).toNat

end

end A356227.P4197071313754068072

/-! ## A356227.P4650915386765126290

`C(A001222(n+1), A261517(A286470(n+1)))`
-/

namespace A356227.P4650915386765126290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (A261517 (A286470 (n + 1)).toNat).toNat

end

end A356227.P4650915386765126290

/-! ## A356227.P14710579141932362199

`1-A137794(n+1)*A325036(A061142(n+1))`
-/

namespace A356227.P14710579141932362199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137794 (n + 1) * A325036 (A061142 (n + 1)).toNat

end

end A356227.P14710579141932362199

/-!
# A356228: Greatest size of a gapless submultiset of the prime indices of n.

The programs for A356228, there is no canonical definition to state claims against.
-/

/-! ## A356228.P11097588674670405066

`A333766(A356230(n+1))`
-/

namespace A356228.P11097588674670405066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A356230 (n + 1)).toNat

end

end A356228.P11097588674670405066

/-! ## A356228.P2367248069008205875

`A061395(A356231(n+1))`
-/

namespace A356228.P2367248069008205875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A356231 (n + 1)).toNat

end

end A356228.P2367248069008205875

/-! ## A356228.P5047470219544047375

`∑{e}[n+1, #]-A073490(n+1)`
-/

namespace A356228.P5047470219544047375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A073490 (n + 1)

end

end A356228.P5047470219544047375

/-! ## A356228.P4861634977537929735

`A300820(n+1)+∑{e}[n+1, #-1]`
-/

namespace A356228.P4861634977537929735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)

end

end A356228.P4861634977537929735

/-! ## A356228.P1238274766445396450

`∑{e}[n+1, #]-(1-A137794(n+1))`
-/

namespace A356228.P1238274766445396450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - (1 - A137794 (n + 1))

end

end A356228.P1238274766445396450

/-! ## A356228.P5331597111499721918

`∑{e}[n+1, #]+1-A287170(n+1)!`
-/

namespace A356228.P5331597111499721918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ) - (Nat.factorial (A287170 (n + 1)).toNat : ℤ)

end

end A356228.P5331597111499721918

/-! ## A356228.P12106726362368221619

`Δ[A022559(n)]-A073490(n+1)`
-/

namespace A356228.P12106726362368221619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073490 (n + 1)

end

end A356228.P12106726362368221619

/-! ## A356228.P10709346570472162291

`A300820(n+1)+A046660(n+1)`
-/

namespace A356228.P10709346570472162291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1) + A046660 (n + 1)

end

end A356228.P10709346570472162291

/-! ## A356228.P17668052720597403883

`A001222(n+1)-A073490(n+1)`
-/

namespace A356228.P17668052720597403883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A073490 (n + 1)

end

end A356228.P17668052720597403883

/-! ## A356228.P6498399025307906804

`A137794(n+1)-A325036(A061142(n+1))`
-/

namespace A356228.P6498399025307906804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (n + 1) - A325036 (A061142 (n + 1)).toNat

end

end A356228.P6498399025307906804

/-!
# A356229: Number of maximal gapless submultisets of the prime indices of 2n.

The programs for A356229, the canonical program `A356229.P13870738333208729634` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356229 has offset 1).

The definition of A356229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287170, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356229.P13870738333208729634

`A287170(2*(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A356229

/-- `A287170(2*(n+1))` -/
def P13870738333208729634.Spec : Prop :=
  ∀ n, P13870738333208729634.a n = A356229 (n + 1)

theorem P13870738333208729634.correct : P13870738333208729634.Spec := by
  intro n
  simp only [A356229, Nat.add_sub_cancel]

end A356229

/-! ## A356229.P9297719342112375887

`A073490(2*(n+1))+1`
-/

namespace A356229.P9297719342112375887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (2 * (n + 1)) + 1

end

end A356229.P9297719342112375887

namespace A356229

/-- `A073490(2*(n+1))+1` -/
def P9297719342112375887.Spec : Prop :=
  ∀ n, P9297719342112375887.a n = A356229 (n + 1)

end A356229

/-! ## A356229.P551116979330886863

`A306446(lcm(2, ∏{p}[n+1, #]))`
-/

namespace A356229.P551116979330886863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A356229.P551116979330886863

namespace A356229

/-- `A306446(lcm(2, ∏{p}[n+1, #]))` -/
def P551116979330886863.Spec : Prop :=
  ∀ n, P551116979330886863.a n = A356229 (n + 1)

end A356229

/-! ## A356229.P6363001312475811584

`∑{e}[A348994(∏{p}[2*(n+1), #]), #]`
-/

namespace A356229.P6363001312475811584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348994 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A356229.P6363001312475811584

namespace A356229

/-- `∑{e}[A348994(∏{p}[2*(n+1), #]), #]` -/
def P6363001312475811584.Spec : Prop :=
  ∀ n, (P6363001312475811584.a n : ℤ) = A356229 (n + 1)

end A356229

/-! ## A356229.P14907524146269902709

`(A073490(∏{p}[Δ[n²]+1, #])+1)%29`
-/

namespace A356229.P14907524146269902709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073490 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) + 1) 29

end

end A356229.P14907524146269902709

namespace A356229

/-- `(A073490(∏{p}[Δ[n²]+1, #])+1)%29` -/
def P14907524146269902709.Spec : Prop :=
  ∀ n, P14907524146269902709.a n = A356229 (n + 1)

end A356229

/-! ## A356229.P12745365916304127218

`A306446(A007947(2*(n+1)))`
-/

namespace A356229.P12745365916304127218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (A007947 (2 * (n + 1))).toNat

end

end A356229.P12745365916304127218

namespace A356229

/-- `A306446(A007947(2*(n+1)))` -/
def P12745365916304127218.Spec : Prop :=
  ∀ n, P12745365916304127218.a n = A356229 (n + 1)

end A356229

/-! ## A356229.P13012930778147727798

`A287170(n+1)+A232991(n)`
-/

namespace A356229.P13012930778147727798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1) + A232991 n

end

end A356229.P13012930778147727798

namespace A356229

/-- `A287170(n+1)+A232991(n)` -/
def P13012930778147727798.Spec : Prop :=
  ∀ n, P13012930778147727798.a n = A356229 (n + 1)

end A356229

/-! ## A356229.P15680162301085466975

`A287170(n+2+n)%7`
-/

namespace A356229.P15680162301085466975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287170 (n + 2 + n)) 7

end

end A356229.P15680162301085466975

namespace A356229

/-- `A287170(n+2+n)%7` -/
def P15680162301085466975.Spec : Prop :=
  ∀ n, P15680162301085466975.a n = A356229 (n + 1)

end A356229

/-! ## A356229.P5488554830124954785

`A306446(A302138(2*(n+1)))`
-/

namespace A356229.P5488554830124954785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (A302138 (2 * (n + 1))).toNat

end

end A356229.P5488554830124954785

namespace A356229

/-- `A306446(A302138(2*(n+1)))` -/
def P5488554830124954785.Spec : Prop :=
  ∀ n, P5488554830124954785.a n = A356229 (n + 1)

end A356229

/-! ## A356229.P16544961142563877474

`A306446(A328915(2*(n+1)))`
-/

namespace A356229.P16544961142563877474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (A328915 (2 * (n + 1))).toNat

end

end A356229.P16544961142563877474

namespace A356229

/-- `A306446(A328915(2*(n+1)))` -/
def P16544961142563877474.Spec : Prop :=
  ∀ n, P16544961142563877474.a n = A356229 (n + 1)

end A356229

/-! ## A356229.P1955297035750774574

`A306446(A273258(2*(n+1)))`
-/

namespace A356229.P1955297035750774574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (A273258 (2 * (n + 1))).toNat

end

end A356229.P1955297035750774574

namespace A356229

/-- `A306446(A273258(2*(n+1)))` -/
def P1955297035750774574.Spec : Prop :=
  ∀ n, P1955297035750774574.a n = A356229 (n + 1)

end A356229

/-! ## A356229.P3948708635819652869

`A306446(A078615(2*(n+1)))`
-/

namespace A356229.P3948708635819652869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (A078615 (2 * (n + 1))).toNat

end

end A356229.P3948708635819652869

namespace A356229

/-- `A306446(A078615(2*(n+1)))` -/
def P3948708635819652869.Spec : Prop :=
  ∀ n, P3948708635819652869.a n = A356229 (n + 1)

end A356229

/-!
# A356230: The a(n)-th composition in standard order is the sequence of lengths of maximal gapless submultisets of the prime indices of n.

The programs for A356230, there is no canonical definition to state claims against.
-/

/-! ## A356230.P3350815581652542757

`A156552(A356231(n+1)%A308251(2*(n+1)))`
-/

namespace A356230.P3350815581652542757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.tmod (A356231 (n + 1)) (A308251 (2 * (n + 1)))).toNat

end

end A356230.P3350815581652542757

/-! ## A356230.P11627313382608936630

`A156552(A356231(n+1)/A356224(2*n+3))`
-/

namespace A356230.P11627313382608936630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (SequenceMachineLib.roundAway ((A356231 (n + 1) : ℚ) / (A356224 (2 * n + 3) : ℚ))).toNat

end

end A356230.P11627313382608936630

/-! ## A356230.P9392514422040999365

`A156552(A356231(n+1))%A007825(n)`
-/

namespace A356230.P9392514422040999365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (A356231 (n + 1)).toNat) (A007825 n)

end

end A356230.P9392514422040999365

/-! ## A356230.P11347498275916777824

`A156552(A356231(n+1)%A096820(n+1))`
-/

namespace A356230.P11347498275916777824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.tmod (A356231 (n + 1)) (A096820 (n + 1))).toNat

end

end A356230.P11347498275916777824

/-! ## A356230.P2627223221559095507

`A332816(A356231(n+1))%A137756(2*n+3)`
-/

namespace A356230.P2627223221559095507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332816 (A356231 (n + 1)).toNat) (A137756 (2 * n + 3))

end

end A356230.P2627223221559095507

/-!
# A356231: Heinz number of the sequence (A356226) of lengths of maximal gapless submultisets of the prime indices of n.

The programs for A356231, there is no canonical definition to state claims against.
-/

/-! ## A356231.P9117528877949265374

`A333219(A356230(n+1)+1)`
-/

namespace A356231.P9117528877949265374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A356230 (n + 1) + 1).toNat

end

end A356231.P9117528877949265374

/-! ## A356231.P12980459703138175428

`A358506(A356230(n+1)+1)`
-/

namespace A356231.P12980459703138175428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358506 (A356230 (n + 1) + 1).toNat

end

end A356231.P12980459703138175428

/-! ## A356231.P8461021478903697594

`A005940(A356230(n+1)+A091839(2*n+1))`
-/

namespace A356231.P8461021478903697594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A356230 (n + 1) + A091839 (2 * n + 1)).toNat

end

end A356231.P8461021478903697594

/-! ## A356231.P7662379622424728695

`A005940(A356230(n+1)+A356224(2*n+1))`
-/

namespace A356231.P7662379622424728695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A356230 (n + 1) + A356224 (2 * n + 1)).toNat

end

end A356231.P7662379622424728695

/-! ## A356231.P2291573878596944787

`A297165(A356230(n+1))%A120688(2*n+3)`
-/

namespace A356231.P2291573878596944787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297165 (A356230 (n + 1)).toNat) (A120688 (2 * n + 3))

end

end A356231.P2291573878596944787

/-!
# A356232: Numbers whose prime indices are all odd and cover an initial interval of odd positive integers.

The programs for A356232, there is no canonical definition to state claims against.
-/

/-! ## A356232.P4314395096630153437

`∩[A004612(n+1), A356021(n+1)]`
-/

namespace A356232.P4314395096630153437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356232.P4314395096630153437

/-! ## A356232.P1176433329424114562

`∩[A066208(n+1), A356021(n+1)]`
-/

namespace A356232.P1176433329424114562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356232.P1176433329424114562

/-! ## A356232.P12601812252191714923

`∩[A160545(n+1), A356021(n+1)]`
-/

namespace A356232.P12601812252191714923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356232.P12601812252191714923

/-! ## A356232.P11272198703781669208

`∩[A161790(n+1), A356021(n+1)]`
-/

namespace A356232.P11272198703781669208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356232.P11272198703781669208

/-! ## A356232.P1936064384113729312

`∩[A068382(n+1), A373847(n+1)]`
-/

namespace A356232.P1936064384113729312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356232.P1936064384113729312

/-!
# A356233: Number of integer factorizations of n into gapless numbers (A066311).

The programs for A356233, there is no canonical definition to state claims against.
-/

/-! ## A356233.P11312896421554708481

`A356945(A046523(n+1)*A356936(n+1))`
-/

namespace A356233.P11312896421554708481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356945 (A046523 (n + 1) * A356936 (n + 1)).toNat

end

end A356233.P11312896421554708481

/-! ## A356233.P2523562009331662315

`A000688(n+1)*A356936(A003961(n+1))`
-/

namespace A356233.P2523562009331662315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A356936 (A003961 (n + 1)).toNat

end

end A356233.P2523562009331662315

/-! ## A356233.P12390998394610230403

`A000688(n+1)*A356936(A332818(n+1))`
-/

namespace A356233.P12390998394610230403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A356936 (A332818 (n + 1)).toNat

end

end A356233.P12390998394610230403

/-! ## A356233.P13795165135465035854

`A000688(A356936(n+1)²*A045968(n+1))`
-/

namespace A356233.P13795165135465035854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A356936 (n + 1) ^ 2 * A045968 (n + 1)).toNat

end

end A356233.P13795165135465035854

/-! ## A356233.P1124892422681540367

`A000688(n+1)*A356936(A045973(n+1)/A045968(n+1))`
-/

namespace A356233.P1124892422681540367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A356936 (SequenceMachineLib.roundAway ((A045973 (n + 1) : ℚ) / (A045968 (n + 1) : ℚ))).toNat

end

end A356233.P1124892422681540367

/-!
# A356235: Number of integer partitions of n with a neighborless singleton.

The programs for A356235, there is no canonical definition to state claims against.
-/

/-! ## A356235.P18027961548284876019

`A000041(n)-A355393(n)`
-/

namespace A356235.P18027961548284876019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A355393 n

end

end A356235.P18027961548284876019

/-! ## A356235.P1551883285603318250

`A213598(n)-A355393(n)`
-/

namespace A356235.P1551883285603318250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A355393 n

end

end A356235.P1551883285603318250

/-! ## A356235.P422785718641357087

`∑[A002865(n)]-A355393(n)`
-/

namespace A356235.P422785718641357087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A355393 n

end

end A356235.P422785718641357087

/-! ## A356235.P5812102570864500154

`A035363(2*n)-A355393(n)`
-/

namespace A356235.P5812102570864500154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A355393 n

end

end A356235.P5812102570864500154

/-! ## A356235.P5134787716192825038

`A058398(A001844(n))-A355393(n)`
-/

namespace A356235.P5134787716192825038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A001844 n).toNat - A355393 n

end

end A356235.P5134787716192825038

/-!
# A356236: Number of integer partitions of n with a neighborless part.

The programs for A356236, there is no canonical definition to state claims against.
-/

/-! ## A356236.P13217080216521987511

`A000041(n)-A355394(n)`
-/

namespace A356236.P13217080216521987511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A355394 n

end

end A356236.P13217080216521987511

/-! ## A356236.P2236799069174413530

`A213598(n)-A355394(n)`
-/

namespace A356236.P2236799069174413530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A355394 n

end

end A356236.P2236799069174413530

/-! ## A356236.P11312764773584672168

`∑[A002865(n)]-A355394(n)`
-/

namespace A356236.P11312764773584672168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A355394 n

end

end A356236.P11312764773584672168

/-! ## A356236.P8337843313278845157

`A133041(n)-(A355394(n)+n)`
-/

namespace A356236.P8337843313278845157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A355394 n + (n : ℤ))

end

end A356236.P8337843313278845157

/-! ## A356236.P7205178795630305217

`∑{d}[n+1, A133732(#)]-A355394(n)`
-/

namespace A356236.P7205178795630305217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d - A355394 n

end

end A356236.P7205178795630305217

/-!
# A356237: Heinz numbers of integer partitions with a neighborless singleton.

The programs for A356237, there is no canonical definition to state claims against.
-/

/-! ## A356237.P14389261261779719964

`∪[A073492(n+1), Δ[A007504(n)]]`
-/

namespace A356237.P14389261261779719964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356237.P14389261261779719964

/-! ## A356237.P12685395006092290340

`∪[A073493(n+1), Δ[A007504(n)]]`
-/

namespace A356237.P12685395006092290340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356237.P12685395006092290340

/-! ## A356237.P12362994712143055504

`∪[A000040(n+1), A073492(n+1)]`
-/

namespace A356237.P12362994712143055504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356237.P12362994712143055504

/-! ## A356237.P12690247284971113848

`∪[A000040(n+1), A073493(n+1)]`
-/

namespace A356237.P12690247284971113848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356237.P12690247284971113848

/-! ## A356237.P14394635946121819275

`∪[A030291(n+1), A073492(n+1)]`
-/

namespace A356237.P14394635946121819275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356237.P14394635946121819275

/-! ## A356237.P4372158365450504213

`∪[A030291(n+1), A073493(n+1)]`
-/

namespace A356237.P4372158365450504213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356237.P4372158365450504213

/-! ## A356237.P9018399342419915480

`∪[A030475(n+1), A073492(n+1)]`
-/

namespace A356237.P9018399342419915480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356237.P9018399342419915480

/-! ## A356237.P15544638341550169011

`∪[A030475(n+1), A073493(n+1)]`
-/

namespace A356237.P15544638341550169011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356237.P15544638341550169011

/-! ## A356237.P5706193500836773244

`∪[A038618(n+1), A073492(n+1)]`
-/

namespace A356237.P5706193500836773244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356237.P5706193500836773244

/-! ## A356237.P18399148826656844788

`∪[A038618(n+1), A073493(n+1)]`
-/

namespace A356237.P18399148826656844788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356237.P18399148826656844788

/-!
# A356238: a(n) = Sum_{k=1..n} (k * floor(n/k))^n.

The programs for A356238, there is no canonical definition to state claims against.
-/

/-! ## A356238.P7967845442982644792

`A356239(n+1)-A356240(n+1)`
-/

namespace A356238.P7967845442982644792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356239 (n + 1) - A356240 (n + 1)

end

end A356238.P7967845442982644792

/-!
# A356239: a(n) = Sum_{k=1..n} k^n * sigma_0(k).

The programs for A356239, there is no canonical definition to state claims against.
-/

/-! ## A356239.P16029891222494856046

`A356240(n+1)+A356238(n+1)`
-/

namespace A356239.P16029891222494856046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356240 (n + 1) + A356238 (n + 1)

end

end A356239.P16029891222494856046

/-!
# A356240: a(n) = Sum_{k=1..n} (k-1)^n * Sum_{j=1..floor(n/k)} j^n.

The programs for A356240, there is no canonical definition to state claims against.
-/

/-! ## A356240.P7709394334863412620

`A356239(n+1)-A356238(n+1)`
-/

namespace A356240.P7709394334863412620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356239 (n + 1) - A356238 (n + 1)

end

end A356240.P7709394334863412620

/-! ## A356240.P12323618111443414675

`A356239(A000027(n+1))%A356238(n+1)`
-/

namespace A356240.P12323618111443414675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356239 (A000027 (n + 1)).toNat) (A356238 (n + 1))

end

end A356240.P12323618111443414675

/-! ## A356240.P15808380036409967541

`record[A356239(A023190(n+1))]%A356238(n+1)`
-/

namespace A356240.P15808380036409967541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356239 (A023190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A356238 (n + 1))

end

end A356240.P15808380036409967541

/-! ## A356240.P5875310240191046107

`(A356239(n+1)%A356238(n+1))%A332469(n+1)`
-/

namespace A356240.P5875310240191046107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A356239 (n + 1)) (A356238 (n + 1))) (A332469 (n + 1))

end

end A356240.P5875310240191046107

/-!
# A356241: a(n) is the number of distinct Fermat numbers dividing n.

The programs for A356241, the canonical program `A356241.P11760164375224009749` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356241 has offset 1).

The definition of A356241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356241.P8973379403346530263

`∑{p}[n+1, A063974(#)]`
-/

namespace A356241.P8973379403346530263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A063974 p

end

end A356241.P8973379403346530263

namespace A356241

/-- `∑{p}[n+1, A063974(#)]` -/
def P8973379403346530263.Spec : Prop :=
  ∀ n, P8973379403346530263.a n = A356241 (n + 1)

end A356241

/-! ## A356241.P11760164375224009749

`∑{p}[n+1, A151774(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A356241

/-- `∑{p}[n+1, A151774(#)]` -/
def P11760164375224009749.Spec : Prop :=
  ∀ n, P11760164375224009749.a n = A356241 (n + 1)

theorem P11760164375224009749.correct : P11760164375224009749.Spec := by
  intro n
  simp only [A356241, Nat.add_sub_cancel]

end A356241

/-! ## A356241.P10523048177113694232

`∑{p}[n+1, A268384(#)]`
-/

namespace A356241.P10523048177113694232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A268384 p

end

end A356241.P10523048177113694232

namespace A356241

/-- `∑{p}[n+1, A268384(#)]` -/
def P10523048177113694232.Spec : Prop :=
  ∀ n, P10523048177113694232.a n = A356241 (n + 1)

end A356241

/-! ## A356241.P46177473417973544

`∑{p}[n+1, A356242(#)]`
-/

namespace A356241.P46177473417973544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A356242 p

end

end A356241.P46177473417973544

namespace A356241

/-- `∑{p}[n+1, A356242(#)]` -/
def P46177473417973544.Spec : Prop :=
  ∀ n, P46177473417973544.a n = A356241 (n + 1)

end A356241

/-! ## A356241.P5330573683526238043

`A356242(∏{p}[n+1, #])`
-/

namespace A356241.P5330573683526238043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A356241.P5330573683526238043

namespace A356241

/-- `A356242(∏{p}[n+1, #])` -/
def P5330573683526238043.Spec : Prop :=
  ∀ n, P5330573683526238043.a n = A356241 (n + 1)

end A356241

/-! ## A356241.P3272468660991058346

`A356242(A007947(n+1))`
-/

namespace A356241.P3272468660991058346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 (A007947 (n + 1)).toNat

end

end A356241.P3272468660991058346

namespace A356241

/-- `A356242(A007947(n+1))` -/
def P3272468660991058346.Spec : Prop :=
  ∀ n, P3272468660991058346.a n = A356241 (n + 1)

end A356241

/-! ## A356241.P12714322116440593271

`A356242(A204455(n+1))`
-/

namespace A356241.P12714322116440593271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 (A204455 (n + 1)).toNat

end

end A356241.P12714322116440593271

namespace A356241

/-- `A356242(A204455(n+1))` -/
def P12714322116440593271.Spec : Prop :=
  ∀ n, P12714322116440593271.a n = A356241 (n + 1)

end A356241

/-! ## A356241.P12337722837059860863

`A356242(A099985(n+1)/2)`
-/

namespace A356241.P12337722837059860863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 (SequenceMachineLib.roundAway ((A099985 (n + 1) : ℚ) / 2)).toNat

end

end A356241.P12337722837059860863

namespace A356241

/-- `A356242(A099985(n+1)/2)` -/
def P12337722837059860863.Spec : Prop :=
  ∀ n, P12337722837059860863.a n = A356241 (n + 1)

end A356241

/-! ## A356241.P10696481520563788869

`A356242(A099985(n+1))`
-/

namespace A356241.P10696481520563788869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 (A099985 (n + 1)).toNat

end

end A356241.P10696481520563788869

namespace A356241

/-- `A356242(A099985(n+1))` -/
def P10696481520563788869.Spec : Prop :=
  ∀ n, P10696481520563788869.a n = A356241 (n + 1)

end A356241

/-! ## A356241.P10331286651446751281

`A356242(A302138(n+1))`
-/

namespace A356241.P10331286651446751281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 (A302138 (n + 1)).toNat

end

end A356241.P10331286651446751281

namespace A356241

/-- `A356242(A302138(n+1))` -/
def P10331286651446751281.Spec : Prop :=
  ∀ n, P10331286651446751281.a n = A356241 (n + 1)

end A356241

/-! ## A356241.P15364414029957878118

`A356242(A015052(n+1)²)/2`
-/

namespace A356241.P15364414029957878118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356242 (A015052 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A356241.P15364414029957878118

namespace A356241

/-- `A356242(A015052(n+1)²)/2` -/
def P15364414029957878118.Spec : Prop :=
  ∀ n, P15364414029957878118.a n = (A356241 (n + 1) : ℚ)

end A356241

/-! ## A356241.P5343870831955811196

`A356242(A015053(n+1)²)/2`
-/

namespace A356241.P5343870831955811196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356242 (A015053 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A356241.P5343870831955811196

namespace A356241

/-- `A356242(A015053(n+1)²)/2` -/
def P5343870831955811196.Spec : Prop :=
  ∀ n, P5343870831955811196.a n = (A356241 (n + 1) : ℚ)

end A356241

/-! ## A356241.P8657771247039327808

`A356242(A053166(n+1)²)/2`
-/

namespace A356241.P8657771247039327808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356242 (A053166 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A356241.P8657771247039327808

namespace A356241

/-- `A356242(A053166(n+1)²)/2` -/
def P8657771247039327808.Spec : Prop :=
  ∀ n, P8657771247039327808.a n = (A356241 (n + 1) : ℚ)

end A356241

/-!
# A356242: a(n) is the number of Fermat numbers dividing n, counted with multiplicity.

The programs for A356242, there is no canonical definition to state claims against.
-/

/-! ## A356242.P2912215073962148908

`val(A359587(n+1), 2)`
-/

namespace A356242.P2912215073962148908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359587 (n + 1)).toNat 2

end

end A356242.P2912215073962148908

/-! ## A356242.P8298423352256150673

`A007814(A359587(n+1))`
-/

namespace A356242.P8298423352256150673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A359587 (n + 1)).toNat

end

end A356242.P8298423352256150673

/-! ## A356242.P3754905996505790427

`A087436(n+1)-A087436(A359587(n+1))`
-/

namespace A356242.P3754905996505790427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) - A087436 (A359587 (n + 1)).toNat

end

end A356242.P3754905996505790427

/-! ## A356242.P15636468885811663926

`A001511(A359587(n+1))-A001511(2*n+3)`
-/

namespace A356242.P15636468885811663926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A359587 (n + 1)).toNat - A001511 (2 * n + 3)

end

end A356242.P15636468885811663926

/-! ## A356242.P12565837386998822093

`A001222(gcd(A122803(n), A359587(n+1)))`
-/

namespace A356242.P12565837386998822093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A122803 n) (A359587 (n + 1)))

end

end A356242.P12565837386998822093

/-! ## A356242.P4430241703164471483

`∑{p}[Δ[(2-81*n)²], val(n+1, #)]`
-/

namespace A356242.P4430241703164471483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (81 * n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (n + 1) p

end

end A356242.P4430241703164471483

/-!
# A356243: a(n) = Sum_{k=1..n} k^2 * sigma_{n-2}(k).

The programs for A356243, there is no canonical definition to state claims against.
-/

/-! ## A356243.P9338558170963085936

`A356244(n+1)+A350125(n+1)`
-/

namespace A356243.P9338558170963085936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356244 (n + 1) + A350125 (n + 1)

end

end A356243.P9338558170963085936

/-!
# A356244: a(n) = Sum_{k=1..n} (k-1)^n * Sum_{j=1..floor(n/k)} j^2.

The programs for A356244, there is no canonical definition to state claims against.
-/

/-! ## A356244.P11215591103686136104

`A356243(n+1)-A350125(n+1)`
-/

namespace A356244.P11215591103686136104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356243 (n + 1) - A350125 (n + 1)

end

end A356244.P11215591103686136104

/-! ## A356244.P18286849445807418760

`A356243(A000027(n+1))%A350125(n+1)`
-/

namespace A356244.P18286849445807418760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356243 (A000027 (n + 1)).toNat) (A350125 (n + 1))

end

end A356244.P18286849445807418760

/-! ## A356244.P4477888204429475474

`A356243(A161948(n+1))%A350125(n+1)`
-/

namespace A356244.P4477888204429475474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356243 (A161948 (n + 1)).toNat) (A350125 (n + 1))

end

end A356244.P4477888204429475474

/-!
# A356245: A family of squares A(m), m >= 0, read by squares and then by rows; A(0) is [1, 1; 1, 1]; for m >= 0, square A(m+1) is obtained by replacing each subsquare [t, u; v, w] by [t, t+u, t+u, u; t+v, t+u+v, t+u+w, u+w; t+v, t+v+w, u+v+w, u+w; v, v+w, v+w, w] in A(m).

The programs for A356245, there is no canonical definition to state claims against.
-/

/-! ## A356245.P8035810940586556147

`A001222(A066012(n+1)+A001045(n))`
-/

namespace A356245.P8035810940586556147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066012 (n + 1) + A001045 n).toNat

end

end A356245.P8035810940586556147

/-! ## A356245.P8311669001999227852

`A069010(A238550(2*(n+1))*A238558(n+3))`
-/

namespace A356245.P8311669001999227852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A238550 (2 * (n + 1)) * A238558 (n + 3)).toNat

end

end A356245.P8311669001999227852

/-!
# A356246: Primes whose reversal is a multiple of 14.

The programs for A356246, there is no canonical definition to state claims against.
-/

/-! ## A356246.P11421898706329780618

`∩[A087762(n+1), A355430(n+1)]`
-/

namespace A356246.P11421898706329780618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356246.P11421898706329780618

/-! ## A356246.P4460163322535118208

`∩[A087762(n+1), A273892(n+1)]`
-/

namespace A356246.P4460163322535118208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356246.P4460163322535118208

/-!
# A356247: Denominator of the continued fraction 1/(2 - 3/(3 - 4/(4 - 5/(...(n-1) - n/(-1))))).

The programs for A356247, the canonical program `A356247.P11672493115903019235` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356247 has offset 2).

The definition of A356247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356247.P11672493115903019235

`((n+2)²-(n+2)-1)/gcd((n+2)²-(n+2)-1, A356684(n+2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A356247

/-- `((n+2)²-(n+2)-1)/gcd((n+2)²-(n+2)-1, A356684(n+2))` -/
def P11672493115903019235.Spec : Prop :=
  ∀ n, P11672493115903019235.a n = (A356247 (n + 2) : ℚ)

end A356247

/-! ## A356247.P12347902162337961170

`A006530(gcd(n+1, (2*n)!)²+n)`
-/

namespace A356247.P12347902162337961170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd (n + 1) (Nat.factorial (2 * n)) ^ 2 + n)

end

end A356247.P12347902162337961170

namespace A356247

/-- `A006530(gcd(n+1, (2*n)!)²+n)` -/
def P12347902162337961170.Spec : Prop :=
  ∀ n, P12347902162337961170.a n = A356247 (n + 2)

end A356247

/-! ## A356247.P7373646715491179961

`A006530(A102631((n+1)²+n))`
-/

namespace A356247.P7373646715491179961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102631 ((n + 1) ^ 2 + n)).toNat

end

end A356247.P7373646715491179961

namespace A356247

/-- `A006530(A102631((n+1)²+n))` -/
def P7373646715491179961.Spec : Prop :=
  ∀ n, P7373646715491179961.a n = A356247 (n + 2)

end A356247

/-! ## A356247.P1515522277978958430

`A006530(∑{d}[n+1, #]*A028387(n))`
-/

namespace A356247.P1515522277978958430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A028387 n).toNat

end

end A356247.P1515522277978958430

namespace A356247

/-- `A006530(∑{d}[n+1, #]*A028387(n))` -/
def P1515522277978958430.Spec : Prop :=
  ∀ n, P1515522277978958430.a n = A356247 (n + 2)

end A356247

/-! ## A356247.P11289686562230666636

`A006530(lcm(∑{d}[n+1, #], A028387(n)))`
-/

namespace A356247.P11289686562230666636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A028387 n))

end

end A356247.P11289686562230666636

namespace A356247

/-- `A006530(lcm(∑{d}[n+1, #], A028387(n)))` -/
def P11289686562230666636.Spec : Prop :=
  ∀ n, P11289686562230666636.a n = A356247 (n + 2)

end A356247

/-!
# A356248: Image of 1 under repeated application of the map k -> (2k-1,2k,2k-1).

The programs for A356248, the canonical program `A356248.P4382023687688512763` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356248 has offset 0).

The definition of A356248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356248.P4382023687688512763

`A289813(n)+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A356248

/-- `A289813(n)+1` -/
def P4382023687688512763.Spec : Prop :=
  ∀ n, P4382023687688512763.a n = A356248 n

theorem P4382023687688512763.correct : P4382023687688512763.Spec := by
  intro n
  simp only [A356248]

end A356248

/-! ## A356248.P13053431605127057130

`A081611(A244042(n))`
-/

namespace A356248.P13053431605127057130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A244042 n).toNat

end

end A356248.P13053431605127057130

namespace A356248

/-- `A081611(A244042(n))` -/
def P13053431605127057130.Spec : Prop :=
  ∀ n, P13053431605127057130.a n = A356248 n

end A356248

/-! ## A356248.P10252573280152261794

`A065361(A244042(n)+1)`
-/

namespace A356248.P10252573280152261794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A244042 n + 1).toNat

end

end A356248.P10252573280152261794

namespace A356248

/-- `A065361(A244042(n)+1)` -/
def P10252573280152261794.Spec : Prop :=
  ∀ n, P10252573280152261794.a n = A356248 n

end A356248

/-! ## A356248.P11449045254382355373

`A343231(A093347(n+1))+1`
-/

namespace A356248.P11449045254382355373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (A093347 (n + 1)).toNat + 1

end

end A356248.P11449045254382355373

namespace A356248

/-- `A343231(A093347(n+1))+1` -/
def P11449045254382355373.Spec : Prop :=
  ∀ n, P11449045254382355373.a n = A356248 n

end A356248

/-! ## A356248.P14509938561562264436

`A289831(n)+1-A289814(n)`
-/

namespace A356248.P14509938561562264436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 n + (1 - A289814 n)

end

end A356248.P14509938561562264436

namespace A356248

/-- `A289831(n)+1-A289814(n)` -/
def P14509938561562264436.Spec : Prop :=
  ∀ n, P14509938561562264436.a n = A356248 n

end A356248

/-! ## A356248.P12275057644561535509

`A292371(A023717(n))+1`
-/

namespace A356248.P12275057644561535509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A023717 n).toNat + 1

end

end A356248.P12275057644561535509

namespace A356248

/-- `A292371(A023717(n))+1` -/
def P12275057644561535509.Spec : Prop :=
  ∀ n, P12275057644561535509.a n = A356248 n

end A356248

/-! ## A356248.P1526364805971562662

`A292371(A023713(n+1))+1`
-/

namespace A356248.P1526364805971562662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A023713 (n + 1)).toNat + 1

end

end A356248.P1526364805971562662

namespace A356248

/-- `A292371(A023713(n+1))+1` -/
def P1526364805971562662.Spec : Prop :=
  ∀ n, P1526364805971562662.a n = A356248 n

end A356248

/-! ## A356248.P12546354370849366679

`A289814(n)+1-A328749(n)`
-/

namespace A356248.P12546354370849366679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n + (1 - A328749 n)

end

end A356248.P12546354370849366679

namespace A356248

/-- `A289814(n)+1-A328749(n)` -/
def P12546354370849366679.Spec : Prop :=
  ∀ n, P12546354370849366679.a n = A356248 n

end A356248

/-! ## A356248.P5769250378046935745

`A289814(A004488(n))+1`
-/

namespace A356248.P5769250378046935745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A004488 n).toNat + 1

end

end A356248.P5769250378046935745

namespace A356248

/-- `A289814(A004488(n))+1` -/
def P5769250378046935745.Spec : Prop :=
  ∀ n, P5769250378046935745.a n = A356248 n

end A356248

/-! ## A356248.P16290150380717685438

`A003188(A332497(n))+1`
-/

namespace A356248.P16290150380717685438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A332497 n).toNat + 1

end

end A356248.P16290150380717685438

namespace A356248

/-- `A003188(A332497(n))+1` -/
def P16290150380717685438.Spec : Prop :=
  ∀ n, P16290150380717685438.a n = A356248 n

end A356248

/-! ## A356248.P1441442262367207866

`A289814(A256293(n))+1`
-/

namespace A356248.P1441442262367207866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A256293 n).toNat + 1

end

end A356248.P1441442262367207866

namespace A356248

/-- `A289814(A256293(n))+1` -/
def P1441442262367207866.Spec : Prop :=
  ∀ n, P1441442262367207866.a n = A356248 n

end A356248

/-! ## A356248.P2665382440851432731

`A295989(A353661(n))+1`
-/

namespace A356248.P2665382440851432731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 (A353661 n).toNat + 1

end

end A356248.P2665382440851432731

namespace A356248

/-- `A295989(A353661(n))+1` -/
def P2665382440851432731.Spec : Prop :=
  ∀ n, P2665382440851432731.a n = A356248 n

end A356248

/-! ## A356248.P16413341392566894089

`A292372(A023709(n+1))+1`
-/

namespace A356248.P16413341392566894089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A023709 (n + 1)).toNat + 1

end

end A356248.P16413341392566894089

namespace A356248

/-- `A292372(A023709(n+1))+1` -/
def P16413341392566894089.Spec : Prop :=
  ∀ n, P16413341392566894089.a n = A356248 n

end A356248

/-! ## A356248.P12744288335665117773

`A309952(A006288(n))+1`
-/

namespace A356248.P12744288335665117773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A006288 n).toNat + 1

end

end A356248.P12744288335665117773

namespace A356248

/-- `A309952(A006288(n))+1` -/
def P12744288335665117773.Spec : Prop :=
  ∀ n, P12744288335665117773.a n = A356248 n

end A356248

/-! ## A356248.P13968289932408656123

`A176850(A289813(n)²)`
-/

namespace A356248.P13968289932408656123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176850 (A289813 n ^ 2).toNat

end

end A356248.P13968289932408656123

namespace A356248

/-- `A176850(A289813(n)²)` -/
def P13968289932408656123.Spec : Prop :=
  ∀ n, P13968289932408656123.a n = A356248 n

end A356248

/-!
# A356249: a(n) = Sum_{k=1..n} (k * floor(n/k))^3.

The programs for A356249, the canonical program `A356249.P5630374803264959714` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356249 has offset 1).

The definition of A356249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064603, A319086, A356125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356249.P5630374803264959714

`A064603(n+1)-3*A356125(n+1)+3*A319086(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A356249

/-- `A064603(n+1)-3*A356125(n+1)+3*A319086(n+1)` -/
def P5630374803264959714.Spec : Prop :=
  ∀ n, P5630374803264959714.a n = A356249 (n + 1)

theorem P5630374803264959714.correct : P5630374803264959714.Spec := by
  intro n
  simp only [A356249, Nat.add_sub_cancel]

end A356249

/-! ## A356249.P5050020830322136484

`A356250(A141214(n+1))`
-/

namespace A356249.P5050020830322136484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356250 (A141214 (n + 1)).toNat

end

end A356249.P5050020830322136484

namespace A356249

/-- `A356250(A141214(n+1))` -/
def P5050020830322136484.Spec : Prop :=
  ∀ n, P5050020830322136484.a n = A356249 (n + 1)

end A356249

/-! ## A356249.P5324092818174084320

`A356250(A000217(n+4)-3)`
-/

namespace A356249.P5324092818174084320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356250 (A000217 (n + 4) - 3).toNat

end

end A356249.P5324092818174084320

namespace A356249

/-- `A356250(A000217(n+4)-3)` -/
def P5324092818174084320.Spec : Prop :=
  ∀ n, P5324092818174084320.a n = A356249 (n + 1)

end A356249

/-! ## A356249.P9663374721356734117

`A356250(A000124(n+4)-4)`
-/

namespace A356249.P9663374721356734117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356250 (A000124 (n + 4) - 4).toNat

end

end A356249.P9663374721356734117

namespace A356249

/-- `A356250(A000124(n+4)-4)` -/
def P9663374721356734117.Spec : Prop :=
  ∀ n, P9663374721356734117.a n = A356249 (n + 1)

end A356249

/-!
# A356250: Square array T(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=1..n} (j * floor(n/j))^k.

The programs for A356250, there is no canonical definition to state claims against.
-/

/-! ## A356250.P11814093342931287574

`A362915(A099755(n))`
-/

namespace A356250.P11814093342931287574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362915 (A099755 n).toNat

end

end A356250.P11814093342931287574

/-! ## A356250.P2669811456421415343

`A233777(2*(A046803(n+1)-1))`
-/

namespace A356250.P2669811456421415343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233777 (2 * (A046803 (n + 1) - 1)).toNat

end

end A356250.P2669811456421415343

/-! ## A356250.P9792309398878361101

`A000005((2-char[∑[n]])^A091533(n))`
-/

namespace A356250.P9792309398878361101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A091533 n : ℤ))).toNat

end

end A356250.P9792309398878361101

/-! ## A356250.P2567185054785628519

`A055587(comp[∑[n-1]]%A244427(n+2))`
-/

namespace A356250.P2567185054785628519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A244427 (n + 2))).toNat

end

end A356250.P2567185054785628519

/-! ## A356250.P17933541113164340121

`A055587(comp[∑[n-1]])%A095688(2*n+3)`
-/

namespace A356250.P17933541113164340121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055587 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A095688 (2 * n + 3))

end

end A356250.P17933541113164340121

/-!
# A356251: a(n) = n*(n+1)*(n+2)*(n+3)*(2*n+1)/12.

The programs for A356251, the canonical program `A356251.P8302659967557249373` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356251 has offset 0).

The definition of A356251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356251.P8302659967557249373

`n*(n+1)*(n+2)*(n+3)*(2*n+1)/12`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356251

/-- `n*(n+1)*(n+2)*(n+3)*(2*n+1)/12` -/
def P8302659967557249373.Spec : Prop :=
  ∀ n, P8302659967557249373.a n = (A356251 n : ℚ)

end A356251

/-! ## A356251.P12105633714471746568

`C(n+3, 2)*∑[n²]`
-/

namespace A356251.P12105633714471746568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356251.P12105633714471746568

namespace A356251

/-- `C(n+3, 2)*∑[n²]` -/
def P12105633714471746568.Spec : Prop :=
  ∀ n, (P12105633714471746568.a n : ℤ) = A356251 n

end A356251

/-! ## A356251.P2622456166664928727

`lcm(2, (2*n+1)*∑[∑[∑[2*n]]])`
-/

namespace A356251.P2622456166664928727
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A356251.P2622456166664928727

namespace A356251

/-- `lcm(2, (2*n+1)*∑[∑[∑[2*n]]])` -/
def P2622456166664928727.Spec : Prop :=
  ∀ n, (P2622456166664928727.a n : ℤ) = A356251 n

end A356251

/-! ## A356251.P8705038052794275151

`2*C(n+3, 3)*C(n, 2)+6*C(n+3, 4)`
-/

namespace A356251.P8705038052794275151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 3) 3 * Nat.choose n 2 + 6 * Nat.choose (n + 3) 4

end

end A356251.P8705038052794275151

namespace A356251

/-- `2*C(n+3, 3)*C(n, 2)+6*C(n+3, 4)` -/
def P8705038052794275151.Spec : Prop :=
  ∀ n, (P8705038052794275151.a n : ℤ) = A356251 n

end A356251

/-! ## A356251.P14978994994161040949

`n/2*A051797(n)`
-/

namespace A356251.P14978994994161040949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A051797 n : ℚ)

end

end A356251.P14978994994161040949

namespace A356251

/-- `n/2*A051797(n)` -/
def P14978994994161040949.Spec : Prop :=
  ∀ n, P14978994994161040949.a n = (A356251 n : ℚ)

end A356251

/-! ## A356251.P11813091679241349736

`A272103(n)-A244882(n)`
-/

namespace A356251.P11813091679241349736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272103 n - A244882 n

end

end A356251.P11813091679241349736

namespace A356251

/-- `A272103(n)-A244882(n)` -/
def P11813091679241349736.Spec : Prop :=
  ∀ n, P11813091679241349736.a n = A356251 n

end A356251

/-! ## A356251.P5148058565926220215

`A000217(n+2)*A000330(n)`
-/

namespace A356251.P5148058565926220215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A000330 n

end

end A356251.P5148058565926220215

namespace A356251

/-- `A000217(n+2)*A000330(n)` -/
def P5148058565926220215.Spec : Prop :=
  ∀ n, P5148058565926220215.a n = A356251 n

end A356251

/-! ## A356251.P17281237943918448124

`∑[(A008587(n)+1)*A000292(n)]`
-/

namespace A356251.P17281237943918448124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008587 n + 1) * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356251.P17281237943918448124

namespace A356251

/-- `∑[(A008587(n)+1)*A000292(n)]` -/
def P17281237943918448124.Spec : Prop :=
  ∀ n, P17281237943918448124.a n = A356251 n

end A356251

/-! ## A356251.P4533845558824284232

`∑[(A008706(n)+1)*A000292(n)]`
-/

namespace A356251.P4533845558824284232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008706 n + 1) * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356251.P4533845558824284232

namespace A356251

/-- `∑[(A008706(n)+1)*A000292(n)]` -/
def P4533845558824284232.Spec : Prop :=
  ∀ n, P4533845558824284232.a n = A356251 n

end A356251

/-! ## A356251.P16247251378555826297

`∑[(A016885(n)-2)*A000292(n)]`
-/

namespace A356251.P16247251378555826297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n - 2) * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356251.P16247251378555826297

namespace A356251

/-- `∑[(A016885(n)-2)*A000292(n)]` -/
def P16247251378555826297.Spec : Prop :=
  ∀ n, P16247251378555826297.a n = A356251 n

end A356251

/-! ## A356251.P2042820793599754086

`A000330(n)+A000096(n+1)*A000330(n)`
-/

namespace A356251.P2042820793599754086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + A000096 (n + 1) * A000330 n

end

end A356251.P2042820793599754086

namespace A356251

/-- `A000330(n)+A000096(n+1)*A000330(n)` -/
def P2042820793599754086.Spec : Prop :=
  ∀ n, P2042820793599754086.a n = A356251 n

end A356251

/-! ## A356251.P13595725364932087107

`∑[n²]*A253145(n+1)`
-/

namespace A356251.P13595725364932087107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A253145 (n + 1)

end

end A356251.P13595725364932087107

namespace A356251

/-- `∑[n²]*A253145(n+1)` -/
def P13595725364932087107.Spec : Prop :=
  ∀ n, P13595725364932087107.a n = A356251 n

end A356251

/-! ## A356251.P15368823433441389043

`A119771(n+1)-A002419(n+1)`
-/

namespace A356251.P15368823433441389043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119771 (n + 1) - A002419 (n + 1)

end

end A356251.P15368823433441389043

namespace A356251

/-- `A119771(n+1)-A002419(n+1)` -/
def P15368823433441389043.Spec : Prop :=
  ∀ n, P15368823433441389043.a n = A356251 n

end A356251

/-! ## A356251.P3669145160214765769

`(2*n+1)*A034827(n+3)`
-/

namespace A356251.P3669145160214765769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A034827 (n + 3)

end

end A356251.P3669145160214765769

namespace A356251

/-- `(2*n+1)*A034827(n+3)` -/
def P3669145160214765769.Spec : Prop :=
  ∀ n, P3669145160214765769.a n = A356251 n

end A356251

/-! ## A356251.P1957860710199567486

`(2*n+1)*A096338(2*n)`
-/

namespace A356251.P1957860710199567486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A096338 (2 * n)

end

end A356251.P1957860710199567486

namespace A356251

/-- `(2*n+1)*A096338(2*n)` -/
def P1957860710199567486.Spec : Prop :=
  ∀ n, P1957860710199567486.a n = A356251 n

end A356251

/-! ## A356251.P14558344773507894663

`n*A002624(2*n)-A096338(2*n)`
-/

namespace A356251.P14558344773507894663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002624 (2 * n) - A096338 (2 * n)

end

end A356251.P14558344773507894663

namespace A356251

/-- `n*A002624(2*n)-A096338(2*n)` -/
def P14558344773507894663.Spec : Prop :=
  ∀ n, P14558344773507894663.a n = A356251 n

end A356251

/-!
# A356253: a(n) is the largest coefficient of P(x) := Product_{k} (x + p_k), where (p_k) are the primes dividing n listed with multiplicity.

The programs for A356253, there is no canonical definition to state claims against.
-/

/-! ## A356253.P14413275891144730897

`A369657(n+1)+A003415(n+1)`
-/

namespace A356253.P14413275891144730897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369657 (n + 1) + A003415 (n + 1)

end

end A356253.P14413275891144730897

/-!
# A356254: Given n balls, all of which are initially in the first of n numbered boxes, a(n) is the number of steps required to get one ball in each box when a step consists of moving to the next box every second ball from the highest-numbered box that has more than one ball.

The programs for A356254, there is no canonical definition to state claims against.
-/

/-! ## A356254.P4983742103202407082

`∑[A288774(n+1)]-A288774(n+1)`
-/

namespace A356254.P4983742103202407082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A288774 (n + 1)

end

end A356254.P4983742103202407082

/-! ## A356254.P13540532941582297737

`∑[A130259(n*A060818(n))]`
-/

namespace A356254.P13540532941582297737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 ((n : ℤ) * A060818 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356254.P13540532941582297737

/-! ## A356254.P16191529824918005002

`A122248(n)-A000035(A185293(n))`
-/

namespace A356254.P16191529824918005002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122248 n - A000035 (A185293 n).toNat

end

end A356254.P16191529824918005002

/-! ## A356254.P7473948319164154290

`A122248(n)-A354321(A059570(n+1))`
-/

namespace A356254.P7473948319164154290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122248 n - A354321 (A059570 (n + 1)).toNat

end

end A356254.P7473948319164154290

/-! ## A356254.P13382706400304794236

`∑[A255270(A196064(n+1)²)]`
-/

namespace A356254.P13382706400304794236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A196064 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356254.P13382706400304794236

/-!
# A356256: The lesser of the 2^n-th twin prime pair (A001359).

The programs for A356256, the canonical program `A356256.P1374019322612265406` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356256 has offset 0).

The definition of A356256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356256.P1374019322612265406

`A001359(2^n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A356256

/-- `A001359(2^n)` -/
def P1374019322612265406.Spec : Prop :=
  ∀ n, P1374019322612265406.a n = A356256 n

theorem P1374019322612265406.correct : P1374019322612265406.Spec := by
  intro n
  simp only [A356256]

end A356256

/-! ## A356256.P14195169073550000230

`record[A001359(A029930(n))]`
-/

namespace A356256.P14195169073550000230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356256.P14195169073550000230

namespace A356256

/-- `record[A001359(A029930(n))]` -/
def P14195169073550000230.Spec : Prop :=
  ∀ n, P14195169073550000230.a n = A356256 n

end A356256

/-! ## A356256.P11538459787736392991

`record[A001359(A048483(n))]`
-/

namespace A356256.P11538459787736392991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356256.P11538459787736392991

namespace A356256

/-- `record[A001359(A048483(n))]` -/
def P11538459787736392991.Spec : Prop :=
  ∀ n, P11538459787736392991.a n = A356256 n

end A356256

/-! ## A356256.P57200403917816829

`record[A001359(A055248(n))]`
-/

namespace A356256.P57200403917816829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356256.P57200403917816829

namespace A356256

/-- `record[A001359(A055248(n))]` -/
def P57200403917816829.Spec : Prop :=
  ∀ n, P57200403917816829.a n = A356256 n

end A356256

/-! ## A356256.P13133223235051914362

`record[A001359(A059148(n))]`
-/

namespace A356256.P13133223235051914362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A059148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356256.P13133223235051914362

namespace A356256

/-- `record[A001359(A059148(n))]` -/
def P13133223235051914362.Spec : Prop :=
  ∀ n, P13133223235051914362.a n = A356256 n

end A356256

/-!
# A356257: Irregular triangle: row n consists of the frequencies of positive distances between permutations P and reverse(P), as P ranges through the permutations of (1, 2, ..., n); see Comments.

The programs for A356257, there is no canonical definition to state claims against.
-/

/-! ## A356257.P5013991033119666728

`A000005(lcm(A000108(n), A027170(n)))`
-/

namespace A356257.P5013991033119666728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A000108 n) (A027170 n))

end

end A356257.P5013991033119666728

/-! ## A356257.P14172210821761151675

`A000005(A000108(n)*A389898(n+1))`
-/

namespace A356257.P14172210821761151675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000108 n * A389898 (n + 1)).toNat

end

end A356257.P14172210821761151675

/-! ## A356257.P5870476616908810870

`A062011(A000108(n))-A000122(3*n)`
-/

namespace A356257.P5870476616908810870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (A000108 n).toNat - A000122 (3 * n)

end

end A356257.P5870476616908810870

/-! ## A356257.P11835987553513537059

`A062011(A000108(n))-A072071(3*n)`
-/

namespace A356257.P11835987553513537059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (A000108 n).toNat - A072071 (3 * n)

end

end A356257.P11835987553513537059

/-! ## A356257.P333228227489805503

`A000005(A000108(n)*A344086(2*n))`
-/

namespace A356257.P333228227489805503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000108 n * A344086 (2 * n)).toNat

end

end A356257.P333228227489805503

/-!
# A356258: Number of 6-dimensional cubic lattice walks that start and end at origin after 2n steps, free to pass through origin at intermediate stages.

The programs for A356258, there is no canonical definition to state claims against.
-/

/-! ## A356258.P6971797747022361311

`A000984(n)*A169715(n)`
-/

namespace A356258.P6971797747022361311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A169715 n

end

end A356258.P6971797747022361311

/-! ## A356258.P11436746338178004672

`record[A092392(n)]*A169715(n)`
-/

namespace A356258.P11436746338178004672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A169715 n

end

end A356258.P11436746338178004672

/-! ## A356258.P10887686991751078166

`A000984(n)*A287316(eq[6, A025581(n)])`
-/

namespace A356258.P10887686991751078166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A287316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A356258.P10887686991751078166

/-! ## A356258.P12286710504511925519

`A000984(n)*A287316(eq[64, A130321(n)])`
-/

namespace A356258.P12286710504511925519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A287316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A356258.P12286710504511925519

/-! ## A356258.P13990081781795994772

`A000984(n)*A287316(eq[7, A004736(n+1)])`
-/

namespace A356258.P13990081781795994772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A287316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A356258.P13990081781795994772

/-!
# A356259: Number of labeled rooted trees on [n] that have a primary branch.

The programs for A356259, there is no canonical definition to state claims against.
-/

/-! ## A356259.P8272103860996732696

`A000169(n+1)-A356073(n+1)`
-/

namespace A356259.P8272103860996732696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - A356073 (n + 1)

end

end A356259.P8272103860996732696

/-!
# A356260: Lower twin primes p such that (p^2 + (p+2)^2)/10 is prime.

The programs for A356260, there is no canonical definition to state claims against.
-/

/-! ## A356260.P16987483450425338109

`eq[A129292(n+1), A131757(n)]`
-/

namespace A356260.P16987483450425338109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356260.P16987483450425338109

/-! ## A356260.P14402084747942659279

`filter[A129899(n+1), A296212(#)]`
-/

namespace A356260.P14402084747942659279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A356260.P14402084747942659279

/-! ## A356260.P3619029118009760528

`filter[A129899(n+1), A353463(#)]`
-/

namespace A356260.P3619029118009760528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A356260.P3619029118009760528

/-! ## A356260.P16938542218133094939

`∩[A001359(n+1), A129899(n+1)]`
-/

namespace A356260.P16938542218133094939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356260.P16938542218133094939

/-! ## A356260.P130556427947814129

`∩[A001838(n+1), A129899(n+1)]`
-/

namespace A356260.P130556427947814129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356260.P130556427947814129

/-!
# A356261: Partition triangle read by rows, counting irreducible permutations with weakly decreasing Lehmer code, refining triangle A119308.

The programs for A356261, there is no canonical definition to state claims against.
-/

/-! ## A356261.P8083452484193160427

`A261029(A356262(n)^3)`
-/

namespace A356261.P8083452484193160427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 (A356262 n ^ 3).toNat

end

end A356261.P8083452484193160427

/-! ## A356261.P3593028520365135490

`A000001(A005382(n+1)*A356262(n))`
-/

namespace A356261.P3593028520365135490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A005382 (n + 1) * A356262 n).toNat

end

end A356261.P3593028520365135490

/-! ## A356261.P17313581400085428001

`A327127(A333484(n)%A003277(n+1))`
-/

namespace A356261.P17313581400085428001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327127 (Int.tmod (A333484 n) (A003277 (n + 1))).toNat

end

end A356261.P17313581400085428001

/-! ## A356261.P8376775897832210658

`A238095(A239580(n+2))`
-/

namespace A356261.P8376775897832210658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238095 (A239580 (n + 2)).toNat

end

end A356261.P8376775897832210658

/-!
# A356262: Partition triangle read by rows counting the irreducible permutations sorted by the partition type of their Lehmer code.

The programs for A356262, there is no canonical definition to state claims against.
-/

/-! ## A356262.P7933677184668833021

`A247303(n)^A287360(A001006(n))`
-/

namespace A356262.P7933677184668833021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247303 n : ℚ) ^ (A287360 (A001006 n).toNat : ℤ)

end

end A356262.P7933677184668833021

/-! ## A356262.P9230913349751529542

`and(A003602(A265758(n)), A340970(n+3))`
-/

namespace A356262.P9230913349751529542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003602 (A265758 n).toNat) (A340970 (n + 3))

end

end A356262.P9230913349751529542

/-!
# A356263: Triangle read by rows. The reduced triangle of the partition triangle of irreducible permutations (A356262). T(n, k) for n >= 1 and 0 <= k < n.

The programs for A356263, there is no canonical definition to state claims against.
-/

/-! ## A356263.P3170009862032723088

`A008292(n+1)-A356265(n+1)`
-/

namespace A356263.P3170009862032723088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A356265 (n + 1)

end

end A356263.P3170009862032723088

/-! ## A356263.P6931779221827027586

`A123125(comp[∑[n]])-A356265(n+1)`
-/

namespace A356263.P6931779221827027586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A356265 (n + 1)

end

end A356263.P6931779221827027586

/-! ## A356263.P10349111198325652786

`sqrt(A177823(n+1))-A356265(n+1)`
-/

namespace A356263.P10349111198325652786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177823 (n + 1) : ℝ) - (A356265 (n + 1) : ℝ)

end

end A356263.P10349111198325652786

/-! ## A356263.P2584140140139977422

`ceil(A176200(n)/2-A356265(n+1))`
-/

namespace A356263.P2584140140139977422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176200 n : ℚ) / 2 - (A356265 (n + 1) : ℚ)⌉

end

end A356263.P2584140140139977422

/-! ## A356263.P14050453755981168048

`(A176204(n)+3)/4-A356265(n+1)`
-/

namespace A356263.P14050453755981168048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176204 n + 3 : ℚ) / 4 - (A356265 (n + 1) : ℚ)

end

end A356263.P14050453755981168048

/-! ## A356263.P13094822058514851761

`A173018(comp[∑[n-1]])-A356265(n+1)`
-/

namespace A356263.P13094822058514851761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A356265 (n + 1)

end

end A356263.P13094822058514851761

/-! ## A356263.P6944607875426825837

`A174303(n)/A144464(n)-A356265(n+1)`
-/

namespace A356263.P6944607875426825837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174303 n : ℚ) / (A144464 n : ℚ) - (A356265 (n + 1) : ℚ)

end

end A356263.P6944607875426825837

/-! ## A356263.P653150376800263685

`A257620(n)/A098355(n)-A356265(n+1)`
-/

namespace A356263.P653150376800263685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257620 n : ℚ) / (A098355 n : ℚ) - (A356265 (n + 1) : ℚ)

end

end A356263.P653150376800263685

/-! ## A356263.P9694147685672386987

`A257609(n)/A137688(n)-A356265(n+1)`
-/

namespace A356263.P9694147685672386987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257609 n : ℚ) / (A137688 n : ℚ) - (A356265 (n + 1) : ℚ)

end

end A356263.P9694147685672386987

/-! ## A356263.P1198435374522326173

`gcd(A174303(n), A257620(n))-A356265(n+1)`
-/

namespace A356263.P1198435374522326173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A174303 n) (A257620 n) : ℤ) - A356265 (n + 1)

end

end A356263.P1198435374522326173

/-!
# A356264: Partition triangle read by rows, counting reducible permutations, refining triangle A356265.

The programs for A356264, there is no canonical definition to state claims against.
-/

/-! ## A356264.P1886478252650797502

`A108885(n)+A076142(A035053(n))`
-/

namespace A356264.P1886478252650797502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108885 n + A076142 (A035053 n).toNat

end

end A356264.P1886478252650797502

/-! ## A356264.P13495417082397387641

`A122203(A003415(n)*A364443(n))`
-/

namespace A356264.P13495417082397387641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (A003415 n * A364443 n).toNat

end

end A356264.P13495417082397387641

/-! ## A356264.P5524935854560353301

`A122284(A003415(n)*A364443(n))`
-/

namespace A356264.P5524935854560353301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122284 (A003415 n * A364443 n).toNat

end

end A356264.P5524935854560353301

/-! ## A356264.P1927755369093082475

`A343030(A203269(n)-A336811(n+1))`
-/

namespace A356264.P1927755369093082475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A203269 n - A336811 (n + 1)).toNat

end

end A356264.P1927755369093082475

/-! ## A356264.P11441269556862878769

`A239660(3*n+1)-A130094(A240192(3*n+4))`
-/

namespace A356264.P11441269556862878769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239660 (3 * n + 1) - A130094 (A240192 (3 * n + 4)).toNat

end

end A356264.P11441269556862878769

/-!
# A356265: Triangle read by rows. The reduced triangle of the partition triangle of reducible permutations (A356264). T(n, k) for n >= 1 and 0 <= k < n.

The programs for A356265, there is no canonical definition to state claims against.
-/

/-! ## A356265.P9226844450446894739

`A008292(n+1)-A356263(n+1)`
-/

namespace A356265.P9226844450446894739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A356263 (n + 1)

end

end A356265.P9226844450446894739

/-! ## A356265.P11765973616597475489

`A123125(comp[∑[n]])-A356263(n+1)`
-/

namespace A356265.P11765973616597475489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A356263 (n + 1)

end

end A356265.P11765973616597475489

/-! ## A356265.P6800858222168694124

`sqrt(A177823(n+1))-A356263(n+1)`
-/

namespace A356265.P6800858222168694124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177823 (n + 1) : ℝ) - (A356263 (n + 1) : ℝ)

end

end A356265.P6800858222168694124

/-! ## A356265.P16073834418478652949

`ceil(A176200(n)/2-A356263(n+1))`
-/

namespace A356265.P16073834418478652949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176200 n : ℚ) / 2 - (A356263 (n + 1) : ℚ)⌉

end

end A356265.P16073834418478652949

/-! ## A356265.P12309757450997791180

`ceil(A176204(n)/4)-A356263(n+1)`
-/

namespace A356265.P12309757450997791180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176204 n : ℚ) / 4⌉ - A356263 (n + 1)

end

end A356265.P12309757450997791180

/-! ## A356265.P15502698249544609293

`A173018(comp[∑[n-1]])-A356263(n+1)`
-/

namespace A356265.P15502698249544609293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A356263 (n + 1)

end

end A356265.P15502698249544609293

/-! ## A356265.P17096658561378505587

`A174303(n)/A144464(n)-A356263(n+1)`
-/

namespace A356265.P17096658561378505587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174303 n : ℚ) / (A144464 n : ℚ) - (A356263 (n + 1) : ℚ)

end

end A356265.P17096658561378505587

/-! ## A356265.P12458520678299871860

`A257620(n)/A098355(n)-A356263(n+1)`
-/

namespace A356265.P12458520678299871860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257620 n : ℚ) / (A098355 n : ℚ) - (A356263 (n + 1) : ℚ)

end

end A356265.P12458520678299871860

/-! ## A356265.P9372494334680785527

`A257609(n)/A137688(n)-A356263(n+1)`
-/

namespace A356265.P9372494334680785527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257609 n : ℚ) / (A137688 n : ℚ) - (A356263 (n + 1) : ℚ)

end

end A356265.P9372494334680785527

/-! ## A356265.P10700221991249250665

`gcd(A174303(n), A257620(n))-A356263(n+1)`
-/

namespace A356265.P10700221991249250665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A174303 n) (A257620 n) : ℤ) - A356263 (n + 1)

end

end A356265.P10700221991249250665

/-!
# A356266: Partition triangle read by rows, counting reducible permutations with weakly decreasing Lehmer code, refining triangle A356115.

The programs for A356266, there is no canonical definition to state claims against.
-/

/-! ## A356266.P14083318490931193191

`A292898(xor(1, a(n-1)/n^(-1)))%A003984(n)` with `a(0)=1, a(1)=1`
-/

namespace A356266.P14083318490931193191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A292898 (Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))).toNat) (A003984 n)

end

end A356266.P14083318490931193191

/-! ## A356266.P15469289359720524511

`C(A043537(A000602(n)), A035614(n))`
-/

namespace A356266.P15469289359720524511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A043537 (A000602 n).toNat).toNat (A035614 n).toNat

end

end A356266.P15469289359720524511

/-! ## A356266.P18375376138730215845

`A301343(∑[A320270(2^val(n+1, 2))])`
-/

namespace A356266.P18375376138730215845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320270 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356266.P18375376138730215845

/-! ## A356266.P16756526906512573062

`A219924(n+3)*A316829(A163876(n))`
-/

namespace A356266.P16756526906512573062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (n + 3) * A316829 (A163876 n).toNat

end

end A356266.P16756526906512573062

/-! ## A356266.P4924061186001370185

`A080979(A294509(n+1)^A080979(n))`
-/

namespace A356266.P4924061186001370185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 (SequenceMachineLib.roundAway ((A294509 (n + 1) : ℚ) ^ (A080979 n : ℤ))).toNat

end

end A356266.P4924061186001370185

/-!
# A356267: a(n) = Sum_{k=0..n} binomial(2*n, k) * p(k), where p(k) is the partition function A000041.

The programs for A356267, there is no canonical definition to state claims against.
-/

/-! ## A356267.P3869473511991440972

`∑[A361813(n*(n*(n-5)+5)²)]`
-/

namespace A356267.P3869473511991440972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361813 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356267.P3869473511991440972

/-!
# A356268: a(n) = Sum_{k=0..n} binomial(2*n, k) * q(k), where q(k) is the number of partitions into distinct parts (A000009).

The programs for A356268, there is no canonical definition to state claims against.
-/

/-! ## A356268.P4109752959387148629

`A127382(A026945(n)+n)`
-/

namespace A356268.P4109752959387148629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127382 (A026945 n + (n : ℤ)).toNat

end

end A356268.P4109752959387148629

/-!
# A356269: a(n) = Sum_{k=0..n} binomial(2*k, k) * p(k), where p(k) is the partition function A000041.

The programs for A356269, there is no canonical definition to state claims against.
-/

/-! ## A356269.P11124784219520760022

`∑[A000041(n)*A000984(n)]`
-/

namespace A356269.P11124784219520760022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356269.P11124784219520760022

/-! ## A356269.P9223685130796085598

`∑[record[A081668(n)]*A000041(n)]`
-/

namespace A356269.P9223685130796085598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356269.P9223685130796085598

/-! ## A356269.P5443540422264749247

`∑[record[A126930(n)]*A000041(n)]`
-/

namespace A356269.P5443540422264749247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356269.P5443540422264749247

/-! ## A356269.P16492771649251221720

`∑[A000041(n)*A001405(2*n)]`
-/

namespace A356269.P16492771649251221720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A001405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356269.P16492771649251221720

/-! ## A356269.P7714443191185824998

`∑[A000041(n)*A063886(2*n)]`
-/

namespace A356269.P7714443191185824998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A063886 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356269.P7714443191185824998

/-!
# A356270: a(n) = Sum_{k=0..n} binomial(2*k, k) * q(k), where q(k) is the number of partitions into distinct parts (A000009).

The programs for A356270, there is no canonical definition to state claims against.
-/

/-! ## A356270.P6840414696306885811

`∑[A000009(n)*A000984(n)]`
-/

namespace A356270.P6840414696306885811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356270.P6840414696306885811

/-! ## A356270.P14249506272214193900

`∑[A087135(n)*A088218(n)]`
-/

namespace A356270.P14249506272214193900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087135 n * A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356270.P14249506272214193900

/-! ## A356270.P17025594079600122424

`∑[abs(A000984(n)*A081360(n))]`
-/

namespace A356270.P17025594079600122424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000984 n * A081360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356270.P17025594079600122424

/-! ## A356270.P677636962452259455

`∑[∑[A087897(n)]*A000984(n)]`
-/

namespace A356270.P677636962452259455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356270.P677636962452259455

/-! ## A356270.P8355883825053373855

`∑[record[A241543(n)]*A000009(n)]`
-/

namespace A356270.P8355883825053373855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356270.P8355883825053373855

/-! ## A356270.P17530381660111152185

`∑[A000009(n)*A001405(2*n)]`
-/

namespace A356270.P17530381660111152185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A001405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356270.P17530381660111152185

/-! ## A356270.P2057444620755547093

`∑[A000009(n)*A056040(2*n)]`
-/

namespace A356270.P2057444620755547093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A056040 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356270.P2057444620755547093

/-!
# A356271: Prime numbers in the sublists defined in A348168 that contain a single prime.

The programs for A356271, there is no canonical definition to state claims against.
-/

/-! ## A356271.P5530092841075565284

`∩[A362017(n+1), A268674(A362017(n+1))]`
-/

namespace A356271.P5530092841075565284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A362017 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356271.P5530092841075565284

/-!
# A356274: a(n) is the number whose base-(n+1) expansion equals the binary expansion of n.

The programs for A356274, there is no canonical definition to state claims against.
-/

/-! ## A356274.P5561270569877353245

`A341907(2*(n+2)²)`
-/

namespace A356274.P5561270569877353245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341907 (2 * (n + 2) ^ 2)

end

end A356274.P5561270569877353245

/-!
# A356277: a(n) is the smallest integer that can be written as (3 + 1/t_1)^m * (3 + 1/t_2)^(n-m) with integers t_1,t_2 >= 2 and 0 < m < n.

The programs for A356277, there is no canonical definition to state claims against.
-/

/-! ## A356277.P13692599798643782577

`∩[A067939(n+1), A356279(n+1)]`
-/

namespace A356277.P13692599798643782577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356277.P13692599798643782577

/-! ## A356277.P15783330338991490282

`∩[A159765(n+1), A356279(n+1)]`
-/

namespace A356277.P15783330338991490282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356277.P15783330338991490282

/-!
# A356278: a(n) is the largest integer that can be written as (3 + 1/t_1)^m * (3 + 1/t_2)^(n-m) with integers t_1,t_2 >= 2 and 0 < m < n.

The programs for A356278, there is no canonical definition to state claims against.
-/

/-! ## A356278.P3702895382210551958

`A356279(∑[A356276(n+2)])`
-/

namespace A356278.P3702895382210551958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356276 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356279 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356278.P3702895382210551958

/-! ## A356278.P7106825492622624886

`A356279(A183873(n+2))`
-/

namespace A356278.P7106825492622624886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356279 (A183873 (n + 2)).toNat

end

end A356278.P7106825492622624886

/-!
# A356280: a(n) = Sum_{k=0..n} binomial(2*n, n-k) * p(k), where p(k) is the partition function A000041.

The programs for A356280, there is no canonical definition to state claims against.
-/

/-! ## A356280.P10890063123206097229

`A285375(3*a(n-1)+2)-3` with `a(0)=1`
-/

namespace A356280.P10890063123206097229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285375 (3 * a (n - 1) + 2).toNat - 3

end

end A356280.P10890063123206097229

/-! ## A356280.P9594278167586035795

`∑[A240542(A033887(n))]`
-/

namespace A356280.P9594278167586035795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (A033887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356280.P9594278167586035795

/-! ## A356280.P8429303143459152734

`∑[A240542(A000045(3*n+1))]`
-/

namespace A356280.P8429303143459152734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (A000045 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356280.P8429303143459152734

/-!
# A356281: a(n) = Sum_{k=0..n} binomial(2*n, n-k) * q(k), where q(k) is the number of partitions into distinct parts (A000009).

The programs for A356281, there is no canonical definition to state claims against.
-/

/-! ## A356281.P16157574384625653630

`A386799(A383481(n+1))`
-/

namespace A356281.P16157574384625653630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386799 (A383481 (n + 1)).toNat

end

end A356281.P16157574384625653630

/-! ## A356281.P16634861243532106864

`A195174(A005511(n+1))`
-/

namespace A356281.P16634861243532106864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A005511 (n + 1)).toNat

end

end A356281.P16634861243532106864

/-!
# A356282: a(n) = Sum_{k=0..n} binomial(3*n, n-k) * p(k), where p(k) is the partition function A000041.

The programs for A356282, there is no canonical definition to state claims against.
-/

/-! ## A356282.P16700105046097472326

`A038736(n)-A188436(A038736(n))`
-/

namespace A356282.P16700105046097472326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038736 n - A188436 (A038736 n).toNat

end

end A356282.P16700105046097472326

/-! ## A356282.P15152650647719695411

`A038736(n)-A289618(A038725(n))`
-/

namespace A356282.P15152650647719695411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038736 n - A289618 (A038725 n).toNat

end

end A356282.P15152650647719695411

/-!
# A356283: a(n) = Sum_{k=0..n} binomial(3*n, n-k) * q(k), where q(k) is the number of partitions into distinct parts (A000009).

The programs for A356283, there is no canonical definition to state claims against.
-/

/-! ## A356283.P8293337738558909696

`∑[∑[A338546(A161870(n))]]`
-/

namespace A356283.P8293337738558909696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338546 (A161870 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356283.P8293337738558909696

/-!
# A356284: a(n) = Sum_{k=0..n} binomial(3*n, k) * p(k), where p(k) is the partition function A000041.

The programs for A356284, there is no canonical definition to state claims against.
-/

/-! ## A356284.P10739834668007233058

`A060374(record[A358095(n+1)+A060373(n)²])`
-/

namespace A356284.P10739834668007233058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358095 (n + 1) + A060373 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A356284.P10739834668007233058

/-!
# A356286: a(n) = Sum_{k=0..n} binomial(3*k, k) * p(k), where p(k) is the partition function A000041.

The programs for A356286, there is no canonical definition to state claims against.
-/

/-! ## A356286.P8389711413031990068

`∑[A000041(n)*A005809(n)]`
-/

namespace A356286.P8389711413031990068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A005809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356286.P8389711413031990068

/-! ## A356286.P10364576190155823177

`∑[∑[A002865(n)]*A005809(n)]`
-/

namespace A356286.P10364576190155823177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A005809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356286.P10364576190155823177

/-! ## A356286.P330605763291547362

`∑[A000041(n)*A051033(3*n)]`
-/

namespace A356286.P330605763291547362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A051033 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356286.P330605763291547362

/-! ## A356286.P9010300800184982552

`∑[Δ[n²]*A047749(2*n)*A000041(n)]`
-/

namespace A356286.P9010300800184982552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A047749 (2 * n) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356286.P9010300800184982552

/-! ## A356286.P6953446219989112953

`∑[record[A168019(n)*A269956(n)]]`
-/

namespace A356286.P6953446219989112953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 n * A269956 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356286.P6953446219989112953

/-!
# A356287: a(n) = Sum_{k=0..n} binomial(3*k, k) * q(k), where q(k) is the number of partitions into distinct parts (A000009).

The programs for A356287, there is no canonical definition to state claims against.
-/

/-! ## A356287.P4879405870426878089

`∑[A000009(n)*A005809(n)]`
-/

namespace A356287.P4879405870426878089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A005809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356287.P4879405870426878089

/-! ## A356287.P14453259194803290819

`∑[A000009(n)*A051033(3*n)]`
-/

namespace A356287.P14453259194803290819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A051033 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356287.P14453259194803290819

/-! ## A356287.P5596392882123169634

`∑[(A096765(n)+A025147(n))*A005809(n)]`
-/

namespace A356287.P5596392882123169634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096765 n + A025147 n) * A005809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356287.P5596392882123169634

/-!
# A356288: Sum of numbers in n-th upward diagonal of triangle the sum of {1; 2,3; 4,5,6; 7,8,9,10; ...} and {1; 2,3; 3,4,5; 4,5,6,7; ...}.

The programs for A356288, the canonical program `A356288.P582442813498813054` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356288 has offset 1).

The definition of A356288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079824, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356288.P582442813498813054

`A079824(n+1)+A093005(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A356288

/-- `A079824(n+1)+A093005(n+1)` -/
def P582442813498813054.Spec : Prop :=
  ∀ n, P582442813498813054.a n = A356288 (n + 1)

theorem P582442813498813054.correct : P582442813498813054.Spec := by
  intro n
  simp only [A356288, Nat.add_sub_cancel]

end A356288

/-! ## A356288.P13430403668948392600

`round((n+2)*or(1, n)/2)+A109900(n)+A058187(n)`
-/

namespace A356288.P13430403668948392600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((Nat.lor 1 n : ℚ) / 2)) + (A109900 n + A058187 n)

end

end A356288.P13430403668948392600

namespace A356288

/-- `round((n+2)*or(1, n)/2)+A109900(n)+A058187(n)` -/
def P13430403668948392600.Spec : Prop :=
  ∀ n, P13430403668948392600.a n = A356288 (n + 1)

end A356288

/-! ## A356288.P4802350101363743941

`(n+1)*(2-and(1, n)+n)/2+A005993(n)+∑[A123596(n)]`
-/

namespace A356288.P4802350101363743941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (2 - (Nat.land 1 n : ℤ) + (n : ℤ)) : ℚ) / 2 + ((A005993 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A356288.P4802350101363743941

namespace A356288

/-- `(n+1)*(2-and(1, n)+n)/2+A005993(n)+∑[A123596(n)]` -/
def P4802350101363743941.Spec : Prop :=
  ∀ n, P4802350101363743941.a n = (A356288 (n + 1) : ℚ)

end A356288

/-! ## A356288.P9539417474545735477

`(n+1)*(2-and(1, n)+n)/2+A109900(n)+Δ[A096338(n)]`
-/

namespace A356288.P9539417474545735477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (2 - (Nat.land 1 n : ℤ) + (n : ℤ)) : ℚ) / 2 + (A109900 n + (f1 (n + 1) - f1 n) : ℚ)

end

end A356288.P9539417474545735477

namespace A356288

/-- `(n+1)*(2-and(1, n)+n)/2+A109900(n)+Δ[A096338(n)]` -/
def P9539417474545735477.Spec : Prop :=
  ∀ n, P9539417474545735477.a n = (A356288 (n + 1) : ℚ)

end A356288

/-! ## A356288.P6538000779288169762

`(n+1)*(2-and(1, n)+n)/2+A028724(n+4)+∑[A002620(n)]`
-/

namespace A356288.P6538000779288169762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (2 - (Nat.land 1 n : ℤ) + (n : ℤ)) : ℚ) / 2 + ((A028724 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A356288.P6538000779288169762

namespace A356288

/-- `(n+1)*(2-and(1, n)+n)/2+A028724(n+4)+∑[A002620(n)]` -/
def P6538000779288169762.Spec : Prop :=
  ∀ n, P6538000779288169762.a n = (A356288 (n + 1) : ℚ)

end A356288

/-!
# A356289: a(n) = Sum_{k=0..n} binomial(2*n, n-k) * v(k), where v(k) is the number of overpartitions of n (A015128).

The programs for A356289, there is no canonical definition to state claims against.
-/

/-! ## A356289.P16728021077490816678

`A080541(A390266(n))`
-/

namespace A356289.P16728021077490816678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (A390266 n).toNat

end

end A356289.P16728021077490816678

/-! ## A356289.P5972988789597339731

`A007052(A038106(n+1))+A002697(n)`
-/

namespace A356289.P5972988789597339731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (A038106 (n + 1)).toNat + A002697 n

end

end A356289.P5972988789597339731

/-!
# A356290: a(n) = Sum_{k=0..n} binomial(3*n, n-k) * v(k), where v(k) is the number of overpartitions of n (A015128).

The programs for A356290, there is no canonical definition to state claims against.
-/

/-! ## A356290.P4811192911816012590

`A004001(A155590(n)+n²)`
-/

namespace A356290.P4811192911816012590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A155590 n + (n ^ 2 : ℤ)).toNat

end

end A356290.P4811192911816012590

/-!
# A356291: Number of reducible permutations.

The programs for A356291, there is no canonical definition to state claims against.
-/

/-! ## A356291.P15506379509514366403

`n!-A003319(n)`
-/

namespace A356291.P15506379509514366403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A003319 n

end

end A356291.P15506379509514366403

/-! ## A356291.P13172740800299794427

`n!-abs(A158882(n))`
-/

namespace A356291.P13172740800299794427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - |A158882 n|

end

end A356291.P13172740800299794427

/-! ## A356291.P8663679358657583310

`n!-abs(A167894(n))`
-/

namespace A356291.P8663679358657583310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - |A167894 n|

end

end A356291.P8663679358657583310

/-! ## A356291.P8492985632377340760

`A000142(n)-A003319(n)`
-/

namespace A356291.P8492985632377340760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A003319 n

end

end A356291.P8492985632377340760

/-! ## A356291.P8839007472791899250

`∏[A028310(n)]-A003319(n)`
-/

namespace A356291.P8839007472791899250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A003319 n

end

end A356291.P8839007472791899250

/-! ## A356291.P5997091496808218333

`A361522(2*n)-A003319(n)`
-/

namespace A356291.P5997091496808218333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361522 (2 * n) - A003319 n

end

end A356291.P5997091496808218333

/-! ## A356291.P7592555646670182918

`A005096(n)+n-A003319(n)`
-/

namespace A356291.P7592555646670182918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005096 n + ((n : ℤ) - A003319 n)

end

end A356291.P7592555646670182918

/-!
# A356292: Number of labeled trees on [n] that are centered.

The programs for A356292, there is no canonical definition to state claims against.
-/

/-! ## A356292.P18144110332707720441

`A000272(n)-A355671(n)`
-/

namespace A356292.P18144110332707720441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n - A355671 n

end

end A356292.P18144110332707720441

/-! ## A356292.P4071496073536298082

`A088956(C(n, 2))-A355671(n)`
-/

namespace A356292.P4071496073536298082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088956 (Nat.choose n 2) - A355671 n

end

end A356292.P4071496073536298082

/-! ## A356292.P6984784798290668495

`A028310(n)^(n-2)-A355671(n)`
-/

namespace A356292.P6984784798290668495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (A355671 n : ℚ)

end

end A356292.P6984784798290668495

/-! ## A356292.P5417756510356468380

`(A000007(n)+n)^(n-2)-A355671(n)`
-/

namespace A356292.P5417756510356468380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ) : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (A355671 n : ℚ)

end

end A356292.P5417756510356468380

/-! ## A356292.P9088163418120570484

`n^(n-2)*a(A025427(n))-A355671(n)` with `a(0)=1`
-/

namespace A356292.P9088163418120570484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) ^ ((n : ℤ) - 2 : ℤ) * a (A025427 n).toNat - (A355671 n : ℚ)

end

end A356292.P9088163418120570484

/-!
# A356293: Primes p such that if q is the next prime, (p+q)/6 is a triangular number.

The programs for A356293, there is no canonical definition to state claims against.
-/

/-! ## A356293.P2576738133396529681

`A033558(∩[A024675(n+1), A045943(n)])`
-/

namespace A356293.P2576738133396529681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A356293.P2576738133396529681

/-! ## A356293.P147865320928942290

`A107804(A279957(n)+A006995(n+1))`
-/

namespace A356293.P147865320928942290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107804 (A279957 n + A006995 (n + 1)).toNat

end

end A356293.P147865320928942290

/-!
# A356295: Numbers that are not the sum of a nonnegative cube and a prime.

The programs for A356295, there is no canonical definition to state claims against.
-/

/-! ## A356295.P3199661634134848383

`∪[A045911(n+1), A016863(n)]`
-/

namespace A356295.P3199661634134848383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356295.P3199661634134848383

/-! ## A356295.P13195764310957835622

`∪[A045911(n+1), A074266(n+1)]`
-/

namespace A356295.P13195764310957835622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356295.P13195764310957835622

/-! ## A356295.P10205978173090490510

`∪[A045911(n+1), A084142(n+1)]`
-/

namespace A356295.P10205978173090490510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356295.P10205978173090490510

/-! ## A356295.P16001176491949463224

`∪[A045911(n+1), A327284(n+1)]`
-/

namespace A356295.P16001176491949463224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356295.P16001176491949463224

/-! ## A356295.P15397219404487450558

`∪[A045911(n+1), A349745(n+1)]`
-/

namespace A356295.P15397219404487450558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356295.P15397219404487450558

/-! ## A356295.P15140274559754548172

`∪[A014187(A000469(n+1)), A045911(n+1)]`
-/

namespace A356295.P15140274559754548172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014187 (A000469 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356295.P15140274559754548172

/-! ## A356295.P4518696674490804200

`∪[A111908(A014090(n+1)), A045911(n+1)]`
-/

namespace A356295.P4518696674490804200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (A014090 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356295.P4518696674490804200

/-!
# A356296: a(n) = Fibonacci(n)^2 mod n.

The programs for A356296, the canonical program `A356296.P6882871510415539984` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356296 has offset 1).

The definition of A356296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356296.P17829483430979584764

`A002708(n+1)²%(n+1)`
-/

namespace A356296.P17829483430979584764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002708 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A356296.P17829483430979584764

namespace A356296

/-- `A002708(n+1)²%(n+1)` -/
def P17829483430979584764.Spec : Prop :=
  ∀ n, P17829483430979584764.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P10033954660511937333

`A132634(n+1)²%(n+1)`
-/

namespace A356296.P10033954660511937333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132634 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A356296.P10033954660511937333

namespace A356296

/-- `A132634(n+1)²%(n+1)` -/
def P10033954660511937333.Spec : Prop :=
  ∀ n, P10033954660511937333.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P3700215403025431780

`A182167(n+1)²%(n+1)`
-/

namespace A356296.P3700215403025431780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182167 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A356296.P3700215403025431780

namespace A356296

/-- `A182167(n+1)²%(n+1)` -/
def P3700215403025431780.Spec : Prop :=
  ∀ n, P3700215403025431780.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P6882871510415539984

`A217737(n+1)²%(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A356296

/-- `A217737(n+1)²%(n+1)` -/
def P6882871510415539984.Spec : Prop :=
  ∀ n, P6882871510415539984.a n = A356296 (n + 1)

theorem P6882871510415539984.correct : P6882871510415539984.Spec := by
  intro n
  simp only [A356296, Nat.add_sub_cancel]

end A356296

/-! ## A356296.P8553615665522939158

`(A000045(n+1)%(n+1))²%(n+1)`
-/

namespace A356296.P8553615665522939158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000045 (n + 1)) (n + 1 : ℤ) ^ 2) (n + 1 : ℤ)

end

end A356296.P8553615665522939158

namespace A356296

/-- `(A000045(n+1)%(n+1))²%(n+1)` -/
def P8553615665522939158.Spec : Prop :=
  ∀ n, P8553615665522939158.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P5033873279227556874

`A007598(n+1)%(n+1)`
-/

namespace A356296.P5033873279227556874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007598 (n + 1)) (n + 1 : ℤ)

end

end A356296.P5033873279227556874

namespace A356296

/-- `A007598(n+1)%(n+1)` -/
def P5033873279227556874.Spec : Prop :=
  ∀ n, P5033873279227556874.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P3057901523824339359

`A006498(2*n)%(n+1)`
-/

namespace A356296.P3057901523824339359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006498 (2 * n)) (n + 1 : ℤ)

end

end A356296.P3057901523824339359

namespace A356296

/-- `A006498(2*n)%(n+1)` -/
def P3057901523824339359.Spec : Prop :=
  ∀ n, P3057901523824339359.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P14038765858783231184

`A000045(n+1)²%(n+1)`
-/

namespace A356296.P14038765858783231184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A356296.P14038765858783231184

namespace A356296

/-- `A000045(n+1)²%(n+1)` -/
def P14038765858783231184.Spec : Prop :=
  ∀ n, P14038765858783231184.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P7897970021556344062

`A324969(n+2)²%(n+1)`
-/

namespace A356296.P7897970021556344062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324969 (n + 2) ^ 2) (n + 1 : ℤ)

end

end A356296.P7897970021556344062

namespace A356296

/-- `A324969(n+2)²%(n+1)` -/
def P7897970021556344062.Spec : Prop :=
  ∀ n, P7897970021556344062.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P179626429916664741

`A074677(2*n+1)%(n+1)`
-/

namespace A356296.P179626429916664741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074677 (2 * n + 1)) (n + 1 : ℤ)

end

end A356296.P179626429916664741

namespace A356296

/-- `A074677(2*n+1)%(n+1)` -/
def P179626429916664741.Spec : Prop :=
  ∀ n, P179626429916664741.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P4767884324594900291

`A111569(2*n+1)%(n+1)`
-/

namespace A356296.P4767884324594900291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111569 (2 * n + 1)) (n + 1 : ℤ)

end

end A356296.P4767884324594900291

namespace A356296

/-- `A111569(2*n+1)%(n+1)` -/
def P4767884324594900291.Spec : Prop :=
  ∀ n, P4767884324594900291.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P17189718462250220227

`A380696(2*n+1)%(n+1)`
-/

namespace A356296.P17189718462250220227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380696 (2 * n + 1)) (n + 1 : ℤ)

end

end A356296.P17189718462250220227

namespace A356296

/-- `A380696(2*n+1)%(n+1)` -/
def P17189718462250220227.Spec : Prop :=
  ∀ n, P17189718462250220227.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P11307558811565359039

`(∑[A212804(n)]+1+n)²%(n+1)`
-/

namespace A356296.P11307558811565359039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)) ^ 2) (n + 1 : ℤ)

end

end A356296.P11307558811565359039

namespace A356296

/-- `(∑[A212804(n)]+1+n)²%(n+1)` -/
def P11307558811565359039.Spec : Prop :=
  ∀ n, P11307558811565359039.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P1183000206912557409

`(A061167(n)+∑[A212804(n)])²%(n+1)`
-/

namespace A356296.P1183000206912557409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A061167 n + ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (n + 1 : ℤ)

end

end A356296.P1183000206912557409

namespace A356296

/-- `(A061167(n)+∑[A212804(n)])²%(n+1)` -/
def P1183000206912557409.Spec : Prop :=
  ∀ n, P1183000206912557409.a n = A356296 (n + 1)

end A356296

/-! ## A356296.P4671253562194473712

`A025079(2*n+1)%(n+1)`
-/

namespace A356296.P4671253562194473712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025079 (2 * n + 1)) (n + 1 : ℤ)

end

end A356296.P4671253562194473712

namespace A356296

/-- `A025079(2*n+1)%(n+1)` -/
def P4671253562194473712.Spec : Prop :=
  ∀ n, P4671253562194473712.a n = A356296 (n + 1)

end A356296

/-!
# A356297: a(n) = n! * Sum_{k=1..n} sigma_0(k)/k.

The programs for A356297, there is no canonical definition to state claims against.
-/

/-! ## A356297.P15203360739441897422

`A318249(n+1)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A356297.P15203360739441897422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318249 (n + 1) + (n + 1 : ℤ) * a (n - 1)

end

end A356297.P15203360739441897422

/-! ## A356297.P12364268019330740526

`(n+1)!*∑[A000005(n+1)/(n+1)]`
-/

namespace A356297.P12364268019330740526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356297.P12364268019330740526

/-!
# A356298: a(n) = n! * Sum_{k=1..n} sigma_2(k)/k.

The programs for A356298, there is no canonical definition to state claims against.
-/

/-! ## A356298.P12130335986996065361

`A008619(Δ[A000288(3*n)])`
-/

namespace A356298.P12130335986996065361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A356298.P12130335986996065361

/-!
# A356299: a(n) = gcd(A276086(n), A342001(n)), where A276086 is the primorial base exp-function, and A342001 is the arithmetic derivative without its inherited divisor.

The programs for A356299, there is no canonical definition to state claims against.
-/

/-! ## A356299.P6838311421198862720

`gcd(A276086(n+1), A342001(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356299.P6838311421198862720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1)) (A342001 (n + 1))

end

end A356299.P6838311421198862720

/-! ## A356299.P16413711231241104837

`A327858(n+1)%A322328(A160430(n+3))`
-/

namespace A356299.P16413711231241104837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327858 (n + 1)) (A322328 (A160430 (n + 3)).toNat)

end

end A356299.P16413711231241104837

/-! ## A356299.P554267312770942235

`A020639(A327858(n+1)^A000010(n+1))`
-/

namespace A356299.P554267312770942235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A327858 (n + 1) : ℚ) ^ (A000010 (n + 1) : ℤ))).toNat

end

end A356299.P554267312770942235

/-! ## A356299.P1486343796845442535

`A020639(A327858(n+1)^A194905(n+1))`
-/

namespace A356299.P1486343796845442535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A327858 (n + 1) : ℚ) ^ (A194905 (n + 1) : ℤ))).toNat

end

end A356299.P1486343796845442535

