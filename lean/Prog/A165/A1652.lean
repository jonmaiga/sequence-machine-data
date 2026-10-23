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
import Seq.B000.C018
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A165200: Number of isomorphism classes of abelian / medial quandles.

The programs for A165200, there is no canonical definition to state claims against.
-/

/-! ## A165200.P1183464021228053533

`A347625(A112473(2*n+1)+1)+A112473(A172251(n+1))`
-/

namespace A165200.P1183464021228053533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (A112473 (2 * n + 1) + 1).toNat + A112473 (A172251 (n + 1)).toNat

end

end A165200.P1183464021228053533

/-!
# A165201: Expansion of 1/(1-x*c(x)^3), c(x) the g.f. of A000108.

The programs for A165201, the canonical program `A165201.P17103045525566951744` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165201 has offset 0).

The definition of A165201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165201.P559014574486550889

`A026674(floor(acot(n)+n))`
-/

namespace A165201.P559014574486550889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A165201.P559014574486550889

namespace A165201

/-- `A026674(floor(acot(n)+n))` -/
def P559014574486550889.Spec : Prop :=
  ∀ n, P559014574486550889.a n = A165201 n

end A165201

/-! ## A165201.P14656797622358233917

`A026731(abs(1-2*n))`
-/

namespace A165201.P14656797622358233917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026731 |1 - (2 * n : ℤ)|.toNat

end

end A165201.P14656797622358233917

namespace A165201

/-- `A026731(abs(1-2*n))` -/
def P14656797622358233917.Spec : Prop :=
  ∀ n, P14656797622358233917.a n = A165201 n

end A165201

/-! ## A165201.P15330117469200952580

`A026674(round(sqrt(n²+1)))`
-/

namespace A165201.P15330117469200952580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A165201.P15330117469200952580

namespace A165201

/-- `A026674(round(sqrt(n²+1)))` -/
def P15330117469200952580.Spec : Prop :=
  ∀ n, P15330117469200952580.a n = A165201 n

end A165201

/-! ## A165201.P5587844740255621810

`A026674(n)/a(floor(acot(n)))` with `a(0)=1`
-/

namespace A165201.P5587844740255621810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A026674 n : ℚ) / a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A165201.P5587844740255621810

namespace A165201

/-- `A026674(n)/a(floor(acot(n)))` -/
def P5587844740255621810.Spec : Prop :=
  ∀ n, P5587844740255621810.a n = (A165201 n : ℚ)

end A165201

/-! ## A165201.P17446074412261830814

`A165203(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A165201.P17446074412261830814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A165203 (n - 1) - a (n - 1)

end

end A165201.P17446074412261830814

namespace A165201

/-- `A165203(n-1)-a(n-1)` -/
def P17446074412261830814.Spec : Prop :=
  ∀ n, P17446074412261830814.a n = A165201 n

end A165201

/-! ## A165201.P15870508355279524303

`A026676(A004273(n))`
-/

namespace A165201.P15870508355279524303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A004273 n).toNat

end

end A165201.P15870508355279524303

namespace A165201

/-- `A026676(A004273(n))` -/
def P15870508355279524303.Spec : Prop :=
  ∀ n, P15870508355279524303.a n = A165201 n

end A165201

/-! ## A165201.P9703913178953878484

`A026676(record[A026741(n)])`
-/

namespace A165201.P9703913178953878484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165201.P9703913178953878484

namespace A165201

/-- `A026676(record[A026741(n)])` -/
def P9703913178953878484.Spec : Prop :=
  ∀ n, P9703913178953878484.a n = A165201 n

end A165201

/-! ## A165201.P8009481891505817277

`A026676(record[A093411(n)])`
-/

namespace A165201.P8009481891505817277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165201.P8009481891505817277

namespace A165201

/-- `A026676(record[A093411(n)])` -/
def P8009481891505817277.Spec : Prop :=
  ∀ n, P8009481891505817277.a n = A165201 n

end A165201

/-! ## A165201.P13808701907048129703

`A026676(A014681(2*n))`
-/

namespace A165201.P13808701907048129703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A014681 (2 * n)).toNat

end

end A165201.P13808701907048129703

namespace A165201

/-- `A026676(A014681(2*n))` -/
def P13808701907048129703.Spec : Prop :=
  ∀ n, P13808701907048129703.a n = A165201 n

end A165201

/-! ## A165201.P10958446951050715071

`A165407(A267528(2*n))`
-/

namespace A165201.P10958446951050715071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A267528 (2 * n)).toNat

end

end A165201.P10958446951050715071

namespace A165201

/-- `A165407(A267528(2*n))` -/
def P10958446951050715071.Spec : Prop :=
  ∀ n, P10958446951050715071.a n = A165201 n

end A165201

/-! ## A165201.P4677897590892089313

`A026676(eq[n, A093411(n)])`
-/

namespace A165201.P4677897590892089313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165201.P4677897590892089313

namespace A165201

/-- `A026676(eq[n, A093411(n)])` -/
def P4677897590892089313.Spec : Prop :=
  ∀ n, P4677897590892089313.a n = A165201 n

end A165201

/-! ## A165201.P12448049596239803284

`A026676(record[A064680(n)/2])`
-/

namespace A165201.P12448049596239803284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064680 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A165201.P12448049596239803284

namespace A165201

/-- `A026676(record[A064680(n)/2])` -/
def P12448049596239803284.Spec : Prop :=
  ∀ n, P12448049596239803284.a n = A165201 n

end A165201

/-! ## A165201.P17103045525566951744

`A000007(n)+Δ[A164651(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A165201

/-- `A000007(n)+Δ[A164651(n)]` -/
def P17103045525566951744.Spec : Prop :=
  ∀ n, P17103045525566951744.a n = A165201 n

theorem P17103045525566951744.correct : P17103045525566951744.Spec := by
  intro n
  simp only [A165201]

end A165201

/-! ## A165201.P12537708024059638792

`A026676(record[A064680(n)-n])`
-/

namespace A165201.P12537708024059638792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165201.P12537708024059638792

namespace A165201

/-- `A026676(record[A064680(n)-n])` -/
def P12537708024059638792.Spec : Prop :=
  ∀ n, P12537708024059638792.a n = A165201 n

end A165201

/-! ## A165201.P15629218450619030

`A026676(2*n-A057427(n))`
-/

namespace A165201.P15629218450619030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 ((2 * n : ℤ) - A057427 n).toNat

end

end A165201.P15629218450619030

namespace A165201

/-- `A026676(2*n-A057427(n))` -/
def P15629218450619030.Spec : Prop :=
  ∀ n, P15629218450619030.a n = A165201 n

end A165201

/-! ## A165201.P11695385205572633878

`A026676(n-A057427(n)+n)`
-/

namespace A165201.P11695385205572633878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 ((n : ℤ) - A057427 n + (n : ℤ)).toNat

end

end A165201.P11695385205572633878

namespace A165201

/-- `A026676(n-A057427(n)+n)` -/
def P11695385205572633878.Spec : Prop :=
  ∀ n, P11695385205572633878.a n = A165201 n

end A165201

/-! ## A165201.P12542133430008770750

`A026676(n-(A057427(n)-n))`
-/

namespace A165201.P12542133430008770750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 ((n : ℤ) - (A057427 n - (n : ℤ))).toNat

end

end A165201.P12542133430008770750

namespace A165201

/-- `A026676(n-(A057427(n)-n))` -/
def P12542133430008770750.Spec : Prop :=
  ∀ n, P12542133430008770750.a n = A165201 n

end A165201

/-! ## A165201.P3163487376692667342

`A165407(A294732(2*(n+1))-1)`
-/

namespace A165201.P3163487376692667342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A294732 (2 * (n + 1)) - 1).toNat

end

end A165201.P3163487376692667342

namespace A165201

/-- `A165407(A294732(2*(n+1))-1)` -/
def P3163487376692667342.Spec : Prop :=
  ∀ n, P3163487376692667342.a n = A165201 n

end A165201

/-! ## A165201.P1979420448416063147

`A026676(A004526(record[A064680(n)]))`
-/

namespace A165201.P1979420448416063147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A165201.P1979420448416063147

namespace A165201

/-- `A026676(A004526(record[A064680(n)]))` -/
def P1979420448416063147.Spec : Prop :=
  ∀ n, P1979420448416063147.a n = A165201 n

end A165201

/-! ## A165201.P8576951425073621579

`Δ[A164651(n)+A020639(A000010(n+2))]`
-/

namespace A165201.P8576951425073621579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164651 n + A020639 (A000010 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165201.P8576951425073621579

namespace A165201

/-- `Δ[A164651(n)+A020639(A000010(n+2))]` -/
def P8576951425073621579.Spec : Prop :=
  ∀ n, P8576951425073621579.a n = A165201 n

end A165201

/-!
# A165202: Expansion of (1+x)/(1 - x + x^2)^2.

The programs for A165202, the canonical program `A165202.P2112009354091090733` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165202 has offset 0).

The definition of A165202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x+3x^2-2x^3+x^4))` (program `A165202.P2112009354091090733`, by `A165202.P2112009354091090733.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165202.P2112009354091090733

`ogf((1+x)/(1-2x+3x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165202

/-- `ogf((1+x)/(1-2x+3x^2-2x^3+x^4))` -/
def P2112009354091090733.Spec : Prop :=
  ∀ n, P2112009354091090733.a n = A165202 n

theorem P2112009354091090733.correct : P2112009354091090733.Spec := by
  intro n
  simp only [A165202]

end A165202

/-! ## A165202.P7783386009457025338

`2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=-1`
-/

namespace A165202.P7783386009457025338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, -1] fun n a =>
  2 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A165202.P7783386009457025338

namespace A165202

/-- `2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P7783386009457025338.Spec : Prop :=
  ∀ n, P7783386009457025338.a n = A165202 n

end A165202

/-! ## A165202.P1038382000912274769

`∑[(n+1)*∑[a(n-1)-a(n-2)]]` with `a(0)=1, a(1)=0`
-/

namespace A165202.P1038382000912274769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165202.P1038382000912274769

namespace A165202

/-- `∑[(n+1)*∑[a(n-1)-a(n-2)]]` -/
def P1038382000912274769.Spec : Prop :=
  ∀ n, P1038382000912274769.a n = A165202 n

end A165202

/-! ## A165202.P9166636197828068553

`∑[(n+1)*A010892(n)]`
-/

namespace A165202.P9166636197828068553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165202.P9166636197828068553

namespace A165202

/-- `∑[(n+1)*A010892(n)]` -/
def P9166636197828068553.Spec : Prop :=
  ∀ n, P9166636197828068553.a n = A165202 n

end A165202

/-! ## A165202.P1593938462513124842

`A100052(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A165202.P1593938462513124842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  A100052 n + a (n - 3)

end

end A165202.P1593938462513124842

namespace A165202

/-- `A100052(n)+a(n-3)` -/
def P1593938462513124842.Spec : Prop :=
  ∀ n, P1593938462513124842.a n = A165202 n

end A165202

/-! ## A165202.P2339176006953195234

`A084103(n)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A165202.P2339176006953195234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  A084103 n - a (n - 3)

end

end A165202.P2339176006953195234

namespace A165202

/-- `A084103(n)-a(n-3)` -/
def P2339176006953195234.Spec : Prop :=
  ∀ n, P2339176006953195234.a n = A165202 n

end A165202

/-! ## A165202.P14851415786232296648

`A100050(n)+A057079(n)`
-/

namespace A165202.P14851415786232296648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n + A057079 n

end

end A165202.P14851415786232296648

namespace A165202

/-- `A100050(n)+A057079(n)` -/
def P14851415786232296648.Spec : Prop :=
  ∀ n, P14851415786232296648.a n = A165202 n

end A165202

/-! ## A165202.P178394789812720097

`A164965(n)+A110666(n)`
-/

namespace A165202.P178394789812720097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 n + A110666 n

end

end A165202.P178394789812720097

namespace A165202

/-- `A164965(n)+A110666(n)` -/
def P178394789812720097.Spec : Prop :=
  ∀ n, P178394789812720097.a n = A165202 n

end A165202

/-! ## A165202.P5454792341145994068

`A187307(n)+A128834(n)`
-/

namespace A165202.P5454792341145994068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n + A128834 n

end

end A165202.P5454792341145994068

namespace A165202

/-- `A187307(n)+A128834(n)` -/
def P5454792341145994068.Spec : Prop :=
  ∀ n, P5454792341145994068.a n = A165202 n

end A165202

/-! ## A165202.P14813437434715806606

`xor(A011655(n), A187307(n))`
-/

namespace A165202.P14813437434715806606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A187307 n)

end

end A165202.P14813437434715806606

namespace A165202

/-- `xor(A011655(n), A187307(n))` -/
def P14813437434715806606.Spec : Prop :=
  ∀ n, P14813437434715806606.a n = A165202 n

end A165202

/-! ## A165202.P5609526113689345834

`∑[A110665(n)+A010892(n)]`
-/

namespace A165202.P5609526113689345834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 n + A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165202.P5609526113689345834

namespace A165202

/-- `∑[A110665(n)+A010892(n)]` -/
def P5609526113689345834.Spec : Prop :=
  ∀ n, P5609526113689345834.a n = A165202 n

end A165202

/-! ## A165202.P1441252273614759174

`A100050(n)+∑[A100051(n)]`
-/

namespace A165202.P1441252273614759174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165202.P1441252273614759174

namespace A165202

/-- `A100050(n)+∑[A100051(n)]` -/
def P1441252273614759174.Spec : Prop :=
  ∀ n, P1441252273614759174.a n = A165202 n

end A165202

/-! ## A165202.P997085544970099759

`A128213(n)+2*A128834(n)`
-/

namespace A165202.P997085544970099759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128213 n + 2 * A128834 n

end

end A165202.P997085544970099759

namespace A165202

/-- `A128213(n)+2*A128834(n)` -/
def P997085544970099759.Spec : Prop :=
  ∀ n, P997085544970099759.a n = A165202 n

end A165202

/-! ## A165202.P6401588698177060956

`A057079(n)+n*A128834(n)`
-/

namespace A165202.P6401588698177060956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n + (n : ℤ) * A128834 n

end

end A165202.P6401588698177060956

namespace A165202

/-- `A057079(n)+n*A128834(n)` -/
def P6401588698177060956.Spec : Prop :=
  ∀ n, P6401588698177060956.a n = A165202 n

end A165202

/-! ## A165202.P4092700461055608036

`∑[A076118(n+1)+A076118(n)]`
-/

namespace A165202.P4092700461055608036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (n + 1) + A076118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165202.P4092700461055608036

namespace A165202

/-- `∑[A076118(n+1)+A076118(n)]` -/
def P4092700461055608036.Spec : Prop :=
  ∀ n, P4092700461055608036.a n = A165202 n

end A165202

/-! ## A165202.P16902437613199700472

`A099254(n)+A099254(n)-A076118(n+1)`
-/

namespace A165202.P16902437613199700472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 n + (A099254 n - A076118 (n + 1))

end

end A165202.P16902437613199700472

namespace A165202

/-- `A099254(n)+A099254(n)-A076118(n+1)` -/
def P16902437613199700472.Spec : Prop :=
  ∀ n, P16902437613199700472.a n = A165202 n

end A165202

/-! ## A165202.P773016045116018503

`∑[A100050(n+1)]`
-/

namespace A165202.P773016045116018503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165202.P773016045116018503

namespace A165202

/-- `∑[A100050(n+1)]` -/
def P773016045116018503.Spec : Prop :=
  ∀ n, P773016045116018503.a n = A165202 n

end A165202

/-! ## A165202.P10396200972284385718

`∑[(n+1)*A128834(n+1)]`
-/

namespace A165202.P10396200972284385718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A128834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165202.P10396200972284385718

namespace A165202

/-- `∑[(n+1)*A128834(n+1)]` -/
def P10396200972284385718.Spec : Prop :=
  ∀ n, P10396200972284385718.a n = A165202 n

end A165202

/-! ## A165202.P15803457603308871108

`∑[(n+1)*A163806(n+1)]`
-/

namespace A165202.P15803457603308871108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A163806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165202.P15803457603308871108

namespace A165202

/-- `∑[(n+1)*A163806(n+1)]` -/
def P15803457603308871108.Spec : Prop :=
  ∀ n, P15803457603308871108.a n = A165202 n

end A165202

/-! ## A165202.P1008854178236355688

`A128504(n+1)+A281862(n)-A099254(n+1)`
-/

namespace A165202.P1008854178236355688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128504 (n + 1) + (A281862 n - A099254 (n + 1))

end

end A165202.P1008854178236355688

namespace A165202

/-- `A128504(n+1)+A281862(n)-A099254(n+1)` -/
def P1008854178236355688.Spec : Prop :=
  ∀ n, P1008854178236355688.a n = A165202 n

end A165202

/-!
# A165203: Expansion of (1+x)*c(x)^3/(1-x*c(x)^3), c(x) the g.f. of A000108.

The programs for A165203, the canonical program `A165203.P6511348831486964080` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165203 has offset 0).

The definition of A165203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165203.P6511348831486964080

`Δ[A026726(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A165203

/-- `Δ[A026726(n)]` -/
def P6511348831486964080.Spec : Prop :=
  ∀ n, P6511348831486964080.a n = A165203 n

theorem P6511348831486964080.correct : P6511348831486964080.Spec := by
  intro n
  simp only [A165203]

end A165203

/-! ## A165203.P2312909990065921468

`Δ[A026731(2*n)]`
-/

namespace A165203.P2312909990065921468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026731 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165203.P2312909990065921468

namespace A165203

/-- `Δ[A026731(2*n)]` -/
def P2312909990065921468.Spec : Prop :=
  ∀ n, P2312909990065921468.a n = A165203 n

end A165203

/-! ## A165203.P12047310095487470016

`Δ[A165407(3*n)]`
-/

namespace A165203.P12047310095487470016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165203.P12047310095487470016

namespace A165203

/-- `Δ[A165407(3*n)]` -/
def P12047310095487470016.Spec : Prop :=
  ∀ n, P12047310095487470016.a n = A165203 n

end A165203

/-! ## A165203.P10081082146816061103

`Δ[A026854(n)-A000245(n)]`
-/

namespace A165203.P10081082146816061103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026854 n - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165203.P10081082146816061103

namespace A165203

/-- `Δ[A026854(n)-A000245(n)]` -/
def P10081082146816061103.Spec : Prop :=
  ∀ n, P10081082146816061103.a n = A165203 n

end A165203

/-! ## A165203.P13685117330383676284

`A026726(n+1)-A026726(n)`
-/

namespace A165203.P13685117330383676284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) - A026726 n

end

end A165203.P13685117330383676284

namespace A165203

/-- `A026726(n+1)-A026726(n)` -/
def P13685117330383676284.Spec : Prop :=
  ∀ n, P13685117330383676284.a n = A165203 n

theorem P13685117330383676284.correct : P13685117330383676284.Spec := by
  intro n
  simp only [A165203, Nat.add_sub_cancel, A165203.P13685117330383676284.a, A165203.P6511348831486964080.f1, A165203.P6511348831486964080.a, SequenceMachineLib.memo_apply]

end A165203

/-! ## A165203.P15075207310606944985

`A164651(n+2)-A164651(n)`
-/

namespace A165203.P15075207310606944985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164651 (n + 2) - A164651 n

end

end A165203.P15075207310606944985

namespace A165203

/-- `A164651(n+2)-A164651(n)` -/
def P15075207310606944985.Spec : Prop :=
  ∀ n, P15075207310606944985.a n = A165203 n

end A165203

/-! ## A165203.P5472737311142393691

`2*A026671(n)-A000108(n)`
-/

namespace A165203.P5472737311142393691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026671 n - A000108 n

end

end A165203.P5472737311142393691

namespace A165203

/-- `2*A026671(n)-A000108(n)` -/
def P5472737311142393691.Spec : Prop :=
  ∀ n, P5472737311142393691.a n = A165203 n

end A165203

/-! ## A165203.P10143385582007970470

`Δ[A026671(n)-Δ[A164651(n)]]`
-/

namespace A165203.P10143385582007970470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164651 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165203.P10143385582007970470

namespace A165203

/-- `Δ[A026671(n)-Δ[A164651(n)]]` -/
def P10143385582007970470.Spec : Prop :=
  ∀ n, P10143385582007970470.a n = A165203 n

end A165203

/-! ## A165203.P5723743312216116527

`Δ[A164651(n+1)+A164651(n)]`
-/

namespace A165203.P5723743312216116527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164651 (n + 1) + A164651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165203.P5723743312216116527

namespace A165203

/-- `Δ[A164651(n+1)+A164651(n)]` -/
def P5723743312216116527.Spec : Prop :=
  ∀ n, P5723743312216116527.a n = A165203 n

end A165203

/-! ## A165203.P14338049748921693011

`A026731(2*(n+1))-A026731(2*n)`
-/

namespace A165203.P14338049748921693011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026731 (2 * (n + 1)) - A026731 (2 * n)

end

end A165203.P14338049748921693011

namespace A165203

/-- `A026731(2*(n+1))-A026731(2*n)` -/
def P14338049748921693011.Spec : Prop :=
  ∀ n, P14338049748921693011.a n = A165203 n

end A165203

/-! ## A165203.P1345566852982516006

`Δ[A026847(2*n)]-A026732(2*n)`
-/

namespace A165203.P1345566852982516006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026847 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026732 (2 * n)

end

end A165203.P1345566852982516006

namespace A165203

/-- `Δ[A026847(2*n)]-A026732(2*n)` -/
def P1345566852982516006.Spec : Prop :=
  ∀ n, P1345566852982516006.a n = A165203 n

end A165203

/-!
# A165204: Hankel transform of A165203.

The programs for A165204, the canonical program `A165204.P2432327627946865242` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165204 has offset 0).

The definition of A165204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165204.P2432327627946865242

`3*a(n-1)-8*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=-5, a(2)=-21, a(3)=-21`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165204

/-- `3*a(n-1)-8*a(n-2)+3*a(n-3)-a(n-4)` -/
def P2432327627946865242.Spec : Prop :=
  ∀ n, P2432327627946865242.a n = A165204 n

theorem P2432327627946865242.correct : P2432327627946865242.Spec := by
  intro n
  simp only [A165204]

end A165204

/-!
# A165205: a(n) = C(2n-1,n) + C(2n+1,n+1) - C(0,n).

The programs for A165205, the canonical program `A165205.P7878292141726443622` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165205 has offset 0).

The definition of A165205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165205.P4634743674816102803

`A213290(Δ[n²])-1`
-/

namespace A165205.P4634743674816102803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213290 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A165205.P4634743674816102803

namespace A165205

/-- `A213290(Δ[n²])-1` -/
def P4634743674816102803.Spec : Prop :=
  ∀ n, P4634743674816102803.a n = A165205 n

end A165205

/-! ## A165205.P8392217302849380531

`record[A138364(n)]+∏[4-2/(n+1)]/2`
-/

namespace A165205.P8392217302849380531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A165205.P8392217302849380531

namespace A165205

/-- `record[A138364(n)]+∏[4-2/(n+1)]/2` -/
def P8392217302849380531.Spec : Prop :=
  ∀ n, P8392217302849380531.a n = (A165205 n : ℚ)

end A165205

/-! ## A165205.P5356739193817889310

`Δ[(4-2/n)*a(n-1)]+(n+1)*A000108(n)` with `a(0)=1, a(1)=1`
-/

namespace A165205.P5356739193817889310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n + 1 : ℤ) * A000108 n : ℚ)

end

end A165205.P5356739193817889310

namespace A165205

/-- `Δ[(4-2/n)*a(n-1)]+(n+1)*A000108(n)` -/
def P5356739193817889310.Spec : Prop :=
  ∀ n, P5356739193817889310.a n = (A165205 n : ℚ)

end A165205

/-! ## A165205.P7878292141726443622

`A029651(n)+A001791(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A165205

/-- `A029651(n)+A001791(n)` -/
def P7878292141726443622.Spec : Prop :=
  ∀ n, P7878292141726443622.a n = A165205 n

theorem P7878292141726443622.correct : P7878292141726443622.Spec := by
  intro n
  simp only [A165205]

end A165205

/-! ## A165205.P12464022973286843140

`A189176(n)+A162551(n)`
-/

namespace A165205.P12464022973286843140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n + A162551 n

end

end A165205.P12464022973286843140

namespace A165205

/-- `A189176(n)+A162551(n)` -/
def P12464022973286843140.Spec : Prop :=
  ∀ n, P12464022973286843140.a n = A165205 n

end A165205

/-! ## A165205.P16812177662460666720

`A051960(n)-A088218(n)`
-/

namespace A165205.P16812177662460666720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 n - A088218 n

end

end A165205.P16812177662460666720

namespace A165205

/-- `A051960(n)-A088218(n)` -/
def P16812177662460666720.Spec : Prop :=
  ∀ n, P16812177662460666720.a n = A165205 n

end A165205

/-! ## A165205.P4351446017591597378

`A000984(n)+Δ[A088218(n)]`
-/

namespace A165205.P4351446017591597378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (f1 (n + 1) - f1 n)

end

end A165205.P4351446017591597378

namespace A165205

/-- `A000984(n)+Δ[A088218(n)]` -/
def P4351446017591597378.Spec : Prop :=
  ∀ n, P4351446017591597378.a n = A165205 n

end A165205

/-! ## A165205.P2599448292773109061

`A001700(n)+record[A138364(n)]`
-/

namespace A165205.P2599448292773109061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165205.P2599448292773109061

namespace A165205

/-- `A001700(n)+record[A138364(n)]` -/
def P2599448292773109061.Spec : Prop :=
  ∀ n, P2599448292773109061.a n = A165205 n

end A165205

/-! ## A165205.P14110571498252402490

`A026619(n+1)-A001791(n)`
-/

namespace A165205.P14110571498252402490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026619 (n + 1) - A001791 n

end

end A165205.P14110571498252402490

namespace A165205

/-- `A026619(n+1)-A001791(n)` -/
def P14110571498252402490.Spec : Prop :=
  ∀ n, P14110571498252402490.a n = A165205 n

end A165205

/-! ## A165205.P13938688643058718152

`A050168(2*n)+A001791(n)`
-/

namespace A165205.P13938688643058718152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (2 * n) + A001791 n

end

end A165205.P13938688643058718152

namespace A165205

/-- `A050168(2*n)+A001791(n)` -/
def P13938688643058718152.Spec : Prop :=
  ∀ n, P13938688643058718152.a n = A165205 n

end A165205

/-! ## A165205.P2950462888606249235

`A037955(2*n)+A029651(n)`
-/

namespace A165205.P2950462888606249235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n) + A029651 n

end

end A165205.P2950462888606249235

namespace A165205

/-- `A037955(2*n)+A029651(n)` -/
def P2950462888606249235.Spec : Prop :=
  ∀ n, P2950462888606249235.a n = A165205 n

end A165205

/-! ## A165205.P17904942211282322412

`A189176(n)+2*A001791(n)`
-/

namespace A165205.P17904942211282322412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n + 2 * A001791 n

end

end A165205.P17904942211282322412

namespace A165205

/-- `A189176(n)+2*A001791(n)` -/
def P17904942211282322412.Spec : Prop :=
  ∀ n, P17904942211282322412.a n = A165205 n

end A165205

/-! ## A165205.P15845194620925970011

`A029651(n)+A162551(n)/2`
-/

namespace A165205.P15845194620925970011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029651 n : ℚ) + (A162551 n : ℚ) / 2

end

end A165205.P15845194620925970011

namespace A165205

/-- `A029651(n)+A162551(n)/2` -/
def P15845194620925970011.Spec : Prop :=
  ∀ n, P15845194620925970011.a n = (A165205 n : ℚ)

end A165205

/-! ## A165205.P9821344195399652670

`A184937(n)-2*A088218(n)`
-/

namespace A165205.P9821344195399652670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184937 n - 2 * A088218 n

end

end A165205.P9821344195399652670

namespace A165205

/-- `A184937(n)-2*A088218(n)` -/
def P9821344195399652670.Spec : Prop :=
  ∀ n, P9821344195399652670.a n = A165205 n

end A165205

/-! ## A165205.P12330538562812481597

`A029651(n)+n*A000108(n)`
-/

namespace A165205.P12330538562812481597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n + (n : ℤ) * A000108 n

end

end A165205.P12330538562812481597

namespace A165205

/-- `A029651(n)+n*A000108(n)` -/
def P12330538562812481597.Spec : Prop :=
  ∀ n, P12330538562812481597.a n = A165205 n

end A165205

/-! ## A165205.P2595298851897457067

`record[A057977(n)]+record[A138364(n)]`
-/

namespace A165205.P2595298851897457067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A165205.P2595298851897457067

namespace A165205

/-- `record[A057977(n)]+record[A138364(n)]` -/
def P2595298851897457067.Spec : Prop :=
  ∀ n, P2595298851897457067.a n = A165205 n

end A165205

/-! ## A165205.P17115368599636294927

`floor(A001700(n)+A000984(n)/2)`
-/

namespace A165205.P17115368599636294927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001700 n : ℚ) + (A000984 n : ℚ) / 2⌋

end

end A165205.P17115368599636294927

namespace A165205

/-- `floor(A001700(n)+A000984(n)/2)` -/
def P17115368599636294927.Spec : Prop :=
  ∀ n, P17115368599636294927.a n = A165205 n

end A165205

/-! ## A165205.P16786665025088296029

`A126869(2*n)+Δ[A088218(n)]`
-/

namespace A165205.P16786665025088296029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) + (f1 (n + 1) - f1 n)

end

end A165205.P16786665025088296029

namespace A165205

/-- `A126869(2*n)+Δ[A088218(n)]` -/
def P16786665025088296029.Spec : Prop :=
  ∀ n, P16786665025088296029.a n = A165205 n

end A165205

/-! ## A165205.P10997491820627548993

`A088218(n+1)+record[A138364(n)]`
-/

namespace A165205.P10997491820627548993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165205.P10997491820627548993

namespace A165205

/-- `A088218(n+1)+record[A138364(n)]` -/
def P10997491820627548993.Spec : Prop :=
  ∀ n, P10997491820627548993.a n = A165205 n

end A165205

/-! ## A165205.P8089078921519039347

`A045992(n)+Δ[A088218(n)]+n`
-/

namespace A165205.P8089078921519039347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A165205.P8089078921519039347

namespace A165205

/-- `A045992(n)+Δ[A088218(n)]+n` -/
def P8089078921519039347.Spec : Prop :=
  ∀ n, P8089078921519039347.a n = A165205 n

end A165205

/-!
# A165206: a(n) = (3-4*n)*F(2*n-2) + (4-7*n)*F(2*n-1).

The programs for A165206, the canonical program `A165206.P8129600844828367063` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165206 has offset 0).

The definition of A165206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165206.P8129600844828367063

`1-∑[n*A002878(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165206

/-- `1-∑[n*A002878(n)]` -/
def P8129600844828367063.Spec : Prop :=
  ∀ n, P8129600844828367063.a n = A165206 n

theorem P8129600844828367063.correct : P8129600844828367063.Spec := by
  intro n
  simp only [A165206]

end A165206

/-! ## A165206.P2086708513061680234

`1-∑[n*A000032(Δ[n²])]`
-/

namespace A165206.P2086708513061680234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000032 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165206.P2086708513061680234

namespace A165206

/-- `1-∑[n*A000032(Δ[n²])]` -/
def P2086708513061680234.Spec : Prop :=
  ∀ n, P2086708513061680234.a n = A165206 n

end A165206

/-! ## A165206.P3464755397067530554

`1-∑[n*Δ[A000032(2*n)]]`
-/

namespace A165206.P3464755397067530554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165206.P3464755397067530554

namespace A165206

/-- `1-∑[n*Δ[A000032(2*n)]]` -/
def P3464755397067530554.Spec : Prop :=
  ∀ n, P3464755397067530554.a n = A165206 n

end A165206

/-! ## A165206.P2151688215918148922

`1-∑[n*record[A005013(n+1)]]`
-/

namespace A165206.P2151688215918148922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165206.P2151688215918148922

namespace A165206

/-- `1-∑[n*record[A005013(n+1)]]` -/
def P2151688215918148922.Spec : Prop :=
  ∀ n, P2151688215918148922.a n = A165206 n

end A165206

/-! ## A165206.P5843302399450930238

`∑[1-n*A000032(2*n+1)]-n`
-/

namespace A165206.P5843302399450930238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A000032 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A165206.P5843302399450930238

namespace A165206

/-- `∑[1-n*A000032(2*n+1)]-n` -/
def P5843302399450930238.Spec : Prop :=
  ∀ n, P5843302399450930238.a n = A165206 n

end A165206

/-! ## A165206.P14230855667956505318

`a(n-1)-n*A000032(n+1+n)` with `a(0)=1`
-/

namespace A165206.P14230855667956505318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (n : ℤ) * A000032 (n + 1 + n)

end

end A165206.P14230855667956505318

namespace A165206

/-- `a(n-1)-n*A000032(n+1+n)` -/
def P14230855667956505318.Spec : Prop :=
  ∀ n, P14230855667956505318.a n = A165206 n

end A165206

/-! ## A165206.P3112719809217226475

`A167423(n)-2*A197649(n)`
-/

namespace A165206.P3112719809217226475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167423 n - 2 * A197649 n

end

end A165206.P3112719809217226475

namespace A165206

/-- `A167423(n)-2*A197649(n)` -/
def P3112719809217226475.Spec : Prop :=
  ∀ n, P3112719809217226475.a n = A165206 n

end A165206

/-! ## A165206.P13404682369049588463

`A002878(n+1)-A343543(n+1)`
-/

namespace A165206.P13404682369049588463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) - A343543 (n + 1)

end

end A165206.P13404682369049588463

namespace A165206

/-- `A002878(n+1)-A343543(n+1)` -/
def P13404682369049588463.Spec : Prop :=
  ∀ n, P13404682369049588463.a n = A165206 n

end A165206

/-! ## A165206.P13595876148717625210

`A075193(2*n)-n*A005248(n+1)`
-/

namespace A165206.P13595876148717625210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (2 * n) - (n : ℤ) * A005248 (n + 1)

end

end A165206.P13595876148717625210

namespace A165206

/-- `A075193(2*n)-n*A005248(n+1)` -/
def P13595876148717625210.Spec : Prop :=
  ∀ n, P13595876148717625210.a n = A165206 n

end A165206

/-! ## A165206.P13212679397239813551

`A075193(2*n)-n*A075270(2*n)`
-/

namespace A165206.P13212679397239813551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (2 * n) - (n : ℤ) * A075270 (2 * n)

end

end A165206.P13212679397239813551

namespace A165206

/-- `A075193(2*n)-n*A075270(2*n)` -/
def P13212679397239813551.Spec : Prop :=
  ∀ n, P13212679397239813551.a n = A165206 n

end A165206

/-! ## A165206.P8633360384186325508

`A000032(2*n+1)-n*A005248(n+1)`
-/

namespace A165206.P8633360384186325508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) - (n : ℤ) * A005248 (n + 1)

end

end A165206.P8633360384186325508

namespace A165206

/-- `A000032(2*n+1)-n*A005248(n+1)` -/
def P8633360384186325508.Spec : Prop :=
  ∀ n, P8633360384186325508.a n = A165206 n

end A165206

/-! ## A165206.P3981313882956205614

`A000204(2*n+1)-n*A005248(n+1)`
-/

namespace A165206.P3981313882956205614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * n + 1) - (n : ℤ) * A005248 (n + 1)

end

end A165206.P3981313882956205614

namespace A165206

/-- `A000204(2*n+1)-n*A005248(n+1)` -/
def P3981313882956205614.Spec : Prop :=
  ∀ n, P3981313882956205614.a n = A165206 n

end A165206

/-! ## A165206.P13639910006409281851

`A005013(2*n+1)-n*A005248(n+1)`
-/

namespace A165206.P13639910006409281851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (2 * n + 1) - (n : ℤ) * A005248 (n + 1)

end

end A165206.P13639910006409281851

namespace A165206

/-- `A005013(2*n+1)-n*A005248(n+1)` -/
def P13639910006409281851.Spec : Prop :=
  ∀ n, P13639910006409281851.a n = A165206 n

end A165206

/-! ## A165206.P1276927339210551896

`A014217(2*n+1)-n*A005248(n+1)`
-/

namespace A165206.P1276927339210551896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * n + 1) - (n : ℤ) * A005248 (n + 1)

end

end A165206.P1276927339210551896

namespace A165206

/-- `A014217(2*n+1)-n*A005248(n+1)` -/
def P1276927339210551896.Spec : Prop :=
  ∀ n, P1276927339210551896.a n = A165206 n

end A165206

/-! ## A165206.P17448366665591281559

`A075193(2*n)+n*A075193(2*n+1)`
-/

namespace A165206.P17448366665591281559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (2 * n) + (n : ℤ) * A075193 (2 * n + 1)

end

end A165206.P17448366665591281559

namespace A165206

/-- `A075193(2*n)+n*A075193(2*n+1)` -/
def P17448366665591281559.Spec : Prop :=
  ∀ n, P17448366665591281559.a n = A165206 n

end A165206

/-! ## A165206.P11219022970878788445

`A000204(2*n+1)-n*A075270(2*n)`
-/

namespace A165206.P11219022970878788445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * n + 1) - (n : ℤ) * A075270 (2 * n)

end

end A165206.P11219022970878788445

namespace A165206

/-- `A000204(2*n+1)-n*A075270(2*n)` -/
def P11219022970878788445.Spec : Prop :=
  ∀ n, P11219022970878788445.a n = A165206 n

end A165206

/-! ## A165206.P12090063008543541072

`A000032(2*n+1)-n*A288219(2*n)`
-/

namespace A165206.P12090063008543541072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) - (n : ℤ) * A288219 (2 * n)

end

end A165206.P12090063008543541072

namespace A165206

/-- `A000032(2*n+1)-n*A288219(2*n)` -/
def P12090063008543541072.Spec : Prop :=
  ∀ n, P12090063008543541072.a n = A165206 n

end A165206

/-! ## A165206.P14988301124038579382

`A000204(2*n+1)-n*A288219(2*n)`
-/

namespace A165206.P14988301124038579382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * n + 1) - (n : ℤ) * A288219 (2 * n)

end

end A165206.P14988301124038579382

namespace A165206

/-- `A000204(2*n+1)-n*A288219(2*n)` -/
def P14988301124038579382.Spec : Prop :=
  ∀ n, P14988301124038579382.a n = A165206 n

end A165206

/-! ## A165206.P10093830870699332937

`A014217(2*n+1)-n*A288219(2*n)`
-/

namespace A165206.P10093830870699332937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * n + 1) - (n : ℤ) * A288219 (2 * n)

end

end A165206.P10093830870699332937

namespace A165206

/-- `A014217(2*n+1)-n*A288219(2*n)` -/
def P10093830870699332937.Spec : Prop :=
  ∀ n, P10093830870699332937.a n = A165206 n

end A165206

/-! ## A165206.P7483362710684491224

`A000032(2*n+1)-n*A000032(2*(n+1))`
-/

namespace A165206.P7483362710684491224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) - (n : ℤ) * A000032 (2 * (n + 1))

end

end A165206.P7483362710684491224

namespace A165206

/-- `A000032(2*n+1)-n*A000032(2*(n+1))` -/
def P7483362710684491224.Spec : Prop :=
  ∀ n, P7483362710684491224.a n = A165206 n

end A165206

/-!
# A165207: Period 4: repeat [2, 2, 4, 4].

The programs for A165207, the canonical program `A165207.P1802455843488404911` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165207 has offset 0).

The definition of A165207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165207.P1802455843488404911

`a(n-4)` with `a(0)=2, a(1)=2, a(2)=4, a(3)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165207

/-- `a(n-4)` -/
def P1802455843488404911.Spec : Prop :=
  ∀ n, (P1802455843488404911.a n : ℤ) = A165207 n

theorem P1802455843488404911.correct : P1802455843488404911.Spec := by
  intro n
  simp only [A165207]

end A165207

/-!
# A165210: 

The programs for A165210, there is no canonical definition to state claims against.
-/

/-! ## A165210.P13986474630110215506

`A019324(p?[A138936(n+1)])`
-/

namespace A165210.P13986474630110215506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019324 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165210.P13986474630110215506

/-!
# A165211: Period 8: repeat [0,1,0,1,1,0,1,0].

The programs for A165211, the canonical program `A165211.P529952495777540899` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165211 has offset 0).

The definition of A165211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165211.P529952495777540899

`(n*(n+1)*(n²+n+2)/8)%2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165211

/-- `(n*(n+1)*(n²+n+2)/8)%2` -/
def P529952495777540899.Spec : Prop :=
  ∀ n, P529952495777540899.a n = A165211 n

theorem P529952495777540899.correct : P529952495777540899.Spec := by
  intro n
  simp only [A165211]

end A165211

/-!
# A165212: The n-th term in the sequence is the minimal number that has some subset of DPS's that form an n-term arithmetic progression.

The programs for A165212, there is no canonical definition to state claims against.
-/

/-! ## A165212.P18192220961596077953

`A169866(A325850(n))*A188913(n)`
-/

namespace A165212.P18192220961596077953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169866 (A325850 n).toNat * A188913 n

end

end A165212.P18192220961596077953

/-!
# A165213: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^9 = I.

The programs for A165213, there is no canonical definition to state claims against.
-/

/-! ## A165213.P5889030015327583640

`A003948(n)-A241831(A115205(n+1))`
-/

namespace A165213.P5889030015327583640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n - A241831 (A115205 (n + 1)).toNat

end

end A165213.P5889030015327583640

/-!
# A165215: Number of reduced words of length n in Coxeter group on 8 generators S_i with relations (S_i)^2 = (S_i S_j)^9 = I.

The programs for A165215, there is no canonical definition to state claims against.
-/

/-! ## A165215.P15186300358104160939

`A166366(n)-A166353(A166340(n+3))`
-/

namespace A165215.P15186300358104160939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166366 n - A166353 (A166340 (n + 3)).toNat

end

end A165215.P15186300358104160939

/-!
# A165217: Count of interior bounded regions in a regular 2n-sided polygon dissected by all diagonals parallel to sides.

The programs for A165217, there is no canonical definition to state claims against.
-/

/-! ## A165217.P10385164197807874820

`A320422(A100793(n)+2)`
-/

namespace A165217.P10385164197807874820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320422 (A100793 n + 2).toNat

end

end A165217.P10385164197807874820

/-! ## A165217.P6307678797126066806

`A320422(A392618(n+2))`
-/

namespace A165217.P6307678797126066806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320422 (A392618 (n + 2)).toNat

end

end A165217.P6307678797126066806

/-!
# A165218: Primes q of the form q=p^2+4 (p=prime) such that r=q^2+4 is also prime.

The programs for A165218, there is no canonical definition to state claims against.
-/

/-! ## A165218.P1324507677349934576

`A116886(n+1)²+4`
-/

namespace A165218.P1324507677349934576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116886 (n + 1) ^ 2 + 4

end

end A165218.P1324507677349934576

/-! ## A165218.P11009821845678359864

`or(1, A116886(n+1))^ratio[A000079(n)]+4`
-/

namespace A165218.P11009821845678359864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A116886 (n + 1)) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ) + 4

end

end A165218.P11009821845678359864

/-! ## A165218.P13758762010457982774

`A013946(A116886(n+1))`
-/

namespace A165218.P13758762010457982774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013946 (A116886 (n + 1)).toNat

end

end A165218.P13758762010457982774

/-! ## A165218.P11276151659544624607

`A087475(p?[A116886(n+1)])`
-/

namespace A165218.P11276151659544624607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165218.P11276151659544624607

/-! ## A165218.P12871521178434824713

`A087475(or(1, A116886(n+1)))`
-/

namespace A165218.P12871521178434824713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (Int.lor 1 (A116886 (n + 1))).toNat

end

end A165218.P12871521178434824713

/-!
# A165220: Numbers n such that 8*n+1 is a cube.

The programs for A165220, the canonical program `A165220.P6530688454561008682` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165220 has offset 0).

The definition of A165220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165220.P6530688454561008682

`floor((1/2+4*n)^3)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165220

/-- `floor((1/2+4*n)^3)` -/
def P6530688454561008682.Spec : Prop :=
  ∀ n, P6530688454561008682.a n = A165220 n

theorem P6530688454561008682.correct : P6530688454561008682.Spec := by
  intro n
  simp only [A165220]

end A165220

/-! ## A165220.P12824471103807135773

`A160250(n+1)-(n+1)`
-/

namespace A165220.P12824471103807135773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160250 (n + 1) - (n + 1 : ℤ)

end

end A165220.P12824471103807135773

namespace A165220

/-- `A160250(n+1)-(n+1)` -/
def P12824471103807135773.Spec : Prop :=
  ∀ n, P12824471103807135773.a n = A165220 n

end A165220

/-! ## A165220.P1705145142097293073

`A033585(n)+n*A017078(n)`
-/

namespace A165220.P1705145142097293073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + (n : ℤ) * A017078 n

end

end A165220.P1705145142097293073

namespace A165220

/-- `A033585(n)+n*A017078(n)` -/
def P1705145142097293073.Spec : Prop :=
  ∀ n, P1705145142097293073.a n = A165220 n

end A165220

/-! ## A165220.P6746297906686182428

`n*(A017089(n)+A017077(n)²)`
-/

namespace A165220.P6746297906686182428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A017089 n + A017077 n ^ 2)

end

end A165220.P6746297906686182428

namespace A165220

/-- `n*(A017089(n)+A017077(n)²)` -/
def P6746297906686182428.Spec : Prop :=
  ∀ n, P6746297906686182428.a n = A165220 n

end A165220

/-! ## A165220.P9973010904978782023

`A007742(2*n)*(4*n+1)+n`
-/

namespace A165220.P9973010904978782023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 (2 * n) * (4 * n + 1 : ℤ) + (n : ℤ)

end

end A165220.P9973010904978782023

namespace A165220

/-- `A007742(2*n)*(4*n+1)+n` -/
def P9973010904978782023.Spec : Prop :=
  ∀ n, P9973010904978782023.a n = A165220 n

end A165220

/-! ## A165220.P16980738884334525102

`A014494(2*n)*(8*n+1)+n`
-/

namespace A165220.P16980738884334525102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (2 * n) * (8 * n + 1 : ℤ) + (n : ℤ)

end

end A165220.P16980738884334525102

namespace A165220

/-- `A014494(2*n)*(8*n+1)+n` -/
def P16980738884334525102.Spec : Prop :=
  ∀ n, P16980738884334525102.a n = A165220 n

end A165220

/-! ## A165220.P5840885165802076393

`(8*n+1)*A139592(2*n)+n`
-/

namespace A165220.P5840885165802076393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) * A139592 (2 * n) + (n : ℤ)

end

end A165220.P5840885165802076393

namespace A165220

/-- `(8*n+1)*A139592(2*n)+n` -/
def P5840885165802076393.Spec : Prop :=
  ∀ n, P5840885165802076393.a n = A165220 n

end A165220

/-! ## A165220.P6465550821944947732

`A016755(2*n)-A033570(2*n)+n`
-/

namespace A165220.P6465550821944947732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (2 * n) - A033570 (2 * n) + (n : ℤ)

end

end A165220.P6465550821944947732

namespace A165220

/-- `A016755(2*n)-A033570(2*n)+n` -/
def P6465550821944947732.Spec : Prop :=
  ∀ n, P6465550821944947732.a n = A165220 n

end A165220

/-! ## A165220.P3299982148475811746

`lcm(A007742(2*n), A014105(2*n))+n`
-/

namespace A165220.P3299982148475811746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007742 (2 * n)) (A014105 (2 * n)) + n

end

end A165220.P3299982148475811746

namespace A165220

/-- `lcm(A007742(2*n), A014105(2*n))+n` -/
def P3299982148475811746.Spec : Prop :=
  ∀ n, (P3299982148475811746.a n : ℤ) = A165220 n

end A165220

/-! ## A165220.P12333271386178831984

`lcm(A007742(A004277(n)), A007742(n))+n`
-/

namespace A165220.P12333271386178831984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007742 (A004277 n).toNat) (A007742 n) + n

end

end A165220.P12333271386178831984

namespace A165220

/-- `lcm(A007742(A004277(n)), A007742(n))+n` -/
def P12333271386178831984.Spec : Prop :=
  ∀ n, (P12333271386178831984.a n : ℤ) = A165220 n

end A165220

/-! ## A165220.P13471650658016980690

`A316224(2*n)+n`
-/

namespace A165220.P13471650658016980690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 (2 * n) + (n : ℤ)

end

end A165220.P13471650658016980690

namespace A165220

/-- `A316224(2*n)+n` -/
def P13471650658016980690.Spec : Prop :=
  ∀ n, P13471650658016980690.a n = A165220 n

end A165220

/-! ## A165220.P9017535619642775431

`n*(A157870(2*n)+1)`
-/

namespace A165220.P9017535619642775431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A157870 (2 * n) + 1)

end

end A165220.P9017535619642775431

namespace A165220

/-- `n*(A157870(2*n)+1)` -/
def P9017535619642775431.Spec : Prop :=
  ∀ n, P9017535619642775431.a n = A165220 n

end A165220

/-! ## A165220.P18255955346371869338

`A014634(2*n)*2*n+n`
-/

namespace A165220.P18255955346371869338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 (2 * n) * (2 * n : ℤ) + (n : ℤ)

end

end A165220.P18255955346371869338

namespace A165220

/-- `A014634(2*n)*2*n+n` -/
def P18255955346371869338.Spec : Prop :=
  ∀ n, P18255955346371869338.a n = A165220 n

end A165220

/-! ## A165220.P5635181563539011266

`n*(A001539(2*n)-8*n)`
-/

namespace A165220.P5635181563539011266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001539 (2 * n) - (8 * n : ℤ))

end

end A165220.P5635181563539011266

namespace A165220

/-- `n*(A001539(2*n)-8*n)` -/
def P5635181563539011266.Spec : Prop :=
  ∀ n, P5635181563539011266.a n = A165220 n

end A165220

/-! ## A165220.P4508221623878218354

`A016743(2*n)+A049453(2*n)+n`
-/

namespace A165220.P4508221623878218354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (2 * n) + (A049453 (2 * n) + (n : ℤ))

end

end A165220.P4508221623878218354

namespace A165220

/-- `A016743(2*n)+A049453(2*n)+n` -/
def P4508221623878218354.Spec : Prop :=
  ∀ n, P4508221623878218354.a n = A165220 n

end A165220

/-! ## A165220.P1140106937696690092

`A033581(2*n)+A118465(2*n)+n`
-/

namespace A165220.P1140106937696690092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (2 * n) + (A118465 (2 * n) + (n : ℤ))

end

end A165220.P1140106937696690092

namespace A165220

/-- `A033581(2*n)+A118465(2*n)+n` -/
def P1140106937696690092.Spec : Prop :=
  ∀ n, P1140106937696690092.a n = A165220 n

end A165220

/-! ## A165220.P13070929170376588244

`A045950(2*n)+A115519(2*n)+n`
-/

namespace A165220.P13070929170376588244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045950 (2 * n) + (A115519 (2 * n) + (n : ℤ))

end

end A165220.P13070929170376588244

namespace A165220

/-- `A045950(2*n)+A115519(2*n)+n` -/
def P13070929170376588244.Spec : Prop :=
  ∀ n, P13070929170376588244.a n = A165220 n

end A165220

/-! ## A165220.P14233967065575105418

`A035328(2*n)+A300758(2*n)+n`
-/

namespace A165220.P14233967065575105418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035328 (2 * n) + (A300758 (2 * n) + (n : ℤ))

end

end A165220.P14233967065575105418

namespace A165220

/-- `A035328(2*n)+A300758(2*n)+n` -/
def P14233967065575105418.Spec : Prop :=
  ∀ n, P14233967065575105418.a n = A165220 n

end A165220

/-! ## A165220.P5093485794548020056

`A014105(2*n)*A016813(2*n)+n`
-/

namespace A165220.P5093485794548020056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (2 * n) * A016813 (2 * n) + (n : ℤ)

end

end A165220.P5093485794548020056

namespace A165220

/-- `A014105(2*n)*A016813(2*n)+n` -/
def P5093485794548020056.Spec : Prop :=
  ∀ n, P5093485794548020056.a n = A165220 n

end A165220

/-! ## A165220.P10173931868736109604

`A002378(2*n)+n*A028993(2*n)`
-/

namespace A165220.P10173931868736109604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 * n) + (n : ℤ) * A028993 (2 * n)

end

end A165220.P10173931868736109604

namespace A165220

/-- `A002378(2*n)+n*A028993(2*n)` -/
def P10173931868736109604.Spec : Prop :=
  ∀ n, P10173931868736109604.a n = A165220 n

end A165220

/-!
# A165221: The Padovan sequence analog of the Fibonacci "rabbit" constant binary expansion. Starting with 0 and using the transitions 0->1,1->10,10->01 the subsequences 0,1,10,01,110,1001,01110,1101001,100101110,011101101001... are formed where each subsequence has P sub n ones and length P sub (n-1) binary digits, where P sub n is the n-th Padovan number. This sequence is the concatenation of all the subsequences. Also note that the n-th subsequence is the concatenation of the n-th-3 and n-th-2 subsequences.

The programs for A165221, there is no canonical definition to state claims against.
-/

/-! ## A165221.P5337859174419714397

`(∏{e}[n+1, #+1]+∑[char[comp[2^n+n]]])%2`
-/

namespace A165221.P5337859174419714397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + ∑ j ∈ Finset.range (n + 1), f2 j) % 2

end

end A165221.P5337859174419714397

/-! ## A165221.P10325649973865823560

`ceil(Δ[ratio[A190803(n+4)]])`
-/

namespace A165221.P10325649973865823560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190803 (n + 4)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A165221.P10325649973865823560

/-! ## A165221.P3595929792631781259

`A260736(comp[9*n-1])%2`
-/

namespace A165221.P3595929792631781259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260736 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 2

end

end A165221.P3595929792631781259

/-! ## A165221.P7178022382496580339

`comp[lt[4, A055978(n+5)]]%2`
-/

namespace A165221.P7178022382496580339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055978 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A165221.P7178022382496580339

/-! ## A165221.P7981656964760432557

`A022911(∑[char[n²]+2])²%3`
-/

namespace A165221.P7981656964760432557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022911 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) 3

end

end A165221.P7981656964760432557

/-!
# A165222: a(n) = (2^(n+4)+1)*(2^n+1).

The programs for A165222, the canonical program `A165222.P17568472588538369282` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165222 has offset 0).

The definition of A165222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+4)+1)*(2^n+1)` (program `A165222.P17568472588538369282`, by `A165222.P17568472588538369282.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165222.P17568472588538369282

`(2^(n+4)+1)*(2^n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165222

/-- `(2^(n+4)+1)*(2^n+1)` -/
def P17568472588538369282.Spec : Prop :=
  ∀ n, (P17568472588538369282.a n : ℤ) = A165222 n

theorem P17568472588538369282.correct : P17568472588538369282.Spec := by
  intro n
  simp only [A165222]

end A165222

/-! ## A165222.P17341670360975611961

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=34, a(1)=99, a(2)=325`
-/

namespace A165222.P17341670360975611961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34, 99, 325] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A165222.P17341670360975611961

namespace A165222

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P17341670360975611961.Spec : Prop :=
  ∀ n, P17341670360975611961.a n = A165222 n

theorem P17341670360975611961.correct : P17341670360975611961.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A165222, Nat.add_sub_cancel, A165222.P17341670360975611961.a, A165222.P17568472588538369282.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A165222, Nat.add_sub_cancel, A165222.P17341670360975611961.a, A165222.P17568472588538369282.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165222

/-! ## A165222.P6933560582711038439

`A235886(n+1)-(7*2^n-1)`
-/

namespace A165222.P6933560582711038439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235886 (n + 1) - ((7 * 2 ^ n : ℤ) - 1)

end

end A165222.P6933560582711038439

namespace A165222

/-- `A235886(n+1)-(7*2^n-1)` -/
def P6933560582711038439.Spec : Prop :=
  ∀ n, P6933560582711038439.a n = A165222 n

end A165222

/-! ## A165222.P2993462613822542483

`A005010(n)+A020737(n)²`
-/

namespace A165222.P2993462613822542483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n + A020737 n ^ 2

end

end A165222.P2993462613822542483

namespace A165222

/-- `A005010(n)+A020737(n)²` -/
def P2993462613822542483.Spec : Prop :=
  ∀ n, P2993462613822542483.a n = A165222 n

end A165222

/-! ## A165222.P730280044928662407

`A165133(n)+A052548(n+1)`
-/

namespace A165222.P730280044928662407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165133 n + A052548 (n + 1)

end

end A165222.P730280044928662407

namespace A165222

/-- `A165133(n)+A052548(n+1)` -/
def P730280044928662407.Spec : Prop :=
  ∀ n, P730280044928662407.a n = A165222 n

end A165222

/-! ## A165222.P11357752044408754286

`A165133(n)+2*A000051(n)`
-/

namespace A165222.P11357752044408754286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165133 n + 2 * A000051 n

end

end A165222.P11357752044408754286

namespace A165222

/-- `A165133(n)+2*A000051(n)` -/
def P11357752044408754286.Spec : Prop :=
  ∀ n, P11357752044408754286.a n = A165222 n

end A165222

/-! ## A165222.P14778581978294681698

`xor(A083705(n), A235886(n+1))`
-/

namespace A165222.P14778581978294681698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083705 n) (A235886 (n + 1))

end

end A165222.P14778581978294681698

namespace A165222

/-- `xor(A083705(n), A235886(n+1))` -/
def P14778581978294681698.Spec : Prop :=
  ∀ n, P14778581978294681698.a n = A165222 n

end A165222

/-! ## A165222.P7255167999987002561

`A020707(n)²+A110287(n)+1`
-/

namespace A165222.P7255167999987002561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n ^ 2 + (A110287 n + 1)

end

end A165222.P7255167999987002561

namespace A165222

/-- `A020707(n)²+A110287(n)+1` -/
def P7255167999987002561.Spec : Prop :=
  ∀ n, P7255167999987002561.a n = A165222 n

end A165222

/-! ## A165222.P388751757433201122

`A005010(n)+A000051(n+2)²`
-/

namespace A165222.P388751757433201122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n + A000051 (n + 2) ^ 2

end

end A165222.P388751757433201122

namespace A165222

/-- `A005010(n)+A000051(n+2)²` -/
def P388751757433201122.Spec : Prop :=
  ∀ n, P388751757433201122.a n = A165222 n

end A165222

/-! ## A165222.P2351264267323071619

`A020737(n)²+A083705(n)-1`
-/

namespace A165222.P2351264267323071619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n ^ 2 + (A083705 n - 1)

end

end A165222.P2351264267323071619

namespace A165222

/-- `A020737(n)²+A083705(n)-1` -/
def P2351264267323071619.Spec : Prop :=
  ∀ n, P2351264267323071619.a n = A165222 n

end A165222

/-! ## A165222.P7165616754208920438

`A020707(n)²+A198275(n)+2`
-/

namespace A165222.P7165616754208920438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n ^ 2 + (A198275 n + 2)

end

end A165222.P7165616754208920438

namespace A165222

/-- `A020707(n)²+A198275(n)+2` -/
def P7165616754208920438.Spec : Prop :=
  ∀ n, P7165616754208920438.a n = A165222 n

end A165222

/-! ## A165222.P11058499046072863881

`A000051(n)+A000079(n)*A175162(n)`
-/

namespace A165222.P11058499046072863881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + A000079 n * A175162 n

end

end A165222.P11058499046072863881

namespace A165222

/-- `A000051(n)+A000079(n)*A175162(n)` -/
def P11058499046072863881.Spec : Prop :=
  ∀ n, P11058499046072863881.a n = A165222 n

end A165222

/-! ## A165222.P4806382113497900283

`A020707(n)+A168596(n)+A020707(n)²`
-/

namespace A165222.P4806382113497900283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + (A168596 n + A020707 n ^ 2)

end

end A165222.P4806382113497900283

namespace A165222

/-- `A020707(n)+A168596(n)+A020707(n)²` -/
def P4806382113497900283.Spec : Prop :=
  ∀ n, P4806382113497900283.a n = A165222 n

end A165222

/-! ## A165222.P17966986097382220060

`A020737(n)²+A168596(n)-A020737(n)`
-/

namespace A165222.P17966986097382220060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n ^ 2 + (A168596 n - A020737 n)

end

end A165222.P17966986097382220060

namespace A165222

/-- `A020737(n)²+A168596(n)-A020737(n)` -/
def P17966986097382220060.Spec : Prop :=
  ∀ n, P17966986097382220060.a n = A165222 n

end A165222

/-! ## A165222.P6996469983431055524

`A000051(n)+A000079(n+1)*A175161(n)`
-/

namespace A165222.P6996469983431055524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + A000079 (n + 1) * A175161 n

end

end A165222.P6996469983431055524

namespace A165222

/-- `A000051(n)+A000079(n+1)*A175161(n)` -/
def P6996469983431055524.Spec : Prop :=
  ∀ n, P6996469983431055524.a n = A165222 n

end A165222

/-! ## A165222.P2237767064557964350

`A036563(n)+A134351(n+1)*A134351(n+1)`
-/

namespace A165222.P2237767064557964350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n + A134351 (n + 1) * A134351 (n + 1)

end

end A165222.P2237767064557964350

namespace A165222

/-- `A036563(n)+A134351(n+1)*A134351(n+1)` -/
def P2237767064557964350.Spec : Prop :=
  ∀ n, P2237767064557964350.a n = A165222 n

end A165222

/-!
# A165223: Products of 2 successive Mersenne primes.

The programs for A165223, there is no canonical definition to state claims against.
-/

/-! ## A165223.P49344896813652706

`A000668(n+1)*A000668(n+2)`
-/

namespace A165223.P49344896813652706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) * A000668 (n + 2)

end

end A165223.P49344896813652706

/-! ## A165223.P10088845526458435781

`A343733(n+2)*A343733(n+3)`
-/

namespace A165223.P10088845526458435781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2) * A343733 (n + 3)

end

end A165223.P10088845526458435781

/-! ## A165223.P16498317326310598797

`lcm(A000668(n+1), A343733(n+3))`
-/

namespace A165223.P16498317326310598797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000668 (n + 1)) (A343733 (n + 3))

end

end A165223.P16498317326310598797

/-! ## A165223.P17171316418693289592

`ratio[A139257(n+1)]*A133049(n+1)`
-/

namespace A165223.P17171316418693289592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139257 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A133049 (n + 1) : ℚ)

end

end A165223.P17171316418693289592

/-! ## A165223.P3573331908826595038

`A000225(A000043(n+1))*A000225(A174265(n+1))`
-/

namespace A165223.P3573331908826595038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000043 (n + 1)).toNat * A000225 (A174265 (n + 1)).toNat

end

end A165223.P3573331908826595038

/-!
# A165224: a(0)=1, a(1)=9, a(n) = 18*a(n-1) - 49*a(n-2) for n > 1.

The programs for A165224, the canonical program `A165224.P11195953275989524571` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165224 has offset 0).

The definition of A165224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-49*a(n-2)` (program `A165224.P11195953275989524571`, by `A165224.P11195953275989524571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165224.P11195953275989524571

`18*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165224

/-- `18*a(n-1)-49*a(n-2)` -/
def P11195953275989524571.Spec : Prop :=
  ∀ n, P11195953275989524571.a n = A165224 n

theorem P11195953275989524571.correct : P11195953275989524571.Spec := by
  intro n
  simp only [A165224]

end A165224

/-! ## A165224.P9955272569171283034

`((9-4*sqrt(2))^n+(9+4*sqrt(2))^n)/2`
-/

namespace A165224.P9955272569171283034
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 - 4 * Real.sqrt (2 : ℝ)) ^ n + (9 + 4 * Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A165224.P9955272569171283034

namespace A165224

/-- `((9-4*sqrt(2))^n+(9+4*sqrt(2))^n)/2` -/
def P9955272569171283034.Spec : Prop :=
  ∀ n, P9955272569171283034.a n = (A165224 n : ℝ)

end A165224

/-! ## A165224.P16367623109698849420

`A084058(2*n)`
-/

namespace A165224.P16367623109698849420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (2 * n)

end

end A165224.P16367623109698849420

namespace A165224

/-- `A084058(2*n)` -/
def P16367623109698849420.Spec : Prop :=
  ∀ n, P16367623109698849420.a n = A165224 n

end A165224

/-! ## A165224.P635996865416497298

`record[A083100(n*and(1, n))]`
-/

namespace A165224.P635996865416497298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165224.P635996865416497298

namespace A165224

/-- `record[A083100(n*and(1, n))]` -/
def P635996865416497298.Spec : Prop :=
  ∀ n, P635996865416497298.a n = A165224 n

end A165224

/-! ## A165224.P15427184374432967680

`record[and((-1)^n, A083100(n))]`
-/

namespace A165224.P15427184374432967680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A083100 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165224.P15427184374432967680

namespace A165224

/-- `record[and((-1)^n, A083100(n))]` -/
def P15427184374432967680.Spec : Prop :=
  ∀ n, P15427184374432967680.a n = A165224 n

end A165224

/-! ## A165224.P13914790119743205594

`2*A084136(2*n)-1`
-/

namespace A165224.P13914790119743205594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084136 (2 * n) - 1

end

end A165224.P13914790119743205594

namespace A165224

/-- `2*A084136(2*n)-1` -/
def P13914790119743205594.Spec : Prop :=
  ∀ n, P13914790119743205594.a n = A165224 n

end A165224

/-! ## A165224.P13177716349083413817

`record[A084058(n)/(-1)^n]`
-/

namespace A165224.P13177716349083413817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084058 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165224.P13177716349083413817

namespace A165224

/-- `record[A084058(n)/(-1)^n]` -/
def P13177716349083413817.Spec : Prop :=
  ∀ n, P13177716349083413817.a n = (A165224 n : ℚ)

end A165224

/-! ## A165224.P6302494325239010782

`A083100(round(sqrt(n²+1))+n-1)`
-/

namespace A165224.P6302494325239010782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + ((n : ℤ) - 1)).toNat

end

end A165224.P6302494325239010782

namespace A165224

/-- `A083100(round(sqrt(n²+1))+n-1)` -/
def P6302494325239010782.Spec : Prop :=
  ∀ n, P6302494325239010782.a n = A165224 n

end A165224

/-! ## A165224.P14047437855458405958

`record[gcd(A035363(n), A083100(n))]`
-/

namespace A165224.P14047437855458405958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A083100 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165224.P14047437855458405958

namespace A165224

/-- `record[gcd(A035363(n), A083100(n))]` -/
def P14047437855458405958.Spec : Prop :=
  ∀ n, (P14047437855458405958.a n : ℤ) = A165224 n

end A165224

/-! ## A165224.P934667062799286316

`record[A084058(A000265(n+1)-1)]`
-/

namespace A165224.P934667062799286316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165224.P934667062799286316

namespace A165224

/-- `record[A084058(A000265(n+1)-1)]` -/
def P934667062799286316.Spec : Prop :=
  ∀ n, P934667062799286316.a n = A165224 n

end A165224

/-!
# A165225: a(0)=1, a(1)=5, a(n) = 10*a(n-1) - 5*a(n-2) for n > 1.

The programs for A165225, the canonical program `A165225.P12482750581613394192` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165225 has offset 0).

The definition of A165225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-5*a(n-2)` (program `A165225.P12482750581613394192`, by `A165225.P12482750581613394192.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165225.P12482750581613394192

`10*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165225

/-- `10*a(n-1)-5*a(n-2)` -/
def P12482750581613394192.Spec : Prop :=
  ∀ n, P12482750581613394192.a n = A165225 n

theorem P12482750581613394192.correct : P12482750581613394192.Spec := by
  intro n
  simp only [A165225]

end A165225

/-! ## A165225.P896030898655073214

`((5-2*sqrt(5))^n+(5+2*sqrt(5))^n)/2`
-/

namespace A165225.P896030898655073214
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 - 2 * Real.sqrt (5 : ℝ)) ^ n + (5 + 2 * Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A165225.P896030898655073214

namespace A165225

/-- `((5-2*sqrt(5))^n+(5+2*sqrt(5))^n)/2` -/
def P896030898655073214.Spec : Prop :=
  ∀ n, P896030898655073214.a n = (A165225 n : ℝ)

end A165225

/-! ## A165225.P207273308646542894

`A190987(n+1)-5*A190987(n)`
-/

namespace A165225.P207273308646542894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190987 (n + 1) - 5 * A190987 n

end

end A165225.P207273308646542894

namespace A165225

/-- `A190987(n+1)-5*A190987(n)` -/
def P207273308646542894.Spec : Prop :=
  ∀ n, P207273308646542894.a n = A165225 n

end A165225

/-! ## A165225.P7464893973271716391

`ogf((1-5x)/(1-10x+5x^2))`
-/

namespace A165225.P7464893973271716391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -10, 5] n

end

end A165225.P7464893973271716391

namespace A165225

/-- `ogf((1-5x)/(1-10x+5x^2))` -/
def P7464893973271716391.Spec : Prop :=
  ∀ n, P7464893973271716391.a n = A165225 n

end A165225

/-! ## A165225.P9247041628441002119

`floor(A189317(n)/4)`
-/

namespace A165225.P9247041628441002119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A189317 n : ℚ) / 4⌋

end

end A165225.P9247041628441002119

namespace A165225

/-- `floor(A189317(n)/4)` -/
def P9247041628441002119.Spec : Prop :=
  ∀ n, P9247041628441002119.a n = A165225 n

end A165225

/-! ## A165225.P11713568620273158725

`∑[∑[A189334(n)]]-n`
-/

namespace A165225.P11713568620273158725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A165225.P11713568620273158725

namespace A165225

/-- `∑[∑[A189334(n)]]-n` -/
def P11713568620273158725.Spec : Prop :=
  ∀ n, P11713568620273158725.a n = A165225 n

end A165225

/-! ## A165225.P568302128361446100

`A005592(n)/2*A020876(n)`
-/

namespace A165225.P568302128361446100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005592 n : ℚ) / 2 * (A020876 n : ℚ)

end

end A165225.P568302128361446100

namespace A165225

/-- `A005592(n)/2*A020876(n)` -/
def P568302128361446100.Spec : Prop :=
  ∀ n, P568302128361446100.a n = (A165225 n : ℚ)

end A165225

/-!
# A165226: Numerator of 1 - A164555(n)/A027642(n).

The programs for A165226, there is no canonical definition to state claims against.
-/

/-! ## A165226.P15961080400853811844

`A168464(∑[n])`
-/

namespace A165226.P15961080400853811844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168464 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165226.P15961080400853811844

/-! ## A165226.P10288432134403747832

`A027642(n)-A164555(n)`
-/

namespace A165226.P10288432134403747832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n - A164555 n

end

end A165226.P10288432134403747832

/-! ## A165226.P4021887389089109247

`A176289(n)-A176327(n)`
-/

namespace A165226.P4021887389089109247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n - A176327 n

end

end A165226.P4021887389089109247

/-! ## A165226.P9006848896476660027

`sqrt(A172282(n))-A164555(n)`
-/

namespace A165226.P9006848896476660027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A172282 n : ℝ) - (A164555 n : ℝ)

end

end A165226.P9006848896476660027

/-! ## A165226.P10363938714607524254

`A162299(∑[n])-A164555(n)`
-/

namespace A165226.P10363938714607524254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162299 (∑ j ∈ Finset.range (n + 1), f1 j) - A164555 n

end

end A165226.P10363938714607524254

/-!
# A165229: a(n) = 12*a(n-1) - 6*a(n-2), with a(0)=1, a(1)=6.

The programs for A165229, the canonical program `A165229.P15000984536221414907` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165229 has offset 0).

The definition of A165229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-6*a(n-2)` (program `A165229.P15000984536221414907`, by `A165229.P15000984536221414907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165229.P15000984536221414907

`12*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165229

/-- `12*a(n-1)-6*a(n-2)` -/
def P15000984536221414907.Spec : Prop :=
  ∀ n, P15000984536221414907.a n = A165229 n

theorem P15000984536221414907.correct : P15000984536221414907.Spec := by
  intro n
  simp only [A165229]

end A165229

/-! ## A165229.P4074451829772607632

`ogf((1-6x)/(1-12x+6x^2))`
-/

namespace A165229.P4074451829772607632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -12, 6] n

end

end A165229.P4074451829772607632

namespace A165229

/-- `ogf((1-6x)/(1-12x+6x^2))` -/
def P4074451829772607632.Spec : Prop :=
  ∀ n, P4074451829772607632.a n = A165229 n

end A165229

/-! ## A165229.P8733491117255340731

`1/2*((6+sqrt(30))^n+(6-sqrt(30))^n)`
-/

namespace A165229.P8733491117255340731
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * ((6 + Real.sqrt (30 : ℝ)) ^ n + (6 - Real.sqrt (30 : ℝ)) ^ n)

end

end A165229.P8733491117255340731

namespace A165229

/-- `1/2*((6+sqrt(30))^n+(6-sqrt(30))^n)` -/
def P8733491117255340731.Spec : Prop :=
  ∀ n, P8733491117255340731.a n = (A165229 n : ℝ)

end A165229

/-!
# A165230: a(0)=1, a(1)=7, a(n)=14*a(n-1)-7*a(n-2) for n>1 .

The programs for A165230, the canonical program `A165230.P14849846701664276254` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165230 has offset 0).

The definition of A165230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-7*a(n-2)` (program `A165230.P14849846701664276254`, by `A165230.P14849846701664276254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165230.P14849846701664276254

`14*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165230

/-- `14*a(n-1)-7*a(n-2)` -/
def P14849846701664276254.Spec : Prop :=
  ∀ n, P14849846701664276254.a n = A165230 n

theorem P14849846701664276254.correct : P14849846701664276254.Spec := by
  intro n
  simp only [A165230]

end A165230

/-! ## A165230.P3644176309607744388

`1/2*((7+sqrt(42))^n+(7-sqrt(42))^n)`
-/

namespace A165230.P3644176309607744388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * ((7 + Real.sqrt (42 : ℝ)) ^ n + (7 - Real.sqrt (42 : ℝ)) ^ n)

end

end A165230.P3644176309607744388

namespace A165230

/-- `1/2*((7+sqrt(42))^n+(7-sqrt(42))^n)` -/
def P3644176309607744388.Spec : Prop :=
  ∀ n, P3644176309607744388.a n = (A165230 n : ℝ)

end A165230

/-! ## A165230.P8558009333022512040

`ogf((1-7x)/(1-14x+7x^2))`
-/

namespace A165230.P8558009333022512040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -14, 7] n

end

end A165230.P8558009333022512040

namespace A165230

/-- `ogf((1-7x)/(1-14x+7x^2))` -/
def P8558009333022512040.Spec : Prop :=
  ∀ n, P8558009333022512040.a n = A165230 n

end A165230

/-!
# A165231: a(0)=1, a(1)=8, a(n)=16*a(n-1)-8*a(n-2) for n>1 .

The programs for A165231, the canonical program `A165231.P7903190653004262624` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165231 has offset 0).

The definition of A165231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-8*a(n-2)` (program `A165231.P7903190653004262624`, by `A165231.P7903190653004262624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165231.P7903190653004262624

`16*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165231

/-- `16*a(n-1)-8*a(n-2)` -/
def P7903190653004262624.Spec : Prop :=
  ∀ n, P7903190653004262624.a n = A165231 n

theorem P7903190653004262624.correct : P7903190653004262624.Spec := by
  intro n
  simp only [A165231]

end A165231

/-! ## A165231.P15831848615408647233

`ogf((1-8x)/(1-16x+8x^2))`
-/

namespace A165231.P15831848615408647233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -16, 8] n

end

end A165231.P15831848615408647233

namespace A165231

/-- `ogf((1-8x)/(1-16x+8x^2))` -/
def P15831848615408647233.Spec : Prop :=
  ∀ n, P15831848615408647233.a n = A165231 n

end A165231

/-! ## A165231.P14409697195038633589

`1/2*((8+2*sqrt(14))^n+(8-2*sqrt(14))^n)`
-/

namespace A165231.P14409697195038633589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * ((8 + 2 * Real.sqrt (14 : ℝ)) ^ n + (8 - 2 * Real.sqrt (14 : ℝ)) ^ n)

end

end A165231.P14409697195038633589

namespace A165231

/-- `1/2*((8+2*sqrt(14))^n+(8-2*sqrt(14))^n)` -/
def P14409697195038633589.Spec : Prop :=
  ∀ n, P14409697195038633589.a n = (A165231 n : ℝ)

end A165231

/-!
# A165232: a(0)=1, a(1)=9, a(n) = 18*a(n-1) - 9*a(n-2) for n>1.

The programs for A165232, the canonical program `A165232.P18417173957680146604` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165232 has offset 0).

The definition of A165232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-9*a(n-2)` (program `A165232.P18417173957680146604`, by `A165232.P18417173957680146604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165232.P18417173957680146604

`18*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165232

/-- `18*a(n-1)-9*a(n-2)` -/
def P18417173957680146604.Spec : Prop :=
  ∀ n, P18417173957680146604.a n = A165232 n

theorem P18417173957680146604.correct : P18417173957680146604.Spec := by
  intro n
  simp only [A165232]

end A165232

/-! ## A165232.P16050849902259250225

`ogf((1-9x)/(1-18x+9x^2))`
-/

namespace A165232.P16050849902259250225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -18, 9] n

end

end A165232.P16050849902259250225

namespace A165232

/-- `ogf((1-9x)/(1-18x+9x^2))` -/
def P16050849902259250225.Spec : Prop :=
  ∀ n, P16050849902259250225.a n = A165232 n

end A165232

/-! ## A165232.P7333153060689175649

`3^n*A001541(n)`
-/

namespace A165232.P7333153060689175649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001541 n

end

end A165232.P7333153060689175649

namespace A165232

/-- `3^n*A001541(n)` -/
def P7333153060689175649.Spec : Prop :=
  ∀ n, P7333153060689175649.a n = A165232 n

end A165232

/-! ## A165232.P16217786995689732569

`3^n*record[A123335(n)]`
-/

namespace A165232.P16217786995689732569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165232.P16217786995689732569

namespace A165232

/-- `3^n*record[A123335(n)]` -/
def P16217786995689732569.Spec : Prop :=
  ∀ n, P16217786995689732569.a n = A165232 n

end A165232

/-! ## A165232.P9978481220072630195

`(A099938(n+1)-1)*3^n`
-/

namespace A165232.P9978481220072630195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099938 (n + 1) - 1) * (3 ^ n : ℤ)

end

end A165232.P9978481220072630195

namespace A165232

/-- `(A099938(n+1)-1)*3^n` -/
def P9978481220072630195.Spec : Prop :=
  ∀ n, P9978481220072630195.a n = A165232 n

end A165232

/-! ## A165232.P3356460377869742945

`3^n*A078057(comp[2*(n+1)])`
-/

namespace A165232.P3356460377869742945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A078057 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A165232.P3356460377869742945

namespace A165232

/-- `3^n*A078057(comp[2*(n+1)])` -/
def P3356460377869742945.Spec : Prop :=
  ∀ n, P3356460377869742945.a n = A165232 n

end A165232

/-! ## A165232.P12582066724450429980

`record[A001333(n)*A254006(n)]`
-/

namespace A165232.P12582066724450429980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A254006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165232.P12582066724450429980

namespace A165232

/-- `record[A001333(n)*A254006(n)]` -/
def P12582066724450429980.Spec : Prop :=
  ∀ n, P12582066724450429980.a n = A165232 n

end A165232

/-! ## A165232.P7853033510580490215

`A000244(n)*A001333(2*n)`
-/

namespace A165232.P7853033510580490215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A001333 (2 * n)

end

end A165232.P7853033510580490215

namespace A165232

/-- `A000244(n)*A001333(2*n)` -/
def P7853033510580490215.Spec : Prop :=
  ∀ n, P7853033510580490215.a n = A165232 n

end A165232

/-! ## A165232.P15989666254023543548

`A001541(n)*A038754(2*n)`
-/

namespace A165232.P15989666254023543548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n * A038754 (2 * n)

end

end A165232.P15989666254023543548

namespace A165232

/-- `A001541(n)*A038754(2*n)` -/
def P15989666254023543548.Spec : Prop :=
  ∀ n, P15989666254023543548.a n = A165232 n

end A165232

/-! ## A165232.P13382372614804689940

`A000244(n)*A079496(2*n)`
-/

namespace A165232.P13382372614804689940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A079496 (2 * n)

end

end A165232.P13382372614804689940

namespace A165232

/-- `A000244(n)*A079496(2*n)` -/
def P13382372614804689940.Spec : Prop :=
  ∀ n, P13382372614804689940.a n = A165232 n

end A165232

/-!
# A165233: Signed denominators of terms in series expansion of cos(x)+sin(x).

The programs for A165233, the canonical program `A165233.P2827086617515235092` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165233 has offset 0).

The definition of A165233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165233.P1005818006331184000

`(-1)^floor(n/2)*n!`
-/

namespace A165233.P1005818006331184000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (Nat.factorial n : ℚ)

end

end A165233.P1005818006331184000

namespace A165233

/-- `(-1)^floor(n/2)*n!` -/
def P1005818006331184000.Spec : Prop :=
  ∀ n, P1005818006331184000.a n = (A165233 n : ℚ)

end A165233

/-! ## A165233.P2827086617515235092

`A057077(n)*A000142(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165233

/-- `A057077(n)*A000142(n)` -/
def P2827086617515235092.Spec : Prop :=
  ∀ n, P2827086617515235092.a n = A165233 n

theorem P2827086617515235092.correct : P2827086617515235092.Spec := by
  intro n
  simp only [A165233]

end A165233

/-! ## A165233.P569612498892228558

`n!/(1-and(2, n))`
-/

namespace A165233.P569612498892228558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A165233.P569612498892228558

namespace A165233

/-- `n!/(1-and(2, n))` -/
def P569612498892228558.Spec : Prop :=
  ∀ n, P569612498892228558.a n = (A165233 n : ℚ)

end A165233

/-! ## A165233.P7477186167481245184

`∏[xor(1, -a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A165233.P7477186167481245184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.xor 1 (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165233.P7477186167481245184

namespace A165233

/-- `∏[xor(1, -a(n-1))]` -/
def P7477186167481245184.Spec : Prop :=
  ∀ n, P7477186167481245184.a n = A165233 n

end A165233

/-! ## A165233.P13479501336410679225

`n!/(or(2, n)-(n+1))`
-/

namespace A165233.P13479501336410679225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((Nat.lor 2 n : ℤ) - (n + 1 : ℤ) : ℚ)

end

end A165233.P13479501336410679225

namespace A165233

/-- `n!/(or(2, n)-(n+1))` -/
def P13479501336410679225.Spec : Prop :=
  ∀ n, P13479501336410679225.a n = (A165233 n : ℚ)

end A165233

/-! ## A165233.P672679730701670772

`(n-n²)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A165233.P672679730701670772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - (n ^ 2 : ℤ)) * a (n - 2)

end

end A165233.P672679730701670772

namespace A165233

/-- `(n-n²)*a(n-2)` -/
def P672679730701670772.Spec : Prop :=
  ∀ n, P672679730701670772.a n = A165233 n

end A165233

/-! ## A165233.P6149785593406700571

`n!*∏[-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A165233.P6149785593406700571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A165233.P6149785593406700571

namespace A165233

/-- `n!*∏[-a(n-1)]` -/
def P6149785593406700571.Spec : Prop :=
  ∀ n, P6149785593406700571.a n = A165233 n

end A165233

/-! ## A165233.P4337005099916920329

`n!/∏[-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A165233.P4337005099916920329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A165233.P4337005099916920329

namespace A165233

/-- `n!/∏[-a(n-1)]` -/
def P4337005099916920329.Spec : Prop :=
  ∀ n, P4337005099916920329.a n = (A165233 n : ℚ)

end A165233

/-! ## A165233.P3259286441428456691

`(1-n)*n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A165233.P3259286441428456691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - (n : ℤ)) * ((n : ℤ) * a (n - 2))

end

end A165233.P3259286441428456691

namespace A165233

/-- `(1-n)*n*a(n-2)` -/
def P3259286441428456691.Spec : Prop :=
  ∀ n, P3259286441428456691.a n = A165233 n

end A165233

/-! ## A165233.P4352380933358789772

`A140956(∑[n]+1)`
-/

namespace A165233.P4352380933358789772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140956 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A165233.P4352380933358789772

namespace A165233

/-- `A140956(∑[n]+1)` -/
def P4352380933358789772.Spec : Prop :=
  ∀ n, P4352380933358789772.a n = A165233 n

end A165233

/-!
# A165235: Least prime p such that the n+1 numbers p + 2^k - 2, k=1..n+1, are all prime.

The programs for A165235, there is no canonical definition to state claims against.
-/

/-! ## A165235.P12221480141095231648

`A110096(n+2)+2`
-/

namespace A165235.P12221480141095231648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110096 (n + 2) + 2

end

end A165235.P12221480141095231648

/-! ## A165235.P8530841958386506255

`A354585(n+2)%Δ[A354585(n+2)]`
-/

namespace A165235.P8530841958386506255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354585 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354585 (n + 2)) (f1 (n + 1) - f1 n)

end

end A165235.P8530841958386506255

/-! ## A165235.P7897028294027660041

`A354585(A000720(3*n+4)*A124560(n))`
-/

namespace A165235.P7897028294027660041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354585 (A000720 (3 * n + 4) * A124560 n).toNat

end

end A165235.P7897028294027660041

/-!
# A165239: Integers of the form "partial sum of the first k nonprimes divided by the k-th nonprime.".

The programs for A165239, there is no canonical definition to state claims against.
-/

/-! ## A165239.P657598773076126535

`A339340(n+1)+A285995(n)`
-/

namespace A165239.P657598773076126535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339340 (n + 1) + A285995 n

end

end A165239.P657598773076126535

/-!
# A165240: Integers of the form (a+b+c+..+z)/z where (a,b,c,..,z) is a list of 2 or more distinct consecutive nonprimes.

The programs for A165240, there is no canonical definition to state claims against.
-/

/-! ## A165240.P12649795655692441917

`comp[Δ[or(32, n!)]]+1`
-/

namespace A165240.P12649795655692441917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 32 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A165240.P12649795655692441917

/-! ## A165240.P2198088911208572725

`comp[floor(n^sqrt(Δ[n²]))]+1`
-/

namespace A165240.P2198088911208572725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (Real.sqrt ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A165240.P2198088911208572725

/-! ## A165240.P13686058926739692888

`comp[(C(n, 4)+1)*(n-2)+1]`
-/

namespace A165240.P13686058926739692888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 + 1 : ℤ) * ((n : ℤ) - 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165240.P13686058926739692888

/-! ## A165240.P1664554491842256574

`comp[∪[2^n+3^n², 3^n-2^n]]`
-/

namespace A165240.P1664554491842256574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3 ^ n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (2 ^ n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A165240.P1664554491842256574

/-! ## A165240.P12219620273990606848

`comp[lcm(a(n-1), comp[3*n])]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2, a(4)=2, a(5)=5, a(6)=19, a(7)=5`
-/

namespace A165240.P12219620273990606848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 2, 2, 5, 19, 5] fun n f1 =>
  Nat.lcm (f1 (n - 1)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A165240.P12219620273990606848

/-! ## A165240.P14929327682762183636

`comp[abs(ceil((-2)^(n-2)))+3*a(n-1)]` with `a(0)=2, a(1)=0`
-/

namespace A165240.P14929327682762183636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  |⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉| + 3 * f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165240.P14929327682762183636

/-! ## A165240.P15709927704113281807

`comp[ceil(2^(n-1)+3^(n-1))-(xor(1, 2^n)-1)]`
-/

namespace A165240.P15709927704113281807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - ((Nat.xor 1 (2 ^ n) : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165240.P15709927704113281807

/-! ## A165240.P12918637240596710799

`comp[A062122(n)]`
-/

namespace A165240.P12918637240596710799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062122 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165240.P12918637240596710799

/-! ## A165240.P17004599312588951589

`comp[A349389(2^n)]`
-/

namespace A165240.P17004599312588951589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349389 (2 ^ n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165240.P17004599312588951589

/-! ## A165240.P7482891512061196700

`comp[abs(∑[A157784(n)])]`
-/

namespace A165240.P7482891512061196700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157784 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165240.P7482891512061196700

/-!
# A165241: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1,1,0,0,0,0,0,0,0,...] DELTA [1,0,1,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A165241, there is no canonical definition to state claims against.
-/

/-! ## A165241.P1916801337395070529

`A194974(A269952(n+1)+A269952(n))`
-/

namespace A165241.P1916801337395070529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194974 (A269952 (n + 1) + A269952 n).toNat

end

end A165241.P1916801337395070529

/-!
# A165242: The larger member of the n-th twin prime pair, modulo 8.

The programs for A165242, the canonical program `A165242.P4991831258923927794` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165242 has offset 1).

The definition of A165242 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165242.P4991831258923927794

`A010877(A006512(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A165242

/-- `A010877(A006512(n+1))` -/
def P4991831258923927794.Spec : Prop :=
  ∀ n, P4991831258923927794.a n = A165242 (n + 1)

theorem P4991831258923927794.correct : P4991831258923927794.Spec := by
  intro n
  simp only [A165242, Nat.add_sub_cancel]

end A165242

/-! ## A165242.P8302084475915952271

`A158619(n+1)%8`
-/

namespace A165242.P8302084475915952271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158619 (n + 1)) 8

end

end A165242.P8302084475915952271

namespace A165242

/-- `A158619(n+1)%8` -/
def P8302084475915952271.Spec : Prop :=
  ∀ n, P8302084475915952271.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P11963686602330322980

`(A014574(n+1)+1)%8`
-/

namespace A165242.P11963686602330322980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014574 (n + 1) + 1) 8

end

end A165242.P11963686602330322980

namespace A165242

/-- `(A014574(n+1)+1)%8` -/
def P11963686602330322980.Spec : Prop :=
  ∀ n, P11963686602330322980.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P4942358806580069931

`and(7, 2*A040040(n+1)+1)`
-/

namespace A165242.P4942358806580069931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (2 * A040040 (n + 1) + 1)

end

end A165242.P4942358806580069931

namespace A165242

/-- `and(7, 2*A040040(n+1)+1)` -/
def P4942358806580069931.Spec : Prop :=
  ∀ n, P4942358806580069931.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P14346052378532535773

`and(7, A006512(A000027(n+1)))`
-/

namespace A165242.P14346052378532535773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A006512 (A000027 (n + 1)).toNat)

end

end A165242.P14346052378532535773

namespace A165242

/-- `and(7, A006512(A000027(n+1)))` -/
def P14346052378532535773.Spec : Prop :=
  ∀ n, P14346052378532535773.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P3465180374050998227

`A067829(n+2)%8`
-/

namespace A165242.P3465180374050998227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067829 (n + 2)) 8

end

end A165242.P3465180374050998227

namespace A165242

/-- `A067829(n+2)%8` -/
def P3465180374050998227.Spec : Prop :=
  ∀ n, P3465180374050998227.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P9306676074978463137

`A077800(2*(n+1))%8`
-/

namespace A165242.P9306676074978463137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077800 (2 * (n + 1))) 8

end

end A165242.P9306676074978463137

namespace A165242

/-- `A077800(2*(n+1))%8` -/
def P9306676074978463137.Spec : Prop :=
  ∀ n, P9306676074978463137.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P10079485516432968968

`p?[A139690(n+1)]%8`
-/

namespace A165242.P10079485516432968968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 8

end

end A165242.P10079485516432968968

namespace A165242

/-- `p?[A139690(n+1)]%8` -/
def P10079485516432968968.Spec : Prop :=
  ∀ n, P10079485516432968968.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P11859408978087443473

`p?[A000040(n+1)+2]%8`
-/

namespace A165242.P11859408978087443473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 8

end

end A165242.P11859408978087443473

namespace A165242

/-- `p?[A000040(n+1)+2]%8` -/
def P11859408978087443473.Spec : Prop :=
  ∀ n, P11859408978087443473.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P6799340410706927604

`and(7, p?[A040976(n+1)]+2)`
-/

namespace A165242.P6799340410706927604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2)

end

end A165242.P6799340410706927604

namespace A165242

/-- `and(7, p?[A040976(n+1)]+2)` -/
def P6799340410706927604.Spec : Prop :=
  ∀ n, P6799340410706927604.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P11636318961506164342

`and(7, p?[A000040(n+2)+2])`
-/

namespace A165242.P11636318961506164342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A165242.P11636318961506164342

namespace A165242

/-- `and(7, p?[A000040(n+2)+2])` -/
def P11636318961506164342.Spec : Prop :=
  ∀ n, P11636318961506164342.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P14326006960162038615

`A039706(A107770(n+1))`
-/

namespace A165242.P14326006960162038615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039706 (A107770 (n + 1)).toNat

end

end A165242.P14326006960162038615

namespace A165242

/-- `A039706(A107770(n+1))` -/
def P14326006960162038615.Spec : Prop :=
  ∀ n, P14326006960162038615.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P16686999014558407223

`record[A006530(A000040(n+2)+2)]%8`
-/

namespace A165242.P16686999014558407223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 8

end

end A165242.P16686999014558407223

namespace A165242

/-- `record[A006530(A000040(n+2)+2)]%8` -/
def P16686999014558407223.Spec : Prop :=
  ∀ n, P16686999014558407223.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P6710927157559086710

`record[A020639(A000040(n+2)+2)]%8`
-/

namespace A165242.P6710927157559086710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 8

end

end A165242.P6710927157559086710

namespace A165242

/-- `record[A020639(A000040(n+2)+2)]%8` -/
def P6710927157559086710.Spec : Prop :=
  ∀ n, P6710927157559086710.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P16214005664033948977

`A094743(n+2)%8`
-/

namespace A165242.P16214005664033948977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094743 (n + 2)) 8

end

end A165242.P16214005664033948977

namespace A165242

/-- `A094743(n+2)%8` -/
def P16214005664033948977.Spec : Prop :=
  ∀ n, P16214005664033948977.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P14138019509433213947

`A010877(A067829(n+2))`
-/

namespace A165242.P14138019509433213947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A067829 (n + 2)).toNat

end

end A165242.P14138019509433213947

namespace A165242

/-- `A010877(A067829(n+2))` -/
def P14138019509433213947.Spec : Prop :=
  ∀ n, P14138019509433213947.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P6229535989274276841

`A010877(A094743(n+2))`
-/

namespace A165242.P6229535989274276841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A094743 (n + 2)).toNat

end

end A165242.P6229535989274276841

namespace A165242

/-- `A010877(A094743(n+2))` -/
def P6229535989274276841.Spec : Prop :=
  ∀ n, P6229535989274276841.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P4192855269277709071

`A010877(A001359(n+1)+2)`
-/

namespace A165242.P4192855269277709071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A001359 (n + 1) + 2).toNat

end

end A165242.P4192855269277709071

namespace A165242

/-- `A010877(A001359(n+1)+2)` -/
def P4192855269277709071.Spec : Prop :=
  ∀ n, P4192855269277709071.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P14244791046463604204

`record[A153979(n+1)]%8`
-/

namespace A165242.P14244791046463604204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 8

end

end A165242.P14244791046463604204

namespace A165242

/-- `record[A153979(n+1)]%8` -/
def P14244791046463604204.Spec : Prop :=
  ∀ n, P14244791046463604204.a n = A165242 (n + 1)

end A165242

/-! ## A165242.P13549022135087294265

`A010887(A014574(n+1))`
-/

namespace A165242.P13549022135087294265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010887 (A014574 (n + 1)).toNat

end

end A165242.P13549022135087294265

namespace A165242

/-- `A010887(A014574(n+1))` -/
def P13549022135087294265.Spec : Prop :=
  ∀ n, P13549022135087294265.a n = A165242 (n + 1)

end A165242

/-!
# A165243: Primes obtained from other primes by pre-concatenating with 2.

The programs for A165243, there is no canonical definition to state claims against.
-/

/-! ## A165243.P544818811227428956

`p?[A037276(A074845(n+1))]`
-/

namespace A165243.P544818811227428956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A074845 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165243.P544818811227428956

/-! ## A165243.P14498572140831947299

`p?[A037276(A100484(n+1))]`
-/

namespace A165243.P14498572140831947299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165243.P14498572140831947299

/-! ## A165243.P8066674575901394236

`p?[A037276(2*A065091(n+1))]`
-/

namespace A165243.P8066674575901394236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (2 * A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165243.P8066674575901394236

/-! ## A165243.P7215534575712789705

`p?[A049201(A001747(n+1))]`
-/

namespace A165243.P7215534575712789705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049201 (A001747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165243.P7215534575712789705

/-! ## A165243.P2355200508829302854

`p?[A080695(A073582(n+1))]`
-/

namespace A165243.P2355200508829302854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (A073582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165243.P2355200508829302854

/-! ## A165243.P5658532293465669893

`p?[A080670(A074845(n+2))]`
-/

namespace A165243.P5658532293465669893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (A074845 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165243.P5658532293465669893

/-! ## A165243.P10049734233799501593

`p?[A080670(A001749(n+1)/2)]`
-/

namespace A165243.P10049734233799501593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165243.P10049734233799501593

/-! ## A165243.P5069377536894934421

`p?[A080695(A001749(n+1)/2)]`
-/

namespace A165243.P5069377536894934421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165243.P5069377536894934421

/-!
# A165245: Nonprimes with all digits distinct, all digits prime, and a nonprime number of digits.

The programs for A165245, there is no canonical definition to state claims against.
-/

/-! ## A165245.P1334042609320369319

`∩[A039418(n+1), A163560(n+1)]`
-/

namespace A165245.P1334042609320369319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165245.P1334042609320369319

/-! ## A165245.P795391318849402012

`∩[A046034(n+1), A163560(n+1)]`
-/

namespace A165245.P795391318849402012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165245.P795391318849402012

/-! ## A165245.P6647307002591011011

`∩[A046034(n+1), A163651(n+1)]`
-/

namespace A165245.P6647307002591011011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165245.P6647307002591011011

/-! ## A165245.P5483528209462113835

`∩[A061371(n+1), A161404(n+1)]`
-/

namespace A165245.P5483528209462113835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165245.P5483528209462113835

/-! ## A165245.P15144715645010950782

`∩[A061371(n+1), A163560(n+1)]`
-/

namespace A165245.P15144715645010950782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165245.P15144715645010950782

/-!
# A165246: a(n) = (10^n + 53)/9.

The programs for A165246, the canonical program `A165246.P2139718898689888236` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165246 has offset 1).

The definition of A165246 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^(n+1)+53)/9` (program `A165246.P14812623854940415375`, by `A165246.P14812623854940415375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165246.P2139718898689888236

`11*a(n-1)-10*a(n-2)` with `a(0)=7, a(1)=17`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165246

/-- `11*a(n-1)-10*a(n-2)` -/
def P2139718898689888236.Spec : Prop :=
  ∀ n, P2139718898689888236.a n = A165246 (n + 1)

theorem P2139718898689888236.correct : P2139718898689888236.Spec := by
  intro n
  simp only [A165246, Nat.add_sub_cancel]

end A165246

/-! ## A165246.P14812623854940415375

`(10^(n+1)+53)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165246.P14812623854940415375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) + 53 : ℚ) / 9

end

end A165246.P14812623854940415375

namespace A165246

/-- `(10^(n+1)+53)/9` -/
def P14812623854940415375.Spec : Prop :=
  ∀ n, P14812623854940415375.a n = (A165246 (n + 1) : ℚ)

theorem P14812623854940415375.correct : P14812623854940415375.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165246, Nat.add_sub_cancel, A165246.P14812623854940415375.a, A165246.P2139718898689888236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165246, Nat.add_sub_cancel, A165246.P14812623854940415375.a, A165246.P2139718898689888236.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165246

/-! ## A165246.P17527264839793354313

`∑[10*a(n-1)]` with `a(0)=7, a(1)=10`
-/

namespace A165246.P17527264839793354313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 10] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165246.P17527264839793354313

namespace A165246

/-- `∑[10*a(n-1)]` -/
def P17527264839793354313.Spec : Prop :=
  ∀ n, (P17527264839793354313.a n : ℤ) = A165246 (n + 1)

end A165246

/-! ## A165246.P11808794099442214200

`abs(a(n-1)+10^n)` with `a(0)=7`
-/

namespace A165246.P11808794099442214200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 10 ^ n

end

end A165246.P11808794099442214200

namespace A165246

/-- `abs(a(n-1)+10^n)` -/
def P11808794099442214200.Spec : Prop :=
  ∀ n, (P11808794099442214200.a n : ℤ) = A165246 (n + 1)

end A165246

/-! ## A165246.P4570517348183445744

`floor(a(n-1)+10^n)` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A165246.P4570517348183445744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 10 ^ n

end

end A165246.P4570517348183445744

namespace A165246

/-- `floor(a(n-1)+10^n)` -/
def P4570517348183445744.Spec : Prop :=
  ∀ n, (P4570517348183445744.a n : ℤ) = A165246 (n + 1)

end A165246

/-! ## A165246.P5298409554631204111

`ceil(a(n-1)+10^n)` with `a(0)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A165246.P5298409554631204111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 10 ^ n

end

end A165246.P5298409554631204111

namespace A165246

/-- `ceil(a(n-1)+10^n)` -/
def P5298409554631204111.Spec : Prop :=
  ∀ n, (P5298409554631204111.a n : ℤ) = A165246 (n + 1)

end A165246

/-! ## A165246.P14142834822828197324

`round(a(n-1)+10^n)` with `a(0)=7`

`round` is left out, it is the identity on integers.
-/

namespace A165246.P14142834822828197324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 10 ^ n

end

end A165246.P14142834822828197324

namespace A165246

/-- `round(a(n-1)+10^n)` -/
def P14142834822828197324.Spec : Prop :=
  ∀ n, (P14142834822828197324.a n : ℤ) = A165246 (n + 1)

end A165246

/-! ## A165246.P14551897993126848496

`∑[10^(n%a(n-1))]` with `a(0)=7`
-/

namespace A165246.P14551897993126848496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  10 ^ (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165246.P14551897993126848496

namespace A165246

/-- `∑[10^(n%a(n-1))]` -/
def P14551897993126848496.Spec : Prop :=
  ∀ n, (P14551897993126848496.a n : ℤ) = A165246 (n + 1)

end A165246

/-! ## A165246.P2586197593652585988

`∑[gcd(10, a(n-1))^n]` with `a(0)=7, a(1)=10`
-/

namespace A165246.P2586197593652585988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 10] fun n f1 =>
  Nat.gcd 10 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165246.P2586197593652585988

namespace A165246

/-- `∑[gcd(10, a(n-1))^n]` -/
def P2586197593652585988.Spec : Prop :=
  ∀ n, (P2586197593652585988.a n : ℤ) = A165246 (n + 1)

end A165246

/-! ## A165246.P13852991846702777649

`A105279(n)+7`
-/

namespace A165246.P13852991846702777649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 n + 7

end

end A165246.P13852991846702777649

namespace A165246

/-- `A105279(n)+7` -/
def P13852991846702777649.Spec : Prop :=
  ∀ n, P13852991846702777649.a n = A165246 (n + 1)

end A165246

/-! ## A165246.P1650566697571431017

`A034054(∑[n]+1)`
-/

namespace A165246.P1650566697571431017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A165246.P1650566697571431017

namespace A165246

/-- `A034054(∑[n]+1)` -/
def P1650566697571431017.Spec : Prop :=
  ∀ n, P1650566697571431017.a n = A165246 (n + 1)

end A165246

/-! ## A165246.P18315342158564043167

`record[A287468(n)+6]`
-/

namespace A165246.P18315342158564043167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165246.P18315342158564043167

namespace A165246

/-- `record[A287468(n)+6]` -/
def P18315342158564043167.Spec : Prop :=
  ∀ n, P18315342158564043167.a n = A165246 (n + 1)

end A165246

/-! ## A165246.P2092199783415524910

`record[A290420(n)+6]`
-/

namespace A165246.P2092199783415524910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290420 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165246.P2092199783415524910

namespace A165246

/-- `record[A290420(n)+6]` -/
def P2092199783415524910.Spec : Prop :=
  ∀ n, P2092199783415524910.a n = A165246 (n + 1)

end A165246

/-! ## A165246.P4713263874789568008

`record[A290671(n)+6]`
-/

namespace A165246.P4713263874789568008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290671 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165246.P4713263874789568008

namespace A165246

/-- `record[A290671(n)+6]` -/
def P4713263874789568008.Spec : Prop :=
  ∀ n, P4713263874789568008.a n = A165246 (n + 1)

end A165246

/-! ## A165246.P2537506977641923693

`record[A290676(n)+6]`
-/

namespace A165246.P2537506977641923693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290676 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165246.P2537506977641923693

namespace A165246

/-- `record[A290676(n)+6]` -/
def P2537506977641923693.Spec : Prop :=
  ∀ n, P2537506977641923693.a n = A165246 (n + 1)

end A165246

/-! ## A165246.P14384496606058941065

`A173737(n+1)+1`
-/

namespace A165246.P14384496606058941065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173737 (n + 1) + 1

end

end A165246.P14384496606058941065

namespace A165246

/-- `A173737(n+1)+1` -/
def P14384496606058941065.Spec : Prop :=
  ∀ n, P14384496606058941065.a n = A165246 (n + 1)

end A165246

/-! ## A165246.P14406227627921627029

`A173734(n+1)-1`
-/

namespace A165246.P14406227627921627029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173734 (n + 1) - 1

end

end A165246.P14406227627921627029

namespace A165246

/-- `A173734(n+1)-1` -/
def P14406227627921627029.Spec : Prop :=
  ∀ n, P14406227627921627029.a n = A165246 (n + 1)

end A165246

/-! ## A165246.P10842295343740328365

`A173736(n+1)+2`
-/

namespace A165246.P10842295343740328365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173736 (n + 1) + 2

end

end A165246.P10842295343740328365

namespace A165246

/-- `A173736(n+1)+2` -/
def P10842295343740328365.Spec : Prop :=
  ∀ n, P10842295343740328365.a n = A165246 (n + 1)

end A165246

/-! ## A165246.P6902469334649147062

`A165247(n+1)-2`
-/

namespace A165246.P6902469334649147062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165247 (n + 1) - 2

end

end A165246.P6902469334649147062

namespace A165246

/-- `A165247(n+1)-2` -/
def P6902469334649147062.Spec : Prop :=
  ∀ n, P6902469334649147062.a n = A165246 (n + 1)

end A165246

/-! ## A165246.P17666482261877696211

`A173735(n+1)+3`
-/

namespace A165246.P17666482261877696211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 (n + 1) + 3

end

end A165246.P17666482261877696211

namespace A165246

/-- `A173735(n+1)+3` -/
def P17666482261877696211.Spec : Prop :=
  ∀ n, P17666482261877696211.a n = A165246 (n + 1)

end A165246

/-!
# A165247: a(n) = (10^n + 71)/9.

The programs for A165247, the canonical program `A165247.P3222518938327077667` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165247 has offset 1).

The definition of A165247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^(n+1)+71)/9` (program `A165247.P10593877533458788715`, by `A165247.P10593877533458788715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165247.P3222518938327077667

`11*a(n-1)-10*a(n-2)` with `a(0)=9, a(1)=19`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165247

/-- `11*a(n-1)-10*a(n-2)` -/
def P3222518938327077667.Spec : Prop :=
  ∀ n, P3222518938327077667.a n = A165247 (n + 1)

theorem P3222518938327077667.correct : P3222518938327077667.Spec := by
  intro n
  simp only [A165247, Nat.add_sub_cancel]

end A165247

/-! ## A165247.P10593877533458788715

`(10^(n+1)+71)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165247.P10593877533458788715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) + 71 : ℚ) / 9

end

end A165247.P10593877533458788715

namespace A165247

/-- `(10^(n+1)+71)/9` -/
def P10593877533458788715.Spec : Prop :=
  ∀ n, P10593877533458788715.a n = (A165247 (n + 1) : ℚ)

theorem P10593877533458788715.correct : P10593877533458788715.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165247, Nat.add_sub_cancel, A165247.P10593877533458788715.a, A165247.P3222518938327077667.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165247, Nat.add_sub_cancel, A165247.P10593877533458788715.a, A165247.P3222518938327077667.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165247

/-! ## A165247.P12009515293555668427

`∑[10*a(n-1)]` with `a(0)=9, a(1)=10`
-/

namespace A165247.P12009515293555668427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 10] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165247.P12009515293555668427

namespace A165247

/-- `∑[10*a(n-1)]` -/
def P12009515293555668427.Spec : Prop :=
  ∀ n, (P12009515293555668427.a n : ℤ) = A165247 (n + 1)

end A165247

/-! ## A165247.P2596849256538806001

`abs(a(n-1)+10^n)` with `a(0)=9`
-/

namespace A165247.P2596849256538806001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 10 ^ n

end

end A165247.P2596849256538806001

namespace A165247

/-- `abs(a(n-1)+10^n)` -/
def P2596849256538806001.Spec : Prop :=
  ∀ n, (P2596849256538806001.a n : ℤ) = A165247 (n + 1)

end A165247

/-! ## A165247.P3106818782001956920

`floor(a(n-1)+10^n)` with `a(0)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A165247.P3106818782001956920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 10 ^ n

end

end A165247.P3106818782001956920

namespace A165247

/-- `floor(a(n-1)+10^n)` -/
def P3106818782001956920.Spec : Prop :=
  ∀ n, (P3106818782001956920.a n : ℤ) = A165247 (n + 1)

end A165247

/-! ## A165247.P7352870536618328013

`ceil(a(n-1)+10^n)` with `a(0)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A165247.P7352870536618328013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 10 ^ n

end

end A165247.P7352870536618328013

namespace A165247

/-- `ceil(a(n-1)+10^n)` -/
def P7352870536618328013.Spec : Prop :=
  ∀ n, (P7352870536618328013.a n : ℤ) = A165247 (n + 1)

end A165247

/-! ## A165247.P14265231329857100569

`round(a(n-1)+10^n)` with `a(0)=9`

`round` is left out, it is the identity on integers.
-/

namespace A165247.P14265231329857100569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 10 ^ n

end

end A165247.P14265231329857100569

namespace A165247

/-- `round(a(n-1)+10^n)` -/
def P14265231329857100569.Spec : Prop :=
  ∀ n, (P14265231329857100569.a n : ℤ) = A165247 (n + 1)

end A165247

/-! ## A165247.P12499643120840211016

`∑[10^(n%a(n-1))]` with `a(0)=9`
-/

namespace A165247.P12499643120840211016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  10 ^ (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165247.P12499643120840211016

namespace A165247

/-- `∑[10^(n%a(n-1))]` -/
def P12499643120840211016.Spec : Prop :=
  ∀ n, (P12499643120840211016.a n : ℤ) = A165247 (n + 1)

end A165247

/-! ## A165247.P2758592679822835548

`∑[gcd(10, a(n-1))^n]` with `a(0)=9, a(1)=10`
-/

namespace A165247.P2758592679822835548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 10] fun n f1 =>
  Nat.gcd 10 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165247.P2758592679822835548

namespace A165247

/-- `∑[gcd(10, a(n-1))^n]` -/
def P2758592679822835548.Spec : Prop :=
  ∀ n, (P2758592679822835548.a n : ℤ) = A165247 (n + 1)

end A165247

/-! ## A165247.P15911353220414488852

`A105279(n)+9`
-/

namespace A165247.P15911353220414488852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 n + 9

end

end A165247.P15911353220414488852

namespace A165247

/-- `A105279(n)+9` -/
def P15911353220414488852.Spec : Prop :=
  ∀ n, P15911353220414488852.a n = A165247 (n + 1)

end A165247

/-! ## A165247.P8078941601220413178

`A173734(n+1)+1`
-/

namespace A165247.P8078941601220413178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173734 (n + 1) + 1

end

end A165247.P8078941601220413178

namespace A165247

/-- `A173734(n+1)+1` -/
def P8078941601220413178.Spec : Prop :=
  ∀ n, P8078941601220413178.a n = A165247 (n + 1)

end A165247

/-! ## A165247.P2086588772059468834

`A165246(n+1)+2`
-/

namespace A165247.P2086588772059468834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165246 (n + 1) + 2

end

end A165247.P2086588772059468834

namespace A165247

/-- `A165246(n+1)+2` -/
def P2086588772059468834.Spec : Prop :=
  ∀ n, P2086588772059468834.a n = A165247 (n + 1)

end A165247

/-! ## A165247.P12200113801511381921

`A173737(n+1)+3`
-/

namespace A165247.P12200113801511381921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173737 (n + 1) + 3

end

end A165247.P12200113801511381921

namespace A165247

/-- `A173737(n+1)+3` -/
def P12200113801511381921.Spec : Prop :=
  ∀ n, P12200113801511381921.a n = A165247 (n + 1)

end A165247

/-! ## A165247.P6112866314026602440

`A173736(n+1)+4`
-/

namespace A165247.P6112866314026602440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173736 (n + 1) + 4

end

end A165247.P6112866314026602440

namespace A165247

/-- `A173736(n+1)+4` -/
def P6112866314026602440.Spec : Prop :=
  ∀ n, P6112866314026602440.a n = A165247 (n + 1)

end A165247

/-! ## A165247.P6699658648800314651

`A173735(n+1)+5`
-/

namespace A165247.P6699658648800314651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 (n + 1) + 5

end

end A165247.P6699658648800314651

namespace A165247

/-- `A173735(n+1)+5` -/
def P6699658648800314651.Spec : Prop :=
  ∀ n, P6699658648800314651.a n = A165247 (n + 1)

end A165247

/-! ## A165247.P15432835935770409077

`A098406(n+1)+6`
-/

namespace A165247.P15432835935770409077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 (n + 1) + 6

end

end A165247.P15432835935770409077

namespace A165247

/-- `A098406(n+1)+6` -/
def P15432835935770409077.Spec : Prop :=
  ∀ n, P15432835935770409077.a n = A165247 (n + 1)

end A165247

/-! ## A165247.P13885833976056351212

`A047855(n+1)+7`
-/

namespace A165247.P13885833976056351212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 (n + 1) + 7

end

end A165247.P13885833976056351212

namespace A165247

/-- `A047855(n+1)+7` -/
def P13885833976056351212.Spec : Prop :=
  ∀ n, P13885833976056351212.a n = A165247 (n + 1)

end A165247

/-! ## A165247.P17657578115947185328

`A000042(n+1)+8`
-/

namespace A165247.P17657578115947185328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + 8

end

end A165247.P17657578115947185328

namespace A165247

/-- `A000042(n+1)+8` -/
def P17657578115947185328.Spec : Prop :=
  ∀ n, P17657578115947185328.a n = A165247 (n + 1)

end A165247

/-! ## A165247.P9707682017171428701

`A002275(n+1)+8`
-/

namespace A165247.P9707682017171428701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + 8

end

end A165247.P9707682017171428701

namespace A165247

/-- `A002275(n+1)+8` -/
def P9707682017171428701.Spec : Prop :=
  ∀ n, P9707682017171428701.a n = A165247 (n + 1)

end A165247

/-! ## A165247.P17123360463853715399

`2*A178769(n)+5`
-/

namespace A165247.P17123360463853715399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178769 n + 5

end

end A165247.P17123360463853715399

namespace A165247

/-- `2*A178769(n)+5` -/
def P17123360463853715399.Spec : Prop :=
  ∀ n, P17123360463853715399.a n = A165247 (n + 1)

end A165247

/-!
# A165248: Quintisection A061037(5*n+2).

The programs for A165248, the canonical program `A165248.P11382934050771289473` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165248 has offset 0).

The definition of A165248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165248.P11382934050771289473

`A061037(5*n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165248

/-- `A061037(5*n+2)` -/
def P11382934050771289473.Spec : Prop :=
  ∀ n, P11382934050771289473.a n = A165248 n

theorem P11382934050771289473.correct : P11382934050771289473.Spec := by
  intro n
  simp only [A165248]

end A165248

/-! ## A165248.P1399149797319189925

`A057427(n)*A070262(A008706(n))`
-/

namespace A165248.P1399149797319189925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A070262 (A008706 n).toNat

end

end A165248.P1399149797319189925

namespace A165248

/-- `A057427(n)*A070262(A008706(n))` -/
def P1399149797319189925.Spec : Prop :=
  ∀ n, P1399149797319189925.a n = A165248 n

end A165248

/-! ## A165248.P13340810466502584953

`lcm(A070262(A008706(n)), A106617(n))`
-/

namespace A165248.P13340810466502584953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070262 (A008706 n).toNat) (A106617 n)

end

end A165248.P13340810466502584953

namespace A165248

/-- `lcm(A070262(A008706(n)), A106617(n))` -/
def P13340810466502584953.Spec : Prop :=
  ∀ n, (P13340810466502584953.a n : ℤ) = A165248 n

end A165248

/-! ## A165248.P4935726061897191104

`A057427(n)*A061037(A016873(n))`
-/

namespace A165248.P4935726061897191104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A061037 (A016873 n).toNat

end

end A165248.P4935726061897191104

namespace A165248

/-- `A057427(n)*A061037(A016873(n))` -/
def P4935726061897191104.Spec : Prop :=
  ∀ n, P4935726061897191104.a n = A165248 n

end A165248

/-! ## A165248.P12660288125613635155

`A057427(n+1)+A061037(A016873(n))-1`
-/

namespace A165248.P12660288125613635155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (A061037 (A016873 n).toNat - 1)

end

end A165248.P12660288125613635155

namespace A165248

/-- `A057427(n+1)+A061037(A016873(n))-1` -/
def P12660288125613635155.Spec : Prop :=
  ∀ n, P12660288125613635155.a n = A165248 n

end A165248

/-! ## A165248.P7535981278345875164

`A247829(A249693(5*n+2))`
-/

namespace A165248.P7535981278345875164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247829 (A249693 (5 * n + 2)).toNat

end

end A165248.P7535981278345875164

namespace A165248

/-- `A247829(A249693(5*n+2))` -/
def P7535981278345875164.Spec : Prop :=
  ∀ n, P7535981278345875164.a n = A165248 n

end A165248

/-! ## A165248.P11928011649087702569

`A214297(A145979(5*n))`
-/

namespace A165248.P11928011649087702569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (A145979 (5 * n)).toNat

end

end A165248.P11928011649087702569

namespace A165248

/-- `A214297(A145979(5*n))` -/
def P11928011649087702569.Spec : Prop :=
  ∀ n, P11928011649087702569.a n = A165248 n

end A165248

/-! ## A165248.P16816442813354660113

`A175628(10*n+2)`
-/

namespace A165248.P16816442813354660113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (10 * n + 2)

end

end A165248.P16816442813354660113

namespace A165248

/-- `A175628(10*n+2)` -/
def P16816442813354660113.Spec : Prop :=
  ∀ n, P16816442813354660113.a n = A165248 n

end A165248

/-! ## A165248.P464513652184109425

`A225948(10*n+4)`
-/

namespace A165248.P464513652184109425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (10 * n + 4)

end

end A165248.P464513652184109425

namespace A165248

/-- `A225948(10*n+4)` -/
def P464513652184109425.Spec : Prop :=
  ∀ n, P464513652184109425.a n = A165248 n

end A165248

/-!
# A165249: Those positive integers n where the number of 1's, when n is written in binary, on the left half of the binary representation equals the number of 1's on the right half of the binary representation.

The programs for A165249, there is no canonical definition to state claims against.
-/

/-! ## A165249.P7349792655247403864

`∪[A165250(n+1), A006995(n+2)]`
-/

namespace A165249.P7349792655247403864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165249.P7349792655247403864

/-! ## A165249.P3598498462217451794

`∪[∑[A164126(n+1)], A165250(n+1)]`
-/

namespace A165249.P3598498462217451794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A165249.P3598498462217451794

/-! ## A165249.P13130110393239197626

`record[A206913(n)+A024360(A084921(n+1)+1)]`
-/

namespace A165249.P13130110393239197626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 n + A024360 (A084921 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165249.P13130110393239197626

/-!
# A165250: Members of A165249 that are not palindromes when written in binary.

The programs for A165250, there is no canonical definition to state claims against.
-/

/-! ## A165250.P9184025815808987157

`filter[A165249(n+1), A178226(#)]`
-/

namespace A165250.P9184025815808987157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A165250.P9184025815808987157

/-! ## A165250.P16013075086595138968

`∩[A154809(n+1), A165249(n+1)]`
-/

namespace A165250.P16013075086595138968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165250.P16013075086595138968

/-! ## A165250.P13832967110859373755

`∩[comp[A006995(n+1)], A165249(n+1)]`
-/

namespace A165250.P13832967110859373755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A165250.P13832967110859373755

/-! ## A165250.P17787773557500773697

`∩[A165249(n+1), comp[A175298(n)]]`
-/

namespace A165250.P17787773557500773697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165249 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A165250.P17787773557500773697

/-!
# A165251: Variation on Delannoy array/triangle; based on a triangular sum with the base multiplied by 2.

The programs for A165251, there is no canonical definition to state claims against.
-/

/-! ## A165251.P3434092272267633325

`xor(A299753(n+1), A352363(A157177(n)))`
-/

namespace A165251.P3434092272267633325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A299753 (n + 1)) (A352363 (A157177 n).toNat)

end

end A165251.P3434092272267633325

/-!
# A165252: Triangle read by rows: Frequency with which the values of cos(2*Pi/k) mod j, listed in A164823, occur for each j >= 1, taken over k = 1..j-1.

The programs for A165252, there is no canonical definition to state claims against.
-/

/-! ## A165252.P15523817444520165425

`A055396(A020915(n)^A331039(n))`
-/

namespace A165252.P15523817444520165425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A020915 n : ℚ) ^ (A331039 n : ℤ))).toNat

end

end A165252.P15523817444520165425

/-! ## A165252.P8258687385938114023

`A337136(A317246(2*(n+2)))%A181971(n)`
-/

namespace A165252.P8258687385938114023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337136 (A317246 (2 * (n + 2))).toNat) (A181971 n)

end

end A165252.P8258687385938114023

/-! ## A165252.P16111398854134277207

`A326625(A069766(n)*A242451(n))`
-/

namespace A165252.P16111398854134277207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (A069766 n * A242451 n).toNat

end

end A165252.P16111398854134277207

/-! ## A165252.P1396484293839282166

`A055396(A020915(n)^A242447(n))`
-/

namespace A165252.P1396484293839282166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A020915 n : ℚ) ^ (A242447 n : ℤ))).toNat

end

end A165252.P1396484293839282166

/-! ## A165252.P16052766049394742104

`A055396(A020915(n)^A243978(n))`
-/

namespace A165252.P16052766049394742104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A020915 n : ℚ) ^ (A243978 n : ℤ))).toNat

end

end A165252.P16052766049394742104

/-!
# A165253: Triangle T(n,k), read by rows given by [1,0,1,0,0,0,0,0,0,...] DELTA [0,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A165253, the canonical program `A165253.P10016462814353863925` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165253 has offset 0).

The definition of A165253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165253.P10016462814353863925

`A121314(A061579(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A165253

/-- `A121314(A061579(n))` -/
def P10016462814353863925.Spec : Prop :=
  ∀ n, P10016462814353863925.a n = A165253 n

theorem P10016462814353863925.correct : P10016462814353863925.Spec := by
  intro n
  simp only [A165253]

end A165253

/-! ## A165253.P16292176016517924400

`A121314(A114327(n)+n)`
-/

namespace A165253.P16292176016517924400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121314 (A114327 n + (n : ℤ)).toNat

end

end A165253.P16292176016517924400

namespace A165253

/-- `A121314(A114327(n)+n)` -/
def P16292176016517924400.Spec : Prop :=
  ∀ n, P16292176016517924400.a n = A165253 n

end A165253

/-! ## A165253.P12033792079807032699

`A121314(A038722(n+1)-1)`
-/

namespace A165253.P12033792079807032699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121314 (A038722 (n + 1) - 1).toNat

end

end A165253.P12033792079807032699

namespace A165253

/-- `A121314(A038722(n+1)-1)` -/
def P12033792079807032699.Spec : Prop :=
  ∀ n, P12033792079807032699.a n = A165253 n

end A165253

/-! ## A165253.P15046089688061866003

`2*A085478(n)-A207607(n+1)`
-/

namespace A165253.P15046089688061866003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085478 n - A207607 (n + 1)

end

end A165253.P15046089688061866003

namespace A165253

/-- `2*A085478(n)-A207607(n+1)` -/
def P15046089688061866003.Spec : Prop :=
  ∀ n, P15046089688061866003.a n = A165253 n

end A165253

/-! ## A165253.P4982782008501525757

`A085478(n)-A128908(A028310(n))`
-/

namespace A165253.P4982782008501525757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - A128908 (A028310 n).toNat

end

end A165253.P4982782008501525757

namespace A165253

/-- `A085478(n)-A128908(A028310(n))` -/
def P4982782008501525757.Spec : Prop :=
  ∀ n, P4982782008501525757.a n = A165253 n

end A165253

/-! ## A165253.P1227312573056178286

`A078812(A028310(n))-A236376(n)`
-/

namespace A165253.P1227312573056178286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A028310 n).toNat - A236376 n

end

end A165253.P1227312573056178286

namespace A165253

/-- `A078812(A028310(n))-A236376(n)` -/
def P1227312573056178286.Spec : Prop :=
  ∀ n, P1227312573056178286.a n = A165253 n

end A165253

/-! ## A165253.P3622031234314043589

`A000007(n)+A085478(n)-A128908(n)`
-/

namespace A165253.P3622031234314043589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A085478 n - A128908 n)

end

end A165253.P3622031234314043589

namespace A165253

/-- `A000007(n)+A085478(n)-A128908(n)` -/
def P3622031234314043589.Spec : Prop :=
  ∀ n, P3622031234314043589.a n = A165253 n

end A165253

/-! ## A165253.P1869424561171410118

`A208513(n+1)-A085478(n)%A123519(n)`
-/

namespace A165253.P1869424561171410118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208513 (n + 1) - Int.tmod (A085478 n) (A123519 n)

end

end A165253.P1869424561171410118

namespace A165253

/-- `A208513(n+1)-A085478(n)%A123519(n)` -/
def P1869424561171410118.Spec : Prop :=
  ∀ n, P1869424561171410118.a n = A165253 n

end A165253

/-! ## A165253.P17158336499967322406

`A097805(A245300(n)+A114327(n))`
-/

namespace A165253.P17158336499967322406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A245300 n + A114327 n).toNat

end

end A165253.P17158336499967322406

namespace A165253

/-- `A097805(A245300(n)+A114327(n))` -/
def P17158336499967322406.Spec : Prop :=
  ∀ n, P17158336499967322406.a n = A165253 n

end A165253

/-! ## A165253.P3247981769835748548

`A097805(A061579(n)+A245300(n)-n)`
-/

namespace A165253.P3247981769835748548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A061579 n + (A245300 n - (n : ℤ))).toNat

end

end A165253.P3247981769835748548

namespace A165253

/-- `A097805(A061579(n)+A245300(n)-n)` -/
def P3247981769835748548.Spec : Prop :=
  ∀ n, P3247981769835748548.a n = A165253 n

end A165253

/-! ## A165253.P7203840926816592877

`A097805(A061579(n)-(n-A245300(n)))`
-/

namespace A165253.P7203840926816592877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A061579 n - ((n : ℤ) - A245300 n)).toNat

end

end A165253.P7203840926816592877

namespace A165253

/-- `A097805(A061579(n)-(n-A245300(n)))` -/
def P7203840926816592877.Spec : Prop :=
  ∀ n, P7203840926816592877.a n = A165253 n

end A165253

/-! ## A165253.P10563805016390068764

`A071919(A245300(n)+A002262(n))`
-/

namespace A165253.P10563805016390068764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A245300 n + A002262 n).toNat

end

end A165253.P10563805016390068764

namespace A165253

/-- `A071919(A245300(n)+A002262(n))` -/
def P10563805016390068764.Spec : Prop :=
  ∀ n, P10563805016390068764.a n = A165253 n

end A165253

/-! ## A165253.P8352479309892714172

`A153764(A185868(n+1)-1)`
-/

namespace A165253.P8352479309892714172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 (A185868 (n + 1) - 1).toNat

end

end A165253.P8352479309892714172

namespace A165253

/-- `A153764(A185868(n+1)-1)` -/
def P8352479309892714172.Spec : Prop :=
  ∀ n, P8352479309892714172.a n = A165253 n

end A165253

/-!
# A165254: a(n) = 9 + n^17.

The programs for A165254, the canonical program `A165254.P4451725601689140107` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165254 has offset 0).

The definition of A165254 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9+n^17` (program `A165254.P4451725601689140107`, by `A165254.P4451725601689140107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165254.P4451725601689140107

`9+n^17`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165254

/-- `9+n^17` -/
def P4451725601689140107.Spec : Prop :=
  ∀ n, (P4451725601689140107.a n : ℤ) = A165254 n

theorem P4451725601689140107.correct : P4451725601689140107.Spec := by
  intro n
  simp only [A165254]

end A165254

/-!
# A165255: Solinas primes; primes of the form p = 2^a +/ - 2^b +/ - 1 where 0 < b < a.

The programs for A165255, there is no canonical definition to state claims against.
-/

/-! ## A165255.P13475121711638268753

`p?[2*(n+1)-A290105(A272856(n+3))]`
-/

namespace A165255.P13475121711638268753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A290105 (A272856 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165255.P13475121711638268753

/-! ## A165255.P13723766754966386557

`A101300(lt[A187253(n), A061397(n+1)])`
-/

namespace A165255.P13723766754966386557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165255.P13723766754966386557

/-! ## A165255.P7529095754564831044

`p?[A134322(n+1)-A067898(A005384(n+1))]`
-/

namespace A165255.P7529095754564831044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134322 (n + 1) - A067898 (A005384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165255.P7529095754564831044

/-! ## A165255.P9406918855792333211

`eq[A000120(A105022(n)), A217668(n)]`
-/

namespace A165255.P9406918855792333211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105022 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165255.P9406918855792333211

/-!
# A165256: Numbers whose number of distinct prime factors equals the number of digits in the number.

The programs for A165256, the canonical program `A165256.P10136050871535345251` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165256 has offset 1).

The definition of A165256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165256.P10136050871535345251

`eq[A001221(n+1), A055642(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A165256

/-- `eq[A001221(n+1), A055642(n+1)]+1` -/
def P10136050871535345251.Spec : Prop :=
  ∀ n, (P10136050871535345251.a n : ℤ) = A165256 (n + 1)

theorem P10136050871535345251.correct : P10136050871535345251.Spec := by
  intro n
  simp only [A165256, Nat.add_sub_cancel]

end A165256

/-! ## A165256.P7683576741268513700

`eq[A001221(n+1), A004218(n+2)]+1`
-/

namespace A165256.P7683576741268513700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A165256.P7683576741268513700

namespace A165256

/-- `eq[A001221(n+1), A004218(n+2)]+1` -/
def P7683576741268513700.Spec : Prop :=
  ∀ n, (P7683576741268513700.a n : ℤ) = A165256 (n + 1)

end A165256

/-! ## A165256.P12755223507970054559

`eq[A001221(A028310(n)), A055642(n)]`
-/

namespace A165256.P12755223507970054559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165256.P12755223507970054559

namespace A165256

/-- `eq[A001221(A028310(n)), A055642(n)]` -/
def P12755223507970054559.Spec : Prop :=
  ∀ n, (P12755223507970054559.a n : ℤ) = A165256 (n + 1)

end A165256

/-! ## A165256.P12692020544487048268

`eq[A001221(A257088(n)), A055642(n)]`
-/

namespace A165256.P12692020544487048268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165256.P12692020544487048268

namespace A165256

/-- `eq[A001221(A257088(n)), A055642(n)]` -/
def P12692020544487048268.Spec : Prop :=
  ∀ n, (P12692020544487048268.a n : ℤ) = A165256 (n + 1)

end A165256

/-! ## A165256.P16996477004588245688

`eq[A001221(A000007(n)+n), A055642(n)]`
-/

namespace A165256.P16996477004588245688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165256.P16996477004588245688

namespace A165256

/-- `eq[A001221(A000007(n)+n), A055642(n)]` -/
def P16996477004588245688.Spec : Prop :=
  ∀ n, (P16996477004588245688.a n : ℤ) = A165256 (n + 1)

end A165256

/-! ## A165256.P5147623169567957893

`eq[A001221(A008574(n)-3*n), A055642(n)]`
-/

namespace A165256.P5147623169567957893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008574 n - (3 * n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165256.P5147623169567957893

namespace A165256

/-- `eq[A001221(A008574(n)-3*n), A055642(n)]` -/
def P5147623169567957893.Spec : Prop :=
  ∀ n, (P5147623169567957893.a n : ℤ) = A165256 (n + 1)

end A165256

/-! ## A165256.P17297905354193173557

`eq[A001221(A065033(2*n)), A055642(n)]`
-/

namespace A165256.P17297905354193173557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165256.P17297905354193173557

namespace A165256

/-- `eq[A001221(A065033(2*n)), A055642(n)]` -/
def P17297905354193173557.Spec : Prop :=
  ∀ n, (P17297905354193173557.a n : ℤ) = A165256 (n + 1)

end A165256

/-! ## A165256.P230236330036648873

`eq[A001221(A123108(2*n)), A055642(n)]`
-/

namespace A165256.P230236330036648873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165256.P230236330036648873

namespace A165256

/-- `eq[A001221(A123108(2*n)), A055642(n)]` -/
def P230236330036648873.Spec : Prop :=
  ∀ n, (P230236330036648873.a n : ℤ) = A165256 (n + 1)

end A165256

/-! ## A165256.P2341990904897553309

`eq[A048571(A000124(n)), A055642(n)]`
-/

namespace A165256.P2341990904897553309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A000124 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165256.P2341990904897553309

namespace A165256

/-- `eq[A048571(A000124(n)), A055642(n)]` -/
def P2341990904897553309.Spec : Prop :=
  ∀ n, (P2341990904897553309.a n : ℤ) = A165256 (n + 1)

end A165256

/-! ## A165256.P2700981714956382039

`eq[A001221(A257088(n)), A138902(n)]`
-/

namespace A165256.P2700981714956382039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165256.P2700981714956382039

namespace A165256

/-- `eq[A001221(A257088(n)), A138902(n)]` -/
def P2700981714956382039.Spec : Prop :=
  ∀ n, (P2700981714956382039.a n : ℤ) = A165256 (n + 1)

end A165256

/-!
# A165257: Triangle in which n-th row is binomial(n+k-1,k), for column k=1..n.

The programs for A165257, the canonical program `A165257.P5279491284380606187` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165257 has offset 1).

The definition of A165257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165257.P5279491284380606187

`A046899(A132128(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A165257

/-- `A046899(A132128(n+1))` -/
def P5279491284380606187.Spec : Prop :=
  ∀ n, P5279491284380606187.a n = A165257 (n + 1)

theorem P5279491284380606187.correct : P5279491284380606187.Spec := by
  intro n
  simp only [A165257, Nat.add_sub_cancel]

end A165257

/-! ## A165257.P9576810686582637065

`A178300(n+1)/A033184(n+1)*A092392(n)`
-/

namespace A165257.P9576810686582637065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178300 (n + 1) : ℚ) / (A033184 (n + 1) : ℚ) * (A092392 n : ℚ)

end

end A165257.P9576810686582637065

namespace A165257

/-- `A178300(n+1)/A033184(n+1)*A092392(n)` -/
def P9576810686582637065.Spec : Prop :=
  ∀ n, P9576810686582637065.a n = (A165257 (n + 1) : ℚ)

end A165257

/-! ## A165257.P6197026609171774162

`A046899(Δ[n-A051162(n)]+n+1)`
-/

namespace A165257.P6197026609171774162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A165257.P6197026609171774162

namespace A165257

/-- `A046899(Δ[n-A051162(n)]+n+1)` -/
def P6197026609171774162.Spec : Prop :=
  ∀ n, P6197026609171774162.a n = A165257 (n + 1)

end A165257

/-! ## A165257.P2979334936444638941

`A059481(comp[∑[n]])`
-/

namespace A165257.P2979334936444638941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A165257.P2979334936444638941

namespace A165257

/-- `A059481(comp[∑[n]])` -/
def P2979334936444638941.Spec : Prop :=
  ∀ n, P2979334936444638941.a n = A165257 (n + 1)

end A165257

/-! ## A165257.P3487473162685684538

`A100100(A007401(n+1)+A061579(n)-n)`
-/

namespace A165257.P3487473162685684538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (A007401 (n + 1) + (A061579 n - (n : ℤ))).toNat

end

end A165257.P3487473162685684538

namespace A165257

/-- `A100100(A007401(n+1)+A061579(n)-n)` -/
def P3487473162685684538.Spec : Prop :=
  ∀ n, P3487473162685684538.a n = A165257 (n + 1)

end A165257

/-! ## A165257.P10146344389444308939

`C(A051162(n)+1, A003056(n))`
-/

namespace A165257.P10146344389444308939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n + 1).toNat (A003056 n).toNat

end

end A165257.P10146344389444308939

namespace A165257

/-- `C(A051162(n)+1, A003056(n))` -/
def P10146344389444308939.Spec : Prop :=
  ∀ n, (P10146344389444308939.a n : ℤ) = A165257 (n + 1)

end A165257

/-! ## A165257.P5027661105667615435

`C(A094727(n+1), A003056(n))`
-/

namespace A165257.P5027661105667615435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1)).toNat (A003056 n).toNat

end

end A165257.P5027661105667615435

namespace A165257

/-- `C(A094727(n+1), A003056(n))` -/
def P5027661105667615435.Spec : Prop :=
  ∀ n, (P5027661105667615435.a n : ℤ) = A165257 (n + 1)

end A165257

/-! ## A165257.P9511716159475607084

`C(A134478(n)+1, A003056(n))`
-/

namespace A165257.P9511716159475607084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n + 1).toNat (A003056 n).toNat

end

end A165257.P9511716159475607084

namespace A165257

/-- `C(A134478(n)+1, A003056(n))` -/
def P9511716159475607084.Spec : Prop :=
  ∀ n, (P9511716159475607084.a n : ℤ) = A165257 (n + 1)

end A165257

/-! ## A165257.P14453319860258482362

`C(A094727(n+1), A002260(n+1))`
-/

namespace A165257.P14453319860258482362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1)).toNat (A002260 (n + 1)).toNat

end

end A165257.P14453319860258482362

namespace A165257

/-- `C(A094727(n+1), A002260(n+1))` -/
def P14453319860258482362.Spec : Prop :=
  ∀ n, (P14453319860258482362.a n : ℤ) = A165257 (n + 1)

end A165257

/-! ## A165257.P8095144823341179783

`C(A094727(n+1), A002024(n+1)-1)`
-/

namespace A165257.P8095144823341179783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1)).toNat (A002024 (n + 1) - 1).toNat

end

end A165257.P8095144823341179783

namespace A165257

/-- `C(A094727(n+1), A002024(n+1)-1)` -/
def P8095144823341179783.Spec : Prop :=
  ∀ n, (P8095144823341179783.a n : ℤ) = A165257 (n + 1)

end A165257

/-! ## A165257.P3677532358289017925

`C(A002262(n)+A002024(n+1), A003056(n))`
-/

namespace A165257.P3677532358289017925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n + A002024 (n + 1)).toNat (A003056 n).toNat

end

end A165257.P3677532358289017925

namespace A165257

/-- `C(A002262(n)+A002024(n+1), A003056(n))` -/
def P3677532358289017925.Spec : Prop :=
  ∀ n, (P3677532358289017925.a n : ℤ) = A165257 (n + 1)

end A165257

/-! ## A165257.P2205401428563881377

`C(A003056(n)+A002260(n+1), A003056(n))`
-/

namespace A165257.P2205401428563881377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + A002260 (n + 1)).toNat (A003056 n).toNat

end

end A165257.P2205401428563881377

namespace A165257

/-- `C(A003056(n)+A002260(n+1), A003056(n))` -/
def P2205401428563881377.Spec : Prop :=
  ∀ n, (P2205401428563881377.a n : ℤ) = A165257 (n + 1)

end A165257

/-! ## A165257.P1474051742807301121

`A074909(A245300(n)+1)`
-/

namespace A165257.P1474051742807301121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A245300 n + 1).toNat

end

end A165257.P1474051742807301121

namespace A165257

/-- `A074909(A245300(n)+1)` -/
def P1474051742807301121.Spec : Prop :=
  ∀ n, P1474051742807301121.a n = A165257 (n + 1)

end A165257

/-! ## A165257.P3250465657412742801

`A257241(A056537(n+1))`
-/

namespace A165257.P3250465657412742801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257241 (A056537 (n + 1)).toNat

end

end A165257.P3250465657412742801

namespace A165257

/-- `A257241(A056537(n+1))` -/
def P3250465657412742801.Spec : Prop :=
  ∀ n, P3250465657412742801.a n = A165257 (n + 1)

end A165257

/-! ## A165257.P1455676189844607119

`A135278(A245300(n))`
-/

namespace A165257.P1455676189844607119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A245300 n).toNat

end

end A165257.P1455676189844607119

namespace A165257

/-- `A135278(A245300(n))` -/
def P1455676189844607119.Spec : Prop :=
  ∀ n, P1455676189844607119.a n = A165257 (n + 1)

end A165257

/-! ## A165257.P5483565321735012041

`C(A003056(A245300(n))+1, A003056(n))`
-/

namespace A165257.P5483565321735012041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 (A245300 n).toNat + 1).toNat (A003056 n).toNat

end

end A165257.P5483565321735012041

namespace A165257

/-- `C(A003056(A245300(n))+1, A003056(n))` -/
def P5483565321735012041.Spec : Prop :=
  ∀ n, (P5483565321735012041.a n : ℤ) = A165257 (n + 1)

end A165257

/-! ## A165257.P3818686921564385740

`A007318(A111650(n+1)+A245300(n)-1)`
-/

namespace A165257.P3818686921564385740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A111650 (n + 1) + (A245300 n - 1)).toNat

end

end A165257.P3818686921564385740

namespace A165257

/-- `A007318(A111650(n+1)+A245300(n)-1)` -/
def P3818686921564385740.Spec : Prop :=
  ∀ n, P3818686921564385740.a n = A165257 (n + 1)

end A165257

/-! ## A165257.P16085065580343628538

`A007318(A245300(n)+A099375(A245300(n)))`
-/

namespace A165257.P16085065580343628538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A245300 n + A099375 (A245300 n).toNat).toNat

end

end A165257.P16085065580343628538

namespace A165257

/-- `A007318(A245300(n)+A099375(A245300(n)))` -/
def P16085065580343628538.Spec : Prop :=
  ∀ n, P16085065580343628538.a n = A165257 (n + 1)

end A165257

/-! ## A165257.P5125046319382638465

`A105725(n+1)/A162608(n)`
-/

namespace A165257.P5125046319382638465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105725 (n + 1) : ℚ) / (A162608 n : ℚ)

end

end A165257.P5125046319382638465

namespace A165257

/-- `A105725(n+1)/A162608(n)` -/
def P5125046319382638465.Spec : Prop :=
  ∀ n, P5125046319382638465.a n = (A165257 (n + 1) : ℚ)

end A165257

/-!
# A165258: Minimum value such that n occurs a(n) times, subject to the constraint that gcd(n,a(n)) = 1.

The programs for A165258, there is no canonical definition to state claims against.
-/

/-! ## A165258.P13317761746667043888

`xor(A056926(A000107(n)), A111439(n+1))`
-/

namespace A165258.P13317761746667043888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056926 (A000107 n).toNat) (A111439 (n + 1))

end

end A165258.P13317761746667043888

/-! ## A165258.P8853968924410212113

`xor(A056594(A056450(n)), A111439(n+1))`
-/

namespace A165258.P8853968924410212113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056594 (A056450 n).toNat) (A111439 (n + 1))

end

end A165258.P8853968924410212113

/-! ## A165258.P15532554501190450417

`xor(A105812(A126646(n)), A111439(n+1))`
-/

namespace A165258.P15532554501190450417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A105812 (A126646 n).toNat) (A111439 (n + 1))

end

end A165258.P15532554501190450417

/-! ## A165258.P3256900620208085172

`xor(A111439(n+1), A178226(A067982(n)))`
-/

namespace A165258.P3256900620208085172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A111439 (n + 1)) (A178226 (A067982 n).toNat)

end

end A165258.P3256900620208085172

/-! ## A165258.P14571270551660655315

`A028310(xor(A111439(n+1), A287384(n)))`
-/

namespace A165258.P14571270551660655315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A111439 (n + 1)) (A287384 n)).toNat

end

end A165258.P14571270551660655315

/-!
# A165259: Sum of odd powers of 4 and 9 divided by 13.

The programs for A165259, the canonical program `A165259.P13830560998287667303` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165259 has offset 0).

The definition of A165259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165259.P13830560998287667303

`(4^(2*n+1)+9^(2*n+1))/13`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165259

/-- `(4^(2*n+1)+9^(2*n+1))/13` -/
def P13830560998287667303.Spec : Prop :=
  ∀ n, P13830560998287667303.a n = (A165259 n : ℚ)

end A165259

/-! ## A165259.P9858301919560196943

`floor(A074515(Δ[n²])/13)`
-/

namespace A165259.P9858301919560196943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074515 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 13⌋

end

end A165259.P9858301919560196943

namespace A165259

/-- `floor(A074515(Δ[n²])/13)` -/
def P9858301919560196943.Spec : Prop :=
  ∀ n, P9858301919560196943.a n = A165259 n

end A165259

/-! ## A165259.P10687914417528350351

`ceil(A074614(2*n+1)/13)`
-/

namespace A165259.P10687914417528350351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074614 (2 * n + 1) : ℚ) / 13⌉

end

end A165259.P10687914417528350351

namespace A165259

/-- `ceil(A074614(2*n+1)/13)` -/
def P10687914417528350351.Spec : Prop :=
  ∀ n, P10687914417528350351.a n = A165259 n

end A165259

/-!
# A165262: Sorted hypotenuses with no repeats of Primitive Pythagorean Triples (PPT) if sum of all 3 sides are averages of twin prime pairs.

The programs for A165262, there is no canonical definition to state claims against.
-/

/-! ## A165262.P11008579225968934112

`A094079(n*A051173(floor(n/2)+1)²+1)`
-/

namespace A165262.P11008579225968934112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094079 ((n : ℤ) * A051173 (⌊(n : ℚ) / 2⌋ + 1).toNat ^ 2 + 1).toNat

end

end A165262.P11008579225968934112

/-! ## A165262.P1267985697047890571

`A113482(A128353(n+1)-A238516(2*(n+1)))`
-/

namespace A165262.P1267985697047890571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113482 (A128353 (n + 1) - A238516 (2 * (n + 1))).toNat

end

end A165262.P1267985697047890571

/-!
# A165263: A sequence similar to the Fibonacci rabbit sequence for the Padovan sequence.

The programs for A165263, there is no canonical definition to state claims against.
-/

/-! ## A165263.P31000754896437915

`ceil(sin((10^n-2)/6))`
-/

namespace A165263.P31000754896437915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (((10 ^ n : ℤ) - 2 : ℚ) / 6 : ℝ)⌉

end

end A165263.P31000754896437915

/-! ## A165263.P3516281452293281114

`(∑[round(π*(n+1))+2]%6)²²%5`
-/

namespace A165263.P3516281452293281114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (n + 1 : ℝ)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 6 ^ 2) ^ 2) 5

end

end A165263.P3516281452293281114

/-!
# A165265: Concatenate the number of 1's and number of 0's in the binary expansion of n.

The programs for A165265, the canonical program `A165265.P11785887504436960033` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165265 has offset 0).

The definition of A165265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165265.P11785887504436960033

`∑{digits}[A176894(n), A006370(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A165265

/-- `∑{digits}[A176894(n), A006370(#)]` -/
def P11785887504436960033.Spec : Prop :=
  ∀ n, P11785887504436960033.a n = A165265 n

theorem P11785887504436960033.correct : P11785887504436960033.Spec := by
  intro n
  simp only [A165265]

end A165265

/-! ## A165265.P11131547783710460091

`∑{digits}[A176894(n), A054841(#)]`
-/

namespace A165265.P11131547783710460091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054841 x).sum

end

end A165265.P11131547783710460091

namespace A165265

/-- `∑{digits}[A176894(n), A054841(#)]` -/
def P11131547783710460091.Spec : Prop :=
  ∀ n, P11131547783710460091.a n = A165265 n

end A165265

/-! ## A165265.P9470009040399045120

`∑{digits}[A176894(n), A176992(#)]`
-/

namespace A165265.P9470009040399045120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A176992 x).sum

end

end A165265.P9470009040399045120

namespace A165265

/-- `∑{digits}[A176894(n), A176992(#)]` -/
def P9470009040399045120.Spec : Prop :=
  ∀ n, P9470009040399045120.a n = A165265 n

end A165265

/-! ## A165265.P6109851765643828020

`A054841(A176893(n))`
-/

namespace A165265.P6109851765643828020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A176893 n).toNat

end

end A165265.P6109851765643828020

namespace A165265

/-- `A054841(A176893(n))` -/
def P6109851765643828020.Spec : Prop :=
  ∀ n, P6109851765643828020.a n = A165265 n

end A165265

/-! ## A165265.P9154987157422676197

`A306958(A007088(n))`
-/

namespace A165265.P9154987157422676197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306958 (A007088 n).toNat

end

end A165265.P9154987157422676197

namespace A165265

/-- `A306958(A007088(n))` -/
def P9154987157422676197.Spec : Prop :=
  ∀ n, P9154987157422676197.a n = A165265 n

end A165265

/-!
# A165271: a(n) = p(3*n), where p(n) = number of partitions of n into parts that correspond to areas of distinct pieces of Archimedes' ostomachion.

The programs for A165271, there is no canonical definition to state claims against.
-/

/-! ## A165271.P1802903090501671319

`A165272(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A165271.P1802903090501671319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165272 (n - 1) + a (n - 1)

end

end A165271.P1802903090501671319

/-!
# A165272: First differences of A165271.

The programs for A165272, there is no canonical definition to state claims against.
-/

/-! ## A165272.P3791937969824921503

`A165271(n+1)-A165271(n)`
-/

namespace A165272.P3791937969824921503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165271 (n + 1) - A165271 n

end

end A165272.P3791937969824921503

/-!
# A165273: Partial sums of A165271.

The programs for A165273, there is no canonical definition to state claims against.
-/

/-! ## A165273.P4711578597935524551

`A165271(n)+a(n-1)` with `a(0)=1`
-/

namespace A165273.P4711578597935524551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165271 n + a (n - 1)

end

end A165273.P4711578597935524551

/-!
# A165276: Number of even-indexed Fibonacci numbers in the Zeckendorf representation of n.

The programs for A165276, the canonical program `A165276.P8359485460943273478` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165276 has offset 1).

The definition of A165276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165276.P8359485460943273478

`A007895(n+1)-A165277(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A165276

/-- `A007895(n+1)-A165277(n+1)` -/
def P8359485460943273478.Spec : Prop :=
  ∀ n, P8359485460943273478.a n = A165276 (n + 1)

theorem P8359485460943273478.correct : P8359485460943273478.Spec := by
  intro n
  simp only [A165276, Nat.add_sub_cancel]

end A165276

/-! ## A165276.P3356183579632870109

`A022342(n+2)-∑[A261095(A022342(n+1))]`
-/

namespace A165276.P3356183579632870109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (A022342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165276.P3356183579632870109

namespace A165276

/-- `A022342(n+2)-∑[A261095(A022342(n+1))]` -/
def P3356183579632870109.Spec : Prop :=
  ∀ n, P3356183579632870109.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P12464514527209222523

`A165277(A002251(n+1))`
-/

namespace A165276.P12464514527209222523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A002251 (n + 1)).toNat

end

end A165276.P12464514527209222523

namespace A165276

/-- `A165277(A002251(n+1))` -/
def P12464514527209222523.Spec : Prop :=
  ∀ n, P12464514527209222523.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P8782145984440489619

`A165277(A003258(n+1))`
-/

namespace A165276.P8782145984440489619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A003258 (n + 1)).toNat

end

end A165276.P8782145984440489619

namespace A165276

/-- `A165277(A003258(n+1))` -/
def P8782145984440489619.Spec : Prop :=
  ∀ n, P8782145984440489619.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P11421000332502135197

`A165277(A004956(n+1))`
-/

namespace A165276.P11421000332502135197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A004956 (n + 1)).toNat

end

end A165276.P11421000332502135197

namespace A165276

/-- `A165277(A004956(n+1))` -/
def P11421000332502135197.Spec : Prop :=
  ∀ n, P11421000332502135197.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P17431335301933950847

`A165277(A026351(n+1))`
-/

namespace A165276.P17431335301933950847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A026351 (n + 1)).toNat

end

end A165276.P17431335301933950847

namespace A165276

/-- `A165277(A026351(n+1))` -/
def P17431335301933950847.Spec : Prop :=
  ∀ n, P17431335301933950847.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P2003546519338626189

`A165277(A022342(n+2))`
-/

namespace A165276.P2003546519338626189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A022342 (n + 2)).toNat

end

end A165276.P2003546519338626189

namespace A165276

/-- `A165277(A022342(n+2))` -/
def P2003546519338626189.Spec : Prop :=
  ∀ n, P2003546519338626189.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P16839431681962813630

`A165277(A026273(n+2))`
-/

namespace A165276.P16839431681962813630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A026273 (n + 2)).toNat

end

end A165276.P16839431681962813630

namespace A165276

/-- `A165277(A026273(n+2))` -/
def P16839431681962813630.Spec : Prop :=
  ∀ n, P16839431681962813630.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P16360142525155410878

`A165277(A026277(n+2))`
-/

namespace A165276.P16360142525155410878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A026277 (n + 2)).toNat

end

end A165276.P16360142525155410878

namespace A165276

/-- `A165277(A026277(n+2))` -/
def P16360142525155410878.Spec : Prop :=
  ∀ n, P16360142525155410878.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P2675282567002231959

`A165277(A184656(n+2))`
-/

namespace A165276.P2675282567002231959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A184656 (n + 2)).toNat

end

end A165276.P2675282567002231959

namespace A165276

/-- `A165277(A184656(n+2))` -/
def P2675282567002231959.Spec : Prop :=
  ∀ n, P2675282567002231959.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P3919289625378124807

`A165277(A000201(n+1)+1)`
-/

namespace A165276.P3919289625378124807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A000201 (n + 1) + 1).toNat

end

end A165276.P3919289625378124807

namespace A165276

/-- `A165277(A000201(n+1)+1)` -/
def P3919289625378124807.Spec : Prop :=
  ∀ n, P3919289625378124807.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P5596837634516991761

`A165277(A001950(n+1)-n)`
-/

namespace A165276.P5596837634516991761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A001950 (n + 1) - (n : ℤ)).toNat

end

end A165276.P5596837634516991761

namespace A165276

/-- `A165277(A001950(n+1)-n)` -/
def P5596837634516991761.Spec : Prop :=
  ∀ n, P5596837634516991761.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P13432165691667496539

`A165277(A047924(n+1))`
-/

namespace A165276.P13432165691667496539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A047924 (n + 1)).toNat

end

end A165276.P13432165691667496539

namespace A165276

/-- `A165277(A047924(n+1))` -/
def P13432165691667496539.Spec : Prop :=
  ∀ n, P13432165691667496539.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P16548560244313098708

`A165277(A095098(n+1))`
-/

namespace A165276.P16548560244313098708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A095098 (n + 1)).toNat

end

end A165276.P16548560244313098708

namespace A165276

/-- `A165277(A095098(n+1))` -/
def P16548560244313098708.Spec : Prop :=
  ∀ n, P16548560244313098708.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P5464831785901232478

`A165277(A101345(n+1))`
-/

namespace A165276.P5464831785901232478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A101345 (n + 1)).toNat

end

end A165276.P5464831785901232478

namespace A165276

/-- `A165277(A101345(n+1))` -/
def P5464831785901232478.Spec : Prop :=
  ∀ n, P5464831785901232478.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P3485322713509778865

`A165277(A134859(n+2))`
-/

namespace A165276.P3485322713509778865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A134859 (n + 2)).toNat

end

end A165276.P3485322713509778865

namespace A165276

/-- `A165277(A134859(n+2))` -/
def P3485322713509778865.Spec : Prop :=
  ∀ n, P3485322713509778865.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P4587074837992472984

`A165277(A380804(n+2))`
-/

namespace A165276.P4587074837992472984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A380804 (n + 2)).toNat

end

end A165276.P4587074837992472984

namespace A165276

/-- `A165277(A380804(n+2))` -/
def P4587074837992472984.Spec : Prop :=
  ∀ n, P4587074837992472984.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P2773811094091316352

`A343029(A048679(n+1))`
-/

namespace A165276.P2773811094091316352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A048679 (n + 1)).toNat

end

end A165276.P2773811094091316352

namespace A165276

/-- `A343029(A048679(n+1))` -/
def P2773811094091316352.Spec : Prop :=
  ∀ n, P2773811094091316352.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P7262460272814486015

`A165277(A047925(n+1))`
-/

namespace A165276.P7262460272814486015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A047925 (n + 1)).toNat

end

end A165276.P7262460272814486015

namespace A165276

/-- `A165277(A047925(n+1))` -/
def P7262460272814486015.Spec : Prop :=
  ∀ n, P7262460272814486015.a n = A165276 (n + 1)

end A165276

/-! ## A165276.P16717216968808617966

`A065360(A003714(n+1))`
-/

namespace A165276.P16717216968808617966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065360 (A003714 (n + 1)).toNat

end

end A165276.P16717216968808617966

namespace A165276

/-- `A065360(A003714(n+1))` -/
def P16717216968808617966.Spec : Prop :=
  ∀ n, P16717216968808617966.a n = A165276 (n + 1)

end A165276

/-!
# A165277: Number of odd-indexed Fibonacci numbers in the Zeckendorf representation of n.

The programs for A165277, the canonical program `A165277.P6478322796317079351` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165277 has offset 1).

The definition of A165277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165277.P6478322796317079351

`∑[A261095(A022342(n+1))-A261095(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A165277

/-- `∑[A261095(A022342(n+1))-A261095(n)]` -/
def P6478322796317079351.Spec : Prop :=
  ∀ n, P6478322796317079351.a n = A165277 (n + 1)

theorem P6478322796317079351.correct : P6478322796317079351.Spec := by
  intro n
  simp only [A165277, Nat.add_sub_cancel]

end A165277

/-! ## A165277.P9420462019154514407

`A165276(A002251(n+1))`
-/

namespace A165277.P9420462019154514407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A002251 (n + 1)).toNat

end

end A165277.P9420462019154514407

namespace A165277

/-- `A165276(A002251(n+1))` -/
def P9420462019154514407.Spec : Prop :=
  ∀ n, P9420462019154514407.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P80454281226938131

`A165276(A022342(n+2))`
-/

namespace A165277.P80454281226938131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A022342 (n + 2)).toNat

end

end A165277.P80454281226938131

namespace A165277

/-- `A165276(A022342(n+2))` -/
def P80454281226938131.Spec : Prop :=
  ∀ n, P80454281226938131.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P309499119779525682

`A165276(A026273(n+1)+1)`
-/

namespace A165277.P309499119779525682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A026273 (n + 1) + 1).toNat

end

end A165277.P309499119779525682

namespace A165277

/-- `A165276(A026273(n+1)+1)` -/
def P309499119779525682.Spec : Prop :=
  ∀ n, P309499119779525682.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P13706227905177324792

`A165276(A000201(n+2)-1)`
-/

namespace A165277.P13706227905177324792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A000201 (n + 2) - 1).toNat

end

end A165277.P13706227905177324792

namespace A165277

/-- `A165276(A000201(n+2)-1)` -/
def P13706227905177324792.Spec : Prop :=
  ∀ n, P13706227905177324792.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P8236352251886588936

`A081603(eq[A000989(n), A081603(n)]+1)`
-/

namespace A165277.P8236352251886588936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A165277.P8236352251886588936

namespace A165277

/-- `A081603(eq[A000989(n), A081603(n)]+1)` -/
def P8236352251886588936.Spec : Prop :=
  ∀ n, P8236352251886588936.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P392450848267611932

`A165276(A101345(n+1))`
-/

namespace A165277.P392450848267611932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A101345 (n + 1)).toNat

end

end A165277.P392450848267611932

namespace A165277

/-- `A165276(A101345(n+1))` -/
def P392450848267611932.Spec : Prop :=
  ∀ n, P392450848267611932.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P11058345465050545534

`A165276(A101868(n+1))`
-/

namespace A165277.P11058345465050545534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A101868 (n + 1)).toNat

end

end A165277.P11058345465050545534

namespace A165277

/-- `A165276(A101868(n+1))` -/
def P11058345465050545534.Spec : Prop :=
  ∀ n, P11058345465050545534.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P14215061501874892761

`A165276(A035336(n+2))`
-/

namespace A165277.P14215061501874892761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A035336 (n + 2)).toNat

end

end A165277.P14215061501874892761

namespace A165277

/-- `A165276(A035336(n+2))` -/
def P14215061501874892761.Spec : Prop :=
  ∀ n, P14215061501874892761.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P12255416052921308571

`A165276(A188434(n+2))`
-/

namespace A165277.P12255416052921308571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A188434 (n + 2)).toNat

end

end A165277.P12255416052921308571

namespace A165277

/-- `A165276(A188434(n+2))` -/
def P12255416052921308571.Spec : Prop :=
  ∀ n, P12255416052921308571.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P1062072315537987770

`A165276(A001950(A001950(n+1)-n))`
-/

namespace A165277.P1062072315537987770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A001950 (A001950 (n + 1) - (n : ℤ)).toNat).toNat

end

end A165277.P1062072315537987770

namespace A165277

/-- `A165276(A001950(A001950(n+1)-n))` -/
def P1062072315537987770.Spec : Prop :=
  ∀ n, P1062072315537987770.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P4155498786752759478

`A343030(A048679(n+1))`
-/

namespace A165277.P4155498786752759478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A048679 (n + 1)).toNat

end

end A165277.P4155498786752759478

namespace A165277

/-- `A343030(A048679(n+1))` -/
def P4155498786752759478.Spec : Prop :=
  ∀ n, P4155498786752759478.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P13380472246982680551

`A165276(A035338(n+1))`
-/

namespace A165277.P13380472246982680551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A035338 (n + 1)).toNat

end

end A165277.P13380472246982680551

namespace A165277

/-- `A165276(A035338(n+1))` -/
def P13380472246982680551.Spec : Prop :=
  ∀ n, P13380472246982680551.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P15692340438157198838

`A165276(A101870(n+1))`
-/

namespace A165277.P15692340438157198838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A101870 (n + 1)).toNat

end

end A165277.P15692340438157198838

namespace A165277

/-- `A165276(A101870(n+1))` -/
def P15692340438157198838.Spec : Prop :=
  ∀ n, P15692340438157198838.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P10043762387498627217

`A165276(A134863(n+2))`
-/

namespace A165277.P10043762387498627217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A134863 (n + 2)).toNat

end

end A165277.P10043762387498627217

namespace A165277

/-- `A165276(A134863(n+2))` -/
def P10043762387498627217.Spec : Prop :=
  ∀ n, P10043762387498627217.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P2220534236452872718

`A165276(A188471(n+2))`
-/

namespace A165277.P2220534236452872718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (A188471 (n + 2)).toNat

end

end A165277.P2220534236452872718

namespace A165277

/-- `A165276(A188471(n+2))` -/
def P2220534236452872718.Spec : Prop :=
  ∀ n, P2220534236452872718.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P8586392829023798128

`A139352(A003714(n+1))`
-/

namespace A165277.P8586392829023798128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A003714 (n + 1)).toNat

end

end A165277.P8586392829023798128

namespace A165277

/-- `A139352(A003714(n+1))` -/
def P8586392829023798128.Spec : Prop :=
  ∀ n, P8586392829023798128.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P2353059722811365381

`A139352(record[A229763(n+1)])`
-/

namespace A165277.P2353059722811365381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165277.P2353059722811365381

namespace A165277

/-- `A139352(record[A229763(n+1)])` -/
def P2353059722811365381.Spec : Prop :=
  ∀ n, P2353059722811365381.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P17741766639284057298

`A139352(A022340(n+1)/2)`
-/

namespace A165277.P17741766639284057298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (SequenceMachineLib.roundAway ((A022340 (n + 1) : ℚ) / 2)).toNat

end

end A165277.P17741766639284057298

namespace A165277

/-- `A139352(A022340(n+1)/2)` -/
def P17741766639284057298.Spec : Prop :=
  ∀ n, P17741766639284057298.a n = A165277 (n + 1)

end A165277

/-! ## A165277.P9280603659745351327

`A000120(A003714(n+1))-A165276(n+1)`
-/

namespace A165277.P9280603659745351327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 (n + 1)).toNat - A165276 (n + 1)

end

end A165277.P9280603659745351327

namespace A165277

/-- `A000120(A003714(n+1))-A165276(n+1)` -/
def P9280603659745351327.Spec : Prop :=
  ∀ n, P9280603659745351327.a n = A165277 (n + 1)

end A165277

/-!
# A165280: If p and q are twin primes then pq + 1 is always divisible by 3, except for (p,q)=(3,5). Sequence gives values of (pq + 1)/3.

The programs for A165280, the canonical program `A165280.P17092455864652572328` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165280 has offset 1).

The definition of A165280 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075369, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165280.P17092455864652572328

`A075369(n+2)/3`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165280

/-- `A075369(n+2)/3` -/
def P17092455864652572328.Spec : Prop :=
  ∀ n, P17092455864652572328.a n = (A165280 (n + 1) : ℚ)

end A165280

/-! ## A165280.P2130916744573244274

`(A037074(n+2)+1)/3`
-/

namespace A165280.P2130916744573244274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037074 (n + 2) + 1 : ℚ) / 3

end

end A165280.P2130916744573244274

namespace A165280

/-- `(A037074(n+2)+1)/3` -/
def P2130916744573244274.Spec : Prop :=
  ∀ n, P2130916744573244274.a n = (A165280 (n + 1) : ℚ)

end A165280

/-! ## A165280.P17493113322478822046

`(A001359(n+2)*A006512(n+2)+1)/3`
-/

namespace A165280.P17493113322478822046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 2) * A006512 (n + 2) + 1 : ℚ) / 3

end

end A165280.P17493113322478822046

namespace A165280

/-- `(A001359(n+2)*A006512(n+2)+1)/3` -/
def P17493113322478822046.Spec : Prop :=
  ∀ n, P17493113322478822046.a n = (A165280 (n + 1) : ℚ)

end A165280

/-! ## A165280.P11274774586230554154

`3*A167379(n+1)²`
-/

namespace A165280.P11274774586230554154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A167379 (n + 1) ^ 2

end

end A165280.P11274774586230554154

namespace A165280

/-- `3*A167379(n+1)²` -/
def P11274774586230554154.Spec : Prop :=
  ∀ n, P11274774586230554154.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P4192351690985072615

`12*A002822(n+1)²`
-/

namespace A165280.P4192351690985072615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A002822 (n + 1) ^ 2

end

end A165280.P4192351690985072615

namespace A165280

/-- `12*A002822(n+1)²` -/
def P4192351690985072615.Spec : Prop :=
  ∀ n, P4192351690985072615.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P17491351145606553074

`3*(A177139(n+1)-1)²`
-/

namespace A165280.P17491351145606553074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A177139 (n + 1) - 1) ^ 2

end

end A165280.P17491351145606553074

namespace A165280

/-- `3*(A177139(n+1)-1)²` -/
def P17491351145606553074.Spec : Prop :=
  ∀ n, P17491351145606553074.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P10150932520676610276

`4*A002822(n+1)*A040040(n+2)`
-/

namespace A165280.P10150932520676610276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002822 (n + 1) * A040040 (n + 2)

end

end A165280.P10150932520676610276

namespace A165280

/-- `4*A002822(n+1)*A040040(n+2)` -/
def P10150932520676610276.Spec : Prop :=
  ∀ n, P10150932520676610276.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P16091294939370370681

`A167379(n+1)+A001359(n+2)*A167379(n+1)`
-/

namespace A165280.P16091294939370370681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167379 (n + 1) + A001359 (n + 2) * A167379 (n + 1)

end

end A165280.P16091294939370370681

namespace A165280

/-- `A167379(n+1)+A001359(n+2)*A167379(n+1)` -/
def P16091294939370370681.Spec : Prop :=
  ∀ n, P16091294939370370681.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P16548967995785016482

`A014574(n+2)²/3`
-/

namespace A165280.P16548967995785016482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 2) ^ 2 : ℚ) / 3

end

end A165280.P16548967995785016482

namespace A165280

/-- `A014574(n+2)²/3` -/
def P16548967995785016482.Spec : Prop :=
  ∀ n, P16548967995785016482.a n = (A165280 (n + 1) : ℚ)

end A165280

/-! ## A165280.P15465451646266445776

`A054735(n+2)²/12`
-/

namespace A165280.P15465451646266445776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 2) ^ 2 : ℚ) / 12

end

end A165280.P15465451646266445776

namespace A165280

/-- `A054735(n+2)²/12` -/
def P15465451646266445776.Spec : Prop :=
  ∀ n, P15465451646266445776.a n = (A165280 (n + 1) : ℚ)

end A165280

/-! ## A165280.P3926300365804845317

`(A120875(n+2)+2)/3`
-/

namespace A165280.P3926300365804845317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120875 (n + 2) + 2 : ℚ) / 3

end

end A165280.P3926300365804845317

namespace A165280

/-- `(A120875(n+2)+2)/3` -/
def P3926300365804845317.Spec : Prop :=
  ∀ n, P3926300365804845317.a n = (A165280 (n + 1) : ℚ)

end A165280

/-! ## A165280.P9281395131717862257

`A002822(n+1)*A054735(n+2)`
-/

namespace A165280.P9281395131717862257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) * A054735 (n + 2)

end

end A165280.P9281395131717862257

namespace A165280

/-- `A002822(n+1)*A054735(n+2)` -/
def P9281395131717862257.Spec : Prop :=
  ∀ n, P9281395131717862257.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P14697240938474739894

`A014574(n+2)*A167379(n+1)`
-/

namespace A165280.P14697240938474739894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 2) * A167379 (n + 1)

end

end A165280.P14697240938474739894

namespace A165280

/-- `A014574(n+2)*A167379(n+1)` -/
def P14697240938474739894.Spec : Prop :=
  ∀ n, P14697240938474739894.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P8375269479765425228

`(A002822(n+1)+A002822(n+1))*A014574(n+2)`
-/

namespace A165280.P8375269479765425228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002822 (n + 1) + A002822 (n + 1)) * A014574 (n + 2)

end

end A165280.P8375269479765425228

namespace A165280

/-- `(A002822(n+1)+A002822(n+1))*A014574(n+2)` -/
def P8375269479765425228.Spec : Prop :=
  ∀ n, P8375269479765425228.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P18097251539255933185

`(A006512(n+2)+A001359(n+2))*A002822(n+1)`
-/

namespace A165280.P18097251539255933185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 2) + A001359 (n + 2)) * A002822 (n + 1)

end

end A165280.P18097251539255933185

namespace A165280

/-- `(A006512(n+2)+A001359(n+2))*A002822(n+1)` -/
def P18097251539255933185.Spec : Prop :=
  ∀ n, P18097251539255933185.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P14739339914158017541

`(A086169(n+2)-A086169(n+1))*A002822(n+1)`
-/

namespace A165280.P14739339914158017541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086169 (n + 2) - A086169 (n + 1)) * A002822 (n + 1)

end

end A165280.P14739339914158017541

namespace A165280

/-- `(A086169(n+2)-A086169(n+1))*A002822(n+1)` -/
def P14739339914158017541.Spec : Prop :=
  ∀ n, P14739339914158017541.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P3830733747288836920

`A006512(n+2)*A167379(n+1)-A167379(n+1)`
-/

namespace A165280.P3830733747288836920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 2) * A167379 (n + 1) - A167379 (n + 1)

end

end A165280.P3830733747288836920

namespace A165280

/-- `A006512(n+2)*A167379(n+1)-A167379(n+1)` -/
def P3830733747288836920.Spec : Prop :=
  ∀ n, P3830733747288836920.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P405753536967388939

`A014574(n+2)*A177139(n+1)-A014574(n+2)`
-/

namespace A165280.P405753536967388939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 2) * A177139 (n + 1) - A014574 (n + 2)

end

end A165280.P405753536967388939

namespace A165280

/-- `A014574(n+2)*A177139(n+1)-A014574(n+2)` -/
def P405753536967388939.Spec : Prop :=
  ∀ n, P405753536967388939.a n = A165280 (n + 1)

end A165280

/-! ## A165280.P497423435484329999

`(A134020(n+3)+1)/3`
-/

namespace A165280.P497423435484329999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134020 (n + 3) + 1 : ℚ) / 3

end

end A165280.P497423435484329999

namespace A165280

/-- `(A134020(n+3)+1)/3` -/
def P497423435484329999.Spec : Prop :=
  ∀ n, P497423435484329999.a n = (A165280 (n + 1) : ℚ)

end A165280

/-! ## A165280.P18237441436398003716

`A000010(A172057(n+1))²/3`
-/

namespace A165280.P18237441436398003716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A172057 (n + 1)).toNat ^ 2 : ℚ) / 3

end

end A165280.P18237441436398003716

namespace A165280

/-- `A000010(A172057(n+1))²/3` -/
def P18237441436398003716.Spec : Prop :=
  ∀ n, P18237441436398003716.a n = (A165280 (n + 1) : ℚ)

end A165280

/-!
# A165281: a(n) = (n+1)*(6*n^4 - 51*n^3 + 161*n^2 - 251*n + 251).

The programs for A165281, the canonical program `A165281.P3161803436449717200` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165281 has offset 0).

The definition of A165281 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(6*n^4-51*n^3+161*n²-251*n+251)` (program `A165281.P3161803436449717200`, by `A165281.P3161803436449717200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165281.P3161803436449717200

`(n+1)*(6*n^4-51*n^3+161*n²-251*n+251)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165281

/-- `(n+1)*(6*n^4-51*n^3+161*n²-251*n+251)` -/
def P3161803436449717200.Spec : Prop :=
  ∀ n, P3161803436449717200.a n = A165281 n

theorem P3161803436449717200.correct : P3161803436449717200.Spec := by
  intro n
  simp only [A165281]

end A165281

/-! ## A165281.P17050943320509506651

`∑[A157411(A025581(A167614(n+1)))]`
-/

namespace A165281.P17050943320509506651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157411 (A025581 (A167614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165281.P17050943320509506651

namespace A165281

/-- `∑[A157411(A025581(A167614(n+1)))]` -/
def P17050943320509506651.Spec : Prop :=
  ∀ n, P17050943320509506651.a n = A165281 n

end A165281

/-!
# A165283: a(n) = (2*n + 1)*16^n.

The programs for A165283, the canonical program `A165283.P7382541677400129395` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165283 has offset 0).

The definition of A165283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*16^n` (program `A165283.P7382541677400129395`, by `A165283.P7382541677400129395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165283.P7382541677400129395

`(2*n+1)*16^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165283

/-- `(2*n+1)*16^n` -/
def P7382541677400129395.Spec : Prop :=
  ∀ n, (P7382541677400129395.a n : ℤ) = A165283 n

theorem P7382541677400129395.correct : P7382541677400129395.Spec := by
  intro n
  simp only [A165283]

end A165283

/-! ## A165283.P3530069265675600982

`lcm(16^n, Δ[n²])`
-/

namespace A165283.P3530069265675600982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (16 ^ n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A165283.P3530069265675600982

namespace A165283

/-- `lcm(16^n, Δ[n²])` -/
def P3530069265675600982.Spec : Prop :=
  ∀ n, (P3530069265675600982.a n : ℤ) = A165283 n

end A165283

/-! ## A165283.P10125274515029148993

`or(2*n*16^n, 16^n)`
-/

namespace A165283.P10125274515029148993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n * 16 ^ n) (16 ^ n)

end

end A165283.P10125274515029148993

namespace A165283

/-- `or(2*n*16^n, 16^n)` -/
def P10125274515029148993.Spec : Prop :=
  ∀ n, (P10125274515029148993.a n : ℤ) = A165283 n

end A165283

/-! ## A165283.P14224545949749882558

`A001792(4*n)`
-/

namespace A165283.P14224545949749882558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (4 * n)

end

end A165283.P14224545949749882558

namespace A165283

/-- `A001792(4*n)` -/
def P14224545949749882558.Spec : Prop :=
  ∀ n, P14224545949749882558.a n = A165283 n

end A165283

/-! ## A165283.P14422556499608095059

`A134353(4*n)`
-/

namespace A165283.P14422556499608095059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134353 (4 * n)

end

end A165283.P14422556499608095059

namespace A165283

/-- `A134353(4*n)` -/
def P14422556499608095059.Spec : Prop :=
  ∀ n, P14422556499608095059.a n = A165283 n

end A165283

/-! ## A165283.P17257901913809610045

`A211227(8*n)`
-/

namespace A165283.P17257901913809610045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211227 (8 * n)

end

end A165283.P17257901913809610045

namespace A165283

/-- `A211227(8*n)` -/
def P17257901913809610045.Spec : Prop :=
  ∀ n, P17257901913809610045.a n = A165283 n

end A165283

/-! ## A165283.P4395642087287044646

`A002697(Δ[n²])`
-/

namespace A165283.P4395642087287044646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A165283.P4395642087287044646

namespace A165283

/-- `A002697(Δ[n²])` -/
def P4395642087287044646.Spec : Prop :=
  ∀ n, P4395642087287044646.a n = A165283 n

end A165283

/-! ## A165283.P3815788632571145786

`A049610(4*n+2)`
-/

namespace A165283.P3815788632571145786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (4 * n + 2)

end

end A165283.P3815788632571145786

namespace A165283

/-- `A049610(4*n+2)` -/
def P3815788632571145786.Spec : Prop :=
  ∀ n, P3815788632571145786.a n = A165283 n

end A165283

/-! ## A165283.P1604488483667086471

`A322284(3*n+n+1)`
-/

namespace A165283.P1604488483667086471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322284 (3 * n + (n + 1))

end

end A165283.P1604488483667086471

namespace A165283

/-- `A322284(3*n+n+1)` -/
def P1604488483667086471.Spec : Prop :=
  ∀ n, P1604488483667086471.a n = A165283 n

end A165283

/-! ## A165283.P4886832422707281816

`A211164(A017077(n))`
-/

namespace A165283.P4886832422707281816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (A017077 n).toNat

end

end A165283.P4886832422707281816

namespace A165283

/-- `A211164(A017077(n))` -/
def P4886832422707281816.Spec : Prop :=
  ∀ n, P4886832422707281816.a n = A165283 n

end A165283

/-!
# A165285: Primes which can be expressed as the sum of 2*p-1 for two or more consecutive primes p.

The programs for A165285, there is no canonical definition to state claims against.
-/

/-! ## A165285.P11532836535932081058

`p?[A325398(A065201(n+1))]`
-/

namespace A165285.P11532836535932081058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325398 (A065201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165285.P11532836535932081058

/-! ## A165285.P17122229167521083634

`p?[A325398(A332832(n+1))]`
-/

namespace A165285.P17122229167521083634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325398 (A332832 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165285.P17122229167521083634

/-!
# A165286: Primes which are the sum of two or more consecutive terms of A072055.

The programs for A165286, there is no canonical definition to state claims against.
-/

/-! ## A165286.P17920233923763766349

`∩[A269984(A003152(n+1)), A106863(n+1)]`
-/

namespace A165286.P17920233923763766349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269984 (A003152 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165286.P17920233923763766349

/-!
# A165288: Possible values of the difference between a cube and the largest square not larger than the cube.

The programs for A165288, there is no canonical definition to state claims against.
-/

/-! ## A165288.P15365659017373862518

`lt[0, char[n^3-floor(sqrt(n^3))²]]`
-/

namespace A165288.P15365659017373862518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.sqrt (n ^ 3) ^ 2 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165288.P15365659017373862518

/-! ## A165288.P10160665937853893537

`eq[1, char[n^3-floor(sqrt(n^3))²]]`
-/

namespace A165288.P10160665937853893537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.sqrt (n ^ 3) ^ 2 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165288.P10160665937853893537

/-! ## A165288.P5846262449096338722

`comp[A165290(n+1)]`
-/

namespace A165288.P5846262449096338722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165288.P5846262449096338722

/-!
# A165289: Nonnegative integers of the form m^2 - floor(m^(2/3))^3 where m is a positive integer.

The programs for A165289, there is no canonical definition to state claims against.
-/

/-! ## A165289.P8816372696564034892

`∪[A087286(n+1), n^6]`
-/

namespace A165289.P8816372696564034892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A165289.P8816372696564034892

/-! ## A165289.P8818352143392614172

`A087286(abs(1-n)+1)%(n+1)²`
-/

namespace A165289.P8818352143392614172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087286 (|1 - (n : ℤ)| + 1).toNat) ((n + 1) ^ 2 : ℤ)

end

end A165289.P8818352143392614172

/-! ## A165289.P16108351093529022129

`∪[A000537(n), A087286(n+1)]`
-/

namespace A165289.P16108351093529022129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165289.P16108351093529022129

/-! ## A165289.P4524078129679516291

`∪[A000538(n), A087286(n+1)]`
-/

namespace A165289.P4524078129679516291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165289.P4524078129679516291

/-! ## A165289.P17030400996798307957

`∪[A000540(n), A087286(n+1)]`
-/

namespace A165289.P17030400996798307957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165289.P17030400996798307957

/-! ## A165289.P11673941634325553826

`∪[A000541(n), A087286(n+1)]`
-/

namespace A165289.P11673941634325553826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165289.P11673941634325553826

/-! ## A165289.P13603056181122687934

`∪[A000542(n), A087286(n+1)]`
-/

namespace A165289.P13603056181122687934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165289.P13603056181122687934

/-! ## A165289.P12980419248838352589

`∪[A001014(n), A087286(n+1)]`
-/

namespace A165289.P12980419248838352589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165289.P12980419248838352589

/-! ## A165289.P4469199602712027663

`∪[A001015(n), A087286(n+1)]`
-/

namespace A165289.P4469199602712027663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165289.P4469199602712027663

/-! ## A165289.P17112179875403084908

`∪[A001016(n), A087286(n+1)]`
-/

namespace A165289.P17112179875403084908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165289.P17112179875403084908

/-!
# A165290: Numbers which cannot be represented as a cube - nearest square (cube >= square).

The programs for A165290, there is no canonical definition to state claims against.
-/

/-! ## A165290.P16684903318623612107

`comp[n^3-floor(sqrt(n^3))²]`
-/

namespace A165290.P16684903318623612107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.sqrt (n ^ 3) ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165290.P16684903318623612107

/-! ## A165290.P17127038136569189737

`eq[0, char[n^3-floor(sqrt(n^3))²]]`
-/

namespace A165290.P17127038136569189737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.sqrt (n ^ 3) ^ 2 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165290.P17127038136569189737

/-! ## A165290.P9592096848038001577

`comp[A165288(n+1)]%99`
-/

namespace A165290.P9592096848038001577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 99

end

end A165290.P9592096848038001577

/-! ## A165290.P10289605827712665662

`A000027(comp[A165288(n+1)])`
-/

namespace A165290.P10289605827712665662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165288 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A165290.P10289605827712665662

/-! ## A165290.P7595480398211757733

`A028310(comp[A165288(n+1)])`
-/

namespace A165290.P7595480398211757733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165288 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A165290.P7595480398211757733

/-! ## A165290.P2656612228066448547

`A033676(comp[A165288(n+1)]²)`
-/

namespace A165290.P2656612228066448547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165288 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A165290.P2656612228066448547

/-! ## A165290.P11308654230855088451

`comp[A165288(A082288(n+1))-1]+1`
-/

namespace A165290.P11308654230855088451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165288 (A082288 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A165290.P11308654230855088451

/-! ## A165290.P18212435973983824089

`or(comp[A165288(n+1)], A000122(3*n))`
-/

namespace A165290.P18212435973983824089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165288 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A000122 (3 * n))

end

end A165290.P18212435973983824089

/-! ## A165290.P16227595110036385504

`∪[A022546(n+1), comp[A165288(n+1)]]`
-/

namespace A165290.P16227595110036385504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022546 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165288 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A165290.P16227595110036385504

/-! ## A165290.P17993266146413173992

`∪[A196087(n+3), comp[A165288(n+1)]]`
-/

namespace A165290.P17993266146413173992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165288 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A165290.P17993266146413173992

/-!
# A165291: Complement of A165289.

The programs for A165291, there is no canonical definition to state claims against.
-/

/-! ## A165291.P8352005586130998602

`comp[A165289(n+1)]`
-/

namespace A165291.P8352005586130998602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165291.P8352005586130998602

/-! ## A165291.P12812307354695903909

`comp[A087286(n+1)-1]+1`
-/

namespace A165291.P12812307354695903909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A165291.P12812307354695903909

/-! ## A165291.P17328428125111729174

`comp[record[A165289(A126759(n))]]`
-/

namespace A165291.P17328428125111729174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165291.P17328428125111729174

/-! ## A165291.P6640620257454545318

`comp[record[A165289(A133310(n))]]`
-/

namespace A165291.P6640620257454545318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165291.P6640620257454545318

/-! ## A165291.P5524304161972213365

`comp[record[A165289(A144968(n))]]`
-/

namespace A165291.P5524304161972213365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (A144968 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165291.P5524304161972213365

/-! ## A165291.P15962869620151451751

`eq[char[A087286(n+1)], A151933(n)]`
-/

namespace A165291.P15962869620151451751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087286 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A165291.P15962869620151451751

/-!
# A165292: Primes obtained from other primes by pre-concatenating with 3.

The programs for A165292, there is no canonical definition to state claims against.
-/

/-! ## A165292.P9680143128793259143

`p?[A037276(A001748(n+2))]`
-/

namespace A165292.P9680143128793259143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A001748 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165292.P9680143128793259143

/-! ## A165292.P9683669105301399182

`p?[A037276(A008486(A065091(n+1)))]`
-/

namespace A165292.P9683669105301399182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A008486 (A065091 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165292.P9683669105301399182

/-! ## A165292.P3992740539524237423

`p?[A037276(A045965(A100484(n+1)))]`
-/

namespace A165292.P3992740539524237423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A045965 (A100484 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165292.P3992740539524237423

/-! ## A165292.P14698532254612408242

`p?[A080670(A001748(n+3))]`
-/

namespace A165292.P14698532254612408242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (A001748 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165292.P14698532254612408242

/-! ## A165292.P9446915864630460429

`p?[A084317(A001748(n+4))]`
-/

namespace A165292.P9446915864630460429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (A001748 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165292.P9446915864630460429

/-!
# A165293: Inverse of A038303, and generalization of A130595.

The programs for A165293, the canonical program `A165293.P663986949524880736` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165293 has offset 1).

The definition of A165293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165293.P1793155184867307574

`A033999(n-C(∑[char[∑[n]]], 2))*A038303(n)`
-/

namespace A165293.P1793155184867307574
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) * A038303 n

end

end A165293.P1793155184867307574

namespace A165293

/-- `A033999(n-C(∑[char[∑[n]]], 2))*A038303(n)` -/
def P1793155184867307574.Spec : Prop :=
  ∀ n, P1793155184867307574.a n = A165293 (n + 1)

end A165293

/-! ## A165293.P12395819954812723281

`A038303(n)*A130595(C(1-C(∑[char[∑[n]]], 2)+n, 2))`
-/

namespace A165293.P12395819954812723281
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 n * A130595 (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat 2)

end

end A165293.P12395819954812723281

namespace A165293

/-- `A038303(n)*A130595(C(1-C(∑[char[∑[n]]], 2)+n, 2))` -/
def P12395819954812723281.Spec : Prop :=
  ∀ n, P12395819954812723281.a n = A165293 (n + 1)

end A165293

/-! ## A165293.P663986949524880736

`A000351(A025581(n))*A065109(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A165293

/-- `A000351(A025581(n))*A065109(n)` -/
def P663986949524880736.Spec : Prop :=
  ∀ n, P663986949524880736.a n = A165293 (n + 1)

theorem P663986949524880736.correct : P663986949524880736.Spec := by
  intro n
  simp only [A165293, Nat.add_sub_cancel]

end A165293

/-! ## A165293.P13786979170533337089

`A038303(n)*A165326(A002260(n+1))`
-/

namespace A165293.P13786979170533337089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 n * A165326 (A002260 (n + 1)).toNat

end

end A165293.P13786979170533337089

namespace A165293

/-- `A038303(n)*A165326(A002260(n+1))` -/
def P13786979170533337089.Spec : Prop :=
  ∀ n, P13786979170533337089.a n = A165293 (n + 1)

end A165293

/-! ## A165293.P10613976119553598051

`A038303(n)/A165326(A002260(n+1)²)`
-/

namespace A165293.P10613976119553598051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038303 n : ℚ) / (A165326 (A002260 (n + 1) ^ 2).toNat : ℚ)

end

end A165293.P10613976119553598051

namespace A165293

/-- `A038303(n)/A165326(A002260(n+1)²)` -/
def P10613976119553598051.Spec : Prop :=
  ∀ n, P10613976119553598051.a n = (A165293 (n + 1) : ℚ)

end A165293

/-! ## A165293.P11056524210690209254

`A004718(A059268(n))*A038303(n)`
-/

namespace A165293.P11056524210690209254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A059268 n).toNat * A038303 n

end

end A165293.P11056524210690209254

namespace A165293

/-- `A004718(A059268(n))*A038303(n)` -/
def P11056524210690209254.Spec : Prop :=
  ∀ n, P11056524210690209254.a n = A165293 (n + 1)

end A165293

/-!
# A165294: The larger member of a prime pair (p, p+100).

The programs for A165294, the canonical program `A165294.P2962337622913435196` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165294 has offset 1).

The definition of A165294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165294.P2962337622913435196

`p?[(10*A010051(n+1))²+1+n]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A165294

/-- `p?[(10*A010051(n+1))²+1+n]` -/
def P2962337622913435196.Spec : Prop :=
  ∀ n, P2962337622913435196.a n = A165294 (n + 1)

theorem P2962337622913435196.correct : P2962337622913435196.Spec := by
  intro n
  simp only [A165294, Nat.add_sub_cancel]

end A165294

/-! ## A165294.P4571216308537215346

`p?[A046075(gcd(n, n+1))+A006093(n+1)]`
-/

namespace A165294.P4571216308537215346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046075 (Nat.gcd n (n + 1)) + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165294.P4571216308537215346

namespace A165294

/-- `p?[A046075(gcd(n, n+1))+A006093(n+1)]` -/
def P4571216308537215346.Spec : Prop :=
  ∀ n, P4571216308537215346.a n = A165294 (n + 1)

end A165294

/-! ## A165294.P8708369913679879297

`p?[A165831(A001358(n+1))+A000040(n+1)]`
-/

namespace A165294.P8708369913679879297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A001358 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165294.P8708369913679879297

namespace A165294

/-- `p?[A165831(A001358(n+1))+A000040(n+1)]` -/
def P8708369913679879297.Spec : Prop :=
  ∀ n, P8708369913679879297.a n = A165294 (n + 1)

end A165294

/-! ## A165294.P18136461051900018756

`p?[A165831(A001358(n+1))+A065091(n+1)]`
-/

namespace A165294.P18136461051900018756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A001358 (n + 1)).toNat + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165294.P18136461051900018756

namespace A165294

/-- `p?[A165831(A001358(n+1))+A065091(n+1)]` -/
def P18136461051900018756.Spec : Prop :=
  ∀ n, P18136461051900018756.a n = A165294 (n + 1)

end A165294

/-! ## A165294.P3940469207682037366

`p?[A026741(A000040(n+1)+50)+50]`
-/

namespace A165294.P3940469207682037366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000040 (n + 1) + 50).toNat + 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165294.P3940469207682037366

namespace A165294

/-- `p?[A026741(A000040(n+1)+50)+50]` -/
def P3940469207682037366.Spec : Prop :=
  ∀ n, P3940469207682037366.a n = A165294 (n + 1)

end A165294

/-!
# A165295: The larger member of a prime pair (p,p + 1000).

The programs for A165295, there is no canonical definition to state claims against.
-/

/-! ## A165295.P16560617225845171903

`p?[A165831(A014612(n+1))+A101408(n+1)]`
-/

namespace A165295.P16560617225845171903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A014612 (n + 1)).toNat + A101408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165295.P16560617225845171903

/-! ## A165295.P1950779441417328577

`p?[A165831(A014612(n+1))+A065091(n+1)]`
-/

namespace A165295.P1950779441417328577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A014612 (n + 1)).toNat + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165295.P1950779441417328577

/-! ## A165295.P9465293955071248154

`∩[A016969(n), A101408(n+1)]`
-/

namespace A165295.P9465293955071248154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P9465293955071248154

/-! ## A165295.P5047580770872030555

`∩[A003627(n+1), A101408(n+1)]`
-/

namespace A165295.P5047580770872030555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P5047580770872030555

/-! ## A165295.P8746176351155900431

`∩[A007528(n+1), A101408(n+1)]`
-/

namespace A165295.P8746176351155900431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P8746176351155900431

/-! ## A165295.P14494569343660882648

`∩[A045309(n+1), A101408(n+1)]`
-/

namespace A165295.P14494569343660882648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P14494569343660882648

/-! ## A165295.P11992103615041439647

`∩[A045410(n+1), A101408(n+1)]`
-/

namespace A165295.P11992103615041439647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P11992103615041439647

/-! ## A165295.P11747892937077344336

`∩[A056955(n+1), A101408(n+1)]`
-/

namespace A165295.P11747892937077344336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P11747892937077344336

/-! ## A165295.P5220836133549833301

`∩[A066501(n+1), A101408(n+1)]`
-/

namespace A165295.P5220836133549833301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P5220836133549833301

/-! ## A165295.P5817875738117271561

`∩[A082406(n+1), A101408(n+1)]`
-/

namespace A165295.P5817875738117271561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P5817875738117271561

/-! ## A165295.P11702090088053468077

`∩[A084088(n+1), A101408(n+1)]`
-/

namespace A165295.P11702090088053468077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P11702090088053468077

/-! ## A165295.P3846112090721725845

`∩[A101408(n+1), A167409(n+1)]`
-/

namespace A165295.P3846112090721725845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P3846112090721725845

/-! ## A165295.P17767087478415428114

`∩[A101408(n+1), A179871(n+1)]`
-/

namespace A165295.P17767087478415428114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P17767087478415428114

/-! ## A165295.P6858499651641678559

`∩[A101408(n+1), A259548(n+1)]`
-/

namespace A165295.P6858499651641678559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P6858499651641678559

/-! ## A165295.P372420193857420229

`∩[A101408(n+1), A277571(n+1)]`
-/

namespace A165295.P372420193857420229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P372420193857420229

/-! ## A165295.P11830274570444157134

`∩[A101408(n+1), A348931(n+1)]`
-/

namespace A165295.P11830274570444157134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P11830274570444157134

/-! ## A165295.P7756989707943486374

`∩[A101408(n+1), A348934(n+1)]`
-/

namespace A165295.P7756989707943486374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165295.P7756989707943486374

/-!
# A165296: The larger member of a prime pair (p,p+10000).

The programs for A165296, there is no canonical definition to state claims against.
-/

/-! ## A165296.P15828257397579471196

`p?[A065091(n+1)+A165831(A001358(n+1))²]`
-/

namespace A165296.P15828257397579471196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A165831 (A001358 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165296.P15828257397579471196

/-! ## A165296.P15312039415666515299

`p?[A165831(A014613(n+1))+A000040(n+1)]`
-/

namespace A165296.P15312039415666515299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A014613 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165296.P15312039415666515299

/-!
# A165297: The larger member of a prime pair (p,p+100000).

The programs for A165297, there is no canonical definition to state claims against.
-/

/-! ## A165297.P650158124186596964

`p?[A165831(A014614(n+1))+A000040(n+1)]`
-/

namespace A165297.P650158124186596964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A014614 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165297.P650158124186596964

/-!
# A165298: Numbers k with property that 14*k is a sum of two consecutive primes.

The programs for A165298, the canonical program `A165298.P10480189404675036484` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165298 has offset 1).

The definition of A165298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165298.P10480189404675036484

`eq[7*n, A210882(7*n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A165298

/-- `eq[7*n, A210882(7*n+1)]` -/
def P10480189404675036484.Spec : Prop :=
  ∀ n, (P10480189404675036484.a n : ℤ) = A165298 (n + 1)

theorem P10480189404675036484.correct : P10480189404675036484.Spec := by
  intro n
  simp only [A165298, Nat.add_sub_cancel]

end A165298

/-!
# A165299: a(n) = A002790(n) / A164020(n).

The programs for A165299, there is no canonical definition to state claims against.
-/

/-! ## A165299.P12577986171603403919

`A002790(n)/A164020(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165299.P12577986171603403919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A164020 n : ℚ)

end

end A165299.P12577986171603403919

/-! ## A165299.P3424425547982983477

`A002790(n)/(A176289(n)+Δ[A004526(n)²])`
-/

namespace A165299.P3424425547982983477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A176289 n + (f1 (n + 1) - f1 n) : ℚ)

end

end A165299.P3424425547982983477

/-! ## A165299.P6789977393752667564

`A002790(n)/(A027642(n)+n*A027642(n)%2)`
-/

namespace A165299.P6789977393752667564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A027642 n + (n : ℤ) * Int.tmod (A027642 n) 2 : ℚ)

end

end A165299.P6789977393752667564

/-! ## A165299.P16561474303965375529

`A002790(n)/(gcd(n+1, A004526(n+1))*A141056(n))`
-/

namespace A165299.P16561474303965375529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / ((Int.gcd (n + 1 : ℤ) (A004526 (n + 1)) : ℤ) * A141056 n : ℚ)

end

end A165299.P16561474303965375529

/-! ## A165299.P4927455310054597729

`A002790(n)/(A064680(n)+A176289(n)-A026741(n))`
-/

namespace A165299.P4927455310054597729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A064680 n + (A176289 n - A026741 n) : ℚ)

end

end A165299.P4927455310054597729

/-! ## A165299.P800720249793125267

`A002790(n)/(A007318(A134519(n+1))*A141056(n))`
-/

namespace A165299.P800720249793125267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A007318 (A134519 (n + 1)).toNat * A141056 n : ℚ)

end

end A165299.P800720249793125267

/-! ## A165299.P16596267160145516148

`A002790(n)/A051715(A266259(n))`
-/

namespace A165299.P16596267160145516148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A051715 (A266259 n).toNat : ℚ)

end

end A165299.P16596267160145516148

/-! ## A165299.P15375151655008088228

`A002790(n)/A051715(A266304(n))`
-/

namespace A165299.P15375151655008088228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A051715 (A266304 n).toNat : ℚ)

end

end A165299.P15375151655008088228

